inherited frExceptEventTypeFieldEditFrame: TfrExceptEventTypeFieldEditFrame
  inherited gbTreeNode: TGroupBox
    Caption = ' '#1042#1080#1076' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '
  end
  object cdsExceptEventType: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conExceptEvents
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvExceptEventType'
    OnCalcFields = cdsExceptEventTypeCalcFields
    Left = 288
    Top = 8
    object cdsExceptEventTypeEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TYPE_CODE'
      Required = True
    end
    object cdsExceptEventTypePARENT_EXCEPT_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'PARENT_EXCEPT_EVENT_TYPE_CODE'
    end
    object cdsExceptEventTypeEXCEPT_EVENT_TYPE_LOCAL_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TYPE_LOCAL_NO'
      Required = True
    end
    object cdsExceptEventTypeEXCEPT_EVENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_TYPE_NAME'
      Required = True
      Size = 100
    end
    object cdsExceptEventTypeEXCEPT_EVENT_TYPE_SHORT_NAME: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_TYPE_SHORT_NAME'
      Required = True
      Size = 100
    end
    object cdsExceptEventTypeIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsExceptEventTypePARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      Size = 100
    end
    object cdsExceptEventTypeDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsExceptEventTypeDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsExceptEventTypeHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsExceptEventType_EE_TYPE_DISPLAY_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_EE_TYPE_DISPLAY_NAME'
      Size = 200
      Calculated = True
    end
  end
end
