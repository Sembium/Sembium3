inherited frFinClassFieldEditFrame: TfrFinClassFieldEditFrame
  inherited gbTreeNode: TGroupBox
    Caption = ' '#1060#1080#1085#1072#1085#1089#1086#1074#1072' '#1057#1090#1072#1090#1103' '
  end
  object cdsFinClass: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_CLASS_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvFinClass'
    OnCalcFields = cdsFinClassCalcFields
    Left = 288
    Top = 8
    object cdsFinClassFIN_CLASS_CODE: TAbmesFloatField
      FieldName = 'FIN_CLASS_CODE'
    end
    object cdsFinClassPARENT_FIN_CLASS_CODE: TAbmesFloatField
      FieldName = 'PARENT_FIN_CLASS_CODE'
    end
    object cdsFinClassFIN_CLASS_LOCAL_NO: TAbmesFloatField
      FieldName = 'FIN_CLASS_LOCAL_NO'
    end
    object cdsFinClassNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 100
    end
    object cdsFinClassSHORT_NAME: TAbmesWideStringField
      FieldName = 'SHORT_NAME'
      Size = 100
    end
    object cdsFinClassIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      FieldValueType = fvtBoolean
    end
    object cdsFinClassDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsFinClassDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsFinClassHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsFinClassPARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      Size = 100
    end
    object cdsFinClass_FIN_CLASS_DISPLAY_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_FIN_CLASS_DISPLAY_NAME'
      Size = 100
      Calculated = True
    end
  end
end
