inherited frCompanyStatus: TfrCompanyStatus
  Width = 167
  Constraints.MaxWidth = 167
  Constraints.MinWidth = 167
  ExplicitWidth = 167
  inherited lblReachMonths: TLabel
    Left = 75
    ExplicitLeft = 75
  end
  inherited lblExistanceMonths: TLabel
    Left = 97
    ExplicitLeft = 97
  end
  inherited btnStatusesHistory: TSpeedButton
    Left = 141
    ExplicitLeft = 141
  end
  inherited lblMonths: TLabel
    Left = 126
    ExplicitLeft = 126
  end
  inherited edtReachMonths: TDBEdit
    Left = 73
    Width = 25
    ExplicitLeft = 73
    ExplicitWidth = 25
  end
  inherited edtExistanceMonths: TDBEdit
    Left = 98
    Width = 25
    ExplicitLeft = 98
    ExplicitWidth = 25
  end
  inherited edtCurrentStatus: TDBEdit
    Width = 73
    DataField = 'COMPANY_STATUS_CODE'
    ExplicitWidth = 73
  end
  inherited cdsStatus: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyStatus'
    ConnectionBroker = dmMain.conCompanies
    Left = 72
    object cdsStatusCOMPANY_STATUS_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'COMPANY_STATUS_CODE'
      OnGetText = cdsStatusCOMPANY_STATUS_CODEGetText
    end
    object cdsStatusSTATUS_DATE: TAbmesSQLTimeStampField
      FieldName = 'STATUS_DATE'
    end
    object cdsStatusBASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'BASE_ROLE_CODE'
    end
    object cdsStatusCOMPANY_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_NAME'
      Size = 100
    end
    object cdsStatusCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
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
    object cdsStatusCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
    end
    object cdsStatusPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object cdsStatusqryCompanyStatusesChanges: TDataSetField
      FieldName = 'qryCompanyStatusesChanges'
    end
  end
  inherited dsStatus: TDataSource
    Left = 104
  end
end
