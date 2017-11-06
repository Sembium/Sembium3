inherited frProcessConcreteOperationFieldEditFrame: TfrProcessConcreteOperationFieldEditFrame
  inherited gbTreeNode: TGroupBox
    Caption = ' '#1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1085#1090' '
  end
  object cdsProcessConcreteOperation: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProcesses
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProcessConcreteOperation'
    OnCalcFields = cdsProcessConcreteOperationCalcFields
    Left = 256
    Top = 8
    object cdsProcessConcreteOperationPRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_OP_CODE'
      Required = True
    end
    object cdsProcessConcreteOperationPARENT_PRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRC_CONCRETE_OP_CODE'
    end
    object cdsProcessConcreteOperationPRC_CONCRETE_OP_LOCAL_NO: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_OP_LOCAL_NO'
      Required = True
    end
    object cdsProcessConcreteOperationPRC_CONCRETE_OP_NAME: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_NAME'
      Required = True
      Size = 100
    end
    object cdsProcessConcreteOperationPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_SHORT_NAME'
      Required = True
      Size = 100
    end
    object cdsProcessConcreteOperationIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsProcessConcreteOperationPARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      Size = 100
    end
    object cdsProcessConcreteOperationDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsProcessConcreteOperationHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsProcessConcreteOperationDOC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DOC_PRODUCT_CODE'
    end
    object cdsProcessConcreteOperationDEACTIVATION_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEACTIVATION_DATE'
    end
    object cdsProcessConcreteOperationIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsProcessConcreteOperationDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsProcessConcreteOperation_PRC_CONCRETE_OP_DISPLAY_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PRC_CONCRETE_OP_DISPLAY_NAME'
      Size = 150
      Calculated = True
    end
    object cdsProcessConcreteOperationPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsProcessConcreteOperationPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsProcessConcreteOperationPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
      FieldValueType = fvtBoolean
    end
  end
end
