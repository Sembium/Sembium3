inherited frSaleOrderProcessObject: TfrSaleOrderProcessObject
  object lblBranch: TLabel [0]
    Left = 8
    Top = 8
    Width = 48
    Height = 13
    Caption = #1058#1055' '#1043#1083'.'
  end
  object lblNo: TLabel [1]
    Left = 96
    Top = 8
    Width = 34
    Height = 13
    Caption = #1047#1087#1090' No'
    FocusControl = edtNo
  end
  object lblLineNo: TLabel [2]
    Left = 152
    Top = 8
    Width = 35
    Height = 13
    Caption = #1056#1077#1076' No'
    FocusControl = edtLineNo
  end
  object cbBranch: TJvDBLookupCombo [3]
    Left = 8
    Top = 24
    Width = 81
    Height = 21
    DataField = '_REQUEST_BRANCH_IDENTIFIER'
    DataSource = dsProcessObjectParams
    DisplayEmpty = ' '
    EmptyValue = '0'
    TabOrder = 0
  end
  object edtNo: TDBEdit [4]
    Left = 96
    Top = 24
    Width = 49
    Height = 21
    DataField = 'REQUEST_NO'
    DataSource = dsProcessObjectParams
    TabOrder = 1
  end
  object edtLineNo: TDBEdit [5]
    Left = 152
    Top = 24
    Width = 49
    Height = 21
    DataField = 'REQUEST_LINE_NO'
    DataSource = dsProcessObjectParams
    TabOrder = 2
  end
  inherited cdsProcessObjectID: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_LINE_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleOrderID'
    ConnectionBroker = dmMain.conStore
    Left = 56
    Top = 32
    object cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
  end
  inherited pdsProcessObjectParams: TParamDataSet
    Left = 88
    Top = 32
    object pdsProcessObjectParamsREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object pdsProcessObjectParamsREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object pdsProcessObjectParamsREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
    object pdsProcessObjectParams_REQUEST_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_REQUEST_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'REQUEST_BRANCH_CODE'
      Lookup = True
    end
  end
  inherited dsProcessObjectParams: TDataSource
    Left = 120
    Top = 32
  end
  inherited cdsProcessObjectCustomID: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleOrderCustomID'
    ConnectionBroker = dmMain.conStore
    Left = 56
    Top = 64
    object cdsProcessObjectCustomIDREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object cdsProcessObjectCustomIDREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object cdsProcessObjectCustomIDREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvBranches'
    ConnectionBroker = dmMain.conCompany
    Left = 88
    Top = 64
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
  end
end
