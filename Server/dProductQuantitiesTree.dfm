inherited dmProductQuantitiesTree: TdmProductQuantitiesTree
  Height = 369
  Width = 756
  inherited qryTreeNodeChildren: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE as NODE_ID,'
      '  p.PARENT_CODE as PARENT_NODE_ID,'
      '  p.NAME as NODE_NAME,'
      '  p.CUSTOM_CODE as NODE_NO,'
      '  Nvl2(p.PARENT_CODE, 1, 0) as NODE_TYPE,'
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      PRODUCTS p3'
      '    where'
      '      (p3.PARENT_CODE = p.PRODUCT_CODE) and'
      '      (p3.IS_GROUP = 1)'
      '  ) as IS_EXPANDABLE,'
      '  p.IS_INACTIVE'
      ''
      'from'
      '  PRODUCTS p'
      ''
      'where'
      '  (p.PARENT_CODE = :NODE_ID) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      GROUP_PRODUCTS gp'
      '    where'
      '      (gp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  )'
      ''
      'order by'
      '  NODE_NO,'
      '  NODE_NAME,'
      '  NODE_ID')
  end
  inherited qryNodeChildren: TAbmesSQLQuery
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
        Value = 0.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'LOCAL_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AGGREGATE_VALUES'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'AGGREGATE_VALUES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE as NODE_ID,'
      '  p.PARENT_CODE as PARENT_NODE_ID,'
      '  p.NAME as NODE_NAME,'
      ''
      '  Coalesce('
      '    ( select'
      '        2'
      '      from'
      '        DEFINITE_PRODUCTS dp'
      '      where'
      '        (dp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '    ),'
      '    1'
      '  ) as NODE_TYPE,'
      ''
      '  p.CUSTOM_CODE as NODE_NO,'
      '  p.IS_INACTIVE,'
      ''
      '  ( select'
      '      sp.SPEC_PRODUCT_CODE'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SPEC_PRODUCT_CODE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      ''
      
        '  Nvl2(p.MEASURE_CODE, NullIf(cpq.LOCAL_QUANTITY, 0), null) as L' +
        'OCAL_QUANTITY,'
      
        '  Nvl2(p.MEASURE_CODE, NullIf(cpq.TOTAL_QUANTITY, 0), null) as T' +
        'OTAL_QUANTITY,'
      
        '  Nvl2(p.MEASURE_CODE, NullIf(cpq.LOCAL_ACCOUNT_QUANTITY, 0), nu' +
        'll) as LOCAL_ACCOUNT_QUANTITY,'
      
        '  Nvl2(p.MEASURE_CODE, NullIf(cpq.TOTAL_ACCOUNT_QUANTITY, 0), nu' +
        'll) as TOTAL_ACCOUNT_QUANTITY,'
      '  NullIf(cpq.LOCAL_TOTAL_PRICE, 0) as LOCAL_TOTAL_PRICE,'
      '  NullIf(cpq.TOTAL_TOTAL_PRICE, 0) as TOTAL_TOTAL_PRICE,'
      
        '  NullIf(cpq.LOCAL_MARKET_TOTAL_PRICE, 0) as LOCAL_MARKET_TOTAL_' +
        'PRICE,'
      
        '  NullIf(cpq.TOTAL_MARKET_TOTAL_PRICE, 0) as TOTAL_MARKET_TOTAL_' +
        'PRICE,'
      ''
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION,'
      ''
      
        '  ProductUtils.ProductPartnerBaseAcquirePrice(p.PRODUCT_CODE, :P' +
        'ARTNER_CODE, CommonConsts.brtClient, ContextDate) as PARTNER_SALE_' +
        'ACQUIRE_PRICE,'
      
        '  ProductUtils.ProductPartnerBaseAcquirePrice(p.PRODUCT_CODE, nu' +
        'll, CommonConsts.brtClient, ContextDate) as BASE_SALE_ACQUIRE_PRIC' +
        'E,'
      
        '  ProductUtils.ProductPartnerBaseAcquirePrice(p.PRODUCT_CODE, :P' +
        'ARTNER_CODE, CommonConsts.brtVendor, ContextDate) as PARTNER_DELIV' +
        'ERY_ACQUIRE_PRICE,'
      
        '  ProductUtils.ProductPartnerBaseAcquirePrice(p.PRODUCT_CODE, nu' +
        'll, CommonConsts.brtVendor, ContextDate) as BASE_DELIVERY_ACQUIRE_' +
        'PRICE,'
      ''
      '  p.IS_THOROUGHLY_ENGINEERED,'
      ''
      '  Decode(p.IS_COMMON, 1, 2,'
      '         ( select'
      '             Decode(Sign(Count(*)), 0, 1, 3)'
      '           from'
      '             CONCRETE_PRODUCTS cp,'
      '             DEFINITE_PRODUCTS dp'
      '           where'
      '             (cp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '             (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '             (dp.COMMON_PRODUCT_CODE is not null)'
      '         )'
      '  ) as COMMON_STATUS_CODE'
      ''
      'from'
      '  PRODUCTS p,'
      ''
      '  ( select'
      '      x.ANCESTOR_PRODUCT_CODE as PRODUCT_CODE,'
      '      Sum(x.REAL_LOCAL_QUANTITY) as LOCAL_QUANTITY,'
      '      Sum(x.REAL_TOTAL_QUANTITY) as TOTAL_QUANTITY,'
      
        '      Sum(x.REAL_LOCAL_ACCOUNT_QUANTITY) as LOCAL_ACCOUNT_QUANTI' +
        'TY,'
      
        '      Sum(x.REAL_TOTAL_ACCOUNT_QUANTITY) as TOTAL_ACCOUNT_QUANTI' +
        'TY,'
      '      Sum(x.REAL_LOCAL_PRICE) as LOCAL_TOTAL_PRICE,'
      '      Sum(x.REAL_TOTAL_PRICE) as TOTAL_TOTAL_PRICE,'
      
        '      Sum(x.REAL_LOCAL_MARKET_PRICE) as LOCAL_MARKET_TOTAL_PRICE' +
        ','
      '      Sum(x.REAL_TOTAL_MARKET_PRICE) as TOTAL_MARKET_TOTAL_PRICE'
      ''
      '    from'
      '      ( select'
      '          /*+ ORDERED USE_NL(p pr asd) */'
      '          asd.PRODUCT_CODE,'
      '          asd.STORE_CODE,'
      '          pr.ANCESTOR_PRODUCT_CODE,'
      ''
      '          /* local values */'
      
        '          Sum(Nvl2(dr.ANCESTOR_DEPT_CODE, asd.REAL_QUANTITY, nul' +
        'l))         keep (dense_rank last order by asd.STORE_DEAL_DATE) ' +
        'as REAL_LOCAL_QUANTITY,'
      
        '          Sum(Nvl2(dr.ANCESTOR_DEPT_CODE, asd.REAL_ACCOUNT_QUANT' +
        'ITY, null)) keep (dense_rank last order by asd.STORE_DEAL_DATE) ' +
        'as REAL_LOCAL_ACCOUNT_QUANTITY,'
      
        '          Sum(Nvl2(dr.ANCESTOR_DEPT_CODE, asd.REAL_TOTAL_PRICE, ' +
        'null))      keep (dense_rank last order by asd.STORE_DEAL_DATE) ' +
        'as REAL_LOCAL_PRICE,'
      '          Sum(Nvl2(dr.ANCESTOR_DEPT_CODE,'
      '                   ( asd.REAL_QUANTITY *'
      
        '                     %PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_' +
        'CURRENCY[asd.PRODUCT_CODE ~ ContextDate]'
      '                   ),'
      
        '                   null))                                       ' +
        '            keep (dense_rank last order by asd.STORE_DEAL_DATE) ' +
        'as REAL_LOCAL_MARKET_PRICE,'
      ''
      '          /* total values */'
      
        '          Sum(asd.REAL_QUANTITY)                                ' +
        '            keep (dense_rank last order by asd.STORE_DEAL_DATE) ' +
        'as REAL_TOTAL_QUANTITY,'
      
        '          Sum(asd.REAL_ACCOUNT_QUANTITY)                        ' +
        '            keep (dense_rank last order by asd.STORE_DEAL_DATE) ' +
        'as REAL_TOTAL_ACCOUNT_QUANTITY,'
      
        '          Sum(asd.REAL_TOTAL_PRICE)                             ' +
        '            keep (dense_rank last order by asd.STORE_DEAL_DATE) ' +
        'as REAL_TOTAL_PRICE,'
      '          Sum('
      '            asd.REAL_QUANTITY *'
      
        '            %PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[' +
        'asd.PRODUCT_CODE ~ ContextDate]'
      
        '          )                                                     ' +
        '            keep (dense_rank last order by asd.STORE_DEAL_DATE) ' +
        'as REAL_TOTAL_MARKET_PRICE'
      '        from'
      '          PRODUCTS p,'
      '          PRODUCT_RELATIONS pr,'
      '          AGGR_STORE_DEALS asd,'
      '          DEPT_RELATIONS dr'
      '        where'
      '          (p.PARENT_CODE = :NODE_ID) and'
      '          (pr.ANCESTOR_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '          (pr.DESCENDANT_PRODUCT_CODE = asd.PRODUCT_CODE) and'
      '          (asd.STORE_CODE = dr.DESCENDANT_DEPT_CODE(+)) and'
      '          (:LOCAL_DEPT_CODE = dr.ANCESTOR_DEPT_CODE(+)) and'
      '          (asd.STORE_DEAL_DATE <= ContextDate) and'
      '          ( (:AGGREGATE_VALUES = 1) or'
      '            ( (:AGGREGATE_VALUES = 0) and'
      
        '              (pr.ANCESTOR_PRODUCT_CODE = pr.DESCENDANT_PRODUCT_' +
        'CODE)'
      '            )'
      '          )'
      '        group by'
      '          asd.PRODUCT_CODE,'
      '          asd.STORE_CODE,'
      '          pr.ANCESTOR_PRODUCT_CODE'
      '      ) x'
      ''
      '    group by'
      '      x.ANCESTOR_PRODUCT_CODE'
      '  ) cpq'
      ''
      'where'
      '  (p.PRODUCT_CODE = cpq.PRODUCT_CODE(+)) and'
      '  (p.PARENT_CODE = :NODE_ID) and'
      ''
      '  ( (:COMMON_PRODUCT_CODE is null) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        DEFINITE_PRODUCTS dp'
      '      where'
      '        (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '        (dp.COMMON_PRODUCT_CODE = :COMMON_PRODUCT_CODE)'
      '    )'
      '  ) and'
      ''
      '  %NODE_PARAMS_WHERE_COND'
      ''
      'order by'
      '  NODE_TYPE,'
      '  NODE_NO,'
      '  NODE_NAME'
      '')
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[asd.PRODUCT_C' +
          'ODE ~ ContextDate]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'NODE_PARAMS_WHERE_COND'
        ParamType = ptInput
        Value = '0=0'
      end>
    TableName = 'PRODUCTS_FOR_EDIT'
    object qryNodeChildrenMEASURE_ABBREV: TAbmesWideStringField [8]
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryNodeChildrenACCOUNT_MEASURE_ABBREV: TAbmesWideStringField [9]
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryNodeChildrenLOCAL_QUANTITY: TAbmesFloatField [10]
      FieldName = 'LOCAL_QUANTITY'
    end
    object qryNodeChildrenTOTAL_QUANTITY: TAbmesFloatField [11]
      FieldName = 'TOTAL_QUANTITY'
    end
    object qryNodeChildrenLOCAL_ACCOUNT_QUANTITY: TAbmesFloatField [12]
      FieldName = 'LOCAL_ACCOUNT_QUANTITY'
    end
    object qryNodeChildrenTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField [13]
      FieldName = 'TOTAL_ACCOUNT_QUANTITY'
    end
    object qryNodeChildrenLOCAL_TOTAL_PRICE: TAbmesFloatField [14]
      FieldName = 'LOCAL_TOTAL_PRICE'
    end
    object qryNodeChildrenTOTAL_TOTAL_PRICE: TAbmesFloatField [15]
      FieldName = 'TOTAL_TOTAL_PRICE'
    end
    object qryNodeChildrenLOCAL_MARKET_TOTAL_PRICE: TAbmesFloatField [16]
      FieldName = 'LOCAL_MARKET_TOTAL_PRICE'
    end
    object qryNodeChildrenTOTAL_MARKET_TOTAL_PRICE: TAbmesFloatField [17]
      FieldName = 'TOTAL_MARKET_TOTAL_PRICE'
    end
    object qryNodeChildrenPARTNER_SALE_ACQUIRE_PRICE: TAbmesFloatField [18]
      FieldName = 'PARTNER_SALE_ACQUIRE_PRICE'
    end
    object qryNodeChildrenBASE_SALE_ACQUIRE_PRICE: TAbmesFloatField [19]
      FieldName = 'BASE_SALE_ACQUIRE_PRICE'
    end
    object qryNodeChildrenPARTNER_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField [20]
      FieldName = 'PARTNER_DELIVERY_ACQUIRE_PRICE'
    end
    object qryNodeChildrenBASE_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField [21]
      FieldName = 'BASE_DELIVERY_ACQUIRE_PRICE'
    end
  end
  inherited qryPrintTree: TAbmesSQLQuery
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LOCAL_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AGGREGATE_VALUES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AGGREGATE_VALUES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE as NODE_ID,'
      '  p.PARENT_CODE as PARENT_NODE_ID,'
      '  p.NAME as NODE_NAME,'
      '  p.CUSTOM_CODE as NODE_NO,'
      '  0 as NODE_LEVEL,'
      '  0 as IS_LAST_CHILD,'
      '  0 as ORDER_NO,'
      '  Coalesce('
      '    ('
      '      select'
      '        2'
      '      from'
      '        DEFINITE_PRODUCTS dp'
      '      where'
      '        (dp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '    ),'
      '    1'
      '  ) as NODE_TYPE,'
      '  p.IS_INACTIVE,'
      '  0 as HAS_CHILDREN,'
      ''
      '  p.IS_THOROUGHLY_ENGINEERED,'
      ''
      '  Decode(p.IS_COMMON, 1, 2,'
      '         ( select'
      '             Decode(Sign(Count(*)), 0, 1, 3)'
      '           from'
      '             CONCRETE_PRODUCTS cp,'
      '             DEFINITE_PRODUCTS dp'
      '           where'
      '             (cp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '             (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '             (dp.COMMON_PRODUCT_CODE is not null)'
      '         )'
      '  ) as COMMON_STATUS_CODE,'
      ''
      '  m.MEASURE_ABBREV,'
      '  am.MEASURE_ABBREV as ACCOUNT_MEASURE_ABBREV,'
      ''
      
        '  Nvl2(p.MEASURE_CODE, NullIf(cpq.LOCAL_QUANTITY, 0), null) as L' +
        'OCAL_QUANTITY,'
      
        '  Nvl2(p.MEASURE_CODE, NullIf(cpq.TOTAL_QUANTITY, 0), null) as T' +
        'OTAL_QUANTITY,'
      
        '  Nvl2(p.MEASURE_CODE, NullIf(cpq.LOCAL_ACCOUNT_QUANTITY, 0), nu' +
        'll) as LOCAL_ACCOUNT_QUANTITY,'
      
        '  Nvl2(p.MEASURE_CODE, NullIf(cpq.TOTAL_ACCOUNT_QUANTITY, 0), nu' +
        'll) as TOTAL_ACCOUNT_QUANTITY,'
      '  NullIf(cpq.LOCAL_TOTAL_PRICE, 0) as LOCAL_TOTAL_PRICE,'
      '  NullIf(cpq.TOTAL_TOTAL_PRICE, 0) as TOTAL_TOTAL_PRICE,'
      
        '  NullIf(cpq.LOCAL_MARKET_TOTAL_PRICE, 0) as LOCAL_MARKET_TOTAL_' +
        'PRICE,'
      
        '  NullIf(cpq.TOTAL_MARKET_TOTAL_PRICE, 0) as TOTAL_MARKET_TOTAL_' +
        'PRICE,'
      ''
      
        '  ProductUtils.ProductPartnerBaseAcquirePrice(p.PRODUCT_CODE, :P' +
        'ARTNER_CODE, CommonConsts.brtClient, ContextDate) as PARTNER_SALE_' +
        'ACQUIRE_PRICE,'
      
        '  ProductUtils.ProductPartnerBaseAcquirePrice(p.PRODUCT_CODE, nu' +
        'll, CommonConsts.brtClient, ContextDate) as BASE_SALE_ACQUIRE_PRIC' +
        'E,'
      
        '  ProductUtils.ProductPartnerBaseAcquirePrice(p.PRODUCT_CODE, :P' +
        'ARTNER_CODE, CommonConsts.brtVendor, ContextDate) as PARTNER_DELIV' +
        'ERY_ACQUIRE_PRICE,'
      
        '  ProductUtils.ProductPartnerBaseAcquirePrice(p.PRODUCT_CODE, nu' +
        'll, CommonConsts.brtVendor, ContextDate) as BASE_DELIVERY_ACQUIRE_' +
        'PRICE,'
      ''
      '  ( select'
      
        '      ListAgg(pp.PRODUCT_PARAM_NAME, Chr(8)) within group (order' +
        ' by pp.PRODUCT_PARAM_ORDER_NO)'
      '    from'
      '      PRODUCT_PARAMS pp'
      '    where'
      '      (pp.PRODUCT_CODE = :NODE_ID)'
      '  ) as NODE_PARAM_NAMES,'
      ''
      '  Cast(null as VarChar2(4000)) as NODE_PARAM_VALUES'
      ''
      'from'
      '  PRODUCTS p,'
      '  MEASURES am,'
      '  MEASURES m,'
      '  ( select'
      '      x.ANCESTOR_PRODUCT_CODE as PRODUCT_CODE,'
      '      Sum(x.REAL_LOCAL_QUANTITY) as LOCAL_QUANTITY,'
      '      Sum(x.REAL_TOTAL_QUANTITY) as TOTAL_QUANTITY,'
      
        '      Sum(x.REAL_LOCAL_ACCOUNT_QUANTITY) as LOCAL_ACCOUNT_QUANTI' +
        'TY,'
      
        '      Sum(x.REAL_TOTAL_ACCOUNT_QUANTITY) as TOTAL_ACCOUNT_QUANTI' +
        'TY,'
      '      Sum(x.REAL_LOCAL_PRICE) as LOCAL_TOTAL_PRICE,'
      '      Sum(x.REAL_TOTAL_PRICE) as TOTAL_TOTAL_PRICE,'
      
        '      Sum(x.REAL_LOCAL_MARKET_PRICE) as LOCAL_MARKET_TOTAL_PRICE' +
        ','
      '      Sum(x.REAL_TOTAL_MARKET_PRICE) as TOTAL_MARKET_TOTAL_PRICE'
      ''
      '    from'
      '      ( select'
      '          /*+ ORDERED USE_NL(p pr asd) */'
      '          asd.PRODUCT_CODE,'
      '          asd.STORE_CODE,'
      '          pr.ANCESTOR_PRODUCT_CODE,'
      ''
      '          /* local values */'
      
        '          Sum(Nvl2(dr.ANCESTOR_DEPT_CODE, asd.REAL_QUANTITY, nul' +
        'l))         keep (dense_rank last order by asd.STORE_DEAL_DATE) ' +
        'as REAL_LOCAL_QUANTITY,'
      
        '          Sum(Nvl2(dr.ANCESTOR_DEPT_CODE, asd.REAL_ACCOUNT_QUANT' +
        'ITY, null)) keep (dense_rank last order by asd.STORE_DEAL_DATE) ' +
        'as REAL_LOCAL_ACCOUNT_QUANTITY,'
      
        '          Sum(Nvl2(dr.ANCESTOR_DEPT_CODE, asd.REAL_TOTAL_PRICE, ' +
        'null))      keep (dense_rank last order by asd.STORE_DEAL_DATE) ' +
        'as REAL_LOCAL_PRICE,'
      '          Sum(Nvl2(dr.ANCESTOR_DEPT_CODE,'
      '                   ( asd.REAL_QUANTITY *'
      
        '                     %PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_' +
        'CURRENCY[asd.PRODUCT_CODE ~ ContextDate]'
      '                   ),'
      
        '                   null))                                       ' +
        '            keep (dense_rank last order by asd.STORE_DEAL_DATE) ' +
        'as REAL_LOCAL_MARKET_PRICE,'
      ''
      '          /* total values */'
      
        '          Sum(asd.REAL_QUANTITY)                                ' +
        '            keep (dense_rank last order by asd.STORE_DEAL_DATE) ' +
        'as REAL_TOTAL_QUANTITY,'
      
        '          Sum(asd.REAL_ACCOUNT_QUANTITY)                        ' +
        '            keep (dense_rank last order by asd.STORE_DEAL_DATE) ' +
        'as REAL_TOTAL_ACCOUNT_QUANTITY,'
      
        '          Sum(asd.REAL_TOTAL_PRICE)                             ' +
        '            keep (dense_rank last order by asd.STORE_DEAL_DATE) ' +
        'as REAL_TOTAL_PRICE,'
      '          Sum('
      '            asd.REAL_QUANTITY *'
      
        '            %PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[' +
        'asd.PRODUCT_CODE ~ ContextDate]'
      
        '          )                                                     ' +
        '            keep (dense_rank last order by asd.STORE_DEAL_DATE) ' +
        'as REAL_TOTAL_MARKET_PRICE'
      '        from'
      '          PRODUCTS p,'
      '          PRODUCT_RELATIONS pr,'
      '          AGGR_STORE_DEALS asd,'
      '          DEPT_RELATIONS dr'
      '        where'
      '          (p.PARENT_CODE = :NODE_ID) and'
      '          (pr.ANCESTOR_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '          (pr.DESCENDANT_PRODUCT_CODE = asd.PRODUCT_CODE) and'
      '          (asd.STORE_CODE = dr.DESCENDANT_DEPT_CODE(+)) and'
      '          (:LOCAL_DEPT_CODE = dr.ANCESTOR_DEPT_CODE(+)) and'
      '          (asd.STORE_DEAL_DATE <= ContextDate) and'
      '          ( (:AGGREGATE_VALUES = 1) or'
      '            ( (:AGGREGATE_VALUES = 0) and'
      
        '              (pr.ANCESTOR_PRODUCT_CODE = pr.DESCENDANT_PRODUCT_' +
        'CODE)'
      '            )'
      '          )'
      '        group by'
      '          asd.PRODUCT_CODE,'
      '          asd.STORE_CODE,'
      '          pr.ANCESTOR_PRODUCT_CODE'
      '      ) x'
      ''
      '    group by'
      '      x.ANCESTOR_PRODUCT_CODE'
      '  ) cpq'
      ''
      'where'
      '  (p.MEASURE_CODE = m.MEASURE_CODE(+)) and'
      '  (p.ACCOUNT_MEASURE_CODE = am.MEASURE_CODE(+)) and'
      '  (p.PRODUCT_CODE = cpq.PRODUCT_CODE(+)) and'
      ''
      '  (p.PRODUCT_CODE = :NODE_ID)'
      ''
      'order by'
      '  ORDER_NO')
    Macros = <
      item
        DataType = ftString
        Name = 
          'PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[asd.PRODUCT_C' +
          'ODE ~ ContextDate]'
        ParamType = ptInput
        Value = '1'
      end>
    object qryPrintTreeMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryPrintTreeACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryPrintTreeLOCAL_QUANTITY: TAbmesFloatField
      FieldName = 'LOCAL_QUANTITY'
    end
    object qryPrintTreeTOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_QUANTITY'
    end
    object qryPrintTreeLOCAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'LOCAL_ACCOUNT_QUANTITY'
    end
    object qryPrintTreeTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_ACCOUNT_QUANTITY'
    end
    object qryPrintTreeLOCAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'LOCAL_TOTAL_PRICE'
    end
    object qryPrintTreeTOTAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_TOTAL_PRICE'
    end
    object qryPrintTreeLOCAL_MARKET_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'LOCAL_MARKET_TOTAL_PRICE'
    end
    object qryPrintTreeTOTAL_MARKET_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_MARKET_TOTAL_PRICE'
    end
    object qryPrintTreePARTNER_SALE_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'PARTNER_SALE_ACQUIRE_PRICE'
    end
    object qryPrintTreeBASE_SALE_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'BASE_SALE_ACQUIRE_PRICE'
    end
    object qryPrintTreePARTNER_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'PARTNER_DELIVERY_ACQUIRE_PRICE'
    end
    object qryPrintTreeBASE_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'BASE_DELIVERY_ACQUIRE_PRICE'
    end
    object qryPrintTreeNODE_PARAM_NAMES: TAbmesWideStringField
      FieldName = 'NODE_PARAM_NAMES'
      Size = 4000
    end
    object qryPrintTreeNODE_PARAM_VALUES: TAbmesWideStringField
      FieldName = 'NODE_PARAM_VALUES'
      Size = 4000
    end
  end
  inherited qryPrintTreeChildren: TAbmesSQLQuery
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
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
      end
      item
        DataType = ftFloat
        Name = 'LOCAL_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AGGREGATE_VALUES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AGGREGATE_VALUES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  y.*,'
      ''
      '  (level - 1) as LEVEL_NO,'
      ''
      '  Cast(null as VarChar2(4000)) as NODE_PARAM_NAMES,'
      ''
      '  ( select'
      
        '      ListAgg(Coalesce(pp.PARAM_VALUE, Chr(7)), Chr(8)) within g' +
        'roup (order by rp.PRODUCT_PARAM_ORDER_NO)'
      '    from'
      '      PRODUCT_PARAMS rp,'
      '      PRODUCT_PARAMS pp'
      '    where'
      '      (rp.PRODUCT_CODE = :NODE_ID) and'
      '      (pp.PRODUCT_CODE = y.NODE_ID) and'
      '      (pp.PRODUCT_PARAM_CODE = rp.PRODUCT_PARAM_CODE)'
      '  ) as NODE_PARAM_VALUES'
      ''
      'from'
      '  ( select'
      '      p.PRODUCT_CODE as NODE_ID,'
      '      p.PARENT_CODE as PARENT_NODE_ID,'
      '      p.NAME as NODE_NAME,'
      '      p.CUSTOM_CODE as NODE_NO,'
      ''
      '      Coalesce('
      '        ( select'
      '            2'
      '          from'
      '            DEFINITE_PRODUCTS dp'
      '          where'
      '            (dp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '        ),'
      '        1'
      '      ) as NODE_TYPE,'
      ''
      '      p.IS_INACTIVE,'
      ''
      '      p.IS_THOROUGHLY_ENGINEERED,'
      ''
      '      Decode(p.IS_COMMON, 1, 2,'
      '             ( select'
      '                 Decode(Sign(Count(*)), 0, 1, 3)'
      '               from'
      '                 CONCRETE_PRODUCTS cp,'
      '                 DEFINITE_PRODUCTS dp'
      '               where'
      '                 (cp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '                 (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '                 (dp.COMMON_PRODUCT_CODE is not null)'
      '             )'
      '      ) as COMMON_STATUS_CODE,'
      ''
      '      ( select'
      '          Count(p3.PRODUCT_CODE) as NODE_CHILD_COUNT'
      '        from'
      '          PRODUCTS p3'
      '        where'
      '          (p3.PARENT_CODE = p.PRODUCT_CODE) and'
      '          (p3.IS_INACTIVE <= :SHOW_INACTIVE)'
      '      ) as NODE_CHILD_COUNT,'
      ''
      '      m.MEASURE_ABBREV,'
      '      am.MEASURE_ABBREV as ACCOUNT_MEASURE_ABBREV,'
      ''
      
        '      Nvl2(p.MEASURE_CODE, NullIf(cpq.LOCAL_QUANTITY, 0), null) ' +
        'as LOCAL_QUANTITY,'
      
        '      Nvl2(p.MEASURE_CODE, NullIf(cpq.TOTAL_QUANTITY, 0), null) ' +
        'as TOTAL_QUANTITY,'
      
        '      Nvl2(p.MEASURE_CODE, NullIf(cpq.LOCAL_ACCOUNT_QUANTITY, 0)' +
        ', null) as LOCAL_ACCOUNT_QUANTITY,'
      
        '      Nvl2(p.MEASURE_CODE, NullIf(cpq.TOTAL_ACCOUNT_QUANTITY, 0)' +
        ', null) as TOTAL_ACCOUNT_QUANTITY,'
      '      NullIf(cpq.LOCAL_TOTAL_PRICE, 0) as LOCAL_TOTAL_PRICE,'
      '      NullIf(cpq.TOTAL_TOTAL_PRICE, 0) as TOTAL_TOTAL_PRICE,'
      
        '      NullIf(cpq.LOCAL_MARKET_TOTAL_PRICE, 0) as LOCAL_MARKET_TO' +
        'TAL_PRICE,'
      
        '      NullIf(cpq.TOTAL_MARKET_TOTAL_PRICE, 0) as TOTAL_MARKET_TO' +
        'TAL_PRICE,'
      ''
      
        '      ProductUtils.ProductPartnerBaseAcquirePrice(p.PRODUCT_CODE' +
        ', :PARTNER_CODE, CommonConsts.brtClient, ContextDate) as PARTNER_S' +
        'ALE_ACQUIRE_PRICE,'
      
        '      ProductUtils.ProductPartnerBaseAcquirePrice(p.PRODUCT_CODE' +
        ', null, CommonConsts.brtClient, ContextDate) as BASE_SALE_ACQUIRE_' +
        'PRICE,'
      
        '      ProductUtils.ProductPartnerBaseAcquirePrice(p.PRODUCT_CODE' +
        ', :PARTNER_CODE, CommonConsts.brtVendor, ContextDate) as PARTNER_D' +
        'ELIVERY_ACQUIRE_PRICE,'
      
        '      ProductUtils.ProductPartnerBaseAcquirePrice(p.PRODUCT_CODE' +
        ', null, CommonConsts.brtVendor, ContextDate) as BASE_DELIVERY_ACQU' +
        'IRE_PRICE'
      ''
      '    from'
      '      PRODUCT_RELATIONS pr,'
      '      PRODUCTS p,'
      '      MEASURES m,'
      '      MEASURES am,'
      '      ( select'
      '          x.ANCESTOR_PRODUCT_CODE as PRODUCT_CODE,'
      '          Sum(x.REAL_LOCAL_QUANTITY) as LOCAL_QUANTITY,'
      '          Sum(x.REAL_TOTAL_QUANTITY) as TOTAL_QUANTITY,'
      
        '          Sum(x.REAL_LOCAL_ACCOUNT_QUANTITY) as LOCAL_ACCOUNT_QU' +
        'ANTITY,'
      
        '          Sum(x.REAL_TOTAL_ACCOUNT_QUANTITY) as TOTAL_ACCOUNT_QU' +
        'ANTITY,'
      '          Sum(x.REAL_LOCAL_PRICE) as LOCAL_TOTAL_PRICE,'
      '          Sum(x.REAL_TOTAL_PRICE) as TOTAL_TOTAL_PRICE,'
      
        '          Sum(x.REAL_LOCAL_MARKET_PRICE) as LOCAL_MARKET_TOTAL_P' +
        'RICE,'
      
        '          Sum(x.REAL_TOTAL_MARKET_PRICE) as TOTAL_MARKET_TOTAL_P' +
        'RICE'
      ''
      '        from'
      '          ( select'
      '              asd.PRODUCT_CODE,'
      '              asd.STORE_CODE,'
      '              pr.ANCESTOR_PRODUCT_CODE,'
      ''
      '              /* local values */'
      
        '              Sum(Nvl2(dr.ANCESTOR_DEPT_CODE, asd.REAL_QUANTITY,' +
        ' null))         keep (dense_rank last order by asd.STORE_DEAL_DA' +
        'TE) as REAL_LOCAL_QUANTITY,'
      
        '              Sum(Nvl2(dr.ANCESTOR_DEPT_CODE, asd.REAL_ACCOUNT_Q' +
        'UANTITY, null)) keep (dense_rank last order by asd.STORE_DEAL_DA' +
        'TE) as REAL_LOCAL_ACCOUNT_QUANTITY,'
      
        '              Sum(Nvl2(dr.ANCESTOR_DEPT_CODE, asd.REAL_TOTAL_PRI' +
        'CE, null))      keep (dense_rank last order by asd.STORE_DEAL_DA' +
        'TE) as REAL_LOCAL_PRICE,'
      '              Sum(Nvl2(dr.ANCESTOR_DEPT_CODE,'
      '                       ( asd.REAL_QUANTITY *'
      
        '                         %PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_B' +
        'ASE_CURRENCY[asd.PRODUCT_CODE ~ ContextDate]'
      '                       ),'
      
        '                       null))                                   ' +
        '                keep (dense_rank last order by asd.STORE_DEAL_DA' +
        'TE) as REAL_LOCAL_MARKET_PRICE,'
      ''
      '              /* total values */'
      
        '              Sum(asd.REAL_QUANTITY)                            ' +
        '                keep (dense_rank last order by asd.STORE_DEAL_DA' +
        'TE) as REAL_TOTAL_QUANTITY,'
      
        '              Sum(asd.REAL_ACCOUNT_QUANTITY)                    ' +
        '                keep (dense_rank last order by asd.STORE_DEAL_DA' +
        'TE) as REAL_TOTAL_ACCOUNT_QUANTITY,'
      
        '              Sum(asd.REAL_TOTAL_PRICE)                         ' +
        '                keep (dense_rank last order by asd.STORE_DEAL_DA' +
        'TE) as REAL_TOTAL_PRICE,'
      '              Sum('
      '                asd.REAL_QUANTITY *'
      
        '                %PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRE' +
        'NCY[asd.PRODUCT_CODE ~ ContextDate]'
      
        '              )                                                 ' +
        '                keep (dense_rank last order by asd.STORE_DEAL_DA' +
        'TE) as REAL_TOTAL_MARKET_PRICE'
      '            from'
      '              AGGR_STORE_DEALS asd,'
      '              PRODUCT_RELATIONS pr,'
      '              PRODUCTS p,'
      '              DEPT_RELATIONS dr'
      '            where'
      '              (pr.ANCESTOR_PRODUCT_CODE = p.PRODUCT_CODE) and'
      
        '              (pr.DESCENDANT_PRODUCT_CODE = asd.PRODUCT_CODE) an' +
        'd'
      '              (asd.STORE_CODE = dr.DESCENDANT_DEPT_CODE(+)) and'
      '              (:LOCAL_DEPT_CODE = dr.ANCESTOR_DEPT_CODE(+)) and'
      '              (asd.STORE_DEAL_DATE <= ContextDate) and'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    PRODUCT_RELATIONS pr2'
      '                  where'
      '                    (pr2.ANCESTOR_PRODUCT_CODE = :NODE_ID) and'
      
        '                    (pr2.DESCENDANT_PRODUCT_CODE = p.PRODUCT_COD' +
        'E)'
      '                )'
      '              ) and'
      '              ( (:AGGREGATE_VALUES = 1) or'
      '                ( (:AGGREGATE_VALUES = 0) and'
      
        '                  (pr.ANCESTOR_PRODUCT_CODE = pr.DESCENDANT_PROD' +
        'UCT_CODE)'
      '                )'
      '              )'
      '            group by'
      '              asd.PRODUCT_CODE,'
      '              asd.STORE_CODE,'
      '              pr.ANCESTOR_PRODUCT_CODE'
      '          ) x'
      '      '
      '        group by'
      '          x.ANCESTOR_PRODUCT_CODE'
      '      ) cpq'
      ''
      '    where'
      '      (pr.DESCENDANT_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (pr.ANCESTOR_PRODUCT_CODE = :NODE_ID) and'
      ''
      '      (p.MEASURE_CODE = m.MEASURE_CODE(+)) and'
      '      (p.ACCOUNT_MEASURE_CODE = am.MEASURE_CODE(+)) and'
      '      (p.PRODUCT_CODE = cpq.PRODUCT_CODE(+)) and'
      ''
      '      (p.IS_INACTIVE <= :SHOW_INACTIVE) and'
      ''
      '      %NODE_PARAMS_WHERE_COND'
      '  ) y'
      ''
      'start with'
      '  (y.NODE_ID = :NODE_ID)'
      ''
      'connect by'
      '  (y.PARENT_NODE_ID = prior y.NODE_ID)'
      ''
      'order siblings by'
      '  %ORDER_BY_FIELDS,'
      '  y.NODE_NO,'
      '  y.NODE_NAME'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 
          'PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[asd.PRODUCT_C' +
          'ODE ~ ContextDate]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'NODE_PARAMS_WHERE_COND'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'ORDER_BY_FIELDS'
        ParamType = ptInput
        Value = '1'
      end>
    object qryPrintTreeChildrenMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryPrintTreeChildrenACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryPrintTreeChildrenLOCAL_QUANTITY: TAbmesFloatField
      FieldName = 'LOCAL_QUANTITY'
    end
    object qryPrintTreeChildrenTOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_QUANTITY'
    end
    object qryPrintTreeChildrenLOCAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'LOCAL_ACCOUNT_QUANTITY'
    end
    object qryPrintTreeChildrenTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_ACCOUNT_QUANTITY'
    end
    object qryPrintTreeChildrenLOCAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'LOCAL_TOTAL_PRICE'
    end
    object qryPrintTreeChildrenTOTAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_TOTAL_PRICE'
    end
    object qryPrintTreeChildrenLOCAL_MARKET_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'LOCAL_MARKET_TOTAL_PRICE'
    end
    object qryPrintTreeChildrenTOTAL_MARKET_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_MARKET_TOTAL_PRICE'
    end
    object qryPrintTreeChildrenPARTNER_SALE_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'PARTNER_SALE_ACQUIRE_PRICE'
    end
    object qryPrintTreeChildrenBASE_SALE_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'BASE_SALE_ACQUIRE_PRICE'
    end
    object qryPrintTreeChildrenPARTNER_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'PARTNER_DELIVERY_ACQUIRE_PRICE'
    end
    object qryPrintTreeChildrenBASE_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'BASE_DELIVERY_ACQUIRE_PRICE'
    end
    object qryPrintTreeChildrenNODE_PARAM_NAMES: TAbmesWideStringField
      FieldName = 'NODE_PARAM_NAMES'
      Size = 4000
    end
    object qryPrintTreeChildrenNODE_PARAM_VALUES: TAbmesWideStringField
      FieldName = 'NODE_PARAM_VALUES'
      Size = 4000
    end
  end
  inherited cdsPrintTreeChildren: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'NODE_ID'
        DataType = ftFloat
      end
      item
        Name = 'PARENT_NODE_ID'
        DataType = ftFloat
      end
      item
        Name = 'NODE_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'NODE_NO'
        DataType = ftFloat
      end
      item
        Name = 'NODE_CHILD_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'NODE_TYPE'
        DataType = ftFloat
      end
      item
        Name = 'IS_INACTIVE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'LEVEL_NO'
        DataType = ftFloat
      end
      item
        Name = 'IS_THOROUGHLY_ENGINEERED'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'COMMON_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'ACCOUNT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'LOCAL_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'LOCAL_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'LOCAL_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'LOCAL_MARKET_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_MARKET_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_SALE_ACQUIRE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'BASE_SALE_ACQUIRE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_DELIVERY_ACQUIRE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'BASE_DELIVERY_ACQUIRE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'NODE_PARAM_NAMES'
        DataType = ftWideString
        Size = 4000
      end
      item
        Name = 'NODE_PARAM_VALUES'
        DataType = ftWideString
        Size = 4000
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
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
      end
      item
        DataType = ftFloat
        Name = 'LOCAL_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AGGREGATE_VALUES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AGGREGATE_VALUES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end>
    BeforeOpen = cdsPrintTreeChildrenBeforeOpen
    object cdsPrintTreeChildrenMEASURE_ABBREV: TAbmesWideStringField [7]
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsPrintTreeChildrenACCOUNT_MEASURE_ABBREV: TAbmesWideStringField [8]
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsPrintTreeChildrenLOCAL_QUANTITY: TAbmesFloatField [9]
      FieldName = 'LOCAL_QUANTITY'
    end
    object cdsPrintTreeChildrenTOTAL_QUANTITY: TAbmesFloatField [10]
      FieldName = 'TOTAL_QUANTITY'
    end
    object cdsPrintTreeChildrenLOCAL_ACCOUNT_QUANTITY: TAbmesFloatField [11]
      FieldName = 'LOCAL_ACCOUNT_QUANTITY'
    end
    object cdsPrintTreeChildrenTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField [12]
      FieldName = 'TOTAL_ACCOUNT_QUANTITY'
    end
    object cdsPrintTreeChildrenLOCAL_TOTAL_PRICE: TAbmesFloatField [13]
      FieldName = 'LOCAL_TOTAL_PRICE'
    end
    object cdsPrintTreeChildrenTOTAL_TOTAL_PRICE: TAbmesFloatField [14]
      FieldName = 'TOTAL_TOTAL_PRICE'
    end
    object cdsPrintTreeChildrenLOCAL_MARKET_TOTAL_PRICE: TAbmesFloatField [15]
      FieldName = 'LOCAL_MARKET_TOTAL_PRICE'
    end
    object cdsPrintTreeChildrenTOTAL_MARKET_TOTAL_PRICE: TAbmesFloatField [16]
      FieldName = 'TOTAL_MARKET_TOTAL_PRICE'
    end
    object cdsPrintTreeChildrenPARTNER_SALE_ACQUIRE_PRICE: TAbmesFloatField [17]
      FieldName = 'PARTNER_SALE_ACQUIRE_PRICE'
    end
    object cdsPrintTreeChildrenBASE_SALE_ACQUIRE_PRICE: TAbmesFloatField [18]
      FieldName = 'BASE_SALE_ACQUIRE_PRICE'
    end
    object cdsPrintTreeChildrenPARTNER_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField [19]
      FieldName = 'PARTNER_DELIVERY_ACQUIRE_PRICE'
    end
    object cdsPrintTreeChildrenBASE_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField [20]
      FieldName = 'BASE_DELIVERY_ACQUIRE_PRICE'
    end
    object cdsPrintTreeChildrenNODE_PARAM_NAMES: TAbmesWideStringField [24]
      FieldName = 'NODE_PARAM_NAMES'
      Size = 4000
    end
    object cdsPrintTreeChildrenNODE_PARAM_VALUES: TAbmesWideStringField [25]
      FieldName = 'NODE_PARAM_VALUES'
      Size = 4000
    end
  end
  inherited qryGetCompanyProductName: TAbmesSQLQuery
    Left = 560
    Top = 175
  end
  inherited qryProductDoc: TAbmesSQLQuery
    Left = 304
    Top = 176
  end
  inherited qryCheckProductRelation: TAbmesSQLQuery
    Top = 120
  end
  object prvProductStoreQuantities: TDataSetProvider
    DataSet = qryProductStoreQuantities
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 664
    Top = 224
  end
  object qryProductStoreQuantities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.STORE_CODE,'
      ''
      '  ( select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER |' +
        '| '#39' - '#39' || d.NAME)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = x.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as STORE_FULL_NAME,'
      ''
      
        '  Nvl2(p.MEASURE_CODE, Sum(x.REAL_TOTAL_QUANTITY), null) as TOTA' +
        'L_QUANTITY,'
      
        '  Nvl2(p.MEASURE_CODE, Sum(x.REAL_TOTAL_ACCOUNT_QUANTITY), null)' +
        ' as TOTAL_ACCOUNT_QUANTITY,'
      '  Sum(x.REAL_TOTAL_PRICE) as TOTAL_PRICE,'
      '  Sum(x.REAL_TOTAL_MARKET_PRICE) as TOTAL_MARKET_PRICE'
      ''
      'from'
      '  PRODUCTS p,'
      ''
      '  ( select'
      '      /*+ INDEX(asd_p) */'
      '      asd.PRODUCT_CODE,'
      '      asd.STORE_CODE,'
      
        '      Sum(asd.REAL_QUANTITY)         keep (dense_rank last order' +
        ' by asd.STORE_DEAL_DATE) as REAL_TOTAL_QUANTITY,'
      
        '      Sum(asd.REAL_ACCOUNT_QUANTITY) keep (dense_rank last order' +
        ' by asd.STORE_DEAL_DATE) as REAL_TOTAL_ACCOUNT_QUANTITY,'
      
        '      Sum(asd.REAL_TOTAL_PRICE)      keep (dense_rank last order' +
        ' by asd.STORE_DEAL_DATE) as REAL_TOTAL_PRICE,'
      '      Sum('
      '        asd.REAL_QUANTITY *'
      
        '        %PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[asd.' +
        'PRODUCT_CODE ~ ContextDate]'
      
        '      )                              keep (dense_rank last order' +
        ' by asd.STORE_DEAL_DATE) as REAL_TOTAL_MARKET_PRICE'
      '    from'
      '      PRODUCT_RELATIONS pr,'
      '      PRODUCTS asd_p,'
      '      AGGR_STORE_DEALS asd'
      '    where'
      '      (pr.ANCESTOR_PRODUCT_CODE = :PRODUCT_CODE) and'
      '      (pr.DESCENDANT_PRODUCT_CODE = asd_p.PRODUCT_CODE) and'
      '      (pr.DESCENDANT_PRODUCT_CODE = asd.PRODUCT_CODE) and'
      '      (asd.PRODUCT_CODE = asd_p.PRODUCT_CODE) and'
      '      (asd.STORE_DEAL_DATE <= ContextDate)'
      '    group by'
      '      asd.PRODUCT_CODE,'
      '      asd.STORE_CODE'
      '  ) x'
      ''
      'where'
      '  (p.PRODUCT_CODE = :PRODUCT_CODE)'
      ''
      'group by'
      '  x.STORE_CODE,'
      '  p.MEASURE_CODE'
      ''
      'having'
      '  (MiscUtils.LargeZero(Sum(x.REAL_TOTAL_QUANTITY)) <> 0)'
      ''
      'order by'
      '  STORE_FULL_NAME'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 
          'PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY[asd.PRODUCT_C' +
          'ODE ~ ContextDate]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 664
    Top = 272
    object qryProductStoreQuantitiesSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProductStoreQuantitiesSTORE_FULL_NAME: TAbmesWideStringField
      FieldName = 'STORE_FULL_NAME'
      Size = 149
    end
    object qryProductStoreQuantitiesTOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_QUANTITY'
    end
    object qryProductStoreQuantitiesTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_ACCOUNT_QUANTITY'
    end
    object qryProductStoreQuantitiesTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryProductStoreQuantitiesTOTAL_MARKET_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_MARKET_PRICE'
    end
  end
end
