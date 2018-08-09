inherited dmProductsTree: TdmProductsTree
  Height = 443
  Width = 829
  inherited qryTreeNodeChildren: TAbmesSQLQuery
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
        Value = 0
      end>
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
      '  ) '
      ''
      'order by'
      '  NODE_NO,'
      '  NODE_NAME,'
      '  NODE_ID')
  end
  inherited qryTreeToNode: TAbmesSQLQuery
    Params = <
      item
        DataType = ftFloat
        Name = 'ROOT_NODE_ID'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
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
        Name = 'ROOT_NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROOT_NODE_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE as NODE_ID,'
      '  p.PARENT_CODE as PARENT_NODE_ID,'
      '  p.NAME as NODE_NAME,'
      '  p.CUSTOM_CODE as NODE_NO,'
      
        '  Decode(p.PRODUCT_CODE, :ROOT_NODE_ID, 0, Nvl2(p.CUSTOM_CODE, 1' +
        ', 0)) as NODE_TYPE,'
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      PRODUCTS p3'
      '    where'
      '      (p3.PARENT_CODE = p.PRODUCT_CODE) and'
      '      (p3.IS_GROUP = 1)'
      '  ) as IS_EXPANDABLE,'
      '  Decode(p.PRODUCT_CODE,'
      '         ('
      '           select'
      '             pn.PARENT_CODE'
      '           from'
      '             PRODUCTS pn'
      '           where'
      '             (pn.PRODUCT_CODE = :NODE_ID)'
      '         ),'
      '         1, 0) as IS_THE_PARENT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      PRODUCT_RELATIONS prc'
      '    where'
      '      (prc.DESCENDANT_PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as NODE_REAL_LEVEL'
      ''
      'from'
      '  PRODUCT_RELATIONS pr,'
      '  PRODUCTS p2,'
      '  PRODUCTS p'
      ''
      'where'
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '  (pr.ANCESTOR_PRODUCT_CODE = p2.PRODUCT_CODE) and'
      '  (Coalesce(p2.PARENT_CODE, 0) = Coalesce(p.PARENT_CODE, 0)) and'
      ''
      '  (pr.DESCENDANT_PRODUCT_CODE = :NODE_ID) and'
      '  (pr.ANCESTOR_PRODUCT_CODE <> :NODE_ID) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      PRODUCT_RELATIONS pr2'
      '    where'
      '      (pr2.ANCESTOR_PRODUCT_CODE = :ROOT_NODE_ID) and'
      '      (pr2.DESCENDANT_PRODUCT_CODE = pr.ANCESTOR_PRODUCT_CODE)'
      '  ) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      PRODUCT_RELATIONS pr3'
      '    where'
      '      (pr3.ANCESTOR_PRODUCT_CODE = :ROOT_NODE_ID) and'
      '      (pr3.DESCENDANT_PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) and'
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
      '  NODE_REAL_LEVEL,'
      '  NODE_NO,'
      '  NODE_NAME')
  end
  inherited qryNodeChildren: TAbmesSQLQuery
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
        Value = '0'
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
      '  p.CUSTOM_CODE as NODE_NO,'
      '  p.IS_INACTIVE,'
      '  sp.SPEC_PRODUCT_CODE,'
      ''
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION,'
      ''
      '  p.IS_THOROUGHLY_ENGINEERED,'
      ''
      '  Decode(p.IS_COMMON, 1, 2,'
      '         ( select'
      
        '             Decode(Sign(Count(*)), 0, 1, 3 + p.IS_THOROUGHLY_EN' +
        'GINEERED)'
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
      '  SPECS sp'
      ''
      'where'
      '  (p.PRODUCT_CODE = sp.SPEC_PRODUCT_CODE(+)) and'
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
      '  NODE_NAME')
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'NODE_PARAMS_WHERE_COND'
        ParamType = ptInput
        Value = '0=0'
      end>
    object qryNodeChildrenSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryNodeChildrenHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryNodeChildrenIS_THOROUGHLY_ENGINEERED: TAbmesFloatField
      FieldName = 'IS_THOROUGHLY_ENGINEERED'
      Required = True
    end
    object qryNodeChildrenCOMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMMON_STATUS_CODE'
    end
  end
  inherited qryTreeNode: TAbmesSQLQuery
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
        Value = 0
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
        Name = 'NODE_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE as NODE_ID,'
      '  p.PARENT_CODE as PARENT_NODE_ID,'
      '  p.NAME as NODE_NAME,'
      '  p.CUSTOM_CODE as NODE_NO,'
      '  Nvl2(p.CUSTOM_CODE, 1, 0) as NODE_TYPE,'
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      PRODUCTS p3'
      '    where'
      '      (p3.PARENT_CODE = p.PRODUCT_CODE) and'
      '      (p3.IS_GROUP = 1)'
      '  ) as IS_EXPANDABLE'
      ''
      'from'
      '  PRODUCTS p'
      ''
      'where'
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and '
      '  ( ( (:NODE_ID = CommonConsts.TreeRootCode) and'
      '      (p.PARENT_CODE = :NODE_ID)'
      '    ) or'
      '    ( (:NODE_ID <> CommonConsts.TreeRootCode) and'
      '      (p.PRODUCT_CODE = :NODE_ID)'
      '    )'
      '  )'
      ''
      'order by'
      '  NODE_ID,'
      '  PARENT_NODE_ID,'
      '  NODE_NAME')
  end
  inherited prvNodeChildren: TDataSetProvider
    Options = [poFetchBlobsOnDemand, poReadOnly]
  end
  inherited qryIsDescendantOf: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  pr.DESCENDANT_PRODUCT_CODE as DESCENDANT_NODE_ID'
      'from'
      '  PRODUCT_RELATIONS pr'
      'where'
      '  (pr.ANCESTOR_PRODUCT_CODE = :ROOT_ID) and'
      '  (pr.DESCENDANT_PRODUCT_CODE = :NODE_ID)'
      ' ')
  end
  inherited qryNodeIsInstance: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  1 as IS_INSTANCE'
      'from'
      '  DEFINITE_PRODUCTS dp'
      'where'
      '  (dp.PRODUCT_CODE = :NODE_ID)'
      '')
  end
  inherited qryPrintTree: TAbmesSQLQuery
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
      '  ) as COMMON_STATUS_CODE'
      ''
      'from'
      '  PRODUCTS p'
      ''
      'where'
      '  (p.PRODUCT_CODE = :NODE_ID) '
      ''
      'order by'
      '  ORDER_NO')
    object qryPrintTreeIS_THOROUGHLY_ENGINEERED: TAbmesFloatField
      FieldName = 'IS_THOROUGHLY_ENGINEERED'
      Required = True
    end
    object qryPrintTreeCOMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMMON_STATUS_CODE'
    end
  end
  inherited qryNodeData: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  p.CUSTOM_CODE as NODE_NO,'
      '  p.NAME as NODE_NAME,'
      '  p.MEASURE_CODE as WORK_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_COEF,'
      '  p.TECH_MEASURE_CODE,'
      '  p.TECH_MEASURE_COEF,'
      ''
      
        '  (%PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[p.PRODUCT_CODE ~ Cont' +
        'extDate] / p.ACCOUNT_MEASURE_COEF) as ESTIMATED_SECONDARY_PRICE,'
      ''
      '  ( select'
      
        '      pper.SALE_ACQUIRE_SINGLE_PRICE * scr.FIXING / p.ACCOUNT_ME' +
        'ASURE_COEF'
      '    from'
      '      PRODUCT_PERIODS pper,'
      '      SECONDARY_CURRENCY_RATES scr'
      '    where'
      
        '      (pper.PRODUCT_CODE = %PRODUCT_PERIOD_EXISTANCE_PRODUCT_COD' +
        'E[p.PRODUCT_CODE ~ ContextDate]) and'
      
        '      (ContextDate between pper.BEGIN_DATE and pper.END_DATE) an' +
        'd'
      '      (scr.RATE_DATE = Least(ContextDate, ContextDate)) and'
      '      (scr.CURRENCY_CODE = pper.SALE_ACQUIRE_CURRENCY_CODE)'
      '  ) as MARKET_SECONDARY_PRICE,'
      ''
      '  ( select'
      
        '      pper.SALE_LEASE_SINGLE_PRICE * scr.FIXING / p.ACCOUNT_MEAS' +
        'URE_COEF'
      '    from'
      '      PRODUCT_PERIODS pper,'
      '      SECONDARY_CURRENCY_RATES scr'
      '    where'
      
        '      (pper.PRODUCT_CODE = %PRODUCT_PERIOD_EXISTANCE_PRODUCT_COD' +
        'E[p.PRODUCT_CODE ~ ContextDate]) and'
      
        '      (ContextDate between pper.BEGIN_DATE and pper.END_DATE) an' +
        'd'
      '      (scr.RATE_DATE = Least(ContextDate, ContextDate)) and'
      '      (scr.CURRENCY_CODE = pper.SALE_LEASE_CURRENCY_CODE)'
      '  ) as SALE_LEASE_SECONDARY_PRICE,'
      ''
      '  ( select'
      '      pper.SALE_LEASE_DATE_UNIT_CODE'
      '    from'
      '      PRODUCT_PERIODS pper'
      '    where'
      
        '      (pper.PRODUCT_CODE = %PRODUCT_PERIOD_EXISTANCE_PRODUCT_COD' +
        'E[p.PRODUCT_CODE ~ ContextDate]) and'
      '      (ContextDate between pper.BEGIN_DATE and pper.END_DATE)'
      '  ) as SALE_LEASE_DATE_UNIT_CODE,'
      ''
      '  p.IS_VAT_FREE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION,'
      '  p.TRANSPORT_MEASURE_CODE,'
      '  p.TRANSPORT_MEASURE_COEF,'
      '  p.SELF_EXISTENT_STATUS_CODE,'
      '  p.IS_GROUP,'
      '  p.TRANSIENT_STATUS_CODE,'
      '  p.WORKDAYS_TO_EXIST,'
      '  p.PARENT_CODE,'
      '  p.IS_INACTIVE,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      ''
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = p.DOC_CODE) and'
      '      (d.IS_COMPLETE = 1) and'
      ''
      '      not exists('
      '        select'
      '          1'
      '        from'
      '          DOC_ITEMS di'
      '        where'
      '          (di.DOC_BRANCH_CODE = d.DOC_BRANCH_CODE) and'
      '          (di.DOC_CODE = d.DOC_CODE) and'
      '          (di.IS_INACTIVE = 0) and'
      '          (di.APPROVE_EMPLOYEE_CODE is null) and'
      '          (di.AUTHORIZE_EMPLOYEE_CODE is null)'
      '      )'
      '  ) as IS_SELF_APPROVED,'
      ''
      '  p.PRODUCT_SPEC_REQUIREMENT_CODE,'
      '  p.BOI_ORDER_TYPE_CODE,'
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
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as HAS_SPEC'
      ''
      'from'
      '  PRODUCTS p'
      ''
      'where'
      '  (p.PRODUCT_CODE = :NODE_ID)')
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[p.PRODUCT_CODE ~ ContextD' +
          'ate]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'PRODUCT_PERIOD_EXISTANCE_PRODUCT_CODE[p.PRODUCT_CODE ~ ContextDa' +
          'te]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end>
    Top = 208
    object qryNodeDataWORK_MEASURE_CODE: TAbmesFloatField
      FieldName = 'WORK_MEASURE_CODE'
    end
    object qryNodeDataACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryNodeDataACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object qryNodeDataTECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TECH_MEASURE_CODE'
    end
    object qryNodeDataTECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'TECH_MEASURE_COEF'
    end
    object qryNodeDataESTIMATED_SECONDARY_PRICE: TAbmesFloatField
      FieldName = 'ESTIMATED_SECONDARY_PRICE'
    end
    object qryNodeDataMARKET_SECONDARY_PRICE: TAbmesFloatField
      FieldName = 'MARKET_SECONDARY_PRICE'
    end
    object qryNodeDataSALE_LEASE_SECONDARY_PRICE: TAbmesFloatField
      FieldName = 'SALE_LEASE_SECONDARY_PRICE'
    end
    object qryNodeDataSALE_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'SALE_LEASE_DATE_UNIT_CODE'
    end
    object qryNodeDataIS_VAT_FREE: TAbmesFloatField
      FieldName = 'IS_VAT_FREE'
      FieldValueType = fvtBoolean
    end
    object qryNodeDataHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      FieldValueType = fvtBoolean
    end
    object qryNodeDataTRANSPORT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TRANSPORT_MEASURE_CODE'
    end
    object qryNodeDataTRANSPORT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'TRANSPORT_MEASURE_COEF'
    end
    object qryNodeDataSELF_EXISTENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'SELF_EXISTENT_STATUS_CODE'
    end
    object qryNodeDataIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
    end
    object qryNodeDataTRANSIENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'TRANSIENT_STATUS_CODE'
    end
    object qryNodeDataWORKDAYS_TO_EXIST: TAbmesFloatField
      FieldName = 'WORKDAYS_TO_EXIST'
    end
    object qryNodeDataPARENT_CODE: TAbmesFloatField
      FieldName = 'PARENT_CODE'
    end
    object qryNodeDataIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object qryNodeDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryNodeDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryNodeDataIS_SELF_APPROVED: TAbmesFloatField
      FieldName = 'IS_SELF_APPROVED'
      FieldValueType = fvtBoolean
    end
    object qryNodeDataPRODUCT_SPEC_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_SPEC_REQUIREMENT_CODE'
    end
    object qryNodeDataBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object qryNodeDataCOMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMMON_STATUS_CODE'
    end
    object qryNodeDataHAS_SPEC: TAbmesFloatField
      FieldName = 'HAS_SPEC'
      FieldValueType = fvtBoolean
    end
  end
  inherited qryNodeID: TAbmesSQLQuery
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE as NODE_ID'
      'from'
      '  PRODUCTS p'
      'where'
      '  (p.CUSTOM_CODE = :PRODUCT_NO) and'
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE)')
  end
  inherited qryShowNodeParams: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  pp.PRODUCT_PARAM_CODE as NODE_PARAM_CODE,'
      '  pp.PRODUCT_PARAM_NAME as NODE_PARAM_NAME,'
      '  pp.PRODUCT_PARAM_ORDER_NO as NODE_PARAM_ORDER_NO,'
      '  ( pp.PARAM_VALUE ||'
      '    Decode(ni.NOM_ITEM_DESCRIPTION,'
      '           null, null,'
      '           pp.PARAM_VALUE, null,'
      '           ('#39' ('#39' || ni.NOM_ITEM_DESCRIPTION || '#39')'#39')'
      '    )'
      '  ) as PARAM_VALUE,'
      '  pp.VALUE_TYPE,'
      '  pp.IS_DEFINED,'
      '  pp.IS_INHERITED,'
      ''
      '  pp.DOC_BRANCH_CODE as DOC_BRANCH_CODE,'
      '  pp.DOC_CODE as DOC_CODE,'
      '  %HAS_DOC_ITEMS[pp] as HAS_DOC_ITEMS,'
      ''
      '  n.DOC_BRANCH_CODE as NOM_DOC_BRANCH_CODE,'
      '  n.DOC_CODE as NOM_DOC_CODE,'
      '  %HAS_DOC_ITEMS[n] as NOM_HAS_DOC_ITEMS,'
      ''
      '  ni.DOC_BRANCH_CODE as VALUE_NOM_ITEM_DOC_BRANCH_CODE,'
      '  ni.DOC_CODE as VALUE_NOM_ITEM_DOC_CODE,'
      '  %HAS_DOC_ITEMS[ni] as VALUE_NOM_ITEM_HAS_DOC_ITEMS'
      ''
      'from'
      '  PRODUCT_PARAMS pp,'
      '  NOMS n,'
      '  NOM_ITEMS ni'
      ''
      'where'
      '  (pp.NOM_CODE = n.NOM_CODE(+)) and'
      ''
      '  (pp.VALUE_NOM_CODE = ni.NOM_CODE(+)) and'
      '  (pp.VALUE_NOM_ITEM_CODE = ni.NOM_ITEM_CODE(+)) and'
      '  '
      '  (pp.PRODUCT_CODE = :NODE_ID)'
      '  '
      'order by'
      '  pp.PRODUCT_PARAM_ORDER_NO,'
      '  pp.PRODUCT_PARAM_CODE'
      ' ')
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[n]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[ni]'
        ParamType = ptInput
        Value = '1'
      end>
    object qryShowNodeParamsIS_DEFINED: TAbmesFloatField [4]
      FieldName = 'IS_DEFINED'
      Required = True
    end
    object qryShowNodeParamsDOC_BRANCH_CODE: TAbmesFloatField [5]
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryShowNodeParamsDOC_CODE: TAbmesFloatField [6]
      FieldName = 'DOC_CODE'
    end
    object qryShowNodeParamsHAS_DOC_ITEMS: TAbmesFloatField [7]
      FieldName = 'HAS_DOC_ITEMS'
    end
    object qryShowNodeParamsNOM_DOC_BRANCH_CODE: TAbmesFloatField [8]
      FieldName = 'NOM_DOC_BRANCH_CODE'
    end
    object qryShowNodeParamsNOM_DOC_CODE: TAbmesFloatField [9]
      FieldName = 'NOM_DOC_CODE'
    end
    object qryShowNodeParamsNOM_HAS_DOC_ITEMS: TAbmesFloatField [10]
      FieldName = 'NOM_HAS_DOC_ITEMS'
    end
    object qryShowNodeParamsVALUE_NOM_ITEM_DOC_BRANCH_CODE: TAbmesFloatField [11]
      FieldName = 'VALUE_NOM_ITEM_DOC_BRANCH_CODE'
    end
    object qryShowNodeParamsVALUE_NOM_ITEM_DOC_CODE: TAbmesFloatField [12]
      FieldName = 'VALUE_NOM_ITEM_DOC_CODE'
    end
    object qryShowNodeParamsVALUE_NOM_ITEM_HAS_DOC_ITEMS: TAbmesFloatField [13]
      FieldName = 'VALUE_NOM_ITEM_HAS_DOC_ITEMS'
    end
    object qryShowNodeParamsIS_INHERITED: TAbmesFloatField
      FieldName = 'IS_INHERITED'
      Required = True
    end
  end
  inherited qryPrintTreeChildren: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE as NODE_ID,'
      '  p.PARENT_CODE as PARENT_NODE_ID,'
      '  p.NAME as NODE_NAME,'
      '  p.CUSTOM_CODE as NODE_NO,'
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
      '  ('
      '    select'
      '      Count(p3.PRODUCT_CODE) as NODE_CHILD_COUNT'
      '    from'
      '      PRODUCTS p3'
      '    where'
      '      (p3.PARENT_CODE = p.PRODUCT_CODE) and'
      '      (p3.IS_INACTIVE <= :SHOW_INACTIVE)'
      '  ) as NODE_CHILD_COUNT,'
      ''
      '  (level - 1) as LEVEL_NO,'
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
      '  PRODUCTS p'
      ''
      'where'
      '  %NODE_PARAMS_WHERE_COND'
      ''
      'start with'
      '  (p.PRODUCT_CODE = :NODE_ID)'
      ''
      'connect by'
      '  (p.PARENT_CODE = prior p.PRODUCT_CODE) and'
      '  (p.IS_INACTIVE <= :SHOW_INACTIVE)'
      ''
      'order siblings by'
      '  %ORDER_BY_FIELDS,'
      '  p.CUSTOM_CODE,'
      '  p.NAME'
      '')
    Macros = <
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
    object qryPrintTreeChildrenIS_THOROUGHLY_ENGINEERED: TAbmesFloatField
      FieldName = 'IS_THOROUGHLY_ENGINEERED'
      Required = True
    end
    object qryPrintTreeChildrenCOMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMMON_STATUS_CODE'
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
      end>
    object cdsPrintTreeChildrenIS_THOROUGHLY_ENGINEERED: TAbmesFloatField [8]
      FieldName = 'IS_THOROUGHLY_ENGINEERED'
      Required = True
    end
    object cdsPrintTreeChildrenCOMMON_STATUS_CODE: TAbmesFloatField [9]
      FieldName = 'COMMON_STATUS_CODE'
    end
  end
  inherited qryFindTreeNodes: TAbmesSQLQuery
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PARENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE as NODE_ID,'
      
        '  Cast(MiscUtils.ProductParentCodes(p.PRODUCT_CODE) as VarChar2(' +
        '4000)) as PARENT_NODE_IDS,'
      '  p.NAME as NODE_NAME,'
      '  p.CUSTOM_CODE as NODE_NO'
      ''
      'from'
      '  PRODUCTS p'
      ''
      'where'
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '  ( (:PARENT_CODE is null) or'
      '    (p.PARENT_CODE = :PARENT_CODE) ) and'
      ''
      '  (p.IS_INACTIVE <= :SHOW_INACTIVE) and'
      ''
      '  %FIND_CONDITION'
      ''
      'order by'
      '  To_Char(p.CUSTOM_CODE)'
      '')
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'FIND_STRING'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'CASE_SENSITIVE'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'FIND_NODE_NAME'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'FIND_NODE_NO'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'FIND_NODE_PARAMS'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'FIND_PRODUCT_PARTNER_NAMES'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'EXACT_MATCH'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  inherited shFindStringTemplate: TJvStrHolder
    Capacity = 44
    StrData = (
      ''
      '28202820283a46494e445f4e4f44455f4e414d45203d20312920616e64'
      
        '20202020284465636f6465283a434153455f53454e5349544956452c20312c20' +
        '702e4e414d452c20557070657228702e4e414d452929206c696b6520254c494b' +
        '455f4d4f444946494552207c7c202546494e445f535452494e475f504152414d' +
        '5f4e414d45207c7c20254c494b455f4d4f444946494552292029206f72'
      ''
      '20202820283a46494e445f4e4f44455f4e4f203d20312920616e64'
      
        '2020202028702e435553544f4d5f434f4445206c696b6520254c494b455f4d4f' +
        '444946494552207c7c202546494e445f535452494e475f504152414d5f4e414d' +
        '45207c7c20254c494b455f4d4f444946494552292029206f72'
      ''
      '20202820283a46494e445f4e4f44455f504152414d53203d20312920616e64'
      '2020202065786973747328'
      '20202020202073656c656374'
      '202020202020202031'
      '20202020202066726f6d'
      '202020202020202050524f445543545f504152414d53207070'
      '2020202020207768657265'
      
        '20202020202020202870702e50524f445543545f434f4445203d20702e50524f' +
        '445543545f434f44452920616e64'
      
        '20202020202020202870702e504152414d5f56414c5545206973206e6f74206e' +
        '756c6c2920616e64'
      
        '2020202020202020284465636f6465283a434153455f53454e5349544956452c' +
        '20312c2070702e504152414d5f56414c55452c2055707065722870702e504152' +
        '414d5f56414c55452929206c696b6520254c494b455f4d4f444946494552207c' +
        '7c202546494e445f535452494e475f504152414d5f4e414d45207c7c20254c49' +
        '4b455f4d4f44494649455229'
      '2020202029'
      '202029206f72'
      ''
      
        '20202820283a46494e445f50524f445543545f504152544e45525f4e414d4553' +
        '203d20312920616e64'
      '2020202065786973747328'
      '20202020202073656c656374'
      '202020202020202031'
      '20202020202066726f6d'
      '2020202020202020434f4d50414e595f50524f4455435453206370'
      '2020202020207768657265'
      
        '20202020202020202863702e50524f445543545f434f4445203d20702e50524f' +
        '445543545f434f44452920616e64'
      
        '2020202020202020284465636f6465283a434153455f53454e5349544956452c' +
        '20312c2063702e4e414d452c2055707065722863702e4e414d452929206c696b' +
        '6520254c494b455f4d4f444946494552207c7c202546494e445f535452494e47' +
        '5f504152414d5f4e414d45207c7c20254c494b455f4d4f44494649455229'
      '2020202029'
      '202029'
      '29'
      '')
  end
  object qryGetCompanyProductName: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  NAME'
      'from'
      '  COMPANY_PRODUCTS'
      'where'
      '  (COMPANY_CODE = :COMPANY_CODE) and'
      '  (PRODUCT_CODE = :PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 167
    object qryGetCompanyProductNameNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
  end
  object qryProductParams: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pp.PRODUCT_CODE,'
      '  pp.PRODUCT_PARAM_CODE,'
      '  pp.PRODUCT_PARAM_NAME,'
      '  pp.ABBREV,'
      '  pp.PRODUCT_PARAM_ORDER_NO,'
      '  pp.VALUE_TYPE,'
      '  pp.NOM_CODE'
      'from'
      '  PRODUCT_PARAMS pp'
      'where'
      '  (pp.PRODUCT_CODE = :PRODUCT_CODE)'
      'order by'
      '  pp.PRODUCT_PARAM_ORDER_NO,'
      '  pp.PRODUCT_PARAM_NAME')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 192
    Top = 272
    object qryProductParamsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProductParamsPRODUCT_PARAM_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PARAM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProductParamsPRODUCT_PARAM_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_PARAM_NAME'
      Size = 50
    end
    object qryProductParamsABBREV: TAbmesWideStringField
      FieldName = 'ABBREV'
    end
    object qryProductParamsPRODUCT_PARAM_ORDER_NO: TAbmesFloatField
      FieldName = 'PRODUCT_PARAM_ORDER_NO'
    end
    object qryProductParamsVALUE_TYPE: TAbmesFloatField
      FieldName = 'VALUE_TYPE'
    end
    object qryProductParamsNOM_CODE: TAbmesFloatField
      FieldName = 'NOM_CODE'
    end
  end
  object prvProductParams: TDataSetProvider
    DataSet = qryProductParams
    UpdateMode = upWhereKeyOnly
    Left = 192
    Top = 224
  end
  object qryGetProductDefaultStore: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  StoreUtils.ProductDefaultStore(:PRODUCT_CODE, :DEPT_CODE) as D' +
        'EFAULT_STORE_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 256
    object qryGetProductDefaultStoreDEFAULT_STORE_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_STORE_CODE'
    end
  end
  object qryProductDoc: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE'
      'from'
      '  PRODUCTS p'
      'where'
      '  (p.PRODUCT_CODE = :PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 336
    Top = 136
    object qryProductDocDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryProductDocDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
  end
  object qryCheckProductRelation: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NEW_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEW_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  *'
      '  '
      'from'
      '  PRODUCT_RELATIONS'
      ''
      'where'
      '  ( (ANCESTOR_PRODUCT_CODE = :NEW_PRODUCT_CODE) and'
      '  (DESCENDANT_PRODUCT_CODE = :OLD_PRODUCT_CODE) ) or'
      ''
      '  ( (ANCESTOR_PRODUCT_CODE = :OLD_PRODUCT_CODE) and'
      '  (DESCENDANT_PRODUCT_CODE = :NEW_PRODUCT_CODE) )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 208
    Top = 168
    object qryCheckProductRelationANCESTOR_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'ANCESTOR_PRODUCT_CODE'
    end
    object qryCheckProductRelationDESCENDANT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DESCENDANT_PRODUCT_CODE'
    end
  end
  object qryGetProductParam: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_PARAM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pp.PRODUCT_PARAM_NAME,'
      '  pp.PRODUCT_PARAM_ORDER_NO,'
      '  pp.VALUE_TYPE,'
      '  pp.ABBREV,'
      '  pp.NOM_CODE,'
      ''
      '  pp.DOC_BRANCH_CODE as DOC_BRANCH_CODE,'
      '  pp.DOC_CODE as DOC_CODE,'
      '  %HAS_DOC_ITEMS[pp] as HAS_DOC_ITEMS,'
      ''
      '  n.DOC_BRANCH_CODE as NOM_DOC_BRANCH_CODE,'
      '  n.DOC_CODE as NOM_DOC_CODE,'
      '  %HAS_DOC_ITEMS[n] as NOM_HAS_DOC_ITEMS'
      ''
      'from'
      '  PRODUCT_PARAMS pp,'
      '  NOMS n'
      ''
      'where'
      '  (pp.NOM_CODE = n.NOM_CODE(+)) and'
      ''
      '  (pp.PRODUCT_CODE = :PRODUCT_CODE) and'
      '  (pp.PRODUCT_PARAM_CODE = :PRODUCT_PARAM_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[n]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 232
    object qryGetProductParamPRODUCT_PARAM_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_PARAM_NAME'
      Size = 50
    end
    object qryGetProductParamPRODUCT_PARAM_ORDER_NO: TAbmesFloatField
      FieldName = 'PRODUCT_PARAM_ORDER_NO'
    end
    object qryGetProductParamVALUE_TYPE: TAbmesFloatField
      FieldName = 'VALUE_TYPE'
    end
    object qryGetProductParamABBREV: TAbmesWideStringField
      FieldName = 'ABBREV'
    end
    object qryGetProductParamNOM_CODE: TAbmesFloatField
      FieldName = 'NOM_CODE'
    end
    object qryGetProductParamDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryGetProductParamDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryGetProductParamHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object qryGetProductParamNOM_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'NOM_DOC_BRANCH_CODE'
    end
    object qryGetProductParamNOM_DOC_CODE: TAbmesFloatField
      FieldName = 'NOM_DOC_CODE'
    end
    object qryGetProductParamNOM_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'NOM_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
  end
  object qrySaleAcquireSinglePrice: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'CLIENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'CLIENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ( case'
      '      when'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              PAR_REL_PRODUCT_PERIODS prpp'
      '            where'
      '              (prpp.PARTNER_CODE = :CLIENT_CODE) and'
      '              (prpp.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      '              (prpp.PRODUCT_CODE = :PRODUCT_CODE) and'
      
        '              (:TO_DATE between prpp.BEGIN_DATE and prpp.END_DAT' +
        'E)'
      '          )'
      '        )'
      '      then'
      '        ( select'
      '            prpp.ACQUIRE_SINGLE_PRICE *'
      '            Decode('
      '              prpp.ACQUIRE_CURRENCY_CODE,'
      '              :IN_CURRENCY_CODE,'
      '              1,'
      '              ( select'
      '                  cr1.FIXING / cr2.FIXING'
      '                from'
      '                  CURRENCY_RATES cr1,'
      '                  CURRENCY_RATES cr2'
      '                where'
      
        '                  (cr1.RATE_DATE = Least(:TO_DATE, ContextDate))' +
        ' and'
      
        '                  (cr1.CURRENCY_CODE = prpp.ACQUIRE_CURRENCY_COD' +
        'E) and'
      
        '                  (cr2.RATE_DATE = Least(:TO_DATE, ContextDate))' +
        ' and'
      '                  (cr2.CURRENCY_CODE = :IN_CURRENCY_CODE)'
      '              )'
      '            )'
      '          from'
      '            PAR_REL_PRODUCT_PERIODS prpp'
      '          where'
      '            (prpp.PARTNER_CODE = :CLIENT_CODE) and'
      '            (prpp.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      '            (prpp.PRODUCT_CODE = :PRODUCT_CODE) and'
      '            (:TO_DATE between prpp.BEGIN_DATE and prpp.END_DATE)'
      '        )'
      '      else'
      '        ( select'
      '            pper.SALE_ACQUIRE_SINGLE_PRICE *'
      '            Decode('
      '              pper.SALE_ACQUIRE_CURRENCY_CODE,'
      '              :IN_CURRENCY_CODE,'
      '              1,'
      '              ( select'
      '                  cr1.FIXING / cr2.FIXING'
      '                from'
      '                  CURRENCY_RATES cr1,'
      '                  CURRENCY_RATES cr2'
      '                where'
      
        '                  (cr1.RATE_DATE = Least(:TO_DATE, ContextDate))' +
        ' and'
      
        '                  (cr1.CURRENCY_CODE = pper.SALE_ACQUIRE_CURRENC' +
        'Y_CODE) and'
      
        '                  (cr2.RATE_DATE = Least(:TO_DATE, ContextDate))' +
        ' and'
      '                  (cr2.CURRENCY_CODE = :IN_CURRENCY_CODE)'
      '              )'
      '            )'
      '          from'
      '            PRODUCT_PERIODS pper'
      '          where'
      '            (pper.PRODUCT_CODE = :PRODUCT_CODE) and'
      
        '            (pper.PRODUCT_CODE = %PRODUCT_PERIOD_EXISTANCE_PRODU' +
        'CT_CODE[:PRODUCT_CODE ~ :TO_DATE]) and'
      '            (:TO_DATE between pper.BEGIN_DATE and pper.END_DATE)'
      '        )'
      '    end'
      '  ) as SALE_ACQUIRE_SINGLE_PRICE'
      'from'
      '  DUAL'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'PRODUCT_PERIOD_EXISTANCE_PRODUCT_CODE[:PRODUCT_CODE ~ :TO_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 328
    Top = 192
    object qrySaleAcquireSinglePriceSALE_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'SALE_ACQUIRE_SINGLE_PRICE'
    end
  end
  object qryProductExFrame: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
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
      '  Decode(p.IS_COMMON, 1, 2,'
      '         ( select'
      
        '             Decode(Sign(Count(*)), 0, 1, 3 + p.IS_THOROUGHLY_EN' +
        'GINEERED)'
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
      '  ( select'
      '      NullIf(Count(*), 0)'
      '    from'
      '      DEFINITE_PRODUCTS dp2'
      '    start with'
      
        '      (dp2.PRODUCT_CODE = Nvl2(cp.PRODUCT_CODE, dp.COMMON_PRODUC' +
        'T_CODE, p.PRODUCT_CODE))'
      '    connect by'
      '      (dp2.PRODUCT_CODE = prior dp2.COMMON_PRODUCT_CODE)    '
      '  ) as COMMON_PRODUCTS_LEVEL_NO,'
      ''
      '  ( select'
      '      Max(level) - 1'
      '    from'
      '      DEFINITE_PRODUCTS dp2'
      '    start with'
      
        '      (dp2.PRODUCT_CODE = Nvl2(cp.PRODUCT_CODE, dp.COMMON_PRODUC' +
        'T_CODE, p.PRODUCT_CODE))'
      '    connect by'
      '      (dp2.COMMON_PRODUCT_CODE = prior dp2.PRODUCT_CODE)'
      '  ) as COMMON_PRODUCTS_SUB_LEVELS,'
      '  '
      
        '  %SPEC_STATE[p.PRODUCT_CODE~null~null~null~null] as SPEC_STATE_' +
        'CODE,'
      ''
      
        '  %PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[p.PRODUCT_CODE~:P' +
        'ARTNER_CODE~p] as PARTNER_PRODUCT_NAMES,'
      ''
      '  ( select'
      '      pr.PRIORITY_NO'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE ='
      '        Decode(:BORDER_REL_TYPE_CODE,'
      '               %brt_CLIENT, p.USED_BY_SALES_PR_CODE,'
      '               %brt_VENDOR, p.PROV_BY_DELIVERIES_PR_CODE,'
      '               x.MAX_PRIORITY_NO_CODE'
      '        )'
      '      )'
      '  ) as PRIORITY_NO,'
      ''
      '  ( select'
      '      pr.PRIORITY_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE ='
      '        Decode(:BORDER_REL_TYPE_CODE,'
      '               %brt_CLIENT, p.USED_BY_SALES_PR_CODE,'
      '               %brt_VENDOR, p.PROV_BY_DELIVERIES_PR_CODE,'
      '               x.MAX_PRIORITY_NO_CODE'
      '        )'
      '      )'
      '  ) as PRIORITY_COLOR,'
      ''
      '  ( select'
      '      pr.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE ='
      '        Decode(:BORDER_REL_TYPE_CODE,'
      '               %brt_CLIENT, p.USED_BY_SALES_PR_CODE,'
      '               %brt_VENDOR, p.PROV_BY_DELIVERIES_PR_CODE,'
      '               x.MAX_PRIORITY_NO_CODE'
      '        )'
      '      )'
      '  ) as PRIORITY_BACKGROUND_COLOR,'
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
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.TECH_MEASURE_CODE)'
      '  ) as TECH_MEASURE_ABBREV,'
      ''
      '  p.NOTES,'
      ''
      '  ( select'
      '      po.PRODUCT_ORIGIN_ABBREV'
      '    from'
      '      PRODUCT_ORIGINS po'
      '    where'
      '      (po.PRODUCT_ORIGIN_CODE = p.PRODUCT_ORIGIN_CODE)'
      '  ) as PRODUCT_ORIGIN_ABBREV,'
      ''
      '  ( select'
      '      s.SPEC_PRODUCT_CODE'
      '    from'
      '      SPECS s'
      '    where'
      '      (s.SPEC_PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SPEC_PRODUCT_CODE'
      ''
      'from'
      '  PRODUCTS p,'
      '  DEFINITE_PRODUCTS dp,'
      '  CONCRETE_PRODUCTS cp,'
      '  ( select'
      '      p2.PRODUCT_CODE,'
      '      ( select'
      '          pr2.PRIORITY_CODE'
      '        from'
      '          PRIORITIES pr2'
      '        where'
      '          (pr2.PRIORITY_NO ='
      '            NullIf('
      '              Greatest('
      '                Coalesce('
      '                  ( select'
      '                      pr.PRIORITY_NO'
      '                    from'
      '                      PRIORITIES pr'
      '                    where'
      
        '                      (pr.PRIORITY_CODE = p2.USED_BY_SALES_PR_CO' +
        'DE)'
      '                  ),'
      '                  0'
      '                ),'
      '                Coalesce('
      '                  ( select'
      '                      pr.PRIORITY_NO'
      '                    from'
      '                      PRIORITIES pr'
      '                    where'
      
        '                      (pr.PRIORITY_CODE = p2.PROV_BY_DELIVERIES_' +
        'PR_CODE)'
      '                  ),'
      '                  0'
      '                )'
      '              ),'
      '              0'
      '            )'
      '          )'
      '      ) as MAX_PRIORITY_NO_CODE'
      '    from'
      '      PRODUCTS p2'
      '    where'
      '      (p2.PRODUCT_CODE = :PRODUCT_CODE)'
      '  ) x'
      ''
      'where'
      '  (p.PRODUCT_CODE = :PRODUCT_CODE) and'
      '  (p.PRODUCT_CODE = dp.PRODUCT_CODE(+)) and'
      '  (p.PRODUCT_CODE = cp.PRODUCT_CODE(+)) and'
      '  (p.PRODUCT_CODE = x.PRODUCT_CODE(+))')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'SPEC_STATE[p.PRODUCT_CODE~null~null~null~null]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[p.PRODUCT_CODE~:PART' +
          'NER_CODE~p]'
        ParamType = ptInput
        Value = ':PARTNER_CODE'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'brt_VENDOR'
        ParamType = ptInput
        Value = '2'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 432
    Top = 304
    object qryProductExFrameCOMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMMON_STATUS_CODE'
    end
    object qryProductExFrameCOMMON_PRODUCTS_LEVEL_NO: TAbmesFloatField
      FieldName = 'COMMON_PRODUCTS_LEVEL_NO'
    end
    object qryProductExFrameCOMMON_PRODUCTS_SUB_LEVELS: TAbmesFloatField
      FieldName = 'COMMON_PRODUCTS_SUB_LEVELS'
    end
    object qryProductExFrameSPEC_STATE_CODE: TAbmesFloatField
      FieldName = 'SPEC_STATE_CODE'
    end
    object qryProductExFramePARTNER_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PARTNER_PRODUCT_NAMES'
      Size = 250
    end
    object qryProductExFramePRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qryProductExFramePRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qryProductExFramePRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object qryProductExFrameMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryProductExFrameACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryProductExFrameTECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qryProductExFrameNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryProductExFramePRODUCT_ORIGIN_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_ORIGIN_ABBREV'
      Size = 100
    end
    object qryProductExFrameSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
  end
  object prvProductExFrame: TDataSetProvider
    DataSet = qryProductExFrame
    Options = [poReadOnly, poUseQuoteChar]
    Left = 432
    Top = 256
  end
  object qryProductBorderRelExists: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Count(*) as PRODUCT_BORDER_REL_EXISTS'
      'from'
      '  PRODUCT_BORDER_RELS pbr'
      'where'
      '  (pbr.PRODUCT_CODE = :PRODUCT_CODE) and'
      '  (pbr.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 296
    object qryProductBorderRelExistsPRODUCT_BORDER_REL_EXISTS: TAbmesFloatField
      FieldName = 'PRODUCT_BORDER_REL_EXISTS'
      FieldValueType = fvtBoolean
    end
  end
  object qryDateProductPrices: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'PRICES_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PRICES_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.ESTIMATED_SECONDARY_PRICE,'
      '  x.MARKET_SECONDARY_PRICE,'
      ''
      
        '  Decode(x.IS_PSD_PRICE_FROM_DELIVERY_EX, 1, 0, x.INVESTMENT_LEV' +
        'EL_2_VALUE) as INVESTMENT_VALUE_2,'
      
        '  Decode(x.IS_PSD_PRICE_FROM_DELIVERY_EX, 1, 0, x.INVESTMENT_LEV' +
        'EL_3_VALUE) as INVESTMENT_VALUE_3,'
      
        '  Decode(x.IS_PSD_PRICE_FROM_DELIVERY_EX, 1, 0, x.INVESTMENT_LEV' +
        'EL_4_VALUE) as INVESTMENT_VALUE_4,'
      
        '  Decode(x.IS_PSD_PRICE_FROM_DELIVERY_EX, 1, 0, x.INVESTMENT_LEV' +
        'EL_5_VALUE) as INVESTMENT_VALUE_5,'
      ''
      '  x.PRECISION_LEVEL_CODE'
      ''
      'from'
      '  ( select'
      '      ( select'
      
        '          ProductUtils.PsdSinglePriceInBaseCurrencyEx(p.PRODUCT_' +
        'CODE, :PRICES_DATE) /'
      '          p.ACCOUNT_MEASURE_COEF /'
      '          tcr.FIXING'
      '        from'
      '          TODAY_CURRENCY_RATES tcr,'
      '          INTERNAL_VALUES iv'
      '        where'
      '          (tcr.CURRENCY_CODE = iv.SECONDARY_CURRENCY_CODE) and'
      '          (iv.CODE = 1)'
      '      ) as ESTIMATED_SECONDARY_PRICE,'
      ''
      '      ( select'
      
        '          (pper.SALE_ACQUIRE_SINGLE_PRICE / p.ACCOUNT_MEASURE_CO' +
        'EF) * tscr.FIXING'
      '        from'
      '          TODAY_SECONDARY_CURRENCY_RATES tscr'
      '        where'
      '          (tscr.CURRENCY_CODE = pper.SALE_ACQUIRE_CURRENCY_CODE)'
      '      ) as MARKET_SECONDARY_PRICE,'
      ''
      '      pper.INVESTMENT_LEVEL_2_VALUE,'
      '      pper.INVESTMENT_LEVEL_3_VALUE,'
      '      pper.INVESTMENT_LEVEL_4_VALUE,'
      '      pper.INVESTMENT_LEVEL_5_VALUE,'
      ''
      
        '      %IS_PSD_PRICE_FROM_DELIVERY_EX[pper] as IS_PSD_PRICE_FROM_' +
        'DELIVERY_EX,'
      ''
      '      pper.PRECISION_LEVEL_CODE'
      ''
      '    from'
      '      PRODUCTS p,'
      '      PRODUCT_PERIODS pper'
      ''
      '    where'
      '      (p.PRODUCT_CODE = :PRODUCT_CODE) and'
      
        '      (pper.PRODUCT_CODE = %PRODUCT_PERIOD_EXISTANCE_PRODUCT_COD' +
        'E[p.PRODUCT_CODE ~ :PRICES_DATE]) and'
      '      (:PRICES_DATE between pper.BEGIN_DATE and pper.END_DATE)'
      '  ) x')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'IS_PSD_PRICE_FROM_DELIVERY_EX[pper]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_PERIOD_EXISTANCE_PRODUCT_CODE[p.PRODUCT_CODE ~ :PRICES_D' +
          'ATE]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 72
    Top = 304
    object qryDateProductPricesESTIMATED_SECONDARY_PRICE: TAbmesFloatField
      FieldName = 'ESTIMATED_SECONDARY_PRICE'
    end
    object qryDateProductPricesMARKET_SECONDARY_PRICE: TAbmesFloatField
      FieldName = 'MARKET_SECONDARY_PRICE'
    end
    object qryDateProductPricesINVESTMENT_VALUE_2: TAbmesFloatField
      FieldName = 'INVESTMENT_VALUE_2'
    end
    object qryDateProductPricesINVESTMENT_VALUE_3: TAbmesFloatField
      FieldName = 'INVESTMENT_VALUE_3'
    end
    object qryDateProductPricesINVESTMENT_VALUE_4: TAbmesFloatField
      FieldName = 'INVESTMENT_VALUE_4'
    end
    object qryDateProductPricesINVESTMENT_VALUE_5: TAbmesFloatField
      FieldName = 'INVESTMENT_VALUE_5'
    end
    object qryDateProductPricesPRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRECISION_LEVEL_CODE'
    end
  end
  object prvProductSpecRequirements: TDataSetProvider
    DataSet = qryProductSpecRequirements
    Options = [poReadOnly, poUseQuoteChar]
    Left = 304
    Top = 21
  end
  object qryProductSpecRequirements: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  psr.PRODUCT_SPEC_REQUIREMENT_CODE,'
      '  psr.PRODUCT_SPEC_REQUIREMENT_NAME'
      ''
      'from'
      '  PRODUCT_SPEC_REQUIREMENTS psr'
      ''
      'order by'
      '  psr.PRODUCT_SPEC_REQUIREMENT_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 304
    Top = 69
    object qryProductSpecRequirementsPRODUCT_SPEC_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_SPEC_REQUIREMENT_CODE'
      Required = True
    end
    object qryProductSpecRequirementsPRODUCT_SPEC_REQUIREMENT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_SPEC_REQUIREMENT_NAME'
      Required = True
      Size = 100
    end
  end
  object qryCommonProduct: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dp.COMMON_PRODUCT_CODE'
      'from'
      '  DEFINITE_PRODUCTS dp'
      'where'
      '  (dp.PRODUCT_CODE = :PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 312
    Top = 272
    object qryCommonProductCOMMON_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'COMMON_PRODUCT_CODE'
    end
  end
  object prvNodeData: TDataSetProvider
    DataSet = qryNodeData
    Options = [poReadOnly, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 160
  end
  object qryProductDeptOptionsTopDept: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Min(lib_pdo.DEPT_CODE) keep'
      '  (dense_rank last order by'
      '    ( select'
      '        Count(*)'
      '      from'
      '        PRODUCT_RELATIONS lib_pr2'
      '      where'
      
        '        (lib_pr2.DESCENDANT_PRODUCT_CODE = lib_pr.ANCESTOR_PRODU' +
        'CT_CODE)'
      '    ),'
      '    ( select'
      '        Count(*)'
      '      from'
      '        DEPT_RELATIONS lib_dr2'
      '      where'
      
        '        (lib_dr2.DESCENDANT_DEPT_CODE = lib_dr.ANCESTOR_DEPT_COD' +
        'E)'
      '    )'
      '  ) as PDO_TOP_DEPT_CODE'
      ''
      'from'
      '  PRODUCT_RELATIONS lib_pr,'
      '  DEPT_RELATIONS lib_dr,'
      '  PRODUCT_DEPT_OPTIONS lib_pdo'
      ''
      'where'
      '  (lib_pr.DESCENDANT_PRODUCT_CODE = :PRODUCT_CODE) and'
      ''
      
        '  (lib_dr.DESCENDANT_DEPT_CODE = LoginContext.CurrentDeptCode) a' +
        'nd'
      ''
      '  (lib_pdo.PRODUCT_CODE = lib_pr.ANCESTOR_PRODUCT_CODE) and'
      '  (lib_pdo.DEPT_CODE = lib_dr.ANCESTOR_DEPT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 232
    Top = 352
    object qryProductDeptOptionsTopDeptPDO_TOP_DEPT_CODE: TAbmesFloatField
      FieldName = 'PDO_TOP_DEPT_CODE'
    end
  end
  object prvProductOrderQuantities: TDataSetProvider
    DataSet = qryProductOrderQuantities
    Left = 712
    Top = 208
  end
  object qryProductOrderQuantities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pp.MIN_ORDER_QUANTITY,'
      '  pp.MAX_ORDER_QUANTITY,'
      '  pp.BALANCE_QUANTITY'
      ''
      'from'
      '  PRODUCT_PERIODS pp'
      ''
      'where'
      '  (pp.PRODUCT_CODE = :PRODUCT_CODE) and'
      '  (:THE_DATE between pp.BEGIN_DATE and pp.END_DATE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 712
    Top = 256
    object qryProductOrderQuantitiesMIN_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_ORDER_QUANTITY'
    end
    object qryProductOrderQuantitiesMAX_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_ORDER_QUANTITY'
    end
    object qryProductOrderQuantitiesBALANCE_QUANTITY: TAbmesFloatField
      FieldName = 'BALANCE_QUANTITY'
      Required = True
    end
  end
end
