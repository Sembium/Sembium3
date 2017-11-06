inherited dmSales: TdmSales
  Height = 656
  Width = 885
  object qryQuickSale: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      '  s.SALE_GROUP_OBJECT_BRANCH_CODE,'
      '  s.SALE_GROUP_OBJECT_CODE,'
      '  s.SALE_ORDER_TYPE_CODE,'
      '  s.CLIENT_COMPANY_CODE,'
      
        '  %GET_PARTNER_NAME[s.CLIENT_COMPANY_CODE] as CLIENT_COMPANY_NAM' +
        'E,'
      '  s.REQUEST_REGISTER_DATE,'
      '  s.PRODUCT_CODE,'
      '  s.QUANTITY,'
      '  s.CURRENCY_CODE,'
      '  s.SINGLE_PRICE,'
      '  s.RECEIVE_DATE,'
      '  s.NOTES,'
      '  s.SALE_BRANCH_CODE,'
      '  s.SALE_NO,'
      '  s.SALE_TYPE_CODE,'
      '  s.SHIPMENT_DATE,'
      '  s.SHIPMENT_STORE_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = s.SHIPMENT_STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as SHIPMENT_STORE_IDENTIFIER,'
      '  '
      '  s.ANNUL_EMPLOYEE_CODE,'
      '  s.ANNUL_DATE,'
      '  s.ANNUL_TIME,'
      '  s.FINISH_EMPLOYEE_CODE,'
      '  s.FINISH_DATE,'
      '  s.FINISH_TIME,'
      '  s.CREATE_EMPLOYEE_CODE,'
      '  s.CREATE_DATE,'
      '  s.CREATE_TIME,'
      '  s.CHANGE_EMPLOYEE_CODE,'
      '  s.CHANGE_DATE,'
      '  s.CHANGE_TIME,'
      '  (s.QUANTITY * s.SINGLE_PRICE) as TOTAL_PRICE,'
      '  (s.QUANTITY * s.SINGLE_PRICE * scr.FIXING) as TOTAL_PRICE_DEM,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.MEASURE_CODE as PRODUCT_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_CODE as PRODUCT_ACCOUNT_MEASURE_CODE,'
      ''
      ''
      
        '  (%PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_SECONDARY_CURRENCY[p.PR' +
        'ODUCT_CODE ~ s.RECEIVE_DATE] / p.ACCOUNT_MEASURE_COEF) as PRODUC' +
        'T_MARKET_SEC_PRICE,'
      ''
      '  p.ACCOUNT_MEASURE_COEF as PRODUCT_ACCOUNT_MEASURE_COEF,'
      '  ssh.INVOICE_NO,'
      '  ssh.INVOICE_DATE,'
      '  c.CURRENCY_ABBREV,'
      '  0 as CORRECTION,'
      '  s.QUANTITY * p.ACCOUNT_MEASURE_COEF as ACCOUNT_QUANTITY,'
      
        '  s.SINGLE_PRICE / p.ACCOUNT_MEASURE_COEF as ACCOUNT_SINGLE_PRIC' +
        'E,'
      '  s.MANUFACTURE_DECISION_EXPECTED,'
      '  s.TRANSIENT_STATUS_CODE,'
      '  s.IS_VENDOR_TRANSPORT,'
      '  s.IS_ML_ENTRUSTED,'
      '  s.IS_ML_NOT_NEEDED,'
      '  s.SOS_OKIDU,'
      '  s.SALE_DEAL_TYPE_CODE'
      ''
      'from'
      '  SALES s,'
      '  PRODUCTS p,'
      '  CURRENCIES c,'
      '  SECONDARY_CURRENCY_RATES scr,'
      '  SALE_SHIPMENTS ssh'
      'where'
      '  (s.PRODUCT_CODE = p.PRODUCT_CODE(+)) and'
      '  (s.CURRENCY_CODE = c.CURRENCY_CODE(+)) and'
      '  (s.CURRENCY_CODE = scr.CURRENCY_CODE(+)) and'
      
        '  (Coalesce(s.SHIPMENT_DATE, ContextDate) = scr.RATE_DATE(+)) an' +
        'd'
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJECT_BRANCH_CODE(+)) a' +
        'nd'
      '  (s.SALE_OBJECT_CODE = ssh.SALE_OBJECT_CODE(+)) and'
      '  (:SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) and'
      '  (:SALE_OBJECT_CODE = s.SALE_OBJECT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'GET_PARTNER_NAME[s.CLIENT_COMPANY_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_SECONDARY_CURRENCY[p.PRODUC' +
          'T_CODE ~ s.RECEIVE_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SALES_FOR_EDIT'
    Left = 312
    Top = 20
    object qryQuickSaleSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryQuickSaleSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryQuickSaleSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_BRANCH_CODE'
    end
    object qryQuickSaleSALE_GROUP_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_CODE'
    end
    object qryQuickSaleSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object qryQuickSaleCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object qryQuickSaleREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_REGISTER_DATE'
    end
    object qryQuickSalePRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryQuickSaleQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryQuickSaleCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryQuickSaleSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object qryQuickSaleRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object qryQuickSaleNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryQuickSaleSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object qryQuickSaleSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object qryQuickSaleSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
    end
    object qryQuickSaleSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
    end
    object qryQuickSaleSHIPMENT_STORE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_STORE_CODE'
    end
    object qryQuickSaleANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryQuickSaleANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryQuickSaleANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryQuickSaleFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
    end
    object qryQuickSaleFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object qryQuickSaleFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
    end
    object qryQuickSaleCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryQuickSaleCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryQuickSaleCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryQuickSaleCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryQuickSaleCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryQuickSaleCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryQuickSaleTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      ProviderFlags = []
    end
    object qryQuickSaleTOTAL_PRICE_DEM: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_DEM'
      ProviderFlags = []
    end
    object qryQuickSalePRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryQuickSalePRODUCT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryQuickSalePRODUCT_MARKET_SEC_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_MARKET_SEC_PRICE'
      ProviderFlags = []
    end
    object qryQuickSalePRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryQuickSaleINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
      ProviderFlags = []
    end
    object qryQuickSaleINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
      ProviderFlags = []
    end
    object qryQuickSaleCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryQuickSaleCORRECTION: TAbmesFloatField
      FieldName = 'CORRECTION'
      ProviderFlags = []
    end
    object qryQuickSalePRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryQuickSaleACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      ProviderFlags = []
    end
    object qryQuickSaleACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryQuickSalePRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryQuickSaleMANUFACTURE_DECISION_EXPECTED: TAbmesFloatField
      FieldName = 'MANUFACTURE_DECISION_EXPECTED'
    end
    object qryQuickSaleTRANSIENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'TRANSIENT_STATUS_CODE'
    end
    object qryQuickSaleIS_VENDOR_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_VENDOR_TRANSPORT'
    end
    object qryQuickSaleIS_ML_ENTRUSTED: TAbmesFloatField
      FieldName = 'IS_ML_ENTRUSTED'
    end
    object qryQuickSaleIS_ML_NOT_NEEDED: TAbmesFloatField
      FieldName = 'IS_ML_NOT_NEEDED'
    end
    object qryQuickSaleSOS_OKIDU: TAbmesFloatField
      FieldName = 'SOS_OKIDU'
    end
    object qryQuickSaleCLIENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMPANY_NAME'
      ProviderFlags = []
      Size = 153
    end
    object qryQuickSaleSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIPMENT_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryQuickSaleSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
  end
  object prvQuickSale: TDataSetProvider
    DataSet = qryQuickSale
    Options = [poIncFieldProps, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = prvQuickSaleUpdateError
    AfterUpdateRecord = prvQuickSaleAfterUpdateRecord
    BeforeUpdateRecord = prvQuickSaleBeforeUpdateRecord
    Left = 312
    Top = 8
  end
  object qryGetMaxSaleNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '    Max(SALE_NO) as MAX_SALE_NO'
      'from'
      '  SALES'
      'where'
      '  (SALE_BRANCH_CODE = :SALE_BRANCH_CODE) ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 568
    Top = 320
    object qryGetMaxSaleNoMAX_SALE_NO: TAbmesFloatField
      FieldName = 'MAX_SALE_NO'
    end
  end
  object qryInsertQuickSaleShipment: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_SHIPMENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'INVOICE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_SINGLE_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into SALE_SHIPMENTS_FOR_EDIT'
      '(SHIPMENT_OBJECT_BRANCH_CODE,'
      ' SHIPMENT_OBJECT_CODE,'
      ' SALE_OBJECT_BRANCH_CODE,'
      ' SALE_OBJECT_CODE,'
      ' SALE_SHIPMENT_NO,'
      ' PLAN_QUANTITY,'
      ' QUANTITY,'
      ' SHIPMENT_PLAN_DATE,'
      ' SHIPMENT_DATE,'
      ' INVOICE_NO,'
      ' INVOICE_DATE,'
      ' INVOICE_CURRENCY_CODE,'
      ' INVOICE_SINGLE_PRICE,'
      ' RECEIVE_DATE'
      ')'
      'values'
      '(:SHIPMENT_OBJECT_BRANCH_CODE,'
      ' :SHIPMENT_OBJECT_CODE,'
      ' :SALE_OBJECT_BRANCH_CODE,'
      ' :SALE_OBJECT_CODE,'
      ' :SALE_SHIPMENT_NO,'
      ' :QUANTITY,'
      ' :QUANTITY,'
      ' :SHIPMENT_DATE, '
      ' :SHIPMENT_DATE,'
      ' :INVOICE_NO,'
      ' :INVOICE_DATE,'
      ' :INVOICE_CURRENCY_CODE,'
      ' :INVOICE_SINGLE_PRICE,'
      ' :SHIPMENT_DATE'
      ')'
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 322
    Top = 177
  end
  object qryUpdateQuickSaleShipment: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'INVOICE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_SINGLE_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_SHIPMENT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  SALE_SHIPMENTS_FOR_EDIT'
      'set'
      ' PLAN_QUANTITY = :QUANTITY,'
      ' QUANTITY = :QUANTITY,'
      ' SHIPMENT_PLAN_DATE = :SHIPMENT_DATE,'
      ' SHIPMENT_DATE = :SHIPMENT_DATE,'
      ' INVOICE_NO = :INVOICE_NO,'
      ' INVOICE_DATE = :INVOICE_DATE,'
      ' INVOICE_CURRENCY_CODE = :INVOICE_CURRENCY_CODE,'
      ' INVOICE_SINGLE_PRICE = :INVOICE_SINGLE_PRICE,'
      ' RECEIVE_DATE = :SHIPMENT_DATE'
      ' '
      'where'
      ' (SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      ' (SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      ' (SALE_SHIPMENT_NO = :SALE_SHIPMENT_NO)'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 322
    Top = 190
  end
  object qryExistQuickSaleShipment: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_SHIPMENT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  SALE_SHIPMENT_NO'
      'from'
      '  SALE_SHIPMENTS'
      '  '
      'where'
      ' (SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      ' (SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      ' (SALE_SHIPMENT_NO = :SALE_SHIPMENT_NO)'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 322
    Top = 203
  end
  object qryMaxSaleShipmentNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(SALE_SHIPMENT_NO) as MAX_SALE_SHIPMENT_NO'
      'from'
      '  SALE_SHIPMENTS'
      'where'
      '  (SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '  (SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 568
    Top = 334
    object qryMaxSaleShipmentNoMAX_SALE_SHIPMENT_NO: TAbmesFloatField
      FieldName = 'MAX_SALE_SHIPMENT_NO'
    end
  end
  object qryInsertQuickSalePSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHANGE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHANGE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHANGE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into PLANNED_STORE_DEALS_FOR_EDIT'
      '( PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  PLANNED_STORE_DEAL_CODE,'
      '  PLANNED_STORE_DEAL_TYPE_CODE,'
      '  PRIORITY_CODE,'
      '  IS_PLANNED_MANUALLY,'
      '  BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  BND_PROCESS_OBJECT_CODE,'
      '  BND_PROCESS_CODE,'
      '  STORE_CODE,'
      '  STORE_DEAL_BEGIN_DATE,'
      '  STORE_DEAL_END_DATE,'
      '  STORE_DEAL_TYPE_CODE,'
      '  PRODUCT_CODE,'
      '  QUANTITY,'
      '  ACCOUNT_QUANTITY,'
      '  CREATE_EMPLOYEE_CODE, CREATE_DATE, CREATE_TIME,'
      '  CHANGE_EMPLOYEE_CODE, CHANGE_DATE, CHANGE_TIME'
      ')'
      'select'
      '  :PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  :PLANNED_STORE_DEAL_CODE,'
      '  :PLANNED_STORE_DEAL_TYPE_CODE,'
      '  cc.PRIORITY_CODE,'
      '  0,'
      '  ssh.SHIPMENT_OBJECT_BRANCH_CODE,'
      '  ssh.SHIPMENT_OBJECT_CODE,'
      '  :BND_PROCESS_CODE,'
      '  :SHIPMENT_STORE_CODE,'
      '  :SHIPMENT_DATE,'
      '  :SHIPMENT_DATE,'
      '  :STORE_DEAL_TYPE_CODE,'
      '  :PRODUCT_CODE,'
      '  :QUANTITY,'
      '  :QUANTITY * p.ACCOUNT_MEASURE_COEF,'
      '  :CREATE_EMPLOYEE_CODE, :CREATE_DATE, :CREATE_TIME,'
      '  :CHANGE_EMPLOYEE_CODE, :CHANGE_DATE, :CHANGE_TIME'
      'from'
      '  CLIENT_COMPANIES cc,'
      '  SALE_SHIPMENTS ssh,'
      '  PRODUCTS p,'
      '  INTERNAL_VALUES iv'
      'where'
      '  (iv.CODE = 1) and'
      '  (cc.CLIENT_COMPANY_CODE = :CLIENT_COMPANY_CODE) and'
      '  (ssh.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '  (ssh.SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      '  (ssh.SALE_SHIPMENT_NO = 1) and'
      '  (p.PRODUCT_CODE = :PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 324
    Top = 260
  end
  object qryInsertQuickSaleGroup: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into SALE_GROUPS_FOR_EDIT'
      '('
      ' SALE_GROUP_OBJECT_BRANCH_CODE,'
      ' SALE_GROUP_OBJECT_CODE,'
      '  SALE_GROUP_BRANCH_CODE,'
      '  SALE_GROUP_CODE,'
      ' PRIORITY_CODE,'
      ' SALE_ORDER_TYPE_CODE,'
      ' CLIENT_COMPANY_CODE,'
      ' RECEIVE_DATE,'
      ' SALE_GROUP_NO'
      ')'
      'select'
      ' :SALE_GROUP_OBJECT_BRANCH_CODE,'
      ' :SALE_GROUP_OBJECT_CODE,'
      ' :SALE_BRANCH_CODE as SALE_GROUP_BRANCH_CODE,'
      ' :SALE_GROUP_CODE,'
      ' cc.PRIORITY_CODE,'
      ' :SALE_ORDER_TYPE_CODE,'
      ' :CLIENT_COMPANY_CODE,'
      ' :RECEIVE_DATE,'
      ' :SALE_GROUP_NO'
      'from'
      ' CLIENT_COMPANIES cc,'
      ' ('
      '    select'
      '      Max(SALE_GROUP_CODE) as MAX_SALE_GROUP_CODE'
      '    from'
      '      SALE_GROUPS'
      '    where'
      '      (SALE_GROUP_BRANCH_CODE = :SALE_BRANCH_CODE)'
      ' ) sg'
      'where'
      ' (cc.CLIENT_COMPANY_CODE = :CLIENT_COMPANY_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 321
    Top = 89
  end
  object qryExistQuickSaleGroup: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_ORDER_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  SALE_GROUP_OBJECT_BRANCH_CODE,'
      '  SALE_GROUP_OBJECT_CODE'
      'from'
      '  SALE_GROUPS'
      'where'
      ' (RECEIVE_DATE = :RECEIVE_DATE) and'
      ' (CLIENT_COMPANY_CODE = :CLIENT_COMPANY_CODE) and'
      ' (SALE_ORDER_TYPE_CODE = :SALE_ORDER_TYPE_CODE)'
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 321
    Top = 134
    object qryExistQuickSaleGroupSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_BRANCH_CODE'
    end
    object qryExistQuickSaleGroupSALE_GROUP_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_CODE'
    end
  end
  object qryCanAnnulQuickSale: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  (sd.STORE_DEAL_OBJECT_BRANCH_CODE) as CANNOT_ANNUL'
      'from'
      '  SALES qs,'
      '  SALE_SHIPMENTS ssh,'
      '  PLANNED_STORE_DEALS psd,'
      '  STORE_DEALS sd'
      'where'
      '  (qs.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJECT_BRANCH_CODE) and'
      '  (qs.SALE_OBJECT_CODE = ssh.SALE_OBJECT_CODE) and'
      
        '  (ssh.SHIPMENT_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRAN' +
        'CH_CODE) and'
      '  (ssh.SHIPMENT_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      
        '  (psd.PLANNED_STORE_DEAL_BRANCH_CODE = sd.PLANNED_STORE_DEAL_BR' +
        'ANCH_CODE) and'
      '  (psd.PLANNED_STORE_DEAL_CODE = sd.PLANNED_STORE_DEAL_CODE) and'
      '  (qs.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '  (qs.SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      '  (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '  (sd.STORNO_EMPLOYEE_CODE is null)'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 317
    Top = 78
    object qryCanAnnulQuickSaleCANNOT_ANNUL: TAbmesFloatField
      FieldName = 'CANNOT_ANNUL'
    end
  end
  object prvSale: TDataSetProvider
    DataSet = qrySale
    Options = [poCascadeDeletes, poCascadeUpdates, poPropogateChanges]
    OnUpdateError = prvSaleUpdateError
    AfterUpdateRecord = prvSaleAfterUpdateRecord
    BeforeUpdateRecord = prvSaleBeforeUpdateRecord
    BeforeApplyUpdates = prvSaleBeforeApplyUpdates
    AfterApplyUpdates = prvSaleAfterApplyUpdates
    Left = 456
    Top = 7
  end
  object qrySale: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      '  s.SALE_BRANCH_CODE,'
      ''
      '  ( select'
      '      d.CUSTOM_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '     (d.DEPT_CODE = s.SALE_BRANCH_CODE) '
      '  ) as SALE_BRANCH_NO,'
      '  '
      '  s.SALE_TYPE_CODE,'
      '  '
      '  ( select'
      '      st.SALE_TYPE_ABBREV'
      '    from'
      '      SALE_TYPES st'
      '    where'
      '      (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '  ) as SALE_TYPE_ABBREV,'
      '    '
      '  s.SALE_NO,'
      '  s.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_COEF,'
      '  p.PRODUCT_CLASS_CODE,'
      ''
      '  s.QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '     (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  s.OKIDU_EMPLOYEE_CODE,'
      '  Nvl2(s.OKIDU_EMPLOYEE_CODE,'
      '    %GET_PARTNER_NAME['
      '      ( select'
      '          e.COMPANY_CODE'
      '        from'
      '          EMPLOYEES e'
      '        where'
      '          (e.EMPLOYEE_CODE = s.OKIDU_EMPLOYEE_CODE)'
      '      )'
      '    ],'
      '    null'
      '  ) as OKIDU_EMPLOYEE_NAME,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      EMPLOYEES e,'
      '      COMPANIES c'
      '    where'
      '      (e.EMPLOYEE_CODE = s.OKIDU_EMPLOYEE_CODE) and'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as OKIDU_EMPLOYEE_NO,'
      ''
      '  s.CLIENT_COMPANY_CODE,'
      '  com.COMPANY_NO as CLIENT_COMPANY_NO,'
      '  com.SHORT_NAME as CLIENT_SHORT_NAME,'
      '  '
      '  ( select'
      '      cou.COUNTRY_ABBREV '
      '    from'
      '      COUNTRIES cou'
      '    where'
      '      (cou.COUNTRY_CODE = com.COUNTRY_CODE)'
      '  ) as CLIENT_COUNTRY_ABBREV,'
      '  '
      
        '  %PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[s.PRODUCT_CODE~s.' +
        'CLIENT_COMPANY_CODE~p] as CLIENT_PRODUCT_SIGNATURE,'
      ''
      '  s.PRODUCTION_DEPT_CODE,'
      '  d3.NAME as PRODUCTION_DEPT_NAME,'
      '  '
      '  ( select'
      
        '      (dt3.DEPT_TYPE_ABBREV || d3.CUSTOM_CODE || d3.SUFFIX_LETTE' +
        'R) '
      '    from'
      '      DEPT_TYPES dt3'
      '    where'
      '      (dt3.DEPT_TYPE_CODE = d3.DEPT_TYPE_CODE)'
      '  ) as PRODUCTION_DEPT_IDENTIFIER,'
      '  '
      '  s.CREATE_DATE,'
      '  '
      '  ( select'
      
        '      (d.CUSTOM_CODE || '#39'/'#39' || s.REQUEST_NO || '#39'/'#39' || s.REQUEST_' +
        'LINE_NO)'
      '    from'
      '      DEPTS d'
      '    where'
      '     (d.DEPT_CODE = s.REQUEST_BRANCH_CODE) '
      '  ) as REQUEST_SHOW_NO,  '
      '  '
      '  s.CHANGE_DATE as SALE_LAST_CHANGE_DATE,'
      '  s.SHIPMENT_STORE_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = s.SHIPMENT_STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as SHIPMENT_STORE_IDENTIFIER,'
      ''
      '  s.ENTER_SH_STORE_PLAN_BEGIN_DATE,'
      '  s.ENTER_SH_STORE_PLAN_END_DATE,'
      '  s.MANUFACTURE_QUANTITY,'
      '  s.MANUFACTURE_DECISION_EXPECTED,'
      '  sssi.TOTAL_QUANTITY as SHIPMENT_STORE_CURR_QUANTITY,'
      '  sssi.LAST_SHIPMENT_STORE_IN_DATE,'
      '  s.PRODUCTION_START_PLAN_DATE,'
      '  ssdi.FIRST_OUT_DATE,'
      ''
      '  MiscUtils.GetNamedValue('
      
        '    ModelUtils.ModelInvestedValue2(ml.ML_OBJECT_BRANCH_CODE, ml.' +
        'ML_OBJECT_CODE, 1, 0, 0,'
      '      ('
      '        select'
      '          iv.SECONDARY_CURRENCY_CODE'
      '        from'
      '          INTERNAL_VALUES iv'
      '        where'
      '          (iv.CODE = 1)'
      '      )'
      '    ),'
      '    '#39'VALUE'#39
      '  ) as PLANNED_INVESTED_SEC_PRICE,'
      ''
      '  MiscUtils.GetNamedValue('
      
        '    ModelUtils.ModelInvestedValue2(ml.ML_OBJECT_BRANCH_CODE, ml.' +
        'ML_OBJECT_CODE, 1, 0, 1,'
      '      ('
      '        select'
      '          iv.SECONDARY_CURRENCY_CODE'
      '        from'
      '          INTERNAL_VALUES iv'
      '        where'
      '          (iv.CODE = 1)'
      '      )'
      '    ),'
      '    '#39'VALUE'#39
      '  ) as ACCOUNT_INVESTED_SEC_PRICE,'
      ''
      '  s.CLIENT_REQUEST_NO,'
      ''
      '  ( select'
      '      co.OFFICE_NAME'
      '    from'
      '      COMPANY_OFFICES co'
      '    where'
      '      (co.COMPANY_CODE = s.CLIENT_COMPANY_CODE) and'
      '      (co.OFFICE_CODE = s.RECEIVE_PLACE_OFFICE_CODE)'
      '  ) as RECEIVE_PLACE_NAME,'
      ''
      '  s.IS_VENDOR_TRANSPORT,'
      '  s.RECEIVE_DATE,'
      '  s.SHIPMENT_DATE,'
      '  s.CURRENCY_CODE,'
      '  '
      '  ( select'
      '      curr.CURRENCY_ABBREV'
      '    from'
      '      CURRENCIES curr'
      '    where'
      '      (curr.CURRENCY_CODE = s.CURRENCY_CODE)'
      '  ) as CURRENCY_ABBREV,'
      '  '
      '  s.SINGLE_PRICE,'
      '  (s.SINGLE_PRICE * scr.FIXING) as SINGLE_PRICE_IN_SEC_CURRENCY,'
      
        '  (s.QUANTITY * s.SINGLE_PRICE * Decode(s.SALE_DEAL_TYPE_CODE, C' +
        'ommonConsts.sdtLease, s.LEASE_DATE_UNIT_QTY, 1)) as TOTAL_PRICE,'
      
        '  (s.QUANTITY * s.SINGLE_PRICE * Decode(s.SALE_DEAL_TYPE_CODE, C' +
        'ommonConsts.sdtLease, s.LEASE_DATE_UNIT_QTY, 1) * scr.FIXING) as' +
        ' TOTAL_PRICE_IN_SEC_CURRENCY,'
      '  0.0 as PAID_PART,'
      '  s.SOS_OKIDU,'
      '  s.FINISH_EMPLOYEE_CODE,'
      '  s.FINISH_DATE,'
      '  s.FINISH_TIME,'
      '  s.ANNUL_EMPLOYEE_CODE,'
      '  s.ANNUL_DATE,'
      '  s.ANNUL_TIME,'
      '  s.CHANGE_EMPLOYEE_CODE,'
      '  s.CHANGE_DATE,'
      '  s.CHANGE_TIME,'
      '  psd.PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  psd.PLANNED_STORE_DEAL_CODE,'
      '  sg.PRIORITY_CODE as PSD_PRIORITY_CODE,'
      '  ml.SPEC_VERSION_NO as MODEL_SPEC_VERSION_NO,'
      '  ml.SPEC_MODEL_VARIANT_NO as MODEL_SPEC_MODEL_VARIANT_NO,'
      '  ml.CREATE_DATE as MODEL_CREATE_DATE,'
      '  ml.ML_OBJECT_BRANCH_CODE,'
      '  ml.ML_OBJECT_CODE,'
      '  ml.IS_OPERATIONS_MODEL,'
      '  0.0 as MODEL_ACCOMPLISHMENT_COEF,'
      '  s.SALE_GROUP_OBJECT_BRANCH_CODE,'
      '  s.SALE_GROUP_OBJECT_CODE,'
      '  s.SALE_ORDER_TYPE_CODE,'
      '  s.REQUEST_BRANCH_CODE,'
      '  s.REQUEST_NO,'
      '  s.REQUEST_LINE_NO,'
      '  s.REQUEST_SEND_DATE,'
      '  s.REQUEST_REGISTER_DATE,'
      '  s.OFFER_SEND_PLAN_DATE,'
      '  s.OFFER_SEND_DATE,'
      '  s.OFFER_ANSWER_PLAN_DATE,'
      '  s.OFFER_ANSWER_DATE,'
      '  s.DECISION_PLAN_DATE,'
      '  s.DECISION_DATE,'
      '  s.DECISION_TYPE_CODE,'
      '  s.SINGLE_WEIGHT,'
      '  s.OUR_OFFER_SINGLE_PRICE,'
      '  s.CL_OFFER_SINGLE_PRICE,'
      '  s.CL_OFFER_RECEIVE_DATE,'
      '  s.OUR_OFFER_RECEIVE_DATE,'
      '  s.RECEIVE_PLACE_OFFICE_CODE,'
      '  s.SHIPMENT_TYPE_CODE,'
      '  s.CUSTOMHOUSE_CODE,'
      '  s.NOTES,'
      '  s.IS_ML_ENTRUSTED,'
      '  s.IS_ML_NOT_NEEDED,'
      '  s.CREATE_EMPLOYEE_CODE,'
      '  s.CREATE_TIME,'
      '  s.MANAGER_EMPLOYEE_CODE,'
      '  s.OUR_OFFER_QUANTITY,'
      '  s.CL_OFFER_QUANTITY,'
      '  s.DOC_BRANCH_CODE,'
      '  s.DOC_CODE,'
      ''
      '  Nvl2(s.MANAGER_EMPLOYEE_CODE,'
      '    %GET_PARTNER_NAME['
      '      ( select'
      '          e.COMPANY_CODE'
      '        from'
      '          EMPLOYEES e'
      '        where'
      '          (e.EMPLOYEE_CODE = s.MANAGER_EMPLOYEE_CODE)'
      '      )'
      '    ],'
      '    null'
      '  ) as MANAGER_OKIDU_NAME,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      EMPLOYEES e,'
      '      COMPANIES c'
      '    where'
      '      (e.EMPLOYEE_CODE = s.MANAGER_EMPLOYEE_CODE) and'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as MANAGER_OKIDU_NO,'
      ''
      '  ('
      '    select'
      '      Max(mlms.TOTAL_TREATMENT_WORKDAYS) as PRODUCTION_WORKDAYS'
      '    from'
      '      MATERIAL_LISTS ml,'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ANNUL_EMPLOYEE_CODE is null) '
      '  ) as PRODUCTION_WORKDAYS,'
      '  ('
      '    select'
      '      mlms.TREATMENT_WORKDAYS'
      '    from'
      '      MATERIAL_LISTS ml,'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ANNUL_EMPLOYEE_CODE is null) and'
      '      (mll.NO_1 = 0) and'
      '      (not exists'
      '        ('
      '          select'
      '            1'
      '          from'
      '            ML_MODEL_STAGES mlms2'
      '          where'
      
        '            (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRAN' +
        'CH_CODE) and'
      '            (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      '            (mlms2.ML_MODEL_STAGE_NO > mlms.ML_MODEL_STAGE_NO)'
      '        )'
      '      )'
      '  ) as ENTER_RESULT_STORE_WORKDAYS,'
      ''
      '  %ML_STATE[s~ml] as ML_STATE_CODE,'
      ''
      '  s.WORK_PRIORITY_CODE,'
      '  s.MODEL_DEVELOPMENT_TYPE_CODE,'
      ''
      '  s.PRODUCTION_ORDER_TYPE_CODE,'
      ''
      '  pr.PRIORITY_CODE,'
      '  pr.PRIORITY_NO,'
      '  pr.PRIORITY_COLOR,'
      '  pr.PRIORITY_BACKGROUND_COLOR,'
      ''
      '  ( select'
      
        '      Min(Sum(psd.COMPLETED_QUANTITY) / Sum(psd.QUANTITY)) as ST' +
        'ART_STAGE_COEF'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      PLANNED_STORE_DEALS psd'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANC' +
        'H_CODE) and'
      '      (mll.MLL_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      '      (psd.IS_PLANNED_MANUALLY = 0) and'
      '      (psd.IN_OUT = -1) and'
      '      (psd.BND_PROCESS_CODE <> 110) and'
      '      (psd.ANNUL_EMPLOYEE_CODE is null)'
      '    group by'
      '      mll.NO_AS_TEXT'
      '  ) as START_STAGE_COEF,'
      '  '
      '  ( select'
      '      Min(sd.STORE_DEAL_DATE)'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      STORE_DEALS sd'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '      (sd.IN_OUT = -1) and'
      '      (sd.BND_PROCESS_CODE <> 110) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as MIN_MLL_STORE_DEAL_DATE,'
      ''
      '  ( select'
      '       Nvl2('
      '         Min(sd.STORE_DEAL_DATE) - ml.LIMITING_DATE,'
      '         Decode(ml.LIMITING_DATE,'
      '           Min(sd.STORE_DEAL_DATE), 0,'
      
        '           CountWorkdays(ml.LIMITING_DATE, (Min(sd.STORE_DEAL_DA' +
        'TE)-1))'
      '         ),'
      '         null'
      '       )'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      STORE_DEALS sd'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '      (sd.IN_OUT = -1) and'
      '      (sd.BND_PROCESS_CODE <> 110) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as START_AFTER_LIMITING_DAYS,'
      ''
      '  ml.INITIAL_TREATMENT_WORKDAYS,'
      ''
      '  Nvl2('
      '    ( select'
      '         Min(sd.STORE_DEAL_DATE)'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        STORE_DEALS sd'
      '      where'
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '        (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '        (sd.IN_OUT = -1) and'
      '        (sd.BND_PROCESS_CODE <> 110) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null)'
      '    ),'
      '    %COUNT_WORKDAYS['
      '      ( select'
      '           Min(sd.STORE_DEAL_DATE)'
      '        from'
      '          MATERIAL_LIST_LINES mll,'
      '          STORE_DEALS sd'
      '        where'
      
        '          (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE)' +
        ' and'
      '          (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '          (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '          (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '          (sd.IN_OUT = -1) and'
      '          (sd.BND_PROCESS_CODE <> 110) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null)'
      '      )~'
      '      case'
      '        when'
      '          exists'
      '            ( select'
      '                1'
      '              from'
      '                PLANNED_STORE_DEALS psd'
      '              where'
      
        '                (psd.BND_PROCESS_OBJECT_BRANCH_CODE = ml.BND_PRO' +
        'CESS_OBJECT_BRANCH_CODE) and'
      
        '                (psd.BND_PROCESS_OBJECT_CODE = ml.BND_PROCESS_OB' +
        'JECT_CODE) and'
      '                (psd.PRODUCT_CODE = ml.RESULT_PRODUCT_CODE) and'
      '                (psd.IN_OUT = 1) and'
      '                (psd.IS_PLANNED_MANUALLY = 0) and'
      '                (psd.BND_PROCESS_CODE <> 110) and'
      '                (psd.IS_ACTIVE = 0)'
      '            )'
      '          then'
      '          ( select'
      '              Max(sd.STORE_DEAL_DATE)'
      '            from'
      '              STORE_DEALS sd'
      '            where'
      
        '              (sd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT' +
        '_BRANCH_CODE) and'
      
        '              (sd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) ' +
        'and'
      '              (sd.IN_OUT = 1) and'
      '              (sd.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '      else'
      '        ContextDate'
      '      end'
      '    ],'
      '    null'
      '  ) as REAL_PRODUCTION_WORKDAYS,'
      ''
      '  ( select'
      '      Max('
      '        %COUNT_WORKDAYS['
      '          ( select'
      '              Min(mm.MM_DATE) + 1'
      '            from'
      '              MODEL_MOVEMENTS mm'
      '            where'
      
        '              (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '              (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE)' +
        ' and'
      '              (mm.STORNO_EMPLOYEE_CODE is null) and'
      '              (mm.MM_DATE < mlms.TREATMENT_BEGIN_DATE)'
      '          )~'
      '          mlms.TREATMENT_BEGIN_DATE]'
      '      )'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '  ) as MAX_OP_DATE_POSITIVE_DIFF,'
      ''
      '  Nvl2(s.ANNUL_EMPLOYEE_CODE,'
      '    null,'
      '    ( select'
      '        -Max('
      '          %COUNT_WORKDAYS['
      '            (mlms.TREATMENT_END_DATE + 1)~'
      '            case'
      '              when (ml.CLOSE_EMPLOYEE_CODE is null) and'
      '                   ( MiscUtils.LargeZero('
      '                       mll.LINE_DETAIL_TECH_QUANTITY -'
      '                       ( select'
      
        '                           Coalesce(Sum(mm.DETAIL_TECH_QUANTITY)' +
        ', 0)'
      '                         from'
      '                           ML_MODEL_STAGES mlms2,'
      '                           MODEL_MOVEMENTS mm'
      '                         where'
      
        '                           (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.' +
        'MLL_OBJECT_BRANCH_CODE) and'
      
        '                           (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJ' +
        'ECT_CODE) and'
      
        '                           (mlms2.ML_MODEL_STAGE_NO <= mlms.ML_M' +
        'ODEL_STAGE_NO) and'
      
        '                           (mm.FROM_MLMS_OBJECT_BRANCH_CODE = ml' +
        'ms2.MLMS_OBJECT_BRANCH_CODE) and'
      
        '                           (mm.FROM_MLMS_OBJECT_CODE = mlms2.MLM' +
        'S_OBJECT_CODE) and'
      '                           (mm.TO_DEPT_CODE is not null) and'
      '                           (mm.STORNO_EMPLOYEE_CODE is null)'
      '                       ) -'
      '                       ( select'
      
        '                           Coalesce(Sum(mm.DETAIL_TECH_QUANTITY)' +
        ', 0)'
      '                         from'
      '                           MODEL_MOVEMENTS mm'
      '                         where'
      
        '                           (mm.FROM_MLMS_OBJECT_BRANCH_CODE = ml' +
        'ms.MLMS_OBJECT_BRANCH_CODE) and'
      
        '                           (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS' +
        '_OBJECT_CODE) and'
      '                           (mm.TO_DEPT_CODE is null) and'
      '                           (mm.STORNO_EMPLOYEE_CODE is null)'
      '                       )'
      '                     ) > 0'
      '                   ) then ContextDate'
      '            else'
      '              ( select'
      '                  Max(mm.MM_DATE)'
      '                from'
      '                  MODEL_MOVEMENTS mm'
      '                where'
      
        '                  (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_O' +
        'BJECT_BRANCH_CODE) and'
      
        '                  (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_C' +
        'ODE) and'
      '                  (mm.STORNO_EMPLOYEE_CODE is null) and'
      '                  (mm.MM_DATE > mlms.TREATMENT_END_DATE)'
      '              )'
      '            end'
      '          ]'
      '         )'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        ML_MODEL_STAGES mlms'
      '      where'
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '        (mlms.TREATMENT_END_DATE < ContextDate) and'
      '        (mlms.OUTGOING_WORKDAYS > 0)'
      '    )'
      '  ) as MIN_OP_DATE_NEGATIVE_DIFF,'
      ''
      '  %MODEL_OPERATIONS_STATUS[ml] as MODEL_OPERATIONS_STATUS_CODE,'
      ''
      '  s.WASTING_SALE_OBJ_BRANCH_CODE,'
      '  s.WASTING_SALE_OBJ_CODE,'
      ''
      
        '  Nvl2(s.WASTING_SALE_OBJ_BRANCH_CODE, 1, 0) as IS_WASTE_COMPENS' +
        'ATING_ORDER,'
      ''
      '  ws.SALE_BRANCH_CODE as WASTING_SALE_BRANCH_CODE,'
      '  ws.SALE_NO as WASTING_SALE_NO,'
      '  ws.SALE_ORDER_TYPE_CODE as WASTING_SALE_ORDER_TYPE_CODE,'
      ''
      '  wsml.ML_OBJECT_BRANCH_CODE as WASTING_ML_OJECT_BRANCH_CODE,'
      '  wsml.ML_OBJECT_CODE as WASTING_ML_OJECT_CODE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SALES wcs'
      '    where'
      
        '      (wcs.WASTING_SALE_OBJ_BRANCH_CODE = s.SALE_OBJECT_BRANCH_C' +
        'ODE) and'
      '      (wcs.WASTING_SALE_OBJ_CODE = s.SALE_OBJECT_CODE)'
      '  ) as WASTE_COMPENSATOR_COUNT,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms,'
      '      MODEL_MOVEMENTS mm'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '      (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '      (mm.TO_DEPT_CODE is not null) and'
      '      (mm.STORNO_EMPLOYEE_CODE is null)'
      '  ) as HAS_WASTE,'
      ''
      '  ( select'
      '      st.SHIPMENT_TYPE_ABBREV'
      '    from'
      '      SHIPMENT_TYPES st'
      '    where'
      '      (st.SHIPMENT_TYPE_CODE = s.SHIPMENT_TYPE_CODE)'
      '  ) as SHIPMENT_TYPE_ABBREV,'
      ''
      '  s.SALE_DEAL_TYPE_CODE,'
      '  ( select'
      '      bdt.BORDER_DEAL_TYPE_ABBREV'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = s.SALE_DEAL_TYPE_CODE)'
      '  ) as SALE_DEAL_TYPE_ABBREV,'
      ''
      '  s.RETURN_DATE,'
      '  s.IMPORT_DATE,'
      ''
      '  s.LEASE_DATE_UNIT_QTY,'
      '  ( select'
      '      tdu.THE_DATE_UNIT_NAME'
      '    from'
      '      THE_DATE_UNITS tdu'
      '    where'
      '      (tdu.THE_DATE_UNIT_CODE = s.LEASE_DATE_UNIT_CODE)'
      '  ) as LEASE_DATE_UNIT_NAME,'
      '  '
      
        '  (s.QUANTITY * s.LEASE_DATE_UNIT_QTY) as TOTAL_LEASE_DATE_UNIT_' +
        'QTY,'
      '  '
      '  ( select'
      '      s.QUANTITY - Coalesce(Sum(sd.QUANTITY), 0)'
      '    from'
      '      SALE_SHIPMENTS ss,'
      '      STORE_DEALS sd'
      '    where'
      
        '      (ss.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (ss.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (sd.IN_OUT = 1)'
      '  ) as IMPORT_QUANTITY_DIFF,'
      ''
      '  (s.QUANTITY * p.ACCOUNT_MEASURE_COEF) as ACCOUNT_QUANTITY,'
      ''
      '  dc.DCD_OBJECT_BRANCH_CODE,'
      '  dc.DCD_OBJECT_CODE,'
      '  dc.DELIVERY_PROJECT_CODE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      DELIVERY_PROJECTS dp'
      '    where'
      
        '      (dp.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dp.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (dp.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as BND_DELIVERY_COUNT,'
      ''
      '  prp.DOC_BRANCH_CODE as PRP_DOC_BRANCH_CODE,'
      '  prp.DOC_CODE as PRP_DOC_CODE,'
      '  %HAS_DOC_ITEMS[prp] as PRP_HAS_DOC_ITEMS,'
      '  Nvl2(prp.PARTNER_CODE, 1, 0) as HAS_PAR_REL_PRODUCT,'
      ''
      '  ( select'
      '      ddt.DEPT_TYPE_ABBREV || dd.CUSTOM_CODE || dd.SUFFIX_LETTER'
      '    from'
      '      DEPTS dd,'
      '      DEPT_TYPES ddt'
      '    where'
      '      (dd.DEPT_CODE = s.CONSUMER_DEPT_CODE) and'
      '      (ddt.DEPT_TYPE_CODE(+) = dd.DEPT_TYPE_CODE)'
      '  ) as CONSUMER_DEPT_IDENTIFIER,'
      '  s.CONSUME_BEGIN_DATE,'
      '  s.CONSUME_END_DATE,'
      '  ( select'
      '      ts.TRANSIENT_STATUS_NAME'
      '    from'
      '      TRANSIENT_STATUSES ts'
      '    where'
      '      (ts.TRANSIENT_STATUS_CODE = s.TRANSIENT_STATUS_CODE)'
      '  ) as TRANSIENT_STATUS_NAME,'
      '  s.WORKDAYS_TO_EXIST,'
      ''
      '  s.MARKET_SINGLE_PRICE,'
      '  s.DISCOUNT_PERCENT,'
      '  0 as INVOICES_MODIFIED'
      ''
      'from'
      '  SALES s,'
      '  SALE_GROUPS sg,'
      '  PRODUCTS p,'
      '  COMPANIES com,'
      '  DEPTS d3,'
      '  MATERIAL_LISTS ml,'
      '  PLANNED_STORE_DEALS psd,'
      '  SECONDARY_CURRENCY_RATES scr,'
      '  PRIORITIES pr,'
      '  SALES ws,'
      '  MATERIAL_LISTS wsml,'
      '  DELIVERY_CONTRACTS dc,'
      '  PAR_REL_PRODUCTS prp,'
      '  ('
      '    select'
      
        '      sd.BND_PROCESS_OBJECT_BRANCH_CODE as SALE_OBJECT_BRANCH_CO' +
        'DE,'
      '      sd.BND_PROCESS_OBJECT_CODE as SALE_OBJECT_CODE,'
      '      Min(sd.STORE_DEAL_DATE) as FIRST_OUT_DATE'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      '      (sd.IN_OUT < 0) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '    group by'
      '      sd.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '      sd.BND_PROCESS_OBJECT_CODE'
      '  ) ssdi,'
      '  ('
      '    select'
      
        '      psd.BND_PROCESS_OBJECT_BRANCH_CODE as SALE_OBJECT_BRANCH_C' +
        'ODE,'
      '      psd.BND_PROCESS_OBJECT_CODE as SALE_OBJECT_CODE,'
      '      psd.STORE_CODE,'
      '      psd.PRODUCT_CODE,'
      '      Sum(sd.QUANTITY * sd.IN_OUT) as TOTAL_QUANTITY,'
      
        '      Max(Decode(Sign(sd.IN_OUT), 1, sd.STORE_DEAL_DATE, null)) ' +
        'as LAST_SHIPMENT_STORE_IN_DATE'
      '    from'
      '      PLANNED_STORE_DEALS psd,'
      '      STORE_DEALS sd'
      '    where'
      
        '      (psd.PLANNED_STORE_DEAL_BRANCH_CODE = sd.PLANNED_STORE_DEA' +
        'L_BRANCH_CODE) and'
      
        '      (psd.PLANNED_STORE_DEAL_CODE = sd.PLANNED_STORE_DEAL_CODE)' +
        ' and'
      '      (psd.IN_OUT > 0) and'
      '      (sd.IN_OUT > 0) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE is not null)'
      '    group by'
      '      psd.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '      psd.BND_PROCESS_OBJECT_CODE,'
      '      psd.STORE_CODE,'
      '      psd.PRODUCT_CODE'
      '  ) sssi'
      ''
      'where'
      
        '  (s.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRANCH' +
        '_CODE(+)) and'
      '  (s.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE(+)) and'
      ''
      '  (s.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (s.CLIENT_COMPANY_CODE = com.COMPANY_CODE) and'
      ''
      '  (s.PRODUCTION_DEPT_CODE = d3.DEPT_CODE(+)) and'
      ''
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE' +
        '(+)) and'
      '  (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE(+)) and'
      ''
      
        '  (s.SALE_OBJECT_BRANCH_CODE = sssi.SALE_OBJECT_BRANCH_CODE(+)) ' +
        'and'
      '  (s.SALE_OBJECT_CODE = sssi.SALE_OBJECT_CODE(+)) and'
      '  (s.SHIPMENT_STORE_CODE = sssi.STORE_CODE(+)) and'
      '  (s.PRODUCT_CODE = sssi.PRODUCT_CODE(+)) and'
      ''
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ssdi.SALE_OBJECT_BRANCH_CODE(+)) ' +
        'and'
      '  (s.SALE_OBJECT_CODE = ssdi.SALE_OBJECT_CODE(+)) and'
      ''
      '  (s.CURRENCY_CODE = scr.CURRENCY_CODE(+)) and'
      
        '  (Coalesce(s.DECISION_DATE, ContextDate) = scr.RATE_DATE(+)) an' +
        'd'
      ''
      
        '  (s.SALE_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANCH_COD' +
        'E(+)) and'
      '  (s.SALE_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE(+)) and'
      '  (811 = psd.STORE_DEAL_TYPE_CODE(+)) and'
      '  (psd.IS_PLANNED_MANUALLY(+) = 0) and'
      ''
      '  (sg.PRIORITY_CODE = pr.PRIORITY_CODE(+)) and'
      ''
      
        '  (s.WASTING_SALE_OBJ_BRANCH_CODE = ws.SALE_OBJECT_BRANCH_CODE(+' +
        ')) and'
      '  (s.WASTING_SALE_OBJ_CODE = ws.SALE_OBJECT_CODE(+)) and'
      ''
      
        '  (s.WASTING_SALE_OBJ_BRANCH_CODE = wsml.BND_PROCESS_OBJECT_BRAN' +
        'CH_CODE(+)) and'
      
        '  (s.WASTING_SALE_OBJ_CODE = wsml.BND_PROCESS_OBJECT_CODE(+)) an' +
        'd'
      ''
      
        '  (s.DELIVERY_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BRANCH_COD' +
        'E(+)) and'
      '  (s.DELIVERY_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE(+)) and'
      ''
      '  (s.CLIENT_COMPANY_CODE = prp.PARTNER_CODE(+)) and'
      '  (s.PRODUCT_CODE = prp.PRODUCT_CODE(+)) and'
      '  (%brt_CLIENT = prp.BORDER_REL_TYPE_CODE(+)) and'
      ''
      '  (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '  (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'GET_PARTNER_NAME['#13#10'      ( select'#13#10'          e.COMPANY_CODE'#13#10'   ' +
          '     from'#13#10'          EMPLOYEES e'#13#10'        where'#13#10'          (e.EM' +
          'PLOYEE_CODE = s.OKIDU_EMPLOYEE_CODE)'#13#10'      )'#13#10'    ]'
        ParamType = ptInput
        Value = #39#39
      end
      item
        DataType = ftWideString
        Name = 
          'PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[s.PRODUCT_CODE~s.CLI' +
          'ENT_COMPANY_CODE~p]'
        ParamType = ptInput
        Value = 'To_Char(null)'
      end
      item
        DataType = ftWideString
        Name = 
          'GET_PARTNER_NAME['#13#10'      ( select'#13#10'          e.COMPANY_CODE'#13#10'   ' +
          '     from'#13#10'          EMPLOYEES e'#13#10'        where'#13#10'          (e.EM' +
          'PLOYEE_CODE = s.MANAGER_EMPLOYEE_CODE)'#13#10'      )'#13#10'    ]'
        ParamType = ptInput
        Value = #39#39
      end
      item
        DataType = ftWideString
        Name = 'ML_STATE[s~ml]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'      ( select'#13#10'           Min(sd.STORE_DEAL_DA' +
          'TE)'#13#10'        from'#13#10'          MATERIAL_LIST_LINES mll,'#13#10'         ' +
          ' STORE_DEALS sd'#13#10'        where'#13#10'          (mll.ML_OBJECT_BRANCH_' +
          'CODE = ml.ML_OBJECT_BRANCH_CODE) and'#13#10'          (mll.ML_OBJECT_C' +
          'ODE = ml.ML_OBJECT_CODE) and'#13#10'          (mll.MLL_OBJECT_BRANCH_C' +
          'ODE = sd.BND_PROCESS_OBJECT_BRANCH_CODE) and'#13#10'          (mll.MLL' +
          '_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'#13#10'          (sd.IN' +
          '_OUT = -1) and'#13#10'          (sd.BND_PROCESS_CODE <> 110) and'#13#10'    ' +
          '      (sd.STORNO_EMPLOYEE_CODE is null)'#13#10'      )~'#13#10'      case'#13#10' ' +
          '       when'#13#10'          exists'#13#10'            ( select'#13#10'           ' +
          '     1'#13#10'              from'#13#10'                PLANNED_STORE_DEALS ' +
          'psd'#13#10'              where'#13#10'                (psd.BND_PROCESS_OBJEC' +
          'T_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE) and'#13#10'        ' +
          '        (psd.BND_PROCESS_OBJECT_CODE = ml.BND_PROCESS_OBJECT_COD' +
          'E) and'#13#10'                (psd.PRODUCT_CODE = ml.RESULT_PRODUCT_CO' +
          'DE) and'#13#10'                (psd.IN_OUT = 1) and'#13#10'                (' +
          'psd.IS_PLANNED_MANUALLY = 0) and'#13#10'                (psd.BND_PROCE' +
          'SS_CODE <> 110) and'#13#10'                (psd.IS_ACTIVE = 0)'#13#10'      ' +
          '      )'#13#10'          then'#13#10'          ( select'#13#10'              Max(s' +
          'd.STORE_DEAL_DATE)'#13#10'            from'#13#10'              STORE_DEALS ' +
          'sd'#13#10'            where'#13#10'              (sd.BND_PROCESS_OBJECT_BRAN' +
          'CH_CODE = s.SALE_OBJECT_BRANCH_CODE) and'#13#10'              (sd.BND_' +
          'PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'#13#10'              (sd' +
          '.IN_OUT = 1) and'#13#10'              (sd.STORNO_EMPLOYEE_CODE is null' +
          ')'#13#10'          )'#13#10'      else'#13#10'        ContextDate'#13#10'      end'#13#10'    ' +
          ']'
        ParamType = ptInput
        Value = 'To_Number(null)'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'          ( select'#13#10'              Min(mm.MM_DAT' +
          'E) + 1'#13#10'            from'#13#10'              MODEL_MOVEMENTS mm'#13#10'    ' +
          '        where'#13#10'              (mm.FROM_MLMS_OBJECT_BRANCH_CODE = ' +
          'mlms.MLMS_OBJECT_BRANCH_CODE) and'#13#10'              (mm.FROM_MLMS_O' +
          'BJECT_CODE = mlms.MLMS_OBJECT_CODE) and'#13#10'              (mm.STORN' +
          'O_EMPLOYEE_CODE is null) and'#13#10'              (mm.MM_DATE < mlms.T' +
          'REATMENT_BEGIN_DATE)'#13#10'          )~'#13#10'          mlms.TREATMENT_BEG' +
          'IN_DATE]'
        ParamType = ptInput
        Value = 'To_Number(null)'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'            (mlms.TREATMENT_END_DATE + 1)~'#13#10'   ' +
          '         case'#13#10'              when (ml.CLOSE_EMPLOYEE_CODE is nul' +
          'l) and'#13#10'                   ( MiscUtils.LargeZero('#13#10'             ' +
          '          mll.LINE_DETAIL_TECH_QUANTITY -'#13#10'                     ' +
          '  ( select'#13#10'                           Coalesce(Sum(mm.DETAIL_TE' +
          'CH_QUANTITY), 0)'#13#10'                         from'#13#10'               ' +
          '            ML_MODEL_STAGES mlms2,'#13#10'                           M' +
          'ODEL_MOVEMENTS mm'#13#10'                         where'#13#10'             ' +
          '              (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BR' +
          'ANCH_CODE) and'#13#10'                           (mlms2.MLL_OBJECT_COD' +
          'E = mlms.MLL_OBJECT_CODE) and'#13#10'                           (mlms2' +
          '.ML_MODEL_STAGE_NO <= mlms.ML_MODEL_STAGE_NO) and'#13#10'             ' +
          '              (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJE' +
          'CT_BRANCH_CODE) and'#13#10'                           (mm.FROM_MLMS_OB' +
          'JECT_CODE = mlms2.MLMS_OBJECT_CODE) and'#13#10'                       ' +
          '    (mm.TO_DEPT_CODE is not null) and'#13#10'                         ' +
          '  (mm.STORNO_EMPLOYEE_CODE is null)'#13#10'                       ) -'#13 +
          #10'                       ( select'#13#10'                           Coa' +
          'lesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)'#13#10'                        ' +
          ' from'#13#10'                           MODEL_MOVEMENTS mm'#13#10'          ' +
          '               where'#13#10'                           (mm.FROM_MLMS_O' +
          'BJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and'#13#10'         ' +
          '                  (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_C' +
          'ODE) and'#13#10'                           (mm.TO_DEPT_CODE is null) a' +
          'nd'#13#10'                           (mm.STORNO_EMPLOYEE_CODE is null)' +
          #13#10'                       )'#13#10'                     ) > 0'#13#10'        ' +
          '           ) then ContextDate'#13#10'            else'#13#10'              (' +
          ' select'#13#10'                  Max(mm.MM_DATE)'#13#10'                from' +
          #13#10'                  MODEL_MOVEMENTS mm'#13#10'                where'#13#10' ' +
          '                 (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OB' +
          'JECT_BRANCH_CODE) and'#13#10'                  (mm.FROM_MLMS_OBJECT_CO' +
          'DE = mlms.MLMS_OBJECT_CODE) and'#13#10'                  (mm.STORNO_EM' +
          'PLOYEE_CODE is null) and'#13#10'                  (mm.MM_DATE > mlms.T' +
          'REATMENT_END_DATE)'#13#10'              )'#13#10'            end'#13#10'          ' +
          ']'
        ParamType = ptInput
        Value = 'To_Number(null)'
      end
      item
        DataType = ftWideString
        Name = 'MODEL_OPERATIONS_STATUS[ml]'
        ParamType = ptInput
        Value = 'To_Number(null)'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[prp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SALES_FOR_EDIT'
    AfterProviderStartTransaction = qrySaleAfterProviderStartTransaction
    BeforeProviderEndTransaction = qrySaleBeforeProviderEndTransaction
    Left = 456
    Top = 55
    object qrySaleSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qrySaleSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qrySaleSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleSALE_BRANCH_NO: TAbmesFloatField
      FieldName = 'SALE_BRANCH_NO'
      ProviderFlags = []
    end
    object qrySaleSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
      ProviderFlags = []
    end
    object qrySaleSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qrySaleSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
      ProviderFlags = []
    end
    object qrySalePRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = []
    end
    object qrySalePRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qrySaleACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      ProviderFlags = []
    end
    object qrySaleMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qrySaleOKIDU_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OKIDU_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
      ProviderFlags = []
    end
    object qrySaleCLIENT_SHORT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_SHORT_NAME'
      ProviderFlags = []
    end
    object qrySaleCLIENT_COUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'CLIENT_COUNTRY_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qrySaleCLIENT_PRODUCT_SIGNATURE: TAbmesWideStringField
      FieldName = 'CLIENT_PRODUCT_SIGNATURE'
      ProviderFlags = []
      Size = 250
    end
    object qrySalePRODUCTION_DEPT_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_DEPT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySalePRODUCTION_DEPT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCTION_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qrySalePRODUCTION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PRODUCTION_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qrySaleCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      ProviderFlags = []
    end
    object qrySaleSALE_LAST_CHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'SALE_LAST_CHANGE_DATE'
      ProviderFlags = []
    end
    object qrySaleSHIPMENT_STORE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_STORE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_SH_STORE_PLAN_END_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleMANUFACTURE_QUANTITY: TAbmesFloatField
      FieldName = 'MANUFACTURE_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleMANUFACTURE_DECISION_EXPECTED: TAbmesFloatField
      FieldName = 'MANUFACTURE_DECISION_EXPECTED'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleSHIPMENT_STORE_CURR_QUANTITY: TAbmesFloatField
      FieldName = 'SHIPMENT_STORE_CURR_QUANTITY'
      ProviderFlags = []
    end
    object qrySaleLAST_SHIPMENT_STORE_IN_DATE: TAbmesSQLTimeStampField
      FieldName = 'LAST_SHIPMENT_STORE_IN_DATE'
      ProviderFlags = []
    end
    object qrySalePRODUCTION_START_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_START_PLAN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleFIRST_OUT_DATE: TAbmesSQLTimeStampField
      FieldName = 'FIRST_OUT_DATE'
      ProviderFlags = []
    end
    object qrySalePLANNED_INVESTED_SEC_PRICE: TAbmesFloatField
      FieldName = 'PLANNED_INVESTED_SEC_PRICE'
      ProviderFlags = []
    end
    object qrySaleACCOUNT_INVESTED_SEC_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_INVESTED_SEC_PRICE'
      ProviderFlags = []
    end
    object qrySaleCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      ProviderFlags = []
      Size = 30
    end
    object qrySaleRECEIVE_PLACE_NAME: TAbmesWideStringField
      FieldName = 'RECEIVE_PLACE_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qrySaleIS_VENDOR_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_VENDOR_TRANSPORT'
      ProviderFlags = []
    end
    object qrySaleRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
      ProviderFlags = []
    end
    object qrySaleSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qrySaleSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
      ProviderFlags = []
    end
    object qrySaleSINGLE_PRICE_IN_SEC_CURRENCY: TAbmesFloatField
      FieldName = 'SINGLE_PRICE_IN_SEC_CURRENCY'
      ProviderFlags = []
    end
    object qrySaleTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      ProviderFlags = []
    end
    object qrySaleTOTAL_PRICE_IN_SEC_CURRENCY: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_IN_SEC_CURRENCY'
      ProviderFlags = []
    end
    object qrySalePAID_PART: TAbmesFloatField
      FieldName = 'PAID_PART'
      ProviderFlags = []
    end
    object qrySaleSOS_OKIDU: TAbmesFloatField
      FieldName = 'SOS_OKIDU'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qrySaleCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qrySaleSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleSALE_GROUP_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_CODE'
      ProviderFlags = []
    end
    object qrySaleSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
      ProviderFlags = []
    end
    object qrySaleREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
      ProviderFlags = []
    end
    object qrySaleREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
      ProviderFlags = []
    end
    object qrySaleREQUEST_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_SEND_DATE'
      ProviderFlags = []
    end
    object qrySaleREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_REGISTER_DATE'
      ProviderFlags = []
    end
    object qrySaleOFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_SEND_PLAN_DATE'
      ProviderFlags = []
    end
    object qrySaleOFFER_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_SEND_DATE'
      ProviderFlags = []
    end
    object qrySaleOFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_ANSWER_PLAN_DATE'
      ProviderFlags = []
    end
    object qrySaleOFFER_ANSWER_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_ANSWER_DATE'
      ProviderFlags = []
    end
    object qrySaleDECISION_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_PLAN_DATE'
      ProviderFlags = []
    end
    object qrySaleDECISION_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_DATE'
      ProviderFlags = []
    end
    object qrySaleDECISION_TYPE_CODE: TAbmesFloatField
      FieldName = 'DECISION_TYPE_CODE'
      ProviderFlags = []
    end
    object qrySaleSINGLE_WEIGHT: TAbmesFloatField
      FieldName = 'SINGLE_WEIGHT'
      ProviderFlags = []
    end
    object qrySaleOUR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'OUR_OFFER_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qrySaleCL_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'CL_OFFER_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qrySaleCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE'
      ProviderFlags = []
    end
    object qrySaleOUR_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'OUR_OFFER_RECEIVE_DATE'
      ProviderFlags = []
    end
    object qrySaleRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField
      FieldName = 'RECEIVE_PLACE_OFFICE_CODE'
      ProviderFlags = []
    end
    object qrySaleSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
      ProviderFlags = []
    end
    object qrySaleCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
      ProviderFlags = []
    end
    object qrySaleNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object qrySaleIS_ML_ENTRUSTED: TAbmesFloatField
      FieldName = 'IS_ML_ENTRUSTED'
      ProviderFlags = []
    end
    object qrySaleIS_ML_NOT_NEEDED: TAbmesFloatField
      FieldName = 'IS_ML_NOT_NEEDED'
      ProviderFlags = []
    end
    object qrySaleCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
      ProviderFlags = []
    end
    object qrySaleCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      ProviderFlags = []
    end
    object qrySaleMANAGER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'MANAGER_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleOUR_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'OUR_OFFER_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleCL_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'CL_OFFER_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qrySalePLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySalePLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
      ProviderFlags = []
    end
    object qrySalePSD_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'PSD_PRIORITY_CODE'
      ProviderFlags = []
    end
    object qrySalePRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qrySaleMODEL_SPEC_VERSION_NO: TAbmesFloatField
      FieldName = 'MODEL_SPEC_VERSION_NO'
      ProviderFlags = []
    end
    object qrySaleMODEL_SPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'MODEL_SPEC_MODEL_VARIANT_NO'
      ProviderFlags = []
    end
    object qrySaleMODEL_CREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MODEL_CREATE_DATE'
      ProviderFlags = []
    end
    object qrySaleML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
      ProviderFlags = []
    end
    object qrySaleIS_OPERATIONS_MODEL: TAbmesFloatField
      FieldName = 'IS_OPERATIONS_MODEL'
      ProviderFlags = []
    end
    object qrySaleMODEL_ACCOMPLISHMENT_COEF: TAbmesFloatField
      FieldName = 'MODEL_ACCOMPLISHMENT_COEF'
      ProviderFlags = []
    end
    object qrySaleREQUEST_SHOW_NO: TAbmesWideStringField
      FieldName = 'REQUEST_SHOW_NO'
      ProviderFlags = []
      Size = 122
    end
    object qrySaleMANAGER_OKIDU_NAME: TAbmesWideStringField
      FieldName = 'MANAGER_OKIDU_NAME'
      ProviderFlags = []
      Size = 153
    end
    object qrySalePRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'PRODUCTION_WORKDAYS'
      ProviderFlags = []
    end
    object qrySaleENTER_RESULT_STORE_WORKDAYS: TAbmesFloatField
      FieldName = 'ENTER_RESULT_STORE_WORKDAYS'
      ProviderFlags = []
    end
    object qrySaleDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleML_STATE_CODE: TAbmesFloatField
      FieldName = 'ML_STATE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIPMENT_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qrySaleWORK_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySalePRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySalePRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qrySalePRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
      ProviderFlags = [pfInUpdate]
    end
    object qrySalePRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleMIN_MLL_STORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_MLL_STORE_DEAL_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleSTART_STAGE_COEF: TAbmesFloatField
      FieldName = 'START_STAGE_COEF'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleSTART_AFTER_LIMITING_DAYS: TAbmesFloatField
      FieldName = 'START_AFTER_LIMITING_DAYS'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'INITIAL_TREATMENT_WORKDAYS'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleREAL_PRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'REAL_PRODUCTION_WORKDAYS'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleMAX_OP_DATE_POSITIVE_DIFF: TAbmesFloatField
      FieldName = 'MAX_OP_DATE_POSITIVE_DIFF'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleMIN_OP_DATE_NEGATIVE_DIFF: TAbmesFloatField
      FieldName = 'MIN_OP_DATE_NEGATIVE_DIFF'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField
      FieldName = 'MODEL_OPERATIONS_STATUS_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleWASTING_SALE_OBJ_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_OBJ_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleWASTING_SALE_OBJ_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_OBJ_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleIS_WASTE_COMPENSATING_ORDER: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATING_ORDER'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleWASTING_SALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleWASTING_SALE_NO: TAbmesFloatField
      FieldName = 'WASTING_SALE_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleWASTING_ML_OJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WASTING_ML_OJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleWASTING_ML_OJECT_CODE: TAbmesFloatField
      FieldName = 'WASTING_ML_OJECT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleWASTE_COMPENSATOR_COUNT: TAbmesFloatField
      FieldName = 'WASTE_COMPENSATOR_COUNT'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleHAS_WASTE: TAbmesFloatField
      FieldName = 'HAS_WASTE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleSHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SHIPMENT_TYPE_ABBREV'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object qrySaleACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_ABBREV'
      ProviderFlags = []
      Size = 100
    end
    object qrySaleRETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleIMPORT_DATE: TAbmesSQLTimeStampField
      FieldName = 'IMPORT_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
      ProviderFlags = []
    end
    object qrySaleLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'LEASE_DATE_UNIT_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qrySaleTOTAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'TOTAL_LEASE_DATE_UNIT_QTY'
      ProviderFlags = []
    end
    object qrySaleIMPORT_QUANTITY_DIFF: TAbmesFloatField
      FieldName = 'IMPORT_QUANTITY_DIFF'
      ProviderFlags = []
    end
    object qrySaleACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      ProviderFlags = []
    end
    object qrySaleCLIENT_COMPANY_NO: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_NO'
      ProviderFlags = []
    end
    object qrySaleDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
      ProviderFlags = []
    end
    object qrySaleDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
      ProviderFlags = []
    end
    object qrySaleBND_DELIVERY_COUNT: TAbmesFloatField
      FieldName = 'BND_DELIVERY_COUNT'
      ProviderFlags = []
    end
    object qrySalePRP_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRP_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySalePRP_DOC_CODE: TAbmesFloatField
      FieldName = 'PRP_DOC_CODE'
      ProviderFlags = []
    end
    object qrySalePRP_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRP_HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qrySaleHAS_PAR_REL_PRODUCT: TAbmesFloatField
      FieldName = 'HAS_PAR_REL_PRODUCT'
      ProviderFlags = []
    end
    object qrySaleMANAGER_OKIDU_NO: TAbmesFloatField
      FieldName = 'MANAGER_OKIDU_NO'
      ProviderFlags = []
    end
    object qrySaleOKIDU_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'OKIDU_EMPLOYEE_NO'
      ProviderFlags = []
    end
    object qrySaleCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'CONSUMER_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qrySaleOKIDU_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'OKIDU_EMPLOYEE_NAME'
      ProviderFlags = []
      FixedChar = True
      Size = 153
    end
    object qrySaleCONSUME_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'CONSUME_BEGIN_DATE'
      ProviderFlags = []
    end
    object qrySaleCONSUME_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'CONSUME_END_DATE'
      ProviderFlags = []
    end
    object qrySaleTRANSIENT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'TRANSIENT_STATUS_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qrySaleWORKDAYS_TO_EXIST: TAbmesFloatField
      FieldName = 'WORKDAYS_TO_EXIST'
      ProviderFlags = []
    end
    object qrySalePRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
      ProviderFlags = []
    end
    object qrySaleMARKET_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'MARKET_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qrySaleDISCOUNT_PERCENT: TAbmesFloatField
      FieldName = 'DISCOUNT_PERCENT'
      ProviderFlags = []
    end
    object qrySaleINVOICES_MODIFIED: TAbmesFloatField
      FieldName = 'INVOICES_MODIFIED'
      ProviderFlags = []
    end
    object qrySalePRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleWASTING_SALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_ORDER_TYPE_CODE'
      ProviderFlags = []
    end
  end
  object qrySaleShipments: TAbmesSQLQuery
    DataSource = dsSale
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ss.SHIPMENT_OBJECT_BRANCH_CODE,'
      '  ss.SHIPMENT_OBJECT_CODE,'
      '  ss.SALE_OBJECT_BRANCH_CODE,'
      '  ss.SALE_OBJECT_CODE,'
      '  ss.SALE_SHIPMENT_NO,'
      '  ss.PLAN_QUANTITY,'
      '  ss.QUANTITY,'
      '  ss.SHIPMENT_PLAN_DATE,'
      '  ss.SHIPMENT_DATE,'
      '  ss.IS_PROFORM_INVOICE,'
      '  ss.INVOICE_NO,'
      '  ss.INVOICE_DATE,'
      '  ss.INVOICE_CURRENCY_CODE,'
      '  ss.INVOICE_SINGLE_PRICE,'
      '  ss.RECEIVE_DATE,'
      '  (Coalesce(ss.QUANTITY, ss.PLAN_QUANTITY) *'
      '   ss.INVOICE_SINGLE_PRICE *'
      '   Decode('
      '     ( select'
      '         s.SALE_DEAL_TYPE_CODE'
      '       from'
      '         SALES s'
      '       where'
      
        '         (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '         (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE)'
      '     ),'
      '     CommonConsts.sdtLease,'
      
        '     Coalesce(ss.LEASE_DATE_UNIT_QTY, ss.LEASE_PLAN_DATE_UNIT_QT' +
        'Y),'
      '     1'
      '   )'
      '  ) as INVOICE_TOTAL_PRICE,'
      ''
      '  ( select'
      '      Min(ii.BRANCH_CODE)'
      '    from'
      '      INVOICE_ITEMS ii,'
      '      INVOICES i'
      '    where'
      
        '      (ii.BND_PROCESS_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (ii.BND_PROCESS_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE) and'
      ''
      '      (ii.BRANCH_CODE = i.INVOICE_BRANCH_CODE) and'
      '      (ii.INVOICE_CODE = i.INVOICE_CODE) and'
      ''
      '      (i.STORNO_EMPLOYEE_CODE is null)'
      '  ) as INVOICE_BRANCH_CODE,'
      ''
      '  ( select'
      '      Min(ii.INVOICE_CODE)'
      '    from'
      '      INVOICE_ITEMS ii,'
      '      INVOICES i'
      '    where'
      
        '      (ii.BND_PROCESS_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (ii.BND_PROCESS_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE) and'
      ''
      '      (ii.BRANCH_CODE = i.INVOICE_BRANCH_CODE) and'
      '      (ii.INVOICE_CODE = i.INVOICE_CODE) and'
      ''
      '      (i.STORNO_EMPLOYEE_CODE is null)'
      '  ) as INVOICE_CODE,'
      ''
      '  (-1) as UPDATE_STATUS,'
      ''
      
        '  ( Sum(psd.QUANTITY * %PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[p' +
        'sd.PRODUCT_CODE ~ psd.STORE_DEAL_BEGIN_DATE]) /'
      '    Sum(psd.ACCOUNT_QUANTITY)'
      '  ) as PLAN_SECONDARY_VALUE_INVESTED,'
      ''
      '  xxx.SHIPMENT_OUT_QUANTITY,'
      '  xxx.SECONDARY_VALUE_INVESTED,'
      '  ( case'
      '      when (ss.SHIPMENT_PLAN_DATE > ContextDate) then'
      '        tscr666.FIXING'
      '      else'
      '        scr666.FIXING'
      '    end'
      '  ) as PLAN_SECONDARY_CURRENCY_RATE,'
      '  scr777.FIXING as REAL_SECONDARY_CURRENCY_RATE,'
      '  Coalesce(ss.QUANTITY, ss.PLAN_QUANTITY) as CHECK_QUANTITY,'
      '  ss.DOC_BRANCH_CODE,'
      '  ss.DOC_CODE,'
      '  ss.SHIPMENT_STORE_CODE,'
      ''
      '  ( select'
      '      cr.FIXING'
      '    from'
      '      CURRENCY_RATES cr'
      '    where'
      '      (cr.CURRENCY_CODE = ss.INVOICE_CURRENCY_CODE) and'
      '      (cr.RATE_DATE = ss.INVOICE_DATE)'
      '  ) as INVOICE_CURRENCY_FIXING,'
      ''
      '  ss.LEASE_PLAN_DATE_UNIT_QTY,'
      '  ss.LEASE_DATE_UNIT_QTY,'
      '  ss.IMPORT_PLAN_DATE,'
      '  ss.IMPORT_DATE,'
      ''
      '  xxx.SHIPMENT_IN_QUANTITY,'
      '  xxx.SHIPMENT_OUT_LAST_DATE,'
      '  xxx.SHIPMENT_IN_LAST_DATE,'
      ''
      '  ss.RECEIVE_PLAN_DATE,'
      '  ss.RETURN_PLAN_DATE,'
      ''
      '  ss.SALE_SHIPMENT_STATE_CODE,'
      ''
      '  fo.FIN_ORDER_CODE,'
      '  fo.FIN_ORDER_BRANCH_CODE as FO_BRANCH_CODE,'
      '  fo.EXEC_DEPT_CODE as FO_EXEC_DEPT_CODE,'
      '  fo.PRIORITY_CODE as FO_PRIORITY_CODE,'
      
        '  fo.WORK_FINANCIAL_PRODUCT_CODE as FO_WORK_FINANCIAL_PRODUCT_CO' +
        'DE,'
      '  fo.PARTNER_CODE as FO_PARTNER_CODE,'
      ''
      '  ( select'
      '      %FIN_ORDER_STATUS[fo2]'
      '    from'
      '      FIN_ORDERS fo2'
      '    where'
      '      (fo2.FIN_ORDER_CODE = fo.FIN_ORDER_CODE)'
      '  ) as FO_STATUS_CODE,'
      ''
      '  To_Number(null) as SPEC_FIN_MODEL_CODE,'
      ''
      '  ( ( select'
      '        Sign(Count(*))'
      '      from'
      '        REAL_FIN_MODEL_LINES rfml'
      '      where'
      '        (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      '        (rfml.ANNUL_EMPLOYEE_CODE is null)'
      '    ) *'
      '    ( select'
      '        /*+ORDERED*/'
      '        1 - Sign(Count(*))'
      '      from'
      '        REAL_FIN_MODEL_LINES rfml,'
      '        PLANNED_STORE_DEALS psd'
      '      where'
      '        (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '        (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_B' +
        'RANCH_CODE) and'
      
        '        (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) an' +
        'd'
      '        (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '        (psd.REMAINING_QUANTITY > 0)'
      '    ) *'
      '    Nvl2(fo.CLOSE_EMPLOYEE_CODE, 0, 1)'
      '  ) as FO_IS_COMPLETED,'
      ''
      '  To_Number(null) as FO_CLOSE_REQUESTED,'
      ''
      '  ( select'
      '      po.PROCESS_OBJECT_IDENTIFIER'
      '    from'
      '      PROCESS_OBJECTS po'
      '    where'
      
        '      (po.PROCESS_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJECT_BRANCH' +
        '_CODE) and'
      '      (po.PROCESS_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE)'
      '  ) as SHIPMENT_OBJECT_IDENTIFIER,'
      ''
      ' ( select'
      '     s.CLIENT_REQUEST_NO'
      '   from'
      '     SALES s'
      '   where'
      '     (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '     (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      ' ) as CLIENT_REQUEST_NO'
      ''
      'from'
      '  ( select'
      '      ss1.*,'
      '      s1.CURRENCY_CODE,'
      '      s1.SHIPMENT_STORE_CODE,'
      ''
      '      case'
      '        when (s1.ANNUL_EMPLOYEE_CODE is not null) then'
      '          10'
      ''
      '        when (s1.FINISH_EMPLOYEE_CODE is not null) then'
      '          9'
      ''
      '        when ( ( (s1.SALE_DEAL_TYPE_CODE <> %sdt_LEASE) and'
      '                 (ss1.RECEIVE_DATE is not null) ) or'
      '               ( (s1.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '                 exists('
      '                   select'
      '                     1'
      '                   from'
      '                     SALE_SHIPMENTS ss2'
      '                   where'
      
        '                     (ss2.SALE_OBJECT_BRANCH_CODE = ss1.SALE_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                     (ss2.SALE_OBJECT_CODE = ss1.SALE_OBJECT_COD' +
        'E) and'
      '                     (ss2.SALE_SHIPMENT_NO ='
      '                       ( select'
      '                           Min(ss3.SALE_SHIPMENT_NO)'
      '                         from'
      '                           SALE_SHIPMENTS ss3'
      '                         where'
      
        '                           (ss3.SALE_OBJECT_BRANCH_CODE = ss1.SA' +
        'LE_OBJECT_BRANCH_CODE) and'
      
        '                           (ss3.SALE_OBJECT_CODE = ss1.SALE_OBJE' +
        'CT_CODE)'
      '                       )'
      '                     ) and'
      '                     (ss2.RECEIVE_DATE is not null)'
      '                 ) and'
      '                 ( ( (ss1.RETURN_PLAN_DATE < ContextDate) and'
      '                     exists('
      '                       select'
      '                         1'
      '                       from'
      '                         SALE_SHIPMENTS ss2'
      '                       where'
      
        '                         (ss2.SALE_OBJECT_BRANCH_CODE = ss1.SALE' +
        '_OBJECT_BRANCH_CODE) and'
      
        '                         (ss2.SALE_OBJECT_CODE = ss1.SALE_OBJECT' +
        '_CODE) and'
      
        '                         (ss2.SALE_SHIPMENT_NO > ss1.SALE_SHIPME' +
        'NT_NO)'
      '                     )'
      '                   ) or'
      '                   exists('
      '                     select'
      '                       1'
      '                     from'
      '                       SALE_SHIPMENTS ss2'
      '                     where'
      
        '                       (ss2.SALE_OBJECT_BRANCH_CODE = ss1.SALE_O' +
        'BJECT_BRANCH_CODE) and'
      
        '                       (ss2.SALE_OBJECT_CODE = ss1.SALE_OBJECT_C' +
        'ODE) and'
      '                       (ss2.SALE_SHIPMENT_NO ='
      '                         ( select'
      '                             Max(ss3.SALE_SHIPMENT_NO)'
      '                           from'
      '                             SALE_SHIPMENTS ss3'
      '                           where'
      
        '                             (ss3.SALE_OBJECT_BRANCH_CODE = ss1.' +
        'SALE_OBJECT_BRANCH_CODE) and'
      
        '                             (ss3.SALE_OBJECT_CODE = ss1.SALE_OB' +
        'JECT_CODE)'
      '                         )'
      '                       ) and'
      '                       (ss2.IMPORT_DATE is not null)'
      '                   )'
      '                 )'
      '               )'
      '             ) then'
      '          8'
      ''
      '        when (s1.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '             (s1.IMPORT_DATE < ContextDate) and'
      '             (ss1.IMPORT_DATE is null) then'
      '          7'
      ''
      '        when (s1.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '             (ss1.RETURN_PLAN_DATE < ContextDate) then'
      '          6'
      ''
      '        when (s1.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      
        '             (ContextDate between ss1.RECEIVE_PLAN_DATE and ss1.' +
        'RETURN_PLAN_DATE) and'
      '             exists('
      '               select'
      '                 1'
      '               from'
      '                 SALE_SHIPMENTS ss2'
      '               where'
      
        '                 (ss2.SALE_OBJECT_BRANCH_CODE = ss1.SALE_OBJECT_' +
        'BRANCH_CODE) and'
      
        '                 (ss2.SALE_OBJECT_CODE = ss1.SALE_OBJECT_CODE) a' +
        'nd'
      '                 (ss2.SALE_SHIPMENT_NO ='
      '                   ( select'
      '                       Min(ss3.SALE_SHIPMENT_NO)'
      '                     from'
      '                       SALE_SHIPMENTS ss3'
      '                     where'
      
        '                       (ss3.SALE_OBJECT_BRANCH_CODE = ss1.SALE_O' +
        'BJECT_BRANCH_CODE) and'
      
        '                       (ss3.SALE_OBJECT_CODE = ss1.SALE_OBJECT_C' +
        'ODE)'
      '                   )'
      '                 ) and'
      '                 (ss2.RECEIVE_DATE is not null)'
      '             ) then'
      '          5'
      ''
      '        when (ss1.SHIPMENT_DATE is not null) and'
      '             (ss1.RECEIVE_DATE is null) and'
      '             (ss1.RECEIVE_PLAN_DATE < ContextDate) then'
      '          4'
      ''
      '        when (ss1.SHIPMENT_DATE is not null) and'
      '             (ss1.RECEIVE_DATE is null) then'
      '          3'
      ''
      '        when (ss1.SHIPMENT_PLAN_DATE < ContextDate) and'
      '             (ss1.SHIPMENT_DATE is null) then'
      '          2'
      ''
      '        when (ContextDate <= ss1.SHIPMENT_PLAN_DATE) then'
      '          1'
      '      end as SALE_SHIPMENT_STATE_CODE'
      ''
      '    from'
      '      SALES s1,'
      '      SALE_SHIPMENTS ss1'
      '    where'
      
        '      (s1.SALE_OBJECT_BRANCH_CODE = ss1.SALE_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (s1.SALE_OBJECT_CODE = ss1.SALE_OBJECT_CODE) and'
      
        '      (s1.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (s1.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '  ) ss,'
      '  SECONDARY_CURRENCY_RATES scr666,'
      '  TODAY_SECONDARY_CURRENCY_RATES tscr666,'
      '  SECONDARY_CURRENCY_RATES scr777,'
      '  PLANNED_STORE_DEALS psd,'
      '  FIN_ORDERS fo,'
      '  ( select'
      '      sd.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '      sd.BND_PROCESS_OBJECT_CODE,'
      
        '      Sum(Decode(sd.IN_OUT, -1, sd.QUANTITY)) as SHIPMENT_OUT_QU' +
        'ANTITY,'
      
        '      (Sum(Decode(sd.IN_OUT, -1, sd.TOTAL_PRICE)*scr2.FIXING) / ' +
        'Sum(Decode(sd.IN_OUT, -1, sd.ACCOUNT_QUANTITY))) as SECONDARY_VA' +
        'LUE_INVESTED,'
      
        '      Sum(Decode(sd.IN_OUT, +1, sd.QUANTITY)) as SHIPMENT_IN_QUA' +
        'NTITY,'
      
        '      Max(Decode(sd.IN_OUT, -1, sd.STORE_DEAL_DATE)) as SHIPMENT' +
        '_OUT_LAST_DATE,'
      
        '      Max(Decode(sd.IN_OUT, +1, sd.STORE_DEAL_DATE)) as SHIPMENT' +
        '_IN_LAST_DATE'
      '    from'
      '      SALE_SHIPMENTS ss2,'
      '      STORE_DEALS sd,'
      '      SECONDARY_CURRENCY_RATES scr2'
      '    where'
      
        '      (ss2.SHIPMENT_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_B' +
        'RANCH_CODE) and'
      
        '      (ss2.SHIPMENT_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) an' +
        'd'
      '      (sd.STORE_DEAL_DATE = scr2.RATE_DATE(+)) and'
      '      (sd.CURRENCY_CODE = scr2.CURRENCY_CODE(+)) and'
      
        '      (ss2.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (ss2.SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '    group by'
      '      sd.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '      sd.BND_PROCESS_OBJECT_CODE'
      '  ) xxx'
      'where'
      
        '  (ss.SHIPMENT_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANC' +
        'H_CODE(+)) and'
      '  (ss.SHIPMENT_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE(+)) and'
      '  (psd.ANNUL_EMPLOYEE_CODE(+) is null) and'
      
        '  (ss.SHIPMENT_OBJECT_BRANCH_CODE = xxx.BND_PROCESS_OBJECT_BRANC' +
        'H_CODE(+)) and'
      '  (ss.SHIPMENT_OBJECT_CODE = xxx.BND_PROCESS_OBJECT_CODE(+)) and'
      '  (ss.CURRENCY_CODE = tscr666.CURRENCY_CODE(+)) and'
      '  (ss.CURRENCY_CODE = scr666.CURRENCY_CODE(+)) and'
      '  (ss.SHIPMENT_PLAN_DATE = scr666.RATE_DATE(+)) and'
      '  (ss.INVOICE_CURRENCY_CODE = scr777.CURRENCY_CODE(+)) and'
      '  (ss.SHIPMENT_DATE = scr777.RATE_DATE(+)) and'
      
        '  (ss.SHIPMENT_OBJECT_BRANCH_CODE = fo.BND_PROCESS_OBJECT_BRANCH' +
        '_CODE(+)) and'
      '  (ss.SHIPMENT_OBJECT_CODE = fo.BND_PROCESS_OBJECT_CODE(+)) and'
      '  (fo.ANNUL_EMPLOYEE_CODE(+) is null)'
      'group by'
      '  ss.SHIPMENT_OBJECT_BRANCH_CODE,'
      '  ss.SHIPMENT_OBJECT_CODE,'
      '  ss.SALE_OBJECT_BRANCH_CODE,'
      '  ss.SALE_OBJECT_CODE,'
      '  ss.SALE_SHIPMENT_NO,'
      '  ss.PLAN_QUANTITY,'
      '  ss.QUANTITY,'
      '  ss.SHIPMENT_PLAN_DATE,'
      '  ss.SHIPMENT_DATE,'
      '  ss.IS_PROFORM_INVOICE,'
      '  ss.INVOICE_NO,'
      '  ss.INVOICE_DATE,'
      '  ss.INVOICE_CURRENCY_CODE,'
      '  ss.INVOICE_SINGLE_PRICE,'
      '  ss.RECEIVE_DATE,'
      '  xxx.SHIPMENT_OUT_QUANTITY,'
      '  xxx.SECONDARY_VALUE_INVESTED,'
      '  ss.SHIPMENT_PLAN_DATE,'
      '  tscr666.FIXING,'
      '  scr666.FIXING,'
      '  scr777.FIXING,'
      '  ss.DOC_BRANCH_CODE,'
      '  ss.DOC_CODE,'
      '  ss.SHIPMENT_STORE_CODE,'
      '  ss.LEASE_PLAN_DATE_UNIT_QTY,'
      '  ss.LEASE_DATE_UNIT_QTY,'
      '  ss.IMPORT_PLAN_DATE,'
      '  ss.IMPORT_DATE,        '
      '  xxx.SHIPMENT_IN_QUANTITY,'
      '  xxx.SHIPMENT_OUT_LAST_DATE,'
      '  xxx.SHIPMENT_IN_LAST_DATE,'
      '  ss.RECEIVE_PLAN_DATE,'
      '  ss.RETURN_PLAN_DATE,'
      '  ss.SALE_SHIPMENT_STATE_CODE,'
      '  fo.FIN_ORDER_CODE,'
      '  fo.CLOSE_EMPLOYEE_CODE,'
      '  fo.FIN_ORDER_BRANCH_CODE,'
      '  fo.EXEC_DEPT_CODE,'
      '  fo.PRIORITY_CODE,'
      '  fo.WORK_FINANCIAL_PRODUCT_CODE,'
      '  fo.PARTNER_CODE'
      'order by'
      '  ss.SALE_OBJECT_BRANCH_CODE,'
      '  ss.SALE_OBJECT_CODE,'
      '  ss.SALE_SHIPMENT_NO'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[psd.PRODUCT_CODE ~ psd.ST' +
          'ORE_DEAL_BEGIN_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'FIN_ORDER_STATUS[fo2]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'sdt_LEASE'
        ParamType = ptInput
        Value = '2'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SALE_SHIPMENTS_FOR_EDIT'
    Left = 456
    Top = 152
    object qrySaleShipmentsSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySaleShipmentsSHIPMENT_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySaleShipmentsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsSALE_SHIPMENT_NO: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsPLAN_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsSHIPMENT_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_PLAN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsINVOICE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INVOICE_CURRENCY_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsINVOICE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INVOICE_SINGLE_PRICE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsINVOICE_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'INVOICE_TOTAL_PRICE'
      ProviderFlags = []
    end
    object qrySaleShipmentsRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsUPDATE_STATUS: TAbmesFloatField
      FieldName = 'UPDATE_STATUS'
      ProviderFlags = []
    end
    object qrySaleShipmentsPLAN_SECONDARY_VALUE_INVESTED: TAbmesFloatField
      FieldName = 'PLAN_SECONDARY_VALUE_INVESTED'
      ProviderFlags = []
    end
    object qrySaleShipmentsSHIPMENT_OUT_QUANTITY: TAbmesFloatField
      FieldName = 'SHIPMENT_OUT_QUANTITY'
      ProviderFlags = []
    end
    object qrySaleShipmentsSECONDARY_VALUE_INVESTED: TAbmesFloatField
      FieldName = 'SECONDARY_VALUE_INVESTED'
      ProviderFlags = []
    end
    object qrySaleShipmentsPLAN_SECONDARY_CURRENCY_RATE: TAbmesFloatField
      FieldName = 'PLAN_SECONDARY_CURRENCY_RATE'
      ProviderFlags = []
    end
    object qrySaleShipmentsREAL_SECONDARY_CURRENCY_RATE: TAbmesFloatField
      FieldName = 'REAL_SECONDARY_CURRENCY_RATE'
      ProviderFlags = []
    end
    object qrySaleShipmentsCHECK_QUANTITY: TAbmesFloatField
      FieldName = 'CHECK_QUANTITY'
      ProviderFlags = []
    end
    object qrySaleShipmentsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsSHIPMENT_STORE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_STORE_CODE'
      ProviderFlags = []
    end
    object qrySaleShipmentsINVOICE_CURRENCY_FIXING: TAbmesFloatField
      FieldName = 'INVOICE_CURRENCY_FIXING'
      ProviderFlags = []
    end
    object qrySaleShipmentsLEASE_PLAN_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_PLAN_DATE_UNIT_QTY'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsIMPORT_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'IMPORT_PLAN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsIMPORT_DATE: TAbmesSQLTimeStampField
      FieldName = 'IMPORT_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsSHIPMENT_IN_QUANTITY: TAbmesFloatField
      FieldName = 'SHIPMENT_IN_QUANTITY'
      ProviderFlags = []
    end
    object qrySaleShipmentsSHIPMENT_OUT_LAST_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_OUT_LAST_DATE'
      ProviderFlags = []
    end
    object qrySaleShipmentsSHIPMENT_IN_LAST_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_IN_LAST_DATE'
      ProviderFlags = []
    end
    object qrySaleShipmentsRECEIVE_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_PLAN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsRETURN_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_PLAN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleShipmentsSALE_SHIPMENT_STATE_CODE: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_STATE_CODE'
      ProviderFlags = []
    end
    object qrySaleShipmentsFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
      ProviderFlags = []
    end
    object qrySaleShipmentsFO_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FO_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleShipmentsFO_EXEC_DEPT_CODE: TAbmesFloatField
      FieldName = 'FO_EXEC_DEPT_CODE'
      ProviderFlags = []
    end
    object qrySaleShipmentsFO_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'FO_PRIORITY_CODE'
      ProviderFlags = []
    end
    object qrySaleShipmentsFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'FO_WORK_FINANCIAL_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qrySaleShipmentsFO_PARTNER_CODE: TAbmesFloatField
      FieldName = 'FO_PARTNER_CODE'
      ProviderFlags = []
    end
    object qrySaleShipmentsFO_STATUS_CODE: TAbmesFloatField
      FieldName = 'FO_STATUS_CODE'
      ProviderFlags = []
    end
    object qrySaleShipmentsSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
      ProviderFlags = []
    end
    object qrySaleShipmentsFO_IS_COMPLETED: TAbmesFloatField
      FieldName = 'FO_IS_COMPLETED'
      ProviderFlags = []
    end
    object qrySaleShipmentsFO_CLOSE_REQUESTED: TAbmesFloatField
      FieldName = 'FO_CLOSE_REQUESTED'
      ProviderFlags = []
    end
    object qrySaleShipmentsINVOICE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'INVOICE_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleShipmentsINVOICE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_CODE'
      ProviderFlags = []
    end
    object qrySaleShipmentsSHIPMENT_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIPMENT_OBJECT_IDENTIFIER'
      ProviderFlags = []
      Size = 100
    end
    object qrySaleShipmentsCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsSale: TDataSource
    DataSet = qrySale
    Left = 456
    Top = 103
  end
  object qryShipmentPlannedStoreDeals: TAbmesSQLQuery
    DataSource = dsSaleShipments
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  psd.*'
      'from'
      '  PLANNED_STORE_DEALS psd'
      'where'
      
        '  (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :SHIPMENT_OBJECT_BRANCH_' +
        'CODE) and'
      '  (psd.BND_PROCESS_OBJECT_CODE = :SHIPMENT_OBJECT_CODE) and'
      '  (psd.IN_OUT = -1) and'
      '  (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '  (psd.CLOSE_EMPLOYEE_CODE is null)'
      ' '
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PLANNED_STORE_DEALS_FOR_EDIT'
    Left = 456
    Top = 248
    object qryShipmentPlannedStoreDealsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryShipmentPlannedStoreDealsPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryShipmentPlannedStoreDealsPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsSTORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsIS_PLANNED_MANUALLY: TAbmesFloatField
      FieldName = 'IS_PLANNED_MANUALLY'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_BEGIN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_END_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsWORK_ORDER_NO: TAbmesWideStringField
      FieldName = 'WORK_ORDER_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryShipmentPlannedStoreDealsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryShipmentPlannedStoreDealsIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsCOMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_ACCOUNT_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsREMAINING_QUANTITY: TAbmesFloatField
      FieldName = 'REMAINING_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsREMAINING_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'REMAINING_ACCOUNT_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsBRANCH_CODE_WHEN_CLOSED: TAbmesFloatField
      FieldName = 'BRANCH_CODE_WHEN_CLOSED'
      ProviderFlags = [pfInUpdate]
    end
    object qryShipmentPlannedStoreDealsCODE_WHEN_CLOSED: TAbmesFloatField
      FieldName = 'CODE_WHEN_CLOSED'
      ProviderFlags = [pfInUpdate]
    end
  end
  object prvProductionOrder: TDataSetProvider
    DataSet = qryProductionOrder
    Options = [poPropogateChanges]
    OnUpdateError = prvProductionOrderUpdateError
    AfterUpdateRecord = prvProductionOrderAfterUpdateRecord
    BeforeUpdateRecord = prvProductionOrderBeforeUpdateRecord
    BeforeApplyUpdates = prvProductionOrderBeforeApplyUpdates
    AfterApplyUpdates = prvProductionOrderAfterApplyUpdates
    Left = 456
    Top = 304
  end
  object qryProductionOrder: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  s.*,'
      '  sg.SALE_GROUP_BRANCH_CODE,'
      '  sg.SALE_GROUP_CODE,'
      '  sg.PRIORITY_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_COEF,'
      '  s.CHANGE_DATE as SALE_LAST_CHANGE_DATE,'
      '  ml.SPEC_VERSION_NO as MODEL_SPEC_VERSION_NO,'
      '  ml.SPEC_MODEL_VARIANT_NO as MODEL_SPEC_MODEL_VARIANT_NO,'
      '  ml.CREATE_DATE as MODEL_CREATE_DATE,'
      '  ml.ML_OBJECT_BRANCH_CODE,'
      '  ml.ML_OBJECT_CODE,'
      '  ml.IS_OPERATIONS_MODEL,'
      '  %MODEL_OPERATIONS_STATUS[ml] as MODEL_OPERATIONS_STATUS_CODE,'
      '  0.0 as MODEL_ACCOMPLISHMENT_COEF,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = s.SHIPMENT_STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as SHIPMENT_STORE_IDENTIFIER,'
      ''
      '  MiscUtils.GetNamedValue('
      
        '    ModelUtils.ModelInvestedValue2(ml.ML_OBJECT_BRANCH_CODE, ml.' +
        'ML_OBJECT_CODE, 1, 0, 0,'
      '      ('
      '        select'
      '          iv.SECONDARY_CURRENCY_CODE'
      '        from'
      '          INTERNAL_VALUES iv'
      '        where'
      '          (iv.CODE = 1)'
      '      )'
      '    ),'
      '    '#39'VALUE'#39
      '  ) as PLANNED_INVESTED_SEC_PRICE,'
      ''
      '  MiscUtils.GetNamedValue('
      
        '    ModelUtils.ModelInvestedValue2(ml.ML_OBJECT_BRANCH_CODE, ml.' +
        'ML_OBJECT_CODE, 1, 0, 1,'
      '      ('
      '        select'
      '          iv.SECONDARY_CURRENCY_CODE'
      '        from'
      '          INTERNAL_VALUES iv'
      '        where'
      '          (iv.CODE = 1)'
      '      )'
      '    ),'
      '    '#39'VALUE'#39
      '  )  as ACCOUNT_INVESTED_SEC_PRICE,'
      ''
      ''
      '  ssdi.FIRST_OUT_DATE,'
      '  sssi.TOTAL_QUANTITY as SHIPMENT_STORE_CURR_QUANTITY,'
      '  sssi.LAST_SHIPMENT_STORE_IN_DATE,'
      '  psd.PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  psd.PLANNED_STORE_DEAL_CODE,'
      '  psd.PRIORITY_CODE as PSD_PRIORITY_CODE,'
      
        '  dpsd.PLANNED_STORE_DEAL_BRANCH_CODE as DISASSEMBLY_PSD_BRANCH_' +
        'CODE,'
      '  dpsd.PLANNED_STORE_DEAL_CODE as DISASSEMBLY_PSD_CODE,'
      '  d.NAME as PRODUCTION_DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as P' +
        'RODUCTION_DEPT_IDENTIFIER,'
      '  ('
      '    select'
      '      Max(mlms.TOTAL_TREATMENT_WORKDAYS)'
      '    from'
      '      MATERIAL_LISTS ml,'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '      (mll.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as PRODUCTION_WORKDAYS,'
      ''
      '  Nvl2('
      '    ( select'
      '         Min(sd.STORE_DEAL_DATE)'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        STORE_DEALS sd'
      '      where'
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '        (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '        (sd.IN_OUT = -1) and'
      '        (sd.BND_PROCESS_CODE <> 110) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null)'
      '    ),'
      '    %COUNT_WORKDAYS['
      '      ( select'
      '           Min(sd.STORE_DEAL_DATE)'
      '        from'
      '          MATERIAL_LIST_LINES mll,'
      '          STORE_DEALS sd'
      '        where'
      
        '          (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE)' +
        ' and'
      '          (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '          (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '          (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '          (sd.IN_OUT = -1) and'
      '          (sd.BND_PROCESS_CODE <> 110) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null)'
      '      )~'
      '      case'
      '        when'
      '          exists'
      '            ( select'
      '                1'
      '              from'
      '                PLANNED_STORE_DEALS psd'
      '              where'
      
        '                (psd.BND_PROCESS_OBJECT_BRANCH_CODE = ml.BND_PRO' +
        'CESS_OBJECT_BRANCH_CODE) and'
      
        '                (psd.BND_PROCESS_OBJECT_CODE = ml.BND_PROCESS_OB' +
        'JECT_CODE) and'
      '                (psd.PRODUCT_CODE = ml.RESULT_PRODUCT_CODE) and'
      '                (psd.IN_OUT = 1) and'
      '                (psd.IS_PLANNED_MANUALLY = 0) and'
      '                (psd.BND_PROCESS_CODE <> 110) and'
      '                (psd.IS_ACTIVE = 0)'
      '            )'
      '          then'
      '          ( select'
      '              Max(sd.STORE_DEAL_DATE)'
      '            from'
      '              STORE_DEALS sd'
      '            where'
      
        '              (sd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT' +
        '_BRANCH_CODE) and'
      
        '              (sd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) ' +
        'and'
      '              (sd.IN_OUT = 1) and'
      '              (sd.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '      else'
      '        ContextDate'
      '      end'
      '    ],'
      '    null'
      '  ) as REAL_PRODUCTION_WORKDAYS,'
      ''
      '  ('
      '    select'
      '      mlms.TREATMENT_WORKDAYS'
      '    from'
      '      MATERIAL_LISTS ml,'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ANNUL_EMPLOYEE_CODE is null) and'
      '      (mll.NO_1 = 0) and'
      '      (not exists'
      '        ('
      '          select'
      '            1'
      '          from'
      '            ML_MODEL_STAGES mlms2'
      '          where'
      
        '            (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRAN' +
        'CH_CODE) and'
      '            (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      '            (mlms2.ML_MODEL_STAGE_NO > mlms.ML_MODEL_STAGE_NO)'
      '        )'
      '      )'
      '  ) as ENTER_RESULT_STORE_WORKDAYS,'
      ''
      '  %ML_STATE[s~ml] as ML_STATE_CODE,'
      ''
      '  ('
      '    select'
      '      1 - Sign(psd.REMAINING_QUANTITY)'
      '    from'
      '      PLANNED_STORE_DEALS psd'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH' +
        '_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (psd.IN_OUT = 1) and'
      '      (psd.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as IS_FORWARD_AUTO_COMPLETED,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      MATERIAL_LISTS ml,'
      '      MATERIAL_LIST_LINES mll,'
      '      STORE_DEALS sd'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      ''
      '      (sd.IN_OUT = -1) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as HAS_FORWARD_START_STORE_DEALS,'
      ''
      '  Coalesce('
      '    ('
      '      select'
      '        1 - Sign(Sum(psd.REMAINING_QUANTITY))'
      '      from'
      '        MATERIAL_LISTS ml,'
      '        MATERIAL_LIST_LINES mll,'
      '        PLANNED_STORE_DEALS psd'
      '      where'
      
        '        (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '        (mll.MLL_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE) and'
      '        (mll.MLL_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      ''
      '        (mll.IS_FOR_SINGLE_USE = 0) and'
      '        (psd.IN_OUT = 1) and'
      '        (psd.ANNUL_EMPLOYEE_CODE is null)'
      '    ),'
      '    1'
      '  ) as IS_BACKWARD_AUTO_COMPLETED,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (sd.IN_OUT = -1) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as HAS_BACKWARD_START_STORE_DEALS,'
      ''
      
        '  Nvl2(s.WASTING_SALE_OBJ_BRANCH_CODE, 1, 0) as IS_WASTE_COMPENS' +
        'ATING_ORDER,'
      ''
      '  ( select'
      '      Min(sd.STORE_DEAL_DATE)'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      STORE_DEALS sd'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '      (sd.IN_OUT = -1) and'
      '      (sd.BND_PROCESS_CODE <> 110) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as MIN_MLL_STORE_DEAL_DATE,'
      ''
      '  ( select'
      
        '      Min(Sum(psd.COMPLETED_QUANTITY) / Sum(psd.QUANTITY)) as ST' +
        'ART_STAGE_COEF'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      PLANNED_STORE_DEALS psd'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANC' +
        'H_CODE) and'
      '      (mll.MLL_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      '      (psd.IS_PLANNED_MANUALLY = 0) and'
      '      (psd.IN_OUT = -1) and'
      '      (psd.BND_PROCESS_CODE <> 110) and'
      '      (psd.ANNUL_EMPLOYEE_CODE is null)'
      '    group by'
      '      mll.NO_AS_TEXT'
      '  ) as START_STAGE_COEF,'
      ''
      '  ws.SALE_BRANCH_CODE as WASTING_SALE_BRANCH_CODE,'
      '  ws.SALE_NO as WASTING_SALE_NO,'
      '  ws.SALE_ORDER_TYPE_CODE as WASTING_SALE_ORDER_TYPE_CODE,'
      ''
      '  wsml.ML_OBJECT_BRANCH_CODE as WASTING_ML_OJECT_BRANCH_CODE,'
      '  wsml.ML_OBJECT_CODE as WASTING_ML_OJECT_CODE,'
      ''
      '  ml.INITIAL_TREATMENT_WORKDAYS,'
      ''
      '  ( select'
      '      Max('
      '        %COUNT_WORKDAYS['
      '          ( select'
      '              Min(mm.MM_DATE) + 1'
      '            from'
      '              MODEL_MOVEMENTS mm'
      '            where'
      
        '              (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '              (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE)' +
        ' and'
      '              (mm.STORNO_EMPLOYEE_CODE is null) and'
      '              (mm.MM_DATE < mlms.TREATMENT_BEGIN_DATE)'
      '          )~'
      '          mlms.TREATMENT_BEGIN_DATE]'
      '      )'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '  ) as MAX_OP_DATE_POSITIVE_DIFF,'
      ''
      '  ( select'
      '      -Max('
      '        %COUNT_WORKDAYS['
      '          (mlms.TREATMENT_END_DATE + 1)~'
      '          case'
      '            when (ml.CLOSE_EMPLOYEE_CODE is null) and'
      '                 ( MiscUtils.LargeZero('
      '                     mll.LINE_DETAIL_TECH_QUANTITY -'
      '                     ( select'
      
        '                         Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), ' +
        '0)'
      '                       from'
      '                         ML_MODEL_STAGES mlms2,'
      '                         MODEL_MOVEMENTS mm'
      '                       where'
      
        '                         (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.ML' +
        'L_OBJECT_BRANCH_CODE) and'
      
        '                         (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJEC' +
        'T_CODE) and'
      
        '                         (mlms2.ML_MODEL_STAGE_NO <= mlms.ML_MOD' +
        'EL_STAGE_NO) and'
      
        '                         (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms' +
        '2.MLMS_OBJECT_BRANCH_CODE) and'
      
        '                         (mm.FROM_MLMS_OBJECT_CODE = mlms2.MLMS_' +
        'OBJECT_CODE) and'
      '                         (mm.TO_DEPT_CODE is not null) and'
      '                         (mm.STORNO_EMPLOYEE_CODE is null)'
      '                     ) -'
      '                     ( select'
      
        '                         Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), ' +
        '0)'
      '                       from'
      '                         MODEL_MOVEMENTS mm'
      '                       where'
      
        '                         (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms' +
        '.MLMS_OBJECT_BRANCH_CODE) and'
      
        '                         (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_O' +
        'BJECT_CODE) and'
      '                         (mm.TO_DEPT_CODE is null) and'
      '                         (mm.STORNO_EMPLOYEE_CODE is null)'
      '                     )'
      '                   ) > 0'
      '                 ) then ContextDate'
      '          else'
      '            ( select'
      '                Max(mm.MM_DATE)'
      '              from'
      '                MODEL_MOVEMENTS mm'
      '              where'
      
        '                (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_COD' +
        'E) and'
      '                (mm.STORNO_EMPLOYEE_CODE is null) and'
      '                (mm.MM_DATE > mlms.TREATMENT_END_DATE)'
      '            )'
      '          end'
      '        ]'
      '       )'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mlms.TREATMENT_END_DATE < ContextDate) and'
      '      (mlms.OUTGOING_WORKDAYS > 0)'
      '  ) as MIN_OP_DATE_NEGATIVE_DIFF,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SALES wcs'
      '    where'
      
        '      (wcs.WASTING_SALE_OBJ_BRANCH_CODE = s.SALE_OBJECT_BRANCH_C' +
        'ODE) and'
      '      (wcs.WASTING_SALE_OBJ_CODE = s.SALE_OBJECT_CODE)'
      '  ) as WASTE_COMPENSATOR_COUNT,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms,'
      '      MODEL_MOVEMENTS mm'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '      (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '      (mm.TO_DEPT_CODE is not null) and'
      '      (mm.STORNO_EMPLOYEE_CODE is null)'
      '  ) as HAS_WASTE,'
      ''
      '  ( select'
      '       Nvl2(  '
      '         Min(sd.STORE_DEAL_DATE) - ml.LIMITING_DATE,'
      '         Decode(ml.LIMITING_DATE,'
      '           Min(sd.STORE_DEAL_DATE), 0,'
      
        '           CountWorkdays(ml.LIMITING_DATE, (Min(sd.STORE_DEAL_DA' +
        'TE)-1))'
      '         ),'
      '         null'
      '       )'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      STORE_DEALS sd'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '      (sd.IN_OUT = -1) and'
      '      (sd.BND_PROCESS_CODE <> 110) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as START_AFTER_LIMITING_DAYS'
      ''
      'from'
      '  SALES s,'
      '  SALE_GROUPS sg,'
      '  PRODUCTS p,'
      '  MATERIAL_LISTS ml,'
      '  PLANNED_STORE_DEALS psd,'
      '  PLANNED_STORE_DEALS dpsd,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  SALES ws,'
      '  MATERIAL_LISTS wsml,'
      '  ('
      '    select'
      
        '      sd.BND_PROCESS_OBJECT_BRANCH_CODE as SALE_OBJECT_BRANCH_CO' +
        'DE,'
      '      sd.BND_PROCESS_OBJECT_CODE as SALE_OBJECT_CODE,'
      '      Min(sd.STORE_DEAL_DATE) as FIRST_OUT_DATE'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      '      (sd.IN_OUT < 0) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '    group by'
      '      sd.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '      sd.BND_PROCESS_OBJECT_CODE'
      '  ) ssdi,'
      '  ('
      '    select'
      
        '      psd.BND_PROCESS_OBJECT_BRANCH_CODE as SALE_OBJECT_BRANCH_C' +
        'ODE,'
      '      psd.BND_PROCESS_OBJECT_CODE as SALE_OBJECT_CODE,'
      '      psd.STORE_CODE,'
      '      psd.PRODUCT_CODE,'
      '      Sum(sd.QUANTITY * sd.IN_OUT) as TOTAL_QUANTITY,'
      
        '      Max(Decode(Sign(sd.IN_OUT), 1, sd.STORE_DEAL_DATE, null)) ' +
        'as LAST_SHIPMENT_STORE_IN_DATE'
      '    from'
      '      PLANNED_STORE_DEALS psd,'
      '      STORE_DEALS sd'
      '    where'
      
        '      (psd.PLANNED_STORE_DEAL_BRANCH_CODE = sd.PLANNED_STORE_DEA' +
        'L_BRANCH_CODE) and'
      
        '      (psd.PLANNED_STORE_DEAL_CODE = sd.PLANNED_STORE_DEAL_CODE)' +
        ' and'
      '      (psd.IN_OUT > 0) and'
      '      (sd.IN_OUT > 0) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE is not null)'
      '    group by'
      '      psd.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '      psd.BND_PROCESS_OBJECT_CODE,'
      '      psd.STORE_CODE,'
      '      psd.PRODUCT_CODE'
      '  ) sssi'
      ''
      'where'
      
        '  (s.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRANCH' +
        '_CODE) and'
      '  (s.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE) and'
      ''
      '  (s.PRODUCT_CODE = p.PRODUCT_CODE(+)) and'
      ''
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE' +
        '(+)) and'
      '  (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE(+)) and'
      ''
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ssdi.SALE_OBJECT_BRANCH_CODE(+)) ' +
        'and'
      '  (s.SALE_OBJECT_CODE = ssdi.SALE_OBJECT_CODE(+)) and'
      ''
      
        '  (s.SALE_OBJECT_BRANCH_CODE = sssi.SALE_OBJECT_BRANCH_CODE(+)) ' +
        'and'
      '  (s.SALE_OBJECT_CODE = sssi.SALE_OBJECT_CODE(+)) and'
      '  (s.SHIPMENT_STORE_CODE = sssi.STORE_CODE(+)) and'
      '  (s.PRODUCT_CODE = sssi.PRODUCT_CODE(+)) and'
      ''
      
        '  (s.SALE_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANCH_COD' +
        'E(+)) and'
      '  (s.SALE_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE(+)) and'
      '  (psd.IN_OUT(+) = 1) and'
      '  (psd.IS_PLANNED_MANUALLY(+) = 0) and'
      ''
      
        '  (s.SALE_OBJECT_BRANCH_CODE = dpsd.BND_PROCESS_OBJECT_BRANCH_CO' +
        'DE(+)) and'
      '  (s.SALE_OBJECT_CODE = dpsd.BND_PROCESS_OBJECT_CODE(+)) and'
      '  (dpsd.IN_OUT(+) = -1) and'
      '  (dpsd.IS_PLANNED_MANUALLY(+) = 0) and'
      ''
      '  (s.PRODUCTION_DEPT_CODE = d.DEPT_CODE(+)) and'
      ''
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      ''
      
        '  (s.WASTING_SALE_OBJ_BRANCH_CODE = ws.SALE_OBJECT_BRANCH_CODE(+' +
        ')) and'
      '  (s.WASTING_SALE_OBJ_CODE = ws.SALE_OBJECT_CODE(+)) and'
      ''
      
        '  (s.WASTING_SALE_OBJ_BRANCH_CODE = wsml.BND_PROCESS_OBJECT_BRAN' +
        'CH_CODE(+)) and'
      
        '  (s.WASTING_SALE_OBJ_CODE = wsml.BND_PROCESS_OBJECT_CODE(+)) an' +
        'd'
      ''
      '  (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '  (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'MODEL_OPERATIONS_STATUS[ml]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'      ( select'#13#10'           Min(sd.STORE_DEAL_DA' +
          'TE)'#13#10'        from'#13#10'          MATERIAL_LIST_LINES mll,'#13#10'         ' +
          ' STORE_DEALS sd'#13#10'        where'#13#10'          (mll.ML_OBJECT_BRANCH_' +
          'CODE = ml.ML_OBJECT_BRANCH_CODE) and'#13#10'          (mll.ML_OBJECT_C' +
          'ODE = ml.ML_OBJECT_CODE) and'#13#10'          (mll.MLL_OBJECT_BRANCH_C' +
          'ODE = sd.BND_PROCESS_OBJECT_BRANCH_CODE) and'#13#10'          (mll.MLL' +
          '_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'#13#10'          (sd.IN' +
          '_OUT = -1) and'#13#10'          (sd.BND_PROCESS_CODE <> 110) and'#13#10'    ' +
          '      (sd.STORNO_EMPLOYEE_CODE is null)'#13#10'      )~'#13#10'      case'#13#10' ' +
          '       when'#13#10'          exists'#13#10'            ( select'#13#10'           ' +
          '     1'#13#10'              from'#13#10'                PLANNED_STORE_DEALS ' +
          'psd'#13#10'              where'#13#10'                (psd.BND_PROCESS_OBJEC' +
          'T_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE) and'#13#10'        ' +
          '        (psd.BND_PROCESS_OBJECT_CODE = ml.BND_PROCESS_OBJECT_COD' +
          'E) and'#13#10'                (psd.PRODUCT_CODE = ml.RESULT_PRODUCT_CO' +
          'DE) and'#13#10'                (psd.IN_OUT = 1) and'#13#10'                (' +
          'psd.IS_PLANNED_MANUALLY = 0) and'#13#10'                (psd.BND_PROCE' +
          'SS_CODE <> 110) and'#13#10'                (psd.IS_ACTIVE = 0)'#13#10'      ' +
          '      )'#13#10'          then'#13#10'          ( select'#13#10'              Max(s' +
          'd.STORE_DEAL_DATE)'#13#10'            from'#13#10'              STORE_DEALS ' +
          'sd'#13#10'            where'#13#10'              (sd.BND_PROCESS_OBJECT_BRAN' +
          'CH_CODE = s.SALE_OBJECT_BRANCH_CODE) and'#13#10'              (sd.BND_' +
          'PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'#13#10'              (sd' +
          '.IN_OUT = 1) and'#13#10'              (sd.STORNO_EMPLOYEE_CODE is null' +
          ')'#13#10'          )'#13#10'      else'#13#10'        ContextDate'#13#10'      end'#13#10'    ' +
          ']'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'ML_STATE[s~ml]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'          ( select'#13#10'              Min(mm.MM_DAT' +
          'E) + 1'#13#10'            from'#13#10'              MODEL_MOVEMENTS mm'#13#10'    ' +
          '        where'#13#10'              (mm.FROM_MLMS_OBJECT_BRANCH_CODE = ' +
          'mlms.MLMS_OBJECT_BRANCH_CODE) and'#13#10'              (mm.FROM_MLMS_O' +
          'BJECT_CODE = mlms.MLMS_OBJECT_CODE) and'#13#10'              (mm.STORN' +
          'O_EMPLOYEE_CODE is null) and'#13#10'              (mm.MM_DATE < mlms.T' +
          'REATMENT_BEGIN_DATE)'#13#10'          )~'#13#10'          mlms.TREATMENT_BEG' +
          'IN_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'          (mlms.TREATMENT_END_DATE + 1)~'#13#10'     ' +
          '     case'#13#10'            when (ml.CLOSE_EMPLOYEE_CODE is null) and' +
          #13#10'                 ( MiscUtils.LargeZero('#13#10'                     ' +
          'mll.LINE_DETAIL_TECH_QUANTITY -'#13#10'                     ( select'#13#10 +
          '                         Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), ' +
          '0)'#13#10'                       from'#13#10'                         ML_MOD' +
          'EL_STAGES mlms2,'#13#10'                         MODEL_MOVEMENTS mm'#13#10' ' +
          '                      where'#13#10'                         (mlms2.MLL' +
          '_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and'#13#10'        ' +
          '                 (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) ' +
          'and'#13#10'                         (mlms2.ML_MODEL_STAGE_NO <= mlms.M' +
          'L_MODEL_STAGE_NO) and'#13#10'                         (mm.FROM_MLMS_OB' +
          'JECT_BRANCH_CODE = mlms2.MLMS_OBJECT_BRANCH_CODE) and'#13#10'         ' +
          '                (mm.FROM_MLMS_OBJECT_CODE = mlms2.MLMS_OBJECT_CO' +
          'DE) and'#13#10'                         (mm.TO_DEPT_CODE is not null) ' +
          'and'#13#10'                         (mm.STORNO_EMPLOYEE_CODE is null)'#13 +
          #10'                     ) -'#13#10'                     ( select'#13#10'      ' +
          '                   Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)'#13#10'  ' +
          '                     from'#13#10'                         MODEL_MOVEME' +
          'NTS mm'#13#10'                       where'#13#10'                         (' +
          'mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) ' +
          'and'#13#10'                         (mm.FROM_MLMS_OBJECT_CODE = mlms.M' +
          'LMS_OBJECT_CODE) and'#13#10'                         (mm.TO_DEPT_CODE ' +
          'is null) and'#13#10'                         (mm.STORNO_EMPLOYEE_CODE ' +
          'is null)'#13#10'                     )'#13#10'                   ) > 0'#13#10'    ' +
          '             ) then ContextDate'#13#10'          else'#13#10'            ( s' +
          'elect'#13#10'                Max(mm.MM_DATE)'#13#10'              from'#13#10'    ' +
          '            MODEL_MOVEMENTS mm'#13#10'              where'#13#10'           ' +
          '     (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_' +
          'CODE) and'#13#10'                (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS' +
          '_OBJECT_CODE) and'#13#10'                (mm.STORNO_EMPLOYEE_CODE is n' +
          'ull) and'#13#10'                (mm.MM_DATE > mlms.TREATMENT_END_DATE)' +
          #13#10'            )'#13#10'          end'#13#10'        ]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SALES_FOR_EDIT'
    AfterProviderStartTransaction = qryProductionOrderAfterProviderStartTransaction
    Left = 456
    Top = 352
    object qryProductionOrderSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProductionOrderSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProductionOrderSALE_GROUP_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderMANAGER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'MANAGER_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryProductionOrderREQUEST_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_SEND_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_REGISTER_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderOFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_SEND_PLAN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderOFFER_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_SEND_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderOFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_ANSWER_PLAN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderOFFER_ANSWER_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_ANSWER_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderDECISION_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_PLAN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderDECISION_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderDECISION_TYPE_CODE: TAbmesFloatField
      FieldName = 'DECISION_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderOUR_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'OUR_OFFER_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderCL_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'CL_OFFER_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderMANUFACTURE_QUANTITY: TAbmesFloatField
      FieldName = 'MANUFACTURE_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderMANUFACTURE_DECISION_EXPECTED: TAbmesFloatField
      FieldName = 'MANUFACTURE_DECISION_EXPECTED'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderSINGLE_WEIGHT: TAbmesFloatField
      FieldName = 'SINGLE_WEIGHT'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderOUR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'OUR_OFFER_SINGLE_PRICE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderCL_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'CL_OFFER_SINGLE_PRICE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderOUR_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'OUR_OFFER_RECEIVE_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField
      FieldName = 'RECEIVE_PLACE_OFFICE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderIS_VENDOR_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_VENDOR_TRANSPORT'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object qryProductionOrderSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderOKIDU_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OKIDU_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderSOS_OKIDU: TAbmesFloatField
      FieldName = 'SOS_OKIDU'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderSHIPMENT_STORE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_STORE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_SH_STORE_PLAN_END_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderPRODUCTION_DEPT_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_DEPT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderPRODUCTION_DEPT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCTION_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryProductionOrderPRODUCTION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PRODUCTION_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryProductionOrderIS_ML_ENTRUSTED: TAbmesFloatField
      FieldName = 'IS_ML_ENTRUSTED'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderIS_ML_NOT_NEEDED: TAbmesFloatField
      FieldName = 'IS_ML_NOT_NEEDED'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderPRODUCTION_START_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_START_PLAN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryProductionOrderCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryProductionOrderPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryProductionOrderMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      ProviderFlags = []
    end
    object qryProductionOrderACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryProductionOrderSALE_LAST_CHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'SALE_LAST_CHANGE_DATE'
      ProviderFlags = []
    end
    object qryProductionOrderPLANNED_INVESTED_SEC_PRICE: TAbmesFloatField
      FieldName = 'PLANNED_INVESTED_SEC_PRICE'
      ProviderFlags = []
    end
    object qryProductionOrderACCOUNT_INVESTED_SEC_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_INVESTED_SEC_PRICE'
      ProviderFlags = []
    end
    object qryProductionOrderFIRST_OUT_DATE: TAbmesSQLTimeStampField
      FieldName = 'FIRST_OUT_DATE'
      ProviderFlags = []
    end
    object qryProductionOrderSHIPMENT_STORE_CURR_QUANTITY: TAbmesFloatField
      FieldName = 'SHIPMENT_STORE_CURR_QUANTITY'
      ProviderFlags = []
    end
    object qryProductionOrderLAST_SHIPMENT_STORE_IN_DATE: TAbmesSQLTimeStampField
      FieldName = 'LAST_SHIPMENT_STORE_IN_DATE'
      ProviderFlags = []
    end
    object qryProductionOrderPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryProductionOrderPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
      ProviderFlags = []
    end
    object qryProductionOrderPSD_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'PSD_PRIORITY_CODE'
      ProviderFlags = []
    end
    object qryProductionOrderPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryProductionOrderMODEL_SPEC_VERSION_NO: TAbmesFloatField
      FieldName = 'MODEL_SPEC_VERSION_NO'
      ProviderFlags = []
    end
    object qryProductionOrderMODEL_SPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'MODEL_SPEC_MODEL_VARIANT_NO'
      ProviderFlags = []
    end
    object qryProductionOrderMODEL_CREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MODEL_CREATE_DATE'
      ProviderFlags = []
    end
    object qryProductionOrderML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryProductionOrderML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
      ProviderFlags = []
    end
    object qryProductionOrderIS_OPERATIONS_MODEL: TAbmesFloatField
      FieldName = 'IS_OPERATIONS_MODEL'
      ProviderFlags = []
    end
    object qryProductionOrderMODEL_ACCOMPLISHMENT_COEF: TAbmesFloatField
      FieldName = 'MODEL_ACCOMPLISHMENT_COEF'
      ProviderFlags = []
    end
    object qryProductionOrderMANAGER_OKIDU_RANK: TAbmesFloatField
      FieldName = 'MANAGER_OKIDU_RANK'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderSALE_GROUP_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryProductionOrderSALE_GROUP_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_CODE'
      ProviderFlags = []
    end
    object qryProductionOrderPRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'PRODUCTION_WORKDAYS'
      ProviderFlags = []
    end
    object qryProductionOrderENTER_RESULT_STORE_WORKDAYS: TAbmesFloatField
      FieldName = 'ENTER_RESULT_STORE_WORKDAYS'
      ProviderFlags = []
    end
    object qryProductionOrderPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
      ProviderFlags = []
    end
    object qryProductionOrderTRANSIENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'TRANSIENT_STATUS_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderWORKDAYS_TO_EXIST: TAbmesFloatField
      FieldName = 'WORKDAYS_TO_EXIST'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderDISASSEMBLY_PSD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DISASSEMBLY_PSD_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryProductionOrderDISASSEMBLY_PSD_CODE: TAbmesFloatField
      FieldName = 'DISASSEMBLY_PSD_CODE'
      ProviderFlags = []
    end
    object qryProductionOrderMARKET_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'MARKET_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryProductionOrderDISCOUNT_PERCENT: TAbmesFloatField
      FieldName = 'DISCOUNT_PERCENT'
      ProviderFlags = []
    end
    object qryProductionOrderCL_OFFER_QUANTITY_CHG: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_QUANTITY_CHG'
      ProviderFlags = []
    end
    object qryProductionOrderQUANTITY_CHG: TAbmesSQLTimeStampField
      FieldName = 'QUANTITY_CHG'
      ProviderFlags = []
    end
    object qryProductionOrderCL_OFFER_RECEIVE_DATE_CH: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE_CH'
      ProviderFlags = []
    end
    object qryProductionOrderRECEIVE_DATE_CHG: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE_CHG'
      ProviderFlags = []
    end
    object qryProductionOrderDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderML_STATE_CODE: TAbmesFloatField
      FieldName = 'ML_STATE_CODE'
      ProviderFlags = []
    end
    object qryProductionOrderIS_AUTO_COMPLETIVE: TAbmesFloatField
      FieldName = 'IS_AUTO_COMPLETIVE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderIS_FORWARD_AUTO_COMPLETED: TAbmesFloatField
      FieldName = 'IS_FORWARD_AUTO_COMPLETED'
      ProviderFlags = []
    end
    object qryProductionOrderIS_BACKWARD_AUTO_COMPLETED: TAbmesFloatField
      FieldName = 'IS_BACKWARD_AUTO_COMPLETED'
      ProviderFlags = []
    end
    object qryProductionOrderOKIDU_RANK: TAbmesFloatField
      FieldName = 'OKIDU_RANK'
      ProviderFlags = []
    end
    object qryProductionOrderSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIPMENT_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryProductionOrderWASTING_SALE_OBJ_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_OBJ_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderWASTING_SALE_OBJ_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_OBJ_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderIS_WASTE_COMPENSATING_ORDER: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATING_ORDER'
      ProviderFlags = []
    end
    object qryProductionOrderMIN_MLL_STORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_MLL_STORE_DEAL_DATE'
      ProviderFlags = []
    end
    object qryProductionOrderSTART_STAGE_COEF: TAbmesFloatField
      FieldName = 'START_STAGE_COEF'
      ProviderFlags = []
    end
    object qryProductionOrderCONSUMER_DEPT_CODE: TAbmesFloatField
      FieldName = 'CONSUMER_DEPT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderCONSUME_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'CONSUME_BEGIN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderCONSUME_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'CONSUME_END_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderWASTING_SALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryProductionOrderWASTING_SALE_NO: TAbmesFloatField
      FieldName = 'WASTING_SALE_NO'
      ProviderFlags = []
    end
    object qryProductionOrderWASTING_ML_OJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WASTING_ML_OJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryProductionOrderWASTING_ML_OJECT_CODE: TAbmesFloatField
      FieldName = 'WASTING_ML_OJECT_CODE'
      ProviderFlags = []
    end
    object qryProductionOrderMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'INITIAL_TREATMENT_WORKDAYS'
      ProviderFlags = []
    end
    object qryProductionOrderMAX_OP_DATE_POSITIVE_DIFF: TAbmesFloatField
      FieldName = 'MAX_OP_DATE_POSITIVE_DIFF'
      ProviderFlags = []
    end
    object qryProductionOrderMIN_OP_DATE_NEGATIVE_DIFF: TAbmesFloatField
      FieldName = 'MIN_OP_DATE_NEGATIVE_DIFF'
      ProviderFlags = []
    end
    object qryProductionOrderWASTE_COMPENSATOR_COUNT: TAbmesFloatField
      FieldName = 'WASTE_COMPENSATOR_COUNT'
      ProviderFlags = []
    end
    object qryProductionOrderHAS_WASTE: TAbmesFloatField
      FieldName = 'HAS_WASTE'
      ProviderFlags = []
    end
    object qryProductionOrderREAL_PRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'REAL_PRODUCTION_WORKDAYS'
      ProviderFlags = []
    end
    object qryProductionOrderSTART_AFTER_LIMITING_DAYS: TAbmesFloatField
      FieldName = 'START_AFTER_LIMITING_DAYS'
      ProviderFlags = []
    end
    object qryProductionOrderMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField
      FieldName = 'MODEL_OPERATIONS_STATUS_CODE'
      ProviderFlags = []
    end
    object qryProductionOrderWORK_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionOrderHAS_FORWARD_START_STORE_DEALS: TAbmesFloatField
      FieldName = 'HAS_FORWARD_START_STORE_DEALS'
      ProviderFlags = []
    end
    object qryProductionOrderHAS_BACKWARD_START_STORE_DEALS: TAbmesFloatField
      FieldName = 'HAS_BACKWARD_START_STORE_DEALS'
      ProviderFlags = []
    end
    object qryProductionOrderWASTING_SALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_ORDER_TYPE_CODE'
      ProviderFlags = []
    end
  end
  object dsSaleShipments: TDataSource
    DataSet = qrySaleShipments
    Left = 456
    Top = 200
  end
  object qryInsSaleML: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MODEL_SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANUFACTURE_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OKIDU_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTO_LIMITED_DEFAULT_MODELS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTO_LIMITED_DEFAULT_MODELS'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTO_LIMITED_DEFAULT_MODELS'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FINISH_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FINISH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FINISH_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TRANSIENT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORKDAYS_TO_EXIST'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OPERATIONS_MODEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MODEL_SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OPERATIONS_MODEL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into MATERIAL_LISTS_FOR_EDIT'
      '('
      '  ML_OBJECT_BRANCH_CODE,'
      '  ML_OBJECT_CODE,'
      '  BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  BND_PROCESS_OBJECT_CODE,'
      '  MAIN_DEPT_CODE,'
      '  RESULT_PRODUCT_CODE,'
      '  SPEC_VERSION_NO,'
      '  SPEC_MODEL_VARIANT_NO,'
      '  RESULT_STORE_CODE,'
      '  TECH_QUANTITY,'
      '  ENTER_RESULT_STORE_BEGIN_DATE,'
      '  ENTER_RESULT_STORE_END_DATE,'
      '  IS_ARCHIVED,'
      '  OWNER_EMPLOYEE_CODE,'
      '  CREATE_EMPLOYEE_CODE,'
      '  CREATE_DATE,'
      '  CREATE_TIME,'
      '  CHANGE_EMPLOYEE_CODE,'
      '  CHANGE_DATE,'
      '  CHANGE_TIME,'
      '  LIMITING_EMPLOYEE_CODE,'
      '  LIMITING_DATE,'
      '  LIMITING_TIME,'
      '  CLOSE_EMPLOYEE_CODE,'
      '  CLOSE_DATE,'
      '  CLOSE_TIME,'
      '  TRANSIENT_STATUS_CODE,'
      '  WORKDAYS_TO_EXIST,'
      '  IS_OPERATIONS_MODEL'
      ')'
      'select'
      '  :ML_OBJECT_BRANCH_CODE as ML_OBJECT_BRANCH_CODE,'
      '  :ML_OBJECT_CODE as ML_OBJECT_CODE,'
      
        '  :BND_PROCESS_OBJECT_BRANCH_CODE as BND_PROCESS_OBJECT_BRANCH_C' +
        'ODE,'
      '  :BND_PROCESS_OBJECT_CODE as BND_PROCESS_OBJECT_CODE,'
      '  smv.MAIN_DEPT_CODE,'
      '  smv.SPEC_PRODUCT_CODE as RESULT_PRODUCT_CODE,'
      '  sp.SPEC_VERSION_NO,'
      '  :MODEL_SPEC_MODEL_VARIANT_NO as SPEC_MODEL_VARIANT_NO,'
      '  smv.RESULT_STORE_CODE,'
      
        '  (:MANUFACTURE_QUANTITY * p.TECH_MEASURE_COEF) as TECH_QUANTITY' +
        ','
      
        '  :ENTER_SH_STORE_PLAN_BEGIN_DATE as ENTER_RESULT_STORE_BEGIN_DA' +
        'TE,'
      '  :ENTER_SH_STORE_PLAN_END_DATE as ENTER_RESULT_STORE_END_DATE,'
      '  0,'
      '  :OKIDU_EMPLOYEE_CODE as OWNER_EMPLOYEE_CODE,'
      '  :CREATE_EMPLOYEE_CODE as CREATE_EMPLOYEE_CODE,'
      '  :CREATE_DATE as CREATE_DATE,'
      '  :CREATE_TIME as CREATE_TIME,'
      '  :CREATE_EMPLOYEE_CODE as CHANGE_EMPLOYEE_CODE,'
      '  :CREATE_DATE as CHANGE_DATE,'
      '  :CREATE_TIME as CHANGE_TIME,'
      
        '  Decode(:AUTO_LIMITED_DEFAULT_MODELS, 1, :CREATE_EMPLOYEE_CODE,' +
        ' null) as LIMITING_EMPLOYEE_CODE,'
      
        '  Decode(:AUTO_LIMITED_DEFAULT_MODELS, 1, :CREATE_DATE, null) as' +
        ' LIMITING_DATE,'
      
        '  Decode(:AUTO_LIMITED_DEFAULT_MODELS, 1, :CREATE_TIME, null) as' +
        ' LIMITING_TIME,'
      '  :FINISH_EMPLOYEE_CODE as CLOSE_EMPLOYEE_CODE,'
      '  :FINISH_DATE as CLOSE_DATE,'
      '  :FINISH_TIME as CLOSE_TIME,'
      '  :TRANSIENT_STATUS_CODE,'
      '  :WORKDAYS_TO_EXIST,'
      '  :IS_OPERATIONS_MODEL'
      'from'
      '  SPEC_MODEL_VARIANTS smv,'
      '  SPECS sp,'
      '  PRODUCTS p'
      'where'
      '  (smv.SPEC_PRODUCT_CODE = sp.SPEC_PRODUCT_CODE) and'
      '  (sp.SPEC_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (smv.SPEC_PRODUCT_CODE = :PRODUCT_CODE) and'
      '  (smv.SPEC_MODEL_VARIANT_NO = :MODEL_SPEC_MODEL_VARIANT_NO) and'
      ''
      '  (smv.AUTHORIZATION_EMPLOYEE_CODE is not null) and'
      '  (smv.AUTHORIZATION_OF_OPERATIONS >= :IS_OPERATIONS_MODEL)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 328
    Top = 528
  end
  object qryInsSaleMLL: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARENT_MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARENT_MLL_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into MATERIAL_LIST_LINES_FOR_EDIT'
      '('
      '  MLL_OBJECT_BRANCH_CODE,'
      '  MLL_OBJECT_CODE,'
      '  ML_OBJECT_BRANCH_CODE,'
      '  ML_OBJECT_CODE,'
      '  PARENT_MLL_OBJECT_BRANCH_CODE,'
      '  PARENT_MLL_OBJECT_CODE,'
      '  NO_1,'
      '  NO_2,'
      '  NO_3,'
      '  NO_4,'
      '  NO_5,'
      '  NO_6,'
      '  NO_7,'
      '  NO_8,'
      '  NO_9,'
      '  NO_10,'
      '  NO_11,'
      '  NO_12,'
      '  NO_13,'
      '  NO_14,'
      '  NO_15,'
      '  NO_16,'
      '  NO_17,'
      '  NO_18,'
      '  NO_19,'
      '  NO_20,'
      '  NO_21,'
      '  NO_22,'
      '  NO_23,'
      '  NO_24,'
      '  NO_25,'
      '  NO_AS_TEXT,'
      '  NO_AS_FORMATED_TEXT,'
      '  FORK_NO,'
      '  DETAIL_CODE,'
      '  DETAIL_TECH_QUANTITY,'
      '  TOTAL_DETAIL_TECH_QUANTITY,'
      '  LINE_DETAIL_TECH_QUANTITY,'
      '  PRODUCT_CODE,'
      '  PRODUCT_TECH_QUANTITY,'
      '  NOTES,'
      '  CONSTRUCTION_NOTES,'
      '  STORE_CODE,'
      '  PRODUCT_NEED_BEGIN_DATE,'
      '  PRODUCT_NEED_END_DATE,'
      '  IS_FOR_SINGLE_USE,'
      '  APPROVE_CYCLE_NO,'
      '  IS_COMPLETE'
      ')'
      'select'
      '  :MLL_OBJECT_BRANCH_CODE,'
      '  :MLL_OBJECT_CODE,'
      '  :ML_OBJECT_BRANCH_CODE,'
      '  :ML_OBJECT_CODE,'
      '  :PARENT_MLL_OBJECT_BRANCH_CODE,'
      '  :PARENT_MLL_OBJECT_CODE,'
      '  spl.NO_1,'
      '  spl.NO_2,'
      '  spl.NO_3,'
      '  spl.NO_4,'
      '  spl.NO_5,'
      '  spl.NO_6,'
      '  spl.NO_7,'
      '  spl.NO_8,'
      '  spl.NO_9,'
      '  spl.NO_10,'
      '  spl.NO_11,'
      '  spl.NO_12,'
      '  spl.NO_13,'
      '  spl.NO_14,'
      '  spl.NO_15,'
      '  spl.NO_16,'
      '  spl.NO_17,'
      '  spl.NO_18,'
      '  spl.NO_19,'
      '  spl.NO_20,'
      '  spl.NO_21,'
      '  spl.NO_22,'
      '  spl.NO_23,'
      '  spl.NO_24,'
      '  spl.NO_25,'
      '  spl.NO_AS_TEXT,'
      '  spl.NO_AS_FORMATED_TEXT,'
      '  0 as FORK_NO,'
      '  spl.DETAIL_CODE,'
      '  spl.DETAIL_TECH_QUANTITY,'
      
        '  (spl.TOTAL_DETAIL_TECH_QUANTITY * s.MANUFACTURE_QUANTITY * p.T' +
        'ECH_MEASURE_COEF) as TOTAL_DETAIL_TECH_QUANTITY,'
      
        '  (spl.TOTAL_DETAIL_TECH_QUANTITY * s.MANUFACTURE_QUANTITY * p.T' +
        'ECH_MEASURE_COEF) as LINE_DETAIL_TECH_QUANTITY,'
      ''
      '  case'
      
        '    when (spl.NO_1 > 0) and (d.IS_PRODUCTION_PRODUCT = 1) then s' +
        'pl.DETAIL_CODE'
      '  else'
      '    spl.PRODUCT_CODE'
      '  end as PRODUCT_CODE,'
      ''
      '  case'
      '    when (spl.NO_1 > 0) and (d.IS_PRODUCTION_PRODUCT = 1) then 1'
      '  else'
      '    spl.PRODUCT_TECH_QUANTITY'
      '  end as PRODUCT_TECH_QUANTITY,'
      ''
      '  spl.NOTES,'
      '  spl.CONSTRUCTION_NOTES,'
      ''
      '  case'
      
        '    when (spl.NO_1 > 0) and (d.IS_PRODUCTION_PRODUCT = 1) then s' +
        '.SHIPMENT_STORE_CODE'
      '  else'
      '    Nvl2(spl.PRODUCT_CODE, s.SHIPMENT_STORE_CODE, null)'
      '  end as STORE_CODE,'
      ''
      '  case'
      
        '    when (spl.NO_1 > 0) and (d.IS_PRODUCTION_PRODUCT = 1) then s' +
        '.PRODUCTION_START_PLAN_DATE'
      '  else'
      '    Nvl2(spl.PRODUCT_CODE, s.PRODUCTION_START_PLAN_DATE, null)'
      '  end as PRODUCT_NEED_BEGIN_DATE,'
      ''
      '  case'
      
        '    when (spl.NO_1 > 0) and (d.IS_PRODUCTION_PRODUCT = 1) then s' +
        '.PRODUCTION_START_PLAN_DATE'
      '  else'
      '    Nvl2(spl.PRODUCT_CODE, s.PRODUCTION_START_PLAN_DATE, null)'
      '  end as PRODUCT_NEED_END_DATE,'
      ''
      '  case'
      
        '    when (spl.NO_1 > 0) and (d.IS_PRODUCTION_PRODUCT = 1) then s' +
        'pl.IS_FOR_SINGLE_USE'
      '  else'
      
        '    Decode(spl.PRODUCT_CODE, spl.DETAIL_CODE, spl.IS_FOR_SINGLE_' +
        'USE, null, 0, 1)'
      '  end as IS_FOR_SINGLE_USE,'
      ''
      '  ('
      '    select'
      '      smvl.APPROVE_CYCLE_NO'
      '    from'
      '      SPEC_MODEL_VARIANT_LINES smvl'
      '    where'
      '      (smvl.SPEC_PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '      (smvl.SPEC_LINE_CODE = spl.SPEC_LINE_CODE) and'
      '      (smvl.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO)'
      '  ) as APPROVE_CYCLE_NO,'
      ''
      '  spl.IS_COMPLETE'
      ''
      'from'
      '  SALES s,'
      '  SPEC_LINES spl,'
      '  PRODUCTS p,'
      '  PRODUCTS d'
      'where'
      '  (spl.DETAIL_CODE = d.PRODUCT_CODE) and'
      '  (spl.SPEC_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '  (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      '  (spl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (spl.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      ''
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        SPEC_LINES spl2,'
      '        PRODUCTS dp2'
      '      where'
      '        (spl2.SPEC_PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      ''
      '        (spl2.DETAIL_CODE = dp2.PRODUCT_CODE) and'
      ''
      '        (spl2.NO_1 > 0) and'
      
        '        (spl.NO_AS_FORMATED_TEXT like (spl2.NO_AS_FORMATED_TEXT ' +
        '|| '#39'%'#39')) and'
      
        '        (spl2.NO_AS_FORMATED_TEXT <> spl.NO_AS_FORMATED_TEXT) an' +
        'd'
      '        (dp2.IS_PRODUCTION_PRODUCT = 1)'
      '    )'
      '  )'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 552
  end
  object qrySaleSpecLines: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  spl.SPEC_PRODUCT_CODE,'
      '  To_Number(:SPEC_MODEL_VARIANT_NO) as SPEC_MODEL_VARIANT_NO, '
      '  spl.SPEC_LINE_CODE,'
      '  spl.NO_1,'
      '  spl.NO_2,'
      '  spl.NO_3,'
      '  spl.NO_4,'
      '  spl.NO_5,'
      '  spl.NO_6,'
      '  spl.NO_7,'
      '  spl.NO_8,'
      '  spl.NO_9,'
      '  spl.NO_10,'
      '  spl.NO_11,'
      '  spl.NO_12,'
      '  spl.NO_13,'
      '  spl.NO_14,'
      '  spl.NO_15,'
      '  spl.NO_16,'
      '  spl.NO_17,'
      '  spl.NO_18,'
      '  spl.NO_19,'
      '  spl.NO_20,'
      '  spl.NO_21,'
      '  spl.NO_22,'
      '  spl.NO_23,'
      '  spl.NO_24,'
      '  spl.NO_25,'
      '  spl.NO_AS_TEXT,'
      '  spl.NO_AS_FORMATED_TEXT,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      
        '  (Nvl2(spl.PRODUCT_CODE, 1, 0) * Nvl2(p.ACCOUNT_MEASURE_COEF, 0' +
        ', 1)) as NO_ACCOUNT_MEASURE_COEF,'
      
        '  (Nvl2(spl.PRODUCT_CODE, 1, 0) * Nvl2(p.TECH_MEASURE_COEF, 0, 1' +
        ')) as NO_TECH_MEASURE_COEF,'
      '  d.IS_PRODUCTION_PRODUCT as DETAIL_IS_PRODUCTION_PRODUCT,'
      '  spl.DETAIL_CODE,'
      '  d.NAME as DETAIL_NAME,'
      '  d.CUSTOM_CODE as DETAIL_NO,'
      
        '  (Nvl2(d.ACCOUNT_MEASURE_COEF, 0, 1)) as D_NO_ACCOUNT_MEASURE_C' +
        'OEF,'
      '  (Nvl2(d.TECH_MEASURE_COEF, 0, 1)) as D_NO_TECH_MEASURE_COEF'
      ''
      'from'
      '  SALES s,'
      '  SPEC_LINES spl,'
      '  PRODUCTS p,'
      '  PRODUCTS d'
      ''
      'where'
      '  (s.PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '  (spl.PRODUCT_CODE = p.PRODUCT_CODE(+)) and'
      '  (spl.DETAIL_CODE = d.PRODUCT_CODE) and'
      '  (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '  (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      ''
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        SPEC_LINES spl2,'
      '        PRODUCTS dp2'
      '      where'
      '        (spl2.SPEC_PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      ''
      '        (spl2.DETAIL_CODE = dp2.PRODUCT_CODE) and'
      ''
      '        (spl2.NO_1 > 0) and'
      
        '        (spl.NO_AS_FORMATED_TEXT like (spl2.NO_AS_FORMATED_TEXT ' +
        '|| '#39'%'#39')) and'
      
        '        (spl2.NO_AS_FORMATED_TEXT <> spl.NO_AS_FORMATED_TEXT) an' +
        'd'
      '        (dp2.IS_PRODUCTION_PRODUCT = 1)'
      '    )'
      '  )'
      ''
      'order by'
      '  spl.NO_AS_FORMATED_TEXT'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 664
    Top = 344
    object qrySaleSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qrySaleSpecLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qrySaleSpecLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qrySaleSpecLinesNO_1: TAbmesFloatField
      FieldName = 'NO_1'
    end
    object qrySaleSpecLinesNO_2: TAbmesFloatField
      FieldName = 'NO_2'
    end
    object qrySaleSpecLinesNO_3: TAbmesFloatField
      FieldName = 'NO_3'
    end
    object qrySaleSpecLinesNO_4: TAbmesFloatField
      FieldName = 'NO_4'
    end
    object qrySaleSpecLinesNO_5: TAbmesFloatField
      FieldName = 'NO_5'
    end
    object qrySaleSpecLinesNO_6: TAbmesFloatField
      FieldName = 'NO_6'
    end
    object qrySaleSpecLinesNO_7: TAbmesFloatField
      FieldName = 'NO_7'
    end
    object qrySaleSpecLinesNO_8: TAbmesFloatField
      FieldName = 'NO_8'
    end
    object qrySaleSpecLinesNO_9: TAbmesFloatField
      FieldName = 'NO_9'
    end
    object qrySaleSpecLinesNO_10: TAbmesFloatField
      FieldName = 'NO_10'
    end
    object qrySaleSpecLinesNO_11: TAbmesFloatField
      FieldName = 'NO_11'
    end
    object qrySaleSpecLinesNO_12: TAbmesFloatField
      FieldName = 'NO_12'
    end
    object qrySaleSpecLinesNO_13: TAbmesFloatField
      FieldName = 'NO_13'
    end
    object qrySaleSpecLinesNO_14: TAbmesFloatField
      FieldName = 'NO_14'
    end
    object qrySaleSpecLinesNO_15: TAbmesFloatField
      FieldName = 'NO_15'
    end
    object qrySaleSpecLinesNO_16: TAbmesFloatField
      FieldName = 'NO_16'
    end
    object qrySaleSpecLinesNO_17: TAbmesFloatField
      FieldName = 'NO_17'
    end
    object qrySaleSpecLinesNO_18: TAbmesFloatField
      FieldName = 'NO_18'
    end
    object qrySaleSpecLinesNO_19: TAbmesFloatField
      FieldName = 'NO_19'
    end
    object qrySaleSpecLinesNO_20: TAbmesFloatField
      FieldName = 'NO_20'
    end
    object qrySaleSpecLinesNO_21: TAbmesFloatField
      FieldName = 'NO_21'
    end
    object qrySaleSpecLinesNO_22: TAbmesFloatField
      FieldName = 'NO_22'
    end
    object qrySaleSpecLinesNO_23: TAbmesFloatField
      FieldName = 'NO_23'
    end
    object qrySaleSpecLinesNO_24: TAbmesFloatField
      FieldName = 'NO_24'
    end
    object qrySaleSpecLinesNO_25: TAbmesFloatField
      FieldName = 'NO_25'
    end
    object qrySaleSpecLinesNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qrySaleSpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object qrySaleSpecLinesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qrySaleSpecLinesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qrySaleSpecLinesNO_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'NO_ACCOUNT_MEASURE_COEF'
      FieldValueType = fvtBoolean
    end
    object qrySaleSpecLinesNO_TECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'NO_TECH_MEASURE_COEF'
      FieldValueType = fvtBoolean
    end
    object qrySaleSpecLinesDETAIL_IS_PRODUCTION_PRODUCT: TAbmesFloatField
      FieldName = 'DETAIL_IS_PRODUCTION_PRODUCT'
      FieldValueType = fvtBoolean
    end
    object qrySaleSpecLinesDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qrySaleSpecLinesDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qrySaleSpecLinesDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qrySaleSpecLinesD_NO_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'D_NO_ACCOUNT_MEASURE_COEF'
      FieldValueType = fvtBoolean
    end
    object qrySaleSpecLinesD_NO_TECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'D_NO_TECH_MEASURE_COEF'
      FieldValueType = fvtBoolean
    end
  end
  object qrySpecModelVariants: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZATION_OF_OPERATIONS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smv.SPEC_MODEL_VARIANT_NO,'
      '  smv.MAIN_DEPT_CODE,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as M' +
        'AIN_DEPT_IDENTIFIER,'
      '  smv.MIN_TECH_QUANTITY,'
      '  smv.MAX_TECH_QUANTITY,'
      
        '  (smv.MIN_TECH_QUANTITY / p.TECH_MEASURE_COEF) as MIN_WORK_QUAN' +
        'TITY,'
      
        '  (smv.MAX_TECH_QUANTITY / p.TECH_MEASURE_COEF) as MAX_WORK_QUAN' +
        'TITY,'
      '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER ||'
      
        '   '#39'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'#39') as MODEL_VAR' +
        'IANT_IDENTIFIER,'
      '  sp.SPEC_VERSION_NO,'
      '  ('
      '    select'
      '      Max(smvs.TOTAL_TREATMENT_WORKDAYS) as PRODUCTION_WORKDAYS'
      '    from'
      '      SPEC_MODEL_VARIANT_STAGES smvs'
      '    where'
      '      (smv.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      '      (smv.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARIANT_NO)'
      '  ) as PRODUCTION_WORKDAYS,'
      '  ('
      '    select'
      '      smvs.TREATMENT_WORKDAYS'
      '    from'
      '      SPEC_MODEL_VARIANT_STAGES smvs,'
      '      SPEC_LINES spl'
      '    where'
      '      (smv.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      
        '      (smv.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARIANT_NO) a' +
        'nd'
      '      (smvs.SPEC_PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '      (smvs.SPEC_LINE_CODE = spl.SPEC_LINE_CODE) and'
      '      (spl.NO_1 = 0) and'
      '      (smvs.SPEC_LINE_STAGE_NO ='
      '        ('
      '          select'
      '            Max(smvs2.SPEC_LINE_STAGE_NO)'
      '          from'
      '            SPEC_MODEL_VARIANT_STAGES smvs2,'
      '            SPEC_LINES spl2'
      '          where'
      
        '            (smvs.SPEC_PRODUCT_CODE = smvs2.SPEC_PRODUCT_CODE) a' +
        'nd'
      
        '            (smvs.SPEC_MODEL_VARIANT_NO = smvs2.SPEC_MODEL_VARIA' +
        'NT_NO) and'
      
        '            (smvs2.SPEC_PRODUCT_CODE = spl2.SPEC_PRODUCT_CODE) a' +
        'nd'
      '            (smvs2.SPEC_LINE_CODE = spl2.SPEC_LINE_CODE) and'
      '            (spl2.NO_1 = 0)'
      '        )'
      '      )'
      '  ) as ENTER_RESULT_STORE_WORKDAYS,'
      '  smv.RESULT_STORE_CODE,'
      '  smv.NOTES,'
      ''
      '  ( select'
      '      ppsmv.IS_EST_VARIANT'
      '    from'
      '      PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '      PRODUCT_PERIODS pper'
      '    where'
      '      (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      
        '      (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIANT_NO) ' +
        'and'
      ''
      '      (ppsmv.PRODUCT_CODE = pper.PRODUCT_CODE) and'
      '      (ppsmv.PRODUCT_PERIOD_CODE = pper.PRODUCT_PERIOD_CODE) and'
      '      (:TO_DATE between pper.BEGIN_DATE and pper.END_DATE)'
      '  ) as IS_EST_VARIANT'
      ''
      'from'
      '  SPEC_MODEL_VARIANTS smv,'
      '  SPECS sp,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  PRODUCTS p'
      'where'
      '  (sp.SPEC_PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      ''
      '  (smv.MAIN_DEPT_CODE = d.DEPT_CODE) and'
      ''
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      ''
      '  (smv.SPEC_PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (smv.AUTHORIZATION_EMPLOYEE_CODE is not null) and'
      '  (sp.AUTHORIZATION_EMPLOYEE_CODE is not null) and'
      ''
      
        '  (smv.AUTHORIZATION_OF_OPERATIONS >= :AUTHORIZATION_OF_OPERATIO' +
        'NS) and'
      '  (smv.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      ''
      '  (sp.SPEC_TYPE_CODE = 2) and'
      '  (smv.IS_INACTIVE = 0) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '      PRODUCT_PERIODS pper'
      '    where'
      '      (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      
        '      (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIANT_NO) ' +
        'and'
      ''
      '      (ppsmv.PRODUCT_CODE = pper.PRODUCT_CODE) and'
      '      (ppsmv.PRODUCT_PERIOD_CODE = pper.PRODUCT_PERIOD_CODE) and'
      '      (:TO_DATE between pper.BEGIN_DATE and pper.END_DATE)'
      '  )'
      '  '
      'order by'
      '  smv.SPEC_MODEL_VARIANT_NO'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 656
    Top = 80
    object qrySpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qrySpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object qrySpecModelVariantsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      Size = 46
    end
    object qrySpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_TECH_QUANTITY'
    end
    object qrySpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_TECH_QUANTITY'
    end
    object qrySpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MODEL_VARIANT_IDENTIFIER'
      Size = 91
    end
    object qrySpecModelVariantsSPEC_VERSION_NO: TAbmesFloatField
      FieldName = 'SPEC_VERSION_NO'
    end
    object qrySpecModelVariantsPRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'PRODUCTION_WORKDAYS'
    end
    object qrySpecModelVariantsENTER_RESULT_STORE_WORKDAYS: TAbmesFloatField
      FieldName = 'ENTER_RESULT_STORE_WORKDAYS'
    end
    object qrySpecModelVariantsRESULT_STORE_CODE: TAbmesFloatField
      FieldName = 'RESULT_STORE_CODE'
    end
    object qrySpecModelVariantsMIN_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_WORK_QUANTITY'
    end
    object qrySpecModelVariantsMAX_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_WORK_QUANTITY'
    end
    object qrySpecModelVariantsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qrySpecModelVariantsIS_EST_VARIANT: TAbmesFloatField
      FieldName = 'IS_EST_VARIANT'
    end
  end
  object prvSpecModelVariants: TDataSetProvider
    DataSet = qrySpecModelVariants
    OnGetData = prvSpecModelVariantsGetData
    Left = 656
    Top = 32
  end
  object qryCheckValidModel: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MODEL_SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smv.SPEC_MODEL_VARIANT_NO'
      '  '
      'from'
      '  PRODUCT_PERIODS pp,'
      '  PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '  SPEC_MODEL_VARIANTS smv'
      '  '
      'where'
      '  (pp.PRODUCT_CODE = ppsmv.PRODUCT_CODE) and'
      '  (pp.PRODUCT_PERIOD_CODE = ppsmv.PRODUCT_PERIOD_CODE) and'
      '  '
      '  (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      '  (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIANT_NO) and'
      ''
      '  (pp.PRODUCT_CODE = :PRODUCT_CODE) and'
      
        '  (:ENTER_SH_STORE_PLAN_END_DATE between pp.BEGIN_DATE and pp.EN' +
        'D_DATE) and'
      '  '
      '  (smv.SPEC_MODEL_VARIANT_NO = :MODEL_SPEC_MODEL_VARIANT_NO) and'
      '  (smv.AUTHORIZATION_EMPLOYEE_CODE is not null)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 272
    Top = 477
    object qryCheckValidModelSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
  end
  object dsSaleSpecLines: TDataSource
    DataSet = qrySaleSpecLines
    Left = 664
    Top = 392
  end
  object qrySpecLineStages: TAbmesSQLQuery
    DataSource = dsSaleSpecLines
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smvs.SPEC_PRODUCT_CODE,'
      '  smvs.SPEC_MODEL_VARIANT_NO,'
      '  smvs.SPEC_LINE_CODE,'
      '  smvs.SPEC_LINE_STAGE_CODE,'
      '  smvs.SPEC_LINE_STAGE_NO,'
      '  smvs.DEPT_CODE,'
      '  smvs.TREATMENT_WORKDAYS,'
      '  Decode(smvs.TREATMENT_WORKDAYS,'
      '    0,'
      '    ( select'
      '        psmvs.TOTAL_TREATMENT_WORKDAYS'
      '      from'
      '        SPEC_MODEL_VARIANT_STAGES psmvs'
      '      where'
      '        (psmvs.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      
        '        (psmvs.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) a' +
        'nd'
      '        (psmvs.SPEC_LINE_CODE = spl.PARENT_SPEC_LINE_CODE) and'
      '        (psmvs.SPEC_LINE_STAGE_NO = 1)'
      '    ),'
      '    smvs.TOTAL_TREATMENT_WORKDAYS'
      '  ) as TOTAL_TREATMENT_WORKDAYS,'
      '  smvs.OUTGOING_WORKDAYS,'
      '  smvs.IS_AUTO_MOVEMENT,'
      '  smvs.DOC_CODE,'
      '  smvs.DOC_BRANCH_CODE,'
      '  smvs.SMVS_TYPE_CODE,'
      '  smvs.EXTERNAL_WORK_PRICE,'
      
        '  Max(smvs.SPEC_LINE_STAGE_NO) over (partition by smvs.SPEC_LINE' +
        '_CODE) as LAST_STAGE_NO,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SPEC_MODEL_VARIANT_STAGES smvs2'
      '    where'
      '      (smvs2.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      
        '      (smvs2.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARIANT_NO)' +
        ' and'
      '      (smvs2.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      '      ( (smvs2.SMVS_TYPE_CODE = 3) or'
      '        (smvs2.SPEC_LINE_STAGE_NO in'
      '          ('
      '            select'
      '              Max(smvs3.SPEC_LINE_STAGE_NO)'
      '            from'
      '              SPEC_MODEL_VARIANT_STAGES smvs3'
      '            where'
      
        '              (smvs3.SPEC_PRODUCT_CODE = smvs2.SPEC_PRODUCT_CODE' +
        ') and'
      
        '              (smvs3.SPEC_MODEL_VARIANT_NO = smvs2.SPEC_MODEL_VA' +
        'RIANT_NO) and'
      '              (smvs3.SPEC_LINE_CODE = smvs2.SPEC_LINE_CODE)'
      '          )'
      '        )'
      '      )'
      '  ) as TRUNC_SMVS_TYPE_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SPEC_MODEL_VARIANT_STAGES smvs2'
      '    where'
      '      (smvs2.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      
        '      (smvs2.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARIANT_NO)' +
        ' and'
      '      (smvs2.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      '      (smvs2.SMVS_TYPE_CODE = 2)'
      '  ) as ROW_ZERO_SMVS_TYPE_COUNT'
      ''
      'from'
      '  SPEC_MODEL_VARIANT_STAGES smvs,'
      '  SPEC_LINES spl'
      ''
      'where'
      '  (smvs.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvs.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      ''
      '  (smvs.SPEC_PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '  (smvs.SPEC_LINE_CODE = spl.SPEC_LINE_CODE) and'
      ''
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        SPEC_LINES spl2,'
      '        PRODUCTS dp2'
      '      where'
      '        (spl2.SPEC_PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      ''
      '        (spl2.DETAIL_CODE = dp2.PRODUCT_CODE) and'
      ''
      '        (spl2.NO_1 > 0) and'
      
        '        (spl.NO_AS_FORMATED_TEXT like (spl2.NO_AS_FORMATED_TEXT ' +
        '|| '#39'%'#39')) and'
      
        '        (spl2.NO_AS_FORMATED_TEXT <> spl.NO_AS_FORMATED_TEXT) an' +
        'd'
      '        (dp2.IS_PRODUCTION_PRODUCT = 1)'
      '    )'
      '  )'
      ''
      'order by'
      '  smvs.SPEC_LINE_CODE desc,'
      '  smvs.SPEC_LINE_STAGE_NO desc')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 144
    Top = 552
    object qrySpecLineStagesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qrySpecLineStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qrySpecLineStagesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qrySpecLineStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object qrySpecLineStagesSPEC_LINE_STAGE_NO: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_NO'
    end
    object qrySpecLineStagesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qrySpecLineStagesTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object qrySpecLineStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TOTAL_TREATMENT_WORKDAYS'
    end
    object qrySpecLineStagesOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object qrySpecLineStagesIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
    end
    object qrySpecLineStagesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qrySpecLineStagesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qrySpecLineStagesSMVS_TYPE_CODE: TAbmesFloatField
      FieldName = 'SMVS_TYPE_CODE'
    end
    object qrySpecLineStagesTRUNC_SMVS_TYPE_COUNT: TAbmesFloatField
      FieldName = 'TRUNC_SMVS_TYPE_COUNT'
    end
    object qrySpecLineStagesLAST_STAGE_NO: TAbmesFloatField
      FieldName = 'LAST_STAGE_NO'
    end
    object qrySpecLineStagesEXTERNAL_WORK_PRICE: TAbmesFloatField
      FieldName = 'EXTERNAL_WORK_PRICE'
    end
    object qrySpecLineStagesROW_ZERO_SMVS_TYPE_COUNT: TAbmesFloatField
      FieldName = 'ROW_ZERO_SMVS_TYPE_COUNT'
    end
  end
  object qryInsMLModelStage: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEW_DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_MODEL_STAGE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TREATMENT_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_TREATMENT_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OUTGOING_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_AUTO_MOVEMENT'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_RESULT_STORE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_TREATMENT_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_RESULT_STORE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_TREATMENT_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TREATMENT_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEW_DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXTERNAL_WORK_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEW_DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEW_DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INSERT_OPERATIONS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_STAGE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INSERT_OPERATIONS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_STAGE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'ML_MODEL_STAGE_NOTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INSERT_OPERATIONS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  insert into DOCS_FOR_EDIT'
      '  ('
      '    DOC_BRANCH_CODE,'
      '    DOC_CODE,'
      '    DOC_EMPTINESS_REQUIREMENT_CODE,'
      '    IS_COMPLETE'
      '  )'
      '  select'
      '    :MLMS_OBJECT_BRANCH_CODE as DOC_BRANCH_CODE,'
      '    :NEW_DOC_CODE as DOC_CODE,'
      '    d.DOC_EMPTINESS_REQUIREMENT_CODE,'
      '    d.IS_COMPLETE'
      '  from'
      '    DOCS d'
      '  where'
      '    (d.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '    (d.DOC_CODE = :DOC_CODE)'
      '  ;'
      ''
      '  insert into ML_MODEL_STAGES_FOR_EDIT'
      '  ('
      '    MLMS_OBJECT_BRANCH_CODE,'
      '    MLMS_OBJECT_CODE,'
      '    MLL_OBJECT_BRANCH_CODE,'
      '    MLL_OBJECT_CODE,'
      '    ML_MODEL_STAGE_NO,'
      '    DEPT_CODE,'
      '    TREATMENT_WORKDAYS,'
      '    TOTAL_TREATMENT_WORKDAYS,'
      '    OUTGOING_WORKDAYS,'
      '    IS_AUTO_MOVEMENT,'
      '    TREATMENT_BEGIN_DATE,'
      '    TREATMENT_END_DATE,'
      '    DOC_BRANCH_CODE,'
      '    DOC_CODE,'
      '    EXTERNAL_WORK_PRICE'
      '  )'
      '  values'
      '  ( '
      '    :MLMS_OBJECT_BRANCH_CODE,'
      '    :MLMS_OBJECT_CODE,'
      '    :MLL_OBJECT_BRANCH_CODE,'
      '    :MLL_OBJECT_CODE,'
      '    :ML_MODEL_STAGE_NO,'
      '    :DEPT_CODE,'
      '    :TREATMENT_WORKDAYS,'
      '    :TOTAL_TREATMENT_WORKDAYS,'
      '    :OUTGOING_WORKDAYS,'
      '    :IS_AUTO_MOVEMENT,'
      
        '    %INC_DATE_BY_WORKDAYS[(:ENTER_RESULT_STORE_END_DATE + 1)~(- ' +
        ':TOTAL_TREATMENT_WORKDAYS)],'
      
        '    %INC_DATE_BY_WORKDAYS[(:ENTER_RESULT_STORE_END_DATE + 1)~(- ' +
        ':TOTAL_TREATMENT_WORKDAYS + Greatest(:TREATMENT_WORKDAYS, 1) - 1' +
        ')],'
      '    Nvl2(:DOC_CODE, :MLMS_OBJECT_BRANCH_CODE, null),'
      '    Nvl2(:DOC_CODE, :NEW_DOC_CODE, null),'
      '    :EXTERNAL_WORK_PRICE'
      '  )'
      '  ;'
      ''
      '  insert into DOC_ITEMS_FOR_EDIT'
      '  ('
      '    DOC_BRANCH_CODE,'
      '    DOC_CODE,'
      '    DOC_ITEM_CODE,'
      '    DOC_ITEM_NO,'
      '    DOC_ITEM_NAME,'
      '    DOC_ITEM_TYPE_CODE,'
      '    IS_INACTIVE,'
      '    NOTES,'
      '    CREATE_EMPLOYEE_CODE,'
      '    CREATE_DATE,'
      '    CREATE_TIME,'
      '    CHANGE_EMPLOYEE_CODE,'
      '    CHANGE_DATE,'
      '    CHANGE_TIME,'
      '    DEVELOP_EMPLOYEE_CODE,'
      '    DEVELOP_DATE,'
      '    DEVELOP_TIME,'
      '    AUTHORIZE_EMPLOYEE_CODE,'
      '    AUTHORIZE_DATE,'
      '    AUTHORIZE_TIME,'
      '    APPROVE_EMPLOYEE_CODE,'
      '    APPROVE_DATE,'
      '    APPROVE_TIME,'
      '    DOC_ITEM_STORAGE_TYPE_CODE,'
      '    FILE_NAME,'
      '    RELATIVE_PATH,'
      '    STORED_FILE_BRANCH_CODE,'
      '    STORED_FILE_CODE,'
      '    IS_MIRRORED,'
      '    MIRRORED_FILE_NAME,'
      '    MIRRORED_RELATIVE_PATH,'
      '    FILE_CHANGE_EMPLOYEE_CODE,'
      '    FILE_CHANGE_DATE,'
      '    FILE_CHANGE_TIME'
      '  )'
      '  select'
      '    :MLMS_OBJECT_BRANCH_CODE as DOC_BRANCH_CODE,'
      '    :NEW_DOC_CODE as DOC_CODE,'
      '    di.DOC_ITEM_CODE,'
      '    di.DOC_ITEM_NO,'
      '    di.DOC_ITEM_NAME,'
      '    di.DOC_ITEM_TYPE_CODE,'
      '    di.IS_INACTIVE,'
      '    di.NOTES,'
      '    di.CREATE_EMPLOYEE_CODE,'
      '    di.CREATE_DATE,'
      '    di.CREATE_TIME,'
      '    di.CHANGE_EMPLOYEE_CODE,'
      '    di.CHANGE_DATE,'
      '    di.CHANGE_TIME,'
      '    di.DEVELOP_EMPLOYEE_CODE,'
      '    di.DEVELOP_DATE,'
      '    di.DEVELOP_TIME,'
      '    di.AUTHORIZE_EMPLOYEE_CODE,'
      '    di.AUTHORIZE_DATE,'
      '    di.AUTHORIZE_TIME,'
      '    di.APPROVE_EMPLOYEE_CODE,'
      '    di.APPROVE_DATE,'
      '    di.APPROVE_TIME,'
      '    di.DOC_ITEM_STORAGE_TYPE_CODE,'
      '    di.FILE_NAME,'
      '    di.RELATIVE_PATH,'
      '    di.STORED_FILE_BRANCH_CODE,'
      '    di.STORED_FILE_CODE,'
      '    di.IS_MIRRORED,'
      '    di.MIRRORED_FILE_NAME,'
      '    di.MIRRORED_RELATIVE_PATH,'
      '    di.FILE_CHANGE_EMPLOYEE_CODE,'
      '    di.FILE_CHANGE_DATE,'
      '    di.FILE_CHANGE_TIME'
      '  from'
      '    DOC_ITEMS di'
      '  where'
      '    (di.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '    (di.DOC_CODE = :DOC_CODE)'
      '  ;'
      ''
      '  insert into DOC_ITEM_SYS_ROLES'
      '  ('
      '    DOC_BRANCH_CODE,'
      '    DOC_CODE,'
      '    DOC_ITEM_CODE,'
      '    DOC_ITEM_SYS_ROLE_CODE,'
      '    SYS_ROLE_CODE,'
      '    DOC_ITEM_ACCESS_LEVEL_CODE'
      '  )'
      '  select'
      '    :MLMS_OBJECT_BRANCH_CODE as DOC_BRANCH_CODE,'
      '    :NEW_DOC_CODE as DOC_CODE,'
      '    disr.DOC_ITEM_CODE,'
      '    disr.DOC_ITEM_SYS_ROLE_CODE,'
      '    disr.SYS_ROLE_CODE,'
      '    disr.DOC_ITEM_ACCESS_LEVEL_CODE'
      '  from'
      '    DOC_ITEM_SYS_ROLES disr'
      '  where'
      '    (disr.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '    (disr.DOC_CODE = :DOC_CODE)'
      '  ;'
      ''
      '  insert into PROCESS_OBJECTS'
      '  ('
      '    PROCESS_OBJECT_BRANCH_CODE,'
      '    PROCESS_OBJECT_CODE,'
      '    PROCESS_OBJECT_CLASS_CODE,'
      '    PROCESS_OBJECT_IDENTIFIER'
      '  )'
      '  select'
      '    po.PROCESS_OBJECT_BRANCH_CODE,'
      '    seq_PROCESS_OBJECTS.NextVal as PROCESS_OBJECT_CODE,'
      '    70 as PROCESS_OBJECT_CLASS_CODE,'
      
        '    (po.PROCESS_OBJECT_IDENTIFIER || '#39' > '#39' || To_Char(smvso.SMVS' +
        '_OPERATION_NO) || '#39'.'#39' || To_Char(smvso.SMVS_OPERATION_VARIANT_NO' +
        ')) as PROCESS_OBJECT_IDENTIFIER'
      '  from'
      '    SMVS_OPERATIONS smvso,'
      '    PROCESS_OBJECTS po'
      '  where'
      '    (:INSERT_OPERATIONS = 1) and'
      ''
      '    (smvso.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '    (smvso.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      '    (smvso.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      '    (smvso.SPEC_LINE_STAGE_CODE = :SPEC_LINE_STAGE_CODE) and'
      ''
      
        '    (po.PROCESS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANCH_CODE) a' +
        'nd'
      '    (po.PROCESS_OBJECT_CODE = :MLMS_OBJECT_CODE)'
      '  ;'
      ''
      '  for x in'
      '    ('
      '      select'
      '        :MLMS_OBJECT_BRANCH_CODE as MLMSO_OBJECT_BRANCH_CODE,'
      '        ('
      '          select'
      '            po.PROCESS_OBJECT_CODE'
      '          from'
      '            PROCESS_OBJECTS po'
      '          where'
      '            (po.PROCESS_OBJECT_IDENTIFIER ='
      
        '              (po2.PROCESS_OBJECT_IDENTIFIER || '#39' > '#39' || To_Char' +
        '(smvso.SMVS_OPERATION_NO) || '#39'.'#39' || To_Char(smvso.SMVS_OPERATION' +
        '_VARIANT_NO))'
      '            )'
      '        ) as MLMSO_OBJECT_CODE,'
      '        :MLMS_OBJECT_BRANCH_CODE as MLMS_OBJECT_BRANCH_CODE,'
      '        :MLMS_OBJECT_CODE as MLMS_OBJECT_CODE,'
      '        smvso.SMVS_OPERATION_NO as MLMS_OPERATION_NO,'
      
        '        smvso.SMVS_OPERATION_VARIANT_NO as MLMS_OPERATION_VARIAN' +
        'T_NO,'
      '        smvso.OPERATION_TYPE_CODE,'
      '        smvso.DEPT_CODE,'
      '        smvso.SETUP_PROFESSION_CODE,'
      '        smvso.SETUP_EFFORT_COEF,'
      '        smvso.SETUP_HOUR_TECH_QUANTITY,'
      '        smvso.SETUP_COUNT,'
      '        smvso.PROFESSION_CODE,'
      '        smvso.EFFORT_COEF,'
      '        smvso.HOUR_TECH_QUANTITY,'
      '        smvso.PROGRAM_TOOL_PRODUCT_CODE,'
      '        smvso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '        smvso.TYPICAL_TOOL_PRODUCT_CODE,'
      '        smvso.PROGRAM_TOOL_REQUIREMENT_CODE,'
      '        smvso.SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '        smvso.TYPICAL_TOOL_REQUIREMENT_CODE,'
      '        smvso.PROGRAM_TOOL_IS_COMPLETE,'
      '        smvso.SPECIFIC_TOOL_IS_COMPLETE,'
      '        smvso.TYPICAL_TOOL_IS_COMPLETE,'
      
        '        Decode(smvso.SMVS_OPERATION_VARIANT_NO, 0, 1, 0) as IS_A' +
        'CTIVE,'
      '        Decode(smvso.SMVS_OPERATION_VARIANT_NO,'
      '          0,'
      '          ('
      '            select'
      '              mll.LINE_DETAIL_TECH_QUANTITY'
      '            from'
      '              MATERIAL_LIST_LINES mll'
      '            where'
      
        '              ( (mll.MLL_OBJECT_BRANCH_CODE, mll.MLL_OBJECT_CODE' +
        ') ='
      '                ('
      '                  select'
      '                    mlms.MLL_OBJECT_BRANCH_CODE,'
      '                    mlms.MLL_OBJECT_CODE'
      '                  from'
      '                    ML_MODEL_STAGES mlms'
      '                  where'
      
        '                    (mlms.MLMS_OBJECT_BRANCH_CODE = :MLMS_OBJECT' +
        '_BRANCH_CODE) and'
      '                    (mlms.MLMS_OBJECT_CODE = :MLMS_OBJECT_CODE)'
      '                )'
      '              )'
      '          ),'
      '          0) as VARIANT_DETAIL_TECH_QUANTITY,'
      '        smvso.NOTES,'
      '        smvso.SPECIFIC_TOOL_DETAIL_TECH_QTY,'
      '        smvso.TYPICAL_TOOL_DETAIL_TECH_QTY,'
      '        smvso.TREATMENT_BEGIN_WORKDAY_NO,'
      '        smvso.TREATMENT_WORKDAYS,'
      '        ContextDate as TREATMENT_BEGIN_DATE,'
      '        Trunc(ContextNow-1) as TREATMENT_END_DATE,'
      '        smvso.HAS_SPECIAL_CONTROL,'
      '        smvso.IS_AUTO_MOVEMENT,'
      '        smvso.IS_AUTO_SETUP,'
      '        smvso.DOC_BRANCH_CODE,'
      '        smvso.DOC_CODE'
      '      from'
      '        SMVS_OPERATIONS smvso,'
      '        PROCESS_OBJECTS po2'
      '      where'
      '        (:INSERT_OPERATIONS = 1) and'
      ''
      '        (smvso.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      
        '        (smvso.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) a' +
        'nd'
      '        (smvso.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      '        (smvso.SPEC_LINE_STAGE_CODE = :SPEC_LINE_STAGE_CODE) and'
      ''
      
        '        (po2.PROCESS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANCH_CO' +
        'DE) and'
      '        (po2.PROCESS_OBJECT_CODE = :MLMS_OBJECT_CODE)'
      '      order by'
      '        smvso.SMVS_OPERATION_NO,'
      '        smvso.SMVS_OPERATION_VARIANT_NO'
      '    )'
      '  loop'
      '    insert into MLMS_OPERATIONS_FOR_EDIT'
      '    ('
      '      MLMSO_OBJECT_BRANCH_CODE,'
      '      MLMSO_OBJECT_CODE,'
      '      MLMS_OBJECT_BRANCH_CODE,'
      '      MLMS_OBJECT_CODE,'
      '      MLMS_OPERATION_NO,'
      '      MLMS_OPERATION_VARIANT_NO,'
      '      OPERATION_TYPE_CODE,'
      '      DEPT_CODE,'
      '      SETUP_PROFESSION_CODE,'
      '      SETUP_EFFORT_COEF,'
      '      SETUP_HOUR_TECH_QUANTITY,'
      '      SETUP_COUNT,'
      '      PROFESSION_CODE,'
      '      EFFORT_COEF,'
      '      HOUR_TECH_QUANTITY,'
      '      PROGRAM_TOOL_PRODUCT_CODE,'
      '      SPECIFIC_TOOL_PRODUCT_CODE,'
      '      TYPICAL_TOOL_PRODUCT_CODE,'
      '      PROGRAM_TOOL_REQUIREMENT_CODE,'
      '      SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '      TYPICAL_TOOL_REQUIREMENT_CODE,'
      '      PROGRAM_TOOL_IS_COMPLETE,'
      '      SPECIFIC_TOOL_IS_COMPLETE,'
      '      TYPICAL_TOOL_IS_COMPLETE,'
      '      IS_ACTIVE,'
      '      VARIANT_DETAIL_TECH_QUANTITY,'
      '      NOTES,'
      '      SPECIFIC_TOOL_DETAIL_TECH_QTY,'
      '      TYPICAL_TOOL_DETAIL_TECH_QTY,'
      '      TREATMENT_BEGIN_WORKDAY_NO,'
      '      TREATMENT_WORKDAYS,'
      '      TREATMENT_BEGIN_DATE,'
      '      TREATMENT_END_DATE,'
      '      HAS_SPECIAL_CONTROL,'
      '      IS_AUTO_MOVEMENT,'
      '      IS_AUTO_SETUP,'
      '      DOC_BRANCH_CODE,'
      '      DOC_CODE'
      '    )'
      '    values'
      '    ('
      '      x.MLMSO_OBJECT_BRANCH_CODE,'
      '      x.MLMSO_OBJECT_CODE,'
      '      x.MLMS_OBJECT_BRANCH_CODE,'
      '      x.MLMS_OBJECT_CODE,'
      '      x.MLMS_OPERATION_NO,'
      '      x.MLMS_OPERATION_VARIANT_NO,'
      '      x.OPERATION_TYPE_CODE,'
      '      x.DEPT_CODE,'
      '      x.SETUP_PROFESSION_CODE,'
      '      x.SETUP_EFFORT_COEF,'
      '      x.SETUP_HOUR_TECH_QUANTITY,'
      '      x.SETUP_COUNT,'
      '      x.PROFESSION_CODE,'
      '      x.EFFORT_COEF,'
      '      x.HOUR_TECH_QUANTITY,'
      '      x.PROGRAM_TOOL_PRODUCT_CODE,'
      '      x.SPECIFIC_TOOL_PRODUCT_CODE,'
      '      x.TYPICAL_TOOL_PRODUCT_CODE,'
      '      x.PROGRAM_TOOL_REQUIREMENT_CODE,'
      '      x.SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '      x.TYPICAL_TOOL_REQUIREMENT_CODE,'
      '      x.PROGRAM_TOOL_IS_COMPLETE,'
      '      x.SPECIFIC_TOOL_IS_COMPLETE,'
      '      x.TYPICAL_TOOL_IS_COMPLETE,'
      '      x.IS_ACTIVE,'
      '      x.VARIANT_DETAIL_TECH_QUANTITY,'
      '      x.NOTES,'
      '      x.SPECIFIC_TOOL_DETAIL_TECH_QTY,'
      '      x.TYPICAL_TOOL_DETAIL_TECH_QTY,'
      '      x.TREATMENT_BEGIN_WORKDAY_NO,'
      '      x.TREATMENT_WORKDAYS,'
      '      x.TREATMENT_BEGIN_DATE,'
      '      x.TREATMENT_END_DATE,'
      '      x.HAS_SPECIAL_CONTROL,'
      '      x.IS_AUTO_MOVEMENT,'
      '      x.IS_AUTO_SETUP,'
      '      :MLMS_OBJECT_BRANCH_CODE,'
      '      Decode(x.MLMS_OPERATION_VARIANT_NO,'
      
        '        0, MiscUtils.NewDocCodeLike(:MLMS_OBJECT_BRANCH_CODE, x.' +
        'DOC_BRANCH_CODE, x.DOC_CODE),'
      '        ('
      '          select'
      '            mlmso2.DOC_CODE'
      '          from'
      '            MLMS_OPERATIONS mlmso2'
      '          where'
      
        '            (mlmso2.MLMS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANC' +
        'H_CODE) and'
      '            (mlmso2.MLMS_OBJECT_CODE = :MLMS_OBJECT_CODE) and'
      '            (mlmso2.MLMS_OPERATION_NO = x.MLMS_OPERATION_NO) and'
      '            (mlmso2.MLMS_OPERATION_VARIANT_NO = 0)'
      '        )'
      '      )'
      '    );'
      '  end loop;'
      ''
      ''
      '  insert into MLMS_OPERATIONS_FOR_EDIT'
      '  ('
      '    MLMSO_OBJECT_BRANCH_CODE,'
      '    MLMSO_OBJECT_CODE,'
      '    MLMS_OBJECT_BRANCH_CODE,'
      '    MLMS_OBJECT_CODE,'
      '    MLMS_OPERATION_NO,'
      '    MLMS_OPERATION_VARIANT_NO,'
      '    OPERATION_TYPE_CODE,'
      '    VARIANT_DETAIL_TECH_QUANTITY,'
      '    IS_ACTIVE,'
      '    PROFESSION_CODE,'
      '    DEPT_CODE,'
      '    NOTES,'
      '    TREATMENT_BEGIN_WORKDAY_NO,'
      '    TREATMENT_WORKDAYS,'
      '    TREATMENT_BEGIN_DATE,'
      '    TREATMENT_END_DATE,'
      '    HAS_SPECIAL_CONTROL,'
      '    DOC_BRANCH_CODE,'
      '    DOC_CODE,'
      '    PROGRAM_TOOL_REQUIREMENT_CODE,'
      '    SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '    TYPICAL_TOOL_REQUIREMENT_CODE,'
      '    PROGRAM_TOOL_IS_COMPLETE,'
      '    SPECIFIC_TOOL_IS_COMPLETE,'
      '    TYPICAL_TOOL_IS_COMPLETE,'
      '    IS_AUTO_MOVEMENT,'
      '    IS_AUTO_SETUP'
      '  )'
      ''
      '  select'
      '    mlms.MLMS_OBJECT_BRANCH_CODE as MLMS_OBJECT_BRANCH_CODE,'
      '    MiscUtils.NewProcessObject('
      '      mlms.MLMS_OBJECT_BRANCH_CODE,'
      '      %poc_MODEL_OPERATION,'
      '      ('
      '        select'
      
        '          (po.PROCESS_OBJECT_IDENTIFIER || '#39' > '#39' || To_Char(Deco' +
        'de(mlms.ML_MODEL_STAGE_NO, 0, 1, 0)) || '#39'.0'#39')'
      '        from'
      '          PROCESS_OBJECTS po'
      '        where'
      
        '          (po.PROCESS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRAN' +
        'CH_CODE) and'
      '          (po.PROCESS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE)'
      '      )'
      '    ) as MLMSO_OBJECT_CODE,'
      '    mlms.MLMS_OBJECT_BRANCH_CODE,'
      '    mlms.MLMS_OBJECT_CODE,'
      
        '    Decode(mlms.ML_MODEL_STAGE_NO, 0, 1, 0) as MLMS_OPERATION_NO' +
        ','
      '    0 as MLMS_OPERATION_VARIANT_NO,'
      
        '    Decode(mlms.ML_MODEL_STAGE_NO, 0, 3, 1) as OPERATION_TYPE_CO' +
        'DE,'
      '    ('
      '      select'
      '        mll.LINE_DETAIL_TECH_QUANTITY'
      '      from'
      '        MATERIAL_LIST_LINES mll'
      '      where'
      
        '        (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '        (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE)'
      '    ) as VARIANT_DETAIL_TECH_QUANTITY,'
      '    1 as IS_ACTIVE,'
      '    co.PROD_ORGANIZER_PROFESSION_CODE as PROFESSION_CODE,'
      '    mlms.DEPT_CODE,'
      '    :ML_MODEL_STAGE_NOTE as NOTES,'
      
        '    Decode(mlms.ML_MODEL_STAGE_NO, 0, mlms.TREATMENT_WORKDAYS, 1' +
        ') as TREATMENT_BEGIN_WORKDAY_NO,'
      '    1 as TREATMENT_WORKDAYS,'
      '    ContextDate as TREATMENT_BEGIN_DATE,'
      '    Trunc(ContextNow - 1) as TREATMENT_END_DATE,'
      '    0 as HAS_SPECIAL_CONTROL,'
      '    :MLMS_OBJECT_BRANCH_CODE as DOC_BRANCH_CODE,'
      '    MiscUtils.NewDocCode(:MLMS_OBJECT_BRANCH_CODE) as DOC_CODE,'
      '    1 as PROGRAM_TOOL_REQUIREMENT_CODE,'
      '    1 as SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '    1 as TYPICAL_TOOL_REQUIREMENT_CODE,'
      '    0 as PROGRAM_TOOL_IS_COMPLETE,'
      '    0 as SPECIFIC_TOOL_IS_COMPLETE,'
      '    0 as TYPICAL_TOOL_IS_COMPLETE,'
      '    0 as IS_AUTO_MOVEMENT,'
      '    0 as IS_AUTO_SETUP'
      ''
      '  from'
      '    ML_MODEL_STAGES mlms,'
      '    COMMON_OPTIONS co'
      ''
      '  where'
      '    (:INSERT_OPERATIONS = 0) and'
      '    (co.CODE = 1) and'
      ''
      
        '    (mlms.MLMS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANCH_CODE) an' +
        'd'
      '    (mlms.MLMS_OBJECT_CODE = :MLMS_OBJECT_CODE) and'
      ''
      '    (mlms.TREATMENT_WORKDAYS > 0)'
      '  ;'
      'end;')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'INC_DATE_BY_WORKDAYS[(:ENTER_RESULT_STORE_END_DATE + 1)~(- :TOTA' +
          'L_TREATMENT_WORKDAYS)]'
        ParamType = ptInput
        Value = 
          'INC_DATE_BY_WORKDAYS[(:ENTER_RESULT_STORE_END_DATE + 1)~(- :TOTA' +
          'L_TREATMENT_WORKDAYS)]'
      end
      item
        DataType = ftWideString
        Name = 
          'INC_DATE_BY_WORKDAYS[(:ENTER_RESULT_STORE_END_DATE + 1)~(- :TOTA' +
          'L_TREATMENT_WORKDAYS + Greatest(:TREATMENT_WORKDAYS, 1) - 1)]'
        ParamType = ptInput
        Value = 
          'INC_DATE_BY_WORKDAYS[(:ENTER_RESULT_STORE_END_DATE + 1)~(- :TOTA' +
          'L_TREATMENT_WORKDAYS + Greatest(:TREATMENT_WORKDAYS, 1) - 1)]'
      end
      item
        DataType = ftWideString
        Name = 'poc_MODEL_OPERATION'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 545
    Top = 546
  end
  object qryGetMaxSaleGroupCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_BRANCH_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(SALE_GROUP_CODE) as MAX_SALE_GROUP_CODE'
      'from'
      '  SALE_GROUPS'
      'where'
      '  (SALE_GROUP_BRANCH_CODE = :SALE_GROUP_BRANCH_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 120
    object qryGetMaxSaleGroupCodeMAX_SALE_GROUP_CODE: TAbmesFloatField
      FieldName = 'MAX_SALE_GROUP_CODE'
    end
  end
  object qryInsModelStageLinks: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into MODEL_STAGE_LINKS'
      '('
      '  FROM_MLMS_OBJECT_BRANCH_CODE, '
      '  FROM_MLMS_OBJECT_CODE, '
      '  TO_MLMS_OBJECT_BRANCH_CODE, '
      '  TO_MLMS_OBJECT_CODE'
      ')'
      'select'
      '  mlms1.MLMS_OBJECT_BRANCH_CODE as FROM_MLMS_OBJECT_BRANCH_CODE,'
      '  mlms1.MLMS_OBJECT_CODE as FROM_MLMS_OBJECT_CODE,'
      '  mlms2.MLMS_OBJECT_BRANCH_CODE as TO_MLMS_OBJECT_BRANCH_CODE,'
      '  mlms2.MLMS_OBJECT_CODE as TO_MLMS_OBJECT_CODE'
      'from'
      '  MATERIAL_LIST_LINES mll,'
      '  ML_MODEL_STAGES mlms1,'
      '  ML_MODEL_STAGES mlms2'
      '  '
      'where'
      
        '  (mll.MLL_OBJECT_BRANCH_CODE = mlms1.MLL_OBJECT_BRANCH_CODE) an' +
        'd'
      '  (mll.MLL_OBJECT_CODE = mlms1.MLL_OBJECT_CODE) and'
      '  '
      
        '  (mlms1.MLL_OBJECT_BRANCH_CODE = mlms2.MLL_OBJECT_BRANCH_CODE) ' +
        'and'
      '  (mlms1.MLL_OBJECT_CODE = mlms2.MLL_OBJECT_CODE) and'
      '  (mlms1.ML_MODEL_STAGE_NO = mlms2.ML_MODEL_STAGE_NO - 1) and'
      '  '
      '  ('
      '    mlms1.MLMS_OBJECT_BRANCH_CODE, '
      '    mlms1.MLMS_OBJECT_CODE,'
      '    mlms2.MLMS_OBJECT_BRANCH_CODE,'
      '    mlms2.MLMS_OBJECT_CODE'
      '  )'
      '  not in'
      '  ('
      '    select'
      '      msli.FROM_MLMS_OBJECT_BRANCH_CODE,'
      '      msli.FROM_MLMS_OBJECT_CODE,'
      '      msli.TO_MLMS_OBJECT_BRANCH_CODE,'
      '      msli.TO_MLMS_OBJECT_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mlli,'
      '      ML_MODEL_STAGES mlmsi,'
      '      MODEL_STAGE_LINKS msli'
      '    where'
      
        '      (mlli.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (mlli.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      '      '
      
        '      (mlli.MLL_OBJECT_BRANCH_CODE = mlmsi.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '      (mlli.MLL_OBJECT_CODE = mlmsi.MLL_OBJECT_CODE) and'
      '      '
      
        '      (msli.FROM_MLMS_OBJECT_BRANCH_CODE = mlmsi.MLMS_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (msli.FROM_MLMS_OBJECT_CODE = mlmsi.MLMS_OBJECT_CODE)'
      '  ) and'
      '  (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 462
    Top = 512
  end
  object qryInsModelTasks: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  insert into MATERIAL_LIST_TASKS'
      '  ('
      '    ML_OBJECT_BRANCH_CODE,'
      '    ML_OBJECT_CODE,'
      '    MATERIAL_LIST_TASK_NO,'
      '    MATERIAL_LIST_TASK_NAME'
      '  )'
      '  select'
      '    ml.ML_OBJECT_BRANCH_CODE,'
      '    ml.ML_OBJECT_CODE,'
      '    smvt.SPEC_MODEL_VARIANT_TASK_NO as MATERIAL_LIST_TASK_NO,'
      '    smvt.SPEC_MODEL_VARIANT_TASK_NAME as MATERIAL_LIST_TASK_NAME'
      '  from'
      '    MATERIAL_LISTS ml,'
      '    SPEC_MODEL_VARIANT_TASKS smvt'
      '  where'
      '    (ml.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '    (ml.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      '    (ml.RESULT_PRODUCT_CODE = smvt.SPEC_PRODUCT_CODE) and'
      '    (smvt.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO)'
      '  ;'
      '  insert into MATERIAL_LIST_TASK_DEPTS'
      '  ('
      '    ML_OBJECT_BRANCH_CODE,'
      '    ML_OBJECT_CODE,'
      '    MATERIAL_LIST_TASK_NO,'
      '    DEPT_CODE'
      '  )'
      '  select'
      '    ml.ML_OBJECT_BRANCH_CODE,'
      '    ml.ML_OBJECT_CODE,'
      '    smvtd.SPEC_MODEL_VARIANT_TASK_NO as MATERIAL_LIST_TASK_NO,'
      '    smvtd.DEPT_CODE'
      '  from'
      '    MATERIAL_LISTS ml,'
      '    SPEC_MODEL_VARIANT_TASK_DEPTS smvtd'
      '  where'
      '    (ml.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '    (ml.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      '    (ml.RESULT_PRODUCT_CODE = smvtd.SPEC_PRODUCT_CODE) and'
      '    (smvtd.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO)'
      '  ;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 416
  end
  object qryInsSimpleSaleGroup: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into SALE_GROUPS_FOR_EDIT'
      '('
      '  SALE_GROUP_OBJECT_BRANCH_CODE,'
      '  SALE_GROUP_OBJECT_CODE,'
      '  PRIORITY_CODE,'
      '  SALE_ORDER_TYPE_CODE,'
      '  CLIENT_COMPANY_CODE,'
      '  RECEIVE_DATE,'
      '  SALE_GROUP_NO,'
      '  SALE_GROUP_BRANCH_CODE,'
      '  SALE_GROUP_CODE'
      ')'
      'values'
      '('
      '  :SALE_GROUP_OBJECT_BRANCH_CODE,'
      '  :SALE_GROUP_OBJECT_CODE,'
      '  :PRIORITY_CODE,'
      '  :SALE_ORDER_TYPE_CODE,'
      '  0,'
      '  :ENTER_SH_STORE_PLAN_END_DATE,'
      '  ('
      '    select'
      '      (Coalesce(Max(sg.SALE_GROUP_NO), 0) + 1) as SALE_GROUP_NO'
      '    from'
      '      SALE_GROUPS sg'
      '    where'
      '      (sg.SALE_ORDER_TYPE_CODE = :SALE_ORDER_TYPE_CODE) and'
      '      (sg.CLIENT_COMPANY_CODE = 0) and'
      '      (sg.RECEIVE_DATE = :ENTER_SH_STORE_PLAN_END_DATE)'
      '  ),'
      '  :SALE_GROUP_BRANCH_CODE,'
      '  :SALE_GROUP_CODE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 464
    Top = 400
  end
  object qryUpdSimpleSaleGroup: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_SALE_GROUP_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_SALE_GROUP_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  SALE_GROUPS_FOR_EDIT sg'
      'set'
      '  sg.SALE_ORDER_TYPE_CODE = :SALE_ORDER_TYPE_CODE,'
      '  sg.RECEIVE_DATE = :ENTER_SH_STORE_PLAN_END_DATE,'
      '  sg.SALE_GROUP_NO ='
      '    Decode(sg.RECEIVE_DATE,'
      '      :ENTER_SH_STORE_PLAN_END_DATE, sg.SALE_GROUP_NO,'
      '      ( select'
      
        '          (Coalesce(Max(sg2.SALE_GROUP_NO), 0) + 1) as NEW_SALE_' +
        'GROUP_NO'
      '        from'
      '          SALE_GROUPS sg2'
      '        where'
      '          (sg2.SALE_ORDER_TYPE_CODE = :SALE_ORDER_TYPE_CODE) and'
      '          (sg2.CLIENT_COMPANY_CODE = 0) and'
      '          (sg2.RECEIVE_DATE = :ENTER_SH_STORE_PLAN_END_DATE)'
      '      )'
      '    ),'
      '  sg.PRIORITY_CODE = :PRIORITY_CODE'
      'where'
      
        '  (sg.SALE_GROUP_OBJECT_BRANCH_CODE = :OLD_SALE_GROUP_OBJECT_BRA' +
        'NCH_CODE) and'
      '  (sg.SALE_GROUP_OBJECT_CODE = :OLD_SALE_GROUP_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 464
    Top = 448
  end
  object qryInsSalePSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PSD_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANUFACTURE_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANUFACTURE_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ANNUL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FINISH_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FINISH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FINISH_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHANGE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_TIME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into PLANNED_STORE_DEALS_FOR_EDIT'
      '('
      '  PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  PLANNED_STORE_DEAL_CODE,'
      '  PLANNED_STORE_DEAL_TYPE_CODE,'
      '  PRIORITY_CODE,'
      '  BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  BND_PROCESS_OBJECT_CODE,'
      '  BND_PROCESS_CODE,'
      '  STORE_CODE,'
      '  STORE_DEAL_BEGIN_DATE,'
      '  STORE_DEAL_END_DATE,'
      '  STORE_DEAL_TYPE_CODE,'
      '  PRODUCT_CODE,'
      '  QUANTITY,'
      '  ACCOUNT_QUANTITY,'
      '  ANNUL_EMPLOYEE_CODE,'
      '  ANNUL_DATE,'
      '  ANNUL_TIME,'
      '  CLOSE_EMPLOYEE_CODE,'
      '  CLOSE_DATE,'
      '  CLOSE_TIME,'
      '  CREATE_EMPLOYEE_CODE,'
      '  CREATE_DATE,'
      '  CREATE_TIME,'
      '  CHANGE_EMPLOYEE_CODE,'
      '  CHANGE_DATE,'
      '  CHANGE_TIME'
      ')'
      'values'
      '('
      '  :PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  :PLANNED_STORE_DEAL_CODE,'
      '  1,'
      '  :PSD_PRIORITY_CODE,'
      '  :SALE_OBJECT_BRANCH_CODE,'
      '  :SALE_OBJECT_CODE,'
      '  60,'
      '  :SHIPMENT_STORE_CODE,'
      '  :ENTER_SH_STORE_PLAN_BEGIN_DATE,'
      '  :ENTER_SH_STORE_PLAN_END_DATE,'
      '  811,'
      '  :PRODUCT_CODE,'
      '  :MANUFACTURE_QUANTITY,'
      '  :MANUFACTURE_QUANTITY * :ACCOUNT_MEASURE_COEF,'
      '  :ANNUL_EMPLOYEE_CODE,'
      '  :ANNUL_DATE,'
      '  :ANNUL_TIME,'
      '  :FINISH_EMPLOYEE_CODE,'
      '  :FINISH_DATE,'
      '  :FINISH_TIME,'
      '  :CREATE_EMPLOYEE_CODE,'
      '  :CREATE_DATE,'
      '  :CREATE_TIME,'
      '  :CHANGE_EMPLOYEE_CODE,'
      '  :CHANGE_DATE,'
      '  :CHANGE_TIME'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 656
    Top = 144
  end
  object qryUpdSalePSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PSD_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANUFACTURE_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANUFACTURE_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ANNUL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FINISH_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FINISH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FINISH_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHANGE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_PLANNED_STORE_DEAL_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_PLANNED_STORE_DEAL_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update PLANNED_STORE_DEALS_FOR_EDIT'
      'set'
      '  BND_PROCESS_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE,'
      '  BND_PROCESS_OBJECT_CODE = :SALE_OBJECT_CODE,'
      '  BND_PROCESS_CODE = 60,'
      '  PRIORITY_CODE = :PSD_PRIORITY_CODE,'
      '  STORE_CODE = :SHIPMENT_STORE_CODE,'
      '  STORE_DEAL_BEGIN_DATE = :ENTER_SH_STORE_PLAN_BEGIN_DATE,'
      '  STORE_DEAL_END_DATE = :ENTER_SH_STORE_PLAN_END_DATE,'
      '  PRODUCT_CODE = :PRODUCT_CODE,'
      '  QUANTITY = :MANUFACTURE_QUANTITY,'
      
        '  ACCOUNT_QUANTITY = :MANUFACTURE_QUANTITY * :ACCOUNT_MEASURE_CO' +
        'EF,'
      '  ANNUL_DATE = :ANNUL_DATE,'
      '  ANNUL_TIME = :ANNUL_TIME,'
      '  ANNUL_EMPLOYEE_CODE = :ANNUL_EMPLOYEE_CODE,'
      '  CLOSE_EMPLOYEE_CODE = :FINISH_EMPLOYEE_CODE,'
      '  CLOSE_DATE = :FINISH_DATE,'
      '  CLOSE_TIME = :FINISH_TIME,'
      '  CHANGE_EMPLOYEE_CODE = :CHANGE_EMPLOYEE_CODE,'
      '  CHANGE_DATE = :CHANGE_DATE,'
      '  CHANGE_TIME = :CHANGE_TIME'
      'where'
      
        '  PLANNED_STORE_DEAL_BRANCH_CODE = :OLD_PLANNED_STORE_DEAL_BRANC' +
        'H_CODE and'
      '  PLANNED_STORE_DEAL_CODE = :OLD_PLANNED_STORE_DEAL_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 656
    Top = 192
  end
  object qryDelSalePSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OLD_PLANNED_STORE_DEAL_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_PLANNED_STORE_DEAL_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete PLANNED_STORE_DEALS_FOR_EDIT'
      'where'
      
        '  PLANNED_STORE_DEAL_BRANCH_CODE = :OLD_PLANNED_STORE_DEAL_BRANC' +
        'H_CODE and'
      '  PLANNED_STORE_DEAL_CODE = :OLD_PLANNED_STORE_DEAL_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 656
    Top = 240
  end
  object cdsSpecLineStages: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_MODEL_VARIANT_NO'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_LINE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_LINE_STAGE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_LINE_STAGE_NO'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TREATMENT_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_TREATMENT_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'OUTGOING_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'IS_AUTO_MOVEMENT'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SMVS_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TRUNC_SMVS_TYPE_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'LAST_STAGE_NO'
        DataType = ftFloat
      end
      item
        Name = 'EXTERNAL_WORK_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'ROW_ZERO_SMVS_TYPE_COUNT'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx'
        Fields = 'SPEC_LINE_CODE; SPEC_LINE_STAGE_NO'
        Options = [ixDescending]
      end>
    IndexName = 'idx'
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvSpecLineStages'
    StoreDefs = True
    Left = 248
    Top = 552
    object cdsSpecLineStagesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsSpecLineStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsSpecLineStagesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsSpecLineStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object cdsSpecLineStagesSPEC_LINE_STAGE_NO: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_NO'
    end
    object cdsSpecLineStagesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsSpecLineStagesTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object cdsSpecLineStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TOTAL_TREATMENT_WORKDAYS'
    end
    object cdsSpecLineStagesOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object cdsSpecLineStagesIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
    end
    object cdsSpecLineStagesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsSpecLineStagesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsSpecLineStagesSMVS_TYPE_CODE: TAbmesFloatField
      FieldName = 'SMVS_TYPE_CODE'
    end
    object cdsSpecLineStagesTRUNC_SMVS_TYPE_COUNT: TAbmesFloatField
      FieldName = 'TRUNC_SMVS_TYPE_COUNT'
    end
    object cdsSpecLineStagesLAST_STAGE_NO: TAbmesFloatField
      FieldName = 'LAST_STAGE_NO'
    end
    object cdsSpecLineStagesEXTERNAL_WORK_PRICE: TAbmesFloatField
      FieldName = 'EXTERNAL_WORK_PRICE'
    end
    object cdsSpecLineStagesROW_ZERO_SMVS_TYPE_COUNT: TAbmesFloatField
      FieldName = 'ROW_ZERO_SMVS_TYPE_COUNT'
    end
  end
  object prvSpecLineStages: TDataSetProvider
    DataSet = qrySpecLineStages
    Exported = False
    Options = [poReadOnly]
    Left = 48
    Top = 552
  end
  object qryDelModel: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      
        '  ModelUtils.DeleteXModel(:ML_OBJECT_BRANCH_CODE, :ML_OBJECT_COD' +
        'E);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 496
  end
  object qryInsMLModelStageOperationsDocs: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_STAGE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_STAGE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  insert into DOC_ITEMS_FOR_EDIT'
      '  ('
      '    DOC_BRANCH_CODE,'
      '    DOC_CODE,'
      '    DOC_ITEM_CODE,'
      '    DOC_ITEM_NO,'
      '    DOC_ITEM_NAME,'
      '    DOC_ITEM_TYPE_CODE,'
      '    IS_INACTIVE,'
      '    NOTES,'
      '    CREATE_EMPLOYEE_CODE,'
      '    CREATE_DATE,'
      '    CREATE_TIME,'
      '    CHANGE_EMPLOYEE_CODE,'
      '    CHANGE_DATE,'
      '    CHANGE_TIME,'
      '    DEVELOP_EMPLOYEE_CODE,'
      '    DEVELOP_DATE,'
      '    DEVELOP_TIME,'
      '    AUTHORIZE_EMPLOYEE_CODE,'
      '    AUTHORIZE_DATE,'
      '    AUTHORIZE_TIME,'
      '    APPROVE_EMPLOYEE_CODE,'
      '    APPROVE_DATE,'
      '    APPROVE_TIME,'
      '    DOC_ITEM_STORAGE_TYPE_CODE,'
      '    FILE_NAME,'
      '    RELATIVE_PATH,'
      '    STORED_FILE_BRANCH_CODE,'
      '    STORED_FILE_CODE,'
      '    IS_MIRRORED,'
      '    MIRRORED_FILE_NAME,'
      '    MIRRORED_RELATIVE_PATH,'
      '    FILE_CHANGE_EMPLOYEE_CODE,'
      '    FILE_CHANGE_DATE,'
      '    FILE_CHANGE_TIME'
      '  )'
      '  select'
      '    mlmso.DOC_BRANCH_CODE,'
      '    mlmso.DOC_CODE,'
      '    di.DOC_ITEM_CODE,'
      '    di.DOC_ITEM_NO,'
      '    di.DOC_ITEM_NAME,'
      '    di.DOC_ITEM_TYPE_CODE,'
      '    di.IS_INACTIVE,'
      '    di.NOTES,'
      '    di.CREATE_EMPLOYEE_CODE,'
      '    di.CREATE_DATE,'
      '    di.CREATE_TIME,'
      '    di.CHANGE_EMPLOYEE_CODE,'
      '    di.CHANGE_DATE,'
      '    di.CHANGE_TIME,'
      '    di.DEVELOP_EMPLOYEE_CODE,'
      '    di.DEVELOP_DATE,'
      '    di.DEVELOP_TIME,'
      '    di.AUTHORIZE_EMPLOYEE_CODE,'
      '    di.AUTHORIZE_DATE,'
      '    di.AUTHORIZE_TIME,'
      '    di.APPROVE_EMPLOYEE_CODE,'
      '    di.APPROVE_DATE,'
      '    di.APPROVE_TIME,'
      '    di.DOC_ITEM_STORAGE_TYPE_CODE,'
      '    di.FILE_NAME,'
      '    di.RELATIVE_PATH,'
      '    di.STORED_FILE_BRANCH_CODE,'
      '    di.STORED_FILE_CODE,'
      '    di.IS_MIRRORED,'
      '    di.MIRRORED_FILE_NAME,'
      '    di.MIRRORED_RELATIVE_PATH,'
      '    di.FILE_CHANGE_EMPLOYEE_CODE,'
      '    di.FILE_CHANGE_DATE,'
      '    di.FILE_CHANGE_TIME'
      '  from'
      '    SMVS_OPERATIONS smvso,'
      '    MLMS_OPERATIONS mlmso,'
      '    DOC_ITEMS di'
      '  where'
      '    (smvso.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '    (smvso.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      '    (smvso.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      '    (smvso.SPEC_LINE_STAGE_CODE = :SPEC_LINE_STAGE_CODE) and'
      '    (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      
        '    (mlmso.MLMS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANCH_CODE) a' +
        'nd'
      '    (mlmso.MLMS_OBJECT_CODE = :MLMS_OBJECT_CODE) and'
      '    (mlmso.MLMS_OPERATION_NO = smvso.SMVS_OPERATION_NO) and'
      
        '    (mlmso.MLMS_OPERATION_VARIANT_NO = smvso.SMVS_OPERATION_VARI' +
        'ANT_NO) and'
      ''
      '    (di.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '    (di.DOC_CODE = smvso.DOC_CODE)'
      '  ;'
      ''
      '  insert into DOC_ITEM_SYS_ROLES'
      '  ('
      '    DOC_BRANCH_CODE,'
      '    DOC_CODE,'
      '    DOC_ITEM_CODE,'
      '    DOC_ITEM_SYS_ROLE_CODE,'
      '    SYS_ROLE_CODE,'
      '    DOC_ITEM_ACCESS_LEVEL_CODE'
      '  )'
      '  select'
      '    mlmso.DOC_BRANCH_CODE,'
      '    mlmso.DOC_CODE,'
      '    disr.DOC_ITEM_CODE,'
      '    disr.DOC_ITEM_SYS_ROLE_CODE,'
      '    disr.SYS_ROLE_CODE,'
      '    disr.DOC_ITEM_ACCESS_LEVEL_CODE'
      '  from'
      '    SMVS_OPERATIONS smvso,'
      '    MLMS_OPERATIONS mlmso,'
      '    DOC_ITEM_SYS_ROLES disr'
      '  where'
      '    (smvso.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '    (smvso.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      '    (smvso.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      '    (smvso.SPEC_LINE_STAGE_CODE = :SPEC_LINE_STAGE_CODE) and'
      '    (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      
        '    (mlmso.MLMS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANCH_CODE) a' +
        'nd'
      '    (mlmso.MLMS_OBJECT_CODE = :MLMS_OBJECT_CODE) and'
      '    (mlmso.MLMS_OPERATION_NO = smvso.SMVS_OPERATION_NO) and'
      
        '    (mlmso.MLMS_OPERATION_VARIANT_NO = smvso.SMVS_OPERATION_VARI' +
        'ANT_NO) and'
      ''
      '    (disr.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '    (disr.DOC_CODE = smvso.DOC_CODE)'
      '  ;'
      ''
      '  update'
      '    MLMS_OPERATIONS_FOR_EDIT mlmso'
      '  set'
      '    (mlmso.DOC_BRANCH_CODE, mlmso.DOC_CODE) ='
      '    ('
      '      select'
      '        mlmso2.DOC_BRANCH_CODE,'
      '        mlmso2.DOC_CODE'
      '      from'
      '        MLMS_OPERATIONS mlmso2'
      '      where'
      
        '        (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (mlmso2.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and'
      '        (mlmso2.MLMS_OPERATION_NO = mlmso.MLMS_OPERATION_NO) and'
      '        (mlmso2.MLMS_OPERATION_VARIANT_NO = 0)'
      '    )'
      '  where'
      
        '    (mlmso.MLMS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANCH_CODE) a' +
        'nd'
      '    (mlmso.MLMS_OBJECT_CODE = :MLMS_OBJECT_CODE) and'
      '    (mlmso.MLMS_OPERATION_VARIANT_NO > 0) and'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        MLMS_OPERATIONS mlmso2'
      '      where'
      
        '        (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (mlmso2.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and'
      '        (mlmso2.MLMS_OPERATION_NO = mlmso.MLMS_OPERATION_NO) and'
      '        (mlmso2.MLMS_OPERATION_VARIANT_NO = 0) and'
      '        (mlmso2.DOC_CODE is not null)'
      '    );'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 617
    Top = 570
  end
  object qryInsStoreMLModelStage: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_TREATMENT_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_RESULT_STORE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_TREATMENT_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_RESULT_STORE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_TREATMENT_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  insert into ML_MODEL_STAGES_FOR_EDIT'
      '  ('
      '    MLMS_OBJECT_BRANCH_CODE,'
      '    MLMS_OBJECT_CODE,'
      '    MLL_OBJECT_BRANCH_CODE,'
      '    MLL_OBJECT_CODE,'
      '    ML_MODEL_STAGE_NO,'
      '    DEPT_CODE,'
      '    TREATMENT_WORKDAYS,'
      '    TOTAL_TREATMENT_WORKDAYS,'
      '    OUTGOING_WORKDAYS,'
      '    IS_AUTO_MOVEMENT,'
      '    TREATMENT_BEGIN_DATE,'
      '    TREATMENT_END_DATE,'
      '    DOC_BRANCH_CODE,'
      '    DOC_CODE'
      '  )'
      '  values'
      '  ('
      '    :MLMS_OBJECT_BRANCH_CODE,'
      '    :MLMS_OBJECT_CODE,'
      '    :MLL_OBJECT_BRANCH_CODE,'
      '    :MLL_OBJECT_CODE,'
      '    0,'
      '    :DEPT_CODE,'
      '    1,'
      '    :TOTAL_TREATMENT_WORKDAYS,'
      '    1,'
      '    0,'
      
        '    %INC_DATE_BY_WORKDAYS[(:ENTER_RESULT_STORE_END_DATE + 1)~(- ' +
        ':TOTAL_TREATMENT_WORKDAYS)],'
      
        '    %INC_DATE_BY_WORKDAYS[(:ENTER_RESULT_STORE_END_DATE + 1)~(- ' +
        ':TOTAL_TREATMENT_WORKDAYS)],'
      '    :MLMS_OBJECT_BRANCH_CODE,'
      '    MiscUtils.NewDocCode(:MLMS_OBJECT_BRANCH_CODE)'
      '  );'
      ''
      '  insert into MLMS_OPERATIONS_FOR_EDIT'
      '  ('
      '    MLMSO_OBJECT_BRANCH_CODE,'
      '    MLMSO_OBJECT_CODE,'
      '    MLMS_OBJECT_BRANCH_CODE,'
      '    MLMS_OBJECT_CODE,'
      '    MLMS_OPERATION_NO,'
      '    MLMS_OPERATION_VARIANT_NO,'
      '    OPERATION_TYPE_CODE,'
      '    VARIANT_DETAIL_TECH_QUANTITY,'
      '    IS_ACTIVE,'
      '    PROFESSION_CODE,'
      '    DEPT_CODE,'
      '    TREATMENT_BEGIN_WORKDAY_NO,'
      '    TREATMENT_WORKDAYS,'
      '    TREATMENT_BEGIN_DATE,'
      '    TREATMENT_END_DATE,'
      '    HAS_SPECIAL_CONTROL,'
      '    DOC_BRANCH_CODE,'
      '    DOC_CODE,'
      '    PROGRAM_TOOL_REQUIREMENT_CODE,'
      '    SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '    TYPICAL_TOOL_REQUIREMENT_CODE,'
      '    PROGRAM_TOOL_IS_COMPLETE,'
      '    SPECIFIC_TOOL_IS_COMPLETE,'
      '    TYPICAL_TOOL_IS_COMPLETE,'
      '    IS_AUTO_MOVEMENT,'
      '    IS_AUTO_SETUP'
      '  )'
      ''
      '  select'
      '    mlms.MLMS_OBJECT_BRANCH_CODE as MLMS_OBJECT_BRANCH_CODE,'
      '    MiscUtils.NewProcessObject('
      '      mlms.MLMS_OBJECT_BRANCH_CODE,'
      '      %poc_MODEL_OPERATION,'
      '      ('
      '        select'
      '          (po.PROCESS_OBJECT_IDENTIFIER || '#39' > 1.0'#39')'
      '        from'
      '          PROCESS_OBJECTS po'
      '        where'
      
        '          (po.PROCESS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRAN' +
        'CH_CODE) and'
      '          (po.PROCESS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE)'
      '      )'
      '    ) as MLMSO_OBJECT_CODE,'
      '    mlms.MLMS_OBJECT_BRANCH_CODE,'
      '    mlms.MLMS_OBJECT_CODE,'
      '    1 as MLMS_OPERATION_NO,'
      '    0 as MLMS_OPERATION_VARIANT_NO,'
      '    3 as OPERATION_TYPE_CODE,'
      '    ('
      '      select'
      '        mll.LINE_DETAIL_TECH_QUANTITY'
      '      from'
      '        MATERIAL_LIST_LINES mll'
      '      where'
      
        '        (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '        (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE)'
      '    ) as VARIANT_DETAIL_TECH_QUANTITY,'
      '    1 as IS_ACTIVE,'
      '    co.PROD_ORGANIZER_PROFESSION_CODE as PROFESSION_CODE,'
      '    mlms.DEPT_CODE,'
      '    mlms.TREATMENT_WORKDAYS as TREATMENT_BEGIN_WORKDAY_NO,'
      '    1 as TREATMENT_WORKDAYS,'
      '    mlms.TREATMENT_BEGIN_DATE,'
      '    mlms.TREATMENT_END_DATE,'
      '    0 as HAS_SPECIAL_CONTROL,'
      '    :MLMS_OBJECT_BRANCH_CODE as DOC_BRANCH_CODE,'
      '    MiscUtils.NewDocCode(:MLMS_OBJECT_BRANCH_CODE) as DOC_CODE,'
      '    1 as PROGRAM_TOOL_REQUIREMENT_CODE,'
      '    1 as SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '    1 as TYPICAL_TOOL_REQUIREMENT_CODE,'
      '    0 as PROGRAM_TOOL_IS_COMPLETE,'
      '    0 as SPECIFIC_TOOL_IS_COMPLETE,'
      '    0 as TYPICAL_TOOL_IS_COMPLETE,'
      '    0 as IS_AUTO_MOVEMENT,'
      '    0 as IS_AUTO_SETUP'
      ''
      '  from'
      '    ML_MODEL_STAGES mlms,'
      '    COMMON_OPTIONS co'
      ''
      '  where'
      '    (co.CODE = 1) and'
      ''
      
        '    (mlms.MLMS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANCH_CODE) an' +
        'd'
      '    (mlms.MLMS_OBJECT_CODE = :MLMS_OBJECT_CODE)'
      '  ;'
      ''
      'end;')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'INC_DATE_BY_WORKDAYS[(:ENTER_RESULT_STORE_END_DATE + 1)~(- :TOTA' +
          'L_TREATMENT_WORKDAYS)]'
        ParamType = ptInput
        Value = ':ENTER_RESULT_STORE_END_DATE  :TOTAL_TREATMENT_WORKDAYS'
      end
      item
        DataType = ftWideString
        Name = 'poc_MODEL_OPERATION'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 640
    Top = 520
  end
  object qryInsDisasmPSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'DISASSEMBLY_PSD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DISASSEMBLY_PSD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PSD_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORKDAYS_TO_EXIST'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORKDAYS_TO_EXIST'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'MANUFACTURE_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'MANUFACTURE_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FINISH_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FINISH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FINISH_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_TIME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into PLANNED_STORE_DEALS_FOR_EDIT'
      '('
      '  PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  PLANNED_STORE_DEAL_CODE,'
      '  PLANNED_STORE_DEAL_TYPE_CODE,'
      '  PRIORITY_CODE,'
      '  BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  BND_PROCESS_OBJECT_CODE,'
      '  BND_PROCESS_CODE,'
      '  STORE_CODE,'
      '  STORE_DEAL_BEGIN_DATE,'
      '  STORE_DEAL_END_DATE,'
      '  STORE_DEAL_TYPE_CODE,'
      '  PRODUCT_CODE,'
      '  QUANTITY,'
      '  ACCOUNT_QUANTITY,'
      '  ANNUL_EMPLOYEE_CODE,'
      '  ANNUL_DATE,'
      '  ANNUL_TIME,'
      '  CLOSE_EMPLOYEE_CODE,'
      '  CLOSE_DATE,'
      '  CLOSE_TIME,'
      '  CREATE_EMPLOYEE_CODE,'
      '  CREATE_DATE,'
      '  CREATE_TIME,'
      '  CHANGE_EMPLOYEE_CODE,'
      '  CHANGE_DATE,'
      '  CHANGE_TIME'
      ')'
      'values'
      '('
      '  :DISASSEMBLY_PSD_BRANCH_CODE,'
      '  :DISASSEMBLY_PSD_CODE,'
      '  1,'
      '  :PSD_PRIORITY_CODE,'
      '  :SALE_OBJECT_BRANCH_CODE,'
      '  :SALE_OBJECT_CODE,'
      '  60,'
      '  :SHIPMENT_STORE_CODE,'
      
        '  %INC_DATE_BY_WORKDAYS[:ENTER_SH_STORE_PLAN_BEGIN_DATE~:WORKDAY' +
        'S_TO_EXIST],'
      
        '  %INC_DATE_BY_WORKDAYS[:ENTER_SH_STORE_PLAN_END_DATE~:WORKDAYS_' +
        'TO_EXIST],'
      '  851,'
      '  :PRODUCT_CODE,'
      '  :MANUFACTURE_QUANTITY,'
      '  :MANUFACTURE_QUANTITY * :ACCOUNT_MEASURE_COEF,'
      '  :ANNUL_EMPLOYEE_CODE,'
      '  :ANNUL_DATE,'
      '  :ANNUL_TIME,'
      '  :FINISH_EMPLOYEE_CODE,'
      '  :FINISH_DATE,'
      '  :FINISH_TIME, '
      '  :CREATE_EMPLOYEE_CODE, '
      '  :CREATE_DATE,'
      '  :CREATE_TIME,'
      '  :CHANGE_EMPLOYEE_CODE,'
      '  :CHANGE_DATE,'
      '  :CHANGE_TIME'
      ')')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'INC_DATE_BY_WORKDAYS[:ENTER_SH_STORE_PLAN_BEGIN_DATE~:WORKDAYS_T' +
          'O_EXIST]'
        ParamType = ptInput
        Value = ':ENTER_SH_STORE_PLAN_BEGIN_DATE :WORKDAYS_TO_EXIST'
      end
      item
        DataType = ftWideString
        Name = 
          'INC_DATE_BY_WORKDAYS[:ENTER_SH_STORE_PLAN_END_DATE~:WORKDAYS_TO_' +
          'EXIST]'
        ParamType = ptInput
        Value = ':ENTER_SH_STORE_PLAN_END_DATE :WORKDAYS_TO_EXIST'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 784
    Top = 456
  end
  object qryUpdDisasmPSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PSD_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORKDAYS_TO_EXIST'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORKDAYS_TO_EXIST'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANUFACTURE_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANUFACTURE_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ANNUL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FINISH_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FINISH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FINISH_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHANGE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DISASSEMBLY_PSD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DISASSEMBLY_PSD_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  PLANNED_STORE_DEALS_FOR_EDIT'
      'set'
      '  BND_PROCESS_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE,'
      '  BND_PROCESS_OBJECT_CODE = :SALE_OBJECT_CODE,'
      '  BND_PROCESS_CODE = 60,'
      '  PRIORITY_CODE = :PSD_PRIORITY_CODE, '
      '  STORE_CODE = :SHIPMENT_STORE_CODE,'
      
        '  STORE_DEAL_BEGIN_DATE = %INC_DATE_BY_WORKDAYS[:ENTER_SH_STORE_' +
        'PLAN_BEGIN_DATE~:WORKDAYS_TO_EXIST],'
      
        '  STORE_DEAL_END_DATE = %INC_DATE_BY_WORKDAYS[:ENTER_SH_STORE_PL' +
        'AN_END_DATE~:WORKDAYS_TO_EXIST],'
      '  PRODUCT_CODE = :PRODUCT_CODE,'
      '  QUANTITY = :MANUFACTURE_QUANTITY,'
      
        '  ACCOUNT_QUANTITY = :MANUFACTURE_QUANTITY * :ACCOUNT_MEASURE_CO' +
        'EF,'
      '  ANNUL_DATE = :ANNUL_DATE, '
      '  ANNUL_TIME = :ANNUL_TIME,'
      '  ANNUL_EMPLOYEE_CODE = :ANNUL_EMPLOYEE_CODE,'
      '  CLOSE_EMPLOYEE_CODE = :FINISH_EMPLOYEE_CODE,'
      '  CLOSE_DATE = :FINISH_DATE,'
      '  CLOSE_TIME = :FINISH_TIME,'
      '  CHANGE_EMPLOYEE_CODE = :CHANGE_EMPLOYEE_CODE,'
      '  CHANGE_DATE = :CHANGE_DATE,'
      '  CHANGE_TIME = :CHANGE_TIME'
      'where'
      
        '  (PLANNED_STORE_DEAL_BRANCH_CODE = :OLD_DISASSEMBLY_PSD_BRANCH_' +
        'CODE) and'
      '  (PLANNED_STORE_DEAL_CODE = :OLD_DISASSEMBLY_PSD_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'INC_DATE_BY_WORKDAYS[:ENTER_SH_STORE_PLAN_BEGIN_DATE~:WORKDAYS_T' +
          'O_EXIST]'
        ParamType = ptInput
        Value = ':ENTER_SH_STORE_PLAN_BEGIN_DATE :WORKDAYS_TO_EXIST'
      end
      item
        DataType = ftWideString
        Name = 
          'INC_DATE_BY_WORKDAYS[:ENTER_SH_STORE_PLAN_END_DATE~:WORKDAYS_TO_' +
          'EXIST]'
        ParamType = ptInput
        Value = ':ENTER_SH_STORE_PLAN_END_DATE :WORKDAYS_TO_EXIST'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 784
    Top = 504
  end
  object qryDelDisasmPSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OLD_DISASSEMBLY_PSD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DISASSEMBLY_PSD_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  PLANNED_STORE_DEALS_FOR_EDIT'
      'where'
      
        '  (PLANNED_STORE_DEAL_BRANCH_CODE = :OLD_DISASSEMBLY_PSD_BRANCH_' +
        'CODE) and'
      '  (PLANNED_STORE_DEAL_CODE = :OLD_DISASSEMBLY_PSD_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 784
    Top = 552
  end
  object qryFixPlannedStoreDeals: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHANGE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ANNUL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_TIME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  for Shipment in'
      '    ('
      '      select'
      '        ss.SHIPMENT_OBJECT_BRANCH_CODE,'
      '        ss.SHIPMENT_OBJECT_CODE'
      '      from'
      '        SALE_SHIPMENTS ss'
      '      where'
      
        '        (ss.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) ' +
        'and'
      '        (ss.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '      order by'
      '        ss.SALE_SHIPMENT_NO'
      '    )'
      '  loop'
      ''
      '    update'
      '      PLANNED_STORE_DEALS_FOR_EDIT psd'
      '    set'
      '      psd.CHANGE_EMPLOYEE_CODE = :CHANGE_EMPLOYEE_CODE,'
      '      psd.CHANGE_DATE = :CHANGE_DATE,'
      '      psd.CHANGE_TIME = :CHANGE_TIME,'
      '      psd.ANNUL_EMPLOYEE_CODE = :ANNUL_EMPLOYEE_CODE,'
      '      psd.ANNUL_DATE = :ANNUL_DATE,'
      '      psd.ANNUL_TIME = :ANNUL_TIME,'
      '      ('
      '        psd.CLOSE_EMPLOYEE_CODE,'
      '        psd.CLOSE_DATE,'
      '        psd.CLOSE_TIME'
      '      ) ='
      '      ('
      '        select'
      '          s2.FINISH_EMPLOYEE_CODE,'
      '          s2.FINISH_DATE,'
      '          s2.FINISH_TIME'
      '        from'
      '          SALE_SHIPMENTS ss2,'
      '          SALES s2'
      '        where'
      
        '          (ss2.SHIPMENT_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '          (ss2.SHIPMENT_OBJECT_CODE = psd.BND_PROCESS_OBJECT_COD' +
        'E) and'
      
        '          (ss2.SALE_OBJECT_BRANCH_CODE = s2.SALE_OBJECT_BRANCH_C' +
        'ODE) and'
      '          (ss2.SALE_OBJECT_CODE = s2.SALE_OBJECT_CODE)'
      '      )'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = Shipment.SHIPMENT_OB' +
        'JECT_BRANCH_CODE) and'
      
        '      (psd.BND_PROCESS_OBJECT_CODE = Shipment.SHIPMENT_OBJECT_CO' +
        'DE);'
      ''
      '  end loop;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 568
    Top = 264
  end
  object qryUpdateQuickSalePSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ANNUL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FINISH_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FINISH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FINISH_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHANGE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_TIME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  for Shipment in'
      '    ('
      '      select'
      '        ss.SHIPMENT_OBJECT_BRANCH_CODE,'
      '        ss.SHIPMENT_OBJECT_CODE'
      '      from'
      '        SALE_SHIPMENTS ss'
      '      where'
      
        '        (ss.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) ' +
        'and'
      '        (ss.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '      order by'
      '        ss.SALE_SHIPMENT_NO'
      '    )'
      '  loop'
      '    update'
      '      PLANNED_STORE_DEALS_FOR_EDIT psd'
      '    set'
      '      psd.PRIORITY_CODE ='
      '        ( select'
      '            cc.PRIORITY_CODE'
      '          from'
      '            CLIENT_COMPANIES cc'
      '          where'
      '            (cc.CLIENT_COMPANY_CODE = :CLIENT_COMPANY_CODE)'
      '        ),'
      '      psd.STORE_CODE = :SHIPMENT_STORE_CODE,'
      '      psd.STORE_DEAL_BEGIN_DATE = :SHIPMENT_DATE,'
      '      psd.STORE_DEAL_END_DATE = :SHIPMENT_DATE,'
      '      psd.PRODUCT_CODE = :PRODUCT_CODE,'
      '      psd.QUANTITY = :QUANTITY,'
      '      psd.ACCOUNT_QUANTITY ='
      '        ( select'
      '            :QUANTITY * p.ACCOUNT_MEASURE_COEF'
      '          from'
      '            PRODUCTS p'
      '          where'
      '            (p.PRODUCT_CODE = :PRODUCT_CODE)'
      '        ),'
      '      psd.ANNUL_EMPLOYEE_CODE = :ANNUL_EMPLOYEE_CODE,'
      '      psd.ANNUL_DATE = :ANNUL_DATE,'
      '      psd.ANNUL_TIME = :ANNUL_TIME,'
      '      psd.CLOSE_EMPLOYEE_CODE = :FINISH_EMPLOYEE_CODE,'
      '      psd.CLOSE_DATE = :FINISH_DATE,'
      '      psd.CLOSE_TIME = :FINISH_TIME,'
      '      psd.CHANGE_EMPLOYEE_CODE =:CHANGE_EMPLOYEE_CODE,'
      '      psd.CHANGE_DATE = :CHANGE_DATE,'
      '      psd.CHANGE_TIME = :CHANGE_TIME'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = Shipment.SHIPMENT_OB' +
        'JECT_BRANCH_CODE) and'
      
        '      (psd.BND_PROCESS_OBJECT_CODE = Shipment.SHIPMENT_OBJECT_CO' +
        'DE);'
      '  end loop;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 324
    Top = 276
  end
  object qryACCheckStoreQuantities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  psd.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  '
      '  psd.STORE_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = psd.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as STORE_IDENTIFIER,'
      '  '
      '  Sum(psd.REMAINING_QUANTITY) as NEEDED_QUANTITY,'
      ''
      '  Coalesce('
      '    ( select'
      
        '        Sum(asd.REAL_QUANTITY) keep (dense_rank last order by as' +
        'd.STORE_DEAL_DATE) as QUANTITY'
      '      from'
      '        AGGR_STORE_DEALS asd'
      '      where'
      '        (asd.PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '        (asd.STORE_CODE = psd.STORE_CODE)'
      '    ),'
      '    0'
      '  ) as STORE_QUANTITY'
      ''
      'from'
      '  MATERIAL_LIST_LINES mll,'
      '  PLANNED_STORE_DEALS psd,'
      '  PRODUCTS p'
      ''
      'where'
      '  (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      ''
      
        '  (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CO' +
        'DE) and'
      '  (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '  (psd.IN_OUT = -1) and'
      '  (psd.BND_PROCESS_CODE = :BND_PROCESS_CODE) and'
      '  (psd.IS_ACTIVE = 1) and'
      ''
      '  (psd.PRODUCT_CODE = p.PRODUCT_CODE)'
      ''
      'group by'
      '  psd.PRODUCT_CODE,'
      '  p.NAME,'
      '  p.CUSTOM_CODE,'
      '  psd.STORE_CODE'
      ''
      'having'
      '  (Sum(psd.REMAINING_QUANTITY) -'
      '   Coalesce('
      '     ( select'
      
        '         Sum(asd.REAL_QUANTITY) keep (dense_rank last order by a' +
        'sd.STORE_DEAL_DATE) as QUANTITY'
      '       from'
      '         AGGR_STORE_DEALS asd'
      '       where'
      '         (asd.PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '         (asd.STORE_CODE = psd.STORE_CODE)'
      '     ),'
      '     0'
      '   )'
      '   >= %EPS'
      '  )')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EPS'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 784
    Top = 64
    object qryACCheckStoreQuantitiesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryACCheckStoreQuantitiesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryACCheckStoreQuantitiesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryACCheckStoreQuantitiesSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryACCheckStoreQuantitiesSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 45
    end
    object qryACCheckStoreQuantitiesNEEDED_QUANTITY: TAbmesFloatField
      FieldName = 'NEEDED_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object qryACCheckStoreQuantitiesSTORE_QUANTITY: TAbmesFloatField
      FieldName = 'STORE_QUANTITY'
      DisplayFormat = ',0.###'
    end
  end
  object qryACGetModel: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ml.ML_OBJECT_BRANCH_CODE,'
      '  ml.ML_OBJECT_CODE,'
      '  Nvl2(ml.LIMITING_EMPLOYEE_CODE, 1, 0) as IS_LIMITING'
      'from'
      '  MATERIAL_LISTS ml'
      'where'
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (ml.BND_PROCESS_OBJECT_CODE = :SALE_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 784
    Top = 16
    object qryACGetModelML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object qryACGetModelML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object qryACGetModelIS_LIMITING: TAbmesFloatField
      FieldName = 'IS_LIMITING'
      FieldValueType = fvtBoolean
    end
  end
  object qryACCreateStoreDeals: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DEAL_TYPE_ABBREV'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  for p in'
      '    ('
      '      select'
      
        '        psd.PLANNED_STORE_DEAL_BRANCH_CODE as STORE_DEAL_OBJECT_' +
        'BRANCH_CODE,'
      '        seq_PROCESS_OBJECTS.NextVal as STORE_DEAL_OBJECT_CODE,'
      '        psd.STORE_CODE,'
      '        psd.STORE_DEAL_TYPE_CODE,'
      '        psd.PRODUCT_CODE,'
      '        psd.REMAINING_QUANTITY as WANTED_QUANTITY,'
      '        psd.REMAINING_QUANTITY as QUANTITY,'
      '        Decode(:IN_OUT,'
      
        '          -1, 1,  -- account_quantity na teglene se izchisliava ' +
        'v trigerite'
      '          ( select'
      
        '              psd.REMAINING_QUANTITY * (Sum(sd.ACCOUNT_QUANTITY)' +
        ' / Sum(sd.QUANTITY))'
      '            from'
      '              STORE_DEALS sd'
      '            where'
      
        '              (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '              (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE)' +
        ' and'
      '              (sd.IN_OUT = -1) and'
      '              (sd.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '        ) as ACCOUNT_QUANTITY,'
      
        '        (select iv.BASE_CURRENCY_CODE from INTERNAL_VALUES iv wh' +
        'ere (iv.CODE = 1)) as CURRENCY_CODE,'
      '        ( psd.REMAINING_QUANTITY *'
      '          Decode(:IN_OUT,'
      
        '            -1, 0,  -- cenata na teglene se preizchisliava v tri' +
        'gerite'
      '            ( select'
      '                Sum(sd.TOTAL_PRICE) / Sum(sd.QUANTITY)'
      '              from'
      '                STORE_DEALS sd'
      '              where'
      
        '                (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_COD' +
        'E) and'
      '                (sd.IN_OUT = -1) and'
      '                (sd.STORNO_EMPLOYEE_CODE is null)'
      '            )'
      '          )'
      '        ) as TOTAL_PRICE,'
      '        psd.DEPT_CODE,'
      '        psd.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '        psd.BND_PROCESS_OBJECT_CODE,'
      '        psd.BND_PROCESS_CODE,'
      '        psd.PLANNED_STORE_DEAL_BRANCH_CODE,'
      '        psd.PLANNED_STORE_DEAL_CODE,'
      '        psd.IN_OUT,'
      
        '        (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER' +
        ') as STORE_IDENTIFIER'
      ''
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        PLANNED_STORE_DEALS psd,'
      '        PRODUCT_PERIODS pper,'
      '        DEPTS d,'
      '        DEPT_TYPES dt'
      ''
      '      where'
      '        (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '        (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      ''
      
        '        (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRA' +
        'NCH_CODE) and'
      '        (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '        (psd.IN_OUT = :IN_OUT) and'
      '        (psd.BND_PROCESS_CODE = :BND_PROCESS_CODE) and'
      '        (psd.IS_ACTIVE = 1) and'
      ''
      
        '        (pper.PRODUCT_CODE = %PRODUCT_PERIOD_EXISTANCE_PRODUCT_C' +
        'ODE[psd.PRODUCT_CODE ~ ContextDate ]) and'
      
        '        (ContextDate between pper.BEGIN_DATE and pper.END_DATE) ' +
        'and'
      ''
      '        (psd.STORE_CODE = d.DEPT_CODE) and'
      '        (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '    )'
      '  loop'
      '    insert into PROCESS_OBJECTS'
      '    ('
      '      PROCESS_OBJECT_BRANCH_CODE,'
      '      PROCESS_OBJECT_CODE,'
      '      PROCESS_OBJECT_CLASS_CODE'
      '    )'
      '    values'
      '    ('
      '      p.STORE_DEAL_OBJECT_BRANCH_CODE,'
      '      p.STORE_DEAL_OBJECT_CODE,'
      '      10'
      '    );'
      ''
      '    for n in'
      '      ('
      '        select'
      
        '          (Coalesce(Max(sd.STORE_DEAL_NO), 0) + 1) as STORE_DEAL' +
        '_NO'
      '        from'
      '          STORE_DEALS sd'
      '        where'
      '          (sd.STORE_DEAL_DATE = ContextDate) and'
      '          (sd.STORE_CODE = p.STORE_CODE) and'
      '          (sd.IN_OUT = :IN_OUT)'
      '      )'
      '    loop'
      '      insert into STORE_DEALS_FOR_EDIT'
      '      ('
      '        STORE_DEAL_OBJECT_BRANCH_CODE,'
      '        STORE_DEAL_OBJECT_CODE,'
      '        STORE_CODE,'
      '        STORE_DEAL_TYPE_CODE,'
      '        STORE_DEAL_DATE,'
      '        STORE_DEAL_NO,'
      '        PRODUCT_CODE,'
      '        WANTED_QUANTITY,'
      '        QUANTITY,'
      '        ACCOUNT_QUANTITY,'
      '        CURRENCY_CODE,'
      '        TOTAL_PRICE,'
      '        STORE_EMPLOYEE_CODE,'
      '        OTHER_EMPLOYEE_CODE,'
      '        REQUEST_EMPLOYEE_CODE,'
      '        IS_WASTE_BOUND,'
      '        DEPT_CODE,'
      '        BND_PROCESS_OBJECT_BRANCH_CODE,'
      '        BND_PROCESS_OBJECT_CODE,'
      '        BND_PROCESS_CODE,'
      '        PLANNED_STORE_DEAL_BRANCH_CODE,'
      '        PLANNED_STORE_DEAL_CODE,'
      '        CREATE_DATE,'
      '        CREATE_TIME,'
      '        CREATE_EMPLOYEE_CODE,'
      '        IN_OUT'
      '      )'
      '      values'
      '      ('
      '        p.STORE_DEAL_OBJECT_BRANCH_CODE,'
      '        p.STORE_DEAL_OBJECT_CODE,'
      '        p.STORE_CODE,'
      '        p.STORE_DEAL_TYPE_CODE,'
      '        ContextDate,'
      '        n.STORE_DEAL_NO,'
      '        p.PRODUCT_CODE,'
      '        p.WANTED_QUANTITY,'
      '        p.QUANTITY,'
      '        p.ACCOUNT_QUANTITY,'
      '        p.CURRENCY_CODE,'
      '        p.TOTAL_PRICE,'
      '        LoginContext.UserCode,'
      '        LoginContext.UserCode,'
      '        LoginContext.UserCode,'
      '        0,'
      '        p.DEPT_CODE,'
      '        p.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '        p.BND_PROCESS_OBJECT_CODE,'
      '        p.BND_PROCESS_CODE,'
      '        p.PLANNED_STORE_DEAL_BRANCH_CODE,'
      '        p.PLANNED_STORE_DEAL_CODE,'
      '        ContextDate,'
      '        ContextTime,'
      '        LoginContext.UserCode,'
      '        p.IN_OUT'
      '      );'
      ''
      '      update'
      '        PROCESS_OBJECTS po'
      '      set'
      '        po.PROCESS_OBJECT_IDENTIFIER ='
      
        '          (p.STORE_IDENTIFIER || '#39'/'#39' || To_Char(ContextNow, '#39'dd-' +
        'mm-yyyy'#39') || '#39'/'#39' || :DEAL_TYPE_ABBREV || '#39'/'#39' || n.STORE_DEAL_NO)'
      '      where'
      
        '        (po.PROCESS_OBJECT_BRANCH_CODE = p.STORE_DEAL_OBJECT_BRA' +
        'NCH_CODE) and'
      '        (po.PROCESS_OBJECT_CODE = p.STORE_DEAL_OBJECT_CODE)'
      '      ;'
      ''
      '    end loop;'
      '  end loop;'
      'end;'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 
          'PRODUCT_PERIOD_EXISTANCE_PRODUCT_CODE[psd.PRODUCT_CODE ~ Context' +
          'Date ]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 784
    Top = 112
  end
  object qryACCheckOperations: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Sign(Count(*)) as HAS_NORMAL_OPERATIONS'
      ''
      'from'
      '  MATERIAL_LIST_LINES mll,'
      '  ML_MODEL_STAGES mlms,'
      '  MLMS_OPERATIONS mlmso'
      ''
      'where'
      '  (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      ''
      '  (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      ''
      
        '  (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and'
      ''
      '  (mlmso.OPERATION_TYPE_CODE = 2) and'
      '  (mlmso.MLMS_OPERATION_VARIANT_NO >= 0)'
      '  ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 784
    Top = 160
    object qryACCheckOperationsHAS_NORMAL_OPERATIONS: TAbmesFloatField
      FieldName = 'HAS_NORMAL_OPERATIONS'
      FieldValueType = fvtBoolean
    end
  end
  object qryACCreateOperaionMovements: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into OPERATION_MOVEMENTS_FOR_EDIT'
      '('
      '  OM_BRANCH_CODE,'
      '  OM_CODE,'
      '  OPERATION_MOVEMENT_TYPE_CODE,'
      '  OM_DATE,'
      '  OM_TIME,'
      '  FROM_EMPLOYEE_CODE,'
      '  TO_EMPLOYEE_CODE,'
      '  WORK_DETAIL_TECH_QUANTITY,'
      '  TOTAL_DETAIL_TECH_QUANTITY,'
      '  QA_DETAIL_TECH_QUANTITY,'
      '  QA_EMPLOYEE_CODE,'
      '  CREATE_EMPLOYEE_CODE,'
      '  CREATE_DATE,'
      '  CREATE_TIME,'
      '  FROM_MLMSO_OBJECT_BRANCH_CODE,'
      '  FROM_MLMSO_OBJECT_CODE,'
      '  TO_MLMSO_OBJECT_BRANCH_CODE,'
      '  TO_MLMSO_OBJECT_CODE'
      ')'
      ''
      'select'
      '  ex.FROM_MLMSO_OBJECT_BRANCH_CODE as OM_BRANCH_CODE,'
      '  seq_OPERATION_MOVEMENTS.NextVal as OM_CODE,'
      '  3 as OPERATION_MOVEMENT_TYPE_CODE,'
      '  ContextDate as OM_DATE,'
      '  ContextTime as OM_TIME,'
      '  LoginContext.UserCode as FROM_EMPLOYEE_CODE,'
      '  LoginContext.UserCode as TO_EMPLOYEE_CODE,'
      '  0 as WORK_DETAIL_TECH_QUANTITY,'
      '  ex.TOTAL_DETAIL_TECH_QUANTITY,'
      '  0 as QA_DETAIL_TECH_QUANTITY,'
      '  LoginContext.UserCode as QA_EMPLOYEE_CODE,'
      '  LoginContext.UserCode as CREATE_EMPLOYEE_CODE,'
      '  ContextDate as CREATE_DATE,'
      '  ContextTime as CREATE_TIME,'
      '  ex.FROM_MLMSO_OBJECT_BRANCH_CODE,'
      '  ex.FROM_MLMSO_OBJECT_CODE,'
      '  ex.TO_MLMSO_OBJECT_BRANCH_CODE,'
      '  ex.TO_MLMSO_OBJECT_CODE'
      ''
      'from'
      '  ('
      '    select'
      '      mll.MLL_OBJECT_BRANCH_CODE as FROM_MLL_OBJECT_BRANCH_CODE,'
      '      mll.MLL_OBJECT_CODE as FROM_MLL_OBJECT_CODE,'
      ''
      
        '      mlmso.MLMSO_OBJECT_BRANCH_CODE as FROM_MLMSO_OBJECT_BRANCH' +
        '_CODE,'
      '      mlmso.MLMSO_OBJECT_CODE as FROM_MLMSO_OBJECT_CODE,'
      '      '
      
        '      Coalesce(mlmso3.MLMSO_OBJECT_BRANCH_CODE, mlmso2.MLMSO_OBJ' +
        'ECT_BRANCH_CODE) as TO_MLMSO_OBJECT_BRANCH_CODE,'
      
        '      Coalesce(mlmso3.MLMSO_OBJECT_CODE, mlmso2.MLMSO_OBJECT_COD' +
        'E) as TO_MLMSO_OBJECT_CODE,'
      '    '
      '      ('
      '        mll.LINE_DETAIL_TECH_QUANTITY -'
      '        Coalesce('
      '          ('
      '            select'
      '              Sum(om2.TOTAL_DETAIL_TECH_QUANTITY)'
      '            from'
      '              OPERATION_MOVEMENTS om2,'
      '              MLMS_OPERATIONS mlmso2,'
      '              ML_MODEL_STAGES mlms2'
      '            where'
      
        '              (om2.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso2.MLMSO_' +
        'OBJECT_BRANCH_CODE) and'
      
        '              (om2.FROM_MLMSO_OBJECT_CODE = mlmso2.MLMSO_OBJECT_' +
        'CODE) and'
      '              '
      
        '              (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '              (mlmso2.MLMS_OBJECT_CODE = mlms2.MLMS_OBJECT_CODE)' +
        ' and'
      '              '
      
        '              (mlms2.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRA' +
        'NCH_CODE) and'
      '              (mlms2.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '            '
      
        '              ( (mlms2.ML_MODEL_STAGE_NO < mlms.ML_MODEL_STAGE_N' +
        'O) or'
      
        '                ( (mlms2.ML_MODEL_STAGE_NO = mlms.ML_MODEL_STAGE' +
        '_NO) and'
      
        '                  ( (mlmso2.MLMS_OPERATION_NO < mlmso.MLMS_OPERA' +
        'TION_NO) ) ) ) and'
      '    '
      '              (om2.TO_DEPT_CODE is not null)'
      '          ),'
      '          0'
      '        ) -'
      '        Coalesce('
      '          ('
      '            select'
      '              Sum(om.TOTAL_DETAIL_TECH_QUANTITY)'
      '            from'
      '              OPERATION_MOVEMENTS om'
      '            where'
      
        '              (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OB' +
        'JECT_BRANCH_CODE) and'
      
        '              (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CO' +
        'DE) and'
      '              (om.STORNO_EMPLOYEE_CODE is null)'
      '          ),'
      '          0'
      '        )'
      '      ) as TOTAL_DETAIL_TECH_QUANTITY'
      '    '
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms,'
      '      MLMS_OPERATIONS mlmso,'
      '      ML_MODEL_STAGES next_mlms,'
      '      ML_MODEL_STAGES mlms2,'
      '      MLMS_OPERATIONS mlmso2,'
      '      MLMS_OPERATIONS mlmso3'
      '    '
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      '    '
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      '      (mlms.ML_MODEL_STAGE_NO > 0) and'
      '      (mlms.OUTGOING_WORKDAYS > 0) and'
      '      (mlms.IS_AUTO_MOVEMENT = 0) and'
      '    '
      
        '      (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_C' +
        'ODE) and'
      '      (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '      (mlmso.OPERATION_TYPE_CODE <> 2) and  '
      '    '
      
        '      (next_mlms.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (next_mlms.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      
        '      (next_mlms.ML_MODEL_STAGE_NO = mlms.ML_MODEL_STAGE_NO + 1)' +
        ' and'
      '      '
      '      (mlms2.MLL_OBJECT_BRANCH_CODE ='
      
        '        Decode(next_mlms.TREATMENT_WORKDAYS, 0, mll.PARENT_MLL_O' +
        'BJECT_BRANCH_CODE, mll.MLL_OBJECT_BRANCH_CODE)) and'
      '      (mlms2.MLL_OBJECT_CODE ='
      
        '        Decode(next_mlms.TREATMENT_WORKDAYS, 0, mll.PARENT_MLL_O' +
        'BJECT_CODE, mll.MLL_OBJECT_CODE)) and'
      '      (mlms2.ML_MODEL_STAGE_NO ='
      
        '        Decode(next_mlms.TREATMENT_WORKDAYS, 0, 1, next_mlms.ML_' +
        'MODEL_STAGE_NO)) and'
      ''
      
        '      (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mlmso2.MLMS_OBJECT_CODE = mlms2.MLMS_OBJECT_CODE) and'
      '      (mlmso2.OPERATION_TYPE_CODE ='
      '        ('
      '          select'
      '            Min(mlmso4.OPERATION_TYPE_CODE)'
      '          from'
      '            MLMS_OPERATIONS mlmso4'
      '          where'
      
        '            (mlmso4.MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJECT_' +
        'BRANCH_CODE) and'
      '            (mlmso4.MLMS_OBJECT_CODE = mlms2.MLMS_OBJECT_CODE) '
      '        )'
      '      ) and'
      ''
      
        '      (mlmso3.MLMS_OBJECT_BRANCH_CODE(+) = mlmso.MLMS_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (mlmso3.MLMS_OBJECT_CODE(+) = mlmso.MLMS_OBJECT_CODE) and'
      '      (mlmso3.OPERATION_TYPE_CODE(+) = 3) and'
      
        '      (mlmso3.MLMS_OPERATION_NO(+) > mlmso.MLMS_OPERATION_NO) an' +
        'd'
      ''
      '      ('
      '        mll.LINE_DETAIL_TECH_QUANTITY -'
      '        Coalesce('
      '          ('
      '            select'
      '              Sum(om2.TOTAL_DETAIL_TECH_QUANTITY)'
      '            from'
      '              OPERATION_MOVEMENTS om2,'
      '              MLMS_OPERATIONS mlmso2,'
      '              ML_MODEL_STAGES mlms2'
      '            where'
      
        '              (om2.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso2.MLMSO_' +
        'OBJECT_BRANCH_CODE) and'
      
        '              (om2.FROM_MLMSO_OBJECT_CODE = mlmso2.MLMSO_OBJECT_' +
        'CODE) and'
      ''
      
        '              (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '              (mlmso2.MLMS_OBJECT_CODE = mlms2.MLMS_OBJECT_CODE)' +
        ' and'
      ''
      
        '              (mlms2.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRA' +
        'NCH_CODE) and'
      '              (mlms2.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '              ( (mlms2.ML_MODEL_STAGE_NO < mlms.ML_MODEL_STAGE_N' +
        'O) or'
      
        '                ( (mlms2.ML_MODEL_STAGE_NO = mlms.ML_MODEL_STAGE' +
        '_NO) and'
      
        '                  ( (mlmso2.MLMS_OPERATION_NO < mlmso.MLMS_OPERA' +
        'TION_NO) ) ) ) and'
      ''
      '              (om2.TO_DEPT_CODE is not null)'
      '          ),'
      '          0'
      '        ) -'
      '        Coalesce('
      '          ('
      '            select'
      '              Sum(om.TOTAL_DETAIL_TECH_QUANTITY)'
      '            from'
      '              OPERATION_MOVEMENTS om'
      '            where'
      
        '              (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OB' +
        'JECT_BRANCH_CODE) and'
      
        '              (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CO' +
        'DE) and'
      '              (om.STORNO_EMPLOYEE_CODE is null)'
      '          ),'
      '          0'
      '        )'
      '        >= %EPS'
      '      )'
      '    '
      '    order by'
      '      mll.NO_AS_FORMATED_TEXT desc,'
      '      mll.FORK_NO desc,'
      '      mlms.ML_MODEL_STAGE_NO,'
      '      mlmso.MLMS_OPERATION_NO,'
      '      mlmso.MLMS_OPERATION_VARIANT_NO'
      '  ) ex'
      ''
      'where'
      '  not exists('
      '    select'
      '      1'
      '    from'
      '      MLMS_OPERATIONS nmlmso,'
      '      ML_MODEL_STAGES nmlms'
      '    where'
      
        '      (nmlmso.MLMSO_OBJECT_BRANCH_CODE = ex.TO_MLMSO_OBJECT_BRAN' +
        'CH_CODE) and'
      '      (nmlmso.MLMSO_OBJECT_CODE = ex.TO_MLMSO_OBJECT_CODE) and'
      ''
      
        '      (nmlms.MLMS_OBJECT_BRANCH_CODE = nmlmso.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (nmlms.MLMS_OBJECT_CODE = nmlmso.MLMS_OBJECT_CODE) and'
      '      (nmlms.TREATMENT_WORKDAYS > 0) and'
      '      (nmlms.OUTGOING_WORKDAYS = 0)'
      '  )')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EPS'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 784
    Top = 208
  end
  object qryACCreateOPStoreDeal: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DEAL_TYPE_ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'declare'
      '  ProcessObjectIdentifier VarChar2(250 char);'
      'begin'
      '  insert into STORE_DEALS_FOR_EDIT'
      '  ('
      '    STORE_DEAL_OBJECT_BRANCH_CODE,'
      '    STORE_DEAL_OBJECT_CODE,'
      '    STORE_CODE,'
      '    STORE_DEAL_TYPE_CODE,'
      '    STORE_DEAL_DATE,'
      '    STORE_DEAL_NO,'
      '    PRODUCT_CODE,'
      '    WANTED_QUANTITY,'
      '    QUANTITY,'
      '    ACCOUNT_QUANTITY,'
      '    CURRENCY_CODE,'
      '    TOTAL_PRICE,'
      '    STORE_EMPLOYEE_CODE,'
      '    OTHER_EMPLOYEE_CODE,'
      '    REQUEST_EMPLOYEE_CODE,'
      '    IS_WASTE_BOUND,'
      '    DEPT_CODE,'
      '    BND_PROCESS_OBJECT_BRANCH_CODE,'
      '    BND_PROCESS_OBJECT_CODE,'
      '    BND_PROCESS_CODE,'
      '    PLANNED_STORE_DEAL_BRANCH_CODE,'
      '    PLANNED_STORE_DEAL_CODE,'
      '    CREATE_DATE,'
      '    CREATE_TIME,'
      '    CREATE_EMPLOYEE_CODE,'
      '    IN_OUT'
      '  )'
      ''
      '  select'
      '    :STORE_DEAL_OBJECT_BRANCH_CODE,'
      '    :STORE_DEAL_OBJECT_CODE,'
      '    psd.STORE_CODE,'
      '    psd.STORE_DEAL_TYPE_CODE,'
      '    ContextDate as STORE_DEAL_DATE,'
      '    ('
      '      Coalesce('
      '        ('
      '          select'
      '            Max(sd.STORE_DEAL_NO)'
      '          from'
      '            STORE_DEALS sd'
      '          where'
      '            (sd.STORE_DEAL_DATE = ContextDate) and'
      '            (sd.STORE_CODE = psd.STORE_CODE) and'
      '            (sd.IN_OUT = :IN_OUT)'
      '        ),'
      '        0'
      '      )'
      '      +'
      '      1'
      '    ) as STORE_DEAL_NO,'
      '    psd.PRODUCT_CODE,'
      '    psd.REMAINING_QUANTITY as WANTED_QUANTITY,'
      '    psd.REMAINING_QUANTITY as QUANTITY,'
      '    psd.REMAINING_ACCOUNT_QUANTITY as ACCOUNT_QUANTITY,'
      
        '    (select iv.BASE_CURRENCY_CODE from INTERNAL_VALUES iv where ' +
        '(iv.CODE = 1)) as CURRENCY_CODE, -- otdolu cenata e v BASE_CURRE' +
        'NCY_CODE'
      '    ('
      '      ('
      
        '        ModelUtils.GetMllRealSinglePrice(mll.MLL_OBJECT_BRANCH_C' +
        'ODE, mll.MLL_OBJECT_CODE) /'
      '        ('
      '          select'
      '            p.TECH_MEASURE_COEF'
      '          from'
      '            PRODUCTS p'
      '          where'
      '            (p.PRODUCT_CODE = psd.PRODUCT_CODE)'
      '        )'
      '      ) *'
      '      psd.REMAINING_QUANTITY'
      '    ) as TOTAL_PRICE,'
      '    LoginContext.UserCode as STORE_EMPLOYEE_CODE,'
      '    LoginContext.UserCode as OTHER_EMPLOYEE_CODE,'
      '    LoginContext.UserCode as REQUEST_EMPLOYEE_CODE,'
      '    0 as IS_WASTE_BOUND,'
      '    from_mlms.DEPT_CODE,'
      '    psd.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '    psd.BND_PROCESS_OBJECT_CODE,'
      '    psd.BND_PROCESS_CODE,'
      '    psd.PLANNED_STORE_DEAL_BRANCH_CODE,'
      '    psd.PLANNED_STORE_DEAL_CODE,'
      '    ContextDate as CREATE_DATE,'
      '    ContextTime as CREATE_TIME,'
      '    LoginContext.UserCode as CREATE_EMPLOYEE_CODE,'
      '    psd.IN_OUT'
      ''
      '  from'
      '    MATERIAL_LISTS ml,'
      '    PLANNED_STORE_DEALS psd,'
      '    MATERIAL_LIST_LINES mll,'
      '    ML_MODEL_STAGES mlms,'
      '    ML_MODEL_STAGES from_mlms'
      ''
      '  where'
      '    (ml.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '    (ml.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      ''
      
        '    (psd.BND_PROCESS_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '    (psd.BND_PROCESS_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      '    (psd.IN_OUT = :IN_OUT) and'
      '    (psd.IS_ACTIVE = 1) and'
      ''
      '    (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '    (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '    (mll.NO_1 = 0) and'
      ''
      
        '    (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) a' +
        'nd'
      '    (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '    (mlms.OUTGOING_WORKDAYS = 0) and'
      ''
      
        '    (from_mlms.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_C' +
        'ODE) and'
      '    (from_mlms.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      '    (from_mlms.ML_MODEL_STAGE_NO = mlms.ML_MODEL_STAGE_NO - 1)'
      '  ;'
      ''
      ''
      '  select'
      '    Max('
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        '|| '#39'/'#39' ||'
      '      To_Char(ContextNow, '#39'dd-mm-yyyy'#39') || '#39'/'#39' ||'
      '      :DEAL_TYPE_ABBREV || '#39'/'#39' ||'
      '      sd.STORE_DEAL_NO'
      '    )'
      '  into'
      '    ProcessObjectIdentifier'
      '  from'
      '    STORE_DEALS sd,'
      '    DEPTS d,'
      '    DEPT_TYPES dt'
      '  where'
      
        '    (sd.STORE_DEAL_OBJECT_BRANCH_CODE = :STORE_DEAL_OBJECT_BRANC' +
        'H_CODE) and'
      '    (sd.STORE_DEAL_OBJECT_CODE = :STORE_DEAL_OBJECT_CODE) and'
      '    (sd.STORE_CODE = d.DEPT_CODE) and'
      '    (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+));'
      ''
      '  if (ProcessObjectIdentifier is null) then'
      '    raise_application_error(-20002, '#39'Missing StoreDeal'#39');'
      '  end if;'
      ''
      '  update'
      '    PROCESS_OBJECTS po'
      '  set'
      '    po.PROCESS_OBJECT_IDENTIFIER = ProcessObjectIdentifier'
      '  where'
      
        '    (po.PROCESS_OBJECT_BRANCH_CODE = :STORE_DEAL_OBJECT_BRANCH_C' +
        'ODE) and'
      '    (po.PROCESS_OBJECT_CODE = :STORE_DEAL_OBJECT_CODE)'
      '  ;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 784
    Top = 256
  end
  object qryCheckModelStages: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Sign(Count(*)) as HAS_MLL_WITHOUT_STAGES'
      'from'
      '  MATERIAL_LIST_LINES mll'
      'where'
      '  (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      ''
      '  not exists('
      '    select'
      '      1'
      '    from'
      '      ML_MODEL_STAGES mlms'
      '    where'
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 296
    Top = 384
    object qryCheckModelStagesHAS_MLL_WITHOUT_STAGES: TAbmesFloatField
      FieldName = 'HAS_MLL_WITHOUT_STAGES'
      FieldValueType = fvtBoolean
    end
  end
  object qryAddShipmentPSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLAN_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLAN_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ADD_TO_FIRST_SHIPMENT_ONLY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_SHIPMENT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into PLANNED_STORE_DEALS_FOR_EDIT'
      '('
      '  PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  PLANNED_STORE_DEAL_CODE,'
      '  PLANNED_STORE_DEAL_TYPE_CODE,'
      '  STORE_DEAL_TYPE_CODE,'
      '  PRIORITY_CODE,'
      '  IS_PLANNED_MANUALLY,'
      '  BND_PROCESS_OBJECT_BRANCH_CODE, '
      '  BND_PROCESS_OBJECT_CODE, '
      '  BND_PROCESS_CODE, '
      '  STORE_CODE, '
      '  STORE_DEAL_BEGIN_DATE, '
      '  STORE_DEAL_END_DATE, '
      '  PRODUCT_CODE, '
      '  QUANTITY, '
      '  ACCOUNT_QUANTITY, '
      '  CREATE_EMPLOYEE_CODE,'
      '  CREATE_DATE, '
      '  CREATE_TIME, '
      '  CHANGE_EMPLOYEE_CODE, '
      '  CHANGE_DATE, '
      '  CHANGE_TIME'
      ')'
      'select'
      
        '  :SHIPMENT_OBJECT_BRANCH_CODE as PLANNED_STORE_DEAL_BRANCH_CODE' +
        ','
      '  seq_PLANNED_STORE_DEALS.NextVal as PLANNED_STORE_DEAL_CODE,'
      '  1 as PLANNED_STORE_DEAL_TYPE_CODE,'
      '  :STORE_DEAL_TYPE_CODE as STORE_DEAL_TYPE_CODE,'
      '  ('
      '    select'
      '      sg.PRIORITY_CODE'
      '    from'
      '      SALE_GROUPS sg'
      '    where'
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE)'
      '  ) as PRIORITY_CODE,'
      '  0 as IS_PLANNED_MANUALLY,'
      
        '  :SHIPMENT_OBJECT_BRANCH_CODE as BND_PROCESS_OBJECT_BRANCH_CODE' +
        ','
      '  :SHIPMENT_OBJECT_CODE as BND_PROCESS_OBJECT_CODE,'
      '  :BND_PROCESS_CODE as BND_PROCESS_CODE,'
      '  :SHIPMENT_STORE_CODE as STORE_CODE,'
      '  :PLAN_DATE as STORE_DEAL_BEGIN_DATE,'
      '  :PLAN_DATE as STORE_DEAL_END_DATE,'
      '  s.PRODUCT_CODE,'
      '  :PLAN_QUANTITY as QUANTITY,'
      '  (:PLAN_QUANTITY * p.ACCOUNT_MEASURE_COEF) as ACCOUNT_QUANTITY,'
      '  LoginContext.UserCode as CREATE_EMPLOYEE_CODE,'
      '  ContextDate as CREATE_DATE,'
      '  ContextTime as CREATE_TIME,'
      '  LoginContext.UserCode as CHANGE_EMPLOYEE_CODE,'
      '  ContextDate as CHANGE_DATE,'
      '  ContextTime as CHANGE_TIME'
      'from'
      '  SALES s,'
      '  PRODUCTS p'
      'where'
      '  (s.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '  (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      ''
      '  ( (:ADD_TO_FIRST_SHIPMENT_ONLY = 0) or'
      '    not exists('
      '      select'
      '        1'
      '      from'
      '        SALE_SHIPMENTS ss,'
      '        PLANNED_STORE_DEALS psd'
      '      where'
      
        '        (ss.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE)' +
        ' and'
      '        (ss.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '        (psd.BND_PROCESS_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJECT' +
        '_BRANCH_CODE) and'
      
        '        (psd.BND_PROCESS_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE) ' +
        'and'
      '        (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '        (psd.STORE_DEAL_TYPE_CODE = :STORE_DEAL_TYPE_CODE) and'
      ''
      '        (ss.SALE_SHIPMENT_NO < :SALE_SHIPMENT_NO)'
      '    )'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 544
    Top = 32
  end
  object qryUpdShipmentPSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIPMENT_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'IMPORT_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'IMPORT_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLAN_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLAN_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  PLANNED_STORE_DEALS_FOR_EDIT psd'
      'set'
      '  ('
      '    psd.PRIORITY_CODE, '
      '    psd.STORE_CODE, '
      '    psd.STORE_DEAL_BEGIN_DATE, '
      '    psd.STORE_DEAL_END_DATE, '
      '    psd.QUANTITY,'
      '    psd.ACCOUNT_QUANTITY,'
      '    psd.CHANGE_EMPLOYEE_CODE,'
      '    psd.CHANGE_DATE,'
      '    psd.CHANGE_TIME'
      '  ) ='
      '  ('
      '    select'
      '      ('
      '        select'
      '          sg.PRIORITY_CODE'
      '        from'
      '          SALE_GROUPS sg'
      '        where'
      
        '          (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJEC' +
        'T_BRANCH_CODE) and'
      '          (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE)'
      '      ) as PRIORITY_CODE,'
      '      :SHIPMENT_STORE_CODE as STORE_CODE,'
      
        '      Decode(psd.IN_OUT, -1, :SHIPMENT_PLAN_DATE, :IMPORT_PLAN_D' +
        'ATE) as STORE_DEAL_BEGIN_DATE,'
      
        '      Decode(psd.IN_OUT, -1, :SHIPMENT_PLAN_DATE, :IMPORT_PLAN_D' +
        'ATE) as STORE_DEAL_END_DATE,'
      '      :PLAN_QUANTITY as QUANTITY,'
      
        '      (:PLAN_QUANTITY * p.ACCOUNT_MEASURE_COEF) as ACCOUNT_QUANT' +
        'ITY,'
      '      LoginContext.UserCode as CHANGE_EMPLOYEE_CODE,'
      '      ContextDate as CHANGE_DATE,'
      '      ContextTime as CHANGE_TIME'
      '    from'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '      (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '      (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '  )'
      'where'
      
        '  (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :OLD_SHIPMENT_OBJECT_BRA' +
        'NCH_CODE) and'
      '  (psd.BND_PROCESS_OBJECT_CODE = :OLD_SHIPMENT_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 544
    Top = 80
  end
  object qryInactiveProducts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME'
      'from'
      '  SPEC_LINES sl,'
      '  PRODUCTS p'
      'where'
      '  (sl.SPEC_PRODUCT_CODE = :PRODUCT_CODE) and'
      '  (sl.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (p.IS_INACTIVE = 1)'
      'order by'
      '  sl.NO_AS_FORMATED_TEXT')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 456
    Top = 568
    object qryInactiveProductsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryInactiveProductsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
  end
  object qryDeleteSaleShipment: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  delete'
      '    PLANNED_STORE_DEALS_FOR_EDIT psd'
      '  where'
      
        '    (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :SHIPMENT_OBJECT_BRANC' +
        'H_CODE) and'
      '    (psd.BND_PROCESS_OBJECT_CODE = :SHIPMENT_OBJECT_CODE);'
      ''
      '  delete'
      '    SALE_SHIPMENTS_FOR_EDIT ss'
      '  where'
      
        '    (ss.SHIPMENT_OBJECT_BRANCH_CODE = :SHIPMENT_OBJECT_BRANCH_CO' +
        'DE) and'
      '    (ss.SHIPMENT_OBJECT_CODE = :SHIPMENT_OBJECT_CODE);'
      ''
      '  delete'
      '    PROCESS_OBJECTS po'
      '  where'
      
        '    (po.PROCESS_OBJECT_BRANCH_CODE = :SHIPMENT_OBJECT_BRANCH_COD' +
        'E) and'
      '    (po.PROCESS_OBJECT_CODE = :SHIPMENT_OBJECT_CODE);'
      'end;'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 344
  end
  object qryUpdModelLinePSDs: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  for x in'
      '    ('
      '      select'
      '        mll.MLL_OBJECT_BRANCH_CODE,'
      '        mll.MLL_OBJECT_CODE'
      '      from'
      '        MATERIAL_LISTS ml,'
      '        MATERIAL_LIST_LINES mll'
      '      where'
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '        (ml.BND_PROCESS_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH' +
        '_CODE) and'
      '        (ml.BND_PROCESS_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '    )'
      '  loop'
      '    update'
      '      PLANNED_STORE_DEALS_FOR_EDIT psdfe'
      '    set'
      '      psdfe.PRIORITY_CODE = :PRIORITY_CODE'
      '    where'
      
        '      (psdfe.BND_PROCESS_OBJECT_BRANCH_CODE = x.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psdfe.BND_PROCESS_OBJECT_CODE = x.MLL_OBJECT_CODE) and'
      '      (psdfe.IS_ACTIVE = 1)'
      '    ;'
      '  end loop;'
      'end;'
      ''
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 672
    Top = 288
  end
  object prvSaleAndML: TDataSetProvider
    DataSet = qrySaleAndML
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 800
    Top = 328
  end
  object qrySaleAndML: TAbmesSQLQuery
    MaxBlobSize = -1
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
      end>
    SQL.Strings = (
      'select'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      '  ml.ML_OBJECT_BRANCH_CODE,'
      '  ml.ML_OBJECT_CODE,'
      '  s.SALE_ORDER_TYPE_CODE'
      ''
      'from'
      '  SALES s,'
      '  MATERIAL_LISTS ml'
      ''
      'where'
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE' +
        '(+)) and'
      '  (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE(+)) and'
      ''
      '  (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE) and'
      '  (s.SALE_NO = :SALE_NO)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 800
    Top = 376
    object qrySaleAndMLSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object qrySaleAndMLSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object qrySaleAndMLML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object qrySaleAndMLML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object qrySaleAndMLSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
      Required = True
    end
  end
  object updMLInitialTreatmentWorkdays: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  MATERIAL_LISTS_FOR_EDIT ml'
      ''
      'set'
      '  ml.INITIAL_TREATMENT_WORKDAYS ='
      '    ( select'
      '        Max(mlms.TOTAL_TREATMENT_WORKDAYS)'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        ML_MODEL_STAGES mlms'
      '      where'
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '    )'
      ''
      'where'
      '  (ml.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (ml.ML_OBJECT_CODE = :ML_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 328
    Top = 576
  end
  object qryDelSaleShipmentsInPSDs: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  PLANNED_STORE_DEALS_FOR_EDIT psd'
      ''
      'where'
      '  exists('
      '    select'
      '      1'
      '    from'
      '      SALE_SHIPMENTS ss'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJECT_B' +
        'RANCH_CODE) and'
      
        '      (psd.BND_PROCESS_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE) an' +
        'd'
      ''
      
        '      (ss.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (ss.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '  ) and'
      ''
      '  (psd.IN_OUT = 1)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 128
  end
  object qryFixLeasePSDs: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  delete'
      '    PLANNED_STORE_DEALS_FOR_EDIT psd'
      '  where'
      
        '    ( (psd.BND_PROCESS_OBJECT_BRANCH_CODE, BND_PROCESS_OBJECT_CO' +
        'DE) in'
      '      ( select'
      '          ss.SHIPMENT_OBJECT_BRANCH_CODE,'
      '          ss.SHIPMENT_OBJECT_CODE'
      '        from'
      '          SALE_SHIPMENTS ss'
      '        where'
      
        '          (ss.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '          (ss.SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      ''
      '          exists('
      '            select'
      '              1'
      '            from'
      '              SALES s'
      '            where'
      
        '              (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_C' +
        'ODE) and'
      '              (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      '              (s.SALE_DEAL_TYPE_CODE = 2)'
      '          )'
      '      )'
      '    );'
      ''
      ''
      '  for Shipment in'
      '    ('
      '      select'
      '        ss.SHIPMENT_OBJECT_BRANCH_CODE,'
      '        ss.SHIPMENT_OBJECT_CODE,'
      '        ss.SALE_SHIPMENT_NO,'
      '        ss.SHIPMENT_PLAN_DATE,'
      '        ss.PLAN_QUANTITY,'
      '        ss.SALE_OBJECT_BRANCH_CODE,'
      '        ss.SALE_OBJECT_CODE,'
      '        ss.IMPORT_PLAN_DATE'
      '      from'
      '        SALE_SHIPMENTS ss'
      '      where'
      
        '        (ss.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) ' +
        'and'
      '        (ss.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '      order by'
      '        ss.SALE_SHIPMENT_NO'
      '    )'
      '  loop'
      ''
      '    insert into PLANNED_STORE_DEALS_FOR_EDIT'
      '    ('
      '      PLANNED_STORE_DEAL_BRANCH_CODE,'
      '      PLANNED_STORE_DEAL_CODE,'
      '      PLANNED_STORE_DEAL_TYPE_CODE,'
      '      STORE_DEAL_TYPE_CODE,'
      '      PRIORITY_CODE,'
      '      IS_PLANNED_MANUALLY,'
      '      BND_PROCESS_OBJECT_BRANCH_CODE,'
      '      BND_PROCESS_OBJECT_CODE,'
      '      BND_PROCESS_CODE,'
      '      STORE_CODE,'
      '      STORE_DEAL_BEGIN_DATE,'
      '      STORE_DEAL_END_DATE,'
      '      PRODUCT_CODE,'
      '      QUANTITY,'
      '      ACCOUNT_QUANTITY,'
      '      CREATE_EMPLOYEE_CODE,'
      '      CREATE_DATE,'
      '      CREATE_TIME,'
      '      CHANGE_EMPLOYEE_CODE,'
      '      CHANGE_DATE,'
      '      CHANGE_TIME'
      '    )'
      '    select'
      
        '      Shipment.SHIPMENT_OBJECT_BRANCH_CODE as PLANNED_STORE_DEAL' +
        '_BRANCH_CODE,'
      
        '      seq_PLANNED_STORE_DEALS.NextVal as PLANNED_STORE_DEAL_CODE' +
        ','
      '      1 as PLANNED_STORE_DEAL_TYPE_CODE,'
      '      851 as STORE_DEAL_TYPE_CODE,'
      '      ( select'
      '          sg.PRIORITY_CODE'
      '        from'
      '          SALE_GROUPS sg'
      '        where'
      
        '          (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJEC' +
        'T_BRANCH_CODE) and'
      '          (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE)'
      '      ) as PRIORITY_CODE,'
      '      0 as IS_PLANNED_MANUALLY,'
      
        '      Shipment.SHIPMENT_OBJECT_BRANCH_CODE as BND_PROCESS_OBJECT' +
        '_BRANCH_CODE,'
      '      Shipment.SHIPMENT_OBJECT_CODE as BND_PROCESS_OBJECT_CODE,'
      '      160 as BND_PROCESS_CODE,'
      '      s.SHIPMENT_STORE_CODE as STORE_CODE,'
      '      Shipment.SHIPMENT_PLAN_DATE as STORE_DEAL_BEGIN_DATE,'
      '      Shipment.SHIPMENT_PLAN_DATE as STORE_DEAL_END_DATE,'
      '      s.PRODUCT_CODE,'
      '      Shipment.PLAN_QUANTITY as QUANTITY,'
      
        '      (Shipment.PLAN_QUANTITY * p.ACCOUNT_MEASURE_COEF) as ACCOU' +
        'NT_QUANTITY,'
      '      LoginContext.UserCode as CREATE_EMPLOYEE_CODE,'
      '      ContextDate as CREATE_DATE,'
      '      ContextTime as CREATE_TIME,'
      '      LoginContext.UserCode as CHANGE_EMPLOYEE_CODE,'
      '      ContextDate as CHANGE_DATE,'
      '      ContextTime as CHANGE_TIME'
      '    from'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      '      (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '      (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      '      (s.SALE_DEAL_TYPE_CODE = 2) and'
      '      (p.PRODUCT_CODE = s.PRODUCT_CODE) and'
      '      not exists('
      '        select'
      '          1'
      '        from'
      '          SALE_SHIPMENTS ss2'
      '        where'
      
        '          (ss2.SALE_OBJECT_BRANCH_CODE = Shipment.SALE_OBJECT_BR' +
        'ANCH_CODE) and'
      '          (ss2.SALE_OBJECT_CODE = Shipment.SALE_OBJECT_CODE) and'
      '          (ss2.SALE_SHIPMENT_NO < Shipment.SALE_SHIPMENT_NO)'
      '      );'
      ''
      ''
      ''
      '    insert into PLANNED_STORE_DEALS_FOR_EDIT'
      '    ('
      '      PLANNED_STORE_DEAL_BRANCH_CODE,'
      '      PLANNED_STORE_DEAL_CODE,'
      '      PLANNED_STORE_DEAL_TYPE_CODE,'
      '      STORE_DEAL_TYPE_CODE,'
      '      PRIORITY_CODE,'
      '      IS_PLANNED_MANUALLY,'
      '      BND_PROCESS_OBJECT_BRANCH_CODE,'
      '      BND_PROCESS_OBJECT_CODE,'
      '      BND_PROCESS_CODE,'
      '      STORE_CODE,'
      '      STORE_DEAL_BEGIN_DATE,'
      '      STORE_DEAL_END_DATE,'
      '      PRODUCT_CODE,'
      '      QUANTITY,'
      '      ACCOUNT_QUANTITY,'
      '      CREATE_EMPLOYEE_CODE,'
      '      CREATE_DATE,'
      '      CREATE_TIME,'
      '      CHANGE_EMPLOYEE_CODE,'
      '      CHANGE_DATE,'
      '      CHANGE_TIME'
      '    )'
      '    select'
      
        '      Shipment.SHIPMENT_OBJECT_BRANCH_CODE as PLANNED_STORE_DEAL' +
        '_BRANCH_CODE,'
      
        '      seq_PLANNED_STORE_DEALS.NextVal as PLANNED_STORE_DEAL_CODE' +
        ','
      '      1 as PLANNED_STORE_DEAL_TYPE_CODE,'
      '      811 as STORE_DEAL_TYPE_CODE,'
      '      ( select'
      '          sg.PRIORITY_CODE'
      '        from'
      '          SALE_GROUPS sg'
      '        where'
      
        '          (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJEC' +
        'T_BRANCH_CODE) and'
      '          (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE)'
      '      ) as PRIORITY_CODE,'
      '      0 as IS_PLANNED_MANUALLY,'
      
        '      Shipment.SHIPMENT_OBJECT_BRANCH_CODE as BND_PROCESS_OBJECT' +
        '_BRANCH_CODE,'
      '      Shipment.SHIPMENT_OBJECT_CODE as BND_PROCESS_OBJECT_CODE,'
      '      160 as BND_PROCESS_CODE,'
      '      s.SHIPMENT_STORE_CODE as STORE_CODE,'
      '      Shipment.IMPORT_PLAN_DATE as STORE_DEAL_BEGIN_DATE,'
      '      Shipment.IMPORT_PLAN_DATE as STORE_DEAL_END_DATE,'
      '      s.PRODUCT_CODE,'
      '      Shipment.PLAN_QUANTITY as QUANTITY,'
      
        '      (Shipment.PLAN_QUANTITY * p.ACCOUNT_MEASURE_COEF) as ACCOU' +
        'NT_QUANTITY,'
      '      LoginContext.UserCode as CREATE_EMPLOYEE_CODE,'
      '      ContextDate as CREATE_DATE,'
      '      ContextTime as CREATE_TIME,'
      '      LoginContext.UserCode as CHANGE_EMPLOYEE_CODE,'
      '      ContextDate as CHANGE_DATE,'
      '      ContextTime as CHANGE_TIME'
      '    from'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      '      (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '      (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      '      (s.SALE_DEAL_TYPE_CODE = 2) and'
      '      (p.PRODUCT_CODE = s.PRODUCT_CODE) and'
      '      not exists('
      '        select'
      '          1'
      '        from'
      '          SALE_SHIPMENTS ss2'
      '        where'
      
        '          (ss2.SALE_OBJECT_BRANCH_CODE = Shipment.SALE_OBJECT_BR' +
        'ANCH_CODE) and'
      '          (ss2.SALE_OBJECT_CODE = Shipment.SALE_OBJECT_CODE) and'
      '          (ss2.SALE_SHIPMENT_NO > Shipment.SALE_SHIPMENT_NO)'
      '      );'
      ''
      '  end loop;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 560
    Top = 192
  end
  object qryUpdateStageDates: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  for x in'
      '    ( select'
      '        mll.MLL_OBJECT_BRANCH_CODE,'
      '        mll.MLL_OBJECT_CODE,'
      '        ml.ENTER_RESULT_STORE_END_DATE'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        MATERIAL_LISTS ml'
      '      where'
      '        (ml.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '        (ml.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      ''
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE)'
      '    )'
      '  loop'
      ''
      '    update'
      '      ML_MODEL_STAGES_FOR_EDIT mlms'
      '    set'
      '      mlms.TREATMENT_BEGIN_DATE ='
      
        '        %INC_DATE_BY_WORKDAYS[(x.ENTER_RESULT_STORE_END_DATE + 1' +
        ')~(-mlms.TOTAL_TREATMENT_WORKDAYS)],'
      '      mlms.TREATMENT_END_DATE ='
      
        '        %INC_DATE_BY_WORKDAYS[(x.ENTER_RESULT_STORE_END_DATE + 1' +
        ')~(-mlms.TOTAL_TREATMENT_WORKDAYS + Greatest(mlms.TREATMENT_WORK' +
        'DAYS, 1) - 1)]'
      '    where'
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = x.MLL_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (mlms.MLL_OBJECT_CODE = x.MLL_OBJECT_CODE);'
      ''
      '  end loop;'
      'end;')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'INC_DATE_BY_WORKDAYS[(x.ENTER_RESULT_STORE_END_DATE + 1)~(-mlms.' +
          'TOTAL_TREATMENT_WORKDAYS)]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'INC_DATE_BY_WORKDAYS[(x.ENTER_RESULT_STORE_END_DATE + 1)~(-mlms.' +
          'TOTAL_TREATMENT_WORKDAYS + Greatest(mlms.TREATMENT_WORKDAYS, 1) ' +
          '- 1)]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 560
    Top = 480
  end
  object prvModelDevelopmentTypes: TDataSetProvider
    DataSet = qryModelDevelopmentTypes
    Options = [poReadOnly, poUseQuoteChar]
    Left = 96
    Top = 200
  end
  object qryModelDevelopmentTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  mdt.MODEL_DEVELOPMENT_TYPE_CODE,'
      '  mdt.MODEL_DEVELOPMENT_TYPE_ABBREV,'
      '  mdt.MODEL_DEVELOPMENT_TYPE_NAME'
      '  '
      'from'
      '  MODEL_DEVELOPMENT_TYPES mdt'
      ''
      'order by'
      '  mdt.MODEL_DEVELOPMENT_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 96
    Top = 248
    object qryModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_CODE'
      Required = True
    end
    object qryModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_ABBREV'
      Size = 100
    end
    object qryModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_NAME'
      Size = 100
    end
  end
  object qryUpdateModelPsdDepts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      
        '  ModelUtils.UpdateModelPsdDepts(:ML_OBJECT_BRANCH_CODE, :ML_OBJ' +
        'ECT_CODE);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 664
    Top = 464
  end
end
