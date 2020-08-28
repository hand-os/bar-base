object Form4: TForm4
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1088#1080#1093#1086#1076
  ClientHeight = 314
  ClientWidth = 215
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 18
    Height = 13
    Caption = #1058#1080#1087
  end
  object Label2: TLabel
    Left = 8
    Top = 51
    Width = 30
    Height = 13
    Caption = #1058#1086#1074#1072#1088
  end
  object Label3: TLabel
    Left = 8
    Top = 95
    Width = 72
    Height = 13
    Caption = #1062#1077#1085#1072' '#1087#1088#1080#1093#1086#1076#1072
  end
  object Label4: TLabel
    Left = 8
    Top = 149
    Width = 74
    Height = 13
    Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080
  end
  object Label5: TLabel
    Left = 8
    Top = 195
    Width = 54
    Height = 13
    Caption = #1050#1086#1080#1095#1077#1089#1090#1074#1086
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 24
    Width = 185
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 0
    OnChange = ComboBox1Change
  end
  object ComboBox2: TComboBox
    Left = 8
    Top = 67
    Width = 185
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 1
    OnChange = ComboBox2Change
  end
  object Edit1: TEdit
    Left = 8
    Top = 114
    Width = 185
    Height = 21
    TabOrder = 2
    Text = '0'
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 8
    Top = 168
    Width = 185
    Height = 21
    TabOrder = 3
    Text = '0'
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 8
    Top = 216
    Width = 185
    Height = 21
    TabOrder = 4
    Text = '0'
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 8
    Top = 256
    Width = 185
    Height = 21
    ReadOnly = True
    TabOrder = 5
    Text = 'Edit4'
  end
  object Button1: TButton
    Left = 8
    Top = 283
    Width = 89
    Height = 25
    Caption = #1047#1072#1087#1080#1089#1072#1090#1100
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 103
    Top = 283
    Width = 89
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 7
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form2.ADOConnection1
    Parameters = <>
    Left = 176
    Top = 56
  end
end
