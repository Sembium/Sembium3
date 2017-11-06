inherited fmCurrency: TfmCurrency
  Left = 260
  Top = 162
  Caption = #1042#1072#1083#1091#1090#1072' '#1079#1072' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' - %s'
  ClientHeight = 472
  ClientWidth = 466
  DesignSize = (
    466
    472)
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 450
    Height = 421
  end
  object lblCode: TLabel [1]
    Left = 24
    Top = 16
    Width = 19
    Height = 13
    Caption = #1050#1086#1076
  end
  object lblAbbrev: TLabel [2]
    Left = 104
    Top = 16
    Width = 65
    Height = 13
    Caption = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
  end
  object lblName: TLabel [3]
    Left = 240
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object lblScale: TLabel [4]
    Left = 24
    Top = 64
    Width = 36
    Height = 13
    Caption = #1052#1072#1097#1072#1073
  end
  object lblRounder: TLabel [5]
    Left = 96
    Top = 64
    Width = 41
    Height = 13
    Caption = #1058#1086#1095#1085#1086#1089#1090
  end
  object lblOrderNo: TLabel [6]
    Left = 168
    Top = 64
    Width = 19
    Height = 13
    Caption = #1056#1077#1076
  end
  object lblCurrencyNameSingular: TLabel [7]
    Left = 24
    Top = 128
    Width = 155
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072' '#1042#1072#1083#1091#1090#1072' '#1077#1076'.'#1095'.'
  end
  object lblCurrencyNamePlural: TLabel [8]
    Left = 24
    Top = 176
    Width = 157
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072' '#1042#1072#1083#1091#1090#1072' '#1084#1085'.'#1095'.'
  end
  object lblCurrencyNameGender: TLabel [9]
    Left = 24
    Top = 224
    Width = 184
    Height = 13
    Caption = #1043#1088#1072#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1088#1086#1076' '#1085#1072' '#1080#1084#1077' '#1085#1072' '#1042#1072#1083#1091#1090#1072
  end
  object lblCurrencyCentNameSingular: TLabel [10]
    Left = 240
    Top = 128
    Width = 202
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072' 1/100 '#1085#1072' '#1042#1072#1083#1091#1090#1072' '#1077#1076'.'#1095'.'
  end
  object lblCurrencyCentNamePlural: TLabel [11]
    Left = 240
    Top = 176
    Width = 204
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072' 1/100 '#1085#1072' '#1042#1072#1083#1091#1090#1072' '#1084#1085'.'#1095'.'
  end
  object lblCurrencyCentNameGender: TLabel [12]
    Left = 240
    Top = 224
    Width = 193
    Height = 13
    Caption = #1043#1088#1072#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1088#1086#1076' '#1085#1072' 1/100 '#1085#1072' '#1042#1072#1083#1091#1090#1072
  end
  object lblCurrencyINamePlural: TLabel [13]
    Left = 24
    Top = 320
    Width = 127
    Height = 13
    Caption = 'Currency Unit Name, Plural'
  end
  object lblCurrencyINameSingular: TLabel [14]
    Left = 24
    Top = 272
    Width = 139
    Height = 13
    Caption = 'Currency Unit Name, Singular'
  end
  object lblCurrencyCentINamePlural: TLabel [15]
    Left = 240
    Top = 320
    Width = 159
    Height = 13
    Caption = 'Currency 1/100 Unit Name, Plural'
  end
  object lblCurrencyCentINameSingular: TLabel [16]
    Left = 240
    Top = 272
    Width = 171
    Height = 13
    Caption = 'Currency 1/100 Unit Name, Singular'
  end
  inherited pnlBottomButtons: TPanel
    Top = 437
    Width = 466
    TabOrder = 17
    inherited pnlOKCancel: TPanel
      Left = 198
    end
    inherited pnlClose: TPanel
      Left = 109
    end
    inherited pnlApply: TPanel
      Left = 377
      Visible = False
    end
  end
  object edtCode: TDBEdit [18]
    Left = 24
    Top = 32
    Width = 65
    Height = 21
    DataField = 'CURRENCY_CODE'
    DataSource = dsData
    TabOrder = 0
  end
  object edtAbbrev: TDBEdit [19]
    Left = 104
    Top = 32
    Width = 121
    Height = 21
    DataField = 'CURRENCY_ABBREV'
    DataSource = dsData
    TabOrder = 1
  end
  object edtName: TDBEdit [20]
    Left = 240
    Top = 32
    Width = 201
    Height = 21
    DataField = 'CURRENCY_NAME'
    DataSource = dsData
    TabOrder = 2
  end
  object edtScale: TDBEdit [21]
    Left = 24
    Top = 80
    Width = 57
    Height = 21
    DataField = 'SCALE'
    DataSource = dsData
    TabOrder = 3
  end
  object edtOrderNo: TDBEdit [22]
    Left = 168
    Top = 80
    Width = 57
    Height = 21
    DataField = 'ORDER_NO'
    DataSource = dsData
    TabOrder = 5
  end
  object edtCurrencyNameSingular: TDBEdit [23]
    Left = 24
    Top = 144
    Width = 201
    Height = 21
    DataField = 'CURRENCY_NAME_SINGULAR'
    DataSource = dsData
    TabOrder = 6
  end
  object edtCurrencyNamePlural: TDBEdit [24]
    Left = 24
    Top = 192
    Width = 201
    Height = 21
    DataField = 'CURRENCY_NAME_PLURAL'
    DataSource = dsData
    TabOrder = 7
  end
  object cbCurrencyNameGender: TJvDBLookupCombo [25]
    Left = 24
    Top = 240
    Width = 201
    Height = 21
    DataField = '_CURRENCY_NAME_GENDER'
    DataSource = dsData
    TabOrder = 8
  end
  object edtCurrencyCentNameSingular: TDBEdit [26]
    Left = 240
    Top = 144
    Width = 201
    Height = 21
    DataField = 'CURRENCY_CENT_NAME_SINGULAR'
    DataSource = dsData
    TabOrder = 9
  end
  object edtCurrencyCentNamePlural: TDBEdit [27]
    Left = 240
    Top = 192
    Width = 201
    Height = 21
    DataField = 'CURRENCY_CENT_NAME_PLURAL'
    DataSource = dsData
    TabOrder = 10
  end
  object cbCurrencyCentNameGender: TJvDBLookupCombo [28]
    Left = 240
    Top = 240
    Width = 201
    Height = 21
    DataField = '_CURRENCY_CENT_NAME_GENDER'
    DataSource = dsData
    TabOrder = 11
  end
  inline frProduct: TfrProductFieldEditFrame [29]
    Left = 24
    Top = 368
    Width = 417
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 16
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 417
      Caption = ' '#1060#1080#1085#1072#1085#1089#1086#1074' '#1054#1073#1077#1082#1090' '
      inherited pnlTreeNode: TPanel
        Width = 401
        inherited pnlTreeNodeName: TPanel
          Width = 219
          inherited edtTreeNodeName: TDBEdit
            Width = 218
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 219
        end
        inherited pnlRightButtons: TPanel
          Left = 342
        end
      end
    end
  end
  object cbRounder: TJvDBLookupCombo [30]
    Left = 96
    Top = 80
    Width = 57
    Height = 21
    DropDownCount = 9
    DeleteKeyClear = False
    DataField = 'ROUNDER'
    DataSource = dsData
    LookupField = 'ROUNDER'
    LookupDisplay = 'ROUNDER_NAME'
    LookupSource = dsRounders
    TabOrder = 4
  end
  object edtCurrencyINameSingular: TDBEdit [31]
    Left = 24
    Top = 288
    Width = 201
    Height = 21
    Color = clInfoBk
    DataField = 'CURRENCY_I_NAME_SINGULAR'
    DataSource = dsData
    TabOrder = 12
  end
  object edtCurrencyINamePlural: TDBEdit [32]
    Left = 24
    Top = 336
    Width = 201
    Height = 21
    Color = clInfoBk
    DataField = 'CURRENCY_I_NAME_PLURAL'
    DataSource = dsData
    TabOrder = 13
  end
  object edtCurrencyCentINamePlural: TDBEdit [33]
    Left = 240
    Top = 336
    Width = 201
    Height = 21
    Color = clInfoBk
    DataField = 'CURRENCY_CENT_I_NAME_PLURAL'
    DataSource = dsData
    TabOrder = 15
  end
  object edtCurrencyCentINameSingular: TDBEdit [34]
    Left = 240
    Top = 288
    Width = 201
    Height = 21
    Color = clInfoBk
    DataField = 'CURRENCY_CENT_I_NAME_SINGULAR'
    DataSource = dsData
    TabOrder = 14
  end
  inherited alActions: TActionList [35]
    Left = 128
    Top = 8
    inherited actForm: TAction
      Caption = #1042#1072#1083#1091#1090#1072' '#1079#1072' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' - %s'
    end
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 64
    Top = 8
  end
  inherited dsData: TDataSource
    Left = 96
    Top = 8
  end
  object cdsRounders: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 88
    object cdsRoundersROUNDER: TAbmesFloatField
      FieldName = 'ROUNDER'
    end
    object cdsRoundersROUNDER_NAME: TAbmesWideStringField
      FieldName = 'ROUNDER_NAME'
      Size = 100
    end
  end
  object dsRounders: TDataSource
    DataSet = cdsRounders
    Left = 328
    Top = 88
  end
end
