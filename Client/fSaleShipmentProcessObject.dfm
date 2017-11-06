inherited frSaleShipmentProcessObject: TfrSaleShipmentProcessObject
  Width = 773
  Height = 99
  object lblBranch: TLabel [0]
    Left = 56
    Top = 8
    Width = 48
    Height = 13
    Caption = #1058#1055' '#1043#1083'.'
  end
  object lblPPNo: TLabel [1]
    Left = 120
    Top = 8
    Width = 38
    Height = 13
    Caption = #1054#1055#1055' No'
    FocusControl = edtPPNo
  end
  object lblShipmentNo: TLabel [2]
    Left = 256
    Top = 8
    Width = 49
    Height = 13
    Caption = #1056#1072#1079#1082#1083'. '#8470
    FocusControl = edtShipmentNo
  end
  object lblSaleDealTypeAbbrev: TLabel [3]
    Left = 8
    Top = 8
    Width = 18
    Height = 13
    Caption = #1058#1080#1087
  end
  object lblSaleTypeAbbrev: TLabel [4]
    Left = 216
    Top = 8
    Width = 19
    Height = 13
    Caption = #1042#1080#1076
  end
  object lblClientName: TLabel [5]
    Left = 328
    Top = 8
    Width = 37
    Height = 13
    Caption = #1050#1083#1080#1077#1085#1090
    FocusControl = edtShipmentNo
  end
  object cbBranch: TJvDBLookupCombo [6]
    Left = 56
    Top = 24
    Width = 57
    Height = 21
    DataField = 'SALE_BRANCH_CODE'
    DataSource = dsProcessObjectParams
    DisplayEmpty = ' '
    LookupField = 'BRANCH_CODE'
    LookupDisplay = 'BRANCH_IDENTIFIER'
    LookupSource = dsBranches
    TabOrder = 1
  end
  object edtPPNo: TDBEdit [7]
    Left = 120
    Top = 24
    Width = 89
    Height = 21
    DataField = 'SALE_NO'
    DataSource = dsProcessObjectParams
    TabOrder = 2
  end
  object edtShipmentNo: TDBEdit [8]
    Left = 256
    Top = 24
    Width = 65
    Height = 21
    DataField = 'SALE_SHIPMENT_NO'
    DataSource = dsProcessObjectParams
    TabOrder = 3
  end
  object btnShowProcessObjectForm: TButton [9]
    Left = 664
    Top = 22
    Width = 97
    Height = 25
    Action = actShowProcessObjectForm
    TabOrder = 6
  end
  object edtSaleDealTypeAbbrev: TDBEdit [10]
    Left = 8
    Top = 24
    Width = 41
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'SALE_DEAL_TYPE_ABBREV'
    DataSource = dsProcessObjectParams
    ReadOnly = True
    TabOrder = 0
  end
  object edtSaleTypeAbbrev: TDBEdit [11]
    Left = 216
    Top = 24
    Width = 33
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'SALE_TYPE_ABBREV'
    DataSource = dsProcessObjectParams
    ReadOnly = True
    TabOrder = 4
  end
  object edtClientName: TDBEdit [12]
    Left = 328
    Top = 24
    Width = 137
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'CLIENT_COMPANY_NAME'
    DataSource = dsProcessObjectParams
    ReadOnly = True
    TabOrder = 5
  end
  inherited alActions: TActionList
    Left = 16
    Top = 64
  end
  inherited dsData: TDataSource
    Left = 80
    Top = 64
  end
  inherited cdsProcessObjectID: TAbmesClientDataSet
    ConnectionBroker = dmMain.conStore
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_SHIPMENT_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleShipmentID'
    Left = 144
    Top = 64
    object cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
      FieldValueType = fvtInteger
    end
    object cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
      FieldValueType = fvtInteger
    end
  end
  inherited pdsProcessObjectParams: TParamDataSet
    Left = 176
    Top = 64
    object pdsProcessObjectParamsCLIENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMPANY_NAME'
    end
    object pdsProcessObjectParamsSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object pdsProcessObjectParamsSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object pdsProcessObjectParamsSALE_SHIPMENT_NO: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_NO'
    end
    object pdsProcessObjectParamsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object pdsProcessObjectParamsSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object pdsProcessObjectParamsSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object pdsProcessObjectParamsSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 5
    end
    object pdsProcessObjectParamsSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object pdsProcessObjectParamsREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object pdsProcessObjectParamsREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object pdsProcessObjectParamsREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
  end
  inherited dsProcessObjectParams: TDataSource
    Left = 208
    Top = 64
  end
  inherited cdsProcessObjectCustomID: TAbmesClientDataSet
    ConnectionBroker = dmMain.conStore
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
    ProviderName = 'prvSaleShipmentCustomID'
    Left = 120
    object cdsProcessObjectCustomIDSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
      FieldValueType = fvtInteger
    end
    object cdsProcessObjectCustomIDSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
      FieldValueType = fvtInteger
    end
    object cdsProcessObjectCustomIDSALE_SHIPMENT_NO: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_NO'
      FieldValueType = fvtInteger
    end
    object cdsProcessObjectCustomIDSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsProcessObjectCustomIDSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object cdsProcessObjectCustomIDSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsProcessObjectCustomIDSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 5
    end
    object cdsProcessObjectCustomIDCLIENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMPANY_NAME'
    end
    object cdsProcessObjectCustomIDSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
      Required = True
    end
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
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 160
    Top = 32
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
      FieldValueType = fvtInteger
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 192
    Top = 32
  end
end
