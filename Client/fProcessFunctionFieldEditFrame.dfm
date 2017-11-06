inherited frProcessFunctionFieldEditFrame: TfrProcessFunctionFieldEditFrame
  inherited gbTreeNode: TGroupBox
    Caption = ' '#1060#1091#1085#1082#1094#1080#1103' '#1079#1072' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074' '#1044#1091#1093#1072' '#1085#1072' '#1057#1098#1079#1080#1076#1072#1085#1080#1077' '
  end
  object cdsProcessFunction: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProcesses
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_FUNC_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProcessFunction'
    OnCalcFields = cdsProcessFunctionCalcFields
    Left = 256
    Top = 8
    object cdsProcessFunctionPRC_FUNC_CODE: TAbmesFloatField
      FieldName = 'PRC_FUNC_CODE'
      Required = True
    end
    object cdsProcessFunctionPARENT_PRC_FUNC_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRC_FUNC_CODE'
    end
    object cdsProcessFunctionPRC_FUNC_LOCAL_NO: TAbmesFloatField
      FieldName = 'PRC_FUNC_LOCAL_NO'
      Required = True
    end
    object cdsProcessFunctionPRC_FUNC_NAME: TAbmesWideStringField
      FieldName = 'PRC_FUNC_NAME'
      Required = True
      Size = 100
    end
    object cdsProcessFunctionPRC_FUNC_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_FUNC_SHORT_NAME'
      Required = True
      Size = 100
    end
    object cdsProcessFunctionIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsProcessFunctionPARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      Size = 100
    end
    object cdsProcessFunctionDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsProcessFunctionDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsProcessFunctionHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsProcessFunction_PRC_FUNC_DISPLAY_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PRC_FUNC_DISPLAY_NAME'
      Size = 150
      Calculated = True
    end
  end
end
