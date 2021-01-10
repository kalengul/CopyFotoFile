object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072' '#1082#1086#1087#1080#1088#1086#1074#1072#1085#1080#1103
  ClientHeight = 598
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 95
    Width = 180
    Height = 13
    Caption = #1048#1084#1103' '#1087#1072#1087#1082#1080' '#1082#1091#1076#1072' '#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1092#1072#1081#1083#1099
  end
  object Label2: TLabel
    Left = 8
    Top = 140
    Width = 72
    Height = 13
    Caption = #1048#1084#1077#1085#1072' '#1092#1072#1081#1083#1086#1074
  end
  object Label3: TLabel
    Left = 8
    Top = 366
    Width = 199
    Height = 13
    Caption = '* - '#1083#1102#1073#1086#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1083#1102#1073#1099#1093' '#1089#1080#1084#1074#1086#1083#1086#1074
  end
  object Label4: TLabel
    Left = 8
    Top = 384
    Width = 114
    Height = 13
    Caption = '? - '#1086#1076#1080#1085' '#1083#1102#1073#1086#1081' '#1089#1080#1084#1074#1086#1083
  end
  object Label5: TLabel
    Left = 8
    Top = 403
    Width = 260
    Height = 13
    Caption = #1055#1056#1048#1052#1045#1056' *1234.* = DSC_1234.Jpg + DSC01234.RAW'
  end
  object Label6: TLabel
    Left = 56
    Top = 5
    Width = 189
    Height = 13
    Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072' '#1076#1083#1103' '#1082#1086#1087#1080#1088#1086#1074#1072#1085#1080#1103' '#1092#1072#1081#1083#1086#1074' '
  end
  object Label7: TLabel
    Left = 96
    Top = 21
    Width = 100
    Height = 13
    Caption = #1074' '#1086#1090#1076#1077#1083#1100#1085#1091#1102' '#1087#1072#1087#1082#1091
  end
  object Label8: TLabel
    Left = 8
    Top = 429
    Width = 50
    Height = 13
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
  end
  object Label9: TLabel
    Left = 8
    Top = 448
    Width = 37
    Height = 13
    Caption = #1053#1072#1095#1072#1083#1086
  end
  object Label10: TLabel
    Left = 64
    Top = 448
    Width = 31
    Height = 13
    Caption = #1050#1086#1085#1077#1094
  end
  object Label11: TLabel
    Left = 111
    Top = 422
    Width = 181
    Height = 13
    Caption = #1063#1077#1088#1077#1079' '#1089#1082#1086#1083#1100#1082#1086' '#1089#1080#1084#1074#1086#1083#1086#1074' '#1088#1072#1079#1076#1077#1083#1080#1090#1100
  end
  object MeNameFile: TMemo
    Left = 8
    Top = 159
    Width = 281
    Height = 201
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object EdNameNewDirectory: TEdit
    Left = 8
    Top = 111
    Width = 203
    Height = 21
    TabOrder = 1
  end
  object BtGo: TButton
    Left = 217
    Top = 109
    Width = 75
    Height = 25
    Caption = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100
    TabOrder = 2
    OnClick = BtGoClick
  end
  object BtDirectory: TButton
    Left = 8
    Top = 40
    Width = 281
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1072#1087#1082#1091' '#1089' '#1092#1086#1090#1086', '#1086#1090#1082#1091#1076#1072' '#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 3
    OnClick = BtDirectoryClick
  end
  object BtRashKon: TButton
    Left = 64
    Top = 467
    Width = 26
    Height = 25
    Caption = '.*'
    TabOrder = 4
    OnClick = BtRashKonClick
  end
  object BtZvNat: TButton
    Left = 8
    Top = 467
    Width = 26
    Height = 25
    Caption = '*'
    TabOrder = 5
    OnClick = BtZvNatClick
  end
  object EdRazd: TEdit
    Left = 173
    Top = 441
    Width = 95
    Height = 21
    TabOrder = 6
    Text = '5'
  end
  object BtRazd: TButton
    Left = 170
    Top = 467
    Width = 75
    Height = 25
    Caption = #1056#1072#1079#1076#1077#1083#1080#1090#1100
    TabOrder = 7
    OnClick = BtRazdClick
  end
  object BtDelSpace: TButton
    Left = 8
    Top = 504
    Width = 105
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1086#1073#1077#1083#1099
    TabOrder = 8
    OnClick = BtDelSpaceClick
  end
  object BtDelAllOrNumbers: TButton
    Left = 8
    Top = 536
    Width = 149
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077', '#1082#1088#1086#1084#1077' '#1094#1080#1092#1088
    TabOrder = 9
    OnClick = BtDelSpaceClick
  end
  object BtQues: TButton
    Left = 96
    Top = 467
    Width = 26
    Height = 25
    Caption = '?'
    TabOrder = 10
    OnClick = BtQuesClick
  end
  object BtRazdToZap: TButton
    Left = 168
    Top = 498
    Width = 122
    Height = 25
    Caption = #1056#1072#1079#1076#1077#1083#1080#1090#1100' '#1087#1086' '#1079#1072#1087#1103#1090#1099#1084
    TabOrder = 11
    OnClick = BtRazdToZapClick
  end
  object btFolder: TButton
    Left = 8
    Top = 71
    Width = 282
    Height = 25
    Caption = #1050#1091#1076#1072' '#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1080' '#1074#1079#1103#1090#1100' '#1086#1090#1090#1091#1076#1072' '#1080#1084#1077#1085#1072
    TabOrder = 12
    OnClick = btFolderClick
  end
end
