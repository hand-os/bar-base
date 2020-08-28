object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'GameBar Client'
  ClientHeight = 366
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    751
    366)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 152
    Top = 16
    Width = 30
    Height = 13
    Caption = #1055#1086#1080#1089#1082
  end
  object Label3: TLabel
    Left = 152
    Top = 206
    Width = 67
    Height = 13
    Caption = #1042#1099' '#1079#1072#1082#1072#1079#1072#1083#1080':'
  end
  object CategoryButtons1: TCategoryButtons
    Left = 17
    Top = 13
    Width = 129
    Height = 337
    ButtonFlow = cbfVertical
    Categories = <>
    RegularButtonColor = clWhite
    SelectedButtonColor = 15132390
    TabOrder = 0
    OnSelectedCategoryChange = CategoryButtons1SelectedCategoryChange
  end
  object DBGrid1: TDBGrid
    Left = 152
    Top = 40
    Width = 569
    Height = 160
    Anchors = [akTop, akRight]
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'tovar'
        Title.Caption = #1058#1086#1074#1072#1088
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantity'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'price'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'full_price'
        Title.Alignment = taRightJustify
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'type'
        Visible = False
      end>
  end
  object DBGrid2: TDBGrid
    Left = 152
    Top = 225
    Width = 569
    Height = 104
    Anchors = [akRight, akBottom]
    DataSource = ti
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid2DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'tovar'
        Title.Caption = #1058#1086#1074#1072#1088
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'time'
        Title.Caption = #1042#1088#1077#1084#1103' '#1079#1072#1082#1072#1079#1072
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'client'
        Title.Caption = #1050#1083#1080#1077#1085#1090
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'comp'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'chislo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'state'
        Title.Caption = #1057#1090#1072#1090#1091#1089
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantity'
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'karta'
        Title.Caption = #1054#1087#1083#1072#1090#1072
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'price'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'full_price'
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 200
    Top = 13
    Width = 121
    Height = 21
    TabOrder = 3
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 646
    Top = 9
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #1047#1072#1082#1072#1079#1072#1090#1100
    TabOrder = 4
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 152
    Top = 328
    Width = 569
    Height = 22
    Anchors = [akRight, akBottom]
    TabOrder = 5
    object Label4: TLabel
      Left = 4
      Top = 4
      Width = 111
      Height = 13
      Caption = #1054#1073#1097#1072#1103' '#1089#1091#1084#1084#1072' '#1079#1072#1082#1072#1079#1072': '
    end
    object Label5: TLabel
      Left = 150
      Top = 4
      Width = 6
      Height = 13
      Caption = '0'
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\bar.mdb;Persist ' +
      'Security Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 424
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 592
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from stock where ( quantity>0 )')
    Left = 464
    Top = 65528
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Left = 512
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from orders')
    Left = 336
    Top = 8
    object ADOQuery3ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQuery3tovar: TWideStringField
      FieldName = 'tovar'
      Size = 255
    end
    object ADOQuery3time: TDateTimeField
      FieldName = 'time'
      DisplayFormat = 'hh:mm'
    end
    object ADOQuery3client: TWideStringField
      FieldName = 'client'
      Size = 255
    end
    object ADOQuery3comp: TWideStringField
      FieldName = 'comp'
      Size = 255
    end
    object ADOQuery3chislo: TDateTimeField
      FieldName = 'chislo'
    end
    object ADOQuery3state: TWideStringField
      FieldName = 'state'
      Size = 255
    end
    object ADOQuery3quantity: TIntegerField
      FieldName = 'quantity'
    end
    object ADOQuery3karta: TWideStringField
      FieldName = 'karta'
      Size = 255
    end
    object ADOQuery3price: TIntegerField
      FieldName = 'price'
    end
    object ADOQuery3full_price: TIntegerField
      FieldName = 'full_price'
    end
  end
  object ti: TDataSource
    DataSet = ADOQuery3
    Left = 560
  end
  object Timer1: TTimer
    Interval = 20000
    OnTimer = Timer1Timer
    Left = 248
  end
end
