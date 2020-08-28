object Form1: TForm1
  Left = 500
  Top = 500
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1047#1072#1082#1072#1079
  ClientHeight = 242
  ClientWidth = 161
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 46
    Height = 19
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 11
    Top = 33
    Width = 60
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object Button1: TButton
    Left = 8
    Top = 199
    Width = 141
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 168
    Width = 141
    Height = 25
    Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 53
    Width = 121
    Height = 21
    NumbersOnly = True
    ReadOnly = True
    TabOrder = 2
    Text = '1'
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 88
    Width = 137
    Height = 57
    ItemIndex = 0
    Items.Strings = (
      #1053#1072#1083#1080#1095#1085#1099#1077
      #1058#1077#1088#1084#1080#1085#1072#1083)
    TabOrder = 3
  end
  object UpDown1: TUpDown
    Left = 129
    Top = 53
    Width = 16
    Height = 21
    Associate = Edit1
    Min = 1
    Position = 1
    TabOrder = 4
  end
  object ADOQuery1: TADOQuery
    Connection = Form2.ADOConnection1
    Parameters = <>
    Left = 96
    Top = 24
  end
end
