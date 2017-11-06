inherited fmDocItemViewGenerator: TfmDocItemViewGenerator
  Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088' '#1085#1072' '#1048#1048#1054' '#1048#1079#1075#1083#1077#1076#1080' - %s'
  ClientHeight = 261
  ClientWidth = 474
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 226
    Width = 474
    TabOrder = 1
    ExplicitTop = 226
    ExplicitWidth = 474
    inherited pnlOKCancel: TPanel
      Left = 206
      ExplicitLeft = 206
    end
    inherited pnlClose: TPanel
      Left = 117
      ExplicitLeft = 117
    end
    inherited pnlApply: TPanel
      Left = 385
      Visible = False
      ExplicitLeft = 385
    end
  end
  object grpDocItemViewGenerator: TGroupBox [1]
    Left = 5
    Top = 2
    Width = 462
    Height = 214
    Caption = ' '
    TabOrder = 0
    object lblDocItemViewGeneratorPath: TLabel
      Left = 16
      Top = 64
      Width = 20
      Height = 13
      Caption = #1055#1098#1090
    end
    object lblDocItemViewGeneratorParams: TLabel
      Left = 16
      Top = 112
      Width = 57
      Height = 13
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1080
    end
    object lblDocItemViewGeneratorName: TLabel
      Left = 104
      Top = 16
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object lblDocItemViewGeneratorCode: TLabel
      Left = 16
      Top = 16
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
    end
    object lblGeneratorTimeout: TLabel
      Left = 16
      Top = 160
      Width = 102
      Height = 13
      Caption = #1058#1072#1081#1084#1072#1091#1090' ('#1074' '#1089#1077#1082#1091#1085#1076#1080')'
    end
    object lblFileExtension: TLabel
      Left = 144
      Top = 160
      Width = 108
      Height = 13
      Caption = #1042#1080#1076' '#1088#1077#1079#1091#1083#1090#1072#1090#1077#1085' '#1092#1072#1081#1083
    end
    object lblGeneratorParamsHints: TLabel
      Left = 176
      Top = 112
      Width = 273
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1074#1098#1079#1084#1086#1078#1085#1080' '#1084#1072#1082#1088#1086#1090#1072': %InputFile% '#1080' %ResultFile%'
    end
    object edtDocItemViewGeneratorCode: TDBEdit
      Left = 16
      Top = 32
      Width = 73
      Height = 21
      DataField = 'DOC_ITEM_VIEW_GENERATOR_CODE'
      DataSource = dsData
      TabOrder = 0
    end
    object edtDocItemViewGeneratorName: TDBEdit
      Left = 104
      Top = 32
      Width = 345
      Height = 21
      DataField = 'DOC_ITEM_VIEW_GENERATOR_NAME'
      DataSource = dsData
      TabOrder = 1
    end
    object edtGeneratorParams: TDBEdit
      Left = 16
      Top = 128
      Width = 433
      Height = 21
      DataField = 'GENERATOR_PARAMS'
      DataSource = dsData
      TabOrder = 3
    end
    object edtGeneratorPath: TJvDBComboEdit
      Left = 16
      Top = 80
      Width = 433
      Height = 21
      BeepOnError = False
      DataField = 'GENERATOR_PATH'
      DataSource = dsData
      ImageKind = ikEllipsis
      ButtonWidth = 16
      TabOrder = 2
      OnButtonClick = edtGeneratorPathButtonClick
    end
    object edtGeneratorTimeoutSec: TDBEdit
      Left = 16
      Top = 176
      Width = 113
      Height = 21
      DataField = 'GENERATOR_TIMEOUT_SEC'
      DataSource = dsData
      TabOrder = 4
    end
    object edtFileExtension: TJvDBLookupCombo
      Left = 144
      Top = 176
      Width = 169
      Height = 21
      DataField = 'RESULT_FILE_EXTENSION_CODE'
      DataSource = dsData
      LookupField = 'FILE_EXTENSION_CODE'
      LookupDisplay = 'FILE_EXTENSION_ABBREV'
      LookupSource = dsFileExtensions
      TabOrder = 5
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088' '#1085#1072' '#1048#1048#1054' '#1048#1079#1075#1083#1077#1076#1080' - %s'
    end
  end
  inherited cdsData: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_VIEW_GENERATOR_CODE'
        ParamType = ptInput
      end>
  end
  object dlgDocItemViewGeneratorPath: TOpenDialog
    DefaultExt = 'exe'
    Filter = 'Applications (*.exe)|*.exe|All files (*.*)|*.*'
    Options = [ofEnableSizing]
    Left = 213
    Top = 66
  end
  object dsFileExtensions: TDataSource
    DataSet = cdsFileExtensions
    Left = 381
    Top = 2
  end
  object cdsFileExtensions: TAbmesClientDataSet
    Aggregates = <>
    IndexFieldNames = 'FILE_EXTENSION_ABBREV'
    Params = <>
    ProviderName = 'prvFileExtensions'
    ConnectionBroker = dmMain.conDoc
    Left = 349
    Top = 2
    object cdsFileExtensionsFILE_EXTENSION_CODE: TAbmesFloatField
      FieldName = 'FILE_EXTENSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsFileExtensionsFILE_EXTENSION_NAME: TAbmesWideStringField
      FieldName = 'FILE_EXTENSION_NAME'
      Size = 50
    end
    object cdsFileExtensionsFILE_EXTENSION_ABBREV: TAbmesWideStringField
      FieldName = 'FILE_EXTENSION_ABBREV'
      Size = 10
    end
    object cdsFileExtensionsDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
    end
  end
end
