inherited TreeNomWithParamsEditForm: TTreeNomWithParamsEditForm
  Left = 391
  Top = 198
  ActiveControl = edtNodeNo
  Caption = 'TreeNomWithParamsEditForm'
  ClientHeight = 314
  ClientWidth = 457
  Constraints.MinHeight = 341
  Constraints.MinWidth = 380
  DesignSize = (
    457
    314)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 279
    Width = 457
    inherited pnlOKCancel: TPanel
      Left = 189
    end
    inherited pnlClose: TPanel
      Left = 100
    end
    inherited pnlApply: TPanel
      Left = 368
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Left = 8
    Top = 79
    Width = 441
    Height = 192
    Align = alNone
    Anchors = [akLeft, akRight, akBottom]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 0
    DesignSize = (
      441
      192)
    inherited pnlGrid: TPanel
      Left = 11
      Top = 11
      Width = 419
      Height = 170
      Align = alNone
      Anchors = [akLeft, akTop, akRight]
      inherited pnlNavigator: TPanel
        Width = 419
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited pnlDataButtons: TPanel
        Top = 136
        Width = 419
        Height = 34
        inherited btnAddData: TBitBtn
          Top = 9
        end
        inherited btnDeleteData: TBitBtn
          Top = 9
        end
        inherited btnEditData: TBitBtn
          Top = 9
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 419
        Height = 112
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch]
        OnGetCellParams = grdDataGetCellParams
        OnSortMarkingChanged = nil
        Columns = <
          item
            EditButtons = <>
            FieldName = 'NODE_PARAM_ORDER_NO'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1053#1072#1088#1077#1076#1073#1072
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'NODE_PARAM_NAME'
            Footers = <>
            Width = 139
          end
          item
            EditButtons = <>
            FieldName = 'ABBREV'
            Footers = <>
            Title.Caption = #1040#1073#1088#1077#1074'.'
            Width = 45
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'IS_REQUIRED'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1047#1072#1076'.'
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = '_SHOW_VALUE'
            Footers = <>
            Width = 123
          end>
      end
    end
  end
  object pnlParamsCaption: TPanel [2]
    Left = 19
    Top = 71
    Width = 159
    Height = 17
    Anchors = [akLeft, akBottom]
    BevelOuter = bvNone
    Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1079#1080#1088#1072#1097#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080
    TabOrder = 2
  end
  object pnlData: TPanel [3]
    Left = 8
    Top = 8
    Width = 441
    Height = 61
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object lblNodeNo: TLabel
      Left = 16
      Top = 8
      Width = 34
      Height = 13
      Caption = #1053#1086#1084#1077#1088
      FocusControl = edtNodeNo
    end
    object lblNodeName: TLabel
      Left = 112
      Top = 8
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FocusControl = edtNodeName
    end
    object edtNodeNo: TDBEdit
      Left = 16
      Top = 24
      Width = 81
      Height = 21
      DataField = 'NODE_NO'
      DataSource = dsData
      TabOrder = 0
    end
    object edtNodeName: TDBEdit
      Left = 112
      Top = 24
      Width = 313
      Height = 21
      DataField = 'NODE_NAME'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 1
    end
  end
  inherited dsGridData: TDataSource
    Left = 424
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    IndexFieldNames = 'NODE_PARAM_ORDER_NO; NODE_PARAM_ID'
    FetchOnDemand = False
    Params = <
      item
        DataType = ftFloat
        Name = 'NEW_NODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end>
    ProviderName = 'prvNodeParams'
    BeforePost = cdsGridDataBeforePost
    OnCalcFields = cdsGridDataCalcFields
    OnNewRecord = cdsGridDataNewRecord
    Left = 392
    object cdsGridDataNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataNODE_PARAM_ID: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'NODE_PARAM_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = ',0'
    end
    object cdsGridDataNODE_PARAM_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NODE_PARAM_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataNODE_PARAM_ORDER_NO: TAbmesFloatField
      FieldName = 'NODE_PARAM_ORDER_NO'
      ProviderFlags = [pfInWhere]
      Required = True
    end
    object cdsGridDataVALUE_TYPE: TAbmesFloatField
      FieldName = 'VALUE_TYPE'
    end
    object cdsGridDataNOM_CODE: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      FieldName = 'NOM_CODE'
    end
    object cdsGridDataVALUE_NOM_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_CODE'
    end
    object cdsGridDataVALUE_NOM_ITEM_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_CODE'
    end
    object cdsGridDataVALUE_FLOAT: TAbmesFloatField
      FieldName = 'VALUE_FLOAT'
    end
    object cdsGridDataVALUE_FLOAT_FORMAT: TAbmesWideStringField
      FieldName = 'VALUE_FLOAT_FORMAT'
    end
    object cdsGridDataVALUE_FLOAT_RANGE_START: TAbmesFloatField
      FieldName = 'VALUE_FLOAT_RANGE_START'
    end
    object cdsGridDataVALUE_FLOAT_RANGE_END: TAbmesFloatField
      FieldName = 'VALUE_FLOAT_RANGE_END'
    end
    object cdsGridDataVALUE_STRING: TAbmesWideStringField
      FieldName = 'VALUE_STRING'
      Size = 150
    end
    object cdsGridDataABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
      FieldName = 'ABBREV'
      OnSetText = cdsGridDataABBREVSetText
    end
    object cdsGridDataPREFIX: TAbmesWideStringField
      FieldName = 'PREFIX'
      OnSetText = cdsGridDataABBREVSetText
    end
    object cdsGridDataSUFFIX: TAbmesWideStringField
      FieldName = 'SUFFIX'
      OnSetText = cdsGridDataABBREVSetText
    end
    object cdsGridDataIS_REQUIRED: TAbmesFloatField
      DisplayLabel = #1047#1072#1076#1098#1083#1078#1080#1090#1077#1083#1077#1085
      FieldName = 'IS_REQUIRED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_PART_OF_NAME: TAbmesFloatField
      FieldName = 'IS_PART_OF_NAME'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_INHERITED: TAbmesFloatField
      FieldName = 'IS_INHERITED'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_VALUE_INHERITED: TAbmesFloatField
      FieldName = 'IS_VALUE_INHERITED'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_DEFINED: TAbmesFloatField
      FieldName = 'IS_DEFINED'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsGridDataIS_DEFINEDChange
      FieldValueType = fvtBoolean
    end
    object cdsGridDataNOM_ITEM_NAME: TAbmesWideStringField
      FieldName = 'NOM_ITEM_NAME'
      Size = 50
    end
    object cdsGridDataNOM_ITEM_IS_NOT_PART_OF_NAME: TAbmesFloatField
      FieldName = 'NOM_ITEM_IS_NOT_PART_OF_NAME'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPARENT_IS_DEFINED: TAbmesFloatField
      FieldName = 'PARENT_IS_DEFINED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPARENT_IS_FOR_EXPORT: TAbmesFloatField
      FieldName = 'PARENT_IS_FOR_EXPORT'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_FOR_EXPORT: TAbmesFloatField
      FieldName = 'IS_FOR_EXPORT'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataEXPORT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1045#1082#1089#1087#1086#1088#1090' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
      FieldName = 'EXPORT_IDENTIFIER'
    end
    object cdsGridData_SHOW_VALUE: TAbmesWideStringField
      DisplayLabel = #1057#1090#1086#1081#1085#1086#1089#1090
      FieldKind = fkCalculated
      FieldName = '_SHOW_VALUE'
      Size = 250
      Calculated = True
    end
    object cdsGridData_SHOW_VALUE_WITH_PREFIX_AND_SUFFIX: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_VALUE_WITH_PREFIX_AND_SUFFIX'
      Size = 100
      Calculated = True
    end
    object cdsGridData_NOM_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      FieldKind = fkLookup
      FieldName = '_NOM_NAME'
      LookupDataSet = cdsNoms
      LookupKeyFields = 'NOM_CODE'
      LookupResultField = 'NOM_NAME'
      KeyFields = 'NOM_CODE'
      Size = 50
      Lookup = True
    end
    object cdsGridData_NOM_DOC_BRANCH_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_NOM_DOC_BRANCH_CODE'
      LookupDataSet = cdsNoms
      LookupKeyFields = 'NOM_CODE'
      LookupResultField = 'DOC_BRANCH_CODE'
      KeyFields = 'NOM_CODE'
      Lookup = True
    end
    object cdsGridData_NOM_DOC_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_NOM_DOC_CODE'
      LookupDataSet = cdsNoms
      LookupKeyFields = 'NOM_CODE'
      LookupResultField = 'DOC_CODE'
      KeyFields = 'NOM_CODE'
      Lookup = True
    end
    object cdsGridData_NOM_HAS_DOC_ITEMS: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_NOM_HAS_DOC_ITEMS'
      LookupDataSet = cdsNoms
      LookupKeyFields = 'NOM_CODE'
      LookupResultField = 'HAS_DOC_ITEMS'
      KeyFields = 'NOM_CODE'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsGridData_MAX_NODE_PARAM_ID: TAggregateField
      FieldName = '_MAX_NODE_PARAM_ID'
      Active = True
      Expression = 'Max(NODE_PARAM_ID)'
    end
    object cdsGridData_MAX_NODE_PARAM_ORDER_NO: TAggregateField
      FieldName = '_MAX_NODE_PARAM_ORDER_NO'
      Active = True
      Expression = 'Max(NODE_PARAM_ORDER_NO)'
    end
  end
  inherited alActions: TActionList
    Left = 312
    inherited actForm: TAction
      Caption = 'TreeNomWithParamsEditForm'
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 392
  end
  inherited dsGridDataParams: TDataSource
    Left = 424
  end
  inherited dsData: TDataSource
    Left = 424
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 392
  end
  object cdsNoms: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvNoms'
    Left = 424
    Top = 96
    object cdsNomsNOM_CODE: TAbmesFloatField
      FieldName = 'NOM_CODE'
    end
    object cdsNomsNOM_NAME: TAbmesWideStringField
      FieldName = 'NOM_NAME'
      Size = 50
    end
  end
end
