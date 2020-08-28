object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
  ClientHeight = 260
  ClientWidth = 269
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 30
    Height = 13
    Caption = #1058#1086#1074#1072#1088
  end
  object Label2: TLabel
    Left = 8
    Top = 59
    Width = 72
    Height = 13
    Caption = #1062#1077#1085#1072' '#1087#1088#1080#1093#1086#1076#1072
  end
  object Label3: TLabel
    Left = 8
    Top = 105
    Width = 74
    Height = 13
    Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080
  end
  object Label4: TLabel
    Left = 8
    Top = 153
    Width = 57
    Height = 13
    Caption = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 172
    Width = 251
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 251
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 217
    Width = 121
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 135
    Top = 217
    Width = 124
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 8
    Top = 78
    Width = 251
    Height = 21
    TabOrder = 4
    Text = '0'
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 8
    Top = 126
    Width = 251
    Height = 21
    TabOrder = 5
    Text = '0'
    OnChange = Edit3Change
    OnKeyPress = Edit3KeyPress
  end
  object ADOQuery1: TADOQuery
    Connection = Form2.ADOConnection1
    Parameters = <>
    Left = 176
  end
end
