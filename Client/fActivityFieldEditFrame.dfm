inherited frActivityFieldEditFrame: TfrActivityFieldEditFrame
  inherited cdsEnumItems: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCommon
    ProviderName = 'prvActivities'
    object cdsEnumItemsACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
      Required = True
    end
    object cdsEnumItemsACTIVITY_NO: TAbmesFloatField
      DisplayWidth = 6
      FieldName = 'ACTIVITY_NO'
      Required = True
    end
    object cdsEnumItemsACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ACTIVITY_NAME'
      Required = True
      Size = 150
    end
  end
end
