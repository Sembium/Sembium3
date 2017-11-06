inherited frProcessActionFieldEditFrame: TfrProcessActionFieldEditFrame
  inherited gbEnumItem: TGroupBox
    inherited edtEnumItemName: TDBEdit
      Left = 40
      Width = 290
    end
    inherited cbEnumItemName: TJvDBLookupCombo
      Left = 40
      Width = 290
      DropDownCount = 9
      DropDownWidth = 400
    end
    inherited edtEnumItemNo: TDBEdit
      Width = 31
    end
  end
  inherited cdsEnumItems: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProcesses
    Params = <
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProcessActions'
    BeforeOpen = cdsEnumItemsBeforeOpen
    object cdsEnumItemsPRC_ACTION_CODE: TAbmesFloatField
      FieldName = 'PRC_ACTION_CODE'
      Required = True
    end
    object cdsEnumItemsPRC_ACTION_NO: TAbmesFloatField
      DisplayWidth = 6
      FieldName = 'PRC_ACTION_NO'
      Required = True
    end
    object cdsEnumItemsPRC_ACTION_NAME: TAbmesWideStringField
      FieldName = 'PRC_ACTION_NAME'
      Required = True
      Size = 50
    end
  end
end
