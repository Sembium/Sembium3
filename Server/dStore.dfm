inherited dmStore: TdmStore
  Height = 657
  Width = 968
  object qryDeals: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      '  sd.*,'
      ''
      '  ( select'
      '      d.BEGIN_DATE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (sd.STORE_CODE = d.DEPT_CODE)'
      '  ) as STORE_BEGIN_DATE,'
      ''
      '  ( select'
      '      d.END_DATE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (sd.STORE_CODE = d.DEPT_CODE)'
      '  ) as STORE_END_DATE,'
      ''
      '  ( select'
      '      d.BEGIN_DATE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (sd.DEPT_CODE = d.DEPT_CODE)'
      '  ) as BEGIN_DATE,'
      ''
      '  ( select'
      '      d.END_DATE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (sd.DEPT_CODE = d.DEPT_CODE)'
      '  ) as END_DATE,'
      ''
      '  p.MEASURE_CODE as PRODUCT_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_CODE as PRODUCT_ACC_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_COEF as PRODUCT_ACC_MEASURE_COEF,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      ''
      
        '  (%PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[p.PRODUCT_CODE ~ sd.S' +
        'TORE_DEAL_DATE] / p.ACCOUNT_MEASURE_COEF) as PRODUCT_ESTIMATED_S' +
        'EC_PRICE,'
      ''
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_NO,'
      '  (TOTAL_PRICE / ACCOUNT_QUANTITY) as SINGLE_PRICE,'
      '  Nvl2(BND_PROCESS_OBJECT_BRANCH_CODE,'
      
        '    (poc.PROCESS_OBJECT_CLASS_ABBREV || '#39': '#39' || po.PROCESS_OBJEC' +
        'T_IDENTIFIER),'
      '    '#39#39
      '  ) as PROCESS_OBJECT_IDENTIFIER,'
      '  '
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = sd.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as STORE_IDENTIFIER,'
      ''
      '  %HAS_DOC_ITEMS[sd] as HAS_DOC_ITEMS'
      ''
      'from'
      '  STORE_DEALS sd,'
      '  PRODUCTS p,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  PROCESS_OBJECTS po,'
      '  PROCESS_OBJECT_CLASSES poc'
      'where'
      '  (sd.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (sd.DEPT_CODE = d.DEPT_CODE(+)) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      
        '  (sd.BND_PROCESS_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BRANCH_' +
        'CODE(+)) and'
      '  (sd.BND_PROCESS_OBJECT_CODE = po.PROCESS_OBJECT_CODE(+)) and'
      
        '  (po.PROCESS_OBJECT_CLASS_CODE = poc.PROCESS_OBJECT_CLASS_CODE(' +
        '+)) and'
      
        '  (sd.STORE_DEAL_OBJECT_BRANCH_CODE = :STORE_DEAL_OBJECT_BRANCH_' +
        'CODE) and'
      '  (sd.STORE_DEAL_OBJECT_CODE = :STORE_DEAL_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[p.PRODUCT_CODE ~ sd.STORE' +
          '_DEAL_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[sd]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'STORE_DEALS_FOR_EDIT'
    AfterProviderStartTransaction = qryDealsAfterProviderStartTransaction
    Left = 22
    Top = 48
    object qryDealsSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryDealsSTORE_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_CODE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryDealsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsSTORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsSTORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_TYPE_CODE'
      ProviderFlags = []
    end
    object qryDealsSTORE_DEAL_NO: TAbmesFloatField
      FieldName = 'STORE_DEAL_NO'
    end
    object qryDealsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsWANTED_QUANTITY: TAbmesFloatField
      FieldName = 'WANTED_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryDealsSTORE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORE_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsOTHER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OTHER_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsREQUEST_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'REQUEST_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsIS_WASTE_BOUND: TAbmesFloatField
      FieldName = 'IS_WASTE_BOUND'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsWORK_ORDER_NO: TAbmesWideStringField
      FieldName = 'WORK_ORDER_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsOLD_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OLD_DEAL_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsOLD_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'OLD_DEAL_OBJECT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDealsPRODUCT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryDealsPRODUCT_ACC_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ACC_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryDealsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryDealsPRODUCT_ACC_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACC_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryDealsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryDealsSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryDealsSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
    end
    object qryDealsSTORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_CODE'
    end
    object qryDealsSTORE_REQUEST_ITEM_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_ITEM_CODE'
    end
    object qryDealsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryDealsDEPT_NO: TAbmesWideStringField
      FieldName = 'DEPT_NO'
      ProviderFlags = []
      Size = 40
    end
    object qryDealsVENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMPANY_CODE'
    end
    object qryDealsINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
    object qryDealsINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object qryDealsPRODUCT_ESTIMATED_SEC_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_ESTIMATED_SEC_PRICE'
      ProviderFlags = []
    end
    object qryDealsINVOICE_ABBREV: TAbmesWideStringField
      FieldName = 'INVOICE_ABBREV'
      Size = 5
    end
    object qryDealsIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
    end
    object qryDealsPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      ProviderFlags = []
      Size = 202
    end
    object qryDealsIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
      ProviderFlags = []
    end
    object qryDealsSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryDealsSTORE_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_BEGIN_DATE'
      ProviderFlags = []
    end
    object qryDealsSTORE_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_END_DATE'
      ProviderFlags = []
    end
    object qryDealsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      ProviderFlags = []
    end
    object qryDealsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      ProviderFlags = []
    end
    object qryDealsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDealsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDealsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
  end
  object prvDeals: TDataSetProvider
    DataSet = qryDeals
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = prvDealsAfterUpdateRecord
    BeforeUpdateRecord = prvDealsBeforeUpdateRecord
    BeforeApplyUpdates = prvDealsBeforeApplyUpdates
    AfterApplyUpdates = prvDealsAfterApplyUpdates
    Left = 22
  end
  object qryMaxDealNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(sd.STORE_DEAL_NO) as MAX_STORE_DEAL_NO'
      'from'
      '  STORE_DEALS sd'
      'where'
      '  (sd.STORE_CODE = :STORE_CODE) and'
      '  (sd.STORE_DEAL_TYPE_CODE = :STORE_DEAL_TYPE_CODE) and'
      '  (sd.STORE_DEAL_DATE = :STORE_DEAL_DATE) and'
      '  (sd.STORNO_EMPLOYEE_CODE is null)'
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 118
    object qryMaxDealNoMAX_STORE_DEAL_NO: TAbmesFloatField
      FieldName = 'MAX_STORE_DEAL_NO'
    end
  end
  object qryInsertStoreDeal: TAbmesSQLQuery
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
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WANTED_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OTHER_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_WASTE_BOUND'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'WORK_ORDER_NO'
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
        Name = 'BND_PROCESS_CODE'
        ParamType = ptInput
      end
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
        Name = 'STORNO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORNO_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORNO_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DEAL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DEAL_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDOR_COMPANY_CODE'
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
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'INVOICE_ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROFORM_INVOICE'
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
      end>
    SQL.Strings = (
      'insert into STORE_DEALS_FOR_EDIT ('
      '  STORE_DEAL_OBJECT_BRANCH_CODE,'
      '  STORE_DEAL_OBJECT_CODE,'
      '  STORE_CODE,'
      '  STORE_DEAL_DATE,'
      '  STORE_DEAL_TYPE_CODE,'
      '  STORE_DEAL_NO,'
      '  PRODUCT_CODE,'
      '  WANTED_QUANTITY,'
      '  QUANTITY,'
      '  ACCOUNT_QUANTITY,'
      '  CURRENCY_CODE,'
      '  TOTAL_PRICE,'
      '  STORE_EMPLOYEE_CODE,'
      '  OTHER_EMPLOYEE_CODE,'
      '  REQUEST_EMPLOYEE_CODE,'
      '  IS_WASTE_BOUND,'
      '  DEPT_CODE,'
      '  WORK_ORDER_NO,'
      '  BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  BND_PROCESS_OBJECT_CODE,'
      '  BND_PROCESS_CODE,'
      '  PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  PLANNED_STORE_DEAL_CODE,'
      '  CREATE_DATE,'
      '  CREATE_TIME,'
      '  CREATE_EMPLOYEE_CODE,'
      '  STORNO_DATE,'
      '  STORNO_TIME,'
      '  STORNO_EMPLOYEE_CODE,'
      '  OLD_DEAL_OBJECT_BRANCH_CODE,'
      '  OLD_DEAL_OBJECT_CODE,'
      '  VENDOR_COMPANY_CODE,'
      '  INVOICE_NO,'
      '  INVOICE_DATE,'
      '  STORE_REQUEST_BRANCH_CODE,'
      '  STORE_REQUEST_CODE,'
      '  STORE_REQUEST_ITEM_CODE,'
      '  INVOICE_ABBREV,'
      '  IS_PROFORM_INVOICE,'
      '  DOC_BRANCH_CODE,'
      '  DOC_CODE'
      ') values ('
      '  :STORE_DEAL_OBJECT_BRANCH_CODE,'
      '  :STORE_DEAL_OBJECT_CODE,'
      '  :STORE_CODE,'
      '  :STORE_DEAL_DATE,'
      '  :STORE_DEAL_TYPE_CODE,'
      '  :STORE_DEAL_NO,'
      '  :PRODUCT_CODE,'
      '  :WANTED_QUANTITY,'
      '  :QUANTITY,'
      '  :ACCOUNT_QUANTITY,'
      '  :CURRENCY_CODE,'
      '  :TOTAL_PRICE,'
      '  :STORE_EMPLOYEE_CODE,'
      '  :OTHER_EMPLOYEE_CODE,'
      '  :REQUEST_EMPLOYEE_CODE,'
      '  :IS_WASTE_BOUND,'
      '  :DEPT_CODE,'
      '  :WORK_ORDER_NO,'
      '  :BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  :BND_PROCESS_OBJECT_CODE,'
      '  :BND_PROCESS_CODE,'
      '  :PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  :PLANNED_STORE_DEAL_CODE,'
      '  :CREATE_DATE,'
      '  :CREATE_TIME,'
      '  :CREATE_EMPLOYEE_CODE,'
      '  :STORNO_DATE,'
      '  :STORNO_TIME,'
      '  :STORNO_EMPLOYEE_CODE,'
      '  :OLD_DEAL_OBJECT_BRANCH_CODE,'
      '  :OLD_DEAL_OBJECT_CODE,'
      '  :VENDOR_COMPANY_CODE,'
      '  :INVOICE_NO,'
      '  :INVOICE_DATE,'
      '  :STORE_REQUEST_BRANCH_CODE,'
      '  :STORE_REQUEST_CODE,'
      '  :STORE_REQUEST_ITEM_CODE,'
      '  :INVOICE_ABBREV,'
      '  :IS_PROFORM_INVOICE,'
      '  :DOC_BRANCH_CODE,'
      '  :DOC_CODE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 104
    Top = 56
  end
  object qryProductQuantityAndPrice: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_IN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_IN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Sum(sd.QUANTITY * sd.IN_OUT) as QUANTITY,'
      '  Sum(sd.ACCOUNT_QUANTITY * sd.IN_OUT) as ACCOUNT_QUANTITY,'
      '  Sum(sd.TOTAL_PRICE * cr.FIXING * sd.IN_OUT) as TOTAL_PRICE'
      'from'
      '  STORE_DEALS sd,'
      '  CURRENCY_RATES cr'
      'where'
      '  (sd.STORE_DEAL_DATE = cr.RATE_DATE) and'
      '  (sd.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '  (sd.STORE_CODE = :STORE_CODE) and'
      '  (sd.PRODUCT_CODE = :PRODUCT_CODE) and'
      '  ( (sd.STORE_DEAL_DATE < :STORE_DEAL_DATE) or'
      '    ( (sd.STORE_DEAL_DATE = :STORE_DEAL_DATE) and'
      '      ( ( (:IS_IN is not null) and'
      '          (sd.IN_OUT = 1) and'
      '          (sd.STORE_DEAL_NO < :STORE_DEAL_NO) ) or'
      '        ( (:IS_IN is null) and'
      '          ( (sd.IN_OUT = 1) or'
      '            ( (sd.IN_OUT = -1) and'
      
        '              (sd.STORE_DEAL_NO < :STORE_DEAL_NO) ) ) ) ) ) ) an' +
        'd'
      '  (sd.STORNO_EMPLOYEE_CODE is null)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 126
    Top = 128
    object qryProductQuantityAndPriceQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryProductQuantityAndPriceACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qryProductQuantityAndPriceTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
  end
  object qryNextDeals: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_IN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_IN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sd.*,'
      '  (sd.TOTAL_PRICE * cr.FIXING) as TOTAL_PRICE_PRIMARY'
      'from'
      '  STORE_DEALS sd,'
      '  CURRENCY_RATES cr'
      'where'
      '  (sd.STORE_DEAL_DATE = cr.RATE_DATE) and'
      '  (sd.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '  (sd.STORE_CODE = :STORE_CODE) and'
      '  (sd.PRODUCT_CODE = :PRODUCT_CODE) and'
      '  ( (sd.STORE_DEAL_DATE > :STORE_DEAL_DATE) or'
      '    ( (sd.STORE_DEAL_DATE = :STORE_DEAL_DATE) and'
      '      ( ( (:IS_IN is null) and'
      '          (sd.IN_OUT = -1) and'
      '          (sd.STORE_DEAL_NO >= :STORE_DEAL_NO) ) or'
      '        ( (:IS_IN is not null) and'
      '          ( (sd.IN_OUT = -1) or'
      '            ( (sd.IN_OUT = 1) and'
      
        '              (sd.STORE_DEAL_NO >= :STORE_DEAL_NO) ) ) ) ) ) ) a' +
        'nd'
      '  (sd.STORNO_EMPLOYEE_CODE is null)'
      'order by'
      '  sd.STORE_DEAL_DATE,'
      '  sd.IN_OUT desc,'
      '  sd.STORE_DEAL_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 190
    object qryNextDealsSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_BRANCH_CODE'
    end
    object qryNextDealsSTORE_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_CODE'
    end
    object qryNextDealsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryNextDealsSTORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_DATE'
    end
    object qryNextDealsSTORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_TYPE_CODE'
    end
    object qryNextDealsSTORE_DEAL_NO: TAbmesFloatField
      FieldName = 'STORE_DEAL_NO'
    end
    object qryNextDealsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryNextDealsWANTED_QUANTITY: TAbmesFloatField
      FieldName = 'WANTED_QUANTITY'
    end
    object qryNextDealsQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryNextDealsACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qryNextDealsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryNextDealsTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryNextDealsSTORE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORE_EMPLOYEE_CODE'
    end
    object qryNextDealsOTHER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OTHER_EMPLOYEE_CODE'
    end
    object qryNextDealsREQUEST_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'REQUEST_EMPLOYEE_CODE'
    end
    object qryNextDealsIS_WASTE_BOUND: TAbmesFloatField
      FieldName = 'IS_WASTE_BOUND'
    end
    object qryNextDealsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryNextDealsWORK_ORDER_NO: TAbmesWideStringField
      FieldName = 'WORK_ORDER_NO'
    end
    object qryNextDealsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryNextDealsBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object qryNextDealsBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object qryNextDealsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
    end
    object qryNextDealsPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
    end
    object qryNextDealsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryNextDealsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryNextDealsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryNextDealsSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object qryNextDealsSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
    object qryNextDealsSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object qryNextDealsOLD_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OLD_DEAL_OBJECT_BRANCH_CODE'
    end
    object qryNextDealsOLD_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'OLD_DEAL_OBJECT_CODE'
    end
    object qryNextDealsIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object qryNextDealsTOTAL_PRICE_PRIMARY: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_PRIMARY'
    end
  end
  object qryPlannedStoreDeals: TAbmesSQLQuery
    BeforeOpen = qryPlannedStoreDealsBeforeOpen
    AfterClose = qryPlannedStoreDealsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_BRANCH_CODE'
        ParamType = ptInput
      end
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
        Name = 'PLANNED_STORE_DEAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLAN_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLAN_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_P'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'OUT_P'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'START_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'START_DATE'
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
      end
      item
        DataType = ftFloat
        Name = 'IS_ANNULED'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_ANNULED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_CLOSED'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_CLOSED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_INACTIVE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  psd.PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  psd.PLANNED_STORE_DEAL_CODE,'
      '  ( select'
      '      d.CUSTOM_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (psd.PLANNED_STORE_DEAL_BRANCH_CODE = d.DEPT_CODE)'
      '  ) as PSD_BRANCH_ID,'
      '  ( select'
      '      (d.CUSTOM_CODE || '#39'/'#39' || psd.PLANNED_STORE_DEAL_CODE)'
      '    from'
      '      DEPTS d'
      '    where'
      '      (psd.PLANNED_STORE_DEAL_BRANCH_CODE = d.DEPT_CODE)'
      '  ) as PSD_ID,'
      '  '
      '  (psd.IN_OUT * psd.COMPLETED_QUANTITY) as COMPLETED_QUANTITY,'
      
        '  (psd.IN_OUT * psd.COMPLETED_ACCOUNT_QUANTITY) as COMPLETED_ACC' +
        'OUNT_QUANTITY,'
      
        '  (psd.IN_OUT * psd.COMPLETED_QUANTITY * p.TECH_MEASURE_COEF) as' +
        ' COMPLETED_TECH_QUANTITY,'
      '  (psd.IN_OUT * psd.REMAINING_QUANTITY) as INCOMPLETED_QUANTITY,'
      
        '  (psd.IN_OUT * psd.REMAINING_QUANTITY * p.TECH_MEASURE_COEF) as' +
        ' INCOMPLETED_TECH_QUANTITY,'
      
        '  (psd.IN_OUT * psd.REMAINING_ACCOUNT_QUANTITY) as INCOMPLETED_A' +
        'CCOUNT_QUANTITY,'
      '  psd.PLANNED_STORE_DEAL_TYPE_CODE,'
      '  ( select'
      '      psdt.PLANNED_STORE_DEAL_TYPE_ABBREV'
      '    from'
      '      PLANNED_STORE_DEAL_TYPES psdt'
      '    where'
      
        '      (psd.PLANNED_STORE_DEAL_TYPE_CODE = psdt.PLANNED_STORE_DEA' +
        'L_TYPE_CODE)'
      '  ) as PLANNED_STORE_DEAL_TYPE_ABBREV,'
      '  psd.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  psd.BND_PROCESS_OBJECT_CODE,'
      '  psd.BND_PROCESS_CODE,'
      '  ( select'
      '      po.PROCESS_OBJECT_CLASS_CODE'
      '    from'
      '      PROCESS_OBJECTS po'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = po.PROCESS_OBJECT_CODE)'
      '  ) as BND_PROCESS_OBJECT_CLASS_CODE,'
      '  ( select'
      '      proc.PROCESS_ABBREV'
      '    from'
      '      PROCESSES proc'
      '    where'
      '      (psd.BND_PROCESS_CODE = proc.PROCESS_CODE) '
      '  ) as BND_PROCESS_ABBREV,'
      '  ('
      '    select'
      '      po.PROCESS_OBJECT_IDENTIFIER'
      '    from'
      '      PROCESS_OBJECTS po'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = po.PROCESS_OBJECT_CODE)'
      '  ) as PROCESS_OBJECT_IDENTIFIER,'
      ''
      '  psd.IN_OUT,'
      '  psd.STORE_DEAL_BEGIN_DATE,'
      '  psd.STORE_DEAL_END_DATE,'
      ''
      '  psd.STORE_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = psd.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as STORE_NAME,'
      ''
      '  psd.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_CODE,'
      '  p.TECH_MEASURE_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (p.MEASURE_CODE = m.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (p.ACCOUNT_MEASURE_CODE = m.MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE)'
      '  ) as TECH_MEASURE_ABBREV,'
      ''
      
        '  (psd.IN_OUT * psd.QUANTITY * %PSD_SINGLE_PRICE_IN_SECONDARY_CU' +
        'RRENCY[psd.PRODUCT_CODE ~ psd.STORE_DEAL_BEGIN_DATE]) as TOTAL_P' +
        'RICE_SC,'
      ''
      '  Nvl2(psd.CLOSE_EMPLOYEE_CODE, 1, 0) as IS_DONE,'
      '  Nvl2(psd.ANNUL_EMPLOYEE_CODE, 1, 0) as IS_ANNULED,'
      ''
      '  ( select'
      '      mll.DETAIL_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE)'
      '  ) as DETAIL_CODE,'
      '  ( select'
      '      p.NAME'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE)'
      '  ) as DETAIL_NAME,'
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE)'
      '  ) as DETAIL_NO,'
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE)'
      '  ) as DETAIL_HAS_DOCUMENTATION,'
      '  ( select'
      '      p.DOC_BRANCH_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE)'
      '  ) as DETAIL_DOC_BRANCH_CODE,'
      '  ( select'
      '      p.DOC_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE)'
      '  ) as DETAIL_DOC_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE) and'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE)'
      '  ) as DETAIL_TECH_MEASURE_ABBREV,'
      '  ( select'
      
        '      (psd.IN_OUT * psd.COMPLETED_QUANTITY * p.TECH_MEASURE_COEF' +
        ') / mll.PRODUCT_TECH_QUANTITY'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (p.PRODUCT_CODE = mll.PRODUCT_CODE)'
      '  ) as DETAIL_TECH_COMPLETED_QTY,'
      '  ( select'
      
        '      (psd.IN_OUT * psd.REMAINING_QUANTITY * p.TECH_MEASURE_COEF' +
        ') / mll.PRODUCT_TECH_QUANTITY'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (p.PRODUCT_CODE = mll.PRODUCT_CODE)'
      '  ) as DETAIL_TECH_INCOMPLETED_QTY,'
      '  ( select'
      '      mll.NOTES'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as MLL_NOTES,'
      ''
      '  ( select'
      '      s.PRODUCT_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)'
      '  ) as SALE_PRODUCT_CODE,'
      '  ( select'
      '      p.NAME'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SALE_PRODUCT_NAME,'
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SALE_PRODUCT_NO,'
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SALE_PRODUCT_HAS_DOCUMENTATION,'
      '  ( select'
      '      p.DOC_BRANCH_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SALE_PRODUCT_DOC_BRANCH_CODE,'
      '  ( select'
      '      p.DOC_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SALE_PRODUCT_DOC_CODE,'
      ''
      '  ( select'
      '      ml.ENTER_RESULT_STORE_BEGIN_DATE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE)'
      '  ) as ENTER_RESULT_STORE_BEGIN_DATE,'
      '  ( select'
      '      ml.ENTER_RESULT_STORE_END_DATE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE)'
      '  ) as ENTER_RESULT_STORE_END_DATE,'
      '  ( select'
      '      Nvl2(ml.LIMITING_EMPLOYEE_CODE, 1, 0)'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE)'
      '  ) as IS_MODEL_LIMITING,'
      '  ( select'
      '      mll.MLL_OBJECT_BRANCH_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '  ) as MLL_OBJECT_BRANCH_CODE,'
      '  ( select'
      '      mll.MLL_OBJECT_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '  ) as MLL_OBJECT_CODE,'
      '  ( select'
      '      mllc.MATERIAL_LIST_LINE_CHANGE_NO'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      MATERIAL_LIST_LINE_CHANGES mllc'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = mllc.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mll.MLL_OBJECT_CODE = mllc.MLL_OBJECT_CODE) and'
      '      (mllc.REPLY_ACCEPT_EMPLOYEE_CODE is null)'
      '  ) as MATERIAL_LIST_LINE_CHANGE_NO,'
      '  ( select'
      '      Nvl2(mllc.MLL_OBJECT_CODE,'
      '        Nvl2(mllc.REPLY_EMPLOYEE_CODE, 2, 1),'
      '        0'
      '      )'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      MATERIAL_LIST_LINE_CHANGES mllc'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = mllc.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mll.MLL_OBJECT_CODE = mllc.MLL_OBJECT_CODE) and'
      '      (mllc.REPLY_ACCEPT_EMPLOYEE_CODE is null)'
      '  ) as MLL_CHANGE_STATUS,'
      '  ( select'
      '      dp.VENDOR_COMPANY_CODE'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      DELIVERY_PROJECTS dp'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_B' +
        'RANCH_CODE) and'
      
        '      (psd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) an' +
        'd'
      
        '      (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '      (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE)'
      '  ) as VENDOR_COMPANY_CODE,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      DELIVERY_PROJECTS dp,'
      '      COMPANIES c'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_B' +
        'RANCH_CODE) and'
      
        '      (psd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) an' +
        'd'
      
        '      (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '      (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE) and'
      '      (dp.VENDOR_COMPANY_CODE = c.COMPANY_CODE)'
      '  ) as VENDOR_SHORT_NAME,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      DELIVERY_PROJECTS dp,'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_B' +
        'RANCH_CODE) and'
      
        '      (psd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) an' +
        'd'
      
        '      (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '      (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE) and'
      '      (d.DEPT_CODE = dp.PSD_STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DELIVERY_PLACE,'
      '  psd.CREATE_DATE,'
      '  psd.CREATE_TIME,'
      '  Nvl2(cr_e.ABBREV,'
      
        '    cr_e.ABBREV || '#39' - '#39' || cr_e.FIRST_NAME || '#39' '#39' || cr_e.LAST_' +
        'NAME,'
      '    '#39#39') as CREATE_EMPLOYEE_NAME,'
      '  psd.CHANGE_DATE,'
      '  psd.CHANGE_TIME,'
      '  Nvl2(ch_e.ABBREV,'
      
        '    ch_e.ABBREV || '#39' - '#39' || ch_e.FIRST_NAME || '#39' '#39' || ch_e.LAST_' +
        'NAME,'
      '    '#39#39') as CHANGE_EMPLOYEE_NAME,'
      '  psd.CLOSE_DATE,'
      '  psd.CLOSE_TIME,'
      '  Nvl2(cl_e.ABBREV,'
      
        '    cl_e.ABBREV || '#39' - '#39' || cl_e.FIRST_NAME || '#39' '#39' || cl_e.LAST_' +
        'NAME,'
      '    '#39#39') as CLOSE_EMPLOYEE_NAME,'
      '  psd.ANNUL_DATE,'
      '  psd.ANNUL_TIME,'
      '  Nvl2(a_e.ABBREV,'
      
        '    a_e.ABBREV || '#39' - '#39' || a_e.FIRST_NAME || '#39' '#39' || a_e.LAST_NAM' +
        'E,'
      '    '#39#39') as ANNUL_EMPLOYEE_NAME,'
      ''
      '  ( select'
      '      Nvl2(srg.SALE_GROUP_OBJECT_CODE,'
      '        ( select'
      '            d.CUSTOM_CODE || '#39' / '#39' || srg.REQUEST_NO'
      '          from'
      '            DEPTS d'
      '          where'
      '            (d.DEPT_CODE = srg.REQUEST_BRANCH_CODE)'
      '        ),'
      '        ( select'
      '            po.PROCESS_OBJECT_IDENTIFIER'
      '          from'
      '            PROCESS_OBJECTS po'
      '          where'
      
        '            (po.PROCESS_OBJECT_BRANCH_CODE = fo.BND_PROCESS_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '            (po.PROCESS_OBJECT_CODE = fo.BND_PROCESS_OBJECT_CODE' +
        ')'
      '        )'
      '      )'
      '      '
      '    from'
      '      REAL_FIN_MODEL_LINES rfml,'
      '      FIN_ORDERS fo,'
      '      SALE_REQUEST_GROUPS srg'
      ''
      '    where'
      
        '      (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      '      (fo.FIN_ORDER_CODE = rfml.FIN_ORDER_CODE) and'
      '      (fo.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '      (fo.BND_PROCESS_OBJECT_BRANCH_CODE = srg.SALE_GROUP_OBJECT' +
        '_BRANCH_CODE(+)) and'
      
        '      (fo.BND_PROCESS_OBJECT_CODE = srg.SALE_GROUP_OBJECT_CODE(+' +
        ')) '
      '  ) as RFML_BND_OBJECT_ID,'
      ''
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      REAL_FIN_MODEL_LINES rfml,'
      '      FIN_ORDERS fo,'
      '      COMPANIES c'
      '    where'
      
        '      (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      '      (fo.FIN_ORDER_CODE = rfml.FIN_ORDER_CODE) and'
      '      (fo.ANNUL_EMPLOYEE_CODE is null) and'
      '      (c.COMPANY_CODE = fo.PARTNER_CODE)'
      '  ) as RFML_PARTNER_SHORT_NAME,'
      ''
      '  ( select'
      '      fo.BASE_QUANTITY * rfml.LINE_QUANTITY_PERCENT'
      '    from'
      '      REAL_FIN_MODEL_LINES rfml,'
      '      FIN_ORDERS fo'
      '    where'
      
        '      (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      '      (fo.FIN_ORDER_CODE = rfml.FIN_ORDER_CODE) and'
      '      (fo.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as RFML_QUANTITY,'
      ''
      
        '  Cast(%RFML_DOCUMENT_IDENTIFIER[psd.BND_PROCESS_OBJECT_BRANCH_C' +
        'ODE ~ psd.BND_PROCESS_OBJECT_CODE] as VarChar2(50 char)) as RFML' +
        '_DOCUMENT_IDENTIFIER,'
      
        '  %RFML_DOCUMENT_DATE[psd.BND_PROCESS_OBJECT_BRANCH_CODE ~ psd.B' +
        'ND_PROCESS_OBJECT_CODE] as RFML_DOCUMENT_DATE,'
      ''
      '  ( select'
      '      dp.DOC_BRANCH_CODE'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      DELIVERY_PROJECTS dp'
      '    where'
      
        '      (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '      (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE) and'
      ''
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_B' +
        'RANCH_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE)'
      '  ) as DELIVERY_DOC_BRANCH_CODE,'
      ''
      '  ( select'
      '      dp.DOC_CODE'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      DELIVERY_PROJECTS dp'
      '    where'
      
        '      (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '      (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE) and'
      ''
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_B' +
        'RANCH_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE)'
      '  ) as DELIVERY_DOC_CODE,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[dp]'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      DELIVERY_PROJECTS dp'
      '    where'
      
        '      (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '      (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE) and'
      ''
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_B' +
        'RANCH_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE)'
      '  ) as DELIVERY_HAS_DOC_ITEMS'
      ''
      'from'
      '  PLANNED_STORE_DEALS psd,'
      '  PRODUCTS p,'
      '  EMPLOYEES cr_e,'
      '  EMPLOYEES ch_e,'
      '  EMPLOYEES cl_e,'
      '  EMPLOYEES a_e'
      ''
      'where'
      '  (psd.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (psd.CREATE_EMPLOYEE_CODE = cr_e.EMPLOYEE_CODE) and'
      '  (psd.CHANGE_EMPLOYEE_CODE = ch_e.EMPLOYEE_CODE) and'
      '  (psd.CLOSE_EMPLOYEE_CODE = cl_e.EMPLOYEE_CODE(+)) and'
      '  (psd.ANNUL_EMPLOYEE_CODE = a_e.EMPLOYEE_CODE(+)) and'
      ''
      '  (%IF_IS_ACTIVE) and'
      ''
      '  ( (:ALL_FILTERED_DEPTS = 1) or'
      '    (exists ('
      '      select'
      '        1'
      '      from'
      '        TEMP_FILTERED_DEPTS tfd'
      '      where'
      '        (tfd.DEPT_CODE = psd.STORE_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = psd.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:PLANNED_STORE_DEAL_TYPE_CODE is null) or'
      
        '    (:PLANNED_STORE_DEAL_TYPE_CODE = psd.PLANNED_STORE_DEAL_TYPE' +
        '_CODE) ) and'
      ''
      '  ( (:PLANNED_STORE_DEAL_BRANCH_CODE is null) or'
      
        '    (:PLANNED_STORE_DEAL_BRANCH_CODE = psd.PLANNED_STORE_DEAL_BR' +
        'ANCH_CODE) ) and'
      ''
      '  ( (:PLANNED_STORE_DEAL_CODE is null) or'
      
        '    (:PLANNED_STORE_DEAL_CODE = psd.PLANNED_STORE_DEAL_CODE) ) a' +
        'nd'
      ''
      '  ( (:PLAN_EMPLOYEE_CODE is null) or'
      '    (:PLAN_EMPLOYEE_CODE = psd.CREATE_EMPLOYEE_CODE) ) and'
      ''
      '  ( ((:IN_P <> 0) and (psd.IN_OUT = 1)) or'
      '    ((:OUT_P <> 0) and (psd.IN_OUT = -1)) ) and'
      ''
      '  ( (:START_DATE is null) or'
      '    (:START_DATE <= psd.STORE_DEAL_END_DATE) ) and'
      ''
      '  ( (:END_DATE is null) or'
      '    (:END_DATE >= psd.STORE_DEAL_BEGIN_DATE) ) and'
      ''
      
        '  ( ((:IS_ANNULED <> 0) and (psd.ANNUL_EMPLOYEE_CODE is not null' +
        ')) or'
      
        '    ((:IS_NOT_ANNULED <> 0) and (psd.ANNUL_EMPLOYEE_CODE is null' +
        ')) ) and'
      ''
      
        '  ( ((:IS_CLOSED <> 0) and (psd.CLOSE_EMPLOYEE_CODE is not null)' +
        ') or'
      
        '    ((:IS_NOT_CLOSED <> 0) and (psd.CLOSE_EMPLOYEE_CODE is null)' +
        ') ) and'
      ''
      '  ( ((:IS_ACTIVE <> 0) and (psd.REMAINING_QUANTITY >= %EPS)) or'
      
        '    ((:IS_INACTIVE <> 0) and (psd.REMAINING_QUANTITY < %EPS)) ) ' +
        'and'
      ''
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '  %STORE_DEALS_BND_PROCESS_CONDITION[psd]'
      ''
      'order by'
      '  psd.STORE_DEAL_BEGIN_DATE,'
      '  psd.STORE_DEAL_END_DATE,'
      '  psd.PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  psd.PLANNED_STORE_DEAL_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[psd.PRODUCT_CODE ~ psd.ST' +
          'ORE_DEAL_BEGIN_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'RFML_DOCUMENT_IDENTIFIER[psd.BND_PROCESS_OBJECT_BRANCH_CODE ~ ps' +
          'd.BND_PROCESS_OBJECT_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftString
        Name = 
          'RFML_DOCUMENT_DATE[psd.BND_PROCESS_OBJECT_BRANCH_CODE ~ psd.BND_' +
          'PROCESS_OBJECT_CODE]'
        ParamType = ptInput
        Value = 'Trunc(SysDate)'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[dp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'IF_IS_ACTIVE'
        ParamType = ptInput
        Value = '(0=0)'
      end
      item
        DataType = ftWideString
        Name = 'EPS'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'STORE_DEALS_BND_PROCESS_CONDITION[psd]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BND_PROCESS'
        ParamType = ptInput
      end>
    Left = 352
    Top = 160
    object qryPlannedStoreDealsIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
      ProviderFlags = []
    end
    object qryPlannedStoreDealsSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_BEGIN_DATE'
    end
    object qryPlannedStoreDealsSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_END_DATE'
    end
    object qryPlannedStoreDealsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryPlannedStoreDealsPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
      ProviderFlags = []
    end
    object qryPlannedStoreDealsSTORE_NAME: TAbmesWideStringField
      FieldName = 'STORE_NAME'
      ProviderFlags = []
      Size = 45
    end
    object qryPlannedStoreDealsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryPlannedStoreDealsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryPlannedStoreDealsPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 50
    end
    object qryPlannedStoreDealsPLANNED_STORE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PLANNED_STORE_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object qryPlannedStoreDealsPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_TYPE_CODE'
    end
    object qryPlannedStoreDealsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryPlannedStoreDealsCOMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_QUANTITY'
    end
    object qryPlannedStoreDealsINCOMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'INCOMPLETED_QUANTITY'
    end
    object qryPlannedStoreDealsTOTAL_PRICE_SC: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_SC'
    end
    object qryPlannedStoreDealsIS_DONE: TAbmesFloatField
      FieldName = 'IS_DONE'
    end
    object qryPlannedStoreDealsIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
    end
    object qryPlannedStoreDealsCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_ACCOUNT_QUANTITY'
    end
    object qryPlannedStoreDealsINCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'INCOMPLETED_ACCOUNT_QUANTITY'
    end
    object qryPlannedStoreDealsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryPlannedStoreDealsACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryPlannedStoreDealsDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryPlannedStoreDealsENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_RESULT_STORE_BEGIN_DATE'
    end
    object qryPlannedStoreDealsENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_RESULT_STORE_END_DATE'
    end
    object qryPlannedStoreDealsMLL_CHANGE_STATUS: TAbmesFloatField
      FieldName = 'MLL_CHANGE_STATUS'
    end
    object qryPlannedStoreDealsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryPlannedStoreDealsBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object qryPlannedStoreDealsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryPlannedStoreDealsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryPlannedStoreDealsMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryPlannedStoreDealsMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object qryPlannedStoreDealsMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField
      FieldName = 'MATERIAL_LIST_LINE_CHANGE_NO'
    end
    object qryPlannedStoreDealsVENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMPANY_CODE'
    end
    object qryPlannedStoreDealsVENDOR_SHORT_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_SHORT_NAME'
    end
    object qryPlannedStoreDealsDELIVERY_PLACE: TAbmesWideStringField
      FieldName = 'DELIVERY_PLACE'
      Size = 46
    end
    object qryPlannedStoreDealsBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object qryPlannedStoreDealsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryPlannedStoreDealsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryPlannedStoreDealsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryPlannedStoreDealsCREATE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_NAME'
      Size = 49
    end
    object qryPlannedStoreDealsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryPlannedStoreDealsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryPlannedStoreDealsCHANGE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'CHANGE_EMPLOYEE_NAME'
      Size = 49
    end
    object qryPlannedStoreDealsCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryPlannedStoreDealsCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object qryPlannedStoreDealsCLOSE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'CLOSE_EMPLOYEE_NAME'
      Size = 49
    end
    object qryPlannedStoreDealsANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryPlannedStoreDealsANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryPlannedStoreDealsANNUL_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'ANNUL_EMPLOYEE_NAME'
      Size = 49
    end
    object qryPlannedStoreDealsBND_PROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PROCESS_ABBREV'
      Size = 100
    end
    object qryPlannedStoreDealsIS_MODEL_LIMITING: TAbmesFloatField
      FieldName = 'IS_MODEL_LIMITING'
    end
    object qryPlannedStoreDealsPSD_ID: TAbmesWideStringField
      FieldName = 'PSD_ID'
      Size = 81
    end
    object qryPlannedStoreDealsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryPlannedStoreDealsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryPlannedStoreDealsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryPlannedStoreDealsDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qryPlannedStoreDealsDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qryPlannedStoreDealsDETAIL_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOCUMENTATION'
    end
    object qryPlannedStoreDealsDETAIL_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DETAIL_DOC_BRANCH_CODE'
    end
    object qryPlannedStoreDealsDETAIL_DOC_CODE: TAbmesFloatField
      FieldName = 'DETAIL_DOC_CODE'
    end
    object qryPlannedStoreDealsSALE_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_CODE'
    end
    object qryPlannedStoreDealsSALE_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SALE_PRODUCT_NAME'
      Size = 100
    end
    object qryPlannedStoreDealsSALE_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_NO'
    end
    object qryPlannedStoreDealsSALE_PRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_HAS_DOCUMENTATION'
    end
    object qryPlannedStoreDealsSALE_PRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_DOC_BRANCH_CODE'
    end
    object qryPlannedStoreDealsSALE_PRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_DOC_CODE'
    end
    object qryPlannedStoreDealsBND_PROCESS_OBJECT_CLASS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CLASS_CODE'
    end
    object qryPlannedStoreDealsPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryPlannedStoreDealsPSD_BRANCH_ID: TAbmesFloatField
      FieldName = 'PSD_BRANCH_ID'
    end
    object qryPlannedStoreDealsMLL_NOTES: TAbmesWideStringField
      FieldName = 'MLL_NOTES'
      Size = 250
    end
    object qryPlannedStoreDealsDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'DETAIL_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qryPlannedStoreDealsDETAIL_TECH_COMPLETED_QTY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_COMPLETED_QTY'
    end
    object qryPlannedStoreDealsDETAIL_TECH_INCOMPLETED_QTY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_INCOMPLETED_QTY'
    end
    object qryPlannedStoreDealsRFML_BND_OBJECT_ID: TAbmesWideStringField
      FieldName = 'RFML_BND_OBJECT_ID'
      Size = 100
    end
    object qryPlannedStoreDealsRFML_PARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'RFML_PARTNER_SHORT_NAME'
    end
    object qryPlannedStoreDealsRFML_QUANTITY: TAbmesFloatField
      FieldName = 'RFML_QUANTITY'
    end
    object qryPlannedStoreDealsRFML_DOCUMENT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'RFML_DOCUMENT_IDENTIFIER'
      Size = 50
    end
    object qryPlannedStoreDealsRFML_DOCUMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'RFML_DOCUMENT_DATE'
    end
    object qryPlannedStoreDealsDELIVERY_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DOC_BRANCH_CODE'
    end
    object qryPlannedStoreDealsDELIVERY_DOC_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DOC_CODE'
    end
    object qryPlannedStoreDealsDELIVERY_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'DELIVERY_HAS_DOC_ITEMS'
    end
    object qryPlannedStoreDealsCOMPLETED_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_TECH_QUANTITY'
    end
    object qryPlannedStoreDealsINCOMPLETED_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'INCOMPLETED_TECH_QUANTITY'
    end
    object qryPlannedStoreDealsTECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TECH_MEASURE_CODE'
    end
    object qryPlannedStoreDealsTECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TECH_MEASURE_ABBREV'
      Size = 5
    end
  end
  object prvPlannedStoreDeals: TDataSetProvider
    DataSet = qryPlannedStoreDeals
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 350
    Top = 112
  end
  object qryMovements: TAbmesSQLQuery
    BeforeOpen = qryMovementsBeforeOpen
    AfterClose = qryMovementsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_NO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'START_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_IN'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_OUT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_STORNO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_STORNO'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'OTHER_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OTHER_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  /*+ LEADING(sd) INDEX_RS_ASC(sd idxSD__STORE_DEAL_DATE) */'
      '  sd.STORE_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = sd.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as STORE_NAME,'
      '  sd.STORE_DEAL_DATE,'
      '  sd.STORE_DEAL_TYPE_CODE,'
      '  sd.IN_OUT,'
      ''
      '  ( select'
      '      std.STORE_DEAL_TYPE_ABBREV'
      '    from'
      '      STORE_DEAL_TYPES std'
      '    where'
      '      (std.STORE_DEAL_TYPE_CODE = sd.STORE_DEAL_TYPE_CODE)'
      '  ) as STORE_DEAL_TYPE_ABBREV,'
      ''
      '  sd.STORE_DEAL_NO,'
      '  sd.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      ''
      '  sd.BND_PROCESS_CODE,'
      '  ( select'
      '      proc.PROCESS_ABBREV'
      '    from'
      '      PROCESSES proc'
      '    where'
      '      (proc.PROCESS_CODE = sd.BND_PROCESS_CODE)'
      '  ) as BND_PROCESS_ABBREV,'
      ''
      '  ('
      '    select'
      '      poc.PROCESS_OBJECT_CLASS_ABBREV'
      '    from'
      '      PROCESS_OBJECTS po,'
      '      PROCESS_OBJECT_CLASSES poc'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = po.PROCESS_OBJECT_CODE) and'
      
        '      (po.PROCESS_OBJECT_CLASS_CODE = poc.PROCESS_OBJECT_CLASS_C' +
        'ODE)'
      '  ) as BND_PO_CLASS_ABBREV,'
      '  ( case'
      
        '      when sd.BND_PROCESS_CODE in (1, 10, 90, 100, 130, 140, 150' +
        ') then'
      '        sd.WORK_ORDER_NO'
      '      else'
      '        ( select'
      '            po.PROCESS_OBJECT_IDENTIFIER'
      '          from'
      '            PROCESS_OBJECTS po'
      '          where'
      
        '            (sd.BND_PROCESS_OBJECT_BRANCH_CODE = po.PROCESS_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '            (sd.BND_PROCESS_OBJECT_CODE = po.PROCESS_OBJECT_CODE' +
        ')'
      '        )'
      '    end'
      '  ) as BND_PO_IDENTIFIER,'
      ''
      '  ( case'
      '      when (sd.BND_PROCESS_CODE in (60, 61, 62, 91, 180)) then'
      '        ( select'
      '            pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '          from'
      '            SALES s,'
      '            PRODUCTION_ORDER_TYPES pot'
      '          where'
      
        '            (s.SALE_OBJECT_BRANCH_CODE = %SD_BND_SALE_OBJECT_BRA' +
        'NCH_CODE[sd]) and'
      
        '            (s.SALE_OBJECT_CODE = %SD_BND_SALE_OBJECT_CODE[sd]) ' +
        'and'
      ''
      
        '            (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER' +
        '_TYPE_CODE)'
      '        )'
      ''
      '      when (sd.BND_PROCESS_CODE in (160)) then'
      '        ( select'
      '            bdt.BORDER_DEAL_TYPE_ABBREV'
      '          from'
      '            SALE_SHIPMENTS ss,'
      '            SALES s,'
      '            SALE_REQUEST_GROUPS srg,'
      '            BORDER_DEAL_TYPES bdt'
      '          where'
      
        '            (ss.SHIPMENT_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '            (ss.SHIPMENT_OBJECT_CODE = sd.BND_PROCESS_OBJECT_COD' +
        'E) and'
      ''
      
        '            (ss.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_C' +
        'ODE) and'
      '            (ss.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '            (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) an' +
        'd'
      '            (s.REQUEST_NO = srg.REQUEST_NO) and'
      ''
      
        '            (srg.SALE_DEAL_TYPE_CODE = bdt.BORDER_DEAL_TYPE_CODE' +
        ')'
      '        )'
      ''
      '      when (sd.BND_PROCESS_CODE in (40)) then'
      '        ( select'
      '            bdt.BORDER_DEAL_TYPE_ABBREV'
      '          from'
      '            DELIVERY_CONTRACTS dc,'
      '            DELIVERY_PROJECTS dp,'
      '            DEFICIT_COVER_DECISIONS dcd,'
      '            BORDER_DEAL_TYPES bdt'
      '          where'
      
        '            (dc.DELIVERY_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '            (dc.DELIVERY_OBJECT_CODE = sd.BND_PROCESS_OBJECT_COD' +
        'E) and'
      ''
      
        '            (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CO' +
        'DE) and'
      '            (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      
        '            (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE' +
        ') and'
      ''
      
        '            (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_C' +
        'ODE) and'
      '            (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      ''
      
        '            (dcd.DELIVERY_DEAL_TYPE_CODE = bdt.BORDER_DEAL_TYPE_' +
        'CODE)'
      '        )'
      ''
      '      when (sd.BND_PROCESS_CODE in (190)) then'
      '        ( select'
      '            boc.BUDGET_ORDER_CLASS_ABBREV'
      '          from'
      '            BOI_ORDERS boio,'
      '            BUDGET_ORDER_ITEMS boi,'
      '            BUDGET_ORDERS bo,'
      '            BUDGET_ORDER_CLASSES boc'
      '          where'
      
        '            (boio.BOI_ORDER_OBJECT_BRANCH_CODE = sd.BND_PROCESS_' +
        'OBJECT_BRANCH_CODE) and'
      
        '            (boio.BOI_ORDER_OBJECT_CODE = sd.BND_PROCESS_OBJECT_' +
        'CODE) and'
      ''
      
        '            (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BR' +
        'ANCH_CODE) and'
      '            (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '            (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM' +
        '_CODE) and'
      ''
      
        '            (boi.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRAN' +
        'CH_CODE) and'
      '            (boi.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE) and'
      ''
      
        '            (bo.BUDGET_ORDER_CLASS_CODE = boc.BUDGET_ORDER_CLASS' +
        '_CODE)'
      '        )'
      '    end'
      '  ) as BND_PROCESS_OBJECT_TYPE_ABBREV,'
      ''
      '  sd.DEPT_CODE,'
      '  ( select'
      '      dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = sd.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as WORK_DEPT_NAME,'
      ''
      '  sd.WORK_ORDER_NO,'
      '  (sd.QUANTITY * sd.IN_OUT) as QUANTITY,'
      ''
      '  p.MEASURE_CODE as MEASURE_CODE,'
      '  ( select'
      '      mw.MEASURE_ABBREV'
      '    from'
      '      MEASURES mw'
      '    where'
      '      (mw.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  (sd.ACCOUNT_QUANTITY * sd.IN_OUT) as ACCOUNT_QUANTITY,'
      ''
      '  p.ACCOUNT_MEASURE_CODE as ACCOUNT_MEASURE_CODE,'
      '  ( select'
      '      ma.MEASURE_ABBREV'
      '    from'
      '      MEASURES ma'
      '    where'
      '      (ma.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      ''
      '  (sd.TOTAL_PRICE * sd.IN_OUT) *'
      '    ('
      '    select'
      '      cr.FIXING'
      '    from'
      '      CURRENCY_RATES cr'
      '    where '
      '      (sd.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '      (sd.STORE_DEAL_DATE = cr.RATE_DATE)'
      '    ) as TOTAL_PRICE,'
      ''
      '  (sd.TOTAL_PRICE * sd.IN_OUT) *'
      '    ('
      '    select'
      '      cr.FIXING'
      '    from'
      '      CURRENCY_RATES cr'
      '    where '
      '      (sd.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '      (sd.STORE_DEAL_DATE = cr.RATE_DATE)'
      '    )'
      '    / sd.QUANTITY as SINGLE_PRICE,'
      ''
      '  (sd.TOTAL_PRICE * sd.IN_OUT) *'
      '    ('
      '    select'
      '      cr.FIXING'
      '    from'
      '      CURRENCY_RATES cr'
      '    where'
      '      (sd.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '      (sd.STORE_DEAL_DATE = cr.RATE_DATE)'
      '    )'
      '    / sd.ACCOUNT_QUANTITY as ACCOUNT_SINGLE_PRICE,'
      ''
      
        '  (sd.QUANTITY * sd.IN_OUT * %PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_' +
        'IN_BASE_CURRENCY[sd.PRODUCT_CODE ~ sd.STORE_DEAL_DATE]) as SALE_' +
        'TOTAL_PRICE,'
      ''
      '  sd.STORE_DEAL_OBJECT_BRANCH_CODE,'
      '  sd.STORE_DEAL_OBJECT_CODE,'
      '  sd.STORE_REQUEST_BRANCH_CODE,'
      '  sd.STORE_REQUEST_CODE,'
      '  ('
      '    select'
      '      srd.CUSTOM_CODE || '#39'/'#39' || sd.STORE_REQUEST_CODE'
      '    from'
      '      DEPTS srd'
      '    where'
      '      (sd.STORE_REQUEST_BRANCH_CODE = srd.DEPT_CODE)'
      '  ) as STORE_REQUEST_ID,'
      ''
      '  sd.CREATE_EMPLOYEE_CODE,'
      '  ( select'
      '      ce.FIRST_NAME || '#39' '#39'  || ce.LAST_NAME'
      '    from'
      '      EMPLOYEES ce'
      '    where'
      '      (ce.EMPLOYEE_CODE = sd.CREATE_EMPLOYEE_CODE)'
      '  ) as CREATE_EMPLOYEE_NAME,'
      '  sd.CREATE_DATE,'
      '  sd.CREATE_TIME,'
      ''
      '  Nvl2(sd.STORNO_EMPLOYEE_CODE, 1, 0) as IS_STORNO,'
      '  sd.STORNO_EMPLOYEE_CODE,'
      '  ( select'
      '      se.FIRST_NAME || '#39' '#39'  || se.LAST_NAME'
      '    from'
      '      EMPLOYEES se'
      '    where'
      '      (se.EMPLOYEE_CODE = sd.STORNO_EMPLOYEE_CODE)'
      '  ) as STORNO_EMPLOYEE_NAME,'
      '  sd.STORNO_DATE,'
      '  sd.STORNO_TIME,'
      ''
      '  %HAS_DOC_ITEMS[sd] as SD_HAS_DOCUMENTATION,'
      '  sd.DOC_BRANCH_CODE as SD_DOC_BRANCH_CODE,'
      '  sd.DOC_CODE as SD_DOC_CODE,'
      ''
      '  ('
      '    select'
      '      mll.DETAIL_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE)'
      '  ) as DETAIL_CODE,'
      '  ('
      '    select'
      '      p.NAME'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE)'
      '  ) as DETAIL_NAME,'
      '  ('
      '    select'
      '      p.CUSTOM_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE)'
      '  ) as DETAIL_NO,'
      '  ('
      '    select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE)'
      '  ) as DETAIL_HAS_DOCUMENTATION,'
      '  ('
      '    select'
      '      p.DOC_BRANCH_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE)'
      '  ) as DETAIL_DOC_BRANCH_CODE,'
      '  ('
      '    select'
      '      p.DOC_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE)'
      '  ) as DETAIL_DOC_CODE,'
      ''
      '  ('
      '    select'
      '      s.PRODUCT_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) '
      '  ) as SALE_PRODUCT_CODE,'
      '  ('
      '    select'
      '      p.NAME'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SALE_PRODUCT_NAME,'
      '  ('
      '    select'
      '      p.CUSTOM_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SALE_PRODUCT_NO,'
      '  ('
      '    select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SALE_PRODUCT_HAS_DOCUMENTATION,'
      '  ('
      '    select'
      '      p.DOC_BRANCH_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SALE_PRODUCT_DOC_BRANCH_CODE,'
      '  ('
      '    select'
      '      p.DOC_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SALE_PRODUCT_DOC_CODE,'
      ''
      '  ( select'
      '      ml.ENTER_RESULT_STORE_BEGIN_DATE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE)'
      '  ) as ENTER_RESULT_STORE_BEGIN_DATE,'
      '  ( select'
      '      ml.ENTER_RESULT_STORE_END_DATE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE)'
      '  ) as ENTER_RESULT_STORE_END_DATE,'
      ''
      '  ('
      '    select'
      '      Nvl2(mllc.MLL_OBJECT_CODE,'
      '        Nvl2(mllc.REPLY_EMPLOYEE_CODE, 2, 1),'
      '        0'
      '      )    '
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LIST_LINE_CHANGES mllc'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = mllc.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mll.MLL_OBJECT_CODE = mllc.MLL_OBJECT_CODE) and'
      '      (mllc.REPLY_ACCEPT_EMPLOYEE_CODE is null) '
      '  ) as MLL_CHANGE_STATUS,'
      '  ('
      '    select'
      '      mllc.MATERIAL_LIST_LINE_CHANGE_NO'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LIST_LINE_CHANGES mllc'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = mllc.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mll.MLL_OBJECT_CODE = mllc.MLL_OBJECT_CODE) and'
      '      (mllc.REPLY_ACCEPT_EMPLOYEE_CODE is null) '
      '  ) as MATERIAL_LIST_LINE_CHANGE_NO,'
      '  ('
      '    select'
      '      mll.MLL_OBJECT_BRANCH_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) '
      '  ) as MLL_OBJECT_BRANCH_CODE,'
      '  ('
      '    select'
      '      mll.MLL_OBJECT_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '  ) as MLL_OBJECT_CODE,'
      ''
      '  Decode(sd.BND_PROCESS_CODE,'
      '    41,  -- pd oprostena'
      '    sd.VENDOR_COMPANY_CODE,'
      '    40,  -- pd'
      '    ('
      '      select'
      '        dp.VENDOR_COMPANY_CODE'
      '      from'
      '        DELIVERY_CONTRACTS dc,'
      '        DELIVERY_PROJECTS dp'
      '      where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) a' +
        'nd'
      
        '        (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) ' +
        'and'
      '        (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '        (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE)'
      '    ),'
      '    null'
      '  ) as VENDOR_COMPANY_CODE,'
      ''
      '  Decode(sd.BND_PROCESS_CODE,'
      '    41,  -- pd oprostena'
      '    ( select'
      '        c.SHORT_NAME'
      '      from'
      '        COMPANIES c'
      '      where'
      '        (c.COMPANY_CODE = sd.VENDOR_COMPANY_CODE)'
      '    ),'
      '    40,  -- pd'
      '    ('
      '      select'
      '        c.SHORT_NAME'
      '      from'
      '        DELIVERY_CONTRACTS dc,'
      '        DELIVERY_PROJECTS dp,'
      '        COMPANIES c'
      '      where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) a' +
        'nd'
      
        '        (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) ' +
        'and'
      '        (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      
        '        (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE) an' +
        'd'
      '        (dp.VENDOR_COMPANY_CODE = c.COMPANY_CODE)'
      '    ),'
      '    null'
      '  ) as VENDOR_SHORT_NAME,'
      ''
      '  Decode(sd.BND_PROCESS_CODE,'
      '    41,  -- pd oprostena'
      '    sd.INVOICE_DATE,'
      '    40,  -- pd'
      '    ('
      '      select'
      '        dc.INVOICE_DATE'
      '      from'
      '        DELIVERY_CONTRACTS dc'
      '      where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_' +
        'BRANCH_CODE) and'
      '        (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE)'
      '    ),'
      '    null'
      '  ) as INVOICE_DATE,'
      ''
      '  Decode(sd.BND_PROCESS_CODE,'
      '    41,  -- pd oprostena'
      '    sd.INVOICE_NO,'
      '    40,  -- pd'
      '    ('
      '      select'
      '        dc.INVOICE_NO'
      '      from'
      '        DELIVERY_CONTRACTS dc'
      '      where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_' +
        'BRANCH_CODE) and'
      '        (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE)'
      '    ),'
      '    null'
      '  ) as INVOICE_NO,'
      ''
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      ''
      '  Coalesce(( select'
      '      Sign(Count(*))'
      '    from'
      '      STORE_DEALS sd2'
      '    where'
      
        '      (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT' +
        '_BRANCH_CODE) and'
      '      (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE)'
      '  ), 0) as HAS_BND_SD,'
      ''
      '  ( select'
      '      Nvl2(srg.SALE_GROUP_OBJECT_CODE,'
      '        ( select'
      '            d.CUSTOM_CODE || '#39' / '#39' || srg.REQUEST_NO'
      '          from'
      '            DEPTS d'
      '          where'
      '            (d.DEPT_CODE = srg.REQUEST_BRANCH_CODE)'
      '        ),'
      '        ( select'
      '            po.PROCESS_OBJECT_IDENTIFIER'
      '          from'
      '            PROCESS_OBJECTS po'
      '          where'
      
        '            (po.PROCESS_OBJECT_BRANCH_CODE = fo.BND_PROCESS_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '            (po.PROCESS_OBJECT_CODE = fo.BND_PROCESS_OBJECT_CODE' +
        ')'
      '        )'
      '      )'
      '      '
      '    from'
      '      REAL_FIN_MODEL_LINES rfml,'
      '      FIN_ORDERS fo,'
      '      SALE_REQUEST_GROUPS srg'
      ''
      '    where'
      
        '      (rfml.RFML_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRAN' +
        'CH_CODE) and'
      '      (rfml.RFML_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '      (fo.FIN_ORDER_CODE = rfml.FIN_ORDER_CODE) and'
      '      (fo.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '      (fo.BND_PROCESS_OBJECT_BRANCH_CODE = srg.SALE_GROUP_OBJECT' +
        '_BRANCH_CODE(+)) and'
      
        '      (fo.BND_PROCESS_OBJECT_CODE = srg.SALE_GROUP_OBJECT_CODE(+' +
        ')) '
      '  ) as RFML_BND_OBJECT_ID,'
      ''
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      REAL_FIN_MODEL_LINES rfml,'
      '      FIN_ORDERS fo,'
      '      COMPANIES c'
      '    where'
      
        '      (rfml.RFML_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRAN' +
        'CH_CODE) and'
      '      (rfml.RFML_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '      (fo.FIN_ORDER_CODE = rfml.FIN_ORDER_CODE) and'
      '      (fo.ANNUL_EMPLOYEE_CODE is null) and'
      '      (c.COMPANY_CODE = fo.PARTNER_CODE)'
      '  ) as RFML_PARTNER_SHORT_NAME,'
      ''
      '  ( select'
      '      fo.BASE_QUANTITY * rfml.LINE_QUANTITY_PERCENT'
      '    from'
      '      REAL_FIN_MODEL_LINES rfml,'
      '      FIN_ORDERS fo'
      '    where'
      
        '      (rfml.RFML_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRAN' +
        'CH_CODE) and'
      '      (rfml.RFML_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '      (fo.FIN_ORDER_CODE = rfml.FIN_ORDER_CODE) and'
      '      (fo.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as RFML_QUANTITY,'
      ''
      
        '  Cast(%RFML_DOCUMENT_IDENTIFIER[sd.BND_PROCESS_OBJECT_BRANCH_CO' +
        'DE ~ sd.BND_PROCESS_OBJECT_CODE] as VarChar2(50 char)) as RFML_D' +
        'OCUMENT_IDENTIFIER,'
      
        '  %RFML_DOCUMENT_DATE[sd.BND_PROCESS_OBJECT_BRANCH_CODE ~ sd.BND' +
        '_PROCESS_OBJECT_CODE] as RFML_DOCUMENT_DATE,'
      ''
      '  ( case'
      '      when (sd.BND_PROCESS_CODE in (60, 61, 91, 180)) then'
      '        ( select'
      '            Decode('
      '              ( select'
      '                  pot.PROD_ORDER_BASE_TYPE_CODE'
      '                from'
      '                  PRODUCTION_ORDER_TYPES pot'
      '                where'
      
        '                  (pot.PRODUCTION_ORDER_TYPE_CODE = s2.PRODUCTIO' +
        'N_ORDER_TYPE_CODE)'
      '              ),'
      '              %pobt_PROJECT,'
      '              ( select'
      '                  p2.NAME'
      '                from'
      '                  PRODUCTS p2'
      '                where'
      '                  (p2.PRODUCT_CODE = s2.PRODUCT_CODE)'
      '              )'
      '            )'
      '          from'
      '            SALES s2'
      '          where'
      '            (s2.WASTING_SALE_OBJ_BRANCH_CODE is null)'
      '          start with'
      
        '            (s2.SALE_OBJECT_BRANCH_CODE = %SD_BND_SALE_OBJECT_BR' +
        'ANCH_CODE[sd]) and'
      '            (s2.SALE_OBJECT_CODE = %SD_BND_SALE_OBJECT_CODE[sd])'
      '          connect by'
      
        '            (s2.SALE_OBJECT_BRANCH_CODE = prior s2.WASTING_SALE_' +
        'OBJ_BRANCH_CODE) and'
      
        '            (s2.SALE_OBJECT_CODE = prior s2.WASTING_SALE_OBJ_COD' +
        'E)'
      '        )'
      '      when (sd.BND_PROCESS_CODE in (190)) then'
      '        ( select'
      '            ( select'
      '                p2.NAME'
      '              from'
      '                PRODUCTS p2'
      '              where'
      '                (p2.PRODUCT_CODE = bo.PRODUCT_CODE)'
      '            )'
      '          from'
      '            BOI_ORDERS boio,'
      '            BUDGET_ORDERS bo'
      '          where'
      
        '            (boio.BOI_ORDER_OBJECT_BRANCH_CODE = sd.BND_PROCESS_' +
        'OBJECT_BRANCH_CODE) and'
      
        '            (boio.BOI_ORDER_OBJECT_CODE = sd.BND_PROCESS_OBJECT_' +
        'CODE) and'
      ''
      
        '            (boio.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRA' +
        'NCH_CODE) and'
      '            (boio.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE)'
      '        )'
      '      when (sd.BND_PROCESS_CODE in (40)) then'
      '        ( select'
      '            p.NAME'
      '          from'
      '            BOI_ORDERS boio,'
      '            BUDGET_ORDERS bo,'
      '            PRODUCTS p'
      '          where'
      
        '            (boio.DELIVERY_OBJECT_BRANCH_CODE = sd.BND_PROCESS_O' +
        'BJECT_BRANCH_CODE) and'
      
        '            (boio.DELIVERY_OBJECT_CODE = sd.BND_PROCESS_OBJECT_C' +
        'ODE) and'
      '            (boio.BOI_ORDER_TYPE_CODE = %boiot_MARKING) and'
      '            (boio.IS_CANCELED = 0) and'
      '            (boio.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '            (boio.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRA' +
        'NCH_CODE) and'
      '            (boio.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE) and'
      ''
      '            (bo.PRODUCT_CODE = p.PRODUCT_CODE)'
      '        )'
      '    end'
      '  ) as PROJECT_PRODUCT_NAME,'
      ''
      '  ( case'
      '      when (sd.BND_PROCESS_CODE in (60, 61, 91, 180)) then'
      '        ( select'
      '            Decode('
      '              ( select'
      '                  pot.PROD_ORDER_BASE_TYPE_CODE'
      '                from'
      '                  PRODUCTION_ORDER_TYPES pot'
      '                where'
      
        '                  (pot.PRODUCTION_ORDER_TYPE_CODE = s2.PRODUCTIO' +
        'N_ORDER_TYPE_CODE)'
      '              ),'
      '              %pobt_PROJECT,'
      '              ( select'
      '                  p2.CUSTOM_CODE'
      '                from'
      '                  PRODUCTS p2'
      '                where'
      '                  (p2.PRODUCT_CODE = s2.PRODUCT_CODE)'
      '              )'
      '            )'
      '          from'
      '            SALES s2'
      '          where'
      '            (s2.WASTING_SALE_OBJ_BRANCH_CODE is null)'
      '          start with'
      
        '            (s2.SALE_OBJECT_BRANCH_CODE = %SD_BND_SALE_OBJECT_BR' +
        'ANCH_CODE[sd]) and'
      '            (s2.SALE_OBJECT_CODE = %SD_BND_SALE_OBJECT_CODE[sd])'
      '          connect by'
      
        '            (s2.SALE_OBJECT_BRANCH_CODE = prior s2.WASTING_SALE_' +
        'OBJ_BRANCH_CODE) and'
      
        '            (s2.SALE_OBJECT_CODE = prior s2.WASTING_SALE_OBJ_COD' +
        'E)'
      '        )'
      '      when (sd.BND_PROCESS_CODE in (190)) then'
      '        ( select'
      '            ( select'
      '                p2.CUSTOM_CODE'
      '              from'
      '                PRODUCTS p2'
      '              where'
      '                (p2.PRODUCT_CODE = bo.PRODUCT_CODE)'
      '            )'
      '          from'
      '            BOI_ORDERS boio,'
      '            BUDGET_ORDERS bo'
      '          where'
      
        '            (boio.BOI_ORDER_OBJECT_BRANCH_CODE = sd.BND_PROCESS_' +
        'OBJECT_BRANCH_CODE) and'
      
        '            (boio.BOI_ORDER_OBJECT_CODE = sd.BND_PROCESS_OBJECT_' +
        'CODE) and'
      ''
      
        '            (boio.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRA' +
        'NCH_CODE) and'
      '            (boio.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE)'
      '        )'
      '      when (sd.BND_PROCESS_CODE in (40)) then'
      '        ( select'
      '            p.CUSTOM_CODE'
      '          from'
      '            BOI_ORDERS boio,'
      '            BUDGET_ORDERS bo,'
      '            PRODUCTS p'
      '          where'
      
        '            (boio.DELIVERY_OBJECT_BRANCH_CODE = sd.BND_PROCESS_O' +
        'BJECT_BRANCH_CODE) and'
      
        '            (boio.DELIVERY_OBJECT_CODE = sd.BND_PROCESS_OBJECT_C' +
        'ODE) and'
      '            (boio.BOI_ORDER_TYPE_CODE = %boiot_MARKING) and'
      '            (boio.IS_CANCELED = 0) and'
      '            (boio.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '            (boio.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRA' +
        'NCH_CODE) and'
      '            (boio.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE) and'
      ''
      '            (bo.PRODUCT_CODE = p.PRODUCT_CODE)'
      '        )'
      '    end'
      '  ) as PROJECT_PRODUCT_NO,'
      ''
      '  ( case'
      '      when (sd.BND_PROCESS_CODE in (60, 61, 91, 180)) then'
      '        ( select'
      '            Decode('
      '              ( select'
      '                  pot.PROD_ORDER_BASE_TYPE_CODE'
      '                from'
      '                  PRODUCTION_ORDER_TYPES pot'
      '                where'
      
        '                  (pot.PRODUCTION_ORDER_TYPE_CODE = s2.PRODUCTIO' +
        'N_ORDER_TYPE_CODE)'
      '              ),'
      '              %pobt_PROJECT,'
      '              ( select'
      '                  otp.ORG_TASK_PROPOSAL_NO'
      '                from'
      '                  ORG_TASK_PROPOSALS otp'
      '                where'
      '                  (otp.PRODUCT_CODE = s2.PRODUCT_CODE) and'
      
        '                  (otp.ORG_TASK_PROP_RESULT_TYPE_CODE <> %otprt_' +
        'ATTACHED)'
      '              )'
      '            )'
      '          from'
      '            SALES s2'
      '          where'
      '            (s2.WASTING_SALE_OBJ_BRANCH_CODE is null)'
      '          start with'
      
        '            (s2.SALE_OBJECT_BRANCH_CODE = %SD_BND_SALE_OBJECT_BR' +
        'ANCH_CODE[sd]) and'
      '            (s2.SALE_OBJECT_CODE = %SD_BND_SALE_OBJECT_CODE[sd])'
      '          connect by'
      
        '            (s2.SALE_OBJECT_BRANCH_CODE = prior s2.WASTING_SALE_' +
        'OBJ_BRANCH_CODE) and'
      
        '            (s2.SALE_OBJECT_CODE = prior s2.WASTING_SALE_OBJ_COD' +
        'E)'
      '        )'
      '      when (sd.BND_PROCESS_CODE in (190)) then'
      '        ( select'
      '            ( select'
      '                otp.ORG_TASK_PROPOSAL_NO'
      '              from'
      '                ORG_TASK_PROPOSALS otp'
      '              where'
      '                (otp.PRODUCT_CODE = bo.PRODUCT_CODE) and'
      
        '                (otp.ORG_TASK_PROP_RESULT_TYPE_CODE <> %otprt_AT' +
        'TACHED)'
      '            )'
      '          from'
      '            BOI_ORDERS boio,'
      '            BUDGET_ORDERS bo'
      '          where'
      
        '            (boio.BOI_ORDER_OBJECT_BRANCH_CODE = sd.BND_PROCESS_' +
        'OBJECT_BRANCH_CODE) and'
      
        '            (boio.BOI_ORDER_OBJECT_CODE = sd.BND_PROCESS_OBJECT_' +
        'CODE) and'
      ''
      
        '            (boio.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRA' +
        'NCH_CODE) and'
      '            (boio.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE)'
      '        )'
      '    end'
      '  ) as ORG_TASK_PROPOSAL_NO,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      EMPLOYEES e,'
      '      COMPANIES c'
      '    where'
      '      (e.COMPANY_CODE = c.COMPANY_CODE) and'
      '      (e.EMPLOYEE_CODE = sd.REQUEST_EMPLOYEE_CODE)'
      '  ) as REQUEST_EMPLOYEE_NO,'
      ''
      '  ( select'
      
        '      e.FIRST_NAME || '#39' '#39' || Nvl2(e.MIDDLE_NAME, e.MIDDLE_NAME |' +
        '| '#39' '#39', '#39#39') || e.LAST_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = sd.REQUEST_EMPLOYEE_CODE)'
      '  ) as REQUEST_EMPLOYEE_NAME,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      EMPLOYEES e,'
      '      COMPANIES c'
      '    where'
      '      (e.COMPANY_CODE = c.COMPANY_CODE) and'
      '      (e.EMPLOYEE_CODE = sd.STORE_EMPLOYEE_CODE)'
      '  ) as STORE_EMPLOYEE_NO,'
      ''
      '  ( select'
      
        '      e.FIRST_NAME || '#39' '#39' || Nvl2(e.MIDDLE_NAME, e.MIDDLE_NAME |' +
        '| '#39' '#39', '#39#39') || e.LAST_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = sd.STORE_EMPLOYEE_CODE)'
      '  ) as STORE_EMPLOYEE_NAME,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      EMPLOYEES e,'
      '      COMPANIES c'
      '    where'
      '      (e.COMPANY_CODE = c.COMPANY_CODE) and'
      '      (e.EMPLOYEE_CODE = sd.OTHER_EMPLOYEE_CODE)'
      '  ) as OTHER_EMPLOYEE_NO,'
      ''
      '  ( select'
      
        '      e.FIRST_NAME || '#39' '#39' || Nvl2(e.MIDDLE_NAME, e.MIDDLE_NAME |' +
        '| '#39' '#39', '#39#39') || e.LAST_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = sd.OTHER_EMPLOYEE_CODE)'
      '  ) as OTHER_EMPLOYEE_NAME,'
      ''
      '  ( select'
      '      dp.DOC_BRANCH_CODE'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      DELIVERY_PROJECTS dp'
      '    where'
      
        '      (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '      (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE) and'
      ''
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE)'
      '  ) as DELIVERY_DOC_BRANCH_CODE,'
      ''
      '  ( select'
      '      dp.DOC_CODE'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      DELIVERY_PROJECTS dp'
      '    where'
      
        '      (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '      (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE) and'
      ''
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE)'
      '  ) as DELIVERY_DOC_CODE,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[dp]'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      DELIVERY_PROJECTS dp'
      '    where'
      
        '      (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '      (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE) and'
      ''
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE)'
      '  ) as DELIVERY_HAS_DOC_ITEMS,'
      ''
      '  ( case'
      '      when (sd.BND_PROCESS_CODE in (190)) then'
      '        ( select'
      '            p.CUSTOM_CODE'
      '          from'
      '            BOI_ORDERS boio,'
      '            BUDGET_ORDER_ITEMS boi,'
      '            PRODUCTS p'
      '          where'
      
        '            (boio.BOI_ORDER_OBJECT_BRANCH_CODE = sd.BND_PROCESS_' +
        'OBJECT_BRANCH_CODE) and'
      
        '            (boio.BOI_ORDER_OBJECT_CODE = sd.BND_PROCESS_OBJECT_' +
        'CODE) and'
      ''
      
        '            (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BR' +
        'ANCH_CODE) and'
      '            (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '            (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM' +
        '_CODE) and'
      ''
      '            (boi.BUDGET_PRODUCT_CODE = p.PRODUCT_CODE)'
      '        )'
      '    end'
      '  ) as BOIO_BUDGET_PRODUCT_NO,'
      ''
      '  ( case'
      '      when (sd.BND_PROCESS_CODE in (190)) then'
      '        ( select'
      '            p.NAME'
      '          from'
      '            BOI_ORDERS boio,'
      '            BUDGET_ORDER_ITEMS boi,'
      '            PRODUCTS p'
      '          where'
      
        '            (boio.BOI_ORDER_OBJECT_BRANCH_CODE = sd.BND_PROCESS_' +
        'OBJECT_BRANCH_CODE) and'
      
        '            (boio.BOI_ORDER_OBJECT_CODE = sd.BND_PROCESS_OBJECT_' +
        'CODE) and'
      ''
      
        '            (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BR' +
        'ANCH_CODE) and'
      '            (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '            (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM' +
        '_CODE) and'
      ''
      '            (boi.BUDGET_PRODUCT_CODE = p.PRODUCT_CODE)'
      '        )'
      '    end'
      '  ) as BOIO_BUDGET_PRODUCT_NAME'
      ''
      'from'
      '  STORE_DEALS sd,'
      '  PRODUCTS p'
      ''
      'where'
      '  (sd.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  ( (:STORE_DEAL_NO is null) or'
      '    (:STORE_DEAL_NO = sd.STORE_DEAL_NO) ) and'
      ''
      '  (sd.STORE_DEAL_DATE between :START_DATE and :END_DATE) and'
      ''
      '  ( (:ALL_FILTERED_DEPTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS tfd'
      '        where'
      '          (tfd.DEPT_CODE = sd.STORE_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = sd.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:STORE_REQUEST_BRANCH_CODE is null) or'
      '    (sd.STORE_REQUEST_BRANCH_CODE = :STORE_REQUEST_BRANCH_CODE)'
      '  ) and'
      ''
      '  ( (:STORE_REQUEST_CODE is null) or'
      '    (:STORE_REQUEST_CODE = sd.STORE_REQUEST_CODE) ) and'
      '  ( ((:IS_IN <> 0) and (sd.IN_OUT = 1)) or'
      '    ((:IS_OUT <> 0) and (sd.IN_OUT = -1)) ) and'
      
        '  ( ((:IS_STORNO <> 0) and (sd.STORNO_EMPLOYEE_CODE is not null)' +
        ') or'
      
        '    ((:IS_NOT_STORNO <> 0) and (sd.STORNO_EMPLOYEE_CODE is null)' +
        ')'
      '  ) and'
      ''
      '  ( (:OTHER_DEPT_CODE is null) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        DEPT_RELATIONS'
      '      where'
      '        (DESCENDANT_DEPT_CODE = sd.DEPT_CODE) and'
      '        (ANCESTOR_DEPT_CODE = :OTHER_DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '  %STORE_DEALS_BND_PROCESS_CONDITION[sd] and'
      ''
      '  %REAL_STORE_DEALS_BND_PROCESS_ADDITIONAL_CONDITION[sd]'
      ''
      'order by'
      '  sd.STORE_DEAL_DATE,'
      '  sd.STORE_CODE,'
      '  sd.STORE_DEAL_TYPE_CODE,'
      '  sd.STORE_DEAL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'SD_BND_SALE_OBJECT_BRANCH_CODE[sd]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'SD_BND_SALE_OBJECT_CODE[sd]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[sd.PRODUCT_CO' +
          'DE ~ sd.STORE_DEAL_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[sd]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'RFML_DOCUMENT_IDENTIFIER[sd.BND_PROCESS_OBJECT_BRANCH_CODE ~ sd.' +
          'BND_PROCESS_OBJECT_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftString
        Name = 
          'RFML_DOCUMENT_DATE[sd.BND_PROCESS_OBJECT_BRANCH_CODE ~ sd.BND_PR' +
          'OCESS_OBJECT_CODE]'
        ParamType = ptInput
        Value = 'Trunc(SysDate)'
      end
      item
        DataType = ftWideString
        Name = 'pobt_PROJECT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'boiot_MARKING'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'otprt_ATTACHED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[dp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'STORE_DEALS_BND_PROCESS_CONDITION[sd]'
        ParamType = ptInput
        Value = '(0=0)'
      end
      item
        DataType = ftWideString
        Name = 'REAL_STORE_DEALS_BND_PROCESS_ADDITIONAL_CONDITION[sd]'
        ParamType = ptInput
        Value = '(0=0)'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BND_PROCESS'
        ParamType = ptInput
      end>
    Left = 24
    Top = 152
    object qryMovementsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryMovementsSTORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_DATE'
    end
    object qryMovementsSTORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_TYPE_CODE'
    end
    object qryMovementsIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object qryMovementsSTORE_DEAL_NO: TAbmesFloatField
      FieldName = 'STORE_DEAL_NO'
    end
    object qryMovementsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryMovementsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryMovementsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryMovementsBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object qryMovementsBND_PO_CLASS_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PO_CLASS_ABBREV'
      Size = 100
    end
    object qryMovementsBND_PO_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BND_PO_IDENTIFIER'
      Size = 50
    end
    object qryMovementsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryMovementsWORK_DEPT_NAME: TAbmesWideStringField
      FieldName = 'WORK_DEPT_NAME'
      Size = 46
    end
    object qryMovementsWORK_ORDER_NO: TAbmesWideStringField
      FieldName = 'WORK_ORDER_NO'
    end
    object qryMovementsQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryMovementsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryMovementsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryMovementsACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qryMovementsACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryMovementsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryMovementsTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryMovementsSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object qryMovementsSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_BRANCH_CODE'
    end
    object qryMovementsSTORE_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_CODE'
    end
    object qryMovementsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryMovementsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryMovementsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryMovementsSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object qryMovementsSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
    object qryMovementsCREATE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_NAME'
      Size = 41
    end
    object qryMovementsSTORNO_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'STORNO_EMPLOYEE_NAME'
      Size = 41
    end
    object qryMovementsSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
    end
    object qryMovementsSTORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_CODE'
    end
    object qryMovementsDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryMovementsENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_RESULT_STORE_BEGIN_DATE'
    end
    object qryMovementsENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_RESULT_STORE_END_DATE'
    end
    object qryMovementsMLL_CHANGE_STATUS: TAbmesFloatField
      FieldName = 'MLL_CHANGE_STATUS'
    end
    object qryMovementsMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryMovementsMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object qryMovementsMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField
      FieldName = 'MATERIAL_LIST_LINE_CHANGE_NO'
    end
    object qryMovementsVENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMPANY_CODE'
    end
    object qryMovementsVENDOR_SHORT_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_SHORT_NAME'
    end
    object qryMovementsINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object qryMovementsINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
    object qryMovementsSTORE_NAME: TAbmesWideStringField
      FieldName = 'STORE_NAME'
      Size = 45
    end
    object qryMovementsSTORE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'STORE_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object qryMovementsSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object qryMovementsIS_STORNO: TAbmesFloatField
      FieldName = 'IS_STORNO'
    end
    object qryMovementsBND_PROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PROCESS_ABBREV'
      Size = 100
    end
    object qryMovementsPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryMovementsSTORE_REQUEST_ID: TAbmesWideStringField
      FieldName = 'STORE_REQUEST_ID'
      Size = 81
    end
    object qryMovementsDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qryMovementsDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qryMovementsDETAIL_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOCUMENTATION'
    end
    object qryMovementsDETAIL_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DETAIL_DOC_BRANCH_CODE'
    end
    object qryMovementsDETAIL_DOC_CODE: TAbmesFloatField
      FieldName = 'DETAIL_DOC_CODE'
    end
    object qryMovementsSALE_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_CODE'
    end
    object qryMovementsSALE_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SALE_PRODUCT_NAME'
      Size = 100
    end
    object qryMovementsSALE_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_NO'
    end
    object qryMovementsSALE_PRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_HAS_DOCUMENTATION'
    end
    object qryMovementsSALE_PRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_DOC_BRANCH_CODE'
    end
    object qryMovementsSALE_PRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_DOC_CODE'
    end
    object qryMovementsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryMovementsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryMovementsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryMovementsSD_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'SD_HAS_DOCUMENTATION'
    end
    object qryMovementsSD_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SD_DOC_BRANCH_CODE'
    end
    object qryMovementsSD_DOC_CODE: TAbmesFloatField
      FieldName = 'SD_DOC_CODE'
    end
    object qryMovementsACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
    end
    object qryMovementsHAS_BND_SD: TAbmesFloatField
      FieldName = 'HAS_BND_SD'
    end
    object qryMovementsRFML_BND_OBJECT_ID: TAbmesWideStringField
      FieldName = 'RFML_BND_OBJECT_ID'
      Size = 100
    end
    object qryMovementsRFML_PARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'RFML_PARTNER_SHORT_NAME'
    end
    object qryMovementsRFML_QUANTITY: TAbmesFloatField
      FieldName = 'RFML_QUANTITY'
    end
    object qryMovementsSALE_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'SALE_TOTAL_PRICE'
    end
    object qryMovementsRFML_DOCUMENT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'RFML_DOCUMENT_IDENTIFIER'
      Size = 50
    end
    object qryMovementsRFML_DOCUMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'RFML_DOCUMENT_DATE'
    end
    object qryMovementsPROJECT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PROJECT_PRODUCT_NAME'
      Size = 100
    end
    object qryMovementsPROJECT_PRODUCT_NO: TAbmesFloatField
      FieldName = 'PROJECT_PRODUCT_NO'
    end
    object qryMovementsORG_TASK_PROPOSAL_NO: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_NO'
    end
    object qryMovementsREQUEST_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'REQUEST_EMPLOYEE_NO'
    end
    object qryMovementsREQUEST_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'REQUEST_EMPLOYEE_NAME'
      Size = 152
    end
    object qryMovementsSTORE_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'STORE_EMPLOYEE_NO'
    end
    object qryMovementsSTORE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'STORE_EMPLOYEE_NAME'
      Size = 152
    end
    object qryMovementsOTHER_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'OTHER_EMPLOYEE_NO'
    end
    object qryMovementsOTHER_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'OTHER_EMPLOYEE_NAME'
      Size = 152
    end
    object qryMovementsDELIVERY_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DOC_BRANCH_CODE'
    end
    object qryMovementsDELIVERY_DOC_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DOC_CODE'
    end
    object qryMovementsDELIVERY_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'DELIVERY_HAS_DOC_ITEMS'
    end
    object qryMovementsBOIO_BUDGET_PRODUCT_NO: TAbmesFloatField
      FieldName = 'BOIO_BUDGET_PRODUCT_NO'
    end
    object qryMovementsBOIO_BUDGET_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BOIO_BUDGET_PRODUCT_NAME'
      Size = 100
    end
    object qryMovementsBND_PROCESS_OBJECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_TYPE_ABBREV'
      Size = 100
    end
  end
  object prvMovements: TDataSetProvider
    DataSet = qryMovements
    Left = 24
    Top = 104
  end
  object prvStoreDealTypes: TDataSetProvider
    DataSet = qryStoreDealTypes
    Left = 182
    Top = 264
  end
  object qryStoreDealTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from STORE_DEAL_TYPES')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 182
    Top = 248
    object qryStoreDealTypesSTORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_TYPE_CODE'
    end
    object qryStoreDealTypesIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
  end
  object qryUpdateStoreDeal: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ACCOUNT_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_PRICE'
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
      'update STORE_DEALS_FOR_EDIT'
      'set'
      '  ACCOUNT_QUANTITY = :ACCOUNT_QUANTITY,'
      '  TOTAL_PRICE = :TOTAL_PRICE'
      'where'
      
        '  STORE_DEAL_OBJECT_BRANCH_CODE = :STORE_DEAL_OBJECT_BRANCH_CODE' +
        ' and'
      '  STORE_DEAL_OBJECT_CODE = :STORE_DEAL_OBJECT_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 222
    Top = 56
  end
  object qryPlannedStoreDeal: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      '  psd.*,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_CODE,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  (e.FIRST_NAME || '#39' '#39' || e.LAST_NAME) as CREATE_EMPLOYEE_NAME,'
      '  Nvl2(BND_PROCESS_OBJECT_BRANCH_CODE,'
      
        '    (poc.PROCESS_OBJECT_CLASS_ABBREV || '#39': '#39' || po.PROCESS_OBJEC' +
        'T_IDENTIFIER),'
      '    '#39#39
      '  ) as PROCESS_OBJECT_IDENTIFIER,'
      ''
      
        '  (psd.QUANTITY * %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[psd.PRODUCT' +
        '_CODE ~ psd.STORE_DEAL_BEGIN_DATE]) as TOTAL_PRICE,'
      
        '  ( select iv.BASE_CURRENCY_CODE from INTERNAL_VALUES iv where (' +
        'iv.CODE = 1) ) as CURRENCY_CODE,'
      
        '  %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[psd.PRODUCT_CODE ~ psd.STOR' +
        'E_DEAL_BEGIN_DATE] as SINGLE_PRICE'
      ''
      'from'
      '  PLANNED_STORE_DEALS psd,'
      '  EMPLOYEES e,'
      '  PRODUCTS p,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  PROCESS_OBJECTS po,'
      '  PROCESS_OBJECT_CLASSES poc'
      ''
      'where'
      '  (psd.CREATE_EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '  (psd.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (psd.DEPT_CODE = d.DEPT_CODE(+)) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      
        '  (psd.BND_PROCESS_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BRANCH' +
        '_CODE(+)) and'
      '  (psd.BND_PROCESS_OBJECT_CODE = po.PROCESS_OBJECT_CODE(+)) and'
      
        '  (po.PROCESS_OBJECT_CLASS_CODE = poc.PROCESS_OBJECT_CLASS_CODE(' +
        '+)) and'
      
        '  (psd.PLANNED_STORE_DEAL_BRANCH_CODE = :PLANNED_STORE_DEAL_BRAN' +
        'CH_CODE) and'
      '  (psd.PLANNED_STORE_DEAL_CODE = :PLANNED_STORE_DEAL_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[psd.PRODUCT_CODE ~ psd.STORE_D' +
          'EAL_BEGIN_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PLANNED_STORE_DEALS_FOR_EDIT'
    Left = 318
    Top = 222
    object qryPlannedStoreDealPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPlannedStoreDealPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPlannedStoreDealPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_TYPE_CODE'
    end
    object qryPlannedStoreDealSTORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_TYPE_CODE'
    end
    object qryPlannedStoreDealPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object qryPlannedStoreDealIS_PLANNED_MANUALLY: TAbmesFloatField
      FieldName = 'IS_PLANNED_MANUALLY'
    end
    object qryPlannedStoreDealBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryPlannedStoreDealBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object qryPlannedStoreDealBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object qryPlannedStoreDealSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryPlannedStoreDealSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_BEGIN_DATE'
    end
    object qryPlannedStoreDealSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_END_DATE'
    end
    object qryPlannedStoreDealPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryPlannedStoreDealQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryPlannedStoreDealACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qryPlannedStoreDealCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryPlannedStoreDealTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryPlannedStoreDealDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryPlannedStoreDealWORK_ORDER_NO: TAbmesWideStringField
      FieldName = 'WORK_ORDER_NO'
    end
    object qryPlannedStoreDealANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryPlannedStoreDealANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryPlannedStoreDealANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryPlannedStoreDealCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryPlannedStoreDealCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryPlannedStoreDealCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object qryPlannedStoreDealCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryPlannedStoreDealCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryPlannedStoreDealCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryPlannedStoreDealCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryPlannedStoreDealCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryPlannedStoreDealCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryPlannedStoreDealPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryPlannedStoreDealPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryPlannedStoreDealMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      ProviderFlags = []
    end
    object qryPlannedStoreDealACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryPlannedStoreDealDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryPlannedStoreDealSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryPlannedStoreDealCREATE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 41
    end
    object qryPlannedStoreDealPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 202
    end
  end
  object prvPlannedStoreDeal: TDataSetProvider
    DataSet = qryPlannedStoreDeal
    Options = [poPropogateChanges]
    BeforeUpdateRecord = prvPlannedStoreDealBeforeUpdateRecord
    Left = 318
    Top = 208
  end
  object qryDeleteStoreDeal: TAbmesSQLQuery
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
        Name = 'STORE_DEAL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  delete'
      '    STORE_DEALS_FOR_EDIT sd'
      '  where'
      
        '    (sd.STORE_DEAL_OBJECT_BRANCH_CODE = :STORE_DEAL_OBJECT_BRANC' +
        'H_CODE) and'
      '    (sd.STORE_DEAL_OBJECT_CODE = :STORE_DEAL_OBJECT_CODE);'
      ''
      '  delete'
      '    PROCESS_OBJECTS po'
      '  where'
      
        '    (po.PROCESS_OBJECT_BRANCH_CODE = :STORE_DEAL_OBJECT_BRANCH_C' +
        'ODE) and'
      '    (po.PROCESS_OBJECT_CODE = :STORE_DEAL_OBJECT_CODE);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 382
  end
  object qryMLLID: TAbmesSQLQuery
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
      end
      item
        DataType = ftWideString
        Name = 'NO_AS_TEXT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FORK_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MAIN_DEPT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MAIN_DEPT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHECK_MLL_HAS_PRODUCT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'CHECK_MLL_HAS_PRODUCT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHECK_ML_IS_ACTIVATED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'CHECK_ML_IS_ACTIVATED'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mll.MLL_OBJECT_BRANCH_CODE as  PROCESS_OBJECT_BRANCH_CODE,'
      '  mll.MLL_OBJECT_CODE as PROCESS_OBJECT_CODE'
      'from'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml,'
      '  SALES s'
      'where'
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '  (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '  (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE) and'
      '  (s.SALE_NO = :SALE_NO) and'
      '  (mll.NO_AS_TEXT = :NO_AS_TEXT) and'
      '  (mll.FORK_NO = :FORK_NO) and'
      ''
      '  ( (:MAIN_DEPT_NAME is null) or'
      '    (:MAIN_DEPT_NAME is not null)'
      '  ) and'
      ''
      '  ( (:CHECK_MLL_HAS_PRODUCT is null) or'
      '    (:CHECK_MLL_HAS_PRODUCT = 0) or'
      '    (mll.PRODUCT_CODE is not null)'
      '  ) and'
      ''
      '  ( (:CHECK_ML_IS_ACTIVATED is null) or'
      '    (:CHECK_ML_IS_ACTIVATED = 0) or'
      '    (ml.LIMITING_EMPLOYEE_CODE is not null)'
      '  )'
      ''
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 468
    Top = 160
    object qryMLLIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryMLLIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
  end
  object prvMLLID: TDataSetProvider
    DataSet = qryMLLID
    Left = 468
    Top = 144
  end
  object qrySaleID: TAbmesSQLQuery
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
      '  s.SALE_OBJECT_BRANCH_CODE as PROCESS_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE as PROCESS_OBJECT_CODE'
      'from'
      '  SALES s'
      'where'
      '  (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE) and'
      '  (s.SALE_NO = :SALE_NO) and'
      '  (s.SALE_ORDER_TYPE_CODE in (1, 3)) and'
      '  (s.MANUFACTURE_QUANTITY > 0)'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 575
    Top = 24
    object qrySaleIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object qrySaleIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
  end
  object prvSaleID: TDataSetProvider
    DataSet = qrySaleID
    Left = 574
    Top = 8
  end
  object qryStoreDealID: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  sd.STORE_DEAL_OBJECT_BRANCH_CODE as  PROCESS_OBJECT_BRANCH_COD' +
        'E,'
      '  sd.STORE_DEAL_OBJECT_CODE as PROCESS_OBJECT_CODE'
      'from'
      '  STORE_DEALS sd'
      'where'
      '  (sd.STORE_CODE = :STORE_CODE) and'
      '  (sd.STORE_DEAL_DATE = :STORE_DEAL_DATE) and'
      '  ( (:STORE_DEAL_TYPE_CODE is null) or'
      '    (sd.STORE_DEAL_TYPE_CODE = :STORE_DEAL_TYPE_CODE) ) and'
      '  (sd.STORE_DEAL_NO = :STORE_DEAL_NO) and'
      '  (sd.STORNO_EMPLOYEE_CODE is null)'
      ' '
      ' '
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 572
    Top = 160
    object qryStoreDealIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryStoreDealIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
  end
  object prvStoreDealID: TDataSetProvider
    DataSet = qryStoreDealID
    Left = 572
    Top = 144
  end
  object qrySaleCustomID: TAbmesSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'select'
      '  s.SALE_BRANCH_CODE,'
      '  s.SALE_NO,'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      '  ( select'
      '      st.SALE_TYPE_ABBREV'
      '    from'
      '      SALE_TYPES st'
      '    where'
      '      (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '  ) as SALE_TYPE_ABBREV,'
      '  ( select'
      '      pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '    from'
      '      PRODUCTION_ORDER_TYPES pot'
      '    where'
      
        '      (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER_TYPE_' +
        'CODE)'
      '  ) as PRODUCTION_ORDER_TYPE_ABBREV,'
      
        '  Nvl2(s.WASTING_SALE_OBJ_BRANCH_CODE, 1, 0) as IS_WASTE_COMPENS' +
        'ATOR,'
      '  s.SALE_ORDER_TYPE_CODE,'
      
        '  %ROOT_SALE_PRODUCT_CODE_IF_FOR_PROJECT[s] as PROJECT_PRODUCT_C' +
        'ODE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      MATERIAL_LISTS ml'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)'
      '  ) as HAS_MATERIAL_LIST'
      '  '
      'from'
      '  SALES s'
      'where'
      
        '  (s.SALE_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_CODE) ' +
        'and'
      '  (s.SALE_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'ROOT_SALE_PRODUCT_CODE_IF_FOR_PROJECT[s]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 574
    Top = 88
    object qrySaleCustomIDSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object qrySaleCustomIDSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object qrySaleCustomIDSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object qrySaleCustomIDSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object qrySaleCustomIDSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 5
    end
    object qrySaleCustomIDPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object qrySaleCustomIDIS_WASTE_COMPENSATOR: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATOR'
    end
    object qrySaleCustomIDSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object qrySaleCustomIDPROJECT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROJECT_PRODUCT_CODE'
    end
    object qrySaleCustomIDHAS_MATERIAL_LIST: TAbmesFloatField
      FieldName = 'HAS_MATERIAL_LIST'
    end
  end
  object prvSaleCustomID: TDataSetProvider
    DataSet = qrySaleCustomID
    Left = 574
    Top = 72
  end
  object qryMLLCustomID: TAbmesSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'select'
      '  s.SALE_BRANCH_CODE,'
      '  s.SALE_NO,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as M' +
        'AIN_DEPT_NAME,'
      '  mll.NO_AS_TEXT,'
      '  mll.FORK_NO,'
      '  mll.ANNUL_EMPLOYEE_CODE,'
      '  ( select'
      '      st.SALE_TYPE_ABBREV'
      '    from'
      '      SALE_TYPES st'
      '    where'
      '      (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '  ) as SALE_TYPE_ABBREV,'
      '  ( select'
      '      pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '    from'
      '      PRODUCTION_ORDER_TYPES pot'
      '    where'
      
        '      (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER_TYPE_' +
        'CODE)'
      '  ) as PRODUCTION_ORDER_TYPE_ABBREV,'
      
        '  Nvl2(s.WASTING_SALE_OBJ_BRANCH_CODE, 1, 0) as IS_WASTE_COMPENS' +
        'ATOR,'
      '  mll.IS_WASTE_FORK,'
      ''
      '  mll.ML_OBJECT_BRANCH_CODE,'
      '  mll.ML_OBJECT_CODE,'
      '  mll.MLL_OBJECT_BRANCH_CODE,'
      '  mll.MLL_OBJECT_CODE,'
      ''
      
        '  %ROOT_SALE_PRODUCT_CODE_IF_FOR_PROJECT[s] as PROJECT_PRODUCT_C' +
        'ODE'
      ''
      'from'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  SALES s'
      'where'
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '  (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '  (ml.MAIN_DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      
        '  (mll.MLL_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mll.MLL_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'ROOT_SALE_PRODUCT_CODE_IF_FOR_PROJECT[s]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 468
    Top = 224
    object qryMLLCustomIDSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object qryMLLCustomIDSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object qryMLLCustomIDMAIN_DEPT_NAME: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_NAME'
      ProviderFlags = []
      Size = 46
    end
    object qryMLLCustomIDNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qryMLLCustomIDFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object qryMLLCustomIDANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryMLLCustomIDSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 5
    end
    object qryMLLCustomIDPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object qryMLLCustomIDIS_WASTE_COMPENSATOR: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATOR'
    end
    object qryMLLCustomIDML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object qryMLLCustomIDML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object qryMLLCustomIDMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryMLLCustomIDMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object qryMLLCustomIDIS_WASTE_FORK: TAbmesFloatField
      FieldName = 'IS_WASTE_FORK'
    end
    object qryMLLCustomIDPROJECT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROJECT_PRODUCT_CODE'
    end
  end
  object prvMLLCustomID: TDataSetProvider
    DataSet = qryMLLCustomID
    Left = 468
    Top = 208
  end
  object qryStoreDealCustomID: TAbmesSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'select'
      '  sd.STORE_CODE,'
      '  sd.STORE_DEAL_DATE,'
      '  sd.STORE_DEAL_TYPE_CODE,'
      '  sd.STORE_DEAL_NO,'
      '  sd.STORNO_EMPLOYEE_CODE'
      'from'
      '  STORE_DEALS sd'
      'where'
      
        '  (sd.STORE_DEAL_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH' +
        '_CODE) and'
      '  (sd.STORE_DEAL_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 572
    Top = 224
    object qryStoreDealCustomIDSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryStoreDealCustomIDSTORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_DATE'
    end
    object qryStoreDealCustomIDSTORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_TYPE_CODE'
    end
    object qryStoreDealCustomIDSTORE_DEAL_NO: TAbmesFloatField
      FieldName = 'STORE_DEAL_NO'
    end
    object qryStoreDealCustomIDSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
  end
  object prvStoreDealCustomID: TDataSetProvider
    DataSet = qryStoreDealCustomID
    Left = 572
    Top = 208
  end
  object qryDeliveryID: TAbmesSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'select'
      '  dc.DELIVERY_OBJECT_BRANCH_CODE as PROCESS_OBJECT_BRANCH_CODE,'
      '  dc.DELIVERY_OBJECT_CODE as PROCESS_OBJECT_CODE'
      'from'
      '  DELIVERY_CONTRACTS dc,'
      '  DEFICIT_COVER_DECISIONS dcd'
      'where'
      '  (dc.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) and '
      '  (dc.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and '
      '  (dcd.DCD_BRANCH_CODE = :DCD_BRANCH_CODE) and'
      '  (dcd.DCD_CODE = :DCD_CODE) and'
      '  (dc.DELIVERY_PROJECT_CODE = :DELIVERY_PROJECT_CODE)'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 687
    Top = 160
    object qryDeliveryIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryDeliveryIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
  end
  object prvDeliveryID: TDataSetProvider
    DataSet = qryDeliveryID
    Left = 686
    Top = 144
  end
  object qryDeliveryCustomID: TAbmesSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'select'
      '  dcd.DCD_OBJECT_BRANCH_CODE,'
      '  dcd.DCD_OBJECT_CODE,'
      '  dcd.DCD_BRANCH_CODE,'
      '  dcd.DCD_CODE,'
      '  dc.DELIVERY_PROJECT_CODE,'
      '  ( select'
      '      dt.DELIVERY_TYPE_ABBREV'
      '    from'
      '      DELIVERY_TYPES dt'
      '    where'
      '      (dt.DELIVERY_TYPE_CODE = dc.DELIVERY_TYPE_CODE)'
      '  ) as DELIVERY_TYPE_ABBREV,'
      '  ( select'
      '      bdt.BORDER_DEAL_TYPE_ABBREV'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE)'
      '  ) as DELIVERY_DEAL_TYPE_ABBREV,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE)'
      '  ) as VENDOR_COMPANY_NAME,'
      '  dc.INVOICE_NO,'
      '  dc.INVOICE_ABBREV,'
      '  dc.IS_PROFORM_INVOICE,'
      '  dc.INVOICE_DATE'
      'from'
      '  DELIVERY_CONTRACTS dc,'
      '  DELIVERY_PROJECTS dp,'
      '  DEFICIT_COVER_DECISIONS dcd'
      'where'
      '  (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) and'
      '  (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '  (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE) and'
      '  (dc.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) and'
      '  (dc.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      
        '  (dc.DELIVERY_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_C' +
        'ODE) and'
      '  (dc.DELIVERY_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 687
    Top = 224
    object qryDeliveryCustomIDDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object qryDeliveryCustomIDDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
    end
    object qryDeliveryCustomIDDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
    end
    object qryDeliveryCustomIDDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object qryDeliveryCustomIDDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object qryDeliveryCustomIDDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object qryDeliveryCustomIDVENDOR_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_COMPANY_NAME'
    end
    object qryDeliveryCustomIDINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
    object qryDeliveryCustomIDINVOICE_ABBREV: TAbmesWideStringField
      FieldName = 'INVOICE_ABBREV'
      Size = 5
    end
    object qryDeliveryCustomIDIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
    end
    object qryDeliveryCustomIDINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object qryDeliveryCustomIDDELIVERY_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_TYPE_ABBREV'
      Size = 5
    end
  end
  object prvDeliveryCustomID: TDataSetProvider
    DataSet = qryDeliveryCustomID
    Left = 686
    Top = 208
  end
  object qryProcesses: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  p.PROCESS_CODE,'
      '  p.PROCESS_NO,'
      '  p.PROCESS_ABBREV,'
      '  p.PROCESS_NAME'
      'from'
      '  PROCESSES p'
      'order by'
      '  p.PROCESS_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 624
    Top = 600
    object qryProcessesPROCESS_CODE: TAbmesFloatField
      FieldName = 'PROCESS_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProcessesPROCESS_NO: TAbmesFloatField
      FieldName = 'PROCESS_NO'
    end
    object qryProcessesPROCESS_NAME: TAbmesWideStringField
      FieldName = 'PROCESS_NAME'
      Size = 100
    end
    object qryProcessesPROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'PROCESS_ABBREV'
      Size = 100
    end
  end
  object prvProcesses: TDataSetProvider
    DataSet = qryProcesses
    Left = 624
    Top = 552
  end
  object qryBoundPlannedSD: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      '  psd.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  psd.BND_PROCESS_OBJECT_CODE,'
      '  psd.BND_PROCESS_CODE,'
      '  psd.PRODUCT_CODE,'
      '  psd.STORE_DEAL_TYPE_CODE,'
      '  psd.DEPT_CODE,'
      '  psd.WORK_ORDER_NO'
      'from'
      '  PLANNED_STORE_DEALS psd,'
      '  PLANNED_STORE_DEAL_TYPES psdt'
      'where'
      
        '  (psd.PLANNED_STORE_DEAL_TYPE_CODE = psdt.PLANNED_STORE_DEAL_TY' +
        'PE_CODE) and'
      
        '  (psd.PLANNED_STORE_DEAL_BRANCH_CODE = :PLANNED_STORE_DEAL_BRAN' +
        'CH_CODE) and'
      '  (psd.PLANNED_STORE_DEAL_CODE = :PLANNED_STORE_DEAL_CODE)'
      ' '
      ' '
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 120
    Top = 172
    object qryBoundPlannedSDBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryBoundPlannedSDBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object qryBoundPlannedSDBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object qryBoundPlannedSDPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryBoundPlannedSDSTORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_TYPE_CODE'
    end
    object qryBoundPlannedSDDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryBoundPlannedSDWORK_ORDER_NO: TAbmesWideStringField
      FieldName = 'WORK_ORDER_NO'
    end
  end
  object prvBoundPlannedSD: TDataSetProvider
    DataSet = qryBoundPlannedSD
    Left = 112
    Top = 116
  end
  object prvSDOutQuantities: TDataSetProvider
    DataSet = qrySDOutQuantities
    Left = 56
    Top = 232
  end
  object qrySDOutQuantities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Sum(sd.QUANTITY * sd.IN_OUT) as QUANTITY,'
      '  Sum(sd.ACCOUNT_QUANTITY * sd.IN_OUT) as ACCOUNT_QUANTITY,'
      ''
      '  Sum('
      '    sd.TOTAL_PRICE *'
      '    sd.IN_OUT *'
      '    ( select'
      '        cr.FIXING'
      '      from'
      '        CURRENCY_RATES cr'
      '      where'
      '        (sd.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '        (sd.STORE_DEAL_DATE = cr.RATE_DATE)'
      '    )'
      '  ) as TOTAL_PRICE'
      ''
      'from'
      '  STORE_DEALS sd'
      'where'
      '  (sd.STORE_CODE = :STORE_CODE) and'
      '  (sd.PRODUCT_CODE = :PRODUCT_CODE) and'
      '  ( (sd.STORE_DEAL_DATE < :STORE_DEAL_DATE) or'
      '    ( (sd.STORE_DEAL_DATE = :STORE_DEAL_DATE) and'
      '      ( (sd.IN_OUT = 1) or'
      '        ( (sd.IN_OUT = -1) and'
      '          (sd.STORE_DEAL_NO < :STORE_DEAL_NO) ) ) ) ) and'
      '  (sd.STORNO_EMPLOYEE_CODE is null)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 280
    object qrySDOutQuantitiesQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qrySDOutQuantitiesACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qrySDOutQuantitiesTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
  end
  object qryPlannedStoreDealID: TAbmesSQLQuery
    MaxBlobSize = -1
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
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_OUT'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  psd.PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  psd.PLANNED_STORE_DEAL_CODE,'
      '  psd.STORE_CODE'
      'from'
      '  PLANNED_STORE_DEALS psd'
      'where'
      
        '  (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRAN' +
        'CH_CODE) and'
      '  (psd.BND_PROCESS_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE) and'
      '  (psd.BND_PROCESS_CODE = :BND_PROCESS_CODE) and'
      '  (psd.IS_PLANNED_MANUALLY = 0) and'
      '  (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '  (psd.PLANNED_STORE_DEAL_TYPE_CODE = 1) and'
      '  (psd.IN_OUT = :IN_OUT) and'
      '  (psd.BND_PROCESS_CODE <> 110)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 199
    object qryPlannedStoreDealIDPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
    end
    object qryPlannedStoreDealIDPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
    end
    object qryPlannedStoreDealIDSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
  end
  object qryCheckCurrencyFixing: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'RATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  cr.FIXING'
      'from'
      '  CURRENCY_RATES cr'
      'where'
      '  (cr.RATE_DATE = :RATE_DATE) and'
      '  (cr.CURRENCY_CODE = :CURRENCY_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 344
    object qryCheckCurrencyFixingFIXING: TAbmesFloatField
      FieldName = 'FIXING'
    end
  end
  object qrySaleShipmentID: TAbmesSQLQuery
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
      end
      item
        DataType = ftFloat
        Name = 'SALE_SHIPMENT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sh.SHIPMENT_OBJECT_BRANCH_CODE as PROCESS_OBJECT_BRANCH_CODE,'
      '  sh.SHIPMENT_OBJECT_CODE as PROCESS_OBJECT_CODE'
      'from'
      '  SALE_SHIPMENTS sh,'
      '  SALES s'
      'where'
      '  (sh.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) and'
      '  (sh.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '  (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE) and'
      '  (s.SALE_NO = :SALE_NO) and'
      '  (sh.SALE_SHIPMENT_NO = :SALE_SHIPMENT_NO)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 360
    object qrySaleShipmentIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object qrySaleShipmentIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
  end
  object prvSaleShipmentID: TDataSetProvider
    DataSet = qrySaleShipmentID
    Left = 552
    Top = 344
  end
  object qrySaleShipmentCustomID: TAbmesSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'select'
      '  s.SALE_BRANCH_CODE,'
      '  s.SALE_NO,'
      '  sh.SALE_SHIPMENT_NO,'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      '  ( select'
      '      bdt.BORDER_DEAL_TYPE_ABBREV'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = s.SALE_DEAL_TYPE_CODE)'
      '  ) as SALE_DEAL_TYPE_ABBREV,'
      '  ( select'
      '      st.SALE_TYPE_ABBREV'
      '    from'
      '      SALE_TYPES st'
      '    where'
      '      (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '  ) as SALE_TYPE_ABBREV,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '  ) as CLIENT_COMPANY_NAME,'
      ''
      '  s.SALE_ORDER_TYPE_CODE,'
      '  s.REQUEST_BRANCH_CODE,'
      '  s.REQUEST_NO,'
      '  s.REQUEST_LINE_NO'
      ''
      'from'
      '  SALE_SHIPMENTS sh,'
      '  SALES s'
      'where'
      '  (sh.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) and'
      '  (sh.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      
        '  (sh.SHIPMENT_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_C' +
        'ODE) and'
      '  (sh.SHIPMENT_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE)'
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 296
    object qrySaleShipmentCustomIDSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object qrySaleShipmentCustomIDSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object qrySaleShipmentCustomIDSALE_SHIPMENT_NO: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_NO'
    end
    object qrySaleShipmentCustomIDSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object qrySaleShipmentCustomIDSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object qrySaleShipmentCustomIDSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object qrySaleShipmentCustomIDSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 5
    end
    object qrySaleShipmentCustomIDCLIENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMPANY_NAME'
    end
    object qrySaleShipmentCustomIDSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
      Required = True
    end
    object qrySaleShipmentCustomIDREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object qrySaleShipmentCustomIDREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object qrySaleShipmentCustomIDREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
  end
  object prvSaleShipmentCustomID: TDataSetProvider
    DataSet = qrySaleShipmentCustomID
    Left = 552
    Top = 280
  end
  object qryGetProductNodeProp: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE,'
      '  p.MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_COEF,'
      '  mw.MEASURE_ABBREV as MEASURE_ABBREV,'
      '  ma.MEASURE_ABBREV as ACCOUNT_MEASURE_ABBREV'
      'from'
      '  PRODUCTS p,'
      '  MEASURES mw,'
      '  MEASURES ma'
      'where'
      '  (p.MEASURE_CODE = mw.MEASURE_CODE(+)) and'
      '  (p.ACCOUNT_MEASURE_CODE = ma.MEASURE_CODE(+)) and'
      '  (p.PRODUCT_CODE = :PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 400
    object qryGetProductNodePropPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryGetProductNodePropMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryGetProductNodePropACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object qryGetProductNodePropMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryGetProductNodePropACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
  end
  object qryStoreIdentifier: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as S' +
        'TORE_IDENTIFIER'
      'from'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      'where'
      '  (d.DEPT_CODE = :STORE_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 400
    object qryStoreIdentifierSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 45
    end
  end
  object qryPlannedStoreDealTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  PLANNED_STORE_DEAL_TYPES')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 320
    Top = 288
    object qryPlannedStoreDealTypesPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_TYPE_CODE'
      FieldValueType = fvtInteger
    end
    object qryPlannedStoreDealTypesPLANNED_STORE_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'PLANNED_STORE_DEAL_TYPE_NAME'
      Size = 100
    end
    object qryPlannedStoreDealTypesPLANNED_STORE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PLANNED_STORE_DEAL_TYPE_ABBREV'
      Size = 100
    end
  end
  object prvPlannedStoreDealTypes: TDataSetProvider
    DataSet = qryPlannedStoreDealTypes
    Left = 320
    Top = 272
  end
  object qryCountNotAnnuledSDForPSD: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      '  Count(STORE_DEAL_OBJECT_BRANCH_CODE) as COUNT_STORE_DEALS'
      'from'
      '  STORE_DEALS'
      'where'
      
        '  (PLANNED_STORE_DEAL_BRANCH_CODE = :PLANNED_STORE_DEAL_BRANCH_C' +
        'ODE) and'
      '  (PLANNED_STORE_DEAL_CODE = :PLANNED_STORE_DEAL_CODE) and'
      '  (STORNO_EMPLOYEE_CODE is null)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 344
    Top = 40
    object qryCountNotAnnuledSDForPSDCOUNT_STORE_DEALS: TAbmesFloatField
      FieldName = 'COUNT_STORE_DEALS'
    end
  end
  object qryNewPlannedStoreDealCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_PLANNED_STORE_DEALS.NextVal as NEW_PLANNED_STORE_DEAL_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 232
    Top = 408
    object qryNewPlannedStoreDealCodeNEW_PLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'NEW_PLANNED_STORE_DEAL_CODE'
    end
  end
  object qryDeficitCoverDecisionCustomID: TAbmesSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'select'
      '  dcd.DCD_OBJECT_BRANCH_CODE,'
      '  dcd.DCD_OBJECT_CODE,'
      '  dcd.DCD_BRANCH_CODE,'
      '  dcd.DCD_CODE,'
      '  ( select'
      '      bdt.BORDER_DEAL_TYPE_ABBREV'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE)'
      '  ) as DELIVERY_DEAL_TYPE_ABBREV'
      'from'
      '  DEFICIT_COVER_DECISIONS dcd'
      'where'
      
        '  (dcd.DCD_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (dcd.DCD_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 688
    Top = 360
    object qryDeficitCoverDecisionCustomIDDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
    end
    object qryDeficitCoverDecisionCustomIDDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
    end
    object qryDeficitCoverDecisionCustomIDDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object qryDeficitCoverDecisionCustomIDDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object qryDeficitCoverDecisionCustomIDDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DEAL_TYPE_ABBREV'
      Size = 100
    end
  end
  object prvDeficitCoverDecisionCustomID: TDataSetProvider
    DataSet = qryDeficitCoverDecisionCustomID
    Left = 688
    Top = 344
  end
  object prvDeficitCoverDecisionID: TDataSetProvider
    DataSet = qryDeficitCoverDecisionID
    Left = 688
    Top = 280
  end
  object qryDeficitCoverDecisionID: TAbmesSQLQuery
    MaxBlobSize = -1
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
      end>
    SQL.Strings = (
      'select'
      '  DCD_OBJECT_BRANCH_CODE as PROCESS_OBJECT_BRANCH_CODE,'
      '  DCD_OBJECT_CODE as PROCESS_OBJECT_CODE'
      'from'
      '  DEFICIT_COVER_DECISIONS'
      'where'
      '  (DCD_BRANCH_CODE = :DCD_BRANCH_CODE) and'
      '  (DCD_CODE = :DCD_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 688
    Top = 296
    object qryDeficitCoverDecisionIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryDeficitCoverDecisionIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
  end
  object qryUpdSDTempStorno: TAbmesSQLQuery
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
        Name = 'STORE_DEAL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  update'
      '    STORE_DEALS_FOR_EDIT sd'
      '  set'
      '    sd.STORNO_EMPLOYEE_CODE = LoginContext.UserCode,'
      
        '    sd.STORNO_DATE = ContextDate + 1,  -- dobaviame edno, za da ' +
        'ne revne indexa idxSD__DEAL_NO pri stornirane bez ostavane na ek' +
        'ran, shtom e vremenno i shte triem sd-to, ne ni puka za datata i' +
        ' chasa'
      '    sd.STORNO_TIME = ContextTime'
      '  where'
      
        '    (sd.STORE_DEAL_OBJECT_BRANCH_CODE = :STORE_DEAL_OBJECT_BRANC' +
        'H_CODE) and'
      '    (sd.STORE_DEAL_OBJECT_CODE = :STORE_DEAL_OBJECT_CODE);'
      ''
      ''
      '  update'
      '    OPERATION_MOVEMENTS_FOR_EDIT om'
      '  set'
      '    om.STORNO_EMPLOYEE_CODE = LoginContext.UserCode,'
      
        '    om.STORNO_DATE = ContextDate,  -- tuk obache dvijenieto tria' +
        'bva da si e navreme stornirano'
      '    om.STORNO_TIME = ContextTime'
      '  where'
      
        '    (om.STORE_DEAL_OBJECT_BRANCH_CODE = :STORE_DEAL_OBJECT_BRANC' +
        'H_CODE) and'
      '    (om.STORE_DEAL_OBJECT_CODE = :STORE_DEAL_OBJECT_CODE);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 280
  end
  object qryGetBoundProcessIdentificationForStoreDeal: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'PROFORM_ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'PROFORM_ABBREV'
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
      'select'
      '  Cast('
      '    case'
      '    when sd.BND_PROCESS_CODE = 10 /*PESN*/ then'
      '      ( select'
      
        '          (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETT' +
        'ER)'
      '        from'
      '          DEPTS d,'
      '          DEPT_TYPES dt'
      '        where'
      '          (d.DEPT_CODE = sd.DEPT_CODE) and'
      '          (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '      )'
      '    else'
      '    case'
      '    when sd.BND_PROCESS_CODE = 41 /*Simple Delivery*/ then'
      
        '      (c.SHORT_NAME || '#39' / '#39' || sd.INVOICE_NO || sd.INVOICE_ABBR' +
        'EV || '#39' / '#39' ||'
      '        To_Char(sd.INVOICE_DATE, '#39'dd.mm.yyyy'#39') ||'
      
        '        Decode(sd.IS_PROFORM_INVOICE, 1, '#39' '#39' || :PROFORM_ABBREV,' +
        ' '#39#39')'
      '      )'
      '    else'
      '    case'
      '    when sd.BND_PROCESS_CODE = 40 /*Delivery*/ then'
      '      ( po.PROCESS_OBJECT_IDENTIFIER || '#39' / '#39' ||'
      
        '        c2.SHORT_NAME || '#39' / '#39' || dc.INVOICE_NO || dc.INVOICE_AB' +
        'BREV || '#39' / '#39' ||'
      '        To_Char(dc.INVOICE_DATE, '#39'dd.mm.yyyy'#39') ||'
      
        '        Decode(dc.IS_PROFORM_INVOICE, 1, '#39' '#39' || :PROFORM_ABBREV,' +
        ' '#39#39')'
      '      )'
      '    else'
      '    case'
      '    when sd.BND_PROCESS_CODE = 110 /*NK*/ then'
      
        '      (poc.PROCESS_OBJECT_CLASS_ABBREV || '#39': '#39' || po.PROCESS_OBJ' +
        'ECT_IDENTIFIER)'
      '    else'
      '    case'
      '    when (sd.BND_PROCESS_CODE = 61) /*OP-RM*/ then'
      '      ( select'
      '          pot.PRODUCTION_ORDER_TYPE_ABBREV ||'
      '          '#39'/'#39' ||'
      '          po.PROCESS_OBJECT_IDENTIFIER ||'
      
        '          '#39' ('#39' || (mldt.DEPT_TYPE_ABBREV || mld.CUSTOM_CODE || m' +
        'ld.SUFFIX_LETTER) || '#39')'#39' ||'
      '          %ROOT_SALE_PRODUCT_IF_FOR_PROJECT[s]'
      '        from'
      '          SALES s,'
      '          PRODUCTION_ORDER_TYPES pot'
      '        where'
      
        '          (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE) and'
      '          (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and'
      ''
      
        '          (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_T' +
        'YPE_CODE)'
      '      )'
      '    else'
      '    case'
      
        '    when sd.BND_PROCESS_CODE in (90, 100, 130, 140, 150) /*Work ' +
        'process*/ then'
      '      (d.CUSTOM_CODE || dt.DEPT_TYPE_ABBREV)'
      '    else'
      '    case'
      
        '    when sd.BND_PROCESS_CODE in (60, 180, 91) then  -- Final OPW' +
        ', bMO OPW, Blok OPW'
      '      ( select'
      '          pot.PRODUCTION_ORDER_TYPE_ABBREV ||'
      '          '#39' / '#39' ||'
      '          po.PROCESS_OBJECT_IDENTIFIER ||'
      '          %ROOT_SALE_PRODUCT_IF_FOR_PROJECT[s]'
      '        from'
      '          SALES s,'
      '          PRODUCTION_ORDER_TYPES pot'
      '        where'
      
        '          (s.SALE_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE) and'
      '          (s.SALE_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      ''
      
        '          (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_T' +
        'YPE_CODE)'
      '      )'
      '    else'
      '    case'
      '    when (sd.BND_PROCESS_CODE = 62) then  -- KOpC'
      '      ( select'
      '          pot.PRODUCTION_ORDER_TYPE_ABBREV ||'
      '          '#39'/'#39' ||'
      '          po.PROCESS_OBJECT_IDENTIFIER ||'
      '          %ROOT_SALE_PRODUCT_IF_FOR_PROJECT[s]'
      '        from'
      '          MLMS_OPERATIONS mlmso,'
      '          ML_MODEL_STAGES mlms,'
      '          MATERIAL_LIST_LINES mll,'
      '          MATERIAL_LISTS ml,'
      '          SALES s,'
      '          PRODUCTION_ORDER_TYPES pot'
      '        where'
      
        '          (mlmso.MLMSO_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '          (mlmso.MLMSO_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE)' +
        ' and'
      ''
      
        '          (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRAN' +
        'CH_CODE) and'
      '          (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      ''
      
        '          (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_C' +
        'ODE) and'
      '          (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '          (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE)' +
        ' and'
      '          (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '          (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRA' +
        'NCH_CODE) and'
      '          (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '          (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_T' +
        'YPE_CODE)'
      '      )'
      '    else'
      '    case'
      '    when (sd.BND_PROCESS_CODE = 190) then  -- OLBS'
      '      ( select'
      '          boc.BUDGET_ORDER_CLASS_ABBREV || '#39' / '#39' ||'
      '          b.CUSTOM_CODE || '#39' / '#39' ||'
      '          boio.BUDGET_ORDER_CODE || '#39' / '#39' ||'
      '          boio.BUDGET_ORDER_ITEM_CODE  || '#39' / '#39' ||'
      '          boit.BUDGET_ORDER_ITEM_TYPE_ABBREV || '#39' / '#39' ||'
      '          boio.BOI_ORDER_CODE ||'
      
        '          '#39' ('#39' || %DEPT_IDENTIFIER[boio.CONSUMER_DEPT_CODE] || '#39 +
        ')'#39' ||'
      
        '          Nvl2(p.CUSTOM_CODE, '#39' ('#39' || p.CUSTOM_CODE || '#39' '#39' || p.' +
        'NAME || '#39')'#39', null)'
      ''
      '        from'
      '          BOI_ORDERS boio,'
      '          BRANCHES b,'
      '          BUDGET_ORDER_ITEMS boi,'
      '          BUDGET_ORDER_ITEM_TYPES boit,'
      '          BUDGET_ORDERS bo,'
      '          PRODUCTS p,'
      '          BUDGET_ORDER_CLASSES boc'
      '        where'
      
        '          (boio.BOI_ORDER_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OB' +
        'JECT_BRANCH_CODE) and'
      
        '          (boio.BOI_ORDER_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CO' +
        'DE) and'
      ''
      '          (boio.BUDGET_ORDER_BRANCH_CODE = b.BRANCH_CODE) and'
      ''
      
        '          (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRAN' +
        'CH_CODE) and'
      '          (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '          (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM_C' +
        'ODE) and'
      ''
      
        '          (boi.BUDGET_ORDER_ITEM_TYPE_CODE = boit.BUDGET_ORDER_I' +
        'TEM_TYPE_CODE) and'
      ''
      
        '          (boi.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRANCH' +
        '_CODE) and'
      '          (boi.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE) and'
      ''
      '          (bo.PRODUCT_CODE = p.PRODUCT_CODE(+)) and'
      ''
      
        '          (bo.BUDGET_ORDER_CLASS_CODE = boc.BUDGET_ORDER_CLASS_C' +
        'ODE)'
      '      )'
      '    else'
      '      (po.PROCESS_OBJECT_IDENTIFIER)'
      '    end'
      '    end'
      '    end'
      '    end'
      '    end'
      '    end'
      '    end'
      '    end'
      '    end'
      '  as Varchar2(200 char)) as BND_PROCESS_IDENTIFICATION'
      'from'
      '  COMMON_OPTIONS co,'
      '  STORE_DEALS sd,'
      '  PROCESS_OBJECTS po,'
      '  PROCESS_OBJECT_CLASSES poc,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  COMPANIES c,'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml,'
      '  DEPTS mld,'
      '  DEPT_TYPES mldt,'
      '  DELIVERY_CONTRACTS dc,'
      '  DELIVERY_PROJECTS dp,'
      '  COMPANIES c2'
      'where'
      '  (co.CODE = 1) and'
      
        '  (sd.BND_PROCESS_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BRANCH_' +
        'CODE(+)) and'
      '  (sd.BND_PROCESS_OBJECT_CODE = po.PROCESS_OBJECT_CODE(+)) and'
      
        '  (po.PROCESS_OBJECT_CLASS_CODE = poc.PROCESS_OBJECT_CLASS_CODE(' +
        '+)) and'
      '  (sd.DEPT_CODE = d.DEPT_CODE(+)) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      
        '  (po.PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE(+)' +
        ') and'
      '  (po.PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE(+)) and'
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE(+)) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE(+)) and'
      '  (ml.MAIN_DEPT_CODE = mld.DEPT_CODE(+)) and'
      '  (mld.DEPT_TYPE_CODE = mldt.DEPT_TYPE_CODE(+)) and'
      '  (sd.VENDOR_COMPANY_CODE = c.COMPANY_CODE(+)) and'
      
        '  (po.PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BRANCH_COD' +
        'E(+)) and'
      '  (po.PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE(+)) and'
      '  (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE(+)) and'
      '  (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE(+)) and'
      '  (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE(+)) and'
      '  (dp.VENDOR_COMPANY_CODE = c2.COMPANY_CODE(+)) and'
      
        '  (:STORE_DEAL_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_' +
        'CODE) and'
      '  (:STORE_DEAL_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE)'
      ' '
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'ROOT_SALE_PRODUCT_IF_FOR_PROJECT[s]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'DEPT_IDENTIFIER[boio.CONSUMER_DEPT_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 72
    Top = 488
    object qryGetBoundProcessIdentificationForStoreDealBND_PROCESS_IDENTIFICATION: TAbmesWideStringField
      FieldName = 'BND_PROCESS_IDENTIFICATION'
      Size = 200
    end
  end
  object qryGetStoreDealTypeAbbrev: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sdt.STORE_DEAL_TYPE_ABBREV'
      'from'
      '  STORE_DEAL_TYPES sdt'
      'where'
      '  (sdt.STORE_DEAL_TYPE_CODE = :STORE_DEAL_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 72
    Top = 536
    object qryGetStoreDealTypeAbbrevSTORE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'STORE_DEAL_TYPE_ABBREV'
      Size = 100
    end
  end
  object qryQuantitiesByStore: TAbmesSQLQuery
    BeforeOpen = qryQuantitiesByStoreBeforeOpen
    AfterClose = qryQuantitiesByStoreAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  '
      '  p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '  '
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC,'
      ''
      '  p.MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      '  '
      '  p.TECH_MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.TECH_MEASURE_CODE)'
      '  ) as TECH_MEASURE_ABBREV,'
      ''
      '  p.ACCOUNT_MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      '  '
      '  x.STORE_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = x.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as STORE_IDENTIFIER,'
      ''
      '  %HAS_DOC_ITEMS[x] as STORE_HAS_DOC,'
      ''
      '  Sum(x.REAL_QUANTITY) as QUANTITY,'
      '  (Sum(x.REAL_QUANTITY) * p.TECH_MEASURE_COEF) as TECH_QUANTITY,'
      '  Sum(x.REAL_ACCOUNT_QUANTITY) as ACCOUNT_QUANTITY,'
      '  Sum(x.REAL_TOTAL_PRICE) as TOTAL_PRICE,'
      ''
      '  ( Sum(x.REAL_QUANTITY) *'
      
        '    %PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[p.PRODUC' +
        'T_CODE ~ :STORE_DEAL_DATE]'
      '  ) as TOTAL_MARKET_PRICE,'
      ''
      
        '  (Sum(x.REAL_QUANTITY) + Sum(x.PLAN_QUANTITY)) as PLAN_QUANTITY' +
        ','
      
        '  ((Sum(x.REAL_QUANTITY) + Sum(x.PLAN_QUANTITY)) * p.TECH_MEASUR' +
        'E_COEF) as PLAN_TECH_QUANTITY,'
      
        '  (Sum(x.REAL_ACCOUNT_QUANTITY) + Sum(x.PLAN_QUANTITY) * p.ACCOU' +
        'NT_MEASURE_COEF) as PLAN_ACCOUNT_QUANTITY,'
      ''
      '  ( Sum(x.REAL_TOTAL_PRICE) +'
      '    ( Decode('
      '        Sum(x.PLAN_QUANTITY),'
      '        0,'
      '        0,'
      
        '        (Sum(x.PLAN_QUANTITY) * %PSD_SINGLE_PRICE_IN_BASE_CURREN' +
        'CY[p.PRODUCT_CODE ~ :STORE_DEAL_DATE])'
      '      )'
      '    )'
      '  ) as PLAN_TOTAL_PRICE,'
      ''
      '  ( ( Sum(x.REAL_QUANTITY) +'
      '      Sum(x.PLAN_QUANTITY)'
      '    ) *'
      
        '    %PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[p.PRODUC' +
        'T_CODE ~ :STORE_DEAL_DATE]'
      '  ) as PLAN_TOTAL_MARKET_PRICE,'
      ''
      
        '  NullIf((Coalesce(Sum(x.REAL_QUANTITY), 0) - Coalesce(x.MIN_QUA' +
        'NTITY, 0)), 0) as QUANTITY_TOWARDS_RSV,'
      
        '  NullIf(((Coalesce(Sum(x.REAL_QUANTITY), 0) - Coalesce(x.MIN_QU' +
        'ANTITY, 0)) * p.TECH_MEASURE_COEF), 0) as TECH_QUANTITY_TOWARDS_' +
        'RSV,'
      
        '  NullIf((Coalesce(Sum(x.REAL_ACCOUNT_QUANTITY), 0) - Coalesce(x' +
        '.MIN_ACCOUNT_QUANTITY, 0)), 0) as ACC_QUANTITY_TOWARDS_RSV,'
      
        '  NullIf((Coalesce(Sum(x.REAL_TOTAL_PRICE), 0) - Coalesce(x.MIN_' +
        'PRICE, 0)), 0) as TOTAL_PRICE_TOWARDS_RSV,'
      ''
      '  NullIf('
      
        '    ( (Coalesce(Sum(x.REAL_QUANTITY), 0) - Coalesce(x.MIN_QUANTI' +
        'TY, 0)) *'
      
        '      %PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[p.PROD' +
        'UCT_CODE ~ :STORE_DEAL_DATE]'
      '    ),'
      '    0'
      '  ) as TOTAL_MARKET_PRICE_TOWARDS_RSV,'
      ''
      
        '  NullIf((Coalesce(Sum(x.REAL_QUANTITY), 0) + Coalesce(Sum(x.PLA' +
        'N_QUANTITY), 0) - Coalesce(x.MIN_QUANTITY, 0)), 0) as P_QUANTITY' +
        '_TOWARDS_RSV,'
      
        '  NullIf(((Coalesce(Sum(x.REAL_QUANTITY), 0) + Coalesce(Sum(x.PL' +
        'AN_QUANTITY), 0) - Coalesce(x.MIN_QUANTITY, 0)) * p.TECH_MEASURE' +
        '_COEF), 0) as P_TECH_QUANTITY_TOWARDS_RSV,'
      
        '  NullIf((Coalesce(Sum(x.REAL_ACCOUNT_QUANTITY), 0) + Coalesce(S' +
        'um(x.PLAN_QUANTITY), 0) * p.ACCOUNT_MEASURE_COEF - Coalesce(x.MI' +
        'N_ACCOUNT_QUANTITY, 0)), 0) as P_ACCOUNT_QUANTITY_TOWARDS_RSV,'
      ''
      '  NullIf('
      '    ( Coalesce(Sum(x.REAL_TOTAL_PRICE), 0) +'
      
        '      (Coalesce(Sum(x.PLAN_QUANTITY) * %PSD_SINGLE_PRICE_IN_BASE' +
        '_CURRENCY[p.PRODUCT_CODE ~ :STORE_DEAL_DATE], 0)) -'
      '      Coalesce(x.MIN_PRICE, 0)'
      '    ),'
      '    0'
      '  ) as P_TOTAL_PRICE_TOWARDS_RSV,'
      ''
      '  NullIf('
      '    ( ( Coalesce(Sum(x.REAL_QUANTITY), 0) +'
      '        Coalesce(Sum(x.PLAN_QUANTITY), 0) -'
      '        Coalesce(x.MIN_QUANTITY, 0)'
      '      ) *'
      
        '      %PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[p.PROD' +
        'UCT_CODE ~ :STORE_DEAL_DATE]'
      '    ),'
      '    0'
      '  ) as P_TOTAL_M_PRICE_TOWARDS_RSV'
      ''
      'from'
      '  PRODUCTS p,'
      '  ( select'
      '      Coalesce(q.PRODUCT_CODE, mq.PRODUCT_CODE) as PRODUCT_CODE,'
      '      Coalesce(q.STORE_CODE, mq.STORE_CODE) as STORE_CODE,'
      ''
      '      q.DOC_BRANCH_CODE,'
      '      q.DOC_CODE,'
      '      q.REAL_QUANTITY,'
      '      q.REAL_ACCOUNT_QUANTITY,'
      '      q.REAL_TOTAL_PRICE,'
      '      q.PLAN_QUANTITY,'
      ''
      '      mq.MIN_QUANTITY,'
      '      mq.MIN_ACCOUNT_QUANTITY,'
      '      mq.MIN_PRICE'
      ''
      '    from'
      '      ( select'
      
        '          /*+ INDEX(asd pkAGGR_STORE_DEALS) LEADING(tfp) USE_NL(' +
        'tfp asd tfd)*/'
      '          asd.PRODUCT_CODE,'
      '          asd.STORE_CODE,'
      ''
      '          ( select'
      '              d.DOC_BRANCH_CODE'
      '            from'
      '              DEPTS d'
      '            where'
      '              (d.DEPT_CODE = asd.STORE_CODE)'
      '          ) as DOC_BRANCH_CODE,'
      ''
      '          ( select'
      '              d.DOC_CODE'
      '            from'
      '              DEPTS d'
      '            where'
      '              (d.DEPT_CODE = asd.STORE_CODE)'
      '          ) as DOC_CODE,'
      ''
      
        '          Sum(asd.REAL_QUANTITY)         keep (dense_rank last o' +
        'rder by asd.STORE_DEAL_DATE) as REAL_QUANTITY,'
      
        '          Sum(asd.REAL_ACCOUNT_QUANTITY) keep (dense_rank last o' +
        'rder by asd.STORE_DEAL_DATE) as REAL_ACCOUNT_QUANTITY,'
      
        '          Sum(asd.REAL_TOTAL_PRICE)      keep (dense_rank last o' +
        'rder by asd.STORE_DEAL_DATE) as REAL_TOTAL_PRICE,'
      
        '          Decode(Sign(ContextDate - Cast(:STORE_DEAL_DATE as Dat' +
        'e)), 1, 0, Sum(asd.PLANNED_QUANTITY) keep (dense_rank last order' +
        ' by asd.STORE_DEAL_DATE)) as PLAN_QUANTITY'
      ''
      '        from'
      '          AGGR_STORE_DEALS asd'
      ''
      '        where'
      '          (asd.STORE_DEAL_DATE <= :STORE_DEAL_DATE) and'
      ''
      '          -- narochno nqma ALL_FILTERED_PRODUCTS'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                TEMP_FILTERED_PRODUCTS tfp'
      '              where'
      '                (asd.PRODUCT_CODE = tfp.PRODUCT_CODE)'
      '            )'
      '          ) and'
      ''
      '          -- narochno nqma ALL_FILTERED_DEPTS'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                TEMP_FILTERED_DEPTS tfd'
      '              where'
      '                (asd.STORE_CODE = tfd.DEPT_CODE)'
      '            )'
      '          )'
      ''
      '        group by'
      '          asd.PRODUCT_CODE,'
      '          asd.STORE_CODE'
      ''
      '        having'
      
        '          (MiscUtils.LargeZero(Sum(asd.REAL_QUANTITY) keep (dens' +
        'e_rank last order by asd.STORE_DEAL_DATE)) <> 0) or'
      
        '          (MiscUtils.LargeZero(Decode(Sign(ContextDate - Cast(:S' +
        'TORE_DEAL_DATE as Date)), 1, 0, Sum(asd.PLANNED_QUANTITY) keep (' +
        'dense_rank last order by asd.STORE_DEAL_DATE))) <> 0)'
      '      ) q'
      ''
      '      full outer join'
      ''
      '      ( select'
      '          ps.PRODUCT_CODE,'
      '          ps.STORE_CODE,'
      '          Coalesce(Sum(ps.MIN_QUANTITY), 0) as MIN_QUANTITY,'
      ''
      '          Coalesce('
      '            Sum('
      '              ps.MIN_QUANTITY *'
      '              ( select'
      '                  p.ACCOUNT_MEASURE_COEF'
      '                from'
      '                  PRODUCTS p'
      '                where'
      '                  (p.PRODUCT_CODE = ps.PRODUCT_CODE)'
      '              )'
      '            ),'
      '            0'
      '          ) as MIN_ACCOUNT_QUANTITY,'
      ''
      '          Coalesce('
      '            Sum('
      '              ps.MIN_QUANTITY *'
      
        '              %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[ps.PRODUCT_CODE' +
        ' ~ :STORE_DEAL_DATE]'
      '            ),'
      '            0'
      '          ) as MIN_PRICE'
      ''
      '        from'
      '          PRODUCT_STORES ps'
      ''
      '        where'
      
        '          (:STORE_DEAL_DATE between ps.BEGIN_DATE and ps.END_DAT' +
        'E) and'
      ''
      '          ( ( select'
      '                p.PRODUCT_CLASS_CODE'
      '              from'
      '                PRODUCTS p'
      '              where'
      '                (p.PRODUCT_CODE = ps.PRODUCT_CODE)'
      '            ) = :PRODUCT_CLASS_CODE'
      '          ) and'
      ''
      '          -- narochno nqma ALL_FILTERED_PRODUCTS'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                TEMP_FILTERED_PRODUCTS tfp'
      '              where'
      '                (ps.PRODUCT_CODE = tfp.PRODUCT_CODE)'
      '            )'
      '          ) and'
      ''
      '          -- narochno nqma ALL_FILTERED_DEPTS'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                TEMP_FILTERED_DEPTS tfd'
      '              where'
      '                (ps.STORE_CODE = tfd.DEPT_CODE)'
      '            )'
      '          )'
      ''
      '        group by'
      '          ps.PRODUCT_CODE,'
      '          ps.STORE_CODE'
      '      ) mq'
      ''
      '      on'
      '        (q.PRODUCT_CODE = mq.PRODUCT_CODE) and'
      '        (q.STORE_CODE = mq.STORE_CODE)'
      '  ) x'
      ''
      'where'
      '  (p.PRODUCT_CODE = x.PRODUCT_CODE) and'
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE)'
      ''
      'group by'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.NAME,'
      '  p.PARTNER_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  p.MEASURE_CODE,'
      '  p.TECH_MEASURE_CODE,'
      '  p.TECH_MEASURE_COEF,'
      '  p.ACCOUNT_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_COEF,'
      '  x.STORE_CODE,'
      '  x.DOC_BRANCH_CODE,'
      '  x.DOC_CODE,'
      '  x.MIN_QUANTITY,'
      '  x.MIN_ACCOUNT_QUANTITY,'
      '  x.MIN_PRICE'
      ''
      'order by'
      '  PRODUCT_NO,'
      '  STORE_IDENTIFIER')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[x]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[p.PRODUCT_COD' +
          'E ~ :STORE_DEAL_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[p.PRODUCT_CODE ~ :STORE_DEAL_D' +
          'ATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 
          'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[ps.PRODUCT_CODE ~ :STORE_DEAL_' +
          'DATE]'
        ParamType = ptInput
        Value = '0'
      end>
    DefaultOrder.Fields = 'PRODUCT_NO;STORE_IDENTIFIER'
    MacroParams = <
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'IS_GROUPED_BY_STORE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_TOWARDS_RESERVE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 240
    Top = 104
    object qryQuantitiesByStorePRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryQuantitiesByStorePRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryQuantitiesByStorePRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryQuantitiesByStorePRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryQuantitiesByStorePRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
    end
    object qryQuantitiesByStoreMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryQuantitiesByStoreMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryQuantitiesByStoreACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryQuantitiesByStoreACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryQuantitiesByStoreSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryQuantitiesByStoreSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 46
    end
    object qryQuantitiesByStoreQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryQuantitiesByStoreACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qryQuantitiesByStoreTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryQuantitiesByStoreTOTAL_MARKET_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_MARKET_PRICE'
    end
    object qryQuantitiesByStorePLAN_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_QUANTITY'
    end
    object qryQuantitiesByStorePLAN_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_ACCOUNT_QUANTITY'
    end
    object qryQuantitiesByStorePLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_PRICE'
    end
    object qryQuantitiesByStorePLAN_TOTAL_MARKET_PRICE: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_MARKET_PRICE'
    end
    object qryQuantitiesByStoreQUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'QUANTITY_TOWARDS_RSV'
    end
    object qryQuantitiesByStoreACC_QUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_TOWARDS_RSV'
    end
    object qryQuantitiesByStoreTOTAL_PRICE_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_TOWARDS_RSV'
    end
    object qryQuantitiesByStoreTOTAL_MARKET_PRICE_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'TOTAL_MARKET_PRICE_TOWARDS_RSV'
    end
    object qryQuantitiesByStoreP_QUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'P_QUANTITY_TOWARDS_RSV'
    end
    object qryQuantitiesByStoreP_ACCOUNT_QUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'P_ACCOUNT_QUANTITY_TOWARDS_RSV'
    end
    object qryQuantitiesByStoreP_TOTAL_PRICE_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'P_TOTAL_PRICE_TOWARDS_RSV'
    end
    object qryQuantitiesByStoreP_TOTAL_M_PRICE_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'P_TOTAL_M_PRICE_TOWARDS_RSV'
    end
    object qryQuantitiesByStoreSTORE_HAS_DOC: TAbmesFloatField
      FieldName = 'STORE_HAS_DOC'
    end
    object qryQuantitiesByStoreTECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TECH_MEASURE_CODE'
    end
    object qryQuantitiesByStoreTECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qryQuantitiesByStoreTECH_QUANTITY: TAbmesFloatField
      FieldName = 'TECH_QUANTITY'
    end
    object qryQuantitiesByStorePLAN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_TECH_QUANTITY'
    end
    object qryQuantitiesByStoreTECH_QUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'TECH_QUANTITY_TOWARDS_RSV'
    end
    object qryQuantitiesByStoreP_TECH_QUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'P_TECH_QUANTITY_TOWARDS_RSV'
    end
  end
  object prvQuantities: TDataSetProvider
    DataSet = qryQuantities
    BeforeGetRecords = prvQuantitiesBeforeGetRecords
    Left = 240
    Top = 200
  end
  object qryQuantities: TAbmesSQLQuery
    BeforeOpen = qryQuantitiesBeforeOpen
    AfterClose = qryQuantitiesAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      ''
      '  p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      ''
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC,'
      ''
      '  p.MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  p.TECH_MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.TECH_MEASURE_CODE)'
      '  ) as TECH_MEASURE_ABBREV,'
      ''
      '  p.ACCOUNT_MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      ''
      '  To_Number(null) as STORE_CODE,'
      '  Cast(null as Varchar2(100 char)) as STORE_IDENTIFIER,'
      '  To_Number(null) as STORE_HAS_DOC,'
      ''
      '  Sum(q.REAL_QUANTITY) as QUANTITY,'
      '  (Sum(q.REAL_QUANTITY) * p.TECH_MEASURE_COEF) as TECH_QUANTITY,'
      '  Sum(q.REAL_ACCOUNT_QUANTITY) as ACCOUNT_QUANTITY,'
      '  Sum(q.REAL_TOTAL_PRICE) as TOTAL_PRICE,'
      ''
      '  ( Sum(q.REAL_QUANTITY) *'
      
        '    %PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[p.PRODUC' +
        'T_CODE ~ :STORE_DEAL_DATE]'
      '  ) as TOTAL_MARKET_PRICE,'
      ''
      
        '  (Sum(q.REAL_QUANTITY) + Sum(q.PLAN_QUANTITY)) as PLAN_QUANTITY' +
        ','
      
        '  ((Sum(q.REAL_QUANTITY) + Sum(q.PLAN_QUANTITY)) * p.TECH_MEASUR' +
        'E_COEF) as PLAN_TECH_QUANTITY,'
      
        '  (Sum(q.REAL_ACCOUNT_QUANTITY) + Sum(q.PLAN_QUANTITY) * p.ACCOU' +
        'NT_MEASURE_COEF) as PLAN_ACCOUNT_QUANTITY,'
      ''
      '  ( Sum(q.REAL_TOTAL_PRICE) +'
      '    ( Decode('
      '        Sum(q.PLAN_QUANTITY),'
      '        0,'
      '        0,'
      
        '        (Sum(q.PLAN_QUANTITY) * %PSD_SINGLE_PRICE_IN_BASE_CURREN' +
        'CY[p.PRODUCT_CODE ~ :STORE_DEAL_DATE])'
      '      )'
      '    )'
      '  ) as PLAN_TOTAL_PRICE,'
      ''
      '  ( ( Sum(q.REAL_QUANTITY) +'
      '      Sum(q.PLAN_QUANTITY)'
      '    ) *'
      
        '    %PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[p.PRODUC' +
        'T_CODE ~ :STORE_DEAL_DATE]'
      '  ) as PLAN_TOTAL_MARKET_PRICE,'
      ''
      
        '  Sum(q.REAL_QUANTITY) - Coalesce(mq.MIN_QUANTITY, 0) as QUANTIT' +
        'Y_TOWARDS_RSV,'
      
        '  ((Sum(q.REAL_QUANTITY) - Coalesce(mq.MIN_QUANTITY, 0)) * p.TEC' +
        'H_MEASURE_COEF) as TECH_QUANTITY_TOWARDS_RSV,'
      
        '  Sum(q.REAL_ACCOUNT_QUANTITY) - Coalesce(mq.MIN_ACCOUNT_QUANTIT' +
        'Y, 0) as ACC_QUANTITY_TOWARDS_RSV,'
      
        '  Sum(q.REAL_TOTAL_PRICE) - Coalesce(mq.MIN_PRICE, 0) as TOTAL_P' +
        'RICE_TOWARDS_RSV,'
      ''
      '  ( (Sum(q.REAL_QUANTITY) - Coalesce(mq.MIN_QUANTITY, 0)) *'
      
        '    %PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[p.PRODUC' +
        'T_CODE ~ :STORE_DEAL_DATE]'
      '  ) as TOTAL_MARKET_PRICE_TOWARDS_RSV,'
      ''
      
        '  (Sum(q.REAL_QUANTITY) + Sum(q.PLAN_QUANTITY) - Coalesce(mq.MIN' +
        '_QUANTITY, 0)) as P_QUANTITY_TOWARDS_RSV,'
      
        '  ((Sum(q.REAL_QUANTITY) + Sum(q.PLAN_QUANTITY) - Coalesce(mq.MI' +
        'N_QUANTITY, 0))  * p.TECH_MEASURE_COEF) as P_TECH_QUANTITY_TOWAR' +
        'DS_RSV,'
      
        '  (Sum(q.REAL_ACCOUNT_QUANTITY) + Sum(q.PLAN_QUANTITY) * p.ACCOU' +
        'NT_MEASURE_COEF - Coalesce(mq.MIN_ACCOUNT_QUANTITY, 0)) as P_ACC' +
        'OUNT_QUANTITY_TOWARDS_RSV,'
      ''
      '  ( Sum(q.REAL_TOTAL_PRICE) +'
      '    ( Decode('
      '        Sum(q.PLAN_QUANTITY),'
      '        0,'
      '        0,'
      
        '        (Sum(q.PLAN_QUANTITY) * %PSD_SINGLE_PRICE_IN_BASE_CURREN' +
        'CY[p.PRODUCT_CODE ~ :STORE_DEAL_DATE])'
      '      )'
      '    ) -'
      '    Coalesce(mq.MIN_PRICE, 0)'
      '  ) as P_TOTAL_PRICE_TOWARDS_RSV,'
      ''
      '  ( ( Sum(q.REAL_QUANTITY) +'
      '      Sum(q.PLAN_QUANTITY) -'
      '      Coalesce(mq.MIN_QUANTITY, 0)'
      '    ) *'
      
        '    %PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[p.PRODUC' +
        'T_CODE ~ :STORE_DEAL_DATE]'
      '  ) as P_TOTAL_M_PRICE_TOWARDS_RSV'
      ''
      'from'
      
        '  -- ako se dobavi ALL_FILTERED_PRODUCTS - da se turi filtyr po ' +
        'PRODUCT_CLASS_CODE'
      '  PRODUCTS p,'
      '  ( select'
      
        '      /*+ INDEX(asd pkAGGR_STORE_DEALS) LEADING(tfp) USE_NL(tfp ' +
        'asd tfd)*/'
      '      asd.PRODUCT_CODE,'
      '      asd.STORE_CODE,'
      
        '      Sum(asd.REAL_QUANTITY)         keep (dense_rank last order' +
        ' by asd.STORE_DEAL_DATE) as REAL_QUANTITY,'
      
        '      Sum(asd.REAL_ACCOUNT_QUANTITY) keep (dense_rank last order' +
        ' by asd.STORE_DEAL_DATE) as REAL_ACCOUNT_QUANTITY,'
      
        '      Sum(asd.REAL_TOTAL_PRICE)      keep (dense_rank last order' +
        ' by asd.STORE_DEAL_DATE) as REAL_TOTAL_PRICE,'
      
        '      Decode(Sign(ContextDate - Cast(:STORE_DEAL_DATE as Date)),' +
        ' 1, 0, Sum(asd.PLANNED_QUANTITY) keep (dense_rank last order by ' +
        'asd.STORE_DEAL_DATE)) as PLAN_QUANTITY'
      ''
      '    from'
      '      AGGR_STORE_DEALS asd'
      '      '
      '    where'
      '      (asd.STORE_DEAL_DATE <= :STORE_DEAL_DATE) and'
      ''
      '      -- narochno nqma ALL_FILTERED_PRODUCTS'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            TEMP_FILTERED_PRODUCTS tfp'
      '          where'
      '            (asd.PRODUCT_CODE = tfp.PRODUCT_CODE)'
      '        )'
      '      ) and'
      ''
      '      -- narochno nqma ALL_FILTERED_DEPTS'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            TEMP_FILTERED_DEPTS tfd'
      '          where'
      '            (asd.STORE_CODE = tfd.DEPT_CODE)'
      '        )'
      '      )'
      '      '
      '    group by'
      '      asd.PRODUCT_CODE,'
      '      asd.STORE_CODE'
      ''
      '    having'
      
        '      (MiscUtils.LargeZero(Sum(asd.REAL_QUANTITY) keep (dense_ra' +
        'nk last order by asd.STORE_DEAL_DATE)) <> 0) or'
      
        '      (MiscUtils.LargeZero(Decode(Sign(ContextDate - Cast(:STORE' +
        '_DEAL_DATE as Date)), 1, 0, Sum(asd.PLANNED_QUANTITY) keep (dens' +
        'e_rank last order by asd.STORE_DEAL_DATE))) <> 0)'
      '  ) q,'
      '  ( select'
      '      ps.PRODUCT_CODE,'
      '      Coalesce(Sum(ps.MIN_QUANTITY), 0) as MIN_QUANTITY,'
      ''
      '      Coalesce('
      '        Sum('
      '          ps.MIN_QUANTITY *'
      '          ( select'
      '              p.ACCOUNT_MEASURE_COEF'
      '            from'
      '              PRODUCTS p'
      '            where'
      '              (p.PRODUCT_CODE = ps.PRODUCT_CODE)'
      '          )'
      '        ),'
      '        0'
      '      ) as MIN_ACCOUNT_QUANTITY,'
      ''
      '      Coalesce('
      '        Sum('
      '          ps.MIN_QUANTITY *'
      
        '          %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[ps.PRODUCT_CODE ~ :' +
        'STORE_DEAL_DATE]'
      '        ),'
      '        0'
      '      ) as MIN_PRICE'
      ''
      '    from'
      '      PRODUCT_STORES ps'
      ''
      '    where'
      
        '      (:STORE_DEAL_DATE between ps.BEGIN_DATE and ps.END_DATE) a' +
        'nd'
      ''
      '      ( ( select'
      '            p.PRODUCT_CLASS_CODE'
      '          from'
      '            PRODUCTS p'
      '          where'
      '            (p.PRODUCT_CODE = ps.PRODUCT_CODE)'
      '        ) = :PRODUCT_CLASS_CODE'
      '      ) and'
      ''
      '      -- narochno nqma ALL_FILTERED_DEPTS'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            TEMP_FILTERED_DEPTS tfd'
      '          where'
      '            (ps.STORE_CODE = tfd.DEPT_CODE)'
      '        )'
      '      )'
      ''
      '    group by'
      '      ps.PRODUCT_CODE'
      '  ) mq'
      ''
      'where'
      '  (p.PRODUCT_CODE = q.PRODUCT_CODE) and'
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      '  (p.PRODUCT_CODE = mq.PRODUCT_CODE(+))'
      ''
      'group by'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.NAME,'
      '  p.PARTNER_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  p.MEASURE_CODE,'
      '  p.TECH_MEASURE_CODE,'
      '  p.TECH_MEASURE_COEF,'
      '  p.ACCOUNT_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_COEF,'
      '  mq.MIN_QUANTITY,'
      '  mq.MIN_ACCOUNT_QUANTITY,'
      '  mq.MIN_PRICE'
      ''
      'order by'
      '  PRODUCT_NO,'
      '  STORE_IDENTIFIER')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[p.PRODUCT_COD' +
          'E ~ :STORE_DEAL_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[p.PRODUCT_CODE ~ :STORE_DEAL_D' +
          'ATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 
          'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[ps.PRODUCT_CODE ~ :STORE_DEAL_' +
          'DATE]'
        ParamType = ptInput
        Value = '0'
      end>
    DefaultOrder.Fields = 'PRODUCT_NO;STORE_IDENTIFIER'
    MacroParams = <
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'IS_GROUPED_BY_STORE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_TOWARDS_RESERVE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 240
    Top = 152
    object qryQuantitiesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryQuantitiesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryQuantitiesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryQuantitiesPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryQuantitiesPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
    end
    object qryQuantitiesMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryQuantitiesMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryQuantitiesACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryQuantitiesACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryQuantitiesSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryQuantitiesSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 100
    end
    object qryQuantitiesQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryQuantitiesACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qryQuantitiesTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryQuantitiesTOTAL_MARKET_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_MARKET_PRICE'
    end
    object qryQuantitiesPLAN_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_QUANTITY'
    end
    object qryQuantitiesPLAN_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_ACCOUNT_QUANTITY'
    end
    object qryQuantitiesPLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_PRICE'
    end
    object qryQuantitiesPLAN_TOTAL_MARKET_PRICE: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_MARKET_PRICE'
    end
    object qryQuantitiesQUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'QUANTITY_TOWARDS_RSV'
    end
    object qryQuantitiesACC_QUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_TOWARDS_RSV'
    end
    object qryQuantitiesTOTAL_PRICE_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_TOWARDS_RSV'
    end
    object qryQuantitiesTOTAL_MARKET_PRICE_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'TOTAL_MARKET_PRICE_TOWARDS_RSV'
    end
    object qryQuantitiesP_QUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'P_QUANTITY_TOWARDS_RSV'
    end
    object qryQuantitiesP_ACCOUNT_QUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'P_ACCOUNT_QUANTITY_TOWARDS_RSV'
    end
    object qryQuantitiesP_TOTAL_PRICE_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'P_TOTAL_PRICE_TOWARDS_RSV'
    end
    object qryQuantitiesP_TOTAL_M_PRICE_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'P_TOTAL_M_PRICE_TOWARDS_RSV'
    end
    object qryQuantitiesSTORE_HAS_DOC: TAbmesFloatField
      FieldName = 'STORE_HAS_DOC'
    end
    object qryQuantitiesTECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TECH_MEASURE_CODE'
    end
    object qryQuantitiesTECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qryQuantitiesTECH_QUANTITY: TAbmesFloatField
      FieldName = 'TECH_QUANTITY'
    end
    object qryQuantitiesPLAN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_TECH_QUANTITY'
    end
    object qryQuantitiesTECH_QUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'TECH_QUANTITY_TOWARDS_RSV'
    end
    object qryQuantitiesP_TECH_QUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'P_TECH_QUANTITY_TOWARDS_RSV'
    end
  end
  object qryMLMSOperationID: TAbmesSQLQuery
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
      end
      item
        DataType = ftWideString
        Name = 'NO_AS_TEXT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FORK_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MAIN_DEPT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MAIN_DEPT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_MODEL_STAGE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OPERATION_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OPERATION_VARIANT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mlmso.MLMSO_OBJECT_BRANCH_CODE as PROCESS_OBJECT_BRANCH_CODE,'
      '  mlmso.MLMSO_OBJECT_CODE as PROCESS_OBJECT_CODE'
      ''
      'from'
      '  MLMS_OPERATIONS mlmso,'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml,'
      '  SALES s'
      ''
      'where'
      '  (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      
        '  (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and'
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '  (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '  '
      '  (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE) and'
      '  (s.SALE_NO = :SALE_NO) and'
      '  (mll.NO_AS_TEXT = :NO_AS_TEXT) and'
      '  (mll.FORK_NO = :FORK_NO) and'
      '  ( (:MAIN_DEPT_NAME is null) or'
      '    (:MAIN_DEPT_NAME is not null) ) and'
      '  (mlms.ML_MODEL_STAGE_NO = :ML_MODEL_STAGE_NO) and'
      '  (mlmso.MLMS_OPERATION_NO = :MLMS_OPERATION_NO) and'
      '  (mlmso.MLMS_OPERATION_VARIANT_NO = :MLMS_OPERATION_VARIANT_NO)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 688
    Top = 24
    object qryMLMSOperationIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryMLMSOperationIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
  end
  object prvMLMSOperationID: TDataSetProvider
    DataSet = qryMLMSOperationID
    Left = 688
    Top = 8
  end
  object qryMLMSOperationCustomID: TAbmesSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'select'
      '  s.SALE_BRANCH_CODE,'
      '  s.SALE_NO,'
      '  ( select'
      '      dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (ml.MAIN_DEPT_CODE = d.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as MAIN_DEPT_NAME,'
      '  mll.NO_AS_TEXT,'
      '  mll.FORK_NO,'
      '  mll.ANNUL_EMPLOYEE_CODE,'
      '  mlms.ML_MODEL_STAGE_NO,'
      '  mlmso.MLMS_OPERATION_NO,'
      '  mlmso.MLMS_OPERATION_VARIANT_NO,'
      '  ( select'
      '      st.SALE_TYPE_ABBREV'
      '    from'
      '      SALE_TYPES st'
      '    where'
      '      (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '  ) as SALE_TYPE_ABBREV,'
      '  ( select'
      '      pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '    from'
      '      PRODUCTION_ORDER_TYPES pot'
      '    where'
      
        '      (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER_TYPE_' +
        'CODE)'
      '  ) as PRODUCTION_ORDER_TYPE_ABBREV,'
      
        '  Nvl2(s.WASTING_SALE_OBJ_BRANCH_CODE, 1, 0) as IS_WASTE_COMPENS' +
        'ATOR,'
      '  mll.IS_WASTE_FORK,'
      ''
      '  mlmso.MLMS_OBJECT_BRANCH_CODE,'
      '  mlmso.MLMS_OBJECT_CODE,'
      '  mll.ML_OBJECT_BRANCH_CODE,'
      '  mll.ML_OBJECT_CODE,'
      '  mll.MLL_OBJECT_BRANCH_CODE,'
      '  mll.MLL_OBJECT_CODE,'
      ''
      
        '  -- na naslednika (MLMSO) ne mu trqbwa towa pole, zatowa e null' +
        ','
      
        '  -- no go ima w cds-to ot ancestor-a (MLL), zatowa go selectwam' +
        'e'
      '  To_Number(null) as PROJECT_PRODUCT_CODE'
      ''
      'from'
      '  MLMS_OPERATIONS mlmso,'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml,'
      '  SALES s'
      ''
      'where'
      
        '  (mlmso.MLMSO_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_C' +
        'ODE) and'
      '  (mlmso.MLMSO_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE) and'
      ''
      
        '  (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and'
      ''
      '  (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      ''
      '  (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and'
      '  (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      ''
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '  (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 688
    Top = 88
    object qryMLMSOperationCustomIDSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object qryMLMSOperationCustomIDSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object qryMLMSOperationCustomIDMAIN_DEPT_NAME: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_NAME'
      Size = 46
    end
    object qryMLMSOperationCustomIDNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qryMLMSOperationCustomIDFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object qryMLMSOperationCustomIDANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryMLMSOperationCustomIDML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
    object qryMLMSOperationCustomIDMLMS_OPERATION_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_NO'
    end
    object qryMLMSOperationCustomIDMLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_VARIANT_NO'
    end
    object qryMLMSOperationCustomIDSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 5
    end
    object qryMLMSOperationCustomIDPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object qryMLMSOperationCustomIDIS_WASTE_COMPENSATOR: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATOR'
    end
    object qryMLMSOperationCustomIDML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object qryMLMSOperationCustomIDML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object qryMLMSOperationCustomIDMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryMLMSOperationCustomIDMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object qryMLMSOperationCustomIDMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
    end
    object qryMLMSOperationCustomIDMLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_CODE'
    end
    object qryMLMSOperationCustomIDIS_WASTE_FORK: TAbmesFloatField
      FieldName = 'IS_WASTE_FORK'
    end
    object qryMLMSOperationCustomIDPROJECT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROJECT_PRODUCT_CODE'
    end
  end
  object prvMLMSOperationCustomID: TDataSetProvider
    DataSet = qryMLMSOperationCustomID
    Left = 688
    Top = 72
  end
  object qryGetStoreIdentifier: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as S' +
        'TORE_IDENTIFIER'
      'from'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      'where'
      '  (d.DEPT_CODE = :STORE_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 456
    object qryGetStoreIdentifierSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 45
    end
  end
  object qryIsStoreComputerized: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  s.IS_COMPUTERIZED'
      'from'
      '  STORES s'
      'where'
      '  (s.STORE_CODE = :STORE_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 608
    Top = 496
    object qryIsStoreComputerizedIS_COMPUTERIZED: TAbmesFloatField
      FieldName = 'IS_COMPUTERIZED'
      FieldValueType = fvtBoolean
    end
  end
  object qryGetModelProductAndSinglePrice: TAbmesSQLQuery
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
      '  Coalesce(mll.DETAIL_CODE, s.PRODUCT_CODE) as PRODUCT_CODE,'
      '  ( ( ModelUtils.GetMllRealSinglePrice('
      '        mll.MLL_OBJECT_BRANCH_CODE,'
      '        mll.MLL_OBJECT_CODE'
      '      ) *'
      '      p.TECH_MEASURE_COEF'
      '    ) /'
      '    p.ACCOUNT_MEASURE_COEF'
      '  ) as ACCOUNT_SINGLE_PRICE,'
      ''
      '  ( select'
      
        '      Max(mlmso.DEPT_CODE) keep (dense_rank last order by mlms.M' +
        'L_MODEL_STAGE_NO, mlmso.MLMS_OPERATION_NO, mlmso.MLMS_OPERATION_' +
        'VARIANT_NO desc)'
      '    from'
      '      ML_MODEL_STAGES mlms,'
      '      MLMS_OPERATIONS mlmso'
      '    where'
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mlms.OUTGOING_WORKDAYS > 0) and'
      ''
      
        '      (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_C' +
        'ODE) and'
      '      (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '      (mlmso.IS_ACTIVE = 1) and'
      '      (mlmso.MLMS_OPERATION_VARIANT_NO >= 0)'
      '  ) as LAST_DEPT_CODE'
      ''
      'from'
      '  SALES s,'
      '  MATERIAL_LISTS ml,'
      '  MATERIAL_LIST_LINES mll,'
      '  PRODUCTS p'
      'where'
      '  (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '  (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE(+) = s.SALE_OBJECT_BRANCH_C' +
        'ODE) and'
      '  (ml.BND_PROCESS_OBJECT_CODE(+) = s.SALE_OBJECT_CODE) and'
      '  (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE(+)) and'
      '  (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE(+)) and'
      '  (p.PRODUCT_CODE(+) = mll.DETAIL_CODE) and'
      '  (mll.PARENT_MLL_OBJECT_BRANCH_CODE(+) is null)'
      ''
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 224
    Top = 464
    object qryGetModelProductAndSinglePricePRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryGetModelProductAndSinglePriceACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
    end
    object qryGetModelProductAndSinglePriceLAST_DEPT_CODE: TAbmesFloatField
      FieldName = 'LAST_DEPT_CODE'
    end
  end
  object qryGetStoreDealOutData: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      '  sd.PRODUCT_CODE,'
      '  (sd.TOTAL_PRICE / sd.ACCOUNT_QUANTITY) as SINGLE_PRICE,'
      '  sd.CURRENCY_CODE'
      'from'
      '  STORE_DEALS sd'
      'where'
      
        '  (sd.STORE_DEAL_OBJECT_BRANCH_CODE = :STORE_DEAL_OBJECT_BRANCH_' +
        'CODE) and'
      '  (sd.STORE_DEAL_OBJECT_CODE = :STORE_DEAL_OBJECT_CODE) '
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 608
    Top = 440
    object qryGetStoreDealOutDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryGetStoreDealOutDataCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryGetStoreDealOutDataSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
  end
  object qryGetModelLineProduct: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      '  mll.PRODUCT_CODE'
      'from'
      '  MATERIAL_LIST_LINES mll'
      'where'
      '  (mll.MLL_OBJECT_BRANCH_CODE = :MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = :MLL_OBJECT_CODE)   ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 472
    Top = 496
    object qryGetModelLineProductPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
  end
  object qryGetSaleShipmentProduct: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      '  s.PRODUCT_CODE'
      'from'
      '  SALES s,'
      '  SALE_SHIPMENTS ss'
      'where'
      '  (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_BRANCH_CODE) and'
      '  (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE) and'
      
        '  (ss.SHIPMENT_OBJECT_BRANCH_CODE = :SHIPMENT_OBJECT_BRANCH_CODE' +
        ') and'
      '  (ss.SHIPMENT_OBJECT_CODE = :SHIPMENT_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 480
    Top = 440
    object qryGetSaleShipmentProductPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
  end
  object qryGetSaleManufactureQuantity: TAbmesSQLQuery
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
      '  s.MANUFACTURE_QUANTITY'
      'from'
      '  SALES s'
      'where'
      '  (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '  (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 352
    object qryGetSaleManufactureQuantityMANUFACTURE_QUANTITY: TAbmesFloatField
      FieldName = 'MANUFACTURE_QUANTITY'
    end
  end
  object qryBOIOrderObjectID: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  boio.BOI_ORDER_OBJECT_BRANCH_CODE as PROCESS_OBJECT_BRANCH_COD' +
        'E,'
      '  boio.BOI_ORDER_OBJECT_CODE as PROCESS_OBJECT_CODE,'
      '  boio.BOI_ORDER_TYPE_CODE'
      'from'
      '  BOI_ORDERS boio'
      'where'
      
        '  (boio.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_CODE) an' +
        'd'
      '  (boio.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE) and'
      '  (boio.BUDGET_ORDER_ITEM_CODE = :BUDGET_ORDER_ITEM_CODE) and'
      '  (boio.BOI_ORDER_CODE = :BOI_ORDER_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 472
    Top = 24
    object qryBOIOrderObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryBOIOrderObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
    object qryBOIOrderObjectIDBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
      Required = True
    end
  end
  object prvBOIOrderObjectID: TDataSetProvider
    DataSet = qryBOIOrderObjectID
    Left = 472
    Top = 8
  end
  object qryBOIOrderObjectCustomID: TAbmesSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'select'
      '  boio.BUDGET_ORDER_BRANCH_CODE,'
      '  boio.BUDGET_ORDER_CODE,'
      '  boio.BUDGET_ORDER_ITEM_CODE,'
      '  boio.BOI_ORDER_CODE,'
      '  boio.BOI_ORDER_TYPE_CODE,'
      ''
      '  ( select'
      '      boc.BUDGET_ORDER_CLASS_ABBREV'
      '    from'
      '      BUDGET_ORDERS bo,'
      '      BUDGET_ORDER_CLASSES boc'
      '    where'
      
        '      (bo.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_ORDER_BRANCH_CO' +
        'DE) and'
      '      (bo.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_CODE) and'
      '      (bo.BUDGET_ORDER_CLASS_CODE = boc.BUDGET_ORDER_CLASS_CODE)'
      '  ) as BUDGET_ORDER_CLASS_ABBREV,'
      ''
      '  ( select'
      '      boit.BUDGET_ORDER_ITEM_TYPE_ABBREV'
      '    from'
      '      BUDGET_ORDER_ITEMS boi,'
      '      BUDGET_ORDER_ITEM_TYPES boit'
      '    where'
      
        '      (boi.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '      (boi.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_CODE) and'
      
        '      (boi.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_ORDER_ITEM_CODE)' +
        ' and'
      ''
      
        '      (boi.BUDGET_ORDER_ITEM_TYPE_CODE = boit.BUDGET_ORDER_ITEM_' +
        'TYPE_CODE)'
      '  ) as BUDGET_ORDER_ITEM_TYPE_ABBREV,'
      ''
      '  ( select'
      '      bo.PRODUCT_CODE'
      '    from'
      '      BUDGET_ORDERS bo'
      '    where'
      
        '      (bo.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_ORDER_BRANCH_CO' +
        'DE) and'
      '      (bo.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_CODE)'
      '  ) as BUDGET_ORDER_PRODUCT_CODE,'
      ''
      '  ( select'
      '      bo.BUDGET_ORDER_CLASS_CODE'
      '    from'
      '      BUDGET_ORDERS bo'
      '    where'
      
        '      (bo.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_ORDER_BRANCH_CO' +
        'DE) and'
      '      (bo.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_CODE)'
      '  ) as BUDGET_ORDER_CLASS_CODE'
      ''
      'from'
      '  BOI_ORDERS boio'
      'where'
      
        '  (boio.BOI_ORDER_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANC' +
        'H_CODE) and'
      '  (boio.BOI_ORDER_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 472
    Top = 88
    object qryBOIOrderObjectCustomIDBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object qryBOIOrderObjectCustomIDBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object qryBOIOrderObjectCustomIDBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object qryBOIOrderObjectCustomIDBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
    end
    object qryBOIOrderObjectCustomIDBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object qryBOIOrderObjectCustomIDBUDGET_ORDER_CLASS_ABBREV: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_CLASS_ABBREV'
      Size = 100
    end
    object qryBOIOrderObjectCustomIDBUDGET_ORDER_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_PRODUCT_CODE'
    end
    object qryBOIOrderObjectCustomIDBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_ABBREV'
      Size = 100
    end
    object qryBOIOrderObjectCustomIDBUDGET_ORDER_CLASS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CLASS_CODE'
    end
  end
  object prvBOIOrderObjectCustomID: TDataSetProvider
    DataSet = qryBOIOrderObjectCustomID
    Left = 472
    Top = 72
  end
  object prvOutStoreDealsExport: TDataSetProvider
    DataSet = qryOutStoreDealsExport
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 736
    Top = 440
  end
  object qryOutStoreDealsExport: TAbmesSQLQuery
    BeforeOpen = qryOutStoreDealsExportBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sd.STORE_DEAL_OBJECT_BRANCH_CODE,'
      '  sd.STORE_DEAL_OBJECT_CODE,'
      ''
      '  d.CUSTOM_CODE as STORE_NO,'
      ''
      '  (Row_Number() over (partition by d.CUSTOM_CODE'
      
        '                      order by sd.STORE_DEAL_DATE, sd.STORE_DEAL' +
        '_NO)'
      '  ) as STORE_DEAL_NO_IN_STORE,'
      '  sd.STORE_DEAL_DATE,'
      ''
      '  Decode('
      '    sd.BND_PROCESS_CODE,'
      '    180,'
      '    22,'
      '    61,'
      '    22,'
      '    90,'
      '    21'
      '  ) as DOCUMENT_TYPE_NO,'
      ''
      '  Decode('
      '    sd.BND_PROCESS_CODE,'
      '    180,'
      '    ( select'
      '        st.EXPORT_NO'
      '      from'
      '        SALES s,'
      '        SALE_TYPES st'
      '      where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (sd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      '        (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '    ),'
      '    61,'
      '    ( select'
      '        st.EXPORT_NO'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        MATERIAL_LISTS ml,'
      '        SALES s,'
      '        SALE_TYPES st'
      '      where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '        (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      '        (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '    ),'
      '    90,'
      '    410'
      '  ) as SALE_TYPE_EXPORT_NO,'
      ''
      '  Decode('
      '    sd.BND_PROCESS_CODE,'
      '    180,'
      '    ( select'
      '        st.EXPORT_NO_2'
      '      from'
      '        SALES s,'
      '        SALE_TYPES st'
      '      where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (sd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      '        (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '    ),'
      '    61,'
      '    ( select'
      '        st.EXPORT_NO_2'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        MATERIAL_LISTS ml,'
      '        SALES s,'
      '        SALE_TYPES st'
      '      where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '        (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      '        (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '    )'
      '  ) as SALE_TYPE_EXPORT_NO_2,'
      ''
      '  Decode('
      '    sd.BND_PROCESS_CODE,'
      '    180,'
      '    ( select'
      '        s.SALE_NO'
      '      from'
      '        SALES s'
      '      where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (sd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)'
      '    ),'
      '    61,'
      '    ( select'
      '        s.SALE_NO'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        MATERIAL_LISTS ml,'
      '        SALES s'
      '      where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '        (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)'
      '    )'
      '  ) as SALE_NO,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sd.PRODUCT_CODE)'
      '  ) as PRODUCT_NO,'
      ''
      '  ( select'
      '      m.EXPORT_NO'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.PRODUCT_CODE = sd.PRODUCT_CODE) and'
      '      (p.ACCOUNT_MEASURE_CODE = m.MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_EXPORT_NO,'
      ''
      '  sd.ACCOUNT_QUANTITY'
      ''
      'from'
      '  STORE_DEALS sd,'
      '  DEPTS d'
      ''
      'where'
      '  (sd.STORE_CODE = d.DEPT_CODE) and'
      '  (sd.IN_OUT = -1) and'
      '  (sd.STORNO_EMPLOYEE_CODE is null) and'
      '  (sd.BND_PROCESS_CODE in (61, 90, 180)) and'
      '  (sd.STORE_DEAL_DATE between :BEGIN_DATE and :END_DATE) and'
      '  (sd.STORE_CODE not in %EXCLUDE_STORE_CODES)'
      ''
      'order by'
      '  STORE_DEAL_DATE,'
      '  STORE_NO,'
      '  STORE_DEAL_NO'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EXCLUDE_STORE_CODES'
        ParamType = ptInput
        Value = 'null'
      end>
    MacroParams = <
      item
        DataType = ftWideString
        Name = 'EXCLUDE_STORE_CODES'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EXCLUDE_SALE_TYPE_CODES'
        ParamType = ptInput
      end>
    CustomParams = <>
    Left = 736
    Top = 488
    object qryOutStoreDealsExportSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOutStoreDealsExportSTORE_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOutStoreDealsExportSTORE_NO: TAbmesFloatField
      FieldName = 'STORE_NO'
    end
    object qryOutStoreDealsExportSTORE_DEAL_NO_IN_STORE: TAbmesFloatField
      FieldName = 'STORE_DEAL_NO_IN_STORE'
    end
    object qryOutStoreDealsExportSTORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_DATE'
    end
    object qryOutStoreDealsExportDOCUMENT_TYPE_NO: TAbmesFloatField
      FieldName = 'DOCUMENT_TYPE_NO'
    end
    object qryOutStoreDealsExportSALE_TYPE_EXPORT_NO: TAbmesFloatField
      FieldName = 'SALE_TYPE_EXPORT_NO'
    end
    object qryOutStoreDealsExportSALE_TYPE_EXPORT_NO_2: TAbmesFloatField
      FieldName = 'SALE_TYPE_EXPORT_NO_2'
    end
    object qryOutStoreDealsExportSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object qryOutStoreDealsExportPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryOutStoreDealsExportACCOUNT_MEASURE_EXPORT_NO: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_EXPORT_NO'
    end
    object qryOutStoreDealsExportACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
  end
  object prvExportStores: TDataSetProvider
    DataSet = qryExportStores
    Options = [poReadOnly, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 840
    Top = 464
  end
  object qryExportStores: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  s.STORE_CODE,'
      '  d.NAME as STORE_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as S' +
        'TORE_IDENTIFIER'
      'from'
      '  STORES s,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      'where'
      '  (s.STORE_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      'order by'
      '  STORE_IDENTIFIER')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'STORES'
    Left = 840
    Top = 512
    object qryExportStoresSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryExportStoresSTORE_NAME: TAbmesWideStringField
      FieldName = 'STORE_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryExportStoresSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 45
    end
  end
  object qrySaleOrderID: TAbmesSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'select'
      '  s.SALE_OBJECT_BRANCH_CODE as PROCESS_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE as PROCESS_OBJECT_CODE'
      'from'
      '  SALES s'
      'where'
      '  (s.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_CODE) and'
      '  (s.REQUEST_NO = :REQUEST_NO) and'
      '  (s.REQUEST_LINE_NO = :REQUEST_LINE_NO)  '
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 823
    Top = 24
    object qrySaleOrderIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object qrySaleOrderIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
  end
  object prvSaleOrderID: TDataSetProvider
    DataSet = qrySaleOrderID
    Left = 806
    Top = 8
  end
  object prvSaleOrderCustomID: TDataSetProvider
    DataSet = qrySaleOrderCustomID
    Left = 806
    Top = 72
  end
  object qrySaleOrderCustomID: TAbmesSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'select'
      '  s.REQUEST_BRANCH_CODE,'
      '  s.REQUEST_NO,'
      '  s.REQUEST_LINE_NO'
      'from'
      '  SALES s'
      'where'
      
        '  (s.SALE_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_CODE) ' +
        'and'
      '  (s.SALE_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 806
    Top = 88
    object qrySaleOrderCustomIDREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object qrySaleOrderCustomIDREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object qrySaleOrderCustomIDREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
  end
  object shActivePSDCondition: TJvStrHolder
    Capacity = 8
    Macros = <>
    Left = 288
    Top = 544
    InternalVer = 2
    StrData = (
      ''
      '2020287073642e49535f414354495645203d20312920616e64'
      
        '2020287073642e504c414e4e45445f53544f52455f4445414c5f545950455f43' +
        '4f4445203c3d20'
      '20202020282073656c656374'
      
        '20202020202020204d617828707364742e504c414e4e45445f53544f52455f44' +
        '45414c5f545950455f434f444529'
      '20202020202066726f6d'
      
        '2020202020202020504c414e4e45445f53544f52455f4445414c5f5459504553' +
        '2070736474'
      '20202020292020'
      '202029')
  end
  object mshStoreDealsBndProcessCondition: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'STORE_DEALS_BND_PROCESS_CONDITION'
        Strings.Strings = (
          '  ( (:BND_PROCESS_CODE is null) or'
          ''
          '    ( (:BND_PROCESS_CODE = %1.BND_PROCESS_CODE) and'
          ''
          '      ( (:BND_PROCESS_CODE not in (160)) or'
          '        (exists'
          '          ( select'
          '              1'
          '            from'
          '              SALE_SHIPMENTS lib_ss,'
          '              SALES lib_s,'
          '              SALE_REQUEST_GROUPS lib_srg'
          '            where'
          
            '              (%1.BND_PROCESS_OBJECT_BRANCH_CODE = lib_ss.SHIPME' +
            'NT_OBJECT_BRANCH_CODE) and'
          
            '              (%1.BND_PROCESS_OBJECT_CODE = lib_ss.SHIPMENT_OBJE' +
            'CT_CODE) and'
          ''
          
            '              (lib_ss.SALE_OBJECT_BRANCH_CODE = lib_s.SALE_OBJEC' +
            'T_BRANCH_CODE) and'
          
            '              (lib_ss.SALE_OBJECT_CODE = lib_s.SALE_OBJECT_CODE)' +
            ' and'
          ''
          
            '              (lib_s.REQUEST_BRANCH_CODE = lib_srg.REQUEST_BRANC' +
            'H_CODE) and'
          '              (lib_s.REQUEST_NO = lib_srg.REQUEST_NO) and'
          ''
          '              ( (:SALE_DEAL_TYPE_CODE is null) or'
          
            '                (:SALE_DEAL_TYPE_CODE = lib_srg.SALE_DEAL_TYPE_C' +
            'ODE)'
          '              ) and'
          ''
          '              ( (:SALE_BRANCH_CODE is null) or'
          '                (:SALE_BRANCH_CODE = lib_s.SALE_BRANCH_CODE)'
          '              ) and'
          ''
          '              ( (:SALE_NO is null) or'
          '                (:SALE_NO = lib_s.SALE_NO)'
          '              ) and'
          ''
          '              ( (:SALE_TYPE_CODE is null) or'
          '                (:SALE_TYPE_CODE = lib_s.SALE_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:SALE_SHIPMENT_NO is null) or'
          '                (:SALE_SHIPMENT_NO = lib_ss.SALE_SHIPMENT_NO)'
          '              ) and'
          ''
          '              ( (:CLIENT_COMPANY_CODE is null) or'
          
            '                (:CLIENT_COMPANY_CODE = lib_s.CLIENT_COMPANY_COD' +
            'E)'
          '              )'
          '          )'
          '        )'
          '      ) and'
          ''
          '      ( (:BND_PROCESS_CODE not in (165)) or'
          '        (exists'
          '          ( select'
          '              1'
          '            from'
          '              SALES lib_s'
          '            where'
          
            '              (%1.BND_PROCESS_OBJECT_BRANCH_CODE = lib_s.SALE_OB' +
            'JECT_BRANCH_CODE) and'
          
            '              (%1.BND_PROCESS_OBJECT_CODE = lib_s.SALE_OBJECT_CO' +
            'DE) and'
          ''
          '              ( (:SALE_DEAL_TYPE_CODE is null) or'
          
            '                (:SALE_DEAL_TYPE_CODE = lib_s.SALE_DEAL_TYPE_COD' +
            'E)'
          '              ) and'
          ''
          '              ( (:REQUEST_BRANCH_CODE is null) or'
          
            '                (:REQUEST_BRANCH_CODE = lib_s.REQUEST_BRANCH_COD' +
            'E)'
          '              ) and'
          ''
          '              ( (:REQUEST_NO is null) or'
          '                (:REQUEST_NO = lib_s.REQUEST_NO)'
          '              ) and'
          ''
          '              ( (:REQUEST_LINE_NO is null) or'
          '                (:REQUEST_LINE_NO = lib_s.REQUEST_LINE_NO)'
          '              )'
          '          )'
          '        )'
          '      ) and'
          ''
          '      ( (:BND_PROCESS_CODE not in (60, 91, 180)) or'
          '        (exists'
          '          ( select'
          '              1'
          '            from'
          '              SALES lib_s'
          '            where'
          
            '              (%1.BND_PROCESS_OBJECT_BRANCH_CODE = lib_s.SALE_OB' +
            'JECT_BRANCH_CODE) and'
          
            '              (%1.BND_PROCESS_OBJECT_CODE = lib_s.SALE_OBJECT_CO' +
            'DE) and'
          ''
          '              ( (:PRODUCTION_ORDER_TYPE_CODE is null) or'
          
            '                (:PRODUCTION_ORDER_TYPE_CODE = lib_s.PRODUCTION_' +
            'ORDER_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:SALE_BRANCH_CODE is null) or'
          '                (:SALE_BRANCH_CODE = lib_s.SALE_BRANCH_CODE)'
          '              ) and'
          ''
          '              ( (:SALE_NO is null) or'
          '                (:SALE_NO = lib_s.SALE_NO)'
          '              ) and'
          ''
          '              ( (:SALE_TYPE_CODE is null) or'
          '                (:SALE_TYPE_CODE = lib_s.SALE_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:IS_WASTE_COMPENSATOR_STATUS is null) or'
          '                (:IS_WASTE_COMPENSATOR_STATUS = 0) or'
          '                '
          '                ( (:IS_WASTE_COMPENSATOR_STATUS = 2) and'
          '                  (lib_s.WASTING_SALE_OBJ_BRANCH_CODE is null)'
          '                ) or'
          ''
          '                ( (:IS_WASTE_COMPENSATOR_STATUS = 3) and'
          
            '                  (lib_s.WASTING_SALE_OBJ_BRANCH_CODE is not nul' +
            'l)'
          '                )'
          '              ) and'
          '              '
          '              ( (:PROJECT_PRODUCT_CODE is null) or'
          '                (exists'
          '                  ( select'
          '                      1'
          '                    from'
          '                      SALES lib_s2'
          '                    where'
          '                      (lib_s2.PRODUCTION_ORDER_TYPE_CODE in '
          '                        ( select'
          '                            lib_pot.PRODUCTION_ORDER_TYPE_CODE'
          '                          from'
          '                            PRODUCTION_ORDER_TYPES lib_pot'
          '                          where'
          
            '                            (lib_pot.PROD_ORDER_BASE_TYPE_CODE =' +
            ' CommonConsts.pobtProject)'
          '                        )                            '
          '                      ) and'
          '                      (exists'
          '                        ( select'
          '                            1'
          '                          from'
          '                            PRODUCT_RELATIONS lib_pr'
          '                          where'
          
            '                            (lib_pr.ANCESTOR_PRODUCT_CODE = :PRO' +
            'JECT_PRODUCT_CODE) and'
          
            '                            (lib_pr.DESCENDANT_PRODUCT_CODE = li' +
            'b_s2.PRODUCT_CODE)'
          '                        )'
          '                      )'
          '                      '
          '                    start with'
          
            '                      (lib_s2.SALE_OBJECT_BRANCH_CODE = lib_s.SA' +
            'LE_OBJECT_BRANCH_CODE) and'
          
            '                      (lib_s2.SALE_OBJECT_CODE = lib_s.SALE_OBJE' +
            'CT_CODE)'
          '                    connect by'
          
            '                      (lib_s2.SALE_OBJECT_BRANCH_CODE = prior li' +
            'b_s2.WASTING_SALE_OBJ_BRANCH_CODE) and'
          
            '                      (lib_s2.SALE_OBJECT_CODE = prior lib_s2.WA' +
            'STING_SALE_OBJ_CODE)'
          '                  )'
          '                )'
          '              )'
          '          )'
          '        )'
          '      ) and'
          ''
          '      ( (:BND_PROCESS_CODE not in (61)) or'
          '        (exists'
          '          ( select'
          '              1'
          '            from'
          '              MATERIAL_LIST_LINES lib_mll,'
          '              MATERIAL_LISTS lib_ml,'
          '              SALES lib_s'
          '            where'
          
            '              (%1.BND_PROCESS_OBJECT_BRANCH_CODE = lib_mll.MLL_O' +
            'BJECT_BRANCH_CODE) and'
          
            '              (%1.BND_PROCESS_OBJECT_CODE = lib_mll.MLL_OBJECT_C' +
            'ODE) and'
          ''
          
            '              (lib_mll.ML_OBJECT_BRANCH_CODE = lib_ml.ML_OBJECT_' +
            'BRANCH_CODE) and'
          
            '              (lib_mll.ML_OBJECT_CODE = lib_ml.ML_OBJECT_CODE) a' +
            'nd'
          ''
          
            '              (lib_ml.BND_PROCESS_OBJECT_BRANCH_CODE = lib_s.SAL' +
            'E_OBJECT_BRANCH_CODE) and'
          
            '              (lib_ml.BND_PROCESS_OBJECT_CODE = lib_s.SALE_OBJEC' +
            'T_CODE) and'
          ''
          '              ( (:PRODUCTION_ORDER_TYPE_CODE is null) or'
          
            '                (:PRODUCTION_ORDER_TYPE_CODE = lib_s.PRODUCTION_' +
            'ORDER_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:SALE_BRANCH_CODE is null) or'
          '                (:SALE_BRANCH_CODE = lib_s.SALE_BRANCH_CODE)'
          '              ) and'
          ''
          '              ( (:SALE_NO is null) or'
          '                (:SALE_NO = lib_s.SALE_NO)'
          '              ) and'
          ''
          '              ( (:SALE_TYPE_CODE is null) or'
          '                (:SALE_TYPE_CODE = lib_s.SALE_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:IS_WASTE_COMPENSATOR_STATUS is null) or'
          '                (:IS_WASTE_COMPENSATOR_STATUS = 0) or'
          ''
          '                ( (:IS_WASTE_COMPENSATOR_STATUS = 2) and'
          '                  (lib_s.WASTING_SALE_OBJ_BRANCH_CODE is null)'
          '                ) or'
          ''
          '                ( (:IS_WASTE_COMPENSATOR_STATUS = 3) and'
          
            '                  (lib_s.WASTING_SALE_OBJ_BRANCH_CODE is not nul' +
            'l)'
          '                )'
          '              ) and'
          ''
          '              ( (:NO_AS_TEXT is null) or'
          '                (lib_mll.NO_AS_TEXT like :NO_AS_TEXT)'
          '              ) and'
          ''
          '              ( (:FORK_NO is null) or'
          '                (:FORK_NO = lib_mll.FORK_NO)'
          '              ) and'
          ''
          '              ( (:IS_WASTE_FORK_STATUS is null) or'
          '                (:IS_WASTE_FORK_STATUS = 0) or'
          ''
          '                ( (:IS_WASTE_FORK_STATUS = 2) and'
          '                  (lib_mll.IS_WASTE_FORK = 0)'
          '                ) or'
          ''
          '                ( (:IS_WASTE_FORK_STATUS = 3) and'
          '                  (lib_mll.IS_WASTE_FORK = 1)'
          '                )'
          '              ) and'
          '              '
          '              ( (:PROJECT_PRODUCT_CODE is null) or'
          '                (exists'
          '                  ( select'
          '                      1'
          '                    from'
          '                      SALES lib_s2'
          '                    where'
          '                      (lib_s2.PRODUCTION_ORDER_TYPE_CODE in '
          '                        ( select'
          '                            lib_pot.PRODUCTION_ORDER_TYPE_CODE'
          '                          from'
          '                            PRODUCTION_ORDER_TYPES lib_pot'
          '                          where'
          
            '                            (lib_pot.PROD_ORDER_BASE_TYPE_CODE =' +
            ' CommonConsts.pobtProject)'
          '                        )                            '
          '                      ) and'
          '                      (exists'
          '                        ( select'
          '                            1'
          '                          from'
          '                            PRODUCT_RELATIONS lib_pr'
          '                          where'
          
            '                            (lib_pr.ANCESTOR_PRODUCT_CODE = :PRO' +
            'JECT_PRODUCT_CODE) and'
          
            '                            (lib_pr.DESCENDANT_PRODUCT_CODE = li' +
            'b_s2.PRODUCT_CODE)'
          '                        )'
          '                      )'
          '                      '
          '                    start with'
          
            '                      (lib_s2.SALE_OBJECT_BRANCH_CODE = lib_s.SA' +
            'LE_OBJECT_BRANCH_CODE) and'
          
            '                      (lib_s2.SALE_OBJECT_CODE = lib_s.SALE_OBJE' +
            'CT_CODE)'
          '                    connect by'
          
            '                      (lib_s2.SALE_OBJECT_BRANCH_CODE = prior li' +
            'b_s2.WASTING_SALE_OBJ_BRANCH_CODE) and'
          
            '                      (lib_s2.SALE_OBJECT_CODE = prior lib_s2.WA' +
            'STING_SALE_OBJ_CODE)'
          '                  )'
          '                )'
          '              )'
          '          )'
          '        )'
          '      ) and'
          ''
          '      ( (:BND_PROCESS_CODE not in (62)) or'
          '        (exists'
          '          ( select'
          '              1'
          '            from'
          '              MLMS_OPERATIONS lib_mlmso,'
          '              ML_MODEL_STAGES lib_mlms,'
          '              MATERIAL_LIST_LINES lib_mll,'
          '              MATERIAL_LISTS lib_ml,'
          '              SALES lib_s'
          '            where'
          
            '              (%1.BND_PROCESS_OBJECT_BRANCH_CODE = lib_mlmso.MLM' +
            'SO_OBJECT_BRANCH_CODE) and'
          
            '              (%1.BND_PROCESS_OBJECT_CODE = lib_mlmso.MLMSO_OBJE' +
            'CT_CODE) and'
          ''
          
            '              (lib_mlmso.MLMS_OBJECT_BRANCH_CODE = lib_mlms.MLMS' +
            '_OBJECT_BRANCH_CODE) and'
          
            '              (lib_mlmso.MLMS_OBJECT_CODE = lib_mlms.MLMS_OBJECT' +
            '_CODE) and'
          ''
          
            '              (lib_mlms.MLL_OBJECT_BRANCH_CODE = lib_mll.MLL_OBJ' +
            'ECT_BRANCH_CODE) and'
          
            '              (lib_mlms.MLL_OBJECT_CODE = lib_mll.MLL_OBJECT_COD' +
            'E) and'
          ''
          
            '              (lib_mll.ML_OBJECT_BRANCH_CODE = lib_ml.ML_OBJECT_' +
            'BRANCH_CODE) and'
          
            '              (lib_mll.ML_OBJECT_CODE = lib_ml.ML_OBJECT_CODE) a' +
            'nd'
          ''
          
            '              (lib_ml.BND_PROCESS_OBJECT_BRANCH_CODE = lib_s.SAL' +
            'E_OBJECT_BRANCH_CODE) and'
          
            '              (lib_ml.BND_PROCESS_OBJECT_CODE = lib_s.SALE_OBJEC' +
            'T_CODE) and'
          ''
          '              ( (:PRODUCTION_ORDER_TYPE_CODE is null) or'
          
            '                (:PRODUCTION_ORDER_TYPE_CODE = lib_s.PRODUCTION_' +
            'ORDER_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:SALE_BRANCH_CODE is null) or'
          '                (:SALE_BRANCH_CODE = lib_s.SALE_BRANCH_CODE)'
          '              ) and'
          ''
          '              ( (:SALE_NO is null) or'
          '                (:SALE_NO = lib_s.SALE_NO)'
          '              ) and'
          ''
          '              ( (:SALE_TYPE_CODE is null) or'
          '                (:SALE_TYPE_CODE = lib_s.SALE_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:IS_WASTE_COMPENSATOR_STATUS is null) or'
          '                (:IS_WASTE_COMPENSATOR_STATUS = 0) or'
          ''
          '                ( (:IS_WASTE_COMPENSATOR_STATUS = 2) and'
          '                  (lib_s.WASTING_SALE_OBJ_BRANCH_CODE is null)'
          '                ) or'
          ''
          '                ( (:IS_WASTE_COMPENSATOR_STATUS = 3) and'
          
            '                  (lib_s.WASTING_SALE_OBJ_BRANCH_CODE is not nul' +
            'l)'
          '                )'
          '              ) and'
          ''
          '              ( (:NO_AS_TEXT is null) or'
          '                (lib_mll.NO_AS_TEXT like :NO_AS_TEXT)'
          '              ) and'
          ''
          '              ( (:FORK_NO is null) or'
          '                (:FORK_NO = lib_mll.FORK_NO)'
          '              ) and'
          ''
          '              ( (:IS_WASTE_FORK_STATUS is null) or'
          '                (:IS_WASTE_FORK_STATUS = 0) or'
          ''
          '                ( (:IS_WASTE_FORK_STATUS = 2) and'
          '                  (lib_mll.IS_WASTE_FORK = 0)'
          '                ) or'
          ''
          '                ( (:IS_WASTE_FORK_STATUS = 3) and'
          '                  (lib_mll.IS_WASTE_FORK = 1)'
          '                )'
          '              ) and'
          ''
          '              ( (:ML_MODEL_STAGE_NO is null) or'
          
            '                (:ML_MODEL_STAGE_NO = lib_mlms.ML_MODEL_STAGE_NO' +
            ')'
          '              ) and'
          ''
          '              ( (:MLMS_OPERATION_NO is null) or'
          
            '                (:MLMS_OPERATION_NO = lib_mlmso.MLMS_OPERATION_N' +
            'O)'
          '              ) and'
          ''
          '              ( (:MLMS_OPERATION_VARIANT_NO is null) or'
          
            '                (:MLMS_OPERATION_VARIANT_NO = lib_mlmso.MLMS_OPE' +
            'RATION_VARIANT_NO)'
          '              )'
          '          )'
          '        )'
          '      ) and'
          ''
          '      ( (:BND_PROCESS_CODE not in (39)) or'
          '        (exists'
          '          ( select'
          '              1'
          '            from'
          '              DEFICIT_COVER_DECISIONS lib_dcd'
          '            where'
          
            '              (%1.BND_PROCESS_OBJECT_BRANCH_CODE = lib_dcd.DCD_O' +
            'BJECT_BRANCH_CODE) and'
          
            '              (%1.BND_PROCESS_OBJECT_CODE = lib_dcd.DCD_OBJECT_C' +
            'ODE) and'
          ''
          '              ( (:DELIVERY_DEAL_TYPE_CODE is null) or'
          
            '                (:DELIVERY_DEAL_TYPE_CODE = lib_dcd.DELIVERY_DEA' +
            'L_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:DCD_BRANCH_CODE is null) or'
          '                (:DCD_BRANCH_CODE = lib_dcd.DCD_BRANCH_CODE)'
          '              ) and'
          ''
          '              ( (:DCD_CODE is null) or'
          '                (:DCD_CODE = lib_dcd.DCD_CODE)'
          '              )'
          '          )'
          '        )'
          '      ) and'
          ''
          '      ( (:BND_PROCESS_CODE not in (40)) or'
          '        (exists'
          '          ( select'
          '              1'
          '            from'
          '              DELIVERY_CONTRACTS lib_dc,'
          '              DELIVERY_PROJECTS lib_dp,'
          '              DEFICIT_COVER_DECISIONS lib_dcd'
          '            where'
          
            '              (%1.BND_PROCESS_OBJECT_BRANCH_CODE = lib_dc.DELIVE' +
            'RY_OBJECT_BRANCH_CODE) and'
          
            '              (%1.BND_PROCESS_OBJECT_CODE = lib_dc.DELIVERY_OBJE' +
            'CT_CODE) and'
          ''
          
            '              (lib_dc.DCD_OBJECT_BRANCH_CODE = lib_dp.DCD_OBJECT' +
            '_BRANCH_CODE) and'
          
            '              (lib_dc.DCD_OBJECT_CODE = lib_dp.DCD_OBJECT_CODE) ' +
            'and'
          
            '              (lib_dc.DELIVERY_PROJECT_CODE = lib_dp.DELIVERY_PR' +
            'OJECT_CODE) and'
          ''
          
            '              (lib_dp.DCD_OBJECT_BRANCH_CODE = lib_dcd.DCD_OBJEC' +
            'T_BRANCH_CODE) and'
          
            '              (lib_dp.DCD_OBJECT_CODE = lib_dcd.DCD_OBJECT_CODE)' +
            ' and'
          ''
          '              ( (:DELIVERY_DEAL_TYPE_CODE is null) or'
          
            '                (:DELIVERY_DEAL_TYPE_CODE = lib_dcd.DELIVERY_DEA' +
            'L_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:DCD_BRANCH_CODE is null) or'
          '                (:DCD_BRANCH_CODE = lib_dcd.DCD_BRANCH_CODE)'
          '              ) and'
          ''
          '              ( (:DCD_CODE is null) or'
          '                (:DCD_CODE = lib_dcd.DCD_CODE)'
          '              ) and'
          ''
          '              ( (:DELIVERY_PROJECT_CODE is null) or'
          
            '                (:DELIVERY_PROJECT_CODE = lib_dp.DELIVERY_PROJEC' +
            'T_CODE)'
          '              ) and'
          ''
          '              ( (:DELIVERY_TYPE_CODE is null) or'
          
            '                (:DELIVERY_TYPE_CODE = lib_dc.DELIVERY_TYPE_CODE' +
            ')'
          '              ) and'
          ''
          '              ( (:VENDOR_COMPANY_CODE is null) or'
          
            '                (:VENDOR_COMPANY_CODE = lib_dp.VENDOR_COMPANY_CO' +
            'DE)'
          '              ) and'
          ''
          '              ( (:INVOICE_NO is null) or'
          '                (:INVOICE_NO = lib_dc.INVOICE_NO)'
          '              ) and'
          '    '
          '              ( (:INVOICE_ABBREV is null) or'
          '                (:INVOICE_ABBREV = lib_dc.INVOICE_ABBREV)'
          '              ) and'
          '    '
          '              ( (:INVOICE_DATE is null) or'
          '                (:INVOICE_DATE = lib_dc.INVOICE_DATE)'
          '              ) and'
          '    '
          '              ( (:IS_PROFORM_INVOICE_STATUS is null) or'
          '                (:IS_PROFORM_INVOICE_STATUS = 0) or'
          '    '
          '                ( (:IS_PROFORM_INVOICE_STATUS = 2) and'
          '                  (lib_dc.IS_PROFORM_INVOICE = 0)'
          '                ) or'
          '    '
          '                ( (:IS_PROFORM_INVOICE_STATUS = 3) and'
          '                  (lib_dc.IS_PROFORM_INVOICE = 1)'
          '                )'
          '              )'
          '          )'
          '        )'
          '      ) and'
          ''
          '      ( (:BND_PROCESS_CODE not in (190)) or'
          '        (exists'
          '          ( select'
          '              1'
          '            from'
          '              BOI_ORDERS lib_boio,'
          '              BUDGET_ORDER_ITEMS lib_boi,'
          '              BUDGET_ORDERS lib_bo'
          '            where'
          
            '              (%1.BND_PROCESS_OBJECT_BRANCH_CODE = lib_boio.BOI_' +
            'ORDER_OBJECT_BRANCH_CODE) and'
          
            '              (%1.BND_PROCESS_OBJECT_CODE = lib_boio.BOI_ORDER_O' +
            'BJECT_CODE) and'
          ''
          
            '              (lib_boio.BUDGET_ORDER_BRANCH_CODE = lib_boi.BUDGE' +
            'T_ORDER_BRANCH_CODE) and'
          
            '              (lib_boio.BUDGET_ORDER_CODE = lib_boi.BUDGET_ORDER' +
            '_CODE) and'
          
            '              (lib_boio.BUDGET_ORDER_ITEM_CODE = lib_boi.BUDGET_' +
            'ORDER_ITEM_CODE) and'
          ''
          
            '              (lib_boi.BUDGET_ORDER_BRANCH_CODE = lib_bo.BUDGET_' +
            'ORDER_BRANCH_CODE) and'
          
            '              (lib_boi.BUDGET_ORDER_CODE = lib_bo.BUDGET_ORDER_C' +
            'ODE) and'
          ''
          '              ( (:BUDGET_ORDER_CLASS_CODE is null) or'
          
            '                (:BUDGET_ORDER_CLASS_CODE = lib_bo.BUDGET_ORDER_' +
            'CLASS_CODE)'
          '              ) and'
          ''
          '              ( (:BUDGET_ORDER_BRANCH_CODE is null) or'
          
            '                (:BUDGET_ORDER_BRANCH_CODE = lib_boio.BUDGET_ORD' +
            'ER_BRANCH_CODE)'
          '              ) and'
          ''
          '              ( (:BUDGET_ORDER_CODE is null) or'
          
            '                (:BUDGET_ORDER_CODE = lib_boio.BUDGET_ORDER_CODE' +
            ')'
          '              ) and'
          ''
          '              ( (:BUDGET_ORDER_ITEM_CODE is null) or'
          
            '                (:BUDGET_ORDER_ITEM_CODE = lib_boio.BUDGET_ORDER' +
            '_ITEM_CODE)'
          '              ) and'
          ''
          '              ( (:BOI_ORDER_CODE is null) or'
          '                (:BOI_ORDER_CODE = lib_boio.BOI_ORDER_CODE)'
          '              ) and'
          ''
          '              ( (:BUDGET_ORDER_ITEM_TYPE_CODE is null) or'
          
            '                (:BUDGET_ORDER_ITEM_TYPE_CODE = lib_boi.BUDGET_O' +
            'RDER_ITEM_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:ORG_TASK_PROPOSAL_STATE_CODE is null) or'
          
            '                (:ORG_TASK_PROPOSAL_STATE_CODE = lib_bo.ORG_TASK' +
            '_PROPOSAL_STATE_CODE)'
          '              ) and'
          ''
          '              ( (:BUDGET_ORDER_PRODUCT_CODE is null) or'
          '                (exists'
          '                  ( select'
          '                      1'
          '                    from'
          '                      PRODUCT_RELATIONS lib_pr'
          '                    where'
          
            '                      (lib_pr.ANCESTOR_PRODUCT_CODE = :BUDGET_OR' +
            'DER_PRODUCT_CODE) and'
          
            '                      (lib_pr.DESCENDANT_PRODUCT_CODE = lib_bo.P' +
            'RODUCT_CODE)'
          '                  )'
          '                )'
          '              )'
          '          )'
          '        )'
          '      ) and'
          ''
          '      ( (:BND_PROCESS_CODE not in (202)) or'
          '        (exists'
          '          ( select'
          '              1'
          '            from'
          '              REAL_FIN_MODEL_LINES lib_rfml,'
          '              FIN_ORDERS lib_fo,'
          '              SALE_GROUPS lib_sg'
          '            where'
          
            '              (%1.BND_PROCESS_OBJECT_BRANCH_CODE = lib_rfml.RFML' +
            '_OBJECT_BRANCH_CODE) and'
          
            '              (%1.BND_PROCESS_OBJECT_CODE = lib_rfml.RFML_OBJECT' +
            '_CODE) and'
          ''
          
            '              (lib_rfml.FIN_ORDER_CODE = lib_fo.FIN_ORDER_CODE) ' +
            'and'
          ''
          
            '              (lib_fo.BND_PROCESS_OBJECT_BRANCH_CODE = lib_sg.SA' +
            'LE_GROUP_OBJECT_BRANCH_CODE) and'
          
            '              (lib_fo.BND_PROCESS_OBJECT_CODE = lib_sg.SALE_GROU' +
            'P_OBJECT_CODE) and'
          '              '
          '              (lib_fo.FIN_PROCESS_CODE = :BND_PROCESS_CODE) and'
          ''
          '              ( (:FIN_ORDER_BRANCH_CODE is null) or'
          
            '                (:FIN_ORDER_BRANCH_CODE = lib_fo.FIN_ORDER_BRANC' +
            'H_CODE)'
          '              ) and'
          ''
          '              ( (:FIN_ORDER_NO is null) or'
          '                (:FIN_ORDER_NO = lib_fo.FIN_ORDER_NO)'
          '              ) and'
          ''
          '              ( (:FIN_MODEL_LINE_TYPE_CODE is null) or'
          
            '                (:FIN_MODEL_LINE_TYPE_CODE = lib_rfml.FIN_MODEL_' +
            'LINE_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:FIN_MODEL_LINE_NO is null) or'
          
            '                (:FIN_MODEL_LINE_NO = lib_rfml.FIN_MODEL_LINE_NO' +
            ')'
          '              ) and'
          ''
          '              ( (:PARTNER_CODE is null) or'
          '                (:PARTNER_CODE = lib_fo.PARTNER_CODE)'
          '              ) and'
          ''
          '              ( (:BASE_DATE is null) or'
          '                (:BASE_DATE = lib_fo.BASE_DATE)'
          '              ) and'
          ''
          '              ( (:DOCUMENT_IDENTIFIER_STATUS is null) or'
          '                (:DOCUMENT_IDENTIFIER_STATUS = 0) or'
          ''
          '                ( (:DOCUMENT_IDENTIFIER_STATUS = 2) and'
          '                  (lib_fo.DOCUMENT_IDENTIFIER is null) and'
          '                  (not exists'
          '                    ( select'
          '                        1'
          '                      from'
          '                        REAL_FIN_MODEL_LINES lib_rfml2'
          '                      where'
          
            '                        (lib_rfml2.FIN_ORDER_CODE = lib_fo.FIN_O' +
            'RDER_CODE) and'
          
            '                        (lib_rfml2.ANNUL_EMPLOYEE_CODE is null) ' +
            'and'
          
            '                        (lib_rfml2.DOCUMENT_IDENTIFIER is not nu' +
            'll)'
          '                    )'
          '                  )'
          '                ) or'
          ''
          '                ( (:DOCUMENT_IDENTIFIER_STATUS = 3) and'
          '                  ( (lib_fo.DOCUMENT_IDENTIFIER is not null) or'
          '                    (exists'
          '                      ( select'
          '                          1'
          '                        from'
          '                          REAL_FIN_MODEL_LINES lib_rfml2'
          '                        where'
          
            '                          (lib_rfml2.FIN_ORDER_CODE = lib_fo.FIN' +
            '_ORDER_CODE) and'
          
            '                          (lib_rfml2.ANNUL_EMPLOYEE_CODE is null' +
            ') and'
          
            '                          (lib_rfml2.DOCUMENT_IDENTIFIER is not ' +
            'null)'
          '                      )'
          '                    )'
          '                  )'
          '                )'
          '              ) and'
          '              '
          '              ( (:DOCUMENT_IDENTIFIER is null) or'
          
            '                (:DOCUMENT_IDENTIFIER = lib_rfml.DOCUMENT_IDENTI' +
            'FIER)'
          '              ) and'
          '              '
          '              ( (:SALE_GROUP_BRANCH_CODE is null) or'
          
            '                (:SALE_GROUP_BRANCH_CODE = lib_sg.SALE_GROUP_BRA' +
            'NCH_CODE)'
          '              ) and'
          '              '
          '              ( (:SALE_GROUP_CODE is null) or'
          '                (:SALE_GROUP_CODE = lib_sg.SALE_GROUP_CODE)'
          '              )'
          '          )'
          '        )'
          '      ) and'
          '      '
          '      ( (:BND_PROCESS_CODE not in (201, 204)) or'
          '        (exists'
          '          ( select'
          '              1'
          '            from'
          '              REAL_FIN_MODEL_LINES lib_rfml,'
          '              FIN_ORDERS lib_fo,'
          '              SALE_SHIPMENTS lib_ss,'
          '              SALES lib_s,'
          '              SALE_REQUEST_GROUPS lib_srg'
          '            where'
          
            '              (%1.BND_PROCESS_OBJECT_BRANCH_CODE = lib_rfml.RFML' +
            '_OBJECT_BRANCH_CODE) and'
          
            '              (%1.BND_PROCESS_OBJECT_CODE = lib_rfml.RFML_OBJECT' +
            '_CODE) and'
          ''
          
            '              (lib_rfml.FIN_ORDER_CODE = lib_fo.FIN_ORDER_CODE) ' +
            'and'
          ''
          
            '              (lib_fo.BND_PROCESS_OBJECT_BRANCH_CODE = lib_ss.SH' +
            'IPMENT_OBJECT_BRANCH_CODE) and'
          
            '              (lib_fo.BND_PROCESS_OBJECT_CODE = lib_ss.SHIPMENT_' +
            'OBJECT_CODE) and'
          ''
          
            '              (lib_ss.SALE_OBJECT_BRANCH_CODE = lib_s.SALE_OBJEC' +
            'T_BRANCH_CODE) and'
          
            '              (lib_ss.SALE_OBJECT_CODE = lib_s.SALE_OBJECT_CODE)' +
            ' and'
          ''
          
            '              (lib_s.REQUEST_BRANCH_CODE = lib_srg.REQUEST_BRANC' +
            'H_CODE) and'
          '              (lib_s.REQUEST_NO = lib_srg.REQUEST_NO) and'
          ''
          '              (lib_fo.FIN_PROCESS_CODE = :BND_PROCESS_CODE) and'
          ''
          '              ( (:FIN_ORDER_BRANCH_CODE is null) or'
          
            '                (:FIN_ORDER_BRANCH_CODE = lib_fo.FIN_ORDER_BRANC' +
            'H_CODE)'
          '              ) and'
          ''
          '              ( (:FIN_ORDER_NO is null) or'
          '                (:FIN_ORDER_NO = lib_fo.FIN_ORDER_NO)'
          '              ) and'
          ''
          '              ( (:FIN_MODEL_LINE_TYPE_CODE is null) or'
          
            '                (:FIN_MODEL_LINE_TYPE_CODE = lib_rfml.FIN_MODEL_' +
            'LINE_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:FIN_MODEL_LINE_NO is null) or'
          
            '                (:FIN_MODEL_LINE_NO = lib_rfml.FIN_MODEL_LINE_NO' +
            ')'
          '              ) and'
          ''
          '              ( (:PARTNER_CODE is null) or'
          '                (:PARTNER_CODE = lib_fo.PARTNER_CODE)'
          '              ) and'
          ''
          '              ( (:BASE_DATE is null) or'
          '                (:BASE_DATE = lib_fo.BASE_DATE)'
          '              ) and'
          ''
          '              ( (:DOCUMENT_IDENTIFIER_STATUS is null) or'
          '                (:DOCUMENT_IDENTIFIER_STATUS = 0) or'
          ''
          '                ( (:DOCUMENT_IDENTIFIER_STATUS = 2) and'
          '                  (lib_fo.DOCUMENT_IDENTIFIER is null) and'
          '                  (not exists'
          '                    ( select'
          '                        1'
          '                      from'
          '                        REAL_FIN_MODEL_LINES lib_rfml2'
          '                      where'
          
            '                        (lib_rfml2.FIN_ORDER_CODE = lib_fo.FIN_O' +
            'RDER_CODE) and'
          
            '                        (lib_rfml2.ANNUL_EMPLOYEE_CODE is null) ' +
            'and'
          
            '                        (lib_rfml2.DOCUMENT_IDENTIFIER is not nu' +
            'll)'
          '                    )'
          '                  )'
          '                ) or'
          ''
          '                ( (:DOCUMENT_IDENTIFIER_STATUS = 3) and'
          '                  ( (lib_fo.DOCUMENT_IDENTIFIER is not null) or'
          '                    (exists'
          '                      ( select'
          '                          1'
          '                        from'
          '                          REAL_FIN_MODEL_LINES lib_rfml2'
          '                        where'
          
            '                          (lib_rfml2.FIN_ORDER_CODE = lib_fo.FIN' +
            '_ORDER_CODE) and'
          
            '                          (lib_rfml2.ANNUL_EMPLOYEE_CODE is null' +
            ') and'
          
            '                          (lib_rfml2.DOCUMENT_IDENTIFIER is not ' +
            'null)'
          '                      )'
          '                    )'
          '                  )'
          '                )'
          '              ) and'
          '              '
          '              ( (:DOCUMENT_IDENTIFIER is null) or'
          
            '                (:DOCUMENT_IDENTIFIER = lib_rfml.DOCUMENT_IDENTI' +
            'FIER)'
          '              ) and'
          '              '
          '              ( (:SALE_DEAL_TYPE_CODE is null) or'
          
            '                (:SALE_DEAL_TYPE_CODE = lib_srg.SALE_DEAL_TYPE_C' +
            'ODE)'
          '              ) and'
          ''
          '              ( (:SALE_BRANCH_CODE is null) or'
          '                (:SALE_BRANCH_CODE = lib_s.SALE_BRANCH_CODE)'
          '              ) and'
          ''
          '              ( (:SALE_NO is null) or'
          '                (:SALE_NO = lib_s.SALE_NO)'
          '              ) and'
          ''
          '              ( (:SALE_TYPE_CODE is null) or'
          '                (:SALE_TYPE_CODE = lib_s.SALE_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:SALE_SHIPMENT_NO is null) or'
          '                (:SALE_SHIPMENT_NO = lib_ss.SALE_SHIPMENT_NO)'
          '              )'
          '          )'
          '        )'
          '      ) and'
          '      '
          '      ( (:BND_PROCESS_CODE not in (203, 205)) or'
          '        (exists'
          '          ( select'
          '              1'
          '            from'
          '              REAL_FIN_MODEL_LINES lib_rfml,'
          '              FIN_ORDERS lib_fo,'
          '              DELIVERY_CONTRACTS lib_dc,'
          '              DELIVERY_PROJECTS lib_dp,'
          '              DEFICIT_COVER_DECISIONS lib_dcd'
          '            where'
          
            '              (%1.BND_PROCESS_OBJECT_BRANCH_CODE = lib_rfml.RFML' +
            '_OBJECT_BRANCH_CODE) and'
          
            '              (%1.BND_PROCESS_OBJECT_CODE = lib_rfml.RFML_OBJECT' +
            '_CODE) and'
          ''
          
            '              (lib_rfml.FIN_ORDER_CODE = lib_fo.FIN_ORDER_CODE) ' +
            'and'
          ''
          
            '              (lib_fo.BND_PROCESS_OBJECT_BRANCH_CODE = lib_dc.DE' +
            'LIVERY_OBJECT_BRANCH_CODE) and'
          
            '              (lib_fo.BND_PROCESS_OBJECT_CODE = lib_dc.DELIVERY_' +
            'OBJECT_CODE) and'
          ''
          
            '              (lib_dc.DCD_OBJECT_BRANCH_CODE = lib_dp.DCD_OBJECT' +
            '_BRANCH_CODE) and'
          
            '              (lib_dc.DCD_OBJECT_CODE = lib_dp.DCD_OBJECT_CODE) ' +
            'and'
          
            '              (lib_dc.DELIVERY_PROJECT_CODE = lib_dp.DELIVERY_PR' +
            'OJECT_CODE) and'
          ''
          
            '              (lib_dp.DCD_OBJECT_BRANCH_CODE = lib_dcd.DCD_OBJEC' +
            'T_BRANCH_CODE) and'
          
            '              (lib_dp.DCD_OBJECT_CODE = lib_dcd.DCD_OBJECT_CODE)' +
            ' and'
          ''
          '              (lib_fo.FIN_PROCESS_CODE = :BND_PROCESS_CODE) and'
          ''
          '              ( (:FIN_ORDER_BRANCH_CODE is null) or'
          
            '                (:FIN_ORDER_BRANCH_CODE = lib_fo.FIN_ORDER_BRANC' +
            'H_CODE)'
          '              ) and'
          ''
          '              ( (:FIN_ORDER_NO is null) or'
          '                (:FIN_ORDER_NO = lib_fo.FIN_ORDER_NO)'
          '              ) and'
          ''
          '              ( (:FIN_MODEL_LINE_TYPE_CODE is null) or'
          
            '                (:FIN_MODEL_LINE_TYPE_CODE = lib_rfml.FIN_MODEL_' +
            'LINE_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:FIN_MODEL_LINE_NO is null) or'
          
            '                (:FIN_MODEL_LINE_NO = lib_rfml.FIN_MODEL_LINE_NO' +
            ')'
          '              ) and'
          ''
          '              ( (:PARTNER_CODE is null) or'
          '                (:PARTNER_CODE = lib_fo.PARTNER_CODE)'
          '              ) and'
          ''
          '              ( (:BASE_DATE is null) or'
          '                (:BASE_DATE = lib_fo.BASE_DATE)'
          '              ) and'
          ''
          '              ( (:DOCUMENT_IDENTIFIER_STATUS is null) or'
          '                (:DOCUMENT_IDENTIFIER_STATUS = 0) or'
          ''
          '                ( (:DOCUMENT_IDENTIFIER_STATUS = 2) and'
          '                  (lib_fo.DOCUMENT_IDENTIFIER is null) and'
          '                  (not exists'
          '                    ( select'
          '                        1'
          '                      from'
          '                        REAL_FIN_MODEL_LINES lib_rfml2'
          '                      where'
          
            '                        (lib_rfml2.FIN_ORDER_CODE = lib_fo.FIN_O' +
            'RDER_CODE) and'
          
            '                        (lib_rfml2.ANNUL_EMPLOYEE_CODE is null) ' +
            'and'
          
            '                        (lib_rfml2.DOCUMENT_IDENTIFIER is not nu' +
            'll)'
          '                    )'
          '                  )'
          '                ) or'
          ''
          '                ( (:DOCUMENT_IDENTIFIER_STATUS = 3) and'
          '                  ( (lib_fo.DOCUMENT_IDENTIFIER is not null) or'
          '                    (exists'
          '                      ( select'
          '                          1'
          '                        from'
          '                          REAL_FIN_MODEL_LINES lib_rfml2'
          '                        where'
          
            '                          (lib_rfml2.FIN_ORDER_CODE = lib_fo.FIN' +
            '_ORDER_CODE) and'
          
            '                          (lib_rfml2.ANNUL_EMPLOYEE_CODE is null' +
            ') and'
          
            '                          (lib_rfml2.DOCUMENT_IDENTIFIER is not ' +
            'null)'
          '                      )'
          '                    )'
          '                  )'
          '                )'
          '              ) and'
          '              '
          '              ( (:DOCUMENT_IDENTIFIER is null) or'
          
            '                (:DOCUMENT_IDENTIFIER = lib_rfml.DOCUMENT_IDENTI' +
            'FIER)'
          '              ) and'
          '              '
          '              ( (:DELIVERY_DEAL_TYPE_CODE is null) or'
          
            '                (:DELIVERY_DEAL_TYPE_CODE = lib_dcd.DELIVERY_DEA' +
            'L_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:DCD_BRANCH_CODE is null) or'
          '                (:DCD_BRANCH_CODE = lib_dcd.DCD_BRANCH_CODE)'
          '              ) and'
          ''
          '              ( (:DCD_CODE is null) or'
          '                (:DCD_CODE = lib_dcd.DCD_CODE)'
          '              ) and'
          ''
          '              ( (:DELIVERY_PROJECT_CODE is null) or'
          
            '                (:DELIVERY_PROJECT_CODE = lib_dp.DELIVERY_PROJEC' +
            'T_CODE)'
          '              ) and'
          ''
          '              ( (:DELIVERY_TYPE_CODE is null) or'
          
            '                (:DELIVERY_TYPE_CODE = lib_dc.DELIVERY_TYPE_CODE' +
            ')'
          '              )'
          '          )'
          '        )'
          '      ) and'
          '      '
          '      ( (:BND_PROCESS_CODE not in (206)) or'
          '        (exists'
          '          ( select'
          '              1'
          '            from'
          '              REAL_FIN_MODEL_LINES lib_rfml,'
          '              FIN_ORDERS lib_fo,'
          '              BOI_ORDERS lib_boio,'
          '              BUDGET_ORDERS lib_bo'
          '            where'
          
            '              (%1.BND_PROCESS_OBJECT_BRANCH_CODE = lib_rfml.RFML' +
            '_OBJECT_BRANCH_CODE) and'
          
            '              (%1.BND_PROCESS_OBJECT_CODE = lib_rfml.RFML_OBJECT' +
            '_CODE) and'
          ''
          
            '              (lib_rfml.FIN_ORDER_CODE = lib_fo.FIN_ORDER_CODE) ' +
            'and'
          ''
          
            '              (lib_fo.BND_PROCESS_OBJECT_BRANCH_CODE = lib_boio.' +
            'BOI_ORDER_OBJECT_BRANCH_CODE) and'
          
            '              (lib_fo.BND_PROCESS_OBJECT_CODE = lib_boio.BOI_ORD' +
            'ER_OBJECT_CODE) and'
          ''
          
            '              (lib_boio.BUDGET_ORDER_BRANCH_CODE = lib_bo.BUDGET' +
            '_ORDER_BRANCH_CODE) and'
          
            '              (lib_boio.BUDGET_ORDER_CODE = lib_bo.BUDGET_ORDER_' +
            'CODE) and'
          ''
          '              (lib_fo.FIN_PROCESS_CODE = :BND_PROCESS_CODE) and'
          ''
          '              ( (:FIN_ORDER_BRANCH_CODE is null) or'
          
            '                (:FIN_ORDER_BRANCH_CODE = lib_fo.FIN_ORDER_BRANC' +
            'H_CODE)'
          '              ) and'
          ''
          '              ( (:FIN_ORDER_NO is null) or'
          '                (:FIN_ORDER_NO = lib_fo.FIN_ORDER_NO)'
          '              ) and'
          ''
          '              ( (:FIN_MODEL_LINE_TYPE_CODE is null) or'
          
            '                (:FIN_MODEL_LINE_TYPE_CODE = lib_rfml.FIN_MODEL_' +
            'LINE_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:FIN_MODEL_LINE_NO is null) or'
          
            '                (:FIN_MODEL_LINE_NO = lib_rfml.FIN_MODEL_LINE_NO' +
            ')'
          '              ) and'
          ''
          '              ( (:PARTNER_CODE is null) or'
          '                (:PARTNER_CODE = lib_fo.PARTNER_CODE)'
          '              ) and'
          ''
          '              ( (:BASE_DATE is null) or'
          '                (:BASE_DATE = lib_fo.BASE_DATE)'
          '              ) and'
          ''
          '              ( (:DOCUMENT_IDENTIFIER_STATUS is null) or'
          '                (:DOCUMENT_IDENTIFIER_STATUS = 0) or'
          ''
          '                ( (:DOCUMENT_IDENTIFIER_STATUS = 2) and'
          '                  (lib_fo.DOCUMENT_IDENTIFIER is null) and'
          '                  (not exists'
          '                    ( select'
          '                        1'
          '                      from'
          '                        REAL_FIN_MODEL_LINES lib_rfml2'
          '                      where'
          
            '                        (lib_rfml2.FIN_ORDER_CODE = lib_fo.FIN_O' +
            'RDER_CODE) and'
          
            '                        (lib_rfml2.ANNUL_EMPLOYEE_CODE is null) ' +
            'and'
          
            '                        (lib_rfml2.DOCUMENT_IDENTIFIER is not nu' +
            'll)'
          '                    )'
          '                  )'
          '                ) or'
          ''
          '                ( (:DOCUMENT_IDENTIFIER_STATUS = 3) and'
          '                  ( (lib_fo.DOCUMENT_IDENTIFIER is not null) or'
          '                    (exists'
          '                      ( select'
          '                          1'
          '                        from'
          '                          REAL_FIN_MODEL_LINES lib_rfml2'
          '                        where'
          
            '                          (lib_rfml2.FIN_ORDER_CODE = lib_fo.FIN' +
            '_ORDER_CODE) and'
          
            '                          (lib_rfml2.ANNUL_EMPLOYEE_CODE is null' +
            ') and'
          
            '                          (lib_rfml2.DOCUMENT_IDENTIFIER is not ' +
            'null)'
          '                      )'
          '                    )'
          '                  )'
          '                )'
          '              ) and'
          '              '
          '              ( (:DOCUMENT_IDENTIFIER is null) or'
          
            '                (:DOCUMENT_IDENTIFIER = lib_rfml.DOCUMENT_IDENTI' +
            'FIER)'
          '              ) and'
          '              '
          '              ( (:BUDGET_ORDER_CLASS_CODE is null) or'
          
            '                (:BUDGET_ORDER_CLASS_CODE = lib_bo.BUDGET_ORDER_' +
            'CLASS_CODE)'
          '              ) and'
          ''
          '              ( (:BUDGET_ORDER_BRANCH_CODE is null) or'
          
            '                (:BUDGET_ORDER_BRANCH_CODE = lib_boio.BUDGET_ORD' +
            'ER_BRANCH_CODE)'
          '              ) and'
          ''
          '              ( (:BUDGET_ORDER_CODE is null) or'
          
            '                (:BUDGET_ORDER_CODE = lib_boio.BUDGET_ORDER_CODE' +
            ')'
          '              ) and'
          ''
          '              ( (:BUDGET_ORDER_ITEM_CODE is null) or'
          
            '                (:BUDGET_ORDER_ITEM_CODE = lib_boio.BUDGET_ORDER' +
            '_ITEM_CODE)'
          '              ) and'
          ''
          '              ( (:BOI_ORDER_CODE is null) or'
          '                (:BOI_ORDER_CODE = lib_boio.BOI_ORDER_CODE)'
          '              )'
          '          )'
          '        )'
          '      ) and'
          '      '
          '      ( (:BND_PROCESS_CODE not in (207)) or'
          '        (exists'
          '          ( select'
          '              1'
          '            from'
          '              REAL_FIN_MODEL_LINES lib_rfml,'
          '              FIN_ORDERS lib_fo'
          '            where'
          
            '              (%1.BND_PROCESS_OBJECT_BRANCH_CODE = lib_rfml.RFML' +
            '_OBJECT_BRANCH_CODE) and'
          
            '              (%1.BND_PROCESS_OBJECT_CODE = lib_rfml.RFML_OBJECT' +
            '_CODE) and'
          ''
          
            '              (lib_rfml.FIN_ORDER_CODE = lib_fo.FIN_ORDER_CODE) ' +
            'and'
          ''
          '              (lib_fo.FIN_PROCESS_CODE = :BND_PROCESS_CODE) and'
          ''
          '              ( (:FIN_ORDER_BRANCH_CODE is null) or'
          
            '                (:FIN_ORDER_BRANCH_CODE = lib_fo.FIN_ORDER_BRANC' +
            'H_CODE)'
          '              ) and'
          ''
          '              ( (:FIN_ORDER_NO is null) or'
          '                (:FIN_ORDER_NO = lib_fo.FIN_ORDER_NO)'
          '              ) and'
          ''
          '              ( (:FIN_MODEL_LINE_TYPE_CODE is null) or'
          
            '                (:FIN_MODEL_LINE_TYPE_CODE = lib_rfml.FIN_MODEL_' +
            'LINE_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:FIN_MODEL_LINE_NO is null) or'
          
            '                (:FIN_MODEL_LINE_NO = lib_rfml.FIN_MODEL_LINE_NO' +
            ')'
          '              ) and'
          ''
          '              ( (:FIN_CLASS_CODE is null) or'
          '                (exists'
          '                  ( select'
          '                      1'
          '                    from'
          '                      FIN_CLASS_RELATIONS fcr'
          '                    where'
          
            '                      (fcr.ANCESTOR_FIN_CLASS_CODE = :FIN_CLASS_' +
            'CODE) and'
          
            '                      (fcr.DESCENDANT_FIN_CLASS_CODE = lib_fo.FI' +
            'N_CLASS_CODE)'
          '                  )'
          '                )'
          '              ) and'
          ''
          '              ( (:PARTNER_CODE is null) or'
          '                (:PARTNER_CODE = lib_fo.PARTNER_CODE)'
          '              ) and'
          ''
          '              ( (:BASE_DATE is null) or'
          '                (:BASE_DATE = lib_fo.BASE_DATE)'
          '              ) and'
          ''
          '              ( (:DOCUMENT_IDENTIFIER_STATUS is null) or'
          '                (:DOCUMENT_IDENTIFIER_STATUS = 0) or'
          ''
          '                ( (:DOCUMENT_IDENTIFIER_STATUS = 2) and'
          '                  (lib_fo.DOCUMENT_IDENTIFIER is null) and'
          '                  (not exists'
          '                    ( select'
          '                        1'
          '                      from'
          '                        REAL_FIN_MODEL_LINES lib_rfml2'
          '                      where'
          
            '                        (lib_rfml2.FIN_ORDER_CODE = lib_fo.FIN_O' +
            'RDER_CODE) and'
          
            '                        (lib_rfml2.ANNUL_EMPLOYEE_CODE is null) ' +
            'and'
          
            '                        (lib_rfml2.DOCUMENT_IDENTIFIER is not nu' +
            'll)'
          '                    )'
          '                  )'
          '                ) or'
          ''
          '                ( (:DOCUMENT_IDENTIFIER_STATUS = 3) and'
          '                  ( (lib_fo.DOCUMENT_IDENTIFIER is not null) or'
          '                    (exists'
          '                      ( select'
          '                          1'
          '                        from'
          '                          REAL_FIN_MODEL_LINES lib_rfml2'
          '                        where'
          
            '                          (lib_rfml2.FIN_ORDER_CODE = lib_fo.FIN' +
            '_ORDER_CODE) and'
          
            '                          (lib_rfml2.ANNUL_EMPLOYEE_CODE is null' +
            ') and'
          
            '                          (lib_rfml2.DOCUMENT_IDENTIFIER is not ' +
            'null)'
          '                      )'
          '                    )'
          '                  )'
          '                )'
          '              ) and'
          '              '
          '              ( (:DOCUMENT_IDENTIFIER is null) or'
          
            '                (:DOCUMENT_IDENTIFIER = lib_rfml.DOCUMENT_IDENTI' +
            'FIER)'
          '              )'
          '          )'
          '        )'
          '      ) and'
          '      '
          '      ( (:BND_PROCESS_CODE not in (208, 209)) or'
          '        (exists'
          '          ( select'
          '              1'
          '            from'
          '              REAL_FIN_MODEL_LINES lib_rfml,'
          '              FIN_ORDERS lib_fo'
          '            where'
          
            '              (%1.BND_PROCESS_OBJECT_BRANCH_CODE = lib_rfml.RFML' +
            '_OBJECT_BRANCH_CODE) and'
          
            '              (%1.BND_PROCESS_OBJECT_CODE = lib_rfml.RFML_OBJECT' +
            '_CODE) and'
          ''
          
            '              (lib_rfml.FIN_ORDER_CODE = lib_fo.FIN_ORDER_CODE) ' +
            'and'
          ''
          '              (lib_fo.FIN_PROCESS_CODE = :BND_PROCESS_CODE) and'
          ''
          '              ( (:FIN_ORDER_BRANCH_CODE is null) or'
          
            '                (:FIN_ORDER_BRANCH_CODE = lib_fo.FIN_ORDER_BRANC' +
            'H_CODE)'
          '              ) and'
          ''
          '              ( (:FIN_ORDER_NO is null) or'
          '                (:FIN_ORDER_NO = lib_fo.FIN_ORDER_NO)'
          '              ) and'
          ''
          '              ( (:FIN_MODEL_LINE_TYPE_CODE is null) or'
          
            '                (:FIN_MODEL_LINE_TYPE_CODE = lib_rfml.FIN_MODEL_' +
            'LINE_TYPE_CODE)'
          '              ) and'
          ''
          '              ( (:FIN_MODEL_LINE_NO is null) or'
          
            '                (:FIN_MODEL_LINE_NO = lib_rfml.FIN_MODEL_LINE_NO' +
            ')'
          '              ) and'
          ''
          '              ( (:FIN_CLASS_CODE is null) or'
          '                (exists'
          '                  ( select'
          '                      1'
          '                    from'
          '                      FIN_CLASS_RELATIONS fcr'
          '                    where'
          
            '                      (fcr.ANCESTOR_FIN_CLASS_CODE = :FIN_CLASS_' +
            'CODE) and'
          
            '                      (fcr.DESCENDANT_FIN_CLASS_CODE = lib_fo.FI' +
            'N_CLASS_CODE)'
          '                  )'
          '                )'
          '              ) and'
          ''
          '              ( (:BASE_DATE is null) or'
          '                (:BASE_DATE = lib_fo.BASE_DATE)'
          '              ) and'
          ''
          '              ( (:DOCUMENT_IDENTIFIER_STATUS is null) or'
          '                (:DOCUMENT_IDENTIFIER_STATUS = 0) or'
          ''
          '                ( (:DOCUMENT_IDENTIFIER_STATUS = 2) and'
          '                  (lib_fo.DOCUMENT_IDENTIFIER is null) and'
          '                  (not exists'
          '                    ( select'
          '                        1'
          '                      from'
          '                        REAL_FIN_MODEL_LINES lib_rfml2'
          '                      where'
          
            '                        (lib_rfml2.FIN_ORDER_CODE = lib_fo.FIN_O' +
            'RDER_CODE) and'
          
            '                        (lib_rfml2.ANNUL_EMPLOYEE_CODE is null) ' +
            'and'
          
            '                        (lib_rfml2.DOCUMENT_IDENTIFIER is not nu' +
            'll)'
          '                    )'
          '                  )'
          '                ) or'
          ''
          '                ( (:DOCUMENT_IDENTIFIER_STATUS = 3) and'
          '                  ( (lib_fo.DOCUMENT_IDENTIFIER is not null) or'
          '                    (exists'
          '                      ( select'
          '                          1'
          '                        from'
          '                          REAL_FIN_MODEL_LINES lib_rfml2'
          '                        where'
          
            '                          (lib_rfml2.FIN_ORDER_CODE = lib_fo.FIN' +
            '_ORDER_CODE) and'
          
            '                          (lib_rfml2.ANNUL_EMPLOYEE_CODE is null' +
            ') and'
          
            '                          (lib_rfml2.DOCUMENT_IDENTIFIER is not ' +
            'null)'
          '                      )'
          '                    )'
          '                  )'
          '                )'
          '              ) and'
          '              '
          '              ( (:DOCUMENT_IDENTIFIER is null) or'
          
            '                (:DOCUMENT_IDENTIFIER = lib_rfml.DOCUMENT_IDENTI' +
            'FIER)'
          '              )'
          '          )'
          '        )'
          '      )'
          '    )'
          '  )')
      end
      item
        Name = 'REAL_STORE_DEALS_BND_PROCESS_ADDITIONAL_CONDITION'
        Strings.Strings = (
          '  ( (:BND_PROCESS_CODE is null) or'
          ''
          '    ( (:BND_PROCESS_CODE = %1.BND_PROCESS_CODE) and'
          ''
          '      ( (:BND_PROCESS_CODE not in (20)) or'
          '        (exists'
          '          ( select'
          '              1'
          '            from'
          '              STORE_DEALS lib_sd2'
          '            where'
          
            '              (%1.BND_PROCESS_OBJECT_BRANCH_CODE = lib_sd2.STORE' +
            '_DEAL_OBJECT_BRANCH_CODE) and'
          
            '              (%1.BND_PROCESS_OBJECT_CODE = lib_sd2.STORE_DEAL_O' +
            'BJECT_CODE) and'
          ''
          '              (lib_sd2.STORNO_EMPLOYEE_CODE is null) and'
          '              (lib_sd2.IN_OUT = 1) and'
          ''
          '              ( (:OTHER_STORE_DEAL_STORE_CODE is null) or'
          
            '                (:OTHER_STORE_DEAL_STORE_CODE = lib_sd2.STORE_CO' +
            'DE)'
          '              ) and'
          ''
          '              ( (:OTHER_STORE_DEAL_DATE is null) or'
          
            '                (:OTHER_STORE_DEAL_DATE = lib_sd2.STORE_DEAL_DAT' +
            'E)'
          '              ) and'
          ''
          '              ( (:OTHER_STORE_DEAL_NO is null) or'
          '                (:OTHER_STORE_DEAL_NO = lib_sd2.STORE_DEAL_NO)'
          '              )'
          '          )'
          '        )'
          '      ) and'
          ''
          '      ( (:BND_PROCESS_CODE not in (50)) or'
          '        (exists'
          '          ( select'
          '              1'
          '            from'
          '              STORE_DEALS lib_sd2'
          '            where'
          
            '              (%1.BND_PROCESS_OBJECT_BRANCH_CODE = lib_sd2.STORE' +
            '_DEAL_OBJECT_BRANCH_CODE) and'
          
            '              (%1.BND_PROCESS_OBJECT_CODE = lib_sd2.STORE_DEAL_O' +
            'BJECT_CODE) and'
          ''
          '              (lib_sd2.STORNO_EMPLOYEE_CODE is null) and'
          '              (lib_sd2.IN_OUT = -1) and'
          ''
          '              ( (:OTHER_STORE_DEAL_STORE_CODE is null) or'
          
            '                (:OTHER_STORE_DEAL_STORE_CODE = lib_sd2.STORE_CO' +
            'DE)'
          '              ) and'
          ''
          '              ( (:OTHER_STORE_DEAL_DATE is null) or'
          
            '                (:OTHER_STORE_DEAL_DATE = lib_sd2.STORE_DEAL_DAT' +
            'E)'
          '              ) and'
          ''
          '              ( (:OTHER_STORE_DEAL_NO is null) or'
          '                (:OTHER_STORE_DEAL_NO = lib_sd2.STORE_DEAL_NO)'
          '              )'
          '          )'
          '        )'
          '      ) and'
          ''
          '      ( (:BND_PROCESS_CODE not in (41)) or'
          '        ( ( (:VENDOR_COMPANY_CODE is null) or'
          '            (:VENDOR_COMPANY_CODE = %1.VENDOR_COMPANY_CODE)'
          '          ) and'
          '        '
          '          ( (:INVOICE_NO is null) or'
          '            (:INVOICE_NO = %1.INVOICE_NO)'
          '          ) and'
          ''
          '          ( (:INVOICE_ABBREV is null) or'
          '            (:INVOICE_ABBREV = %1.INVOICE_ABBREV)'
          '          ) and'
          ''
          '          ( (:INVOICE_DATE is null) or'
          '            (:INVOICE_DATE = %1.INVOICE_DATE)'
          '          ) and'
          ''
          '          ( (:IS_PROFORM_INVOICE_STATUS is null) or'
          '            (:IS_PROFORM_INVOICE_STATUS = 0) or'
          ''
          '            ( (:IS_PROFORM_INVOICE_STATUS = 2) and'
          '              (%1.IS_PROFORM_INVOICE = 0)'
          '            ) or'
          ''
          '            ( (:IS_PROFORM_INVOICE_STATUS = 3) and'
          '              (%1.IS_PROFORM_INVOICE = 1)'
          '            )'
          '          )'
          '        )'
          '      )'
          '    )'
          '  )')
      end>
    Left = 464
    Top = 552
  end
  object qryFilteredProcesses: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_INBOUND_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OUTBOUND_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_REAL_STORE_DEAL_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PLAN_STORE_DEAL_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROJ_STORE_DEAL_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_FINANCIAL_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_FINANCIAL_PROCESS'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PROCESS_CODE,'
      '  p.PROCESS_NO,'
      '  p.PROCESS_ABBREV,'
      '  p.PROCESS_NAME,'
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      PROCESS_IN_OUTS pio'
      '    where'
      '      (pio.PROCESS_CODE = p.PROCESS_CODE) and'
      '      (pio.IN_OUT = 1)'
      '  ) as IS_INBOUND_PROCESS,'
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      PROCESS_IN_OUTS pio'
      '    where'
      '      (pio.PROCESS_CODE = p.PROCESS_CODE) and'
      '      (pio.IN_OUT = -1)'
      '  ) as IS_OUTBOUND_PROCESS'
      '  '
      'from'
      '  PROCESSES p'
      'where'
      '  ( ( (:IS_INBOUND_PROCESS = 1) and'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            PROCESS_IN_OUTS pio'
      '          where'
      '            (pio.PROCESS_CODE = p.PROCESS_CODE) and'
      '            (pio.IN_OUT = 1)'
      '        )'
      '      )'
      '    ) or'
      '    ( (:IS_OUTBOUND_PROCESS = 1) and'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            PROCESS_IN_OUTS pio'
      '          where'
      '            (pio.PROCESS_CODE = p.PROCESS_CODE) and'
      '            (pio.IN_OUT = -1)'
      '        )'
      '      )'
      '    )'
      '  ) and'
      '  ( ( (:IS_REAL_STORE_DEAL_PROCESS = 1) and'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            PROCESS_STORE_DEAL_LEVELS psdl'
      '          where'
      '            (psdl.PROCESS_CODE = p.PROCESS_CODE) and'
      '            (psdl.STORE_DEAL_LEVEL_CODE = 1)'
      '        )'
      '      )'
      '    ) or'
      '    ( (:IS_PLAN_STORE_DEAL_PROCESS = 1) and'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            PROCESS_STORE_DEAL_LEVELS psdl'
      '          where'
      '            (psdl.PROCESS_CODE = p.PROCESS_CODE) and'
      '            (psdl.STORE_DEAL_LEVEL_CODE = 2)'
      '        )'
      '      )'
      '    ) or'
      '    ( (:IS_PROJ_STORE_DEAL_PROCESS = 1) and'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            PROCESS_STORE_DEAL_LEVELS psdl'
      '          where'
      '            (psdl.PROCESS_CODE = p.PROCESS_CODE) and'
      '            (psdl.STORE_DEAL_LEVEL_CODE = 3)'
      '        )'
      '      )'
      '    )'
      '  ) and'
      '  ( ( (:IS_FINANCIAL_PROCESS = 1) and'
      '      exists('
      '        select'
      '          1'
      '        from'
      '          FIN_STORE_PROCESSES fp'
      '        where'
      '          (fp.PROCESS_CODE = p.PROCESS_CODE)'
      '      )'
      '    ) or'
      '    ( (:IS_FINANCIAL_PROCESS = 0) and'
      '      exists('
      '        select'
      '          1'
      '        from'
      '          NORMAL_PROCESSES np'
      '        where'
      '          (np.PROCESS_CODE = p.PROCESS_CODE)'
      '      )'
      '    )'
      '  )'
      'order by'
      '  p.PROCESS_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 600
    object qryFilteredProcessesPROCESS_CODE: TAbmesFloatField
      FieldName = 'PROCESS_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFilteredProcessesPROCESS_NO: TAbmesFloatField
      FieldName = 'PROCESS_NO'
    end
    object qryFilteredProcessesPROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'PROCESS_ABBREV'
      Size = 100
    end
    object qryFilteredProcessesPROCESS_NAME: TAbmesWideStringField
      FieldName = 'PROCESS_NAME'
      Size = 100
    end
    object qryFilteredProcessesIS_INBOUND_PROCESS: TAbmesFloatField
      FieldName = 'IS_INBOUND_PROCESS'
    end
    object qryFilteredProcessesIS_OUTBOUND_PROCESS: TAbmesFloatField
      FieldName = 'IS_OUTBOUND_PROCESS'
    end
  end
  object prvFilteredProcesses: TDataSetProvider
    DataSet = qryFilteredProcesses
    UpdateMode = upWhereKeyOnly
    Left = 720
    Top = 552
  end
  object qryFinOrderLineProcessObjectID: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_MODEL_LINE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_MODEL_LINE_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  rfml.RFML_OBJECT_BRANCH_CODE as PROCESS_OBJECT_BRANCH_CODE,'
      '  rfml.RFML_OBJECT_CODE as PROCESS_OBJECT_CODE'
      'from'
      '  REAL_FIN_MODEL_LINES rfml,'
      '  FIN_ORDERS fo'
      'where'
      '  (fo.FIN_ORDER_CODE = rfml.FIN_ORDER_CODE) and'
      '  (fo.FIN_ORDER_BRANCH_CODE = :FIN_ORDER_BRANCH_CODE) and'
      '  (fo.FIN_ORDER_NO = :FIN_ORDER_NO) and'
      '  (fo.ANNUL_EMPLOYEE_CODE is null) and'
      '  (fo.ACTIVATE_EMPLOYEE_CODE is not null) and'
      
        '  (rfml.FIN_MODEL_LINE_TYPE_CODE = :FIN_MODEL_LINE_TYPE_CODE) an' +
        'd'
      '  (rfml.FIN_MODEL_LINE_NO = :FIN_MODEL_LINE_NO)  ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 831
    Top = 192
    object qryFinOrderLineProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryFinOrderLineProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
  end
  object prvFinOrderLineProcessObjectID: TDataSetProvider
    DataSet = qryFinOrderLineProcessObjectID
    Left = 822
    Top = 176
  end
  object qryFinOrderLineProcessObjectCustomID: TAbmesSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'select'
      '  fo.FIN_ORDER_BRANCH_CODE,'
      '  fo.FIN_ORDER_CODE,'
      '  fo.FIN_ORDER_NO,'
      '  rfml.FIN_MODEL_LINE_TYPE_CODE,'
      '  rfml.FIN_MODEL_LINE_NO,'
      ''
      '  fo.PARTNER_CODE,'
      ''
      '  fo.BASE_DATE,'
      ''
      '  ( select'
      '      Sign(Count(*) + Nvl2(fo.DOCUMENT_IDENTIFIER, 1, 0))'
      '    from'
      '      REAL_FIN_MODEL_LINES rfml2'
      '    where'
      '      (rfml2.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      '      (rfml2.ANNUL_EMPLOYEE_CODE is null) and'
      '      (rfml2.DOCUMENT_IDENTIFIER is not null)'
      '  ) as HAS_DOCUMENT,'
      ''
      '  rfml.DOCUMENT_IDENTIFIER,'
      ''
      '  ( select'
      '      ( select'
      '            d.CUSTOM_CODE || '#39' / '#39' || srg.REQUEST_NO'
      '          from'
      '            DEPTS d'
      '          where'
      '            (d.DEPT_CODE = srg.REQUEST_BRANCH_CODE)'
      '      )'
      '    from'
      '      SALE_REQUEST_GROUPS srg'
      '    where'
      
        '      (fo.BND_PROCESS_OBJECT_BRANCH_CODE = srg.SALE_GROUP_OBJECT' +
        '_BRANCH_CODE) and'
      '      (fo.BND_PROCESS_OBJECT_CODE = srg.SALE_GROUP_OBJECT_CODE)'
      '  ) as SALE_ID,'
      ''
      '  ( select'
      '      ( select'
      
        '          d.CUSTOM_CODE || '#39'/'#39' || dcd.DCD_CODE || '#39'/'#39' || dp.DELI' +
        'VERY_PROJECT_CODE || '#39'/'#39' || dt.DELIVERY_TYPE_ABBREV'
      '        from'
      '          DEPTS d,'
      '          DELIVERY_TYPES dt'
      '        where'
      '          (d.DEPT_CODE = dcd.DCD_BRANCH_CODE) and'
      '          (dt.DELIVERY_TYPE_CODE = dc.DELIVERY_TYPE_CODE)'
      '      )'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      DELIVERY_PROJECTS dp,'
      '      DEFICIT_COVER_DECISIONS dcd'
      '    where'
      
        '      (fo.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (fo.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) and'
      
        '      (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '      (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE) and'
      
        '      (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) '
      '  ) as DELIVERY_ID,'
      ''
      '  rfml.RFML_OBJECT_BRANCH_CODE,'
      '  rfml.RFML_OBJECT_CODE'
      ''
      'from'
      '  REAL_FIN_MODEL_LINES rfml,'
      '  FIN_ORDERS fo'
      '  '
      'where'
      
        '  (rfml.RFML_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_COD' +
        'E) and'
      '  (rfml.RFML_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE) and'
      '  (fo.FIN_ORDER_CODE = rfml.FIN_ORDER_CODE) and'
      '  (fo.ANNUL_EMPLOYEE_CODE is null)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 839
    Top = 256
    object qryFinOrderLineProcessObjectCustomIDFIN_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_BRANCH_CODE'
    end
    object qryFinOrderLineProcessObjectCustomIDFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
    end
    object qryFinOrderLineProcessObjectCustomIDFIN_ORDER_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_NO'
    end
    object qryFinOrderLineProcessObjectCustomIDFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
    end
    object qryFinOrderLineProcessObjectCustomIDFIN_MODEL_LINE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_NO'
    end
    object qryFinOrderLineProcessObjectCustomIDPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object qryFinOrderLineProcessObjectCustomIDBASE_DATE: TAbmesSQLTimeStampField
      FieldName = 'BASE_DATE'
    end
    object qryFinOrderLineProcessObjectCustomIDHAS_DOCUMENT: TAbmesFloatField
      FieldName = 'HAS_DOCUMENT'
    end
    object qryFinOrderLineProcessObjectCustomIDDOCUMENT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DOCUMENT_IDENTIFIER'
      Size = 50
    end
    object qryFinOrderLineProcessObjectCustomIDSALE_ID: TAbmesWideStringField
      FieldName = 'SALE_ID'
      Size = 83
    end
    object qryFinOrderLineProcessObjectCustomIDDELIVERY_ID: TAbmesWideStringField
      FieldName = 'DELIVERY_ID'
      Size = 128
    end
    object qryFinOrderLineProcessObjectCustomIDRFML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_BRANCH_CODE'
    end
    object qryFinOrderLineProcessObjectCustomIDRFML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_CODE'
    end
  end
  object prvFinOrderLineProcessObjectCustomID: TDataSetProvider
    DataSet = qryFinOrderLineProcessObjectCustomID
    Left = 822
    Top = 240
  end
  object qrySaleRequestLineID: TAbmesSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'select'
      '  s.SALE_OBJECT_BRANCH_CODE as PROCESS_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE as PROCESS_OBJECT_CODE'
      'from'
      '  SALES s'
      'where'
      '  (s.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_CODE) and'
      '  (s.REQUEST_NO = :REQUEST_NO) and'
      '  (s.REQUEST_LINE_NO = :REQUEST_LINE_NO)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 856
    Top = 320
    object qrySaleRequestLineIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
      Required = True
    end
    object qrySaleRequestLineIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
      Required = True
    end
  end
  object prvSaleRequestLineID: TDataSetProvider
    DataSet = qrySaleRequestLineID
    Left = 856
    Top = 304
  end
  object qrySaleRequestLineCustomID: TAbmesSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'select'
      '  s.REQUEST_BRANCH_CODE,'
      '  s.REQUEST_NO,'
      '  s.REQUEST_LINE_NO,'
      '  s.SALE_DEAL_TYPE_CODE,'
      '  s.SALE_ORDER_TYPE_CODE,'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE'
      ''
      'from'
      '  SALES s'
      'where'
      
        '  (s.SALE_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_CODE) ' +
        'and'
      '  (s.SALE_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 856
    Top = 384
    object qrySaleRequestLineCustomIDREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object qrySaleRequestLineCustomIDREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object qrySaleRequestLineCustomIDREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
    object qrySaleRequestLineCustomIDSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object qrySaleRequestLineCustomIDSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
      Required = True
    end
    object qrySaleRequestLineCustomIDSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      Required = True
    end
    object qrySaleRequestLineCustomIDSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      Required = True
    end
  end
  object prvSaleRequestLineCustomID: TDataSetProvider
    DataSet = qrySaleRequestLineCustomID
    Left = 856
    Top = 368
  end
  object qryNewStoreDealDefaults: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      '  psd.PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  psd.PLANNED_STORE_DEAL_CODE,'
      ''
      '  Decode('
      '    ( select'
      '        Sign(Count(*))'
      '      from'
      '        PROCESS_STORE_DEAL_LEVELS psdl'
      '      where'
      '        (psdl.PROCESS_CODE = psd.BND_PROCESS_CODE) and'
      '        (psdl.STORE_DEAL_LEVEL_CODE = 1)'
      '    ),'
      '    1,'
      '    psd.BND_PROCESS_CODE'
      '  ) as BND_PROCESS_CODE,'
      ''
      '  Decode('
      '    ( select'
      '        Sign(Count(*))'
      '      from'
      '        PROCESS_STORE_DEAL_LEVELS psdl'
      '      where'
      '        (psdl.PROCESS_CODE = psd.BND_PROCESS_CODE) and'
      '        (psdl.STORE_DEAL_LEVEL_CODE = 1)'
      '    ),'
      '    1,'
      '    psd.BND_PROCESS_OBJECT_CODE'
      '  ) as BND_PROCESS_OBJECT_CODE,'
      ''
      '  Decode('
      '    ( select'
      '        Sign(Count(*))'
      '      from'
      '        PROCESS_STORE_DEAL_LEVELS psdl'
      '      where'
      '        (psdl.PROCESS_CODE = psd.BND_PROCESS_CODE) and'
      '        (psdl.STORE_DEAL_LEVEL_CODE = 1)'
      '    ),'
      '    1,'
      '    psd.BND_PROCESS_OBJECT_BRANCH_CODE'
      '  ) as BND_PROCESS_OBJECT_BRANCH_CODE,'
      ''
      '  psd.PRODUCT_CODE,'
      '  psd.REMAINING_QUANTITY as QUANTITY,'
      '  psd.REMAINING_ACCOUNT_QUANTITY as ACCOUNT_QUANTITY,'
      '  psd.REMAINING_QUANTITY as WANTED_QUANTITY,'
      '  To_Number(null) as STORE_CODE'
      ''
      'from'
      '  PLANNED_STORE_DEALS psd'
      ''
      'where'
      
        '  (psd.PLANNED_STORE_DEAL_BRANCH_CODE = :PLANNED_STORE_DEAL_BRAN' +
        'CH_CODE) and'
      '  (psd.PLANNED_STORE_DEAL_CODE = :PLANNED_STORE_DEAL_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 184
    Top = 608
    object qryNewStoreDealDefaultsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
      Required = True
    end
    object qryNewStoreDealDefaultsPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
      Required = True
    end
    object qryNewStoreDealDefaultsBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object qryNewStoreDealDefaultsBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object qryNewStoreDealDefaultsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryNewStoreDealDefaultsQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      Required = True
    end
    object qryNewStoreDealDefaultsACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      Required = True
    end
    object qryNewStoreDealDefaultsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      Required = True
    end
    object qryNewStoreDealDefaultsWANTED_QUANTITY: TAbmesFloatField
      FieldName = 'WANTED_QUANTITY'
      Required = True
    end
    object qryNewStoreDealDefaultsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      Required = True
    end
  end
  object prvNewStoreDealDefaults: TDataSetProvider
    DataSet = qryNewStoreDealDefaults
    Left = 184
    Top = 560
  end
  object qryGetRFMLStoreDealData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'RFML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RFML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  fo.WORK_FINANCIAL_PRODUCT_CODE'
      'from'
      '  REAL_FIN_MODEL_LINES rfml,'
      '  FIN_ORDERS fo'
      'where'
      '  (rfml.RFML_OBJECT_BRANCH_CODE = :RFML_OBJECT_BRANCH_CODE) and'
      '  (rfml.RFML_OBJECT_CODE = :RFML_OBJECT_CODE) and'
      ''
      '  (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      '  (fo.ANNUL_EMPLOYEE_CODE is null)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 328
    Top = 608
    object qryGetRFMLStoreDealDataWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'WORK_FINANCIAL_PRODUCT_CODE'
      Required = True
    end
  end
  object qryGetModelLinePSDDept: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      '  psd.DEPT_CODE'
      'from'
      '  PLANNED_STORE_DEALS psd'
      'where'
      '  (psd.IN_OUT = -1) and'
      '  (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '  (psd.BND_PROCESS_CODE = 61) and  -- ORM OPV'
      
        '  (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (psd.BND_PROCESS_OBJECT_CODE = :MLL_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 848
    Top = 584
    object qryGetModelLinePSDDeptDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
  end
  object mshLocalMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'SD_BND_SALE_OBJECT_BRANCH_CODE'
        Strings.Strings = (
          'Decode('
          '  %1.BND_PROCESS_CODE,'
          '  61,'
          '  ( select'
          '      lib_ml.BND_PROCESS_OBJECT_BRANCH_CODE'
          '    from'
          '      MATERIAL_LIST_LINES lib_mll,'
          '      MATERIAL_LISTS lib_ml'
          '    where'
          
            '      (lib_mll.MLL_OBJECT_BRANCH_CODE = %1.BND_PROCESS_OBJECT_BR' +
            'ANCH_CODE) and'
          '      (lib_mll.MLL_OBJECT_CODE = %1.BND_PROCESS_OBJECT_CODE) and'
          ''
          
            '      (lib_mll.ML_OBJECT_BRANCH_CODE = lib_ml.ML_OBJECT_BRANCH_C' +
            'ODE) and'
          '      (lib_mll.ML_OBJECT_CODE = lib_ml.ML_OBJECT_CODE)'
          '  ),'
          '  62,'
          '  ( select'
          '      lib_ml.BND_PROCESS_OBJECT_BRANCH_CODE'
          '    from'
          '      MLMS_OPERATIONS lib_mlmso,'
          '      ML_MODEL_STAGES lib_mlms,'
          '      MATERIAL_LIST_LINES lib_mll,'
          '      MATERIAL_LISTS lib_ml'
          '    where'
          
            '      (lib_mlmso.MLMSO_OBJECT_BRANCH_CODE = %1.BND_PROCESS_OBJEC' +
            'T_BRANCH_CODE) and'
          
            '      (lib_mlmso.MLMSO_OBJECT_CODE = %1.BND_PROCESS_OBJECT_CODE)' +
            ' and'
          ''
          
            '      (lib_mlmso.MLMS_OBJECT_BRANCH_CODE = lib_mlms.MLMS_OBJECT_' +
            'BRANCH_CODE) and'
          
            '      (lib_mlmso.MLMS_OBJECT_CODE = lib_mlms.MLMS_OBJECT_CODE) a' +
            'nd'
          ''
          
            '      (lib_mlms.MLL_OBJECT_BRANCH_CODE = lib_mll.MLL_OBJECT_BRAN' +
            'CH_CODE) and'
          '      (lib_mlms.MLL_OBJECT_CODE = lib_mll.MLL_OBJECT_CODE) and'
          '              '
          
            '      (lib_mll.ML_OBJECT_BRANCH_CODE = lib_ml.ML_OBJECT_BRANCH_C' +
            'ODE) and'
          '      (lib_mll.ML_OBJECT_CODE = lib_ml.ML_OBJECT_CODE)'
          '  ),'
          '  %1.BND_PROCESS_OBJECT_BRANCH_CODE'
          ')')
      end
      item
        Name = 'SD_BND_SALE_OBJECT_CODE'
        Strings.Strings = (
          'Decode('
          '  %1.BND_PROCESS_CODE,'
          '  61,'
          '  ( select'
          '      lib_ml.BND_PROCESS_OBJECT_CODE'
          '    from'
          '      MATERIAL_LIST_LINES lib_mll,'
          '      MATERIAL_LISTS lib_ml'
          '    where'
          
            '      (lib_mll.MLL_OBJECT_BRANCH_CODE = %1.BND_PROCESS_OBJECT_BR' +
            'ANCH_CODE) and'
          '      (lib_mll.MLL_OBJECT_CODE = %1.BND_PROCESS_OBJECT_CODE) and'
          ''
          
            '      (lib_mll.ML_OBJECT_BRANCH_CODE = lib_ml.ML_OBJECT_BRANCH_C' +
            'ODE) and'
          '      (lib_mll.ML_OBJECT_CODE = lib_ml.ML_OBJECT_CODE)'
          '  ),'
          '  62,'
          '  ( select'
          '      lib_ml.BND_PROCESS_OBJECT_CODE'
          '    from'
          '      MLMS_OPERATIONS lib_mlmso,'
          '      ML_MODEL_STAGES lib_mlms,'
          '      MATERIAL_LIST_LINES lib_mll,'
          '      MATERIAL_LISTS lib_ml'
          '    where'
          
            '      (lib_mlmso.MLMSO_OBJECT_BRANCH_CODE = %1.BND_PROCESS_OBJEC' +
            'T_BRANCH_CODE) and'
          
            '      (lib_mlmso.MLMSO_OBJECT_CODE = %1.BND_PROCESS_OBJECT_CODE)' +
            ' and'
          ''
          
            '      (lib_mlmso.MLMS_OBJECT_BRANCH_CODE = lib_mlms.MLMS_OBJECT_' +
            'BRANCH_CODE) and'
          
            '      (lib_mlmso.MLMS_OBJECT_CODE = lib_mlms.MLMS_OBJECT_CODE) a' +
            'nd'
          ''
          
            '      (lib_mlms.MLL_OBJECT_BRANCH_CODE = lib_mll.MLL_OBJECT_BRAN' +
            'CH_CODE) and'
          '      (lib_mlms.MLL_OBJECT_CODE = lib_mll.MLL_OBJECT_CODE) and'
          '              '
          
            '      (lib_mll.ML_OBJECT_BRANCH_CODE = lib_ml.ML_OBJECT_BRANCH_C' +
            'ODE) and'
          '      (lib_mll.ML_OBJECT_CODE = lib_ml.ML_OBJECT_CODE)'
          '  ),'
          '  %1.BND_PROCESS_OBJECT_CODE'
          ')')
      end>
    Left = 64
    Top = 592
  end
  object qryGetBOIOrderStoreDealData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  boio.PRODUCT_CODE'
      ''
      'from'
      '  BOI_ORDERS boio'
      ''
      'where'
      
        '  (boio.BOI_ORDER_OBJECT_BRANCH_CODE = :BOI_ORDER_OBJECT_BRANCH_' +
        'CODE) and'
      '  (boio.BOI_ORDER_OBJECT_CODE = :BOI_ORDER_OBJECT_CODE) and'
      ''
      '  (boio.ANNUL_EMPLOYEE_CODE is null)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 512
    Top = 608
    object qryGetBOIOrderStoreDealDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
  end
  object qryGetDeliveryData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dp.PRODUCT_CODE,'
      '  (dp.TOTAL_PRICE / dp.ACCOUNT_QUANTITY) as SINGLE_PRICE,'
      '  dp.CURRENCY_CODE'
      'from'
      '  DELIVERY_CONTRACTS dc,'
      '  DELIVERY_PROJECTS dp'
      'where'
      '  (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) and'
      '  (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '  (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE) and'
      ''
      
        '  (dc.DELIVERY_OBJECT_BRANCH_CODE = :DELIVERY_OBJECT_BRANCH_CODE' +
        ') and'
      '  (dc.DELIVERY_OBJECT_CODE = :DELIVERY_OBJECT_CODE)'
      ''
      ''
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 200
    Top = 352
    object qryGetDeliveryDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      Required = True
    end
    object qryGetDeliveryDataSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object qryGetDeliveryDataCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
  end
end
