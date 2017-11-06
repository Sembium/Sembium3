inherited frDeliveryProcessObject: TfrDeliveryProcessObject
  Width = 770
  Height = 99
  ExplicitWidth = 770
  ExplicitHeight = 99
  object lblBranch: TLabel [0]
    Left = 56
    Top = 8
    Width = 48
    Height = 13
    Caption = #1058#1055' '#1043#1083'.'
  end
  object lblRPDNo: TLabel [1]
    Left = 120
    Top = 8
    Width = 39
    Height = 13
    Caption = #1055#1044#1044' No'
    FocusControl = edtRPDNo
  end
  object lblDeliveryProjectCode: TLabel [2]
    Left = 168
    Top = 8
    Width = 39
    Height = 13
    Caption = #1054#1055#1044' No'
    FocusControl = edtDeliveryProjectCode
  end
  object lblInvoiceNo: TLabel [3]
    Left = 408
    Top = 8
    Width = 60
    Height = 13
    Caption = #1060#1072#1082#1090#1091#1088#1072' No'
  end
  object lblInvoiceDate: TLabel [4]
    Left = 536
    Top = 8
    Width = 88
    Height = 13
    Caption = #1044#1072#1090#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072
  end
  object lblSaleDealTypeAbbrev: TLabel [5]
    Left = 8
    Top = 8
    Width = 18
    Height = 13
    Caption = #1058#1080#1087
  end
  object lblIsProformInvoiceStatusOnDeliveryPanel: TLabel [6]
    Left = 496
    Top = 8
    Width = 34
    Height = 13
    Caption = #1042#1080#1076' '#1060'.'
  end
  object lblVendorName: TLabel [7]
    Left = 264
    Top = 8
    Width = 55
    Height = 13
    Caption = #1044#1086#1089#1090#1072#1074#1095#1080#1082
  end
  object lblDeliveryCode: TLabel [8]
    Left = 224
    Top = 8
    Width = 19
    Height = 13
    Caption = #1042#1080#1076
  end
  object cbBranch: TJvDBLookupCombo [9]
    Left = 56
    Top = 24
    Width = 57
    Height = 21
    DataField = '_BRANCH_IDENTIFIER'
    DataSource = dsProcessObjectParams
    DisplayEmpty = ' '
    TabOrder = 0
    OnChange = cbBranchChange
  end
  object edtRPDNo: TDBEdit [10]
    Left = 120
    Top = 24
    Width = 41
    Height = 21
    DataField = 'DCD_CODE'
    DataSource = dsProcessObjectParams
    TabOrder = 1
    OnChange = edtRPDNoChange
  end
  object edtDeliveryProjectCode: TDBEdit [11]
    Left = 168
    Top = 24
    Width = 49
    Height = 21
    DataField = 'DELIVERY_PROJECT_CODE'
    DataSource = dsProcessObjectParams
    TabOrder = 2
  end
  object edtInvoiceNo: TDBEdit [12]
    Left = 408
    Top = 24
    Width = 73
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'INVOICE_NO'
    DataSource = dsProcessObjectParams
    ReadOnly = True
    TabOrder = 5
  end
  object edtInvoiceAbbrev: TDBEdit [13]
    Left = 480
    Top = 24
    Width = 17
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'INVOICE_ABBREV'
    DataSource = dsProcessObjectParams
    ReadOnly = True
    TabOrder = 6
  end
  inline frInvoiceDate: TfrDateFieldEditFrame [14]
    Left = 536
    Top = 24
    Width = 105
    Height = 21
    Constraints.MaxHeight = 21
    Constraints.MaxWidth = 105
    Constraints.MinHeight = 21
    Constraints.MinWidth = 105
    TabOrder = 8
    TabStop = True
    ExplicitLeft = 536
    ExplicitTop = 24
    inherited alActions: TActionList
      Left = 48
    end
    inherited dsData: TDataSource
      DataSet = pdsProcessObjectParams
      Left = 64
    end
    inherited cdsDate: TAbmesClientDataSet
      Left = 96
    end
    inherited dsDate: TDataSource
      Left = 104
    end
  end
  object edtSaleDealTypeAbbrev: TDBEdit [15]
    Left = 8
    Top = 24
    Width = 41
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'DELIVERY_DEAL_TYPE_ABBREV'
    DataSource = dsProcessObjectParams
    TabOrder = 9
  end
  object btnShowProcessObjectForm: TButton [16]
    Left = 664
    Top = 22
    Width = 97
    Height = 25
    Action = actShowProcessObjectForm
    TabOrder = 10
  end
  object edtVendorName: TDBEdit [17]
    Left = 264
    Top = 24
    Width = 137
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'VENDOR_COMPANY_NAME'
    DataSource = dsProcessObjectParams
    ReadOnly = True
    TabOrder = 4
  end
  object edtIsProformInvoice: TDBEdit [18]
    Left = 496
    Top = 24
    Width = 33
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'IS_PROFORM_INVOICE'
    DataSource = dsProcessObjectParams
    ReadOnly = True
    TabOrder = 7
  end
  object edtDeliveryCode: TDBEdit [19]
    Left = 224
    Top = 24
    Width = 33
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'DELIVERY_TYPE_ABBREV'
    DataSource = dsProcessObjectParams
    ReadOnly = True
    TabOrder = 3
  end
  inherited alActions: TActionList [20]
    Left = 24
    Top = 48
  end
  inherited dsData: TDataSource [21]
    Left = 88
    Top = 48
  end
  inherited cdsProcessObjectID: TAbmesClientDataSet [22]
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeliveryID'
    ConnectionBroker = dmMain.conStore
    Left = 24
    Top = 80
    object cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
      FieldValueType = fvtInteger
    end
    object cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
      FieldValueType = fvtInteger
    end
  end
  inherited pdsProcessObjectParams: TParamDataSet [23]
    Left = 56
    Top = 80
    object pdsProcessObjectParamsDELIVERY_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_TYPE_ABBREV'
      Size = 5
    end
    object pdsProcessObjectParamsVENDOR_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_COMPANY_NAME'
    end
    object pdsProcessObjectParamsDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'DELIVERY_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object pdsProcessObjectParams_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'DCD_BRANCH_CODE'
      Size = 255
      Lookup = True
    end
    object pdsProcessObjectParamsDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
      FieldValueType = fvtInteger
    end
    object pdsProcessObjectParamsDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
    end
    object pdsProcessObjectParamsDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
    end
    object pdsProcessObjectParamsDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object pdsProcessObjectParamsDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object pdsProcessObjectParamsINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object pdsProcessObjectParamsIS_PROFORM_INVOICE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_PROFORM_INVOICE'
      DisplayBoolValues = #1055';'#1060
      FieldValueType = fvtBoolean
    end
    object pdsProcessObjectParamsINVOICE_ABBREV: TAbmesWideStringField
      FieldName = 'INVOICE_ABBREV'
      Size = 5
    end
    object pdsProcessObjectParamsINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
  end
  inherited dsProcessObjectParams: TDataSource [24]
    Left = 88
    Top = 80
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
    ProviderName = 'prvDeliveryCustomID'
    ConnectionBroker = dmMain.conStore
    Top = 48
    object cdsProcessObjectCustomIDDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object cdsProcessObjectCustomIDDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
    end
    object cdsProcessObjectCustomIDDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
    end
    object cdsProcessObjectCustomIDDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsProcessObjectCustomIDDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object cdsProcessObjectCustomIDDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object cdsProcessObjectCustomIDVENDOR_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_COMPANY_NAME'
    end
    object cdsProcessObjectCustomIDINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
    object cdsProcessObjectCustomIDINVOICE_ABBREV: TAbmesWideStringField
      FieldName = 'INVOICE_ABBREV'
      Size = 5
    end
    object cdsProcessObjectCustomIDIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
    end
    object cdsProcessObjectCustomIDINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object cdsProcessObjectCustomIDDELIVERY_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'DELIVERY_TYPE_ABBREV'
      Size = 5
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvBranches'
    ConnectionBroker = dmMain.conCompany
    Left = 128
    Top = 80
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
      FieldValueType = fvtInteger
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
  end
end
