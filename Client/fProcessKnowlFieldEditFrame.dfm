inherited frProcessKnowlFieldEditFrame: TfrProcessKnowlFieldEditFrame
  inherited gbTreeNode: TGroupBox
    Caption = ' '#1055#1086#1079#1085#1072#1085#1080#1077' '#1079#1072' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074' '#1044#1091#1093#1072' '#1085#1072' '#1057#1098#1079#1080#1076#1072#1085#1080#1077' '
  end
  object cdsProcessKnowl: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProcesses
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_KNOWL_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProcessKnowl'
    OnCalcFields = cdsProcessKnowlCalcFields
    Left = 256
    Top = 8
    object cdsProcessKnowlPRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PRC_KNOWL_CODE'
      Required = True
    end
    object cdsProcessKnowlPARENT_PRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRC_KNOWL_CODE'
    end
    object cdsProcessKnowlPRC_KNOWL_LOCAL_NO: TAbmesFloatField
      FieldName = 'PRC_KNOWL_LOCAL_NO'
      Required = True
    end
    object cdsProcessKnowlPRC_KNOWL_NAME: TAbmesWideStringField
      FieldName = 'PRC_KNOWL_NAME'
      Required = True
      Size = 100
    end
    object cdsProcessKnowlPRC_KNOWL_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_KNOWL_SHORT_NAME'
      Required = True
      Size = 100
    end
    object cdsProcessKnowlIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsProcessKnowlPARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      Size = 100
    end
    object cdsProcessKnowlDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsProcessKnowlDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsProcessKnowlHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsProcessKnowl_PRC_KNOWL_DISPLAY_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PRC_KNOWL_DISPLAY_NAME'
      Size = 150
      Calculated = True
    end
  end
end
