inherited fmDocItemTemplates: TfmDocItemTemplates
  Caption = #1048#1048#1054' '#1048#1079#1090#1086#1095#1085#1080#1094#1080
  ClientHeight = 367
  ClientWidth = 731
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 332
    Width = 731
    inherited pnlOKCancel: TPanel
      Left = 463
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 374
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 642
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 731
    Height = 332
    inherited pnlGrid: TPanel
      Width = 715
      Height = 316
      inherited pnlNavigator: TPanel
        Width = 715
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 715
        Height = 292
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DOC_ITEM_TEMPLATE_CODE'
            Footers = <>
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'IS_INACTIVE'
            Footers = <>
            Width = 14
          end
          item
            EditButtons = <>
            FieldName = 'IS_PATTERN'
            Footers = <>
            Width = 14
          end
          item
            EditButtons = <>
            FieldName = 'DOC_ITEM_TYPE_NAME'
            Footers = <>
            Width = 115
          end
          item
            EditButtons = <>
            FieldName = 'DOC_ITEM_TEMPLATE_TYPE_NAME'
            Footers = <>
            Width = 112
          end
          item
            EditButtons = <>
            FieldName = 'DOC_ITEM_TEMPLATE_NAME'
            Footers = <>
            Width = 188
          end
          item
            EditButtons = <>
            FieldName = 'NOTES'
            Footers = <>
            Width = 190
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conDoc
    FieldDefs = <
      item
        Name = 'DOC_ITEM_TEMPLATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_TEMPLATE_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_TEMPLATE_TYPE_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_PATTERN'
        DataType = ftFloat
      end
      item
        Name = 'IS_INACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_TYPE_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'NOTES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'qryDefaultDocItems'
        DataType = ftDataSet
      end>
    ProviderName = 'prvDocItemTemplatesNom'
    object cdsGridDataDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'DOC_ITEM_TEMPLATE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataDOC_ITEM_TEMPLATE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DOC_ITEM_TEMPLATE_NAME'
      Size = 50
    end
    object cdsGridDataDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
    end
    object cdsGridDataDOC_ITEM_TEMPLATE_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1052#1048#1048#1054' '#1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_NAME'
      Size = 100
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
    end
    object cdsGridDataIS_PATTERN: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1064
      FieldName = 'IS_PATTERN'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_INACTIVE: TAbmesFloatField
      DisplayLabel = #1055
      FieldName = 'IS_INACTIVE'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
    end
    object cdsGridDataDOC_ITEM_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1042#1080#1076' '#1048#1048#1054
      FieldName = 'DOC_ITEM_TYPE_NAME'
      Size = 50
    end
    object cdsGridDataNOTES: TAbmesWideStringField
      DisplayLabel = #1041#1077#1083#1077#1078#1082#1080
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsGridData_MAX_DOC_ITEM_TEMPLATE_CODE: TAggregateField
      FieldName = '_MAX_DOC_ITEM_TEMPLATE_CODE'
      Active = True
      Expression = 'Max(DOC_ITEM_TEMPLATE_CODE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1048#1048#1054' '#1048#1079#1090#1086#1095#1085#1080#1094#1080
    end
  end
end
