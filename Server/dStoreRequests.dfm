inherited dmStoreRequests: TdmStoreRequests
  Height = 477
  Width = 612
  object prvStoreRequest: TDataSetProvider
    DataSet = qryStoreRequest
    Options = [poCascadeUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    OnUpdateData = prvStoreRequestUpdateData
    OnUpdateError = prvStoreRequestUpdateError
    AfterUpdateRecord = prvStoreRequestAfterUpdateRecord
    BeforeUpdateRecord = prvStoreRequestBeforeUpdateRecord
    BeforeApplyUpdates = prvStoreRequestBeforeApplyUpdates
    AfterApplyUpdates = prvStoreRequestAfterApplyUpdates
    BeforeGetRecords = prvStoreRequestBeforeGetRecords
    Left = 56
    Top = 8
  end
  object qryStoreRequest: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
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
      end>
    SQL.Strings = (
      'select'
      '  sr.*,'
      '  d.NAME as REQUEST_DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as R' +
        'EQUEST_DEPT_IDENTIFIER,'
      '  po.PROCESS_OBJECT_CLASS_CODE as BND_PROCESS_OBJECT_CLASS_CODE,'
      
        '  poc.PROCESS_OBJECT_CLASS_ABBREV as BND_PROCESS_OBJECT_CLASS_AB' +
        'B,'
      '  po.PROCESS_OBJECT_IDENTIFIER as BND_PROCESS_OBJECT_IDENTIFIER,'
      ''
      '  ( select'
      '      ( Count(*) -'
      '        Count('
      '          ( select'
      '              1'
      '            from'
      '              DUAL'
      '            where'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    STORE_DEALS sd'
      '                  where'
      
        '                    (sd.STORE_REQUEST_BRANCH_CODE = sri.STORE_RE' +
        'QUEST_BRANCH_CODE) and'
      
        '                    (sd.STORE_REQUEST_CODE = sri.STORE_REQUEST_C' +
        'ODE) and'
      
        '                    (sd.STORE_REQUEST_ITEM_CODE = sri.STORE_REQU' +
        'EST_ITEM_CODE) and'
      '                    (sd.STORE_CODE <> :STORE_CODE)'
      '                )'
      '              )'
      '          )'
      '        )'
      '      )'
      '    from'
      '      STORE_REQUEST_ITEMS sri,'
      '      PLANNED_STORE_DEALS psd'
      '    where'
      
        '      (sri.STORE_REQUEST_BRANCH_CODE = sr.STORE_REQUEST_BRANCH_C' +
        'ODE) and'
      '      (sri.STORE_REQUEST_CODE = sr.STORE_REQUEST_CODE) and'
      ''
      
        '      (psd.PLANNED_STORE_DEAL_BRANCH_CODE = sri.PLANNED_STORE_DE' +
        'AL_BRANCH_CODE) and'
      
        '      (psd.PLANNED_STORE_DEAL_CODE = sri.PLANNED_STORE_DEAL_CODE' +
        ') and'
      '      (psd.STORE_CODE <> :STORE_CODE)'
      '  ) as UNFINISHED_OTHER_SRI_COUNT'
      ''
      'from'
      '  STORE_REQUESTS sr,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  PROCESS_OBJECTS po,'
      '  PROCESS_OBJECT_CLASSES poc'
      'where'
      
        '  (sr.STORE_REQUEST_BRANCH_CODE = :STORE_REQUEST_BRANCH_CODE) an' +
        'd'
      '  (sr.STORE_REQUEST_CODE = :STORE_REQUEST_CODE) and'
      '  (sr.REQUEST_DEPT_CODE = d.DEPT_CODE(+)) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      
        '  (sr.BND_PROCESS_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BRANCH_' +
        'CODE(+)) and'
      '  (sr.BND_PROCESS_OBJECT_CODE = po.PROCESS_OBJECT_CODE(+)) and'
      
        '  (po.PROCESS_OBJECT_CLASS_CODE = poc.PROCESS_OBJECT_CLASS_CODE(' +
        '+))'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'STORE_REQUESTS'
    AfterProviderStartTransaction = qryStoreRequestAfterProviderStartTransaction
    BeforeProviderEndTransaction = qryStoreRequestBeforeProviderEndTransaction
    Left = 56
    Top = 56
    object qryStoreRequestSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryStoreRequestSTORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryStoreRequestIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
      ProviderFlags = [pfInUpdate]
    end
    object qryStoreRequestBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryStoreRequestBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryStoreRequestREQUEST_DEPT_CODE: TAbmesFloatField
      FieldName = 'REQUEST_DEPT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryStoreRequestREQUEST_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'REQUEST_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryStoreRequestREQUEST_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_BEGIN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryStoreRequestREQUEST_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_END_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryStoreRequestCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryStoreRequestCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryStoreRequestCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryStoreRequestCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryStoreRequestCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryStoreRequestCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object qryStoreRequestFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryStoreRequestFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryStoreRequestFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
    end
    object qryStoreRequestANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryStoreRequestANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryStoreRequestANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryStoreRequestREQUEST_DEPT_NAME: TAbmesWideStringField
      FieldName = 'REQUEST_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryStoreRequestREQUEST_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'REQUEST_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryStoreRequestBND_PROCESS_OBJECT_CLASS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CLASS_CODE'
      ProviderFlags = []
    end
    object qryStoreRequestBND_PROCESS_OBJECT_CLASS_ABB: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_CLASS_ABB'
      ProviderFlags = []
      Size = 100
    end
    object qryStoreRequestBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
      ProviderFlags = []
      Size = 50
    end
    object qryStoreRequestPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object qryStoreRequestPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object qryStoreRequestPARTNER_ACCOUNT_CODE: TAbmesFloatField
      FieldName = 'PARTNER_ACCOUNT_CODE'
    end
    object qryStoreRequestUNFINISHED_OTHER_SRI_COUNT: TAbmesFloatField
      FieldName = 'UNFINISHED_OTHER_SRI_COUNT'
      ProviderFlags = []
    end
  end
  object qryStoreRequestItems: TAbmesSQLQuery
    BeforeOpen = qryStoreRequestItemsBeforeOpen
    DataSource = dsStoreRequest
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sri.*,'
      '  ('
      '    select'
      '      Sum(sd.QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.STORE_REQUEST_BRANCH_CODE = sri.STORE_REQUEST_BRANCH_C' +
        'ODE) and'
      '      (sd.STORE_REQUEST_CODE = sri.STORE_REQUEST_CODE) and'
      
        '      (sd.STORE_REQUEST_ITEM_CODE = sri.STORE_REQUEST_ITEM_CODE)' +
        ' and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as COMPLETED_QUANTITY,'
      '  ('
      '    select'
      '      Sum(sd.ACCOUNT_QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.STORE_REQUEST_BRANCH_CODE = sri.STORE_REQUEST_BRANCH_C' +
        'ODE) and'
      '      (sd.STORE_REQUEST_CODE = sri.STORE_REQUEST_CODE) and'
      
        '      (sd.STORE_REQUEST_ITEM_CODE = sri.STORE_REQUEST_ITEM_CODE)' +
        ' and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as COMPLETED_ACCOUNT_QUANTITY,'
      '  ('
      '    select'
      '      Sum(sd.TOTAL_PRICE)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.STORE_REQUEST_BRANCH_CODE = sri.STORE_REQUEST_BRANCH_C' +
        'ODE) and'
      '      (sd.STORE_REQUEST_CODE = sri.STORE_REQUEST_CODE) and'
      
        '      (sd.STORE_REQUEST_ITEM_CODE = sri.STORE_REQUEST_ITEM_CODE)' +
        ' and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as TOTAL_PRICE,'
      '  sd.STORE_DEAL_OBJECT_BRANCH_CODE,'
      '  sd.STORE_DEAL_OBJECT_CODE,'
      '  ( select'
      '      pro.PROCESS_ABBREV'
      '    from'
      '      PROCESSES pro'
      '    where'
      '      (pro.PROCESS_CODE = psd.BND_PROCESS_CODE)'
      '  ) as BND_PROCESS_ABBREV,'
      ''
      '  Decode(psd.BND_PROCESS_CODE,'
      '    190,  -- OLBS'
      '    ( select'
      '        boc.BUDGET_ORDER_CLASS_ABBREV || '#39' / '#39' ||'
      '        b.CUSTOM_CODE || '#39' / '#39' ||'
      '        boio.BUDGET_ORDER_CODE || '#39' / '#39' ||'
      '        boio.BUDGET_ORDER_ITEM_CODE  || '#39' / '#39' ||'
      '        boit.BUDGET_ORDER_ITEM_TYPE_ABBREV || '#39' / '#39' ||'
      '        boio.BOI_ORDER_CODE'
      '      from'
      '        BOI_ORDERS boio,'
      '        BRANCHES b,'
      '        BUDGET_ORDER_ITEMS boi,'
      '        BUDGET_ORDER_ITEM_TYPES boit,'
      '        BUDGET_ORDERS bo,'
      '        BUDGET_ORDER_CLASSES boc'
      '      where'
      
        '        (boio.BOI_ORDER_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '        (boio.BOI_ORDER_OBJECT_CODE = psd.BND_PROCESS_OBJECT_COD' +
        'E) and'
      ''
      '        (boio.BUDGET_ORDER_BRANCH_CODE = b.BRANCH_CODE) and'
      ''
      
        '        (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH' +
        '_CODE) and'
      '        (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '        (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM_COD' +
        'E) and'
      ''
      
        '        (boi.BUDGET_ORDER_ITEM_TYPE_CODE = boit.BUDGET_ORDER_ITE' +
        'M_TYPE_CODE) and'
      ''
      
        '        (boi.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '        (boi.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE) and'
      ''
      
        '        (bo.BUDGET_ORDER_CLASS_CODE = boc.BUDGET_ORDER_CLASS_COD' +
        'E)'
      '    ),'
      '    po.PROCESS_OBJECT_IDENTIFIER'
      '  ) as PROCESS_OBJECT_IDENTIFIER,'
      ''
      '  Decode(psd.BND_PROCESS_CODE,'
      '    190,  -- OLBS'
      '    ( select'
      '        p.CUSTOM_CODE'
      '      from'
      '        BOI_ORDERS boio,'
      '        BUDGET_ORDERS bo,'
      '        PRODUCTS p'
      '      where'
      
        '        (boio.BOI_ORDER_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '        (boio.BOI_ORDER_OBJECT_CODE = psd.BND_PROCESS_OBJECT_COD' +
        'E) and'
      ''
      
        '        (boio.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRANCH_' +
        'CODE) and'
      '        (boio.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE) and'
      ''
      '        (bo.PRODUCT_CODE = p.PRODUCT_CODE(+))'
      '    )'
      '  ) as BND_BOIO_BO_PROD_CUSTOM_CODE,'
      ''
      '  Decode(psd.BND_PROCESS_CODE,'
      '    190,  -- OLBS'
      '    ( select'
      '        p.NAME'
      '      from'
      '        BOI_ORDERS boio,'
      '        BUDGET_ORDERS bo,'
      '        PRODUCTS p'
      '      where'
      
        '        (boio.BOI_ORDER_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '        (boio.BOI_ORDER_OBJECT_CODE = psd.BND_PROCESS_OBJECT_COD' +
        'E) and'
      ''
      
        '        (boio.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRANCH_' +
        'CODE) and'
      '        (boio.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE) and'
      ''
      '        (bo.PRODUCT_CODE = p.PRODUCT_CODE(+))'
      '    )'
      '  ) as BND_BOIO_BO_PRODUCT_NAME,'
      ''
      '  Decode(psd.BND_PROCESS_CODE,'
      '    190,  -- OLBS'
      '    ( select'
      '        %DEPT_IDENTIFIER[boio.CONSUMER_DEPT_CODE]'
      '      from'
      '        BOI_ORDERS boio'
      '      where'
      
        '        (boio.BOI_ORDER_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '        (boio.BOI_ORDER_OBJECT_CODE = psd.BND_PROCESS_OBJECT_COD' +
        'E)'
      '    )'
      '  ) as BND_BOIO_CONSUMER_DEPT_ID,'
      ''
      '  psd.PRIORITY_CODE,'
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      PRIORITIES p'
      '    where'
      '      (p.PRIORITY_CODE = psd.PRIORITY_CODE)'
      '  ) as PRIORITY_NO,'
      '  ( select'
      '      p.PRIORITY_NO || '#39'    '#39' || p.PRIORITY_NAME'
      '    from'
      '      PRIORITIES p'
      '    where'
      '      (p.PRIORITY_CODE = psd.PRIORITY_CODE)'
      '  ) as PRIORITY_FULL_NAME,'
      '  psd.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  psd.BND_PROCESS_OBJECT_CODE,'
      '  psd.BND_PROCESS_CODE,'
      '  Coalesce(sd.PRODUCT_CODE, psd.PRODUCT_CODE) as PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  m.MEASURE_ABBREV,'
      '  am.MEASURE_ABBREV as ACCOUNT_MEASURE_ABBREV,'
      '  psd.STORE_CODE,'
      ''
      '  ('
      '    select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        'as STORE_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (d.DEPT_CODE = psd.STORE_CODE)'
      '  ) as STORE_IDENTIFIER,'
      ''
      '  psd.DEPT_CODE as PSD_DEPT_CODE,'
      ''
      '  sd.OTHER_EMPLOYEE_CODE,'
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      EMPLOYEES e,'
      '      COMPANIES c'
      '    where'
      '      (e.EMPLOYEE_CODE = sd.OTHER_EMPLOYEE_CODE) and'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as OTHER_EMPLOYEE_NO,'
      '  (psd.ACCOUNT_QUANTITY / psd.QUANTITY) as ACCOUNT_COEF,'
      ''
      '  Decode(psd.BND_PROCESS_CODE, :DELIVERY_PROCESS_CODE,'
      '    ( select'
      '        (dpr.TOTAL_PRICE / dpr.ACCOUNT_QUANTITY) as SINGLE_PRICE'
      '      from'
      '        DELIVERY_CONTRACTS dc,'
      '        DELIVERY_PROJECTS dpr'
      '      where'
      
        '        (dc.DELIVERY_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '        (dc.DELIVERY_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      ''
      
        '        (dpr.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE)' +
        ' and'
      '        (dpr.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      '        (dpr.DELIVERY_PROJECT_CODE = dc.DELIVERY_PROJECT_CODE)'
      '    ),'
      
        '    %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[psd.PRODUCT_CODE ~ ContextD' +
        'ate]'
      '  ) as SINGLE_PRICE,'
      ''
      '  Decode(psd.BND_PROCESS_CODE, :DELIVERY_PROCESS_CODE,'
      '    ( select'
      '        dpr.CURRENCY_CODE'
      '      from'
      '        DELIVERY_CONTRACTS dc,'
      '        DELIVERY_PROJECTS dpr'
      '      where'
      
        '        (dc.DELIVERY_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '        (dc.DELIVERY_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      ''
      
        '        (dpr.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE)' +
        ' and'
      '        (dpr.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      '        (dpr.DELIVERY_PROJECT_CODE = dc.DELIVERY_PROJECT_CODE)'
      '    ),'
      
        '    ( select iv.BASE_CURRENCY_CODE from INTERNAL_VALUES iv where' +
        ' (iv.CODE = 1) )'
      '  ) as CURRENCY_CODE,'
      ''
      '  ('
      '    select'
      '      Sign(Count(*))'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.STORE_REQUEST_BRANCH_CODE = sri.STORE_REQUEST_BRANCH_C' +
        'ODE) and'
      '      (sd.STORE_REQUEST_CODE = sri.STORE_REQUEST_CODE) and'
      
        '      (sd.STORE_REQUEST_ITEM_CODE = sri.STORE_REQUEST_ITEM_CODE)' +
        ' and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as HAS_OLD_COMPLETED_QUANTITY,'
      ''
      '  Nvl2(psd.ANNUL_EMPLOYEE_CODE, 1, 0) as ANNULED_PSD,'
      '  Nvl2(psd.CLOSE_EMPLOYEE_CODE, 1, 0) as CLOSED_PSD,'
      '  sd.STORE_DEAL_DATE,'
      '  sd.STORE_DEAL_NO,'
      '  sd.ACCOUNT_QUANTITY as STORE_DEAL_ACCOUNT_QUANTITY,'
      '  sd.TOTAL_PRICE as STORE_DEAL_TOTAL_PRICE,'
      '  (sd.TOTAL_PRICE * cr.FIXING) as STORE_DEAL_BASE_TOTAL_PRICE,'
      '  sd.CURRENCY_CODE as STORE_DEAL_CURRENCY_CODE,'
      '  c.CURRENCY_ABBREV as STORE_DEAL_CURRENCY_ABBREV,'
      '  sd.STORE_EMPLOYEE_CODE as STORE_DEAL_STORE_EMPLOYEE_CODE,'
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      EMPLOYEES e,'
      '      COMPANIES c'
      '    where'
      '      (e.EMPLOYEE_CODE = sd.STORE_EMPLOYEE_CODE) and'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as STORE_DEAL_STORE_EMPLOYEE_NO,'
      '  sd.VENDOR_COMPANY_CODE as STORE_DEAL_VENDOR_COMPANY_CODE,'
      ''
      '  ( select'
      '      %GET_PARTNER_NAME[dpr.VENDOR_COMPANY_CODE]'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      DELIVERY_PROJECTS dpr'
      '    where'
      '      (psd.BND_PROCESS_CODE = :DELIVERY_PROCESS_CODE) and'
      ''
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      ''
      
        '      (dpr.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dpr.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      '      (dpr.DELIVERY_PROJECT_CODE = dc.DELIVERY_PROJECT_CODE)'
      '  ) as STORE_DEAL_VENDOR_COMPANY_NAME,'
      ''
      '  ( select'
      '      dc.INVOICE_NO'
      '    from'
      '      DELIVERY_CONTRACTS dc'
      '    where'
      '      (psd.BND_PROCESS_CODE = :DELIVERY_PROCESS_CODE) and'
      ''
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE)'
      '  ) as STORE_DEAL_INVOICE_NO,'
      ''
      '  ( select'
      '      dc.INVOICE_ABBREV'
      '    from'
      '      DELIVERY_CONTRACTS dc'
      '    where'
      '      (psd.BND_PROCESS_CODE = :DELIVERY_PROCESS_CODE) and'
      ''
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE)'
      '  ) as STORE_DEAL_INVOICE_ABBREV,'
      ''
      '  ( select'
      '      dc.INVOICE_DATE'
      '    from'
      '      DELIVERY_CONTRACTS dc'
      '    where'
      '      (psd.BND_PROCESS_CODE = :DELIVERY_PROCESS_CODE) and'
      ''
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE)'
      '  ) as STORE_DEAL_INVOICE_DATE,'
      ''
      '  Nvl2(sd.STORNO_EMPLOYEE_CODE, 1, 0) as STORE_DEAL_STORNED,'
      '  po2.PROCESS_OBJECT_IDENTIFIER as STORE_DEAL_IDENTIFIER,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as S' +
        'D_ML_MAIN_DEPT_IDENTIFIER,'
      '  psd.STORE_DEAL_BEGIN_DATE as PSD_BEGIN_DATE,'
      '  psd.STORE_DEAL_END_DATE as PSD_END_DATE,'
      '  p.ACCOUNT_MEASURE_COEF,'
      ''
      
        '  Decode(psd.BND_PROCESS_CODE, :DELIVERY_PROCESS_CODE, 1, 0) as ' +
        'IS_BOUND_TO_DELIVERY,'
      ''
      '  psd.IN_OUT,'
      ''
      '  Decode(psd.BND_PROCESS_CODE,'
      '    61,  -- ORM OPW'
      '    ( select'
      '        pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        MATERIAL_LISTS ml,'
      '        SALES s,'
      '        PRODUCTION_ORDER_TYPES pot'
      '      where'
      
        '        (mll.MLL_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE) and'
      '        (mll.MLL_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      ''
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '        (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '        (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_TYP' +
        'E_CODE)'
      '    ),'
      '    60,  -- Final OPW'
      '    ( select'
      '        pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '      from'
      '        SALES s,'
      '        PRODUCTION_ORDER_TYPES pot'
      '      where'
      
        '        (s.SALE_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANC' +
        'H_CODE) and'
      '        (s.SALE_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      ''
      
        '        (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_TYP' +
        'E_CODE)'
      '    ),'
      '    62,  -- KOpC'
      '    ( select'
      '        pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '      from'
      '        MLMS_OPERATIONS mlmso,'
      '        ML_MODEL_STAGES mlms,'
      '        MATERIAL_LIST_LINES mll,'
      '        MATERIAL_LISTS ml,'
      '        SALES s,'
      '        PRODUCTION_ORDER_TYPES pot'
      '      where'
      
        '        (mlmso.MLMSO_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (mlmso.MLMSO_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      ''
      
        '        (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '        (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      ''
      
        '        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '        (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '        (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_TYP' +
        'E_CODE)'
      '    )'
      '  ) as BND_PO_PROD_ORDER_TYPE_ABBREV,'
      ''
      '  Decode(psd.BND_PROCESS_CODE,'
      '    61,  -- ORM OPW'
      '    ( select'
      '        %ROOT_SALE_PRODUCT_IF_FOR_PROJECT[s]'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        MATERIAL_LISTS ml,'
      '        SALES s'
      '      where'
      
        '        (mll.MLL_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE) and'
      '        (mll.MLL_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      ''
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '        (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)'
      '    ),'
      '    60,  -- Final OPW'
      '    ( select'
      '        %ROOT_SALE_PRODUCT_IF_FOR_PROJECT[s]'
      '      from'
      '        SALES s'
      '      where'
      
        '        (s.SALE_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANC' +
        'H_CODE) and'
      '        (s.SALE_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE)'
      '    ),'
      '    62,  -- KOpC'
      '    ( select'
      '        %ROOT_SALE_PRODUCT_IF_FOR_PROJECT[s]'
      '      from'
      '        MLMS_OPERATIONS mlmso,'
      '        ML_MODEL_STAGES mlms,'
      '        MATERIAL_LIST_LINES mll,'
      '        MATERIAL_LISTS ml,'
      '        SALES s'
      '      where'
      
        '        (mlmso.MLMSO_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (mlmso.MLMSO_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      ''
      
        '        (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '        (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      ''
      
        '        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '        (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)'
      '    )'
      '  ) as ROOT_SALE_PRODUCT_IF_FOR_PROJ,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      MATERIAL_LISTS ml'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJEC' +
        'T_BRANCH_CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE)'
      '  ) as IS_PSD_BOUND_TO_MODEL,'
      ''
      '  psd.QUANTITY as PSD_QUANTITY,'
      '  psd.REMAINING_QUANTITY as PSD_REMAINING_QUANTITY,'
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
      '  STORE_REQUEST_ITEMS sri,'
      '  PLANNED_STORE_DEALS psd,'
      '  PRODUCTS p,'
      '  MEASURES m,'
      '  MEASURES am,'
      '  PROCESS_OBJECTS po,'
      '  STORE_DEALS sd,'
      '  PROCESS_OBJECTS po2,'
      '  CURRENCIES c,'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  CURRENCY_RATES cr'
      ''
      'where'
      
        '  (sri.STORE_REQUEST_BRANCH_CODE = :STORE_REQUEST_BRANCH_CODE) a' +
        'nd'
      '  (sri.STORE_REQUEST_CODE = :STORE_REQUEST_CODE) and'
      ''
      '  ( (:STORE_CODE = 0) or'
      '    (psd.STORE_CODE = :STORE_CODE) ) and'
      ''
      
        '  (psd.PLANNED_STORE_DEAL_BRANCH_CODE = sri.PLANNED_STORE_DEAL_B' +
        'RANCH_CODE) and'
      
        '  (psd.PLANNED_STORE_DEAL_CODE = sri.PLANNED_STORE_DEAL_CODE) an' +
        'd'
      ''
      
        '  (Coalesce(sd.PRODUCT_CODE, psd.PRODUCT_CODE) = p.PRODUCT_CODE)' +
        ' and'
      ''
      '  (p.MEASURE_CODE = m.MEASURE_CODE(+)) and'
      ''
      '  (p.ACCOUNT_MEASURE_CODE = am.MEASURE_CODE(+)) and'
      ''
      
        '  (psd.BND_PROCESS_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BRANCH' +
        '_CODE(+)) and'
      '  (psd.BND_PROCESS_OBJECT_CODE = po.PROCESS_OBJECT_CODE(+)) and'
      ''
      
        '  (sri.STORE_REQUEST_BRANCH_CODE = sd.STORE_REQUEST_BRANCH_CODE(' +
        '+)) and'
      '  (sri.STORE_REQUEST_CODE = sd.STORE_REQUEST_CODE(+)) and'
      
        '  (sri.STORE_REQUEST_ITEM_CODE = sd.STORE_REQUEST_ITEM_CODE(+)) ' +
        'and'
      ''
      
        '  (sd.STORE_DEAL_OBJECT_BRANCH_CODE = po2.PROCESS_OBJECT_BRANCH_' +
        'CODE(+)) and'
      '  (sd.STORE_DEAL_OBJECT_CODE = po2.PROCESS_OBJECT_CODE(+)) and'
      '  (sd.STORNO_EMPLOYEE_CODE(+) is null) and'
      ''
      '  (sd.CURRENCY_CODE = c.CURRENCY_CODE(+)) and'
      ''
      
        '  (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_COD' +
        'E(+)) and'
      '  (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE(+)) and'
      ''
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE(+)) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE(+)) and'
      ''
      '  (ml.MAIN_DEPT_CODE = d.DEPT_CODE(+)) and'
      ''
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      ''
      '  (sd.CURRENCY_CODE = cr.CURRENCY_CODE(+)) and'
      '  (sd.STORE_DEAL_DATE = cr.RATE_DATE(+))'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'DEPT_IDENTIFIER[boio.CONSUMER_DEPT_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[psd.PRODUCT_CODE ~ ContextDate]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'GET_PARTNER_NAME[dpr.VENDOR_COMPANY_CODE]'
        ParamType = ptInput
        Value = #39'abc'#39
      end
      item
        DataType = ftWideString
        Name = 'ROOT_SALE_PRODUCT_IF_FOR_PROJECT[s]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[dp]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'STORE_REQUEST_ITEMS'
    Left = 56
    Top = 152
    object qryStoreRequestItemsSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryStoreRequestItemsSTORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryStoreRequestItemsSTORE_REQUEST_ITEM_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryStoreRequestItemsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryStoreRequestItemsPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryStoreRequestItemsREQUEST_QUANTITY: TAbmesFloatField
      FieldName = 'REQUEST_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryStoreRequestItemsCOMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_QUANTITY'
      ProviderFlags = []
    end
    object qryStoreRequestItemsCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_ACCOUNT_QUANTITY'
      ProviderFlags = []
    end
    object qryStoreRequestItemsTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSTORE_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_CODE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsBND_PROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PROCESS_ABBREV'
      ProviderFlags = []
      Size = 100
    end
    object qryStoreRequestItemsPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      ProviderFlags = []
      Size = 235
    end
    object qryStoreRequestItemsPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
      ProviderFlags = []
    end
    object qryStoreRequestItemsPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      ProviderFlags = []
      Size = 94
    end
    object qryStoreRequestItemsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryStoreRequestItemsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryStoreRequestItemsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryStoreRequestItemsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryStoreRequestItemsACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsOTHER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OTHER_EMPLOYEE_CODE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsACCOUNT_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_COEF'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsHAS_OLD_COMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'HAS_OLD_COMPLETED_QUANTITY'
      ProviderFlags = []
    end
    object qryStoreRequestItemsANNULED_PSD: TAbmesFloatField
      FieldName = 'ANNULED_PSD'
      ProviderFlags = []
    end
    object qryStoreRequestItemsCLOSED_PSD: TAbmesFloatField
      FieldName = 'CLOSED_PSD'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSTORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_DATE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSTORE_DEAL_NO: TAbmesFloatField
      FieldName = 'STORE_DEAL_NO'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSTORE_DEAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'STORE_DEAL_ACCOUNT_QUANTITY'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSTORE_DEAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'STORE_DEAL_TOTAL_PRICE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSTORE_DEAL_BASE_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'STORE_DEAL_BASE_TOTAL_PRICE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSTORE_DEAL_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_CURRENCY_CODE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSTORE_DEAL_CURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'STORE_DEAL_CURRENCY_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryStoreRequestItemsSTORE_DEAL_STORE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_STORE_EMPLOYEE_CODE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSTORE_DEAL_STORNED: TAbmesFloatField
      FieldName = 'STORE_DEAL_STORNED'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSTORE_DEAL_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_DEAL_IDENTIFIER'
      ProviderFlags = []
      Size = 50
    end
    object qryStoreRequestItemsSTORE_DEAL_VENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_VENDOR_COMPANY_CODE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSTORE_DEAL_VENDOR_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'STORE_DEAL_VENDOR_COMPANY_NAME'
      ProviderFlags = []
      Size = 153
    end
    object qryStoreRequestItemsSTORE_DEAL_INVOICE_NO: TAbmesFloatField
      FieldName = 'STORE_DEAL_INVOICE_NO'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSTORE_DEAL_INVOICE_ABBREV: TAbmesWideStringField
      FieldName = 'STORE_DEAL_INVOICE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryStoreRequestItemsSTORE_DEAL_INVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_INVOICE_DATE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSD_ML_MAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SD_ML_MAIN_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryStoreRequestItemsPSD_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PSD_BEGIN_DATE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsPSD_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PSD_END_DATE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsIS_BOUND_TO_DELIVERY: TAbmesFloatField
      FieldName = 'IS_BOUND_TO_DELIVERY'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryStoreRequestItemsPSD_DEPT_CODE: TAbmesFloatField
      FieldName = 'PSD_DEPT_CODE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsOTHER_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'OTHER_EMPLOYEE_NO'
      ProviderFlags = []
    end
    object qryStoreRequestItemsSTORE_DEAL_STORE_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'STORE_DEAL_STORE_EMPLOYEE_NO'
      ProviderFlags = []
    end
    object qryStoreRequestItemsIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
      ProviderFlags = []
    end
    object qryStoreRequestItemsBND_PO_PROD_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PO_PROD_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object qryStoreRequestItemsBND_BOIO_BO_PROD_CUSTOM_CODE: TAbmesFloatField
      FieldName = 'BND_BOIO_BO_PROD_CUSTOM_CODE'
    end
    object qryStoreRequestItemsBND_BOIO_BO_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BND_BOIO_BO_PRODUCT_NAME'
      Size = 100
    end
    object qryStoreRequestItemsROOT_SALE_PRODUCT_IF_FOR_PROJ: TAbmesWideStringField
      FieldName = 'ROOT_SALE_PRODUCT_IF_FOR_PROJ'
      Size = 250
    end
    object qryStoreRequestItemsBND_BOIO_CONSUMER_DEPT_ID: TAbmesWideStringField
      FieldName = 'BND_BOIO_CONSUMER_DEPT_ID'
      Size = 46
    end
    object qryStoreRequestItemsIS_PSD_BOUND_TO_MODEL: TAbmesFloatField
      FieldName = 'IS_PSD_BOUND_TO_MODEL'
      ProviderFlags = []
    end
    object qryStoreRequestItemsPSD_QUANTITY: TAbmesFloatField
      FieldName = 'PSD_QUANTITY'
      ProviderFlags = []
    end
    object qryStoreRequestItemsPSD_REMAINING_QUANTITY: TAbmesFloatField
      FieldName = 'PSD_REMAINING_QUANTITY'
      ProviderFlags = []
    end
    object qryStoreRequestItemsDELIVERY_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsDELIVERY_DOC_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DOC_CODE'
      ProviderFlags = []
    end
    object qryStoreRequestItemsDELIVERY_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'DELIVERY_HAS_DOC_ITEMS'
      ProviderFlags = []
    end
  end
  object dsStoreRequest: TDataSource
    DataSet = qryStoreRequest
    Left = 56
    Top = 104
  end
  object qryMaxStoreRequestCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(STORE_REQUEST_CODE) as MAX_STORE_REQUEST_CODE'
      'from'
      '  STORE_REQUESTS'
      'where'
      '  (STORE_REQUEST_BRANCH_CODE = :STORE_REQUEST_BRANCH_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 8
    object qryMaxStoreRequestCodeMAX_STORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'MAX_STORE_REQUEST_CODE'
    end
  end
  object prvStoreRequestPlannedStoreDeals: TDataSetProvider
    DataSet = qryStoreRequestPlannedStoreDeals
    UpdateMode = upWhereKeyOnly
    OnGetData = prvStoreRequestPlannedStoreDealsGetData
    Left = 208
    Top = 8
  end
  object prvStoreRequests: TDataSetProvider
    DataSet = qryStoreRequests
    Left = 56
    Top = 224
  end
  object qryStoreRequests: TAbmesSQLQuery
    BeforeOpen = qryStoreRequestsBeforeOpen
    AfterClose = qryStoreRequestsAfterClose
    MaxBlobSize = -1
    Params = <
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
        Name = 'PRODUCT_CLASS_CODE'
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
        Name = 'REQUEST_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_FINISHED'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_FINISHED'
        ParamType = ptInput
        Value = '1'
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
        Name = 'PSD_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PSD_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PSD_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PSD_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sr.STORE_REQUEST_BRANCH_CODE,'
      '  sr.STORE_REQUEST_CODE,'
      
        '  (b.CUSTOM_CODE || '#39' / '#39' || sr.STORE_REQUEST_CODE) as STORE_REQ' +
        'UEST_IDENTIFIER,'
      '  sr.IN_OUT,'
      '  sr.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  sr.BND_PROCESS_OBJECT_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE) and'
      '      (d.DEPT_CODE = sr.REQUEST_DEPT_CODE)'
      '  ) as REQUEST_DEPT,'
      ''
      
        '  (e.FIRST_NAME || '#39' '#39' || SubStr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39' ||' +
        ' e.LAST_NAME) as REQUEST_EMPLOYEE_NAME,'
      ''
      '  sr.REQUEST_BEGIN_DATE,'
      '  sr.REQUEST_END_DATE,'
      
        '  poc.PROCESS_OBJECT_CLASS_ABBREV as BND_PROCESS_OBJECT_CLASS_AB' +
        'B,'
      '  po.PROCESS_OBJECT_IDENTIFIER as BND_PROCESS_OBJECT_IDENTIFIER,'
      ''
      '  Nvl2(sr.FINISH_EMPLOYEE_CODE, 1, 0) as IS_FINISHED,'
      '  Nvl2(sr.ANNUL_EMPLOYEE_CODE, 1, 0) as IS_ANNULED,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      STORE_REQUEST_ITEMS sri'
      '    where'
      
        '      (sri.STORE_REQUEST_BRANCH_CODE = sr.STORE_REQUEST_BRANCH_C' +
        'ODE) and'
      '      (sri.STORE_REQUEST_CODE = sr.STORE_REQUEST_CODE)'
      '  ) as TOTAL_STORE_REQUEST_ITEMS,'
      ''
      '  ( select'
      '      ( Count(*) -'
      '        Count('
      '          ( select'
      '              1'
      '            from'
      '              DUAL'
      '            where'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    STORE_DEALS sd'
      '                  where'
      
        '                    (sd.STORE_REQUEST_BRANCH_CODE = sri.STORE_RE' +
        'QUEST_BRANCH_CODE) and'
      
        '                    (sd.STORE_REQUEST_CODE = sri.STORE_REQUEST_C' +
        'ODE) and'
      
        '                    (sd.STORE_REQUEST_ITEM_CODE = sri.STORE_REQU' +
        'EST_ITEM_CODE)'
      '                )'
      '              )'
      '          )'
      '        )'
      '      )'
      '    from'
      '      STORE_REQUEST_ITEMS sri'
      '    where'
      
        '      (sri.STORE_REQUEST_BRANCH_CODE = sr.STORE_REQUEST_BRANCH_C' +
        'ODE) and'
      '      (sri.STORE_REQUEST_CODE = sr.STORE_REQUEST_CODE)'
      '  ) as UNFINISHED_STORE_REQUEST_ITEMS,'
      ''
      '  sr.PRODUCT_CLASS_CODE,'
      ''
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = sr.PARTNER_CODE)'
      '  ) as PARTNER_SHORT_NAME'
      ''
      'from'
      '  STORE_REQUESTS sr,'
      '  DEPTS b,'
      '  EMPLOYEES e,'
      '  PROCESS_OBJECTS po,'
      '  PROCESS_OBJECT_CLASSES poc'
      ''
      'where'
      '  (sr.STORE_REQUEST_BRANCH_CODE = b.DEPT_CODE) and'
      '  (sr.REQUEST_EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '  (sr.BND_PROCESS_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BRANCH_' +
        'CODE(+)) and'
      '  (sr.BND_PROCESS_OBJECT_CODE = po.PROCESS_OBJECT_CODE(+)) and'
      
        '  (po.PROCESS_OBJECT_CLASS_CODE = poc.PROCESS_OBJECT_CLASS_CODE(' +
        '+)) and'
      ''
      '  ( (:STORE_REQUEST_BRANCH_CODE is null) or'
      
        '    (sr.STORE_REQUEST_BRANCH_CODE = :STORE_REQUEST_BRANCH_CODE) ' +
        ') and'
      ''
      '  ( (:STORE_REQUEST_CODE is null) or'
      '    (sr.STORE_REQUEST_CODE = :STORE_REQUEST_CODE) ) and'
      ''
      '  ( (:PRODUCT_CLASS_CODE = %pc_FINANCIAL) or'
      '    ((:IS_IN = 1) and (sr.IN_OUT = 1)) or'
      '    ((:IS_OUT = 1) and (sr.IN_OUT = -1))'
      '  ) and'
      ''
      '  (exists('
      '    select'
      '      1'
      '    from'
      '      DEPT_RELATIONS dr'
      '    where'
      '      (dr.DESCENDANT_DEPT_CODE = sr.REQUEST_DEPT_CODE) and'
      '      (dr.ANCESTOR_DEPT_CODE = :REQUEST_DEPT_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( (:REQUEST_EMPLOYEE_CODE is null) or'
      '    (sr.REQUEST_EMPLOYEE_CODE = :REQUEST_EMPLOYEE_CODE) ) and'
      ''
      '  ( (:REQUEST_BEGIN_DATE is null) or'
      '    (sr.REQUEST_END_DATE >= :REQUEST_BEGIN_DATE)'
      '  ) and'
      ''
      '  ( (:REQUEST_END_DATE is null) or'
      '    (sr.REQUEST_BEGIN_DATE <= :REQUEST_END_DATE)'
      '  ) and'
      ''
      
        '  ( ((:IS_FINISHED <> 0) and (sr.FINISH_EMPLOYEE_CODE is not nul' +
        'l))'
      '    or'
      
        '    ((:IS_NOT_FINISHED <> 0) and (sr.FINISH_EMPLOYEE_CODE is nul' +
        'l))'
      '  ) and'
      ''
      
        '  ( ((:IS_ANNULED <> 0) and (sr.ANNUL_EMPLOYEE_CODE is not null)' +
        ')'
      '    or'
      
        '    ((:IS_NOT_ANNULED <> 0) and (sr.ANNUL_EMPLOYEE_CODE is null)' +
        ')'
      '  ) and'
      ''
      '  ( (:PSD_STORE_CODE is null) or'
      '    exists ('
      '      select'
      '        1'
      '      from'
      '        STORE_REQUEST_ITEMS sri,'
      '        PLANNED_STORE_DEALS psd,'
      '        DEPT_RELATIONS dr'
      '      where'
      
        '        (sri.STORE_REQUEST_BRANCH_CODE = sr.STORE_REQUEST_BRANCH' +
        '_CODE) and'
      '        (sri.STORE_REQUEST_CODE = sr.STORE_REQUEST_CODE) and'
      
        '        (psd.PLANNED_STORE_DEAL_BRANCH_CODE = sri.PLANNED_STORE_' +
        'DEAL_BRANCH_CODE) and'
      
        '        (psd.PLANNED_STORE_DEAL_CODE = sri.PLANNED_STORE_DEAL_CO' +
        'DE) and'
      '        (dr.DESCENDANT_DEPT_CODE = psd.STORE_CODE) and'
      '        (dr.ANCESTOR_DEPT_CODE = :PSD_STORE_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( (:PSD_PRODUCT_CODE is null) or'
      '    exists ('
      '      select'
      '        1'
      '      from'
      '        STORE_REQUEST_ITEMS sri,'
      '        PLANNED_STORE_DEALS psd,'
      '        PRODUCT_RELATIONS pr'
      '      where'
      
        '        (sri.STORE_REQUEST_BRANCH_CODE = sr.STORE_REQUEST_BRANCH' +
        '_CODE) and'
      '        (sri.STORE_REQUEST_CODE = sr.STORE_REQUEST_CODE) and'
      
        '        (psd.PLANNED_STORE_DEAL_BRANCH_CODE = sri.PLANNED_STORE_' +
        'DEAL_BRANCH_CODE) and'
      
        '        (psd.PLANNED_STORE_DEAL_CODE = sri.PLANNED_STORE_DEAL_CO' +
        'DE) and'
      '        (pr.DESCENDANT_PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '        (pr.ANCESTOR_PRODUCT_CODE = :PSD_PRODUCT_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( (:BND_PROCESS_CODE is null) or'
      '    exists ('
      '      select'
      '        1'
      '      from'
      '        STORE_REQUEST_ITEMS sri,'
      '        PLANNED_STORE_DEALS psd'
      '      where'
      
        '        (sri.STORE_REQUEST_BRANCH_CODE = sr.STORE_REQUEST_BRANCH' +
        '_CODE) and'
      '        (sri.STORE_REQUEST_CODE = sr.STORE_REQUEST_CODE) and'
      
        '        (psd.PLANNED_STORE_DEAL_BRANCH_CODE = sri.PLANNED_STORE_' +
        'DEAL_BRANCH_CODE) and'
      
        '        (psd.PLANNED_STORE_DEAL_CODE = sri.PLANNED_STORE_DEAL_CO' +
        'DE) and'
      ''
      '        %STORE_DEALS_BND_PROCESS_CONDITION[psd]'
      '    )'
      '  ) and'
      ''
      ' (sr.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      ' ( (:PARTNER_CODE is null) or'
      '   (sr.PARTNER_CODE = :PARTNER_CODE)'
      ' )'
      ''
      'order by'
      '  sr.STORE_REQUEST_BRANCH_CODE,'
      '  sr.STORE_REQUEST_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'pc_FINANCIAL'
        ParamType = ptInput
        Value = '2'
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
        Name = 'BND_PROCESS'
        ParamType = ptInput
      end>
    Left = 56
    Top = 272
    object qryStoreRequestsSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryStoreRequestsSTORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryStoreRequestsSTORE_REQUEST_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_REQUEST_IDENTIFIER'
      Size = 83
    end
    object qryStoreRequestsIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object qryStoreRequestsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryStoreRequestsBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object qryStoreRequestsREQUEST_DEPT: TAbmesWideStringField
      FieldName = 'REQUEST_DEPT'
      Size = 46
    end
    object qryStoreRequestsREQUEST_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'REQUEST_EMPLOYEE_NAME'
      Size = 41
    end
    object qryStoreRequestsREQUEST_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_BEGIN_DATE'
    end
    object qryStoreRequestsREQUEST_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_END_DATE'
    end
    object qryStoreRequestsBND_PROCESS_OBJECT_CLASS_ABB: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_CLASS_ABB'
      Size = 100
    end
    object qryStoreRequestsBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
      Size = 50
    end
    object qryStoreRequestsIS_FINISHED: TAbmesFloatField
      FieldName = 'IS_FINISHED'
    end
    object qryStoreRequestsIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
    end
    object qryStoreRequestsTOTAL_STORE_REQUEST_ITEMS: TAbmesFloatField
      FieldName = 'TOTAL_STORE_REQUEST_ITEMS'
    end
    object qryStoreRequestsUNFINISHED_STORE_REQUEST_ITEMS: TAbmesFloatField
      FieldName = 'UNFINISHED_STORE_REQUEST_ITEMS'
    end
    object qryStoreRequestsPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
      Required = True
    end
    object qryStoreRequestsPARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_SHORT_NAME'
    end
  end
  object qryStoreRequestPSDQuantities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
      '  psd.QUANTITY as PLAN_QUANTITY,'
      '  psd.COMPLETED_QUANTITY,'
      '  Sum(sri.REQUEST_QUANTITY) as OTHER_REQUESTED_QUANTITY,'
      
        '  (psd.REMAINING_QUANTITY - Coalesce(Sum(sri.REQUEST_QUANTITY), ' +
        '0)) as REMAINING_QUANTITY,'
      '  0 as REQUEST_QUANTITY'
      ''
      'from'
      '  PLANNED_STORE_DEALS psd,'
      '  (select'
      '     sri.STORE_REQUEST_BRANCH_CODE,'
      '     sri.STORE_REQUEST_CODE,'
      '     sri.STORE_REQUEST_ITEM_CODE,'
      '     sri.PLANNED_STORE_DEAL_BRANCH_CODE,'
      '     sri.PLANNED_STORE_DEAL_CODE,'
      '     sri.REQUEST_QUANTITY'
      '     from'
      '       STORE_REQUEST_ITEMS sri,'
      '       STORE_REQUESTS sr'
      '     where'
      
        '       (sri.STORE_REQUEST_BRANCH_CODE = sr.STORE_REQUEST_BRANCH_' +
        'CODE) and'
      '       (sri.STORE_REQUEST_CODE = sr.STORE_REQUEST_CODE) and'
      ''
      '        not exists('
      '          select'
      '            1'
      '          from'
      '            STORE_DEALS sd'
      '          where'
      
        '            (sd.STORE_REQUEST_BRANCH_CODE = sri.STORE_REQUEST_BR' +
        'ANCH_CODE) and'
      '            (sd.STORE_REQUEST_CODE = sri.STORE_REQUEST_CODE) and'
      
        '            (sd.STORE_REQUEST_ITEM_CODE = sri.STORE_REQUEST_ITEM' +
        '_CODE) and'
      '            (sd.STORNO_EMPLOYEE_CODE is null)'
      '        ) and'
      ''
      '       (sr.FINISH_EMPLOYEE_CODE is null) and'
      '       (sr.ANNUL_EMPLOYEE_CODE is null) and'
      
        '       ( (sr.STORE_REQUEST_BRANCH_CODE <> :STORE_REQUEST_BRANCH_' +
        'CODE) or'
      '         (sr.STORE_REQUEST_CODE <> :STORE_REQUEST_CODE) )'
      '   ) sri'
      ''
      'where'
      
        '  (psd.PLANNED_STORE_DEAL_BRANCH_CODE = sri.PLANNED_STORE_DEAL_B' +
        'RANCH_CODE(+)) and'
      
        '  (psd.PLANNED_STORE_DEAL_CODE = sri.PLANNED_STORE_DEAL_CODE(+))' +
        ' and'
      ''
      '  (psd.IS_ACTIVE = 1) and'
      ''
      
        '  (psd.PLANNED_STORE_DEAL_BRANCH_CODE = :PLANNED_STORE_DEAL_BRAN' +
        'CH_CODE) and'
      '  (psd.PLANNED_STORE_DEAL_CODE = :PLANNED_STORE_DEAL_CODE)'
      ''
      'group by'
      '  psd.PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  psd.PLANNED_STORE_DEAL_CODE,'
      '  psd.QUANTITY,'
      '  psd.COMPLETED_QUANTITY,'
      '  psd.REMAINING_QUANTITY'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 208
    Top = 416
    object qryStoreRequestPSDQuantitiesPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
    end
    object qryStoreRequestPSDQuantitiesPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
    end
    object qryStoreRequestPSDQuantitiesPLAN_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_QUANTITY'
    end
    object qryStoreRequestPSDQuantitiesCOMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_QUANTITY'
    end
    object qryStoreRequestPSDQuantitiesOTHER_REQUESTED_QUANTITY: TAbmesFloatField
      FieldName = 'OTHER_REQUESTED_QUANTITY'
    end
    object qryStoreRequestPSDQuantitiesREMAINING_QUANTITY: TAbmesFloatField
      FieldName = 'REMAINING_QUANTITY'
    end
  end
  object prvStoreRequestPSDQuantities: TDataSetProvider
    DataSet = qryStoreRequestPSDQuantities
    Options = [poReadOnly]
    Left = 208
    Top = 368
  end
  object qryMaxStoreRequestItemCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(STORE_REQUEST_ITEM_CODE) as MAX_STORE_REQUEST_ITEM_CODE'
      'from'
      '  STORE_REQUEST_ITEMS'
      'where'
      '  (STORE_REQUEST_BRANCH_CODE = :STORE_REQUEST_BRANCH_CODE) and'
      '  (STORE_REQUEST_CODE = :STORE_REQUEST_CODE)'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 56
    object qryMaxStoreRequestItemCodeMAX_STORE_REQUEST_ITEM_CODE: TAbmesFloatField
      FieldName = 'MAX_STORE_REQUEST_ITEM_CODE'
    end
  end
  object qryInsPlannedStoreDeal: TAbmesSQLQuery
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
        Name = 'PRIORITY_CODE'
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
        Name = 'STORE_CODE'
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
        Name = 'COMPLETED_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPLETED_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_DEPT_CODE'
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
      ' (PLANNED_STORE_DEAL_BRANCH_CODE,'
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
      '  DEPT_CODE,'
      '  CLOSE_EMPLOYEE_CODE,'
      '  CLOSE_DATE,'
      '  CLOSE_TIME,'
      '  CREATE_EMPLOYEE_CODE,'
      '  CREATE_DATE,'
      '  CREATE_TIME,'
      '  CHANGE_EMPLOYEE_CODE,'
      '  CHANGE_DATE,'
      '  CHANGE_TIME)'
      'values'
      ' (:PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  :PLANNED_STORE_DEAL_CODE,'
      '  1,'
      '  :PRIORITY_CODE,'
      '  :BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  :BND_PROCESS_OBJECT_CODE,'
      '  :BND_PROCESS_CODE,'
      '  :STORE_CODE,'
      '  ContextDate,'
      '  ContextDate,'
      '  :STORE_DEAL_TYPE_CODE,'
      '  :PRODUCT_CODE,'
      '  :COMPLETED_QUANTITY,'
      '  :COMPLETED_QUANTITY * :ACCOUNT_COEF,'
      '  :REQUEST_DEPT_CODE,'
      '  :CREATE_EMPLOYEE_CODE,'
      '  :CREATE_DATE,'
      '  :CREATE_TIME,'
      '  :CREATE_EMPLOYEE_CODE,'
      '  :CREATE_DATE,'
      '  :CREATE_TIME,'
      '  :CHANGE_EMPLOYEE_CODE,'
      '  :CHANGE_DATE,'
      '  :CHANGE_TIME)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 104
  end
  object qryProductData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.NAME,'
      '  p.CUSTOM_CODE,'
      '  p.ACCOUNT_MEASURE_COEF'
      'from'
      '  PRODUCTS p'
      'where'
      '  (p.PRODUCT_CODE = :PRODUCT_CODE)'
      ''
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 256
    object qryProductDataNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 100
    end
    object qryProductDataCUSTOM_CODE: TAbmesFloatField
      FieldName = 'CUSTOM_CODE'
    end
    object qryProductDataACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
  end
  object qryInsStoreDeal: TAbmesSQLQuery
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
        DataType = ftDateTime
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
        Name = 'COMPLETED_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPLETED_QUANTITY'
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
        Name = 'REQUEST_DEPT_CODE'
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
        DataType = ftWideString
        Name = 'INVOICE_ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into STORE_DEALS_FOR_EDIT'
      ' (STORE_DEAL_OBJECT_BRANCH_CODE,'
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
      '  DEPT_CODE,'
      '  BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  BND_PROCESS_OBJECT_CODE,'
      '  BND_PROCESS_CODE,'
      '  PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  PLANNED_STORE_DEAL_CODE,'
      '  STORE_REQUEST_BRANCH_CODE,'
      '  STORE_REQUEST_CODE,'
      '  STORE_REQUEST_ITEM_CODE,'
      '  VENDOR_COMPANY_CODE,'
      '  INVOICE_NO,'
      '  INVOICE_DATE,'
      '  INVOICE_ABBREV,'
      '  CREATE_DATE,'
      '  CREATE_TIME,'
      '  CREATE_EMPLOYEE_CODE)'
      'values'
      ' (:STORE_DEAL_OBJECT_BRANCH_CODE,'
      '  :STORE_DEAL_OBJECT_CODE,'
      '  :STORE_CODE,'
      '  :STORE_DEAL_DATE,'
      '  :STORE_DEAL_TYPE_CODE,'
      '  :STORE_DEAL_NO,'
      '  :PRODUCT_CODE,'
      '  :COMPLETED_QUANTITY,'
      '  :COMPLETED_QUANTITY,'
      '  :ACCOUNT_QUANTITY,'
      '  :CURRENCY_CODE,'
      '  :TOTAL_PRICE,'
      '  :STORE_EMPLOYEE_CODE,'
      '  :OTHER_EMPLOYEE_CODE,'
      '  :REQUEST_EMPLOYEE_CODE,'
      '  :REQUEST_DEPT_CODE,'
      '  :BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  :BND_PROCESS_OBJECT_CODE,'
      '  :BND_PROCESS_CODE,'
      '  :PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  :PLANNED_STORE_DEAL_CODE,'
      '  :STORE_REQUEST_BRANCH_CODE,'
      '  :STORE_REQUEST_CODE,'
      '  :STORE_REQUEST_ITEM_CODE,'
      '  :VENDOR_COMPANY_CODE,'
      '  :INVOICE_NO,'
      '  :INVOICE_DATE,'
      '  :INVOICE_ABBREV,'
      '  ContextDate,'
      '  ContextTime,'
      '  :CREATE_EMPLOYEE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 152
  end
  object qryStoreProductTotals: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      
        '  Sum(asd.REAL_QUANTITY)         keep (dense_rank last order by ' +
        'asd.STORE_DEAL_DATE) as TOTAL_QUANTITY,'
      
        '  Sum(asd.REAL_ACCOUNT_QUANTITY) keep (dense_rank last order by ' +
        'asd.STORE_DEAL_DATE) as TOTAL_ACCOUNT_QUANTITY,'
      
        '  Sum(asd.REAL_TOTAL_PRICE)      keep (dense_rank last order by ' +
        'asd.STORE_DEAL_DATE) as TOTAL_BASE_PRICE,'
      '  Cast(null as Date) as MIN_NO_RATE_DATE'
      ''
      'from'
      '  AGGR_STORE_DEALS asd'
      ''
      'where'
      '  (asd.STORE_DEAL_DATE <= ContextDate) and'
      ''
      '  (asd.STORE_CODE = :STORE_CODE) and'
      '  (asd.PRODUCT_CODE = :PRODUCT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 504
    Top = 240
    object qryStoreProductTotalsTOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_QUANTITY'
    end
    object qryStoreProductTotalsTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_ACCOUNT_QUANTITY'
    end
    object qryStoreProductTotalsTOTAL_BASE_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_BASE_PRICE'
    end
    object qryStoreProductTotalsMIN_NO_RATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_NO_RATE_DATE'
    end
  end
  object qryMaxStoreDealNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(STORE_DEAL_NO) as MAX_STORE_DEAL_NO'
      'from'
      '  STORE_DEALS'
      'where'
      '  (STORE_CODE = :STORE_CODE) and'
      '  (STORE_DEAL_DATE = :STORE_DEAL_DATE) and'
      '  (STORE_DEAL_TYPE_CODE = :STORE_DEAL_TYPE_CODE)'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 200
    object qryMaxStoreDealNoMAX_STORE_DEAL_NO: TAbmesFloatField
      FieldName = 'MAX_STORE_DEAL_NO'
    end
  end
  object qryStoreAndProductInfo: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as S' +
        'TORE_NAME,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO'
      'from'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  PRODUCTS p'
      'where'
      '  (d.DEPT_CODE = :STORE_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (p.PRODUCT_CODE = :PRODUCT_CODE)'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 504
    Top = 288
    object qryStoreAndProductInfoSTORE_NAME: TAbmesWideStringField
      FieldName = 'STORE_NAME'
      Size = 148
    end
    object qryStoreAndProductInfoPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryStoreAndProductInfoPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
  end
  object prvOtherStoreRequests: TDataSetProvider
    DataSet = qryOtherStoreRequests
    Left = 56
    Top = 344
  end
  object qryOtherStoreRequests: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
      '  sr.STORE_REQUEST_BRANCH_CODE,'
      '  sr.STORE_REQUEST_CODE,'
      
        '  (b.CUSTOM_CODE || '#39' / '#39' || sr.STORE_REQUEST_CODE) as STORE_REQ' +
        'UEST_IDENTIFIER,'
      '  sr.IN_OUT,'
      '  sr.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  sr.BND_PROCESS_OBJECT_CODE,'
      '  (d.CUSTOM_CODE || '#39' - '#39' || d.NAME) as REQUEST_DEPT,'
      '  (e.FIRST_NAME || '#39' '#39' || e.LAST_NAME) as REQUEST_EMPLOYEE_NAME,'
      '  sr.REQUEST_BEGIN_DATE,'
      '  sr.REQUEST_END_DATE,'
      
        '  poc.PROCESS_OBJECT_CLASS_ABBREV as BND_PROCESS_OBJECT_CLASS_AB' +
        'B,'
      '  po.PROCESS_OBJECT_IDENTIFIER as BND_PROCESS_OBJECT_IDENTIFIER,'
      '  b.CUSTOM_CODE as STORE_REQUEST_BRANCH_NO,'
      '  Nvl2(sr.FINISH_EMPLOYEE_CODE, 1, 0) as IS_FINISHED,'
      '  Nvl2(sr.ANNUL_EMPLOYEE_CODE, 1, 0) as IS_ANNULED,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      STORE_REQUEST_ITEMS sri'
      '    where'
      
        '      (sri.STORE_REQUEST_BRANCH_CODE = sr.STORE_REQUEST_BRANCH_C' +
        'ODE) and'
      '      (sri.STORE_REQUEST_CODE = sr.STORE_REQUEST_CODE)'
      '  ) as TOTAL_STORE_REQUEST_ITEMS,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      STORE_REQUEST_ITEMS sri'
      '    where'
      
        '      (sri.STORE_REQUEST_BRANCH_CODE = sr.STORE_REQUEST_BRANCH_C' +
        'ODE) and'
      '      (sri.STORE_REQUEST_CODE = sr.STORE_REQUEST_CODE) and'
      ''
      '      ( ( select'
      '            Coalesce(Sum(sd.QUANTITY), 0)'
      '          from'
      '            STORE_DEALS sd'
      '          where'
      
        '            (sd.STORE_REQUEST_BRANCH_CODE = sri.STORE_REQUEST_BR' +
        'ANCH_CODE) and'
      '            (sd.STORE_REQUEST_CODE = sri.STORE_REQUEST_CODE) and'
      
        '            (sd.STORE_REQUEST_ITEM_CODE = sri.STORE_REQUEST_ITEM' +
        '_CODE) and'
      '            (sd.STORNO_EMPLOYEE_CODE is null)'
      '        ) < sri.REQUEST_QUANTITY)'
      '  ) as UNFINISHED_STORE_REQUEST_ITEMS,'
      ''
      '  sr.PRODUCT_CLASS_CODE'
      ''
      'from'
      '  STORE_REQUESTS sr,'
      '  STORE_REQUEST_ITEMS sri,'
      '  DEPTS b,'
      '  DEPTS d,'
      '  EMPLOYEES e,'
      '  PROCESS_OBJECTS po,'
      '  PROCESS_OBJECT_CLASSES poc'
      ''
      'where'
      
        '  (sr.STORE_REQUEST_BRANCH_CODE = sri.STORE_REQUEST_BRANCH_CODE)' +
        ' and'
      '  (sr.STORE_REQUEST_CODE = sri.STORE_REQUEST_CODE) and'
      ''
      '  (sr.STORE_REQUEST_BRANCH_CODE = b.DEPT_CODE) and'
      ''
      '  (sr.REQUEST_DEPT_CODE = d.DEPT_CODE) and'
      ''
      '  (sr.REQUEST_EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      ''
      
        '  (sr.BND_PROCESS_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BRANCH_' +
        'CODE(+)) and'
      '  (sr.BND_PROCESS_OBJECT_CODE = po.PROCESS_OBJECT_CODE(+)) and'
      ''
      
        '  (po.PROCESS_OBJECT_CLASS_CODE = poc.PROCESS_OBJECT_CLASS_CODE(' +
        '+)) and'
      ''
      
        '  ( (sr.STORE_REQUEST_BRANCH_CODE <> :STORE_REQUEST_BRANCH_CODE)' +
        ' or'
      '    (sr.STORE_REQUEST_CODE <> :STORE_REQUEST_CODE) ) and'
      ''
      
        '  (sri.PLANNED_STORE_DEAL_BRANCH_CODE = :PLANNED_STORE_DEAL_BRAN' +
        'CH_CODE) and'
      '  (sri.PLANNED_STORE_DEAL_CODE = :PLANNED_STORE_DEAL_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 392
    object qryOtherStoreRequestsSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOtherStoreRequestsSTORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOtherStoreRequestsSTORE_REQUEST_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_REQUEST_IDENTIFIER'
      Size = 83
    end
    object qryOtherStoreRequestsIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object qryOtherStoreRequestsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryOtherStoreRequestsBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object qryOtherStoreRequestsREQUEST_DEPT: TAbmesWideStringField
      FieldName = 'REQUEST_DEPT'
      Size = 143
    end
    object qryOtherStoreRequestsREQUEST_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'REQUEST_EMPLOYEE_NAME'
      Size = 41
    end
    object qryOtherStoreRequestsREQUEST_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_BEGIN_DATE'
    end
    object qryOtherStoreRequestsREQUEST_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_END_DATE'
    end
    object qryOtherStoreRequestsBND_PROCESS_OBJECT_CLASS_ABB: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_CLASS_ABB'
      Size = 100
    end
    object qryOtherStoreRequestsBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
      Size = 100
    end
    object qryOtherStoreRequestsSTORE_REQUEST_BRANCH_NO: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_NO'
    end
    object qryOtherStoreRequestsIS_FINISHED: TAbmesFloatField
      FieldName = 'IS_FINISHED'
    end
    object qryOtherStoreRequestsIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
    end
    object qryOtherStoreRequestsTOTAL_STORE_REQUEST_ITEMS: TAbmesFloatField
      FieldName = 'TOTAL_STORE_REQUEST_ITEMS'
    end
    object qryOtherStoreRequestsUNFINISHED_STORE_REQUEST_ITEMS: TAbmesFloatField
      FieldName = 'UNFINISHED_STORE_REQUEST_ITEMS'
    end
    object qryOtherStoreRequestsPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
      Required = True
    end
  end
  object qryDeptIdentifier: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER'
      'from'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      'where'
      '  (d.DEPT_CODE = :DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 504
    Top = 336
    object qryDeptIdentifierDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
  end
  object qryCheckMLLOperations: TAbmesSQLQuery
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
      '  ('
      '    select'
      '      po.PROCESS_OBJECT_IDENTIFIER'
      '    from'
      '      PROCESS_OBJECTS po'
      '    where'
      
        '      (po.PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '      (po.PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '  ) as MLL_IDENTIFIER'
      ''
      'from'
      '  MATERIAL_LIST_LINES mll'
      ''
      'where'
      
        '  (mll.MLL_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mll.MLL_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      ML_MODEL_STAGES mlms,'
      '      ML_MODEL_STAGES mlms2'
      '    where'
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mlms.ML_MODEL_STAGE_NO = 1) and'
      ''
      '      (mlms2.MLL_OBJECT_BRANCH_CODE ='
      
        '         Decode(mlms.TREATMENT_WORKDAYS, 0, mll.PARENT_MLL_OBJEC' +
        'T_BRANCH_CODE, mll.MLL_OBJECT_BRANCH_CODE)) and'
      '      (mlms2.MLL_OBJECT_CODE ='
      
        '         Decode(mlms.TREATMENT_WORKDAYS, 0, mll.PARENT_MLL_OBJEC' +
        'T_CODE, mll.MLL_OBJECT_CODE)) and'
      '      (mlms2.ML_MODEL_STAGE_NO = 1) and'
      ''
      '      not exists('
      '        select'
      '          1'
      '        from'
      '          MLMS_OPERATIONS mlmso'
      '        where'
      
        '          (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJECT_BRA' +
        'NCH_CODE) and'
      '          (mlmso.MLMS_OBJECT_CODE = mlms2.MLMS_OBJECT_CODE) and'
      '          (mlmso.OPERATION_TYPE_CODE = 1) and'
      '          (mlmso.MLMS_OPERATION_VARIANT_NO >= 0)'
      '      )'
      '  )'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 392
    object qryCheckMLLOperationsMLL_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MLL_IDENTIFIER'
      Size = 100
    end
  end
  object qryDeptIsActive: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  1 as DEPT_IS_ACTIVE'
      'from'
      '  DEPTS d'
      'where'
      '  (d.DEPT_CODE = :DEPT_CODE) and'
      
        '  (ContextDate between d.BEGIN_DATE and Coalesce(d.END_DATE, Context' +
        'Date))')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 504
    Top = 144
    object qryDeptIsActiveDEPT_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DEPT_IS_ACTIVE'
      FieldValueType = fvtBoolean
    end
  end
  object qryStoreRequestPlannedStoreDeals: TAbmesSQLQuery
    BeforeOpen = qryStoreRequestPlannedStoreDealsBeforeOpen
    AfterClose = qryStoreRequestPlannedStoreDealsAfterClose
    MaxBlobSize = -1
    Params = <
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
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
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
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_ACCOUNT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_ACCOUNT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  psd.PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  psd.PLANNED_STORE_DEAL_CODE,'
      ''
      '  ( select'
      '      pro.PROCESS_ABBREV'
      '    from'
      '      PROCESSES pro'
      '    where'
      '      (pro.PROCESS_CODE = psd.BND_PROCESS_CODE)'
      '  ) as BND_PROCESS_ABBREV,'
      ''
      '  ( select'
      '      po.PROCESS_OBJECT_IDENTIFIER'
      '    from'
      '      PROCESS_OBJECTS po'
      '    where'
      
        '      (po.PROCESS_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (po.PROCESS_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE)'
      '  ) as PROCESS_OBJECT_IDENTIFIER,'
      ''
      '  psd.PRIORITY_CODE,'
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      PRIORITIES p'
      '    where'
      '      (p.PRIORITY_CODE = psd.PRIORITY_CODE)'
      '  ) as PRIORITY_NO,'
      '  ( select'
      '      p.PRIORITY_NO || '#39'    '#39' || p.PRIORITY_NAME'
      '    from'
      '      PRIORITIES p'
      '    where'
      '      (p.PRIORITY_CODE = psd.PRIORITY_CODE)'
      '  ) as PRIORITY_FULL_NAME,'
      ''
      ''
      '  Decode('
      '    psd.BND_PROCESS_CODE,'
      '    60,'
      '    ( select'
      '        wp.WORK_PRIORITY_NO'
      '      from'
      '        SALES s,'
      '        WORK_PRIORITIES wp'
      '      where'
      
        '        (psd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (psd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '        (s.WORK_PRIORITY_CODE = wp.WORK_PRIORITY_CODE)'
      '    ),'
      '    61,'
      '    ( select'
      '        wp.WORK_PRIORITY_NO'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        MATERIAL_LISTS ml,'
      '        SALES s,'
      '        WORK_PRIORITIES wp'
      '      where'
      
        '        (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRA' +
        'NCH_CODE) and'
      '        (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '        (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '        (s.WORK_PRIORITY_CODE = wp.WORK_PRIORITY_CODE)'
      '    ),'
      '    62,'
      '    ( select'
      '        wp.WORK_PRIORITY_NO'
      '      from'
      '        MLMS_OPERATIONS mlmso,'
      '        ML_MODEL_STAGES mlms,'
      '        MATERIAL_LIST_LINES mll,'
      '        MATERIAL_LISTS ml,'
      '        SALES s,'
      '        WORK_PRIORITIES wp'
      '      where'
      
        '        (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT' +
        '_BRANCH_CODE) and'
      
        '        (psd.BND_PROCESS_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) ' +
        'and'
      
        '        (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '        (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      
        '        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '        (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '        (s.WORK_PRIORITY_CODE = wp.WORK_PRIORITY_CODE)'
      '    )'
      '  ) as WORK_PRIORITY_NO,'
      ''
      '  psd.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  psd.BND_PROCESS_OBJECT_CODE,'
      '  psd.STORE_DEAL_BEGIN_DATE,'
      '  psd.STORE_DEAL_END_DATE,'
      '  psd.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  p.ACCOUNT_MEASURE_COEF,'
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
      '  psd.DEPT_CODE as PSD_DEPT_CODE,'
      '  psd.QUANTITY as PLAN_QUANTITY,'
      '  psd.COMPLETED_QUANTITY,'
      ''
      '  ( select'
      '      Sum(sri.REQUEST_QUANTITY)'
      '    from'
      '      STORE_REQUESTS sr,'
      '      STORE_REQUEST_ITEMS sri'
      '    where'
      
        '      (sri.PLANNED_STORE_DEAL_BRANCH_CODE = psd.PLANNED_STORE_DE' +
        'AL_BRANCH_CODE) and'
      
        '      (sri.PLANNED_STORE_DEAL_CODE = psd.PLANNED_STORE_DEAL_CODE' +
        ') and'
      ''
      
        '      (sr.STORE_REQUEST_BRANCH_CODE = sri.STORE_REQUEST_BRANCH_C' +
        'ODE) and'
      '      (sr.STORE_REQUEST_CODE = sri.STORE_REQUEST_CODE) and'
      ''
      
        '      ( (sr.STORE_REQUEST_BRANCH_CODE <> :STORE_REQUEST_BRANCH_C' +
        'ODE) or'
      '        (sr.STORE_REQUEST_CODE <> :STORE_REQUEST_CODE) ) and'
      ''
      '      (sr.ANNUL_EMPLOYEE_CODE is null) and'
      '      (sr.FINISH_EMPLOYEE_CODE is null) and'
      '      not exists('
      '        select'
      '          1'
      '        from'
      '          STORE_DEALS sd'
      '        where'
      
        '          (sd.STORE_REQUEST_BRANCH_CODE = sri.STORE_REQUEST_BRAN' +
        'CH_CODE) and'
      '          (sd.STORE_REQUEST_CODE = sri.STORE_REQUEST_CODE) and'
      
        '          (sd.STORE_REQUEST_ITEM_CODE = sri.STORE_REQUEST_ITEM_C' +
        'ODE)'
      '      )'
      '  ) as OTHER_REQUESTED_QUANTITY,'
      ''
      '  ( psd.REMAINING_QUANTITY -'
      '    ('
      '      select'
      '        Coalesce(Sum(sri.REQUEST_QUANTITY), 0)'
      '      from'
      '        STORE_REQUESTS sr,'
      '        STORE_REQUEST_ITEMS sri'
      '      where'
      
        '        (sri.PLANNED_STORE_DEAL_BRANCH_CODE = psd.PLANNED_STORE_' +
        'DEAL_BRANCH_CODE) and'
      
        '        (sri.PLANNED_STORE_DEAL_CODE = psd.PLANNED_STORE_DEAL_CO' +
        'DE) and'
      '        '
      
        '        (sr.STORE_REQUEST_BRANCH_CODE = sri.STORE_REQUEST_BRANCH' +
        '_CODE) and'
      '        (sr.STORE_REQUEST_CODE = sri.STORE_REQUEST_CODE) and'
      '        '
      
        '        ( (sr.STORE_REQUEST_BRANCH_CODE <> :STORE_REQUEST_BRANCH' +
        '_CODE) or'
      '          (sr.STORE_REQUEST_CODE <> :STORE_REQUEST_CODE) ) and'
      '          '
      '        (sr.ANNUL_EMPLOYEE_CODE is null) and'
      '        (sr.FINISH_EMPLOYEE_CODE is null) and'
      '        not exists('
      '          select'
      '            1'
      '          from'
      '            STORE_DEALS sd'
      '          where'
      
        '            (sd.STORE_REQUEST_BRANCH_CODE = sri.STORE_REQUEST_BR' +
        'ANCH_CODE) and'
      '            (sd.STORE_REQUEST_CODE = sri.STORE_REQUEST_CODE) and'
      
        '            (sd.STORE_REQUEST_ITEM_CODE = sri.STORE_REQUEST_ITEM' +
        '_CODE)'
      '        )'
      '    )'
      '  ) as REMAINING_QUANTITY,'
      ''
      '  0 as REQUEST_QUANTITY,'
      ''
      '  psd.IN_OUT'
      ''
      'from'
      '  PLANNED_STORE_DEALS psd,'
      '  PRODUCTS p'
      ''
      'where'
      '  (psd.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (psd.IS_ACTIVE = 1) and'
      '  (psd.PLANNED_STORE_DEAL_TYPE_CODE = 1) and'
      ''
      '  ( (:IN_OUT = 0) or'
      '    (psd.IN_OUT = :IN_OUT) ) and'
      ''
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        DEPT_RELATIONS dr'
      '      where'
      '        (dr.ANCESTOR_DEPT_CODE = :STORE_CODE) and'
      '        (dr.DESCENDANT_DEPT_CODE = psd.STORE_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( (:STORE_DEAL_BEGIN_DATE is null) or'
      '    (psd.STORE_DEAL_END_DATE >= :STORE_DEAL_BEGIN_DATE)'
      '  ) and'
      ''
      '  ( (:STORE_DEAL_END_DATE is null) or'
      '    (psd.STORE_DEAL_BEGIN_DATE <= :STORE_DEAL_END_DATE)'
      '  ) and'
      ''
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        PRODUCT_RELATIONS pr'
      '      where'
      '        (pr.ANCESTOR_PRODUCT_CODE = :PRODUCT_CODE) and'
      '        (pr.DESCENDANT_PRODUCT_CODE = psd.PRODUCT_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( (:DEPT_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          DEPT_RELATIONS dr'
      '        where'
      '          (dr.ANCESTOR_DEPT_CODE = :DEPT_CODE) and'
      '          (dr.DESCENDANT_DEPT_CODE = psd.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (psd.BND_PROCESS_CODE <> 61) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          MATERIAL_LIST_LINES mll,'
      '          MATERIAL_LISTS ml'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_B' +
        'RANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) an' +
        'd'
      
        '          (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE)' +
        ' and'
      '          (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '          (ml.LIMITING_EMPLOYEE_CODE is not null)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (psd.BND_PROCESS_CODE <> 62) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          MLMS_OPERATIONS mlmso,'
      '          ML_MODEL_STAGES mlms,'
      '          MATERIAL_LIST_LINES mll,'
      '          MATERIAL_LISTS ml'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE' +
        ') and'
      
        '          (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRAN' +
        'CH_CODE) and'
      '          (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      
        '          (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_C' +
        'ODE) and'
      '          (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      
        '          (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE)' +
        ' and'
      '          (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '          (ml.LIMITING_EMPLOYEE_CODE is not null)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '  ( (:PRODUCT_CLASS_CODE <> %pc_FINANCIAL) or'
      '    (:PARTNER_CODE is null) or'
      '    (:PARTNER_ACCOUNT_CODE is null) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        REAL_FIN_MODEL_LINES rfml,'
      '        FIN_ORDERS fo'
      '      where'
      
        '        (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_B' +
        'RANCH_CODE) and'
      
        '        (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) an' +
        'd'
      '        (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      '        (fo.ACTIVATE_EMPLOYEE_CODE is not null) and'
      '        (rfml.PARTNER_CODE = :PARTNER_CODE) and'
      '        (rfml.PARTNER_ACCOUNT_CODE = :PARTNER_ACCOUNT_CODE)'
      '    ) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        SALE_SHIPMENTS ss,'
      '        SALES s'
      '      where'
      
        '        (ss.SHIPMENT_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '        (ss.SHIPMENT_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      
        '        (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_BRANCH_CODE)' +
        ' and'
      '        (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE) and'
      '        (s.CLIENT_COMPANY_CODE = :PARTNER_CODE)'
      '    ) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        DELIVERY_CONTRACTS dc,'
      '        DELIVERY_PROJECTS dp'
      '      where'
      
        '        (dc.DELIVERY_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '        (dc.DELIVERY_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      
        '        (dp.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE) ' +
        'and'
      '        (dp.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      
        '        (dp.DELIVERY_PROJECT_CODE = dc.DELIVERY_PROJECT_CODE) an' +
        'd'
      '        (dp.VENDOR_COMPANY_CODE = :PARTNER_CODE)'
      '    )'
      '  ) and'
      ''
      '  %STORE_DEALS_BND_PROCESS_CONDITION[psd]'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'pc_FINANCIAL'
        ParamType = ptInput
        Value = '0=0'
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
        Name = 'BND_PROCESS'
        ParamType = ptInput
      end>
    Left = 208
    Top = 56
    object qryStoreRequestPlannedStoreDealsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryStoreRequestPlannedStoreDealsPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryStoreRequestPlannedStoreDealsBND_PROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PROCESS_ABBREV'
      Size = 100
    end
    object qryStoreRequestPlannedStoreDealsPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 100
    end
    object qryStoreRequestPlannedStoreDealsPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object qryStoreRequestPlannedStoreDealsPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qryStoreRequestPlannedStoreDealsPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 94
    end
    object qryStoreRequestPlannedStoreDealsWORK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_NO'
    end
    object qryStoreRequestPlannedStoreDealsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryStoreRequestPlannedStoreDealsBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object qryStoreRequestPlannedStoreDealsSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_BEGIN_DATE'
    end
    object qryStoreRequestPlannedStoreDealsSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_END_DATE'
    end
    object qryStoreRequestPlannedStoreDealsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryStoreRequestPlannedStoreDealsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryStoreRequestPlannedStoreDealsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryStoreRequestPlannedStoreDealsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryStoreRequestPlannedStoreDealsACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object qryStoreRequestPlannedStoreDealsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryStoreRequestPlannedStoreDealsSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryStoreRequestPlannedStoreDealsPSD_DEPT_CODE: TAbmesFloatField
      FieldName = 'PSD_DEPT_CODE'
    end
    object qryStoreRequestPlannedStoreDealsPLAN_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_QUANTITY'
    end
    object qryStoreRequestPlannedStoreDealsCOMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_QUANTITY'
    end
    object qryStoreRequestPlannedStoreDealsOTHER_REQUESTED_QUANTITY: TAbmesFloatField
      FieldName = 'OTHER_REQUESTED_QUANTITY'
    end
    object qryStoreRequestPlannedStoreDealsREMAINING_QUANTITY: TAbmesFloatField
      FieldName = 'REMAINING_QUANTITY'
    end
    object qryStoreRequestPlannedStoreDealsREQUEST_QUANTITY: TAbmesFloatField
      FieldName = 'REQUEST_QUANTITY'
      ProviderFlags = []
    end
    object qryStoreRequestPlannedStoreDealsIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
  end
  object qryStartStoreRecalcDeffer: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'begin'
      '  StoreRecalcDefferUtils.StartStoreRecalcDeffer;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    AutoTransaction = False
    Left = 216
    Top = 152
  end
  object qryApplyStoreRecalcDeffer: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'begin'
      '  StoreRecalcDefferUtils.ApplyStoreRecalcDeffer;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    AutoTransaction = False
    Left = 216
    Top = 200
  end
  object qryCancelStoreRecalcDeffer: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'begin'
      '  StoreRecalcDefferUtils.CancelStoreRecalcDeffer;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    AutoTransaction = False
    Left = 216
    Top = 248
  end
end
