inherited fmDocItemViewGenerators: TfmDocItemViewGenerators
  Left = 225
  Top = 199
  Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088#1080' '#1085#1072' '#1048#1048#1054' '#1048#1079#1075#1083#1077#1076#1080
  ClientHeight = 331
  ClientWidth = 463
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 296
    Width = 463
    inherited pnlOKCancel: TPanel
      Left = 195
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 106
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 374
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 463
    Height = 296
    inherited pnlGrid: TPanel
      Width = 447
      Height = 280
      inherited pnlNavigator: TPanel
        Width = 447
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 447
        Height = 256
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DOC_ITEM_VIEW_GENERATOR_NAME'
            Footers = <>
            Width = 349
          end
          item
            EditButtons = <>
            FieldName = 'GENERATOR_PATH'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'GENERATOR_PARAMS'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'GENERATOR_TIMEOUT_SEC'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'RESULT_FILE_EXTENSION_CODE'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'RESULT_FILE_EXTENSION_NAME'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'RESULT_FILE_EXTENSION_ABBREV'
            Footers = <>
            Visible = False
            Width = 70
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'DOC_ITEM_VIEW_GENERATOR_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_VIEW_GENERATOR_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'GENERATOR_PATH'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'GENERATOR_PARAMS'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'GENERATOR_TIMEOUT_SEC'
        DataType = ftFloat
      end
      item
        Name = 'RESULT_FILE_EXTENSION_CODE'
        DataType = ftFloat
      end>
    ProviderName = 'prvDocItemViewGenerators'
    ConnectionBroker = dmMain.conDoc
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
      Required = True
    end
    object cdsGridDataDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataGENERATOR_PATH: TAbmesWideStringField
      DisplayLabel = #1055#1098#1090
      FieldName = 'GENERATOR_PATH'
      Required = True
      Size = 250
    end
    object cdsGridDataGENERATOR_PARAMS: TAbmesWideStringField
      DisplayLabel = #1055#1072#1088#1072#1084#1077#1090#1088#1080
      FieldName = 'GENERATOR_PARAMS'
      Required = True
      Size = 250
    end
    object cdsGridDataGENERATOR_TIMEOUT_SEC: TAbmesFloatField
      DisplayLabel = #1058#1072#1081#1084#1072#1091#1090
      FieldName = 'GENERATOR_TIMEOUT_SEC'
      Required = True
    end
    object cdsGridDataRESULT_FILE_EXTENSION_CODE: TAbmesFloatField
      DisplayLabel = #1056#1072#1079#1096#1080#1088#1077#1085#1080#1077
      FieldName = 'RESULT_FILE_EXTENSION_CODE'
      Required = True
    end
    object cdsGridData_MAX_DOC_ITEM_VIEW_GEN_CODE: TAggregateField
      FieldName = '_MAX_DOC_ITEM_VIEW_GEN_CODE'
      Active = True
      Expression = 'Max(DOC_ITEM_VIEW_GENERATOR_CODE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088#1080' '#1085#1072' '#1048#1048#1054' '#1048#1079#1075#1083#1077#1076#1080
    end
  end
end
