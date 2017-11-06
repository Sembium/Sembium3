inherited frPRPerPriceModifierProductSetFieldEditFrame: TfrPRPerPriceModifierProductSetFieldEditFrame
  inherited cdsEnumItems: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvPRPerPriceModifierProductSets'
    BeforeOpen = cdsEnumItemsBeforeOpen
  end
end
