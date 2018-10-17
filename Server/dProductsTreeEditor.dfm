inherited dmProductsTreeEditor: TdmProductsTreeEditor
  OldCreateOrder = True
  Height = 602
  Width = 1086
  inherited qryTreeNodeChildren: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE as NODE_ID,'
      '  p.PARENT_CODE as PARENT_NODE_ID,'
      '  p.NAME as NODE_NAME,'
      '  p.CUSTOM_CODE as NODE_NO,'
      '  Nvl2(p.PARENT_CODE, 1, 0) as NODE_TYPE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      PRODUCTS p3'
      '    where'
      '      (p3.PARENT_CODE = p.PRODUCT_CODE) and'
      '      (p3.IS_GROUP = 1)'
      '  ) as IS_EXPANDABLE,'
      ''
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
      '  p.PRODUCT_CODE,'
      '  p.PARENT_CODE,'
      '  p.NAME,'
      '  p.CUSTOM_CODE,'
      '  p.IS_GROUP,'
      '  p.MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_COEF,'
      '  p.TECH_MEASURE_CODE,'
      '  p.TECH_MEASURE_COEF,'
      '  p.TRANSPORT_MEASURE_CODE,'
      '  p.TRANSPORT_MEASURE_COEF,'
      '  p.IS_VAT_FREE,'
      '  p.NAME_PREFIX,'
      '  p.NAME_SUFFIX,'
      '  p.NOTES,'
      ''
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION,'
      ''
      '  p.SELF_EXISTENT_STATUS_CODE,'
      '  p.TRANSIENT_STATUS_CODE,'
      '  p.WORKDAYS_TO_EXIST,'
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
      '      sp.AUTHOR_EMPLOYEE_CODE'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SPEC_AUTHOR_EMPLOYEE_CODE,'
      ''
      '  p3.MEASURE_CODE as PARENT_MEASURE_CODE,'
      '  p3.ACCOUNT_MEASURE_CODE as PARENT_ACCOUNT_MEASURE_CODE,'
      '  p3.ACCOUNT_MEASURE_COEF as PARENT_ACCOUNT_MEASURE_COEF,'
      '  p3.TECH_MEASURE_CODE as PARENT_TECH_MEASURE_CODE,'
      '  p3.TECH_MEASURE_COEF as PARENT_TECH_MEASURE_COEF,'
      '  p3.TRANSPORT_MEASURE_CODE as PARENT_TRANSPORT_MEASURE_CODE,'
      '  p3.TRANSPORT_MEASURE_COEF as PARENT_TRANSPORT_MEASURE_COEF,'
      '  p3.SELF_EXISTENT_STATUS_CODE as PAR_SELF_EXISTENT_STATUS_CODE,'
      '  p3.TRANSIENT_STATUS_CODE as PAR_TRANSIENT_STATUS_CODE,'
      '  p3.WORKDAYS_TO_EXIST as PARENT_WORKDAYS_TO_EXIST,'
      '  ContextNow as CHANGE_DATE_TIME,'
      ''
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = p.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = p.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = p.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = p.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.AUTHORIZE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAUTHORIZED_ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = p.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  p.IS_USED_BY_SALES,'
      '  p.USED_BY_SALES_PR_CODE,'
      '  p.IS_USED_BY_SALE_PRODUCTION,'
      '  p.USED_BY_SALE_PROD_PR_CODE,'
      '  p.IS_USED_BY_ENV_PRODUCTION,'
      '  p.USED_BY_ENV_PROD_PR_CODE,'
      '  p.IS_PROVIDED_BY_DELIVERIES,'
      '  p.PROV_BY_DELIVERIES_PR_CODE,'
      '  p.IS_PROVIDED_BY_SALE_PRODUCTION,'
      '  p.PROV_BY_SALE_PROD_PR_CODE,'
      '  p.IS_PROVIDED_BY_ENV_PRODUCTION,'
      '  p.PROV_BY_ENV_PROD_PR_CODE,'
      ''
      '  p.IS_COMMON,'
      '  p.IS_THOROUGHLY_ENGINEERED,'
      '  p.PRODUCT_ORIGIN_CODE,'
      ''
      '  ('
      '    select'
      '      Sign(Count(*))'
      '    from'
      '      DEFINITE_PRODUCTS dp'
      '    where'
      '      (dp.COMMON_PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as HAS_JOINED_PRODUCT,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      CONCRETE_PRODUCTS cp,'
      '      DEFINITE_PRODUCTS dp'
      '    where'
      '      (cp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (dp.COMMON_PRODUCT_CODE is not null)'
      '  ) as IS_JOINED_PRODUCT,'
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
      '      dp.COMMON_PRODUCT_CODE'
      '    from'
      '       DEFINITE_PRODUCTS dp'
      '     where'
      '       (dp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as COMMON_PRODUCT_CODE,'
      ''
      '  p.PRODUCT_CLASS_CODE,'
      ''
      '  p.BOI_ORDER_TYPE_CODE,'
      '  p.BND_NORMAL_GROUP_PRODUCT_CODE,'
      ''
      '  p.PRODUCT_SPEC_REQUIREMENT_CODE,'
      
        '  p3.PRODUCT_SPEC_REQUIREMENT_CODE as PARENT_PRODUCT_SPEC_REQ_CO' +
        'DE,'
      ''
      '  p.IS_STRATEGIC,'
      '  p.IS_PRODUCTION_PRODUCT,'
      ''
      '  ( select'
      '      Count(spli.DETAIL_CODE)'
      '    from'
      '      SPEC_LINES spli'
      '    where'
      '      (spli.DETAIL_CODE = p.PRODUCT_CODE) and'
      '      (spli.IS_IMPORTED = 1)'
      '  ) as IMPORT_COUNT'
      ''
      'from'
      '  PRODUCTS p,'
      '  PRODUCTS p3'
      ''
      'where'
      '  (p.PARENT_CODE = p3.PRODUCT_CODE) and'
      ''
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
    TableName = 'PRODUCTS_FOR_EDIT'
    AfterProviderStartTransaction = qryNodeChildrenAfterProviderStartTransaction
    object qryNodeChildrenPRODUCT_CODE: TAbmesFloatField [5]
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNodeChildrenPARENT_CODE: TAbmesFloatField [6]
      FieldName = 'PARENT_CODE'
    end
    object qryNodeChildrenNAME: TAbmesWideStringField [7]
      FieldName = 'NAME'
      Size = 100
    end
    object qryNodeChildrenCUSTOM_CODE: TAbmesFloatField [8]
      FieldName = 'CUSTOM_CODE'
    end
    object qryNodeChildrenIS_GROUP: TAbmesFloatField [9]
      FieldName = 'IS_GROUP'
      ProviderFlags = [pfInUpdate]
    end
    object qryNodeChildrenMEASURE_CODE: TAbmesFloatField [10]
      FieldName = 'MEASURE_CODE'
    end
    object qryNodeChildrenACCOUNT_MEASURE_CODE: TAbmesFloatField [11]
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryNodeChildrenACCOUNT_MEASURE_COEF: TAbmesFloatField [12]
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object qryNodeChildrenTECH_MEASURE_CODE: TAbmesFloatField [13]
      FieldName = 'TECH_MEASURE_CODE'
    end
    object qryNodeChildrenTECH_MEASURE_COEF: TAbmesFloatField [14]
      FieldName = 'TECH_MEASURE_COEF'
    end
    object qryNodeChildrenTRANSPORT_MEASURE_CODE: TAbmesFloatField [15]
      FieldName = 'TRANSPORT_MEASURE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryNodeChildrenTRANSPORT_MEASURE_COEF: TAbmesFloatField [16]
      FieldName = 'TRANSPORT_MEASURE_COEF'
      ProviderFlags = [pfInUpdate]
    end
    object qryNodeChildrenIS_VAT_FREE: TAbmesFloatField [17]
      FieldName = 'IS_VAT_FREE'
    end
    object qryNodeChildrenNAME_PREFIX: TAbmesWideStringField [18]
      FieldName = 'NAME_PREFIX'
      Size = 50
    end
    object qryNodeChildrenNAME_SUFFIX: TAbmesWideStringField [19]
      FieldName = 'NAME_SUFFIX'
      Size = 50
    end
    object qryNodeChildrenNOTES: TAbmesWideStringField [20]
      FieldName = 'NOTES'
      Size = 250
    end
    object qryNodeChildrenHAS_DOCUMENTATION: TAbmesFloatField [21]
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryNodeChildrenSELF_EXISTENT_STATUS_CODE: TAbmesFloatField [22]
      FieldName = 'SELF_EXISTENT_STATUS_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryNodeChildrenPARENT_MEASURE_CODE: TAbmesFloatField [23]
      FieldName = 'PARENT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryNodeChildrenPARENT_ACCOUNT_MEASURE_CODE: TAbmesFloatField [24]
      FieldName = 'PARENT_ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryNodeChildrenPARENT_ACCOUNT_MEASURE_COEF: TAbmesFloatField [25]
      FieldName = 'PARENT_ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryNodeChildrenPARENT_TECH_MEASURE_CODE: TAbmesFloatField [26]
      FieldName = 'PARENT_TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryNodeChildrenPARENT_TECH_MEASURE_COEF: TAbmesFloatField [27]
      FieldName = 'PARENT_TECH_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryNodeChildrenPARENT_TRANSPORT_MEASURE_CODE: TAbmesFloatField [28]
      FieldName = 'PARENT_TRANSPORT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryNodeChildrenPARENT_TRANSPORT_MEASURE_COEF: TAbmesFloatField [29]
      FieldName = 'PARENT_TRANSPORT_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryNodeChildrenPAR_SELF_EXISTENT_STATUS_CODE: TAbmesFloatField [30]
      FieldName = 'PAR_SELF_EXISTENT_STATUS_CODE'
      ProviderFlags = []
    end
    object qryNodeChildrenPARENT_WORKDAYS_TO_EXIST: TAbmesFloatField [31]
      FieldName = 'PARENT_WORKDAYS_TO_EXIST'
      ProviderFlags = []
    end
    object qryNodeChildrenSPEC_PRODUCT_CODE: TAbmesFloatField [33]
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryNodeChildrenSPEC_AUTHOR_EMPLOYEE_CODE: TAbmesFloatField [34]
      FieldName = 'SPEC_AUTHOR_EMPLOYEE_CODE'
      ProviderFlags = []
    end
    object qryNodeChildrenWORKDAYS_TO_EXIST: TAbmesFloatField
      FieldName = 'WORKDAYS_TO_EXIST'
      ProviderFlags = [pfInUpdate]
    end
    object qryNodeChildrenTRANSIENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'TRANSIENT_STATUS_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryNodeChildrenPAR_TRANSIENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'PAR_TRANSIENT_STATUS_CODE'
      ProviderFlags = []
    end
    object qryNodeChildrenDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryNodeChildrenDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryNodeChildrenDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      ProviderFlags = []
    end
    object qryNodeChildrenDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      ProviderFlags = []
    end
    object qryNodeChildrenACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryNodeChildrenUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryNodeChildrenUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryNodeChildrenIS_USED_BY_SALES: TAbmesFloatField
      FieldName = 'IS_USED_BY_SALES'
    end
    object qryNodeChildrenUSED_BY_SALES_PR_CODE: TAbmesFloatField
      FieldName = 'USED_BY_SALES_PR_CODE'
    end
    object qryNodeChildrenIS_USED_BY_SALE_PRODUCTION: TAbmesFloatField
      FieldName = 'IS_USED_BY_SALE_PRODUCTION'
    end
    object qryNodeChildrenUSED_BY_SALE_PROD_PR_CODE: TAbmesFloatField
      FieldName = 'USED_BY_SALE_PROD_PR_CODE'
    end
    object qryNodeChildrenIS_USED_BY_ENV_PRODUCTION: TAbmesFloatField
      FieldName = 'IS_USED_BY_ENV_PRODUCTION'
    end
    object qryNodeChildrenUSED_BY_ENV_PROD_PR_CODE: TAbmesFloatField
      FieldName = 'USED_BY_ENV_PROD_PR_CODE'
    end
    object qryNodeChildrenIS_PROVIDED_BY_DELIVERIES: TAbmesFloatField
      FieldName = 'IS_PROVIDED_BY_DELIVERIES'
    end
    object qryNodeChildrenPROV_BY_DELIVERIES_PR_CODE: TAbmesFloatField
      FieldName = 'PROV_BY_DELIVERIES_PR_CODE'
    end
    object qryNodeChildrenIS_PROVIDED_BY_SALE_PRODUCTION: TAbmesFloatField
      FieldName = 'IS_PROVIDED_BY_SALE_PRODUCTION'
    end
    object qryNodeChildrenPROV_BY_SALE_PROD_PR_CODE: TAbmesFloatField
      FieldName = 'PROV_BY_SALE_PROD_PR_CODE'
    end
    object qryNodeChildrenIS_PROVIDED_BY_ENV_PRODUCTION: TAbmesFloatField
      FieldName = 'IS_PROVIDED_BY_ENV_PRODUCTION'
    end
    object qryNodeChildrenPROV_BY_ENV_PROD_PR_CODE: TAbmesFloatField
      FieldName = 'PROV_BY_ENV_PROD_PR_CODE'
    end
    object qryNodeChildrenIS_COMMON: TAbmesFloatField
      FieldName = 'IS_COMMON'
    end
    object qryNodeChildrenIS_THOROUGHLY_ENGINEERED: TAbmesFloatField
      FieldName = 'IS_THOROUGHLY_ENGINEERED'
    end
    object qryNodeChildrenPRODUCT_ORIGIN_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ORIGIN_CODE'
    end
    object qryNodeChildrenHAS_JOINED_PRODUCT: TAbmesFloatField
      FieldName = 'HAS_JOINED_PRODUCT'
      ProviderFlags = []
    end
    object qryNodeChildrenIS_JOINED_PRODUCT: TAbmesFloatField
      FieldName = 'IS_JOINED_PRODUCT'
      ProviderFlags = []
    end
    object qryNodeChildrenCOMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMMON_STATUS_CODE'
      ProviderFlags = []
    end
    object qryNodeChildrenCOMMON_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'COMMON_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryNodeChildrenPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object qryNodeChildrenBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object qryNodeChildrenBND_NORMAL_GROUP_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BND_NORMAL_GROUP_PRODUCT_CODE'
    end
    object qryNodeChildrenPRODUCT_SPEC_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_SPEC_REQUIREMENT_CODE'
    end
    object qryNodeChildrenPARENT_PRODUCT_SPEC_REQ_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRODUCT_SPEC_REQ_CODE'
      ProviderFlags = []
    end
    object qryNodeChildrenIS_STRATEGIC: TAbmesFloatField
      FieldName = 'IS_STRATEGIC'
    end
    object qryNodeChildrenIS_PRODUCTION_PRODUCT: TAbmesFloatField
      FieldName = 'IS_PRODUCTION_PRODUCT'
      Required = True
    end
    object qryNodeChildrenIMPORT_COUNT: TAbmesFloatField
      FieldName = 'IMPORT_COUNT'
      ProviderFlags = []
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
    Options = [poCascadeDeletes, poPropogateChanges]
    OnUpdateError = prvNodeChildrenUpdateError
    AfterApplyUpdates = prvNodeChildrenAfterApplyUpdates
  end
  inherited qryIsDescendantOf: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  pr.DESCENDANT_PRODUCT_CODE as DESCENDANT_NODE_ID'
      'from'
      '  PRODUCT_RELATIONS pr'
      'where'
      '  (pr.ANCESTOR_PRODUCT_CODE = :ROOT_ID) and'
      '  (pr.DESCENDANT_PRODUCT_CODE = :NODE_ID)')
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
      '  ( '#39'~msg_SQL__Measure~'#39' || Chr(8) ||'
      '    '#39'~msg_SQL__AccountMeasure~'#39' || Chr(8) ||'
      '    '#39'~msg_SQL__TechMeasure~'#39' || Chr(8) ||'
      '    Chr(7) || Chr(8) ||'
      '    ( select'
      
        '        ListAgg(pp.PRODUCT_PARAM_NAME, Chr(8)) within group (ord' +
        'er by pp.PRODUCT_PARAM_ORDER_NO)'
      '      from'
      '        PRODUCT_PARAMS pp'
      '      where'
      '        (pp.PRODUCT_CODE = :NODE_ID)'
      '    )'
      '  ) as NODE_PARAM_NAMES,'
      ''
      '  Cast(null as VarChar2(4000)) as NODE_PARAM_VALUES,'
      ''
      '  p.BOI_ORDER_TYPE_CODE,'
      '  p.IS_THOROUGHLY_ENGINEERED,'
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
    object qryPrintTreeBOI_ORDER_TYPE_CODE: TAbmesFloatField [10]
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object qryPrintTreeIS_THOROUGHLY_ENGINEERED: TAbmesFloatField [11]
      FieldName = 'IS_THOROUGHLY_ENGINEERED'
      Required = True
    end
    object qryPrintTreeCOMMON_STATUS_CODE: TAbmesFloatField [12]
      FieldName = 'COMMON_STATUS_CODE'
    end
  end
  inherited qryNodeData: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  p.CUSTOM_CODE as NODE_NO,'
      '  p.NAME as NODE_NAME'
      'from'
      '  PRODUCTS p'
      'where'
      '  (p.PRODUCT_CODE = :NODE_ID)')
  end
  inherited qryNodeID: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE as NODE_ID'
      'from'
      '  PRODUCTS p'
      '  '
      'where'
      '  (p.CUSTOM_CODE = :NODE_NO)')
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
      '  pp.DOC_BRANCH_CODE,'
      '  pp.DOC_CODE,'
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
      ''
      '  (pp.PRODUCT_CODE = :NODE_ID)'
      ''
      'order by'
      '  pp.PRODUCT_PARAM_ORDER_NO,'
      '  pp.PRODUCT_PARAM_CODE'
      '')
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
      '  Cast(null as VarChar2(4000)) as NODE_PARAM_NAMES,'
      ''
      
        '  ( Coalesce(( select m.MEASURE_ABBREV from MEASURES m where (m.' +
        'MEASURE_CODE = p.MEASURE_CODE) ),         Chr(7)) || Chr(8) ||'
      
        '    Coalesce(( select m.MEASURE_ABBREV from MEASURES m where (m.' +
        'MEASURE_CODE = p.ACCOUNT_MEASURE_CODE) ), Chr(7)) || Chr(8) ||'
      
        '    Coalesce(( select m.MEASURE_ABBREV from MEASURES m where (m.' +
        'MEASURE_CODE = p.TECH_MEASURE_CODE) ),    Chr(7)) || Chr(8) ||'
      '    Chr(7) || Chr(8) ||'
      '    ( select'
      
        '        ListAgg(Coalesce(pp.PARAM_VALUE, Chr(7)), Chr(8)) within' +
        ' group (order by rp.PRODUCT_PARAM_ORDER_NO)'
      '      from'
      '        PRODUCT_PARAMS rp,'
      '        PRODUCT_PARAMS pp'
      '      where'
      '        (rp.PRODUCT_CODE = :NODE_ID) and'
      '        (pp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '        (pp.PRODUCT_PARAM_CODE = rp.PRODUCT_PARAM_CODE)'
      '    )'
      '  ) as NODE_PARAM_VALUES,'
      ''
      '  p.BOI_ORDER_TYPE_CODE,'
      '  p.IS_THOROUGHLY_ENGINEERED,'
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
    object qryPrintTreeChildrenBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
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
        Name = 'BOI_ORDER_TYPE_CODE'
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
    object cdsPrintTreeChildrenBOI_ORDER_TYPE_CODE: TAbmesFloatField [10]
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object cdsPrintTreeChildrenIS_THOROUGHLY_ENGINEERED: TAbmesFloatField [11]
      FieldName = 'IS_THOROUGHLY_ENGINEERED'
      Required = True
    end
    object cdsPrintTreeChildrenCOMMON_STATUS_CODE: TAbmesFloatField [12]
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
    Left = 624
    Top = 80
  end
  inherited prvFindTreeNodes: TDataSetProvider
    Left = 624
    Top = 32
  end
  inherited shFindStringTemplate: TJvStrHolder
    Capacity = 44
    Left = 624
    Top = 128
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
      '29')
  end
  inherited qryNodeParams: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  Decode(:NEW_NODE, 0, pp.PRODUCT_CODE, 0) as NODE_ID,'
      '  pp.PRODUCT_PARAM_CODE as NODE_PARAM_ID,'
      '  pp.PRODUCT_PARAM_NAME as NODE_PARAM_NAME,'
      '  pp.PRODUCT_PARAM_ORDER_NO as NODE_PARAM_ORDER_NO,'
      '  pp.VALUE_TYPE,'
      '  pp.NOM_CODE,'
      '  pp.VALUE_NOM_CODE,'
      '  pp.VALUE_NOM_ITEM_CODE,'
      '  pp.VALUE_FLOAT,'
      '  pp.VALUE_FLOAT_FORMAT,'
      '  pp.VALUE_FLOAT_RANGE_START,'
      '  pp.VALUE_FLOAT_RANGE_END,'
      '  pp.VALUE_STRING,'
      '  pp.ABBREV,'
      '  pp.PREFIX,'
      '  pp.SUFFIX,'
      '  pp.IS_REQUIRED,'
      '  pp.IS_PART_OF_NAME,'
      '  pp.IS_DEFINED,'
      '  pp.IS_INHERITED,'
      '  pp.IS_VALUE_INHERITED,'
      '  ni.NOM_ITEM_NAME,'
      '  ni.IS_NOT_PART_OF_NAME as NOM_ITEM_IS_NOT_PART_OF_NAME,'
      '  pp.PRODUCT_CODE,'
      '  pp.PRODUCT_PARAM_CODE,'
      '  pp.PRODUCT_PARAM_NAME,'
      '  pp.PRODUCT_PARAM_ORDER_NO,'
      ''
      '  ('
      '    select'
      '      pp2.IS_DEFINED'
      '    from'
      '      PRODUCTS p,'
      '      PRODUCTS p2,'
      '      PRODUCT_PARAMS pp2'
      '    where'
      
        '      (p.PRODUCT_CODE = Decode(:NEW_NODE, 0, pp.PRODUCT_CODE, :N' +
        'ODE_ID)) and'
      '      (p2.PRODUCT_CODE = p.PARENT_CODE) and'
      ''
      '      (pp2.PRODUCT_CODE = p2.PRODUCT_CODE) and'
      '      (pp2.PRODUCT_PARAM_CODE = pp.PRODUCT_PARAM_CODE)'
      '  ) as PARENT_IS_DEFINED,'
      ''
      '  pp.PRODUCT_CLASS_CODE,'
      ''
      '  ( select'
      '      n.NOM_NO'
      '    from'
      '      NOMS n'
      '    where'
      '      (n.NOM_CODE = pp.NOM_CODE)'
      '  ) as NOM_NO,'
      ''
      '  pp.DOC_BRANCH_CODE,'
      '  pp.DOC_CODE,'
      '  %HAS_DOC_ITEMS[pp] as HAS_DOC_ITEMS,'
      ''
      '  ('
      '    select'
      '      pp2.IS_FOR_EXPORT'
      '    from'
      '      PRODUCTS p,'
      '      PRODUCTS p2,'
      '      PRODUCT_PARAMS pp2'
      '    where'
      
        '      (p.PRODUCT_CODE = Decode(:NEW_NODE, 0, pp.PRODUCT_CODE, :N' +
        'ODE_ID)) and'
      '      (p2.PRODUCT_CODE = p.PARENT_CODE) and'
      ''
      '      (pp2.PRODUCT_CODE = p2.PRODUCT_CODE) and'
      '      (pp2.PRODUCT_PARAM_CODE = pp.PRODUCT_PARAM_CODE)'
      '  ) as PARENT_IS_FOR_EXPORT,'
      ''
      '  pp.IS_FOR_EXPORT,'
      '  pp.EXPORT_IDENTIFIER'
      ''
      'from'
      '  PRODUCT_PARAMS pp,'
      '  NOM_ITEMS ni'
      ''
      'where'
      '  (pp.VALUE_NOM_CODE = ni.NOM_CODE(+)) and'
      '  (pp.VALUE_NOM_ITEM_CODE = ni.NOM_ITEM_CODE(+)) and'
      '  (pp.PRODUCT_CODE = :NODE_ID)'
      ''
      'order by'
      '  NODE_ID,'
      '  NODE_PARAM_ORDER_NO,'
      '  NODE_PARAM_ID'
      '')
    TableName = 'PRODUCT_PARAMS_FOR_EDIT'
    Left = 256
    Top = 168
    inherited qryNodeParamsNODE_PARAM_NAME: TAbmesWideStringField
      ProviderFlags = []
    end
    inherited qryNodeParamsNODE_PARAM_ORDER_NO: TAbmesFloatField
      ProviderFlags = []
    end
    object qryNodeParamsPRODUCT_CODE: TAbmesFloatField [27]
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNodeParamsPRODUCT_PARAM_CODE: TAbmesFloatField [28]
      FieldName = 'PRODUCT_PARAM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNodeParamsPRODUCT_PARAM_NAME: TAbmesWideStringField [29]
      FieldName = 'PRODUCT_PARAM_NAME'
      Size = 50
    end
    object qryNodeParamsPRODUCT_PARAM_ORDER_NO: TAbmesFloatField [30]
      FieldName = 'PRODUCT_PARAM_ORDER_NO'
    end
    object qryNodeParamsPRODUCT_CLASS_CODE: TAbmesFloatField [31]
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object qryNodeParamsNOM_NO: TAbmesFloatField [32]
      FieldName = 'NOM_NO'
      ProviderFlags = []
    end
  end
  inherited prvNodeParams: TDataSetProvider
    Left = 256
    Top = 120
  end
  inherited qryMaxNodeParamID: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  Max(pp.PRODUCT_PARAM_CODE) as MAX_NODE_PARAM_ID'
      'from'
      '  PRODUCT_PARAMS pp,'
      '  PRODUCT_RELATIONS pr'
      'where'
      '  (pp.PRODUCT_CODE = pr.DESCENDANT_PRODUCT_CODE) and'
      '  '
      '  (pr.ANCESTOR_PRODUCT_CODE = :NODE_ID)'
      ' ')
    Left = 440
    Top = 320
  end
  inherited qryMaxNodeID: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  Max(PRODUCT_CODE) as MAX_NODE_ID'
      'from'
      '  PRODUCTS')
    Left = 560
    Top = 112
  end
  inherited qryCalcNodeChildrenNames: TAbmesSQLQuery
    SQL.Strings = (
      'begin'
      '  ProductUtils.CalcProductName(:NODE_ID);'
      'end;'
      ' ')
    Left = 440
    Top = 264
  end
  inherited prvFilterNodeParams: TDataSetProvider
    Left = 256
    Top = 224
  end
  inherited qryFilterNodeParams: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  pp.PRODUCT_PARAM_CODE as NODE_PARAM_CODE,'
      '  pp.PRODUCT_PARAM_NAME as NODE_PARAM_NAME,'
      '  pp.PRODUCT_PARAM_ORDER_NO as NODE_PARAM_ORDER_NO,'
      '  pp.VALUE_TYPE,'
      '  pp.NOM_CODE,'
      '  n.NOM_NAME,'
      '  pp.VALUE_NOM_CODE,'
      '  pp.VALUE_NOM_ITEM_CODE,'
      '  ni.NOM_ITEM_NAME as VALUE_NOM_ITEM_NAME,'
      '  pp.VALUE_FLOAT,'
      '  pp.VALUE_FLOAT as VALUE_FLOAT_MIN,'
      '  pp.VALUE_FLOAT as VALUE_FLOAT_MAX,'
      '  pp.VALUE_STRING,'
      ''
      '  pp.DOC_BRANCH_CODE,'
      '  pp.DOC_CODE,'
      '  %HAS_DOC_ITEMS[pp] as HAS_DOC_ITEMS,'
      ''
      '  n.DOC_BRANCH_CODE as NOM_DOC_BRANCH_CODE,'
      '  n.DOC_CODE as NOM_DOC_CODE,'
      '  %HAS_DOC_ITEMS[n] as NOM_HAS_DOC_ITEMS,'
      ''
      '  ni.DOC_BRANCH_CODE as VALUE_NOM_ITEM_DOC_BRANCH_CODE,'
      '  ni.DOC_CODE as VALUE_NOM_ITEM_DOC_CODE,'
      '  %HAS_DOC_ITEMS[ni] as VALUE_NOM_ITEM_HAS_DOC_ITEMS,'
      ''
      '  IS_DEFINED'
      ''
      'from'
      '  PRODUCT_PARAMS pp,'
      '  NOMS n,'
      '  NOM_ITEMS ni'
      ''
      'where'
      '  (pp.NOM_CODE = n.NOM_CODE(+)) and'
      '  (pp.VALUE_NOM_CODE = ni.NOM_CODE(+)) and'
      '  (pp.VALUE_NOM_ITEM_CODE = ni.NOM_ITEM_CODE(+)) and'
      '  (pp.PRODUCT_CODE = :NODE_CODE)'
      ''
      'order by'
      '  pp.PRODUCT_PARAM_ORDER_NO,'
      '  pp.PRODUCT_PARAM_CODE')
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
    Left = 256
    Top = 272
    object qryFilterNodeParamsIS_DEFINED: TAbmesFloatField
      FieldName = 'IS_DEFINED'
      Required = True
    end
  end
  inherited qryInsNodeParams: TAbmesSQLQuery
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_PARAM_ID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'NODE_PARAM_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_PARAM_ORDER_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_FLOAT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'VALUE_FLOAT_FORMAT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_FLOAT_RANGE_START'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_FLOAT_RANGE_END'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'VALUE_STRING'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'PREFIX'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SUFFIX'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_REQUIRED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PART_OF_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_DEFINED'
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
        Name = 'IS_INHERITED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_VALUE_INHERITED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_FLOAT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'VALUE_STRING'
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
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_FOR_EXPORT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EXPORT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into PRODUCT_PARAMS_FOR_EDIT'
      ' (PRODUCT_CODE,'
      '  PRODUCT_PARAM_CODE,'
      '  PRODUCT_PARAM_NAME,'
      '  PRODUCT_PARAM_ORDER_NO,'
      '  VALUE_TYPE,'
      '  NOM_CODE,'
      '  VALUE_NOM_CODE,'
      '  VALUE_NOM_ITEM_CODE,'
      '  VALUE_FLOAT,'
      '  VALUE_FLOAT_FORMAT,'
      '  VALUE_FLOAT_RANGE_START,'
      '  VALUE_FLOAT_RANGE_END,'
      '  VALUE_STRING,'
      '  ABBREV,'
      '  PREFIX,'
      '  SUFFIX,'
      '  IS_REQUIRED,'
      '  IS_PART_OF_NAME,'
      '  IS_DEFINED,'
      '  IS_INHERITED,'
      '  IS_VALUE_INHERITED,'
      '  DOC_BRANCH_CODE,'
      '  DOC_CODE,'
      '  PRODUCT_CLASS_CODE,'
      '  IS_FOR_EXPORT,'
      '  EXPORT_IDENTIFIER'
      ' )'
      ''
      'select'
      '  DESCENDANT_PRODUCT_CODE,'
      '  :NODE_PARAM_ID,'
      '  :NODE_PARAM_NAME,'
      '  :NODE_PARAM_ORDER_NO,'
      '  :VALUE_TYPE,'
      '  :NOM_CODE,'
      '  :VALUE_NOM_CODE,'
      '  :VALUE_NOM_ITEM_CODE,'
      '  :VALUE_FLOAT,'
      '  :VALUE_FLOAT_FORMAT,'
      '  :VALUE_FLOAT_RANGE_START,'
      '  :VALUE_FLOAT_RANGE_END,'
      '  :VALUE_STRING,'
      '  :ABBREV,'
      '  :PREFIX,'
      '  :SUFFIX,'
      '  :IS_REQUIRED,'
      '  :IS_PART_OF_NAME,'
      '  :IS_DEFINED,'
      '  case'
      '    when (DESCENDANT_PRODUCT_CODE <> :NODE_ID) or'
      
        '         ((DESCENDANT_PRODUCT_CODE = :NODE_ID) and (:IS_INHERITE' +
        'D = 1)) then 1'
      '    else 0'
      '  end,'
      '  Decode(DESCENDANT_PRODUCT_CODE, :NODE_ID, :IS_VALUE_INHERITED,'
      '         case'
      '           when not ((:VALUE_NOM_ITEM_CODE is null) and'
      '                     (:VALUE_FLOAT is null) and'
      '                     (:VALUE_STRING is null)) then 1'
      '           else 0'
      '         end),'
      '  :DOC_BRANCH_CODE,'
      '  :DOC_CODE,'
      '  :PRODUCT_CLASS_CODE,'
      '  :IS_FOR_EXPORT,'
      '  :EXPORT_IDENTIFIER'
      ''
      'from'
      '  PRODUCT_RELATIONS'
      ''
      'where'
      '  (ANCESTOR_PRODUCT_CODE = :NODE_ID)')
    Left = 352
    Top = 120
  end
  inherited qryUpdNodeParams: TAbmesSQLQuery
    Params = <
      item
        DataType = ftFloat
        Name = 'OLD_NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'NODE_PARAM_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_PARAM_ORDER_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_FLOAT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_VALUE_FLOAT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_FLOAT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_VALUE_FLOAT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_FLOAT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'VALUE_FLOAT_FORMAT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_FLOAT_RANGE_START'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_FLOAT_RANGE_END'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'VALUE_STRING'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'OLD_VALUE_STRING'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'VALUE_STRING'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'OLD_VALUE_STRING'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'VALUE_STRING'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'PREFIX'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SUFFIX'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_REQUIRED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PART_OF_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_DEFINED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_IS_DEFINED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_DEFINED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_IS_DEFINED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_DEFINED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_FLOAT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'VALUE_STRING'
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
        DataType = ftUnknown
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_FOR_EXPORT'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_IS_FOR_EXPORT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_FOR_EXPORT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EXPORT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_EXPORT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EXPORT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_EXPORT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EXPORT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_NODE_PARAM_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  for x in'
      '    ( select'
      '        pr.DESCENDANT_PRODUCT_CODE'
      '      from'
      '        PRODUCT_RELATIONS pr'
      '      where'
      '       (pr.ANCESTOR_PRODUCT_CODE = :OLD_NODE_ID)'
      '    )'
      '  loop'
      ''
      '    update'
      '      PRODUCT_PARAMS_FOR_EDIT pp'
      '    set'
      '      pp.PRODUCT_PARAM_NAME = :NODE_PARAM_NAME,'
      '      pp.PRODUCT_PARAM_ORDER_NO = :NODE_PARAM_ORDER_NO,'
      '      pp.VALUE_TYPE = :VALUE_TYPE,'
      '      pp.NOM_CODE = :NOM_CODE,'
      '      pp.VALUE_NOM_CODE ='
      '        case'
      
        '          when (Nvl2(:NOM_CODE, 1, 0) <> Nvl2(:OLD_NOM_CODE, 1, ' +
        '0)) or'
      
        '               (Nvl2(:VALUE_NOM_ITEM_CODE, 1, 0) <> Nvl2(:OLD_VA' +
        'LUE_NOM_ITEM_CODE, 1, 0)) or'
      '               not ((:NOM_CODE = :OLD_NOM_CODE) and'
      
        '                    (:VALUE_NOM_ITEM_CODE = :OLD_VALUE_NOM_ITEM_' +
        'CODE)) then :VALUE_NOM_CODE'
      '          else VALUE_NOM_CODE'
      '       end,'
      '      pp.VALUE_NOM_ITEM_CODE ='
      '        case'
      
        '          when (Nvl2(:NOM_CODE, 1, 0) <> Nvl2(:OLD_NOM_CODE, 1, ' +
        '0)) or'
      
        '               (Nvl2(:VALUE_NOM_ITEM_CODE, 1, 0) <> Nvl2(:OLD_VA' +
        'LUE_NOM_ITEM_CODE, 1, 0)) or'
      '               not ((:NOM_CODE = :OLD_NOM_CODE) and'
      
        '                    (:VALUE_NOM_ITEM_CODE = :OLD_VALUE_NOM_ITEM_' +
        'CODE)) then :VALUE_NOM_ITEM_CODE'
      '          else VALUE_NOM_ITEM_CODE'
      '        end,'
      '      pp.VALUE_FLOAT ='
      '        case'
      '          when (:VALUE_FLOAT <> :OLD_VALUE_FLOAT) or'
      
        '               (Nvl2(:VALUE_FLOAT, 1, 0) <> Nvl2(:OLD_VALUE_FLOA' +
        'T, 1, 0)) then :VALUE_FLOAT'
      '          else VALUE_FLOAT'
      '        end,'
      '      pp.VALUE_FLOAT_FORMAT = :VALUE_FLOAT_FORMAT,'
      '      pp.VALUE_FLOAT_RANGE_START = :VALUE_FLOAT_RANGE_START,'
      '      pp.VALUE_FLOAT_RANGE_END = :VALUE_FLOAT_RANGE_END,'
      '      pp.VALUE_STRING ='
      '        case'
      '          when (:VALUE_STRING <> :OLD_VALUE_STRING) or'
      
        '               (Nvl2(:VALUE_STRING, 1, 0) <> Nvl2(:OLD_VALUE_STR' +
        'ING, 1, 0)) then :VALUE_STRING'
      '          else VALUE_STRING'
      '        end,'
      '      pp.ABBREV = :ABBREV,'
      '      pp.PREFIX = :PREFIX,'
      '      pp.SUFFIX = :SUFFIX,'
      '      pp.IS_REQUIRED = :IS_REQUIRED,'
      '      pp.IS_PART_OF_NAME = :IS_PART_OF_NAME,'
      '      pp.IS_DEFINED ='
      '        case'
      '          when (:IS_DEFINED <> :OLD_IS_DEFINED) or'
      
        '               (Nvl2(:IS_DEFINED, 1, 0) <> Nvl2(:OLD_IS_DEFINED,' +
        ' 1, 0)) then :IS_DEFINED'
      '          else pp.IS_DEFINED'
      '        end,'
      '      pp.IS_VALUE_INHERITED ='
      '        Decode(PRODUCT_CODE, :OLD_NODE_ID, IS_VALUE_INHERITED,'
      '          case'
      '            when (IS_INHERITED <> 0) and'
      '                 ( (:VALUE_NOM_ITEM_CODE is not null) or'
      '                   (:VALUE_FLOAT is not null) or'
      '                   (:VALUE_STRING is not null) ) then 1'
      '            else 0'
      '          end'
      '        ),'
      '      pp.DOC_BRANCH_CODE = :DOC_BRANCH_CODE,'
      '      pp.DOC_CODE = :DOC_CODE,'
      '      pp.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE,'
      '      pp.IS_FOR_EXPORT ='
      '        case'
      
        '          when (:IS_FOR_EXPORT <> :OLD_IS_FOR_EXPORT) then :IS_F' +
        'OR_EXPORT'
      '          else pp.IS_FOR_EXPORT'
      '        end,'
      '      pp.EXPORT_IDENTIFIER ='
      '        case'
      
        '          when (:EXPORT_IDENTIFIER <> :OLD_EXPORT_IDENTIFIER)  o' +
        'r'
      
        '               (Nvl2(:EXPORT_IDENTIFIER, 1, 0) <> Nvl2(:OLD_EXPO' +
        'RT_IDENTIFIER, 1, 0))then :EXPORT_IDENTIFIER'
      '          else pp.EXPORT_IDENTIFIER'
      '        end'
      '    where'
      '      (pp.PRODUCT_CODE = x.DESCENDANT_PRODUCT_CODE) and'
      '      (pp.PRODUCT_PARAM_CODE = :OLD_NODE_PARAM_ID);'
      ''
      '  end loop;'
      'end;')
    Left = 352
    Top = 168
  end
  inherited qryDelNodeParams: TAbmesSQLQuery
    Params = <
      item
        DataType = ftFloat
        Name = 'OLD_NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_NODE_PARAM_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  for x in'
      '    ( select'
      '        pr.DESCENDANT_PRODUCT_CODE'
      '      from'
      '        PRODUCT_RELATIONS pr'
      '      where'
      '       (pr.ANCESTOR_PRODUCT_CODE = :OLD_NODE_ID)'
      '    )'
      '  loop'
      ''
      '    delete'
      '      PRODUCT_PARAMS_FOR_EDIT pp'
      '    where'
      '      (pp.PRODUCT_CODE = x.DESCENDANT_PRODUCT_CODE) and'
      '      (pp.PRODUCT_PARAM_CODE = :OLD_NODE_PARAM_ID);'
      ''
      '  end loop;'
      'end;')
    Left = 352
    Top = 216
  end
  object qryUpdateChildren: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MEASURE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_MEASURE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TRANSPORT_MEASURE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TRANSPORT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SELF_EXISTENT_STATUS_CODE'
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
        Name = 'PRODUCT_SPEC_REQUIREMENT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  for x in'
      '    ( select'
      '        pr.DESCENDANT_PRODUCT_CODE as PRODUCT_CODE'
      '      from'
      '        PRODUCT_RELATIONS pr'
      '      where'
      '       (pr.ANCESTOR_PRODUCT_CODE = :PRODUCT_CODE) and'
      '       (pr.DESCENDANT_PRODUCT_CODE <> pr.ANCESTOR_PRODUCT_CODE)'
      '    )'
      '  loop'
      '    update'
      '      PRODUCTS_FOR_EDIT p'
      '    set'
      
        '      p.MEASURE_CODE = Coalesce(To_Number(:MEASURE_CODE), p.MEAS' +
        'URE_CODE),'
      
        '      p.ACCOUNT_MEASURE_CODE = Coalesce(To_Number(:ACCOUNT_MEASU' +
        'RE_CODE), p.ACCOUNT_MEASURE_CODE),'
      
        '      p.ACCOUNT_MEASURE_COEF = Coalesce(To_Number(:ACCOUNT_MEASU' +
        'RE_COEF), p.ACCOUNT_MEASURE_COEF),'
      
        '      p.TECH_MEASURE_CODE = Coalesce(To_Number(:TECH_MEASURE_COD' +
        'E), p.TECH_MEASURE_CODE),'
      
        '      p.TECH_MEASURE_COEF = Coalesce(To_Number(:TECH_MEASURE_COE' +
        'F), p.TECH_MEASURE_COEF),'
      
        '      p.TRANSPORT_MEASURE_CODE = Coalesce(To_Number(:TRANSPORT_M' +
        'EASURE_CODE), p.TRANSPORT_MEASURE_CODE),'
      
        '      p.TRANSPORT_MEASURE_COEF = Coalesce(To_Number(:TRANSPORT_M' +
        'EASURE_COEF), p.TRANSPORT_MEASURE_COEF),'
      
        '      p.SELF_EXISTENT_STATUS_CODE = Coalesce(To_Number(:SELF_EXI' +
        'STENT_STATUS_CODE), p.SELF_EXISTENT_STATUS_CODE),'
      
        '      p.TRANSIENT_STATUS_CODE = Coalesce(To_Number(:TRANSIENT_ST' +
        'ATUS_CODE), p.TRANSIENT_STATUS_CODE),'
      
        '      p.WORKDAYS_TO_EXIST = Coalesce(To_Number(:WORKDAYS_TO_EXIS' +
        'T), p.WORKDAYS_TO_EXIST),'
      
        '      p.PRODUCT_SPEC_REQUIREMENT_CODE = Coalesce(To_Number(:PROD' +
        'UCT_SPEC_REQUIREMENT_CODE), p.PRODUCT_SPEC_REQUIREMENT_CODE)'
      '    where'
      '      (p.PRODUCT_CODE = x.PRODUCT_CODE);'
      '  end loop;                            '
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 320
    Top = 304
  end
  object prvProductLocations: TDataSetProvider
    DataSet = qryProductLocations
    OnUpdateError = prvProductLocationsUpdateError
    BeforeUpdateRecord = prvProductLocationsBeforeUpdateRecord
    BeforeApplyUpdates = prvProductLocationsBeforeApplyUpdates
    Left = 48
    Top = 248
  end
  object qryProductLocations: TAbmesSQLQuery
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
      '  /*+ ORDERED INDEX(pl) */'
      '  pl.PRODUCT_CODE,'
      '  pl.DEPT_CODE,'
      '  pl.STORE_CODE,'
      '  '
      '  ( select'
      
        '      dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER ||' +
        ' '#39' - '#39' || d.NAME'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = pl.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE)'
      '  ) as STORE_FULL_NAME,'
      ''
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      ''
      '  d.NAME as DEPT_NAME,'
      '  '
      
        '  Decode(pr.ANCESTOR_PRODUCT_CODE, :PRODUCT_CODE, 0, 1) as IS_IN' +
        'HERITED,'
      '  ('
      '    select'
      '      Count(pr2.ANCESTOR_PRODUCT_CODE)'
      '    from'
      '      PRODUCT_RELATIONS pr2'
      '    where'
      '      (pr2.DESCENDANT_PRODUCT_CODE = pl.PRODUCT_CODE)'
      '  ) as PRODUCT_LEVEL'
      ''
      'from'
      '  PRODUCT_RELATIONS pr,'
      '  PRODUCT_LOCATIONS pl,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      ''
      'where'
      '  (pr.ANCESTOR_PRODUCT_CODE = pl.PRODUCT_CODE) and'
      '  (pl.DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      ''
      '  (pr.DESCENDANT_PRODUCT_CODE = :PRODUCT_CODE)'
      ''
      'order by'
      '  PRODUCT_LEVEL,'
      '  dt.DEPT_TYPE_ABBREV,'
      '  d.CUSTOM_CODE,'
      '  d.SUFFIX_LETTER'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PRODUCT_LOCATIONS'
    Left = 48
    Top = 296
    object qryProductLocationsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryProductLocationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryProductLocationsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductLocationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryProductLocationsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryProductLocationsIS_INHERITED: TAbmesFloatField
      FieldName = 'IS_INHERITED'
      ProviderFlags = []
    end
    object qryProductLocationsPRODUCT_LEVEL: TAbmesFloatField
      FieldName = 'PRODUCT_LEVEL'
      ProviderFlags = []
    end
    object qryProductLocationsSTORE_FULL_NAME: TAbmesWideStringField
      FieldName = 'STORE_FULL_NAME'
      ProviderFlags = []
      Size = 149
    end
  end
  object qryInsProductLocations: TAbmesSQLQuery
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
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into PRODUCT_LOCATIONS'
      '('
      '  PRODUCT_CODE,'
      '  DEPT_CODE,'
      '  STORE_CODE'
      ')'
      'values'
      '('
      '  :PRODUCT_CODE,'
      '  :DEPT_CODE,'
      '  :STORE_CODE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 352
  end
  object qryUpdProductLocations: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  PRODUCT_LOCATIONS pl'
      ''
      'set'
      '  pl.DEPT_CODE = :DEPT_CODE,'
      '  pl.STORE_CODE = :STORE_CODE'
      ''
      'where'
      '  (pl.PRODUCT_CODE = :OLD_PRODUCT_CODE) and'
      '  (pl.DEPT_CODE = :OLD_DEPT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 400
  end
  object qryDelProductLocations: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OLD_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  PRODUCT_LOCATIONS pl'
      'where'
      '  (pl.PRODUCT_CODE = :OLD_PRODUCT_CODE) and'
      '  (pl.DEPT_CODE = :OLD_DEPT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 448
  end
  object qryProductMinQuantities: TAbmesSQLQuery
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
      '  /*+ INDEX(ps) */'
      '  ps.PRODUCT_STORE_CODE,'
      '  ps.PRODUCT_CODE,'
      '  ps.STORE_CODE,'
      ''
      '  ( select'
      
        '      dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER ||' +
        ' '#39' - '#39' || d.NAME'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = ps.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE)'
      '  ) as STORE_FULL_NAME,'
      ''
      '  ps.MIN_QUANTITY,'
      
        '  (ps.MIN_QUANTITY * p.ACCOUNT_MEASURE_COEF) as ACCOUNT_MIN_QUAN' +
        'TITY,'
      '  p.ACCOUNT_MEASURE_COEF,'
      '  p.MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_CODE,'
      ''
      
        '  Decode(pr.ANCESTOR_PRODUCT_CODE, :PRODUCT_CODE, 0, 1) as IS_IN' +
        'HERITED,'
      '  ('
      '    select'
      '      Count(pr2.ANCESTOR_PRODUCT_CODE)'
      '    from'
      '      PRODUCT_RELATIONS pr2'
      '    where'
      '      (pr2.DESCENDANT_PRODUCT_CODE = ps.PRODUCT_CODE)'
      '  ) as PRODUCT_LEVEL,'
      ''
      '  ps.BEGIN_DATE,'
      '  ps.END_DATE,'
      ''
      '  ps.DOC_BRANCH_CODE,'
      '  ps.DOC_CODE,'
      '  %HAS_DOC_ITEMS[ps] as HAS_DOC_ITEMS,'
      ''
      '  case'
      '    when (ps.END_DATE < ContextDate) then 1'
      '    else 0'
      '  end as IS_PAST,'
      ''
      '  case'
      
        '    when (ContextDate between ps.BEGIN_DATE and ps.END_DATE) the' +
        'n 1'
      '    else 0'
      '  end as IS_PRESENT,'
      ''
      '  case'
      '    when (ContextDate < ps.BEGIN_DATE) then 1'
      '    else 0'
      '  end as IS_FUTURE'
      ''
      'from'
      '  PRODUCT_RELATIONS pr,'
      '  PRODUCT_STORES ps,'
      '  PRODUCTS p'
      ''
      'where'
      '  (pr.ANCESTOR_PRODUCT_CODE = ps.PRODUCT_CODE) and'
      '  (p.PRODUCT_CODE = ps.PRODUCT_CODE) and'
      ''
      '  (pr.DESCENDANT_PRODUCT_CODE = :PRODUCT_CODE)'
      ''
      'order by'
      '  PRODUCT_LEVEL,'
      '  STORE_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[ps]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PRODUCT_STORES_FOR_EDIT'
    Left = 336
    Top = 408
    object qryProductMinQuantitiesPRODUCT_STORE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_STORE_CODE'
    end
    object qryProductMinQuantitiesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryProductMinQuantitiesSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryProductMinQuantitiesIS_INHERITED: TAbmesFloatField
      FieldName = 'IS_INHERITED'
    end
    object qryProductMinQuantitiesPRODUCT_LEVEL: TAbmesFloatField
      FieldName = 'PRODUCT_LEVEL'
      ProviderFlags = []
    end
    object qryProductMinQuantitiesMIN_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_QUANTITY'
    end
    object qryProductMinQuantitiesSTORE_FULL_NAME: TAbmesWideStringField
      FieldName = 'STORE_FULL_NAME'
      ProviderFlags = []
      Size = 149
    end
    object qryProductMinQuantitiesBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryProductMinQuantitiesEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryProductMinQuantitiesACCOUNT_MIN_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_MIN_QUANTITY'
      ProviderFlags = []
    end
    object qryProductMinQuantitiesACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryProductMinQuantitiesMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryProductMinQuantitiesACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryProductMinQuantitiesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryProductMinQuantitiesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryProductMinQuantitiesHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryProductMinQuantitiesIS_PAST: TAbmesFloatField
      FieldName = 'IS_PAST'
      ProviderFlags = []
    end
    object qryProductMinQuantitiesIS_PRESENT: TAbmesFloatField
      FieldName = 'IS_PRESENT'
      ProviderFlags = []
    end
    object qryProductMinQuantitiesIS_FUTURE: TAbmesFloatField
      FieldName = 'IS_FUTURE'
      ProviderFlags = []
    end
  end
  object prvProductMinQuantities: TDataSetProvider
    DataSet = qryProductMinQuantities
    OnUpdateError = prvProductMinQuantitiesUpdateError
    BeforeUpdateRecord = prvProductMinQuantitiesBeforeUpdateRecord
    BeforeApplyUpdates = prvProductMinQuantitiesBeforeApplyUpdates
    Left = 336
    Top = 360
  end
  object qryInsProductMinQuantities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_STORE_CODE'
        ParamType = ptInput
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
        DataType = ftFloat
        Name = 'MIN_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
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
      'insert into PRODUCT_STORES_FOR_EDIT'
      '('
      '  PRODUCT_STORE_CODE,'
      '  PRODUCT_CODE,'
      '  STORE_CODE,'
      '  MIN_QUANTITY,'
      '  BEGIN_DATE,'
      '  END_DATE,'
      '  DOC_BRANCH_CODE,'
      '  DOC_CODE'
      ')'
      'values'
      '('
      '  :PRODUCT_STORE_CODE,'
      '  :PRODUCT_CODE,'
      '  :STORE_CODE,'
      '  :MIN_QUANTITY,'
      '  :BEGIN_DATE,'
      '  :END_DATE,'
      '  :DOC_BRANCH_CODE,'
      '  :DOC_CODE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 432
    Top = 384
  end
  object qryUpdProductMinQuantities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
        DataType = ftFloat
        Name = 'MIN_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
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
        Name = 'OLD_PRODUCT_STORE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  PRODUCT_STORES_FOR_EDIT ps'
      'set'
      '  ps.PRODUCT_CODE = :PRODUCT_CODE,'
      '  ps.STORE_CODE = :STORE_CODE,'
      '  ps.MIN_QUANTITY = :MIN_QUANTITY,'
      '  ps.BEGIN_DATE = :BEGIN_DATE,'
      '  ps.END_DATE = :END_DATE,'
      '  ps.DOC_BRANCH_CODE = :DOC_BRANCH_CODE,'
      '  ps.DOC_CODE = :DOC_CODE'
      'where'
      '  (ps.PRODUCT_STORE_CODE = :OLD_PRODUCT_STORE_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 432
    Top = 440
  end
  object qryDelProductMinQuantities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OLD_PRODUCT_STORE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  PRODUCT_STORES_FOR_EDIT ps'
      'where'
      '  (ps.PRODUCT_STORE_CODE = :OLD_PRODUCT_STORE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 432
    Top = 488
  end
  object qryNewProductStoreCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_PRODUCT_STORES.NextVal as NEW_PRODUCT_STORE_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 328
    Top = 456
    object qryNewProductStoreCodeNEW_PRODUCT_STORE_CODE: TAbmesFloatField
      FieldName = 'NEW_PRODUCT_STORE_CODE'
    end
  end
  object qryDelProductStores: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  PRODUCT_STORES_FOR_EDIT ps'
      'where'
      '  (ps.PRODUCT_CODE = :PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 64
    Top = 512
  end
  object prvProductOrigins: TDataSetProvider
    DataSet = qryProductOrigins
    Options = [poReadOnly]
    Left = 560
    Top = 208
  end
  object qryProductOrigins: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  po.PRODUCT_ORIGIN_CODE,'
      '  po.PRODUCT_ORIGIN_NAME,'
      '  po.PRODUCT_ORIGIN_ABBREV'
      '  '
      'from'
      '  PRODUCT_ORIGINS po'
      ''
      'order by'
      '  po.PRODUCT_ORIGIN_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 560
    Top = 256
    object qryProductOriginsPRODUCT_ORIGIN_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ORIGIN_CODE'
    end
    object qryProductOriginsPRODUCT_ORIGIN_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_ORIGIN_NAME'
      Size = 100
    end
    object qryProductOriginsPRODUCT_ORIGIN_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_ORIGIN_ABBREV'
      Size = 100
    end
  end
  object qryCommonProductInfo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ( select'
      '      NullIf(Count(*), 0)'
      '    from'
      '      DEFINITE_PRODUCTS dp2'
      '    start with'
      
        '      (dp2.PRODUCT_CODE = Nvl2(cp.PRODUCT_CODE, dp.COMMON_PRODUC' +
        'T_CODE, p.PRODUCT_CODE))'
      '    connect by'
      '      (dp2.PRODUCT_CODE = prior dp2.COMMON_PRODUCT_CODE)'
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
      '      (dp2.COMMON_PRODUCT_CODE = prior dp2.PRODUCT_CODE) and'
      '      not exists('
      '        select'
      '          1'
      '        from'
      '          CONCRETE_PRODUCTS cp2'
      '        where'
      '          (cp2.PRODUCT_CODE = dp2.PRODUCT_CODE)'
      '      )'
      '  ) as COMMON_PRODUCTS_SUB_LEVELS'
      ''
      'from'
      '  PRODUCTS p,'
      '  DEFINITE_PRODUCTS dp,'
      '  CONCRETE_PRODUCTS cp'
      ''
      'where'
      '  (p.PRODUCT_CODE = :PRODUCT_CODE) and'
      '  (p.PRODUCT_CODE = dp.PRODUCT_CODE) and'
      '  (p.PRODUCT_CODE = cp.PRODUCT_CODE(+))'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 1000
    Top = 392
    object qryCommonProductInfoCOMMON_PRODUCTS_LEVEL_NO: TAbmesFloatField
      FieldName = 'COMMON_PRODUCTS_LEVEL_NO'
    end
    object qryCommonProductInfoCOMMON_PRODUCTS_SUB_LEVELS: TAbmesFloatField
      FieldName = 'COMMON_PRODUCTS_SUB_LEVELS'
    end
  end
  object prvCommonProductInfo: TDataSetProvider
    DataSet = qryCommonProductInfo
    Left = 1000
    Top = 344
  end
  object prvProductPeriods: TDataSetProvider
    DataSet = qryProductPeriodsHeader
    Options = [poCascadeDeletes, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvProductPeriodsBeforeUpdateRecord
    BeforeApplyUpdates = prvProductPeriodsBeforeApplyUpdates
    AfterApplyUpdates = prvProductPeriodsAfterApplyUpdates
    Left = 680
    Top = 8
  end
  object qryProductPeriods: TAbmesSQLQuery
    DataSource = dsProductPeriodsHeader
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pp.PRODUCT_CODE,'
      '  pp.PRODUCT_PERIOD_CODE,'
      '  pp.BEGIN_DATE,'
      '  pp.END_DATE,'
      '  pp.DOC_BRANCH_CODE,'
      '  pp.DOC_CODE,'
      '  %HAS_DOC_ITEMS[pp] as HAS_DOC_ITEMS,'
      '  pp.PRECISION_LEVEL_CODE,'
      '  pp.BALANCE_QUANTITY,'
      '  pp.MIN_ORDER_QUANTITY,'
      '  pp.MAX_ORDER_QUANTITY,'
      '  pp.ACQUIRE_BATCH_QUANTITY,'
      '  pp.INVESTMENT_LEVEL_1_VALUE,'
      '  pp.INVESTMENT_LEVEL_2_VALUE,'
      '  pp.INVESTMENT_LEVEL_3_VALUE,'
      '  pp.INVESTMENT_LEVEL_4_VALUE,'
      '  pp.INVESTMENT_LEVEL_5_VALUE,'
      '  pp.INVESTMENT_LEVEL_6_VALUE,'
      '  pp.SALE_STORE_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = pp.SALE_STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as SALE_STORE_IDENTIFIER,'
      '  pp.SALE_ACQUIRE_SINGLE_PRICE,'
      '  pp.SALE_ACQUIRE_CURRENCY_CODE,'
      '  ( select'
      '      cr.FIXING'
      '    from'
      '      CURRENCY_RATES cr'
      '    where'
      '      (cr.CURRENCY_CODE = pp.SALE_ACQUIRE_CURRENCY_CODE) and'
      '      (cr.RATE_DATE = Least(pp.END_DATE, ContextDate))'
      '  ) as SALE_ACQUIRE_CURRENCY_FIXING,'
      '  pp.SALE_LEASE_SINGLE_PRICE,'
      '  pp.SALE_LEASE_CURRENCY_CODE,'
      '  pp.SALE_LEASE_DATE_UNIT_CODE,'
      '  pp.DELIVERY_STORE_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = pp.DELIVERY_STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DELIVERY_STORE_IDENTIFIER,'
      '  pp.DELIVERY_ACQUIRE_SINGLE_PRICE,'
      '  ( select'
      '      cr.FIXING'
      '    from'
      '      CURRENCY_RATES cr'
      '    where'
      '      (cr.CURRENCY_CODE = pp.DELIVERY_ACQUIRE_CURRENCY_CODE) and'
      '      (cr.RATE_DATE = Least(pp.END_DATE, ContextDate))'
      '  ) as DELIVERY_ACQUIRE_CURR_FIXING,'
      '  pp.DELIVERY_ACQUIRE_CURRENCY_CODE,'
      '  pp.DELIVERY_LEASE_SINGLE_PRICE,'
      '  pp.DELIVERY_LEASE_CURRENCY_CODE,'
      '  pp.DELIVERY_LEASE_DATE_UNIT_CODE,'
      '  pp.IS_PSD_PRICE_FROM_DELIVERY,'
      ''
      '  pp.SALE_RESOLVE_DURATION_DAYS,'
      '  pp.DELIVERY_RESOLVE_DURATION_DAYS,'
      ''
      
        '  Lag(pp.INVESTMENT_LEVEL_1_VALUE, 1) over (order by pp.BEGIN_DA' +
        'TE, pp.END_DATE, pp.PRODUCT_PERIOD_CODE) as PREV_INVESTMENT_LEVE' +
        'L_1_VALUE,'
      
        '  Lag(pp.INVESTMENT_LEVEL_2_VALUE, 1) over (order by pp.BEGIN_DA' +
        'TE, pp.END_DATE, pp.PRODUCT_PERIOD_CODE) as PREV_INVESTMENT_LEVE' +
        'L_2_VALUE,'
      
        '  Lag(pp.INVESTMENT_LEVEL_3_VALUE, 1) over (order by pp.BEGIN_DA' +
        'TE, pp.END_DATE, pp.PRODUCT_PERIOD_CODE) as PREV_INVESTMENT_LEVE' +
        'L_3_VALUE,'
      
        '  Lag(pp.INVESTMENT_LEVEL_4_VALUE, 1) over (order by pp.BEGIN_DA' +
        'TE, pp.END_DATE, pp.PRODUCT_PERIOD_CODE) as PREV_INVESTMENT_LEVE' +
        'L_4_VALUE,'
      
        '  Lag(pp.INVESTMENT_LEVEL_5_VALUE, 1) over (order by pp.BEGIN_DA' +
        'TE, pp.END_DATE, pp.PRODUCT_PERIOD_CODE) as PREV_INVESTMENT_LEVE' +
        'L_5_VALUE,'
      
        '  Lag(pp.INVESTMENT_LEVEL_6_VALUE, 1) over (order by pp.BEGIN_DA' +
        'TE, pp.END_DATE, pp.PRODUCT_PERIOD_CODE) as PREV_INVESTMENT_LEVE' +
        'L_6_VALUE,'
      ''
      '  cpp.INVESTMENT_LEVEL_1_VALUE as CMMN_INVESTMENT_LEVEL_1_VALUE,'
      '  cpp.INVESTMENT_LEVEL_2_VALUE as CMMN_INVESTMENT_LEVEL_2_VALUE,'
      '  cpp.INVESTMENT_LEVEL_3_VALUE as CMMN_INVESTMENT_LEVEL_3_VALUE,'
      '  cpp.INVESTMENT_LEVEL_4_VALUE as CMMN_INVESTMENT_LEVEL_4_VALUE,'
      '  cpp.INVESTMENT_LEVEL_5_VALUE as CMMN_INVESTMENT_LEVEL_5_VALUE,'
      '  cpp.INVESTMENT_LEVEL_6_VALUE as CMMN_INVESTMENT_LEVEL_6_VALUE,'
      ''
      
        '  (pp.INVESTMENT_LEVEL_1_VALUE / :ACCOUNT_MEASURE_COEF) as ACC_I' +
        'NVESTMENT_LEVEL_1_VALUE,'
      
        '  (pp.INVESTMENT_LEVEL_2_VALUE / :ACCOUNT_MEASURE_COEF) as ACC_I' +
        'NVESTMENT_LEVEL_2_VALUE,'
      
        '  (pp.INVESTMENT_LEVEL_3_VALUE / :ACCOUNT_MEASURE_COEF) as ACC_I' +
        'NVESTMENT_LEVEL_3_VALUE,'
      
        '  (pp.INVESTMENT_LEVEL_4_VALUE / :ACCOUNT_MEASURE_COEF) as ACC_I' +
        'NVESTMENT_LEVEL_4_VALUE,'
      
        '  (pp.INVESTMENT_LEVEL_5_VALUE / :ACCOUNT_MEASURE_COEF) as ACC_I' +
        'NVESTMENT_LEVEL_5_VALUE,'
      
        '  (pp.INVESTMENT_LEVEL_6_VALUE / :ACCOUNT_MEASURE_COEF) as ACC_I' +
        'NVESTMENT_LEVEL_6_VALUE,'
      
        '  (pp.SALE_ACQUIRE_SINGLE_PRICE / :ACCOUNT_MEASURE_COEF) as ACC_' +
        'SALE_ACQUIRE_SINGLE_PRICE,'
      
        '  (pp.SALE_LEASE_SINGLE_PRICE / :ACCOUNT_MEASURE_COEF) as ACC_SA' +
        'LE_LEASE_SINGLE_PRICE,'
      
        '  (pp.DELIVERY_ACQUIRE_SINGLE_PRICE / :ACCOUNT_MEASURE_COEF) as ' +
        'ACC_DLVRY_ACQUIRE_SINGLE_PRICE,'
      
        '  (pp.DELIVERY_LEASE_SINGLE_PRICE / :ACCOUNT_MEASURE_COEF) as AC' +
        'C_DLVRY_LEASE_SINGLE_PRICE,'
      ''
      
        '  (pp.BALANCE_QUANTITY * :ACCOUNT_MEASURE_COEF) as ACC_BALANCE_Q' +
        'UANTITY,'
      
        '  (pp.MIN_ORDER_QUANTITY * :ACCOUNT_MEASURE_COEF) as ACC_MIN_ORD' +
        'ER_QUANTITY,'
      
        '  (pp.MAX_ORDER_QUANTITY * :ACCOUNT_MEASURE_COEF) as ACC_MAX_ORD' +
        'ER_QUANTITY,'
      
        '  (pp.ACQUIRE_BATCH_QUANTITY * :ACCOUNT_MEASURE_COEF) as ACC_ACQ' +
        'UIRE_BATCH_QUANTITY,'
      ''
      '  pp.CREATE_EMPLOYEE_CODE,'
      '  pp.CREATE_DATE,'
      '  pp.CREATE_TIME,'
      '  pp.CHANGE_EMPLOYEE_CODE,'
      '  pp.CHANGE_DATE,'
      '  pp.CHANGE_TIME,'
      ''
      '  case'
      '    when (pp.END_DATE < ContextDate) then 1'
      '    else 0'
      '  end as IS_PAST,'
      ''
      '  case'
      
        '    when (ContextDate between pp.BEGIN_DATE and pp.END_DATE) the' +
        'n 1'
      '    else 0'
      '  end as IS_PRESENT,'
      ''
      '  case'
      '    when (ContextDate < pp.BEGIN_DATE) then 1'
      '    else 0'
      '  end as IS_FUTURE,'
      ''
      '  pp.OVERRIDE_PRECISION_LEVEL,'
      '  pp.OVERRIDE_BALANCE_QUANTITY,'
      '  pp.OVERRIDE_MIN_ORDER_QUANTITY,'
      '  pp.OVERRIDE_MAX_ORDER_QUANTITY,'
      '  pp.OVERRIDE_ACQUIRE_BATCH_QTY,'
      '  pp.OVERRIDE_INV_LEVEL_1_VALUE,'
      '  pp.OVERRIDE_INV_LEVEL_2_VALUE,'
      '  pp.OVERRIDE_INV_LEVEL_3_VALUE,'
      '  pp.OVERRIDE_INV_LEVEL_4_VALUE,'
      '  pp.OVERRIDE_INV_LEVEL_5_VALUE,'
      '  pp.OVERRIDE_INV_LEVEL_6_VALUE,'
      '  pp.OVERRIDE_S_STORE,'
      '  pp.OVERRIDE_S_ACQUIRE_PRICE,'
      '  pp.OVERRIDE_S_LEASE_PRICE,'
      '  pp.OVERRIDE_S_RESOLVE_DUR_DAYS,'
      '  pp.OVERRIDE_D_STORE,'
      '  pp.OVERRIDE_D_ACQUIRE_PRICE,'
      '  pp.OVERRIDE_D_LEASE_PRICE,'
      '  pp.OVERRIDE_D_RESOLVE_DUR_DAYS,'
      '  pp.OVERRIDE_IS_PSD_PRICE_FROM_DLV,'
      ''
      '  cpp.PRECISION_LEVEL_CODE as INHRT_PRECISION_LEVEL_CODE,'
      '  cpp.BALANCE_QUANTITY as INHRT_BALANCE_QUANTITY,'
      '  cpp.MIN_ORDER_QUANTITY as INHRT_MIN_ORDER_QUANTITY,'
      '  cpp.MAX_ORDER_QUANTITY as INHRT_MAX_ORDER_QUANTITY,'
      '  cpp.ACQUIRE_BATCH_QUANTITY as INHRT_ACQUIRE_BATCH_QUANTITY,'
      
        '  cpp.INVESTMENT_LEVEL_1_VALUE as INHRT_INVESTMENT_LEVEL_1_VALUE' +
        ','
      
        '  cpp.INVESTMENT_LEVEL_2_VALUE as INHRT_INVESTMENT_LEVEL_2_VALUE' +
        ','
      
        '  cpp.INVESTMENT_LEVEL_3_VALUE as INHRT_INVESTMENT_LEVEL_3_VALUE' +
        ','
      
        '  cpp.INVESTMENT_LEVEL_4_VALUE as INHRT_INVESTMENT_LEVEL_4_VALUE' +
        ','
      
        '  cpp.INVESTMENT_LEVEL_5_VALUE as INHRT_INVESTMENT_LEVEL_5_VALUE' +
        ','
      
        '  cpp.INVESTMENT_LEVEL_6_VALUE as INHRT_INVESTMENT_LEVEL_6_VALUE' +
        ','
      
        '  (cpp.INVESTMENT_LEVEL_1_VALUE / :ACCOUNT_MEASURE_COEF) as ACC_' +
        'INHRT_INV_LEVEL_1_VALUE,'
      
        '  (cpp.INVESTMENT_LEVEL_2_VALUE / :ACCOUNT_MEASURE_COEF) as ACC_' +
        'INHRT_INV_LEVEL_2_VALUE,'
      
        '  (cpp.INVESTMENT_LEVEL_3_VALUE / :ACCOUNT_MEASURE_COEF) as ACC_' +
        'INHRT_INV_LEVEL_3_VALUE,'
      
        '  (cpp.INVESTMENT_LEVEL_4_VALUE / :ACCOUNT_MEASURE_COEF) as ACC_' +
        'INHRT_INV_LEVEL_4_VALUE,'
      
        '  (cpp.INVESTMENT_LEVEL_5_VALUE / :ACCOUNT_MEASURE_COEF) as ACC_' +
        'INHRT_INV_LEVEL_5_VALUE,'
      
        '  (cpp.INVESTMENT_LEVEL_6_VALUE / :ACCOUNT_MEASURE_COEF) as ACC_' +
        'INHRT_INV_LEVEL_6_VALUE,'
      '  cpp.SALE_STORE_CODE as INHRT_S_STORE_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = cpp.SALE_STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as INHRT_S_STORE_IDENTIFIER,'
      '  cpp.SALE_ACQUIRE_SINGLE_PRICE as INHRT_S_ACQUIRE_SINGLE_PRICE,'
      
        '  cpp.SALE_ACQUIRE_CURRENCY_CODE as INHRT_S_ACQUIRE_CURRENCY_COD' +
        'E,'
      '  cpp.SALE_LEASE_SINGLE_PRICE as INHRT_S_LEASE_SINGLE_PRICE,'
      '  cpp.SALE_LEASE_CURRENCY_CODE as INHRT_S_LEASE_CURRENCY_CODE,'
      '  cpp.SALE_LEASE_DATE_UNIT_CODE as INHRT_S_LEASE_DATE_UNIT_CODE,'
      
        '  cpp.SALE_RESOLVE_DURATION_DAYS as INHRT_S_RESOLVE_DURATION_DAY' +
        'S,'
      '  cpp.DELIVERY_STORE_CODE as INHRT_D_STORE_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = cpp.SALE_STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as INHRT_D_STORE_IDENTIFIER,'
      
        '  cpp.DELIVERY_ACQUIRE_SINGLE_PRICE as INHRT_D_ACQUIRE_SINGLE_PR' +
        'ICE,'
      
        '  cpp.DELIVERY_ACQUIRE_CURRENCY_CODE as INHRT_D_ACQUIRE_CURRENCY' +
        '_CODE,'
      '  cpp.DELIVERY_LEASE_SINGLE_PRICE as INHRT_D_LEASE_SINGLE_PRICE,'
      
        '  cpp.DELIVERY_LEASE_CURRENCY_CODE as INHRT_D_LEASE_CURRENCY_COD' +
        'E,'
      
        '  cpp.DELIVERY_LEASE_DATE_UNIT_CODE as INHRT_D_LEASE_DATE_UNIT_C' +
        'ODE,'
      
        '  cpp.DELIVERY_RESOLVE_DURATION_DAYS as INHRT_D_RESOLVE_DURATION' +
        '_DAYS,'
      
        '  cpp.IS_PSD_PRICE_FROM_DELIVERY as INHRT_IS_PSD_PRICE_FROM_DLVR' +
        'Y,'
      
        '  (cpp.SALE_ACQUIRE_SINGLE_PRICE / :ACCOUNT_MEASURE_COEF) as ACC' +
        '_INHRT_S_ACQ_SINGLE_PRICE,'
      
        '  (cpp.SALE_LEASE_SINGLE_PRICE / :ACCOUNT_MEASURE_COEF) as ACC_I' +
        'NHRT_S_LEASE_SINGLE_PRICE,'
      
        '  (cpp.DELIVERY_ACQUIRE_SINGLE_PRICE / :ACCOUNT_MEASURE_COEF) as' +
        ' ACC_INHRT_D_ACQ_SINGLE_PRICE,'
      
        '  (cpp.DELIVERY_LEASE_SINGLE_PRICE / :ACCOUNT_MEASURE_COEF) as A' +
        'CC_INHRT_D_LEASE_SINGLE_PRICE,'
      
        '  (cpp.BALANCE_QUANTITY * :ACCOUNT_MEASURE_COEF) as ACC_INHRT_BA' +
        'LANCE_QUANTITY,'
      
        '  (cpp.MIN_ORDER_QUANTITY * :ACCOUNT_MEASURE_COEF) as ACC_INHRT_' +
        'MIN_ORDER_QUANTITY,'
      
        '  (cpp.MAX_ORDER_QUANTITY * :ACCOUNT_MEASURE_COEF) as ACC_INHRT_' +
        'MAX_ORDER_QUANTITY,'
      
        '  (cpp.ACQUIRE_BATCH_QUANTITY * :ACCOUNT_MEASURE_COEF) as ACC_IN' +
        'HRT_ACQUIRE_BATCH_QTY'
      ''
      'from'
      '  PRODUCT_PERIODS pp,'
      '  ( select'
      '      pp2.PRODUCT_CODE,'
      '      pp2.PRODUCT_PERIOD_CODE,'
      '      pp2.BEGIN_DATE,'
      '      ( select'
      '          dp.COMMON_PRODUCT_CODE'
      '        from'
      '          DEFINITE_PRODUCTS dp,'
      '          CONCRETE_PRODUCTS cp'
      '        where'
      '          (pp2.PRODUCT_CODE = dp.PRODUCT_CODE) and'
      '          (cp.PRODUCT_CODE = dp.PRODUCT_CODE)'
      '      ) as COMMON_PRODUCT_CODE'
      '    from'
      '      PRODUCT_PERIODS pp2'
      '    where'
      '      (pp2.PRODUCT_CODE = :PRODUCT_CODE)'
      '  ) x,'
      '  PRODUCT_PERIODS cpp'
      ''
      'where'
      '  (pp.PRODUCT_CODE = :PRODUCT_CODE) and'
      ''
      '  (pp.PRODUCT_CODE = x.PRODUCT_CODE) and'
      '  (pp.PRODUCT_PERIOD_CODE = x.PRODUCT_PERIOD_CODE) and'
      ''
      '  (x.COMMON_PRODUCT_CODE = cpp.PRODUCT_CODE(+)) and'
      '  (x.BEGIN_DATE between cpp.BEGIN_DATE(+) and cpp.END_DATE(+))'
      ''
      'order by'
      '  pp.BEGIN_DATE,'
      '  pp.END_DATE,'
      '  pp.PRODUCT_PERIOD_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pp]'
        ParamType = ptInput
        Value = '1'
      end>
    DefaultOrder.Fields = 'BEGIN_DATE; END_DATE; PRODUCT_PERIOD_CODE'
    MacroParams = <>
    CustomParams = <>
    TableName = 'PRODUCT_PERIODS_FOR_EDIT'
    Left = 680
    Top = 152
    object qryProductPeriodsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProductPeriodsPRODUCT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProductPeriodsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryProductPeriodsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryProductPeriodsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryProductPeriodsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryProductPeriodsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryProductPeriodsPRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRECISION_LEVEL_CODE'
    end
    object qryProductPeriodsBALANCE_QUANTITY: TAbmesFloatField
      FieldName = 'BALANCE_QUANTITY'
    end
    object qryProductPeriodsMIN_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_ORDER_QUANTITY'
    end
    object qryProductPeriodsMAX_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_ORDER_QUANTITY'
    end
    object qryProductPeriodsACQUIRE_BATCH_QUANTITY: TAbmesFloatField
      FieldName = 'ACQUIRE_BATCH_QUANTITY'
    end
    object qryProductPeriodsINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_1_VALUE'
    end
    object qryProductPeriodsINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_2_VALUE'
    end
    object qryProductPeriodsINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_3_VALUE'
    end
    object qryProductPeriodsINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_4_VALUE'
    end
    object qryProductPeriodsINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_5_VALUE'
    end
    object qryProductPeriodsINVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_6_VALUE'
    end
    object qryProductPeriodsSALE_STORE_CODE: TAbmesFloatField
      FieldName = 'SALE_STORE_CODE'
    end
    object qryProductPeriodsSALE_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SALE_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryProductPeriodsSALE_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'SALE_ACQUIRE_SINGLE_PRICE'
    end
    object qryProductPeriodsSALE_ACQUIRE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'SALE_ACQUIRE_CURRENCY_CODE'
    end
    object qryProductPeriodsSALE_ACQUIRE_CURRENCY_FIXING: TAbmesFloatField
      FieldName = 'SALE_ACQUIRE_CURRENCY_FIXING'
      ProviderFlags = []
    end
    object qryProductPeriodsSALE_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'SALE_LEASE_SINGLE_PRICE'
    end
    object qryProductPeriodsSALE_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'SALE_LEASE_CURRENCY_CODE'
    end
    object qryProductPeriodsSALE_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'SALE_LEASE_DATE_UNIT_CODE'
    end
    object qryProductPeriodsDELIVERY_STORE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_STORE_CODE'
    end
    object qryProductPeriodsDELIVERY_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DELIVERY_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryProductPeriodsDELIVERY_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'DELIVERY_ACQUIRE_SINGLE_PRICE'
    end
    object qryProductPeriodsDELIVERY_ACQUIRE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_ACQUIRE_CURRENCY_CODE'
    end
    object qryProductPeriodsDELIVERY_ACQUIRE_CURR_FIXING: TAbmesFloatField
      FieldName = 'DELIVERY_ACQUIRE_CURR_FIXING'
      ProviderFlags = []
    end
    object qryProductPeriodsDELIVERY_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'DELIVERY_LEASE_SINGLE_PRICE'
    end
    object qryProductPeriodsDELIVERY_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_LEASE_CURRENCY_CODE'
    end
    object qryProductPeriodsDELIVERY_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_LEASE_DATE_UNIT_CODE'
    end
    object qryProductPeriodsIS_PSD_PRICE_FROM_DELIVERY: TAbmesFloatField
      FieldName = 'IS_PSD_PRICE_FROM_DELIVERY'
    end
    object qryProductPeriodsSALE_RESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'SALE_RESOLVE_DURATION_DAYS'
    end
    object qryProductPeriodsDELIVERY_RESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'DELIVERY_RESOLVE_DURATION_DAYS'
    end
    object qryProductPeriodsPREV_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'PREV_INVESTMENT_LEVEL_1_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsPREV_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'PREV_INVESTMENT_LEVEL_2_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsPREV_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'PREV_INVESTMENT_LEVEL_3_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsPREV_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'PREV_INVESTMENT_LEVEL_4_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsPREV_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'PREV_INVESTMENT_LEVEL_5_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsPREV_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'PREV_INVESTMENT_LEVEL_6_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsCMMN_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_1_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsCMMN_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_2_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsCMMN_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_3_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsCMMN_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_4_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsCMMN_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_5_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsCMMN_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_6_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'ACC_INVESTMENT_LEVEL_1_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'ACC_INVESTMENT_LEVEL_2_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'ACC_INVESTMENT_LEVEL_3_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'ACC_INVESTMENT_LEVEL_4_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'ACC_INVESTMENT_LEVEL_5_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'ACC_INVESTMENT_LEVEL_6_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_SALE_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_SALE_ACQUIRE_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_SALE_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_SALE_LEASE_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_DLVRY_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_DLVRY_ACQUIRE_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_DLVRY_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_DLVRY_LEASE_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_BALANCE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_BALANCE_QUANTITY'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_MIN_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_MIN_ORDER_QUANTITY'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_MAX_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_MAX_ORDER_QUANTITY'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_ACQUIRE_BATCH_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_ACQUIRE_BATCH_QUANTITY'
      ProviderFlags = []
    end
    object qryProductPeriodsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryProductPeriodsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryProductPeriodsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryProductPeriodsCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryProductPeriodsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryProductPeriodsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryProductPeriodsIS_PAST: TAbmesFloatField
      FieldName = 'IS_PAST'
      ProviderFlags = []
    end
    object qryProductPeriodsIS_PRESENT: TAbmesFloatField
      FieldName = 'IS_PRESENT'
      ProviderFlags = []
    end
    object qryProductPeriodsIS_FUTURE: TAbmesFloatField
      FieldName = 'IS_FUTURE'
      ProviderFlags = []
    end
    object qryProductPeriodsOVERRIDE_PRECISION_LEVEL: TAbmesFloatField
      FieldName = 'OVERRIDE_PRECISION_LEVEL'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_BALANCE_QUANTITY: TAbmesFloatField
      FieldName = 'OVERRIDE_BALANCE_QUANTITY'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_MIN_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'OVERRIDE_MIN_ORDER_QUANTITY'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_MAX_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'OVERRIDE_MAX_ORDER_QUANTITY'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_ACQUIRE_BATCH_QTY: TAbmesFloatField
      FieldName = 'OVERRIDE_ACQUIRE_BATCH_QTY'
    end
    object qryProductPeriodsOVERRIDE_INV_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'OVERRIDE_INV_LEVEL_1_VALUE'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_INV_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'OVERRIDE_INV_LEVEL_2_VALUE'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_INV_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'OVERRIDE_INV_LEVEL_3_VALUE'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_INV_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'OVERRIDE_INV_LEVEL_4_VALUE'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_INV_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'OVERRIDE_INV_LEVEL_5_VALUE'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_INV_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'OVERRIDE_INV_LEVEL_6_VALUE'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_S_STORE: TAbmesFloatField
      FieldName = 'OVERRIDE_S_STORE'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_S_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'OVERRIDE_S_ACQUIRE_PRICE'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_S_LEASE_PRICE: TAbmesFloatField
      FieldName = 'OVERRIDE_S_LEASE_PRICE'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_S_RESOLVE_DUR_DAYS: TAbmesFloatField
      FieldName = 'OVERRIDE_S_RESOLVE_DUR_DAYS'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_D_STORE: TAbmesFloatField
      FieldName = 'OVERRIDE_D_STORE'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_D_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'OVERRIDE_D_ACQUIRE_PRICE'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_D_LEASE_PRICE: TAbmesFloatField
      FieldName = 'OVERRIDE_D_LEASE_PRICE'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_D_RESOLVE_DUR_DAYS: TAbmesFloatField
      FieldName = 'OVERRIDE_D_RESOLVE_DUR_DAYS'
      Required = True
    end
    object qryProductPeriodsOVERRIDE_IS_PSD_PRICE_FROM_DLV: TAbmesFloatField
      FieldName = 'OVERRIDE_IS_PSD_PRICE_FROM_DLV'
      Required = True
    end
    object qryProductPeriodsINHRT_PRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'INHRT_PRECISION_LEVEL_CODE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_BALANCE_QUANTITY: TAbmesFloatField
      FieldName = 'INHRT_BALANCE_QUANTITY'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_MIN_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'INHRT_MIN_ORDER_QUANTITY'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_MAX_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'INHRT_MAX_ORDER_QUANTITY'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_ACQUIRE_BATCH_QUANTITY: TAbmesFloatField
      FieldName = 'INHRT_ACQUIRE_BATCH_QUANTITY'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'INHRT_INVESTMENT_LEVEL_1_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'INHRT_INVESTMENT_LEVEL_2_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'INHRT_INVESTMENT_LEVEL_3_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'INHRT_INVESTMENT_LEVEL_4_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'INHRT_INVESTMENT_LEVEL_5_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'INHRT_INVESTMENT_LEVEL_6_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_S_STORE_CODE: TAbmesFloatField
      FieldName = 'INHRT_S_STORE_CODE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_S_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INHRT_S_ACQUIRE_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_S_ACQUIRE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_S_ACQUIRE_CURRENCY_CODE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_S_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INHRT_S_LEASE_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_S_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_S_LEASE_CURRENCY_CODE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_S_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'INHRT_S_LEASE_DATE_UNIT_CODE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_S_RESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'INHRT_S_RESOLVE_DURATION_DAYS'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_D_STORE_CODE: TAbmesFloatField
      FieldName = 'INHRT_D_STORE_CODE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_D_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INHRT_D_ACQUIRE_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_D_ACQUIRE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_D_ACQUIRE_CURRENCY_CODE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_D_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INHRT_D_LEASE_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_D_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_D_LEASE_CURRENCY_CODE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_D_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'INHRT_D_LEASE_DATE_UNIT_CODE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_D_RESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'INHRT_D_RESOLVE_DURATION_DAYS'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_IS_PSD_PRICE_FROM_DLVRY: TAbmesFloatField
      FieldName = 'INHRT_IS_PSD_PRICE_FROM_DLVRY'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INHRT_INV_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'ACC_INHRT_INV_LEVEL_1_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INHRT_INV_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'ACC_INHRT_INV_LEVEL_2_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INHRT_INV_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'ACC_INHRT_INV_LEVEL_3_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INHRT_INV_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'ACC_INHRT_INV_LEVEL_4_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INHRT_INV_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'ACC_INHRT_INV_LEVEL_5_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INHRT_INV_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'ACC_INHRT_INV_LEVEL_6_VALUE'
      ProviderFlags = []
    end
    object qryProductPeriodsINHRT_S_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'INHRT_S_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryProductPeriodsINHRT_D_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'INHRT_D_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryProductPeriodsACC_INHRT_S_ACQ_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_INHRT_S_ACQ_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INHRT_S_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_INHRT_S_LEASE_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INHRT_D_ACQ_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_INHRT_D_ACQ_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INHRT_D_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_INHRT_D_LEASE_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INHRT_BALANCE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_INHRT_BALANCE_QUANTITY'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INHRT_MIN_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_INHRT_MIN_ORDER_QUANTITY'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INHRT_MAX_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_INHRT_MAX_ORDER_QUANTITY'
      ProviderFlags = []
    end
    object qryProductPeriodsACC_INHRT_ACQUIRE_BATCH_QTY: TAbmesFloatField
      FieldName = 'ACC_INHRT_ACQUIRE_BATCH_QTY'
      ProviderFlags = []
    end
  end
  object qryNewProductPeriodCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_PRODUCT_PERIODS.NextVal as NEW_PRODUCT_PERIOD_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 680
    Top = 344
    object qryNewProductPeriodCodeNEW_PRODUCT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'NEW_PRODUCT_PERIOD_CODE'
    end
  end
  object qryProductPeriodsHeader: TAbmesSQLQuery
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
      '  p.PARENT_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      '  p.ACCOUNT_MEASURE_COEF,'
      '  p.TECH_MEASURE_COEF,'
      ''
      '  p.IS_USED_BY_SALES,'
      '  ( select'
      '      pr.PRIORITY_NO'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = p.USED_BY_SALES_PR_CODE)'
      '  ) as USED_BY_SALES_PR_NO,'
      '  p.IS_PROVIDED_BY_DELIVERIES,'
      '  ( select'
      '      pr.PRIORITY_NO'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = p.PROV_BY_DELIVERIES_PR_CODE)'
      '  ) as PROV_BY_DELIVERIES_PR_NO,'
      ''
      '  ( select'
      '      dp.COMMON_PRODUCT_CODE'
      '    from'
      '      DEFINITE_PRODUCTS dp'
      '    where'
      '      (dp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as COMMON_PRODUCT_CODE,'
      '  p.PRODUCT_CLASS_CODE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      CONCRETE_PRODUCTS cp'
      '    where'
      '      (cp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as IS_CONCRETE_PRODUCT'
      ''
      'from'
      '  PRODUCTS p'
      ''
      'where'
      '  (p.PRODUCT_CODE = :PRODUCT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    AfterProviderStartTransaction = qryProductPeriodsHeaderAfterProviderStartTransaction
    BeforeProviderEndTransaction = qryProductPeriodsHeaderBeforeProviderEndTransaction
    AfterProviderEndTransaction = qryProductPeriodsHeaderAfterProviderEndTransaction
    Left = 680
    Top = 56
    object qryProductPeriodsHeaderPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryProductPeriodsHeaderPARENT_CODE: TAbmesFloatField
      FieldName = 'PARENT_CODE'
    end
    object qryProductPeriodsHeaderMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryProductPeriodsHeaderACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryProductPeriodsHeaderACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object qryProductPeriodsHeaderTECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'TECH_MEASURE_COEF'
    end
    object qryProductPeriodsHeaderIS_USED_BY_SALES: TAbmesFloatField
      FieldName = 'IS_USED_BY_SALES'
    end
    object qryProductPeriodsHeaderUSED_BY_SALES_PR_NO: TAbmesFloatField
      FieldName = 'USED_BY_SALES_PR_NO'
    end
    object qryProductPeriodsHeaderIS_PROVIDED_BY_DELIVERIES: TAbmesFloatField
      FieldName = 'IS_PROVIDED_BY_DELIVERIES'
    end
    object qryProductPeriodsHeaderPROV_BY_DELIVERIES_PR_NO: TAbmesFloatField
      FieldName = 'PROV_BY_DELIVERIES_PR_NO'
    end
    object qryProductPeriodsHeaderCOMMON_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'COMMON_PRODUCT_CODE'
    end
    object qryProductPeriodsHeaderPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object qryProductPeriodsHeaderIS_CONCRETE_PRODUCT: TAbmesFloatField
      FieldName = 'IS_CONCRETE_PRODUCT'
    end
  end
  object dsProductPeriodsHeader: TDataSource
    DataSet = qryProductPeriodsHeader
    Left = 680
    Top = 104
  end
  object qryUpdCommonProduct: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  DEFINITE_PRODUCTS_FOR_EDIT dp'
      'set'
      '  dp.COMMON_PRODUCT_CODE = :COMMON_PRODUCT_CODE'
      'where'
      '  (dp.PRODUCT_CODE = :PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 328
    Top = 504
  end
  object qrySetSkipPeriodChecksProductCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  StateUtils.SetSkipPeriodChecksProductCode(:PRODUCT_CODE);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 680
    Top = 392
  end
  object qryCheckProductPeriods: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  ProductUtils.CheckProductPeriods(:PRODUCT_CODE);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 680
    Top = 440
  end
  object dsProductPeriods: TDataSource
    DataSet = qryProductPeriods
    Left = 680
    Top = 200
  end
  object qryProdPerSpecModelVariants: TAbmesSQLQuery
    DataSource = dsProductPeriods
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_PERIOD_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  ppsmv.PRODUCT_CODE,'
      '  ppsmv.PRODUCT_PERIOD_CODE,'
      '  ppsmv.SPEC_MODEL_VARIANT_NO,'
      '  ppsmv.IS_EST_VARIANT,'
      ''
      
        '  (To_Char(smv.SPEC_MODEL_VARIANT_NO, '#39'FM9G999G999G999'#39') || '#39'. '#39 +
        ' ||'
      
        '   dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER || '#39' ' +
        '['#39' ||'
      '   Replace('
      
        '     To_Char(smv.MIN_TECH_QUANTITY, '#39'FM9G999G999G990D999'#39') || '#39' ' +
        '- '#39','
      '     To_Char(0, '#39'FMD'#39') || '#39' '#39', '#39' '#39') ||'
      '   Replace('
      
        '     To_Char(smv.MAX_TECH_QUANTITY, '#39'FM9G999G999G990D999'#39') || '#39']' +
        #39','
      '     To_Char(0, '#39'FMD'#39') || '#39']'#39', '#39']'#39') || '#39' - '#39' ||'
      '   d.NAME'
      '  ) as SPEC_MODEL_VARIANT_IDENTIFIER,'
      ''
      '  smv.MAIN_DEPT_CODE,'
      '  smv.MIN_TECH_QUANTITY,'
      '  smv.MAX_TECH_QUANTITY,'
      ''
      '  ppsmv.SPEC_MODEL_VARIANT_NO as SMV_NO'
      ''
      'from'
      '  PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '  SPEC_MODEL_VARIANTS smv,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      ''
      'where'
      '  (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE(+)) and'
      
        '  (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIANT_NO(+)) a' +
        'nd'
      '  (smv.MAIN_DEPT_CODE = d.DEPT_CODE(+)) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      ''
      '  (ppsmv.PRODUCT_CODE = :PRODUCT_CODE) and'
      '  (ppsmv.PRODUCT_PERIOD_CODE = :PRODUCT_PERIOD_CODE)'
      ''
      'order by'
      '  ppsmv.PRODUCT_CODE,'
      '  ppsmv.PRODUCT_PERIOD_CODE,'
      '  ppsmv.SPEC_MODEL_VARIANT_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 680
    Top = 248
    object qryProdPerSpecModelVariantsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProdPerSpecModelVariantsPRODUCT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProdPerSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProdPerSpecModelVariantsIS_EST_VARIANT: TAbmesFloatField
      FieldName = 'IS_EST_VARIANT'
    end
    object qryProdPerSpecModelVariantsSPEC_MODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SPEC_MODEL_VARIANT_IDENTIFIER'
      ProviderFlags = []
      Size = 207
    end
    object qryProdPerSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
      ProviderFlags = []
    end
    object qryProdPerSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qryProdPerSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qryProdPerSpecModelVariantsSMV_NO: TAbmesFloatField
      FieldName = 'SMV_NO'
      ProviderFlags = []
    end
  end
  object qryClearIsEstVariant: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_PERIOD_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  PROD_PER_SPEC_MODEL_VARIANTS ppsmv'
      ''
      'set'
      '  ppsmv.IS_EST_VARIANT = 0'
      ''
      'where'
      '  (ppsmv.PRODUCT_CODE = :PRODUCT_CODE) and'
      '  (ppsmv.PRODUCT_PERIOD_CODE = :PRODUCT_PERIOD_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 680
    Top = 488
  end
  object qryNotProdPerSpecModelVariants: TAbmesSQLQuery
    DataSource = dsProductPeriods
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_PERIOD_CODE'
        ParamType = ptInput
        Size = 8
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
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_PERIOD_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_Number(:PRODUCT_CODE) as PRODUCT_CODE,'
      '  To_Number(:PRODUCT_PERIOD_CODE) as PRODUCT_PERIOD_CODE,'
      ''
      '  smv.SPEC_MODEL_VARIANT_NO,'
      ''
      
        '  (To_Char(smv.SPEC_MODEL_VARIANT_NO, '#39'FM9G999G999G999'#39') || '#39'. '#39 +
        ' ||'
      
        '   dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER || '#39' ' +
        '['#39' ||'
      '   Replace('
      
        '     To_Char(smv.MIN_TECH_QUANTITY, '#39'FM9G999G999G990D999'#39') || '#39' ' +
        '- '#39','
      '     To_Char(0, '#39'FMD'#39') || '#39' '#39', '#39' '#39') ||'
      '   Replace('
      
        '     To_Char(smv.MAX_TECH_QUANTITY, '#39'FM9G999G999G990D999'#39') || '#39']' +
        #39','
      '     To_Char(0, '#39'FMD'#39') || '#39']'#39', '#39']'#39') || '#39' - '#39' ||'
      '   d.NAME'
      '  ) as SPEC_MODEL_VARIANT_IDENTIFIER,'
      ''
      '  smv.MAIN_DEPT_CODE,'
      '  smv.MIN_TECH_QUANTITY,'
      '  smv.MAX_TECH_QUANTITY,'
      ''
      '  smv.SPEC_MODEL_VARIANT_NO as SMV_NO'
      ''
      'from'
      '  SPEC_MODEL_VARIANTS smv,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      ''
      'where'
      '  (smv.MAIN_DEPT_CODE = d.DEPT_CODE(+)) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      ''
      '  (smv.SPEC_PRODUCT_CODE = :PRODUCT_CODE) and'
      ''
      '  not exists('
      '    select'
      '      1'
      '    from'
      '      PROD_PER_SPEC_MODEL_VARIANTS ppsmv'
      '    where'
      '      (ppsmv.PRODUCT_CODE = :PRODUCT_CODE) and'
      '      (ppsmv.PRODUCT_PERIOD_CODE = :PRODUCT_PERIOD_CODE) and'
      '      (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIANT_NO)'
      '  )'
      ''
      'order by'
      '  smv.SPEC_MODEL_VARIANT_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 680
    Top = 296
    object qryNotProdPerSpecModelVariantsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNotProdPerSpecModelVariantsPRODUCT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNotProdPerSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNotProdPerSpecModelVariantsSPEC_MODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SPEC_MODEL_VARIANT_IDENTIFIER'
      Size = 207
    end
    object qryNotProdPerSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object qryNotProdPerSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_TECH_QUANTITY'
    end
    object qryNotProdPerSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_TECH_QUANTITY'
    end
    object qryNotProdPerSpecModelVariantsSMV_NO: TAbmesFloatField
      FieldName = 'SMV_NO'
      ProviderFlags = []
    end
  end
  object qrySpecModelVariants: TAbmesSQLQuery
    DataSource = dsProductPeriods
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  smv.SPEC_MODEL_VARIANT_NO,'
      ''
      
        '  (To_Char(smv.SPEC_MODEL_VARIANT_NO, '#39'FM9G999G999G999'#39') || '#39'. '#39 +
        ' ||'
      
        '   dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER || '#39' ' +
        '['#39' ||'
      '   Replace('
      
        '     To_Char(smv.MIN_TECH_QUANTITY, '#39'FM9G999G999G990D999'#39') || '#39' ' +
        '- '#39','
      '     To_Char(0, '#39'FMD'#39') || '#39' '#39', '#39' '#39') ||'
      '   Replace('
      
        '     To_Char(smv.MAX_TECH_QUANTITY, '#39'FM9G999G999G990D999'#39') || '#39']' +
        #39','
      '     To_Char(0, '#39'FMD'#39') || '#39']'#39', '#39']'#39') || '#39' - '#39' ||'
      '   d.NAME'
      '  ) as SPEC_MODEL_VARIANT_IDENTIFIER,'
      ''
      '  smv.MAIN_DEPT_CODE,'
      '  smv.MIN_TECH_QUANTITY,'
      '  smv.MAX_TECH_QUANTITY'
      ''
      'from'
      '  SPEC_MODEL_VARIANTS smv,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      ''
      'where'
      '  (smv.MAIN_DEPT_CODE = d.DEPT_CODE(+)) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      ''
      '  (smv.SPEC_PRODUCT_CODE = :PRODUCT_CODE) '
      ''
      'order by'
      '  smv.SPEC_MODEL_VARIANT_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 456
    object qrySpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qrySpecModelVariantsSPEC_MODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SPEC_MODEL_VARIANT_IDENTIFIER'
      Size = 207
    end
    object qrySpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object qrySpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_TECH_QUANTITY'
    end
    object qrySpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_TECH_QUANTITY'
    end
  end
  object prvSpecModelVariants: TDataSetProvider
    DataSet = qrySpecModelVariants
    Left = 552
    Top = 408
  end
  object qryProductSets: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  ps.PRODUCT_SET_CODE,'
      '  ps.PRODUCT_SET_NO,'
      '  ps.PRODUCT_SET_NAME,'
      '  ps.BEGIN_DATE,'
      '  ps.END_DATE'
      'from'
      '  PRODUCT_SETS ps'
      'order by'
      '  ps.PRODUCT_SET_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PRODUCT_SETS'
    Left = 792
    Top = 56
    object qryProductSetsPRODUCT_SET_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_SET_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProductSetsPRODUCT_SET_NO: TAbmesFloatField
      FieldName = 'PRODUCT_SET_NO'
      Required = True
    end
    object qryProductSetsPRODUCT_SET_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_SET_NAME'
      Required = True
      Size = 50
    end
    object qryProductSetsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      Required = True
    end
    object qryProductSetsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      Required = True
    end
  end
  object prvProductSets: TDataSetProvider
    DataSet = qryProductSets
    Left = 792
    Top = 8
  end
  object qryNewProductSetCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_PRODUCT_SETS.NextVal as NEW_PRODUCT_SET_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 792
    Top = 112
    object qryNewProductSetCodeNEW_PRODUCT_SET_CODE: TAbmesFloatField
      FieldName = 'NEW_PRODUCT_SET_CODE'
    end
  end
  object qryInsertProductSetChosenProductParam: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_SET_CODE'
        ParamType = ptInput
      end
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
      'insert into PRODUCT_SET_CHOSEN_PROD_PARAMS'
      '('
      '  PRODUCT_SET_CODE,'
      '  PRODUCT_CODE,'
      '  PRODUCT_PARAM_CODE'
      ')'
      'values'
      '('
      '  :PRODUCT_SET_CODE,'
      '  :PRODUCT_CODE,'
      '  :PRODUCT_PARAM_CODE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 832
    Top = 232
  end
  object qryInsertProductSetChosenProductParamValue: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_SET_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_PARAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_PARAM_VALUE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_FLOAT_MIN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_FLOAT_MAX'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'VALUE_STRING'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into PRODUCT_SET_CHOSEN_PARAM_VALS'
      '('
      '  PRODUCT_SET_CODE,'
      '  PRODUCT_CODE,'
      '  PRODUCT_PARAM_CODE,'
      '  PRODUCT_PARAM_VALUE_CODE,'
      '  VALUE_NOM_CODE,'
      '  VALUE_NOM_ITEM_CODE,'
      '  VALUE_FLOAT_MIN,'
      '  VALUE_FLOAT_MAX,'
      '  VALUE_STRING'
      ')'
      'values'
      '('
      '  :PRODUCT_SET_CODE,'
      '  :PRODUCT_CODE,'
      '  :PRODUCT_PARAM_CODE,'
      '  :PRODUCT_PARAM_VALUE_CODE,'
      '  :VALUE_NOM_CODE,'
      '  :VALUE_NOM_ITEM_CODE,'
      '  :VALUE_FLOAT_MIN,'
      '  :VALUE_FLOAT_MAX,'
      '  :VALUE_STRING'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 832
    Top = 184
  end
  object qryInsertProductSetChosenProduct: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_SET_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into PRODUCT_SET_CHOSEN_PRODUCTS'
      '('
      '  PRODUCT_SET_CODE,'
      '  PRODUCT_CODE'
      ')'
      'values'
      '('
      '  :PRODUCT_SET_CODE,'
      '  :PRODUCT_CODE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 832
    Top = 280
  end
  object qryDeleteProductSetChosenProducts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_SET_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  PRODUCT_SET_CHOSEN_PRODUCTS pscp'
      'where'
      '  (pscp.PRODUCT_SET_CODE = :PRODUCT_SET_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 832
    Top = 488
  end
  object qryProductSet: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PRODUCT_SET_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ps.PRODUCT_SET_CODE,'
      '  ps.PRODUCT_SET_NO,'
      '  ps.PRODUCT_SET_NAME,'
      '  ps.BEGIN_DATE,'
      '  ps.END_DATE,'
      '  ( select'
      '      db.DUMMY_BLOB_DATA'
      '    from'
      '      DUMMY_BLOB db'
      '  ) as CHOSEN_PRODUCTS'
      'from'
      '  PRODUCT_SETS ps'
      'where'
      '  (ps.PRODUCT_SET_CODE = :PRODUCT_SET_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PRODUCT_SETS'
    Left = 888
    Top = 56
    object qryProductSetPRODUCT_SET_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_SET_CODE'
      Required = True
    end
    object qryProductSetPRODUCT_SET_NO: TAbmesFloatField
      FieldName = 'PRODUCT_SET_NO'
      Required = True
    end
    object qryProductSetPRODUCT_SET_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_SET_NAME'
      Required = True
      Size = 50
    end
    object qryProductSetBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      Required = True
    end
    object qryProductSetEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      Required = True
    end
    object qryProductSetCHOSEN_PRODUCTS: TBlobField
      FieldName = 'CHOSEN_PRODUCTS'
      ProviderFlags = []
      BlobType = ftOraBlob
      Size = 1
    end
  end
  object prvProductSet: TDataSetProvider
    DataSet = qryProductSet
    OnGetData = prvProductSetGetData
    AfterUpdateRecord = prvProductSetAfterUpdateRecord
    Left = 888
    Top = 8
  end
  object qryProductSetChosenProducts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_SET_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pscp.PRODUCT_CODE'
      'from'
      '  PRODUCT_SET_CHOSEN_PRODUCTS pscp'
      'where'
      '  (pscp.PRODUCT_SET_CODE = :PRODUCT_SET_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 832
    Top = 432
    object qryProductSetChosenProductsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      Required = True
    end
  end
  object qryProductSetChosenProductParams: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_SET_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pscpp.PRODUCT_PARAM_CODE'
      'from'
      '  PRODUCT_SET_CHOSEN_PROD_PARAMS pscpp'
      'where'
      '  (pscpp.PRODUCT_SET_CODE = :PRODUCT_SET_CODE) and'
      '  (pscpp.PRODUCT_CODE = :PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 832
    Top = 384
    object qryProductSetChosenProductParamsPRODUCT_PARAM_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PARAM_CODE'
      Required = True
    end
  end
  object qryProductSetChosenProductParamValues: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_SET_CODE'
        ParamType = ptInput
      end
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
      '  pscpv.PRODUCT_PARAM_VALUE_CODE,'
      '  pscpv.VALUE_NOM_CODE,'
      '  pscpv.VALUE_NOM_ITEM_CODE,'
      '  pscpv.VALUE_FLOAT_MIN,'
      '  pscpv.VALUE_FLOAT_MAX,'
      '  pscpv.VALUE_STRING'
      'from'
      '  PRODUCT_SET_CHOSEN_PARAM_VALS pscpv'
      'where'
      '  (pscpv.PRODUCT_SET_CODE = :PRODUCT_SET_CODE) and'
      '  (pscpv.PRODUCT_CODE = :PRODUCT_CODE) and'
      '  (pscpv.PRODUCT_PARAM_CODE = :PRODUCT_PARAM_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 832
    Top = 336
    object qryProductSetChosenProductParamValuesPRODUCT_PARAM_VALUE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PARAM_VALUE_CODE'
      Required = True
    end
    object qryProductSetChosenProductParamValuesVALUE_NOM_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_CODE'
    end
    object qryProductSetChosenProductParamValuesVALUE_NOM_ITEM_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_CODE'
    end
    object qryProductSetChosenProductParamValuesVALUE_FLOAT_MIN: TAbmesFloatField
      FieldName = 'VALUE_FLOAT_MIN'
    end
    object qryProductSetChosenProductParamValuesVALUE_FLOAT_MAX: TAbmesFloatField
      FieldName = 'VALUE_FLOAT_MAX'
    end
    object qryProductSetChosenProductParamValuesVALUE_STRING: TAbmesWideStringField
      FieldName = 'VALUE_STRING'
      Size = 150
    end
  end
  object qryUpdateProductSetProductsForProductSet: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_SET_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  ProductUtils.UpdProdSetProductsForProdSet(:PRODUCT_SET_CODE);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 936
    Top = 88
  end
  object qryNewProductNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARENT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  (Coalesce(Max(p.CUSTOM_CODE), 0) + 1) as NEW_PRODUCT_NO'
      ''
      'from'
      '  PRODUCTS p'
      ''
      'where'
      '  (p.PARENT_CODE = :PARENT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 536
    object qryNewProductNoNEW_PRODUCT_NO: TAbmesFloatField
      FieldName = 'NEW_PRODUCT_NO'
    end
  end
  object qryUpdateProductSetProductsForProduct: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  ProductUtils.UpdProdSetProductsForProduct(:PRODUCT_CODE);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 936
    Top = 144
  end
  object prvProductDeptOptions: TDataSetProvider
    DataSet = qryProductDeptOptions
    OnUpdateError = prvProductDeptOptionsUpdateError
    BeforeUpdateRecord = prvProductDeptOptionsBeforeUpdateRecord
    BeforeApplyUpdates = prvProductDeptOptionsBeforeApplyUpdates
    Left = 160
    Top = 248
  end
  object qryProductDeptOptions: TAbmesSQLQuery
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
      '  /*+ ORDERED INDEX(pdo) */'
      '  pdo.PRODUCT_CODE,'
      '  pdo.DEPT_CODE,'
      '  pdo.IS_PSD_PRICE_FROM_DELIVERY,'
      
        '  Nvl2(pdo.IS_PSD_PRICE_FROM_DELIVERY, 1, 0) as OVERRIDE_IS_PSD_' +
        'PRICE_FROM_DLV,'
      ''
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      ''
      '  d.NAME as DEPT_NAME,'
      ''
      
        '  Decode(pr.ANCESTOR_PRODUCT_CODE, :PRODUCT_CODE, 0, 1) as IS_IN' +
        'HERITED,'
      '  ('
      '    select'
      '      Count(pr2.ANCESTOR_PRODUCT_CODE)'
      '    from'
      '      PRODUCT_RELATIONS pr2'
      '    where'
      '      (pr2.DESCENDANT_PRODUCT_CODE = pdo.PRODUCT_CODE)'
      '  ) as PRODUCT_LEVEL'
      ''
      'from'
      '  PRODUCT_RELATIONS pr,'
      '  PRODUCT_DEPT_OPTIONS pdo,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      ''
      'where'
      '  (pr.ANCESTOR_PRODUCT_CODE = pdo.PRODUCT_CODE) and'
      '  (pdo.DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      ''
      '  (pr.DESCENDANT_PRODUCT_CODE = :PRODUCT_CODE)'
      ''
      'order by'
      '  PRODUCT_LEVEL,'
      '  dt.DEPT_TYPE_ABBREV,'
      '  d.CUSTOM_CODE,'
      '  d.SUFFIX_LETTER'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PRODUCT_DEPT_OPTIONS'
    Left = 160
    Top = 296
    object qryProductDeptOptionsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryProductDeptOptionsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryProductDeptOptionsIS_PSD_PRICE_FROM_DELIVERY: TAbmesFloatField
      FieldName = 'IS_PSD_PRICE_FROM_DELIVERY'
    end
    object qryProductDeptOptionsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryProductDeptOptionsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qryProductDeptOptionsIS_INHERITED: TAbmesFloatField
      FieldName = 'IS_INHERITED'
    end
    object qryProductDeptOptionsPRODUCT_LEVEL: TAbmesFloatField
      FieldName = 'PRODUCT_LEVEL'
    end
    object qryProductDeptOptionsOVERRIDE_IS_PSD_PRICE_FROM_DLV: TAbmesFloatField
      FieldName = 'OVERRIDE_IS_PSD_PRICE_FROM_DLV'
      ProviderFlags = []
    end
  end
  object qryInsProductDeptOptions: TAbmesSQLQuery
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
      end
      item
        DataType = ftFloat
        Name = 'IS_PSD_PRICE_FROM_DELIVERY'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into PRODUCT_DEPT_OPTIONS'
      '('
      '  PRODUCT_CODE,'
      '  DEPT_CODE,'
      '  IS_PSD_PRICE_FROM_DELIVERY'
      ')'
      'values'
      '('
      '  :PRODUCT_CODE,'
      '  :DEPT_CODE,'
      '  :IS_PSD_PRICE_FROM_DELIVERY'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 352
  end
  object qryUpdProductDeptOptions: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PSD_PRICE_FROM_DELIVERY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  PRODUCT_DEPT_OPTIONS pdo'
      ''
      'set'
      '  pdo.DEPT_CODE = :DEPT_CODE,'
      '  pdo.IS_PSD_PRICE_FROM_DELIVERY = :IS_PSD_PRICE_FROM_DELIVERY'
      ''
      'where'
      '  (pdo.PRODUCT_CODE = :OLD_PRODUCT_CODE) and'
      '  (pdo.DEPT_CODE = :OLD_DEPT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 400
  end
  object qryDelProductDeptOptions: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OLD_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  PRODUCT_DEPT_OPTIONS pdo'
      'where'
      '  (pdo.PRODUCT_CODE = :OLD_PRODUCT_CODE) and'
      '  (pdo.DEPT_CODE = :OLD_DEPT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 448
  end
end
