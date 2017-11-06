inherited frProductSetFieldEditFrame: TfrProductSetFieldEditFrame
  inherited cdsEnumItems: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProductsTreeEditor
    ProviderName = 'prvProductSets'
    object cdsEnumItemsPRODUCT_SET_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_SET_CODE'
      Required = True
    end
    object cdsEnumItemsPRODUCT_SET_NO: TAbmesFloatField
      FieldName = 'PRODUCT_SET_NO'
      Required = True
    end
    object cdsEnumItemsPRODUCT_SET_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_SET_NAME'
      Required = True
      Size = 50
    end
  end
end
