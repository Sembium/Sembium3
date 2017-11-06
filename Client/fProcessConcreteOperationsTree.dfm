inherited fmProcessConcreteOperationsTree: TfmProcessConcreteOperationsTree
  Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1080' '#1054#1087#1077#1088#1072#1085#1090#1080
  ClientHeight = 591
  ClientWidth = 795
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 548
    Width = 795
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 527
    end
    inherited pnlClose: TPanel
      Left = 438
    end
    inherited pnlApply: TPanel
      Left = 706
    end
  end
  inherited tvTree: TJvDBTreeView
    Width = 795
    Height = 524
    DataSource = dsData
    MasterField = 'PRC_CONCRETE_OP_CODE'
    DetailField = 'PARENT_PRC_CONCRETE_OP_CODE'
    IconField = '_PRC_CONCRETE_OP_TREE_ICON'
    ItemField = 'PRC_CONCRETE_OP_DISPLAY_NAME'
    TabOrder = 0
    Images = dmMain.ilActions
  end
  inherited pnlTop: TPanel
    Width = 795
    TabOrder = 2
    object tlbDocs: TToolBar
      Left = 263
      Top = 0
      Width = 85
      Height = 24
      Align = alLeft
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 36
      Images = dmMain.ilDocs
      TabOrder = 1
      object sepAfterShowInactive: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'sepAfterShowInactive'
        Style = tbsSeparator
      end
      object lblDoc: TLabel
        Left = 8
        Top = 0
        Width = 41
        Height = 24
        Caption = #1055#1088#1086#1094#1077#1089' '
        Layout = tlCenter
      end
      object btnDoc: TToolButton
        Left = 49
        Top = 0
        Action = actDoc
      end
    end
    object tlbSpecDocStatus: TToolBar
      Left = 348
      Top = 0
      Width = 32
      Height = 24
      Align = alLeft
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 24
      Images = dmMain.ilActions
      TabOrder = 2
      object sepAfterDocs: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Style = tbsSeparator
      end
      object btnSpecDocStatus: TToolButton
        Left = 8
        Top = 0
        Action = actSpecDocStatus
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1080' '#1054#1087#1077#1088#1072#1085#1090#1080
    end
    object actDoc: TAction [13]
      Hint = #1048#1048#1054' '#1085#1072' '#1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1085#1090
      ImageIndex = 98
      OnExecute = actDocExecute
      OnUpdate = actDocUpdate
    end
    object actSpecDocStatus: TAction
      Hint = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1080' '#1052#1072#1088#1096#1088#1091#1090#1085#1080' '#1052#1048#1048#1054' '#1085#1072' '#1054#1073#1077#1082#1090#1080#1074#1080#1088#1072#1085' '#1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1085#1090
      ImageIndex = 113
      OnExecute = actSpecDocStatusExecute
      OnUpdate = actSpecDocStatusUpdate
    end
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProcesses
    ProviderName = 'prvProcessConcreteOperations'
    BeforeDelete = cdsDataBeforeDelete
    OnCalcFields = cdsDataCalcFields
    object cdsDataPRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_OP_CODE'
      Required = True
    end
    object cdsDataPARENT_PRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRC_CONCRETE_OP_CODE'
    end
    object cdsDataPRC_CONCRETE_OP_LOCAL_NO: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_OP_LOCAL_NO'
      Required = True
    end
    object cdsDataPRC_CONCRETE_OP_NAME: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_NAME'
      Required = True
      Size = 100
    end
    object cdsDataPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_SHORT_NAME'
      Required = True
      Size = 100
    end
    object cdsDataIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataPRC_CONCRETE_OP_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_FULL_NO'
      Size = 100
    end
    object cdsDataPRC_CONCR_OP_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_CONCR_OP_FORMATTED_FULL_NO'
      Size = 250
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsDataDOC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DOC_PRODUCT_CODE'
    end
    object cdsData_PRC_CONCRETE_OP_TREE_ICON: TIntegerField
      FieldKind = fkCalculated
      FieldName = '_PRC_CONCRETE_OP_TREE_ICON'
      Calculated = True
    end
    object cdsDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsDataPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsDataPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
      FieldValueType = fvtBoolean
    end
    object cdsDataDEACTIVATION_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEACTIVATION_DATE'
    end
    object cdsDataIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsDataDOC_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DOC_SPEC_PRODUCT_CODE'
    end
    object cdsDataPRC_CONCRETE_OP_DISPLAY_NAME: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_DISPLAY_NAME'
      Size = 250
    end
  end
  inherited cdsPrintTree: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProcesses
    FieldDefs = <
      item
        Name = 'NODE_ID'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PARENT_NODE_ID'
        DataType = ftFloat
      end
      item
        Name = 'NODE_NAME'
        DataType = ftWideString
        Size = 184
      end
      item
        Name = 'FORMATED_NODE_NO'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'NODE_LEVEL'
        DataType = ftFloat
      end
      item
        Name = 'NODE_CHILD_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'NODE_TYPE'
        DataType = ftFloat
      end
      item
        Name = 'IS_LAST_CHILD'
        DataType = ftFloat
      end
      item
        Name = 'HAS_CHILDREN'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProcessConcreteOperationsPrintTree'
  end
end
