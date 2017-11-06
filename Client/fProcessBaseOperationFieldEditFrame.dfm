inherited frProcessBaseOperationFieldEditFrame: TfrProcessBaseOperationFieldEditFrame
  inherited gbTreeNode: TGroupBox
    Caption = ' '#1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1090#1086#1088' '
  end
  object cdsProcessBaseOperation: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProcesses
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_BASE_OP_CODE'
        ParamType = ptInput
        Size = 2
      end>
    ProviderName = 'prvProcessBaseOperation'
    OnCalcFields = cdsProcessBaseOperationCalcFields
    Left = 256
    Top = 8
    object cdsProcessBaseOperationPRC_BASE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_CODE'
      Required = True
    end
    object cdsProcessBaseOperationPARENT_PRC_BASE_OP_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRC_BASE_OP_CODE'
    end
    object cdsProcessBaseOperationPRC_BASE_OP_LOCAL_NO: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_LOCAL_NO'
      Required = True
    end
    object cdsProcessBaseOperationPRC_BASE_OP_NAME: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_NAME'
      Required = True
      Size = 100
    end
    object cdsProcessBaseOperationPRC_BASE_OP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_SHORT_NAME'
      Required = True
      Size = 100
    end
    object cdsProcessBaseOperationIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsProcessBaseOperationPARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      Size = 100
    end
    object cdsProcessBaseOperationDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsProcessBaseOperationDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsProcessBaseOperationHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsProcessBaseOperationDOC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DOC_PRODUCT_CODE'
    end
    object cdsProcessBaseOperationPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsProcessBaseOperationPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsProcessBaseOperationPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
      FieldValueType = fvtBoolean
    end
    object cdsProcessBaseOperation_PRC_BASE_OP_DISPLAY_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PRC_BASE_OP_DISPLAY_NAME'
      Size = 150
      Calculated = True
    end
  end
end
