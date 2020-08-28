object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'GameBar Control'
  ClientHeight = 497
  ClientWidth = 788
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 788
    Height = 478
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1047#1072#1082#1072#1079#1099
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        780
        450)
      object DBGrid4: TDBGrid
        Left = 3
        Top = 3
        Width = 630
        Height = 439
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSource4
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid4DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Caption = '123'
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
            Title.Caption = #1042#1088#1077#1084#1103
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'client'
            Title.Caption = #1050#1083#1080#1077#1085#1090
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'comp'
            Title.Caption = #1050#1086#1084#1087#1100#1102#1090#1077#1088
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chislo'
            Title.Caption = #1063#1080#1089#1083#1086
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'state'
            Title.Caption = #1057#1090#1072#1090#1091#1089
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantity'
            Title.Caption = #1050#1086#1083'-'#1074#1086
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'karta'
            Title.Caption = #1054#1087#1083#1072#1090#1072
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'price'
            Title.Caption = #1062#1077#1085#1072
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'full_price'
            Title.Caption = #1062#1077#1085#1072
            Visible = True
          end>
      end
      object GroupBox2: TGroupBox
        Left = 639
        Top = 64
        Width = 138
        Height = 393
        Anchors = [akTop, akRight]
        Caption = #1060#1080#1083#1090#1088#1072#1094#1080#1103
        TabOrder = 1
        object Label3: TLabel
          Left = 8
          Top = 18
          Width = 30
          Height = 13
          Caption = #1058#1086#1074#1072#1088
        end
        object Label4: TLabel
          Left = 8
          Top = 63
          Width = 37
          Height = 13
          Caption = #1050#1083#1080#1077#1085#1090
        end
        object Label5: TLabel
          Left = 8
          Top = 105
          Width = 58
          Height = 13
          Caption = #1050#1086#1084#1087#1100#1102#1090#1077#1088
        end
        object DateTimePicker3: TDateTimePicker
          Left = 8
          Top = 200
          Width = 121
          Height = 21
          Date = 43669.485598680560000000
          Time = 43669.485598680560000000
          TabOrder = 0
          OnChange = DateTimePicker3Change
        end
        object Edit3: TEdit
          Left = 8
          Top = 120
          Width = 121
          Height = 21
          TabOrder = 1
          OnChange = Edit3Change
        end
        object Edit2: TEdit
          Left = 8
          Top = 80
          Width = 121
          Height = 21
          TabOrder = 2
          OnChange = Edit2Change
        end
        object Edit1: TEdit
          Left = 8
          Top = 35
          Width = 121
          Height = 21
          TabOrder = 3
          OnChange = Edit1Change
        end
        object ComboBox1: TComboBox
          Left = 8
          Top = 155
          Width = 121
          Height = 21
          ItemIndex = 1
          TabOrder = 4
          Text = #1042' '#1086#1078#1080#1076#1072#1085#1080#1080
          OnChange = ComboBox1Change
          Items.Strings = (
            #1042#1089#1077
            #1042' '#1086#1078#1080#1076#1072#1085#1080#1080
            #1047#1072#1082#1088#1099#1090#1099
            #1054#1090#1084#1077#1085#1077#1085#1099)
        end
        object Button8: TButton
          Left = 8
          Top = 243
          Width = 121
          Height = 25
          Caption = #1057#1073#1088#1086#1089
          TabOrder = 5
          OnClick = Button8Click
        end
      end
      object Button6: TButton
        Left = 639
        Top = 3
        Width = 138
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1047#1072#1082#1088#1099#1090#1100' '#1079#1072#1082#1072#1079
        TabOrder = 2
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 639
        Top = 33
        Width = 138
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1079#1072#1082#1072#1079
        TabOrder = 3
        OnClick = Button7Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1054#1089#1090#1072#1090#1086#1082
      ImageIndex = 1
      DesignSize = (
        780
        450)
      object DBGrid1: TDBGrid
        Left = 24
        Top = 33
        Width = 721
        Height = 376
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSource2
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tovar'
            Title.Caption = #1058#1086#1074#1072#1088
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantity'
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'price'
            Title.Caption = #1062#1077#1085#1072' '#1087#1088#1080#1093#1086#1076#1072
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'full_price'
            Title.Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'types'
            Title.Caption = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
            Width = 120
            Visible = True
          end>
      end
      object Button1: TButton
        Left = 24
        Top = 422
        Width = 145
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1090#1086#1074#1072#1088
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button4: TButton
        Left = 175
        Top = 422
        Width = 162
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1090#1086#1074#1072#1088
        TabOrder = 2
        OnClick = Button4Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1088#1080#1093#1086#1076
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        780
        450)
      object DBGrid3: TDBGrid
        Left = 24
        Top = 19
        Width = 545
        Height = 398
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSource3
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chislo'
            Title.Caption = #1063#1080#1089#1083#1086
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantity'
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'price'
            Title.Caption = #1062#1077#1085#1072' '#1087#1088#1080#1093#1086#1076#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'full_price'
            Title.Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080
            Visible = True
          end>
      end
      object Button5: TButton
        Left = 24
        Top = 422
        Width = 113
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1053#1086#1074#1099#1081' '#1087#1088#1080#1093#1086#1076
        TabOrder = 1
        OnClick = Button5Click
      end
      object GroupBox1: TGroupBox
        Left = 575
        Top = 19
        Width = 175
        Height = 326
        Anchors = [akTop, akRight]
        Caption = #1060#1080#1083#1100#1090#1088
        TabOrder = 2
        DesignSize = (
          175
          326)
        object От: TLabel
          Left = 5
          Top = 173
          Width = 18
          Height = 13
          Caption = #1054#1090':'
        end
        object До: TLabel
          Left = 5
          Top = 224
          Width = 18
          Height = 13
          Caption = #1044#1086':'
        end
        object Label1: TLabel
          Left = 5
          Top = 37
          Width = 57
          Height = 13
          Caption = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
        end
        object Label2: TLabel
          Left = 5
          Top = 88
          Width = 30
          Height = 13
          Caption = #1058#1086#1074#1072#1088
        end
        object DateTimePicker1: TDateTimePicker
          Left = 5
          Top = 192
          Width = 156
          Height = 21
          Date = 36526.935566168980000000
          Time = 36526.935566168980000000
          MinDate = 36526.000000000000000000
          TabOrder = 0
          OnChange = DateTimePicker1Change
        end
        object DateTimePicker2: TDateTimePicker
          Left = 5
          Top = 243
          Width = 156
          Height = 21
          Date = 43668.936280937500000000
          Time = 43668.936280937500000000
          MaxDate = 401769.999988425900000000
          TabOrder = 1
          OnChange = DateTimePicker2Change
        end
        object ComboBox2: TComboBox
          Left = 5
          Top = 107
          Width = 145
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 2
          Text = 'ComboBox2'
          OnChange = ComboBox2Change
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 8
          Top = 61
          Width = 145
          Height = 21
          KeyField = #1050#1086#1076
          ListField = 'type'
          ListSource = DataSource1
          TabOrder = 3
          OnClick = DBLookupComboBox1Click
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1058#1080#1087#1099' '#1090#1086#1074#1072#1088#1086#1074
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        780
        450)
      object DBGrid2: TDBGrid
        Left = 12
        Top = 3
        Width = 725
        Height = 398
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'type'
            Title.Caption = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
            Width = 500
            Visible = True
          end>
      end
      object Button2: TButton
        Left = 12
        Top = 407
        Width = 169
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1090#1080#1087' '#1090#1086#1074#1072#1088#1072
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 200
        Top = 407
        Width = 217
        Height = 25
        Anchors = [akLeft, akBottom]
        Cancel = True
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1090#1080#1087' '#1090#1086#1074#1072#1088#1072
        TabOrder = 2
        OnClick = Button3Click
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 478
    Width = 788
    Height = 19
    Panels = <
      item
        Text = #1053#1072#1083#1080#1095#1085#1099#1077' '#1079#1072' '#1089#1077#1075#1086#1076#1085#1103':'
        Width = 140
      end
      item
        Alignment = taRightJustify
        Text = '0'
        Width = 50
      end
      item
        Text = #1058#1077#1088#1084#1080#1085#1072#1083' '#1079#1072' '#1089#1077#1075#1086#1076#1085#1103':'
        Width = 140
      end
      item
        Alignment = taRightJustify
        Text = '0'
        Width = 50
      end
      item
        Text = #1053#1072#1083#1080#1095#1085#1099#1077' '#1079#1072' '#1074#1099#1073#1086#1088#1082#1091':'
        Width = 140
      end
      item
        Alignment = taRightJustify
        Text = '0'
        Width = 50
      end
      item
        Text = #1058#1077#1088#1084#1080#1085#1072#1083' '#1079#1072' '#1074#1099#1073#1086#1088#1082#1091':'
        Width = 140
      end
      item
        Text = '0'
        Width = 40
      end>
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 32
    Top = 296
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 32
    Top = 352
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\ba' +
      'r.mdb;Mode=ReadWrite;Persist Security Info=False;Jet OLEDB:Syste' +
      'm database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Pass' +
      'word="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=' +
      '1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Tran' +
      'sactions=1;Jet OLEDB:New Database Password="";'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 408
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'types'
    Left = 16
    Top = 104
  end
  object ADOTable2: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'stock'
    Left = 24
    Top = 200
    object ADOTable2Код: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOTable2tovar: TWideStringField
      FieldName = 'tovar'
      Size = 255
    end
    object ADOTable2quantity: TIntegerField
      FieldName = 'quantity'
    end
    object ADOTable2price: TIntegerField
      FieldName = 'price'
    end
    object ADOTable2full_price: TIntegerField
      FieldName = 'full_price'
    end
    object ADOTable2type: TIntegerField
      FieldName = 'type'
      LookupDataSet = ADOTable1
      LookupKeyFields = #1050#1086#1076
      LookupResultField = 'type'
    end
    object ADOTable2types: TStringField
      FieldKind = fkLookup
      FieldName = 'types'
      LookupDataSet = ADOTable1
      LookupKeyFields = #1050#1086#1076
      LookupResultField = 'type'
      KeyFields = 'type'
      Size = 50
      Lookup = True
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 56
    Top = 152
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Filtered = True
    Parameters = <
      item
        Name = 'time1'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'time2'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'tov'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'select * from prihod')
    Left = 72
    Top = 104
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery2
    Left = 120
    Top = 320
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from orders')
    Left = 560
    Top = 376
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery3
    Left = 336
    Top = 352
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 432
    Top = 288
  end
  object Timer2: TTimer
    Interval = 20000
    OnTimer = Timer2Timer
    Left = 480
    Top = 248
  end
  object ADOQuery5: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 392
    Top = 256
  end
end
