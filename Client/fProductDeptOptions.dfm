inherited fmProductDeptOptions: TfmProductDeptOptions
  Left = 359
  Top = 270
  Caption = '%s'
  ClientHeight = 295
  ClientWidth = 516
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 261
    Width = 448
    Height = 34
    Align = alNone
    Visible = False
    inherited pnlOKCancel: TPanel
      Left = 270
      Width = 0
      Height = 34
      inherited btnOK: TBitBtn
        Default = False
        Kind = bkCustom
        TabStop = False
      end
      inherited btnCancel: TBitBtn
        TabStop = False
      end
    end
    inherited pnlClose: TPanel
      Left = 270
      Height = 34
    end
    inherited pnlApply: TPanel
      Left = 359
      Height = 34
      Visible = False
    end
    inherited pnlDataButtons: TPanel
      Height = 34
      inherited btnAddData: TBitBtn
        Left = 0
        Top = 9
      end
      inherited btnDeleteData: TBitBtn
        Left = 114
        Top = 9
      end
      inherited btnEditData: TBitBtn
        Left = 228
        Top = 9
      end
    end
  end
  inherited pnlMain: TPanel
    Width = 516
    Height = 295
    BorderWidth = 0
    inherited pnlGrid: TPanel
      Left = 0
      Top = 0
      Width = 516
      Height = 295
      inherited pnlNavigator: TPanel
        Width = 516
        inherited pnlFilterButton: TPanel
          Visible = False
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 516
        Height = 271
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = '_DEPT_FULL_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055
            Width = 230
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = '_IS_PSD_PRICE_FROM_DELIVERY'
            Footers = <>
            Title.Caption = #1053#1072#1095#1080#1085' '#1085#1072' '#1087#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077' '#1085#1072' '#1059#1054#1073
            Width = 235
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProductsTreeEditor
    FieldDefs = <
      item
        Name = 'PRODUCT_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DEPT_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'IS_PSD_PRICE_FROM_DELIVERY'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'DEPT_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'IS_INHERITED'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_LEVEL'
        DataType = ftFloat
      end
      item
        Name = 'OVERRIDE_IS_PSD_PRICE_FROM_DLV'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDept'
        Fields = 'PRODUCT_LEVEL; DEPT_IDENTIFIER'
        Options = [ixUnique]
      end>
    IndexName = 'idxDept'
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProductDeptOptions'
    BeforePost = cdsGridDataBeforePost
    OnCalcFields = cdsGridDataCalcFields
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsGridDataDEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055
      FieldName = 'DEPT_CODE'
      OnChange = cdsGridDataDEPT_CODEChange
    end
    object cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1058#1055
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsGridDataIS_INHERITED: TAbmesFloatField
      FieldName = 'IS_INHERITED'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPRODUCT_LEVEL: TAbmesFloatField
      FieldName = 'PRODUCT_LEVEL'
    end
    object cdsGridData_DEPT_FULL_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DEPT_FULL_IDENTIFIER'
      Size = 100
      Calculated = True
    end
    object cdsGridDataIS_PSD_PRICE_FROM_DELIVERY: TAbmesFloatField
      DisplayLabel = #1053#1072#1095#1080#1085' '#1085#1072' '#1087#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077' '#1085#1072' '#1059#1054#1073
      FieldName = 'IS_PSD_PRICE_FROM_DELIVERY'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_IS_PSD_PRICE_FROM_DLV: TAbmesFloatField
      FieldName = 'OVERRIDE_IS_PSD_PRICE_FROM_DLV'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_IS_PSD_PRICE_FROM_DELIVERY: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_IS_PSD_PRICE_FROM_DELIVERY'
      Size = 50
      Calculated = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = '%s'
    end
  end
end
