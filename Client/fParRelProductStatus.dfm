inherited frParRelProductStatus: TfrParRelProductStatus
  inherited edtCurrentStatus: TDBEdit
    DataField = 'PAR_REL_PRODUCT_STATUS_NAME'
  end
  inherited cdsStatus: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvParRelProductStatus'
    ConnectionBroker = dmMain.conParRelProducts
    object cdsStatusPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsStatusBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object cdsStatusPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsStatusPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 100
    end
    object cdsStatusEXISTANCE_MONTHS: TAbmesFloatField
      FieldName = 'EXISTANCE_MONTHS'
      DisplayFormat = ',0'
    end
    object cdsStatusCURRENT_STATUS_REACH_MONTHS: TAbmesFloatField
      FieldName = 'CURRENT_STATUS_REACH_MONTHS'
      DisplayFormat = ',0'
    end
    object cdsStatusqryParRelProductStatusChanges: TDataSetField
      FieldName = 'qryParRelProductStatusChanges'
    end
  end
end
