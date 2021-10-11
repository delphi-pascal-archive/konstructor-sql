object Edit_inf: TEdit_inf
  Left = 246
  Top = 121
  AutoScroll = False
  BorderIcons = []
  Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1090#1077#1089#1090#1077
  ClientHeight = 177
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 137
    Height = 17
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 247
    Height = 17
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1086#1087#1088#1086#1089#1086#1074' '#1087#1088#1080' '#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 129
    Height = 17
    Caption = #1042#1088#1077#1084#1103' '#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 112
    Width = 141
    Height = 17
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1072#1088#1080#1072#1085#1090#1086#1074
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Discip: TDBText
    Left = 176
    Top = 18
    Width = 177
    Height = 17
    DataSource = Konstryktor.DataSource3
  end
  object KolVop: TDBText
    Left = 288
    Top = 48
    Width = 57
    Height = 17
    DataSource = Konstryktor.DataSource3
  end
  object TimeT: TDBText
    Left = 288
    Top = 84
    Width = 57
    Height = 17
    DataSource = Konstryktor.DataSource3
  end
  object KolVar: TDBText
    Left = 288
    Top = 116
    Width = 57
    Height = 17
    DataSource = Konstryktor.DataSource3
  end
  object Button1: TButton
    Left = 48
    Top = 144
    Width = 89
    Height = 25
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 144
    Width = 75
    Height = 25
    Caption = #1054#1050
    TabOrder = 1
    OnClick = Button2Click
  end
  object Disc_edit: TDBEdit
    Left = 176
    Top = 14
    Width = 169
    Height = 21
    DataSource = Konstryktor.DataSource3
    TabOrder = 2
    Visible = False
  end
  object KolVop_edit: TDBEdit
    Left = 288
    Top = 46
    Width = 57
    Height = 21
    DataSource = Konstryktor.DataSource3
    TabOrder = 3
    Visible = False
  end
  object TimeT_edit: TDBEdit
    Left = 288
    Top = 80
    Width = 57
    Height = 21
    DataSource = Konstryktor.DataSource3
    TabOrder = 4
    Visible = False
  end
  object KolVar_edit: TDBEdit
    Left = 288
    Top = 112
    Width = 57
    Height = 21
    DataSource = Konstryktor.DataSource3
    TabOrder = 5
    Visible = False
  end
end
