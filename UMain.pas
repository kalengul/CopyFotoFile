unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, shlobj;

type
  TForm1 = class(TForm)
    MeNameFile: TMemo;
    EdNameNewDirectory: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BtGo: TButton;
    BtDirectory: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    BtRashKon: TButton;
    Label8: TLabel;
    BtZvNat: TButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EdRazd: TEdit;
    BtRazd: TButton;
    BtDelSpace: TButton;
    BtDelAllOrNumbers: TButton;
    BtQues: TButton;
    BtRazdToZap: TButton;
    btFolder: TButton;
    procedure BtRazdToZapClick(Sender: TObject);
    procedure BtQuesClick(Sender: TObject);
    procedure BtDelSpaceClick(Sender: TObject);
    procedure BtRashKonClick(Sender: TObject);
    procedure BtZvNatClick(Sender: TObject);
    procedure BtRazdClick(Sender: TObject);
    procedure BtGoClick(Sender: TObject);
    procedure BtDirectoryClick(Sender: TObject);
    procedure btFolderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  chosenDirectory : string;    //Дирректория для поиска

implementation

{$R *.dfm}

function SelectDirectory(const Title: string; var Path: string): Boolean;
var
  lpItemID: PItemIDList;
  BrowseInfo: TBrowseInfo;
  DisplayName: array[0..MAX_PATH] of char;
  TempPath: array[0..MAX_PATH] of char;
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner:= 0;
  BrowseInfo.pszDisplayName:= @DisplayName;
  BrowseInfo.lpszTitle:= PChar(Title);
  BrowseInfo.ulFlags:= BIF_RETURNONLYFSDIRS;
  lpItemID:= SHBrowseForFolder(BrowseInfo);
  Result:= lpItemId <> nil;
  if Result then begin
    SHGetPathFromIDList(lpItemID, TempPath);
    Path:= TempPath;
    GlobalFreePtr(lpItemID);
  end;
end;

procedure TForm1.BtGoClick(Sender: TObject);
var
  SR: TSearchRec; // поисковая переменная
  FindRes: Integer; // переменная для записи результата поиска
  NomFile:Longword;
  KolFileCopy:Longword;
begin
KolFileCopy:=0;
  if MeNameFile.Lines.Count<>0 then
  for NomFile:=0 to MeNameFile.Lines.Count-1 do
    begin
    // задание условий поиска и начало поиска
    FindRes := FindFirst(chosenDirectory+'\'+MeNameFile.Lines[NomFile], faAnyFile, SR);

   while FindRes = 0 do // пока мы находим файлы (каталоги), то выполнять цикл
   begin
     //Если не нашли нужную папку, то Создание новой папки
     if not DirectoryExists(chosenDirectory+'\'+EdNameNewDirectory.Text) then
       ForceDirectories(chosenDirectory+'\'+EdNameNewDirectory.Text);
     CopyFile(PChar(chosenDirectory+'\'+SR.Name),PChar(chosenDirectory+'\'+EdNameNewDirectory.Text+'\'+SR.Name),true);
//       ShowMessage('Ошибка: файл '+chosenDirectory+'\'+SR.Name+' не был скопирован.');
   //   MeNameFile.lines.Add(chosenDirectory+'\'+SR.Name); // добавление в список название
      inc(KolFileCopy);
      FindRes := FindNext(SR); // продолжение поиска по заданным условиям
    end;
  end;
  FindClose(SR); // закрываем поиск
ShowMessage('Скопировано '+inttostr(KolFileCopy)+' файлов в папку: '+chosenDirectory+'\'+EdNameNewDirectory.Text);
end;

procedure TForm1.BtQuesClick(Sender: TObject);
var
NomFile:longword;
st:string;
begin
for NomFile:=0 to MeNameFile.Lines.Count-1 do
  begin
  st:=MeNameFile.Lines[NomFile];
  St:=st+'?';
  MeNameFile.Lines[NomFile]:=st;
  end;
end;

procedure TForm1.BtRashKonClick(Sender: TObject);
var
NomFile:longword;
st:string;
begin
for NomFile:=0 to MeNameFile.Lines.Count-1 do
  begin
  st:=MeNameFile.Lines[NomFile];
  St:=st+'.*';
  MeNameFile.Lines[NomFile]:=st;
  end;
end;

procedure TForm1.BtRazdClick(Sender: TObject);
var
st:string;
KolSimv:Longword;
begin
KolSimv:=StrToInt(EdRazd.Text);
if MeNameFile.Lines.Count=1 then
  begin
  st:=MeNameFile.Lines[0];
  MeNameFile.Lines.Clear;
  while Length(St)>KolSimv do
    begin
    MeNameFile.Lines.Add(Copy(st,1,KolSimv));
    Delete(st,1,KolSimv);
    end;
  MeNameFile.Lines.Add(st);
  end;

end;

procedure TForm1.BtRazdToZapClick(Sender: TObject);
var
st:string;
KolSimv:Longword;
begin
KolSimv:=StrToInt(EdRazd.Text);
if MeNameFile.Lines.Count=1 then
  begin
  st:=MeNameFile.Lines[0];
  MeNameFile.Lines.Clear;
  while Pos(',',St)<>0 do
    begin
    MeNameFile.Lines.Add(Copy(st,1,Pos(',',St)-1));
    Delete(st,1,Pos(',',St));
    end;
  MeNameFile.Lines.Add(st);
  end;

end;

procedure TForm1.BtZvNatClick(Sender: TObject);
var
NomFile:longword;
st:string;
begin
if MeNameFile.Lines.Count<>0 then
for NomFile:=0 to MeNameFile.Lines.Count-1 do
  begin
  st:=MeNameFile.Lines[NomFile];
  St:='*'+st;
  MeNameFile.Lines[NomFile]:=st;
  end;
end;

procedure TForm1.BtDelSpaceClick(Sender: TObject);
var
NomFile,i:longword;
st:string;
begin
if MeNameFile.Lines.Count<>0 then
for NomFile:=0 to MeNameFile.Lines.Count-1 do
  begin
  st:=MeNameFile.Lines[NomFile];
  i:=1;
  while i<=Length(St) do
    begin
    if (St[i]<'0') or (St[i]>'9') then
      Delete(st,i,1)
    else
      inc(i);
    end;
  MeNameFile.Lines[NomFile]:=st;
  end;
end;

procedure TForm1.BtDirectoryClick(Sender: TObject);
begin
  // Просим пользователя выбрать требуемый каталог, стартовый каталог C:
  if SelectDirectory('Выберите каталог', chosenDirectory)
  then ShowMessage('Выбранный каталог = '+chosenDirectory)
  else ShowMessage('Выбор каталога прервался');
end;



procedure TForm1.btFolderClick(Sender: TObject);
var
  SR: TSearchRec; // поисковая переменная
  FindRes: Integer; // переменная для записи результата поиска
  chDir:string;
begin
  if SelectDirectory('Выберите каталог который будет с именаи файлов', chDir)
  then ShowMessage('Выбранный каталог = '+chDir)
  else ShowMessage('Выбор каталога прервался');
  EdNameNewDirectory.Text:=chDir;
  // задание условий поиска и начало поиска
  FindRes := FindFirst(chDir+'\*.*', faAnyFile, SR);

   while FindRes = 0 do // пока мы находим файлы (каталоги), то выполнять цикл
   begin
     //Добавляем файл в список.
     MeNameFile.Lines.Add(Copy(SR.Name,1,Length(SR.Name)-4));
      FindRes := FindNext(SR); // продолжение поиска по заданным условиям
    end;

  FindClose(SR); // закрываем поиск
end;

end.
