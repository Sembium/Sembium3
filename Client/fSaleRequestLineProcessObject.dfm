inherited frSaleRequestLineProcessObject: TfrSaleRequestLineProcessObject
  Width = 770
  Height = 186
  object lblRequestNo: TLabel [0]
    Left = 120
    Top = 8
    Width = 38
    Height = 13
    Caption = #1055#1044#1050' No'
  end
  object lblRequestBrachIdentifier: TLabel [1]
    Left = 56
    Top = 8
    Width = 48
    Height = 13
    Caption = #1058#1055' '#1043#1083'.'
  end
  object lblRequestLineNo: TLabel [2]
    Left = 184
    Top = 8
    Width = 39
    Height = 13
    Caption = #1054#1044#1050' No'
  end
  object lblSaleDealType: TLabel [3]
    Left = 8
    Top = 8
    Width = 18
    Height = 13
    Caption = #1058#1080#1087
  end
  object cbRequestBrachIdentifier: TJvDBLookupCombo [4]
    Left = 56
    Top = 24
    Width = 57
    Height = 21
    DeleteKeyClear = False
    DataField = 'REQUEST_BRANCH_CODE'
    DataSource = dsProcessObjectParams
    LookupField = 'BRANCH_CODE'
    LookupDisplay = 'BRANCH_IDENTIFIER'
    LookupSource = dsBranches
    TabOrder = 1
  end
  object edtRequestNo: TDBEdit [5]
    Left = 120
    Top = 24
    Width = 57
    Height = 21
    DataField = 'REQUEST_NO'
    DataSource = dsProcessObjectParams
    TabOrder = 2
  end
  object edtRequestLineNo: TDBEdit [6]
    Left = 184
    Top = 24
    Width = 49
    Height = 21
    DataField = 'REQUEST_LINE_NO'
    DataSource = dsProcessObjectParams
    TabOrder = 3
  end
  object edtSaleDealType: TDBEdit [7]
    Left = 8
    Top = 24
    Width = 41
    Height = 21
    Color = clBtnFace
    DataField = '_SALE_DEAL_TYPE_ABBREV'
    DataSource = dsProcessObjectParams
    ReadOnly = True
    TabOrder = 0
  end
  object btnShowProcessObjectForm: TBitBtn [8]
    Left = 662
    Top = 16
    Width = 99
    Height = 25
    Action = actShowProcessObjectForm
    Caption = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'...'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
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
    ProviderName = 'prvGroupSaleID'
    ConnectionBroker = dmMain.conStore
    Left = 248
    Top = 16
    object cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
      Required = True
    end
    object cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
      Required = True
    end
  end
  inherited pdsProcessObjectParams: TParamDataSet
    Left = 280
    Top = 16
    object pdsProcessObjectParamsREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object pdsProcessObjectParamsREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object pdsProcessObjectParamsREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
    object pdsProcessObjectParamsSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object pdsProcessObjectParams_SALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_DEAL_TYPE_ABBREV'
      LookupDataSet = cdsSaleDealTypes
      LookupKeyFields = 'SALE_DEAL_TYPE_CODE'
      LookupResultField = 'SALE_DEAL_TYPE_ABBREV'
      KeyFields = 'SALE_DEAL_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object pdsProcessObjectParamsSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object pdsProcessObjectParamsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object pdsProcessObjectParamsSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
  end
  inherited dsProcessObjectParams: TDataSource
    Left = 312
    Top = 16
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
    ProviderName = 'prvSaleRequestLineCustomID'
    ConnectionBroker = dmMain.conStore
    Left = 248
    Top = 48
    object cdsProcessObjectCustomIDREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object cdsProcessObjectCustomIDREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object cdsProcessObjectCustomIDREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
    object cdsProcessObjectCustomIDSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsProcessObjectCustomIDSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
      Required = True
    end
    object cdsProcessObjectCustomIDSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      Required = True
    end
    object cdsProcessObjectCustomIDSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      Required = True
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvBranches'
    ConnectionBroker = dmMain.conCompany
    Left = 360
    Top = 16
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 392
    Top = 16
  end
  object cdsSaleDealTypes: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSaleDealTypes'
    ConnectionBroker = dmMain.conSalesCommon
    Left = 432
    Top = 16
    object cdsSaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsSaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_NAME'
      Size = 100
    end
    object cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_ABBREV'
      Size = 100
    end
  end
  object dsSaleDealTypes: TDataSource
    DataSet = cdsSaleDealTypes
    Left = 464
    Top = 16
  end
end
