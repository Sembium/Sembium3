inherited fmFileExtensions: TfmFileExtensions
  Caption = #1042#1080#1076#1086#1074#1077' '#1092#1072#1081#1083#1086#1074#1077
  ClientHeight = 349
  ClientWidth = 512
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 314
    Width = 512
    inherited pnlOKCancel: TPanel
      Left = 244
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 155
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 423
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 512
    Height = 314
    inherited pnlGrid: TPanel
      Width = 496
      Height = 298
      inherited pnlNavigator: TPanel
        Width = 496
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 496
        Height = 274
        Columns = <
          item
            EditButtons = <>
            FieldName = 'FILE_EXTENSION_CODE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FILE_EXTENSION_NAME'
            Footers = <>
            Width = 300
          end
          item
            EditButtons = <>
            FieldName = 'FILE_EXTENSION_ABBREV'
            Footers = <>
            Width = 97
          end
          item
            EditButtons = <>
            FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
            Footers = <>
            Visible = False
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'FILE_EXTENSION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FILE_EXTENSION_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'FILE_EXTENSION_ABBREV'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'DOC_ITEM_VIEW_GENERATOR_CODE'
        DataType = ftFloat
      end>
    ProviderName = 'prvFileExtensions'
    ConnectionBroker = dmMain.conDoc
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataFILE_EXTENSION_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'FILE_EXTENSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataFILE_EXTENSION_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'FILE_EXTENSION_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataFILE_EXTENSION_ABBREV: TAbmesWideStringField
      DisplayLabel = #1056#1072#1079#1096#1080#1088#1077#1085#1080#1077
      FieldName = 'FILE_EXTENSION_ABBREV'
      Required = True
      Size = 10
    end
    object cdsGridDataDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
    end
    object cdsGridData_MAX_FILE_EXTENSION_CODE: TAggregateField
      FieldName = '_MAX_FILE_EXTENSION_CODE'
      Active = True
      Expression = 'Max(FILE_EXTENSION_CODE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1080#1076#1086#1074#1077' '#1092#1072#1081#1083#1086#1074#1077
    end
  end
end
