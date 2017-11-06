inherited frRealFinModelLineStoreDeals: TfrRealFinModelLineStoreDeals
  Width = 114
  Height = 33
  object btnStoreDeals: TBitBtn [0]
    Left = 8
    Top = 2
    Width = 97
    Height = 25
    Action = actStoreDeals
    Caption = #1054#1090#1095#1077#1090#1085#1080' '#1055'/'#1058'...'
    TabOrder = 0
  end
  inherited alActions: TActionList
    object actStoreDeals: TAction
      Caption = #1054#1090#1095#1077#1090#1085#1080' '#1055'/'#1058'...'
      Hint = #1054#1090#1095#1077#1090#1085#1080' '#1055'/'#1058
      OnExecute = actStoreDealsExecute
      OnUpdate = actStoreDealsUpdate
    end
  end
  object cdsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 8
    Top = 32
    object cdsParamsBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object cdsParamsBND_PROCESS: TAbmesWideStringField
      FieldName = 'BND_PROCESS'
      Size = 4000
    end
    object cdsParamsIS_STORNO: TAbmesFloatField
      FieldName = 'IS_STORNO'
      FieldValueType = fvtBoolean
    end
    object cdsParamsSTART_DATE: TAbmesSQLTimeStampField
      FieldName = 'START_DATE'
    end
    object cdsParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
  end
  object cdsBinding: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 32
    object cdsBindingBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object cdsBindingFIN_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_BRANCH_CODE'
    end
    object cdsBindingFIN_ORDER_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_NO'
    end
    object cdsBindingFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
    end
    object cdsBindingFIN_MODEL_LINE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_NO'
    end
  end
  object cdsRFMLStoreDealsParams: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Params = <
      item
        DataType = ftFloat
        Name = 'RFML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RFML_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvRFMLStoreDealsParams'
    Left = 72
    Top = 32
    object cdsRFMLStoreDealsParamsBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
      Required = True
    end
    object cdsRFMLStoreDealsParamsIS_STORNO: TAbmesFloatField
      FieldName = 'IS_STORNO'
    end
    object cdsRFMLStoreDealsParamsSTART_DATE: TAbmesSQLTimeStampField
      FieldName = 'START_DATE'
      Required = True
    end
    object cdsRFMLStoreDealsParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsRFMLStoreDealsParamsFIN_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_BRANCH_CODE'
      Required = True
    end
    object cdsRFMLStoreDealsParamsFIN_ORDER_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_NO'
      Required = True
    end
    object cdsRFMLStoreDealsParamsFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
      Required = True
    end
    object cdsRFMLStoreDealsParamsFIN_MODEL_LINE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_NO'
      Required = True
    end
  end
end
