object Form_main: TForm_main
  Left = 0
  Top = 0
  Caption = 'API DPD'
  ClientHeight = 520
  ClientWidth = 953
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_cmd: TPanel
    Left = 0
    Top = 0
    Width = 953
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label_BaseURL: TLabel
      Left = 7
      Top = 16
      Width = 42
      Height = 13
      Caption = 'BaseURL'
    end
    object Label_ClientID: TLabel
      Left = 283
      Top = 16
      Width = 38
      Height = 13
      Caption = 'ClientID'
    end
    object Label_ApiKey: TLabel
      Left = 439
      Top = 16
      Width = 33
      Height = 13
      Caption = 'ApiKey'
    end
    object Edit_baseurl: TEdit
      Left = 55
      Top = 13
      Width = 201
      Height = 21
      TabOrder = 0
      Text = 'https://ws.dpd.ru/services/'
    end
    object SpinEdit_clientid: TSpinEdit
      Left = 327
      Top = 13
      Width = 94
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
    object Edit_apikey: TEdit
      Left = 478
      Top = 13
      Width = 273
      Height = 21
      MaxLength = 204
      TabOrder = 2
    end
  end
  object Panel_tabs: TPanel
    Left = 0
    Top = 49
    Width = 953
    Height = 452
    Align = alClient
    TabOrder = 1
    object PageControl: TPageControl
      Left = 1
      Top = 1
      Width = 951
      Height = 450
      ActivePage = TabSheet_PVP
      Align = alClient
      TabOrder = 0
      object TabSheet_PVP: TTabSheet
        Caption = #1055#1042#1055
        ImageIndex = 1
        object Panel_geography2: TPanel
          Left = 0
          Top = 0
          Width = 943
          Height = 65
          Align = alTop
          TabOrder = 0
          object Label_countrycode: TLabel
            Left = 234
            Top = 10
            Width = 60
            Height = 13
            Caption = #1050#1086#1076' '#1089#1090#1088#1072#1085#1099
          end
          object Label_geography2wsdl: TLabel
            Left = 2
            Top = 9
            Width = 61
            Height = 13
            Caption = 'URL '#1089#1083#1091#1078#1073#1099
          end
          object Label_regioncode: TLabel
            Left = 364
            Top = 9
            Width = 64
            Height = 13
            Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
          end
          object Label_citycode: TLabel
            Left = 520
            Top = 9
            Width = 59
            Height = 13
            Caption = #1050#1086#1076' '#1075#1086#1088#1086#1076#1072
          end
          object Label_cityname: TLabel
            Left = 696
            Top = 9
            Width = 112
            Height = 13
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1075#1086#1088#1086#1076#1072
          end
          object ComboBox_countrycode: TComboBox
            Left = 300
            Top = 7
            Width = 41
            Height = 21
            ItemIndex = 0
            TabOrder = 0
            Text = 'RU'
            Items.Strings = (
              'RU')
          end
          object Button_getCitiesCashPay: TButton
            Left = 2
            Top = 34
            Width = 426
            Height = 25
            Caption = 
              #1055#1086#1083#1091#1095#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1075#1086#1088#1086#1076#1086#1074' '#1089' '#1074#1086#1079#1084#1086#1078#1085#1086#1089#1090#1100#1102' '#1076#1086#1089#1090#1072#1074#1082#1080' '#1089' '#1085#1072#1083#1086#1078#1077#1085#1085#1099#1084' '#1087#1083#1072 +
              #1090#1077#1078#1086#1084
            TabOrder = 1
            OnClick = Button_getCitiesCashPayClick
          end
          object Edit_geography2wsdl: TEdit
            Left = 69
            Top = 7
            Width = 143
            Height = 21
            TabOrder = 2
            Text = 'geography2?wsdl'
          end
          object Edit_citycode: TEdit
            Left = 585
            Top = 6
            Width = 88
            Height = 21
            TabOrder = 3
          end
          object Edit_cityname: TEdit
            Left = 814
            Top = 6
            Width = 121
            Height = 21
            TabOrder = 4
            Text = #1052#1086#1089#1082#1074#1072
          end
          object Button_getParcelShops: TButton
            Left = 434
            Top = 34
            Width = 501
            Height = 26
            Caption = 
              #1055#1086#1083#1091#1095#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1087#1091#1085#1082#1090#1086#1074' '#1087#1088#1080#1077#1084#1072'/'#1074#1099#1076#1072#1095#1080' '#1087#1086#1089#1099#1083#1086#1082', '#1080#1084#1077#1102#1097#1080#1093' '#1086#1075#1088#1072#1085#1080#1095#1077#1085 +
              #1080#1103' '#1087#1086' '#1075#1072#1073#1072#1088#1080#1090#1072#1084' '#1080' '#1074#1077#1089#1091
            TabOrder = 5
            OnClick = Button_getParcelShopsClick
          end
          object Edit_regioncode: TEdit
            Left = 434
            Top = 7
            Width = 60
            Height = 21
            TabOrder = 6
            Text = '77'
          end
        end
        object Memo_geography2: TMemo
          Left = 0
          Top = 65
          Width = 943
          Height = 357
          Align = alClient
          ScrollBars = ssBoth
          TabOrder = 1
        end
      end
      object TabSheet_cost: TTabSheet
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        ImageIndex = 1
        object Panel_calculator2: TPanel
          Left = 0
          Top = 0
          Width = 943
          Height = 177
          Align = alTop
          TabOrder = 0
          object Label_calculator2wsdl: TLabel
            Left = 2
            Top = 9
            Width = 61
            Height = 13
            Caption = 'URL '#1089#1083#1091#1078#1073#1099
          end
          object Label_calculator2_countrycode: TLabel
            Left = 2
            Top = 82
            Width = 60
            Height = 13
            Caption = #1050#1086#1076' '#1089#1090#1088#1072#1085#1099
          end
          object Label_calculator2_from_regioncode: TLabel
            Left = 298
            Top = 82
            Width = 64
            Height = 13
            Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
          end
          object Label_calculator2_from_citycode: TLabel
            Left = 130
            Top = 82
            Width = 59
            Height = 13
            Caption = #1050#1086#1076' '#1075#1086#1088#1086#1076#1072
          end
          object Label_calculator2_from_cityname: TLabel
            Left = 2
            Top = 109
            Width = 112
            Height = 13
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1075#1086#1088#1086#1076#1072
          end
          object Label_calculator2from: TLabel
            Left = 2
            Top = 40
            Width = 43
            Height = 13
            Caption = #1054#1090#1082#1091#1076#1072':'
          end
          object Label_calculator2_from_index: TLabel
            Left = 264
            Top = 109
            Width = 37
            Height = 13
            Caption = #1048#1085#1076#1077#1082#1089
          end
          object Label1: TLabel
            Left = 496
            Top = 48
            Width = 30
            Height = 13
            Caption = #1050#1091#1076#1072':'
          end
          object Label_calculator2_to_countrycode: TLabel
            Left = 498
            Top = 90
            Width = 60
            Height = 13
            Caption = #1050#1086#1076' '#1089#1090#1088#1072#1085#1099
          end
          object Label_calculator2_to_citycode: TLabel
            Left = 626
            Top = 90
            Width = 59
            Height = 13
            Caption = #1050#1086#1076' '#1075#1086#1088#1086#1076#1072
          end
          object Label__calculator2_to_regioncode: TLabel
            Left = 794
            Top = 90
            Width = 64
            Height = 13
            Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
          end
          object Label__calculator2_to_cityname: TLabel
            Left = 498
            Top = 117
            Width = 112
            Height = 13
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1075#1086#1088#1086#1076#1072
          end
          object Label_calculator2_to_index: TLabel
            Left = 760
            Top = 117
            Width = 37
            Height = 13
            Caption = #1048#1085#1076#1077#1082#1089
          end
          object Label_calculator2_weight: TLabel
            Left = 473
            Top = 9
            Width = 17
            Height = 13
            Caption = #1042#1077#1089
          end
          object Label_calculator2_vol: TLabel
            Left = 567
            Top = 9
            Width = 33
            Height = 13
            Caption = #1054#1073#1098#1077#1084
          end
          object Label_calculator2_slist: TLabel
            Left = 664
            Top = 9
            Width = 59
            Height = 13
            Caption = #1050#1086#1076#1099' '#1091#1089#1083#1091#1075
          end
          object Edit_calculator2wsdl: TEdit
            Left = 69
            Top = 6
            Width = 143
            Height = 21
            TabOrder = 0
            Text = 'calculator2?wsdl'
          end
          object ComboBox_calculator2_from_countrycode: TComboBox
            Left = 68
            Top = 82
            Width = 41
            Height = 21
            ItemIndex = 0
            TabOrder = 1
            Text = 'RU'
            Items.Strings = (
              'RU')
          end
          object Edit_calculator2_from_cityname: TEdit
            Left = 120
            Top = 109
            Width = 121
            Height = 21
            TabOrder = 2
            Text = #1052#1086#1089#1082#1074#1072
          end
          object Button_getServiceCost2: TButton
            Left = 2
            Top = 136
            Width = 347
            Height = 25
            Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100' '#1086#1073#1097#1091#1102' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1076#1086#1089#1090#1072#1074#1082#1080' '#1087#1086' '#1056#1086#1089#1089#1080#1080' '#1080' '#1089#1090#1088#1072#1085#1072#1084' '#1058#1057
            TabOrder = 3
            OnClick = Button_getServiceCost2Click
          end
          object Edit_calculator2_from_index: TEdit
            Left = 307
            Top = 109
            Width = 121
            Height = 21
            TabOrder = 4
          end
          object ComboBox_calculator2_to_countrycode: TComboBox
            Left = 564
            Top = 90
            Width = 41
            Height = 21
            ItemIndex = 0
            TabOrder = 5
            Text = 'RU'
            Items.Strings = (
              'RU')
          end
          object Edit_calculator2_to_cityname: TEdit
            Left = 616
            Top = 117
            Width = 121
            Height = 21
            TabOrder = 6
            Text = #1053#1086#1074#1086#1089#1080#1073#1080#1088#1089#1082
          end
          object Edit_calculator2_to_index: TEdit
            Left = 803
            Top = 117
            Width = 121
            Height = 21
            TabOrder = 7
          end
          object SpinEdit_calculator2_from_cityid: TSpinEdit
            Left = 195
            Top = 81
            Width = 86
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 8
            Value = 0
          end
          object SpinEdit_calculator2_from_regioncode: TSpinEdit
            Left = 368
            Top = 81
            Width = 58
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 9
            Value = 77
          end
          object SpinEdit_calculator2_to_regioncode: TSpinEdit
            Left = 864
            Top = 89
            Width = 60
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 10
            Value = 54
          end
          object CheckBox_self_from: TCheckBox
            Left = 2
            Top = 59
            Width = 98
            Height = 17
            Caption = #1057#1072#1084#1086#1087#1088#1080#1074#1086#1079' '#1085#1072
            TabOrder = 11
          end
          object CheckBox_self_to: TCheckBox
            Left = 498
            Top = 67
            Width = 81
            Height = 17
            Caption = #1057#1072#1084#1086#1074#1099#1074#1086#1079' '#1089
            TabOrder = 12
          end
          object SpinEdit_calculator2_weight: TSpinEdit
            Left = 496
            Top = 6
            Width = 49
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 13
            Value = 10
          end
          object SpinEdit_calculator2_vol: TSpinEdit
            Left = 606
            Top = 6
            Width = 41
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 14
            Value = 1
          end
          object Edit_calculator2_slist: TEdit
            Left = 729
            Top = 6
            Width = 195
            Height = 21
            TabOrder = 15
          end
          object SpinEdit_calculator2_to_cityid: TSpinEdit
            Left = 699
            Top = 89
            Width = 89
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 16
            Value = 0
          end
        end
        object Memo_calculator2: TMemo
          Left = 0
          Top = 177
          Width = 943
          Height = 245
          Align = alClient
          ScrollBars = ssBoth
          TabOrder = 1
        end
      end
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 501
    Width = 953
    Height = 19
    Panels = <>
    SimplePanel = True
  end
end
