inherited fmDocItemStorageTypes: TfmDocItemStorageTypes
  Caption = #1042#1080#1076#1086#1074#1077' '#1057#1098#1093#1088#1072#1085#1077#1085#1080#1103' '#1085#1072' '#1048#1048#1054
  ClientWidth = 427
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Width = 427
    inherited pnlOKCancel: TPanel
      Left = 159
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 70
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 338
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 427
    inherited pnlGrid: TPanel
      Width = 411
      inherited pnlNavigator: TPanel
        Width = 411
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 411
        TitleParams.MultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DOC_ITEM_STORAGE_TYPE_NO'
            Footers = <>
            Width = 32
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DOC_ITEM_STORAGE_TYPE_NAME'
            Footers = <>
            Width = 345
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conDoc
    FieldDefs = <
      item
        Name = 'DOC_ITEM_STORAGE_TYPE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_STORAGE_TYPE_NO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_STORAGE_TYPE_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'IS_FIXED'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'SELECT_COMMAND'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'VIEW_COMMAND'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'EDIT_COMMAND'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'DI_STORAGE_BASE_TYPE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'CONTENT_STORAGE_ADDRESS'
        DataType = ftWideString
        Size = 250
      end>
    ProviderName = 'prvDocItemStorageTypes'
    BeforePost = cdsGridDataBeforePost
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STORAGE_TYPE_CODE'
      Required = True
    end
    object cdsGridDataDOC_ITEM_STORAGE_TYPE_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'DOC_ITEM_STORAGE_TYPE_NO'
      Required = True
    end
    object cdsGridDataDOC_ITEM_STORAGE_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DOC_ITEM_STORAGE_TYPE_NAME'
      Required = True
      Size = 250
    end
    object cdsGridDataIS_FIXED: TAbmesFloatField
      FieldName = 'IS_FIXED'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSELECT_COMMAND: TAbmesWideStringField
      FieldName = 'SELECT_COMMAND'
      Size = 250
    end
    object cdsGridDataVIEW_COMMAND: TAbmesWideStringField
      DisplayLabel = #1050#1086#1084#1072#1085#1076#1072' "'#1055#1088#1077#1075#1083#1077#1076'"'
      FieldName = 'VIEW_COMMAND'
      Size = 250
    end
    object cdsGridDataEDIT_COMMAND: TAbmesWideStringField
      FieldName = 'EDIT_COMMAND'
      Size = 250
    end
    object cdsGridDataDI_STORAGE_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DI_STORAGE_BASE_TYPE_CODE'
      Required = True
    end
    object cdsGridData_MAX_DOC_ITEM_STORAGE_TYPE_NO: TAggregateField
      FieldName = '_MAX_DOC_ITEM_STORAGE_TYPE_NO'
      Active = True
      DisplayName = ''
      Expression = 'Max(DOC_ITEM_STORAGE_TYPE_NO)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1080#1076#1086#1074#1077' '#1057#1098#1093#1088#1072#1085#1077#1085#1080#1103' '#1085#1072' '#1048#1048#1054
    end
  end
end
