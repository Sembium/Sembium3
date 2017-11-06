inherited fmFileExtension: TfmFileExtension
  Caption = #1042#1080#1076' '#1092#1072#1081#1083' - %s'
  ClientHeight = 173
  ClientWidth = 425
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 138
    Width = 425
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 157
    end
    inherited pnlClose: TPanel
      Left = 68
    end
    inherited pnlApply: TPanel
      Left = 336
      Visible = False
    end
  end
  object grpExtension: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 409
    Height = 121
    TabOrder = 0
    object lblExtensionCode: TLabel
      Left = 16
      Top = 16
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
    end
    object lblExtensionName: TLabel
      Left = 128
      Top = 16
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object lblExtensionAbbrev: TLabel
      Left = 16
      Top = 64
      Width = 63
      Height = 13
      Caption = #1056#1072#1079#1096#1080#1088#1077#1085#1080#1077
    end
    object lblDocItemViewGenerator: TLabel
      Left = 128
      Top = 64
      Width = 139
      Height = 13
      Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088' '#1085#1072' '#1048#1048#1054' - '#1080#1079#1075#1083#1077#1076
      FocusControl = cbDocItemViewGenerator
    end
    object edtExtensionCode: TDBEdit
      Left = 16
      Top = 32
      Width = 97
      Height = 21
      DataField = 'FILE_EXTENSION_CODE'
      DataSource = dsData
      TabOrder = 0
    end
    object edtExtensionAbbrev: TDBEdit
      Left = 16
      Top = 80
      Width = 97
      Height = 21
      DataField = 'FILE_EXTENSION_ABBREV'
      DataSource = dsData
      TabOrder = 2
    end
    object edtExtensionName: TDBEdit
      Left = 128
      Top = 32
      Width = 265
      Height = 21
      DataField = 'FILE_EXTENSION_NAME'
      DataSource = dsData
      TabOrder = 1
    end
    object cbDocItemViewGenerator: TJvDBLookupCombo
      Left = 128
      Top = 80
      Width = 265
      Height = 21
      DataField = 'DOC_ITEM_VIEW_GENERATOR_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      LookupField = 'DOC_ITEM_VIEW_GENERATOR_CODE'
      LookupDisplay = 'DOC_ITEM_VIEW_GENERATOR_NAME'
      LookupSource = dsDocItemViewGenerators
      TabOrder = 3
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1080#1076' '#1092#1072#1081#1083' - %s'
    end
  end
  object cdsDocItemViewGenerators: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDocItemViewGenerators'
    ConnectionBroker = dmMain.conDoc
    Left = 296
    object cdsDocItemViewGeneratorsDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDocItemViewGeneratorsDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_NAME'
      Size = 50
    end
    object cdsDocItemViewGeneratorsGENERATOR_PATH: TAbmesWideStringField
      FieldName = 'GENERATOR_PATH'
      Size = 100
    end
    object cdsDocItemViewGeneratorsGENERATOR_PARAMS: TAbmesWideStringField
      FieldName = 'GENERATOR_PARAMS'
      Size = 100
    end
    object cdsDocItemViewGeneratorsGENERATOR_TIMEOUT_SEC: TAbmesFloatField
      FieldName = 'GENERATOR_TIMEOUT_SEC'
    end
    object cdsDocItemViewGeneratorsRESULT_FILE_EXTENSION_CODE: TAbmesFloatField
      FieldName = 'RESULT_FILE_EXTENSION_CODE'
    end
  end
  object dsDocItemViewGenerators: TDataSource
    DataSet = cdsDocItemViewGenerators
    Left = 328
  end
end
