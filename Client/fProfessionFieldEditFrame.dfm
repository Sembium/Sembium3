inherited frProfessionFieldEditFrame: TfrProfessionFieldEditFrame
  object cdsProfession: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProfession'
    OnCalcFields = cdsProfessionCalcFields
    Left = 72
    Top = 8
    object cdsProfessionPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object cdsProfessionPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      Size = 100
    end
    object cdsProfessionDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsProfessionDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsProfessionPROFESSION_LOCAL_NO: TAbmesFloatField
      FieldName = 'PROFESSION_LOCAL_NO'
      Required = True
    end
    object cdsProfessionPARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      Size = 100
    end
    object cdsProfessionIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
    end
    object cdsProfessionHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsProfession_PROFESSION_DISPLAY_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PROFESSION_DISPLAY_NAME'
      Size = 150
      Calculated = True
    end
  end
end
