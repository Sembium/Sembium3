inherited dmProductionProductsTree: TdmProductionProductsTree
  Height = 435
  Width = 751
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
      '      PRODUCTS p2'
      '    where'
      '      (p.PRODUCT_CODE = p2.PARENT_CODE) and'
      '      (p2.IS_GROUP = 1)'
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
      '  ) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      PRODUCT_RELATIONS pr,'
      '      PRODUCTS px'
      '    where'
      '      (pr.ANCESTOR_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (pr.DESCENDANT_PRODUCT_CODE = px.PRODUCT_CODE) and'
      '      (px.IS_PRODUCTION_PRODUCT = 1)'
      '  )'
      ''
      'order by'
      '  NODE_NO,'
      '  NODE_NAME,'
      '  NODE_ID')
  end
  inherited qryTreeToNode: TAbmesSQLQuery
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
      '      GROUP_PRODUCTS gp'
      '    where'
      '      (gp.PRODUCT_CODE = p.PRODUCT_CODE)'
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
      '      PRODUCT_RELATIONS pr,'
      '      PRODUCTS px'
      '    where'
      '      (pr.ANCESTOR_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (pr.DESCENDANT_PRODUCT_CODE = px.PRODUCT_CODE) and'
      '      (px.IS_PRODUCTION_PRODUCT = 1)'
      '  )'
      ''
      'order by'
      '  NODE_REAL_LEVEL,'
      '  NODE_NO,'
      '  NODE_NAME')
  end
  inherited qryNodeChildren: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE as NODE_ID,'
      '  p.PARENT_CODE as PARENT_NODE_ID,'
      '  p.NAME as NODE_NAME,'
      '  Decode(p.IS_PRODUCTION_PRODUCT, 1, 3,'
      '    Coalesce('
      '      ('
      '        select'
      '          2'
      '        from'
      '          DEFINITE_PRODUCTS dp'
      '        where'
      '          (dp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '      ),'
      '      1'
      '    )'
      '  ) as NODE_TYPE,'
      '  p.CUSTOM_CODE as NODE_NO,'
      '  p.IS_INACTIVE,'
      '  sp.SPEC_PRODUCT_CODE,'
      '  p.IS_PRODUCTION_PRODUCT,'
      ''
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION,'
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
      '  SPECS sp'
      ''
      'where'
      '  (p.PRODUCT_CODE = sp.SPEC_PRODUCT_CODE(+)) and'
      ''
      '  ('
      '    (p.IS_GROUP = 0) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        PRODUCT_RELATIONS pr,'
      '        PRODUCTS px'
      '      where'
      '        (pr.ANCESTOR_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '        (pr.DESCENDANT_PRODUCT_CODE = px.PRODUCT_CODE) and'
      '        (px.IS_PRODUCTION_PRODUCT = 1)'
      '    )'
      '  ) and'
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
    object qryNodeChildrenIS_PRODUCTION_PRODUCT: TAbmesFloatField [8]
      FieldName = 'IS_PRODUCTION_PRODUCT'
    end
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
      '  0 as IS_PRODUCTION_PRODUCT,'
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
    object qryPrintTreeIS_PRODUCTION_PRODUCT: TAbmesFloatField
      FieldName = 'IS_PRODUCTION_PRODUCT'
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
      '  p.IS_PRODUCTION_PRODUCT,'
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
      '  (p.IS_INACTIVE <= :SHOW_INACTIVE) and'
      ''
      '  ( (p.IS_GROUP = 0) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        PRODUCT_RELATIONS pr,'
      '        PRODUCTS px'
      '      where'
      '        (pr.ANCESTOR_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '        (pr.DESCENDANT_PRODUCT_CODE = px.PRODUCT_CODE) and'
      '        (px.IS_PRODUCTION_PRODUCT = 1)'
      '    )'
      '  )'
      ''
      'order siblings by'
      '  %ORDER_BY_FIELDS,'
      '  p.CUSTOM_CODE,'
      '  p.NAME'
      ''
      '')
    object qryPrintTreeChildrenIS_PRODUCTION_PRODUCT: TAbmesFloatField
      FieldName = 'IS_PRODUCTION_PRODUCT'
    end
  end
  inherited cdsPrintTreeChildren: TAbmesClientDataSet
    object cdsPrintTreeChildrenIS_PRODUCTION_PRODUCT: TAbmesFloatField [7]
      FieldName = 'IS_PRODUCTION_PRODUCT'
    end
  end
  inherited qryGetCompanyProductName: TAbmesSQLQuery
    Left = 80
    Top = 247
  end
  inherited qryProductParams: TAbmesSQLQuery
    Left = 248
    Top = 192
  end
  inherited prvProductParams: TDataSetProvider
    Left = 248
    Top = 144
  end
  inherited qryGetProductDefaultStore: TAbmesSQLQuery
    Left = 64
    Top = 304
  end
  inherited qryCheckProductRelation: TAbmesSQLQuery
    Left = 336
    Top = 160
  end
  inherited qryGetProductParam: TAbmesSQLQuery
    Left = 456
    Top = 280
  end
  object prvProductionProduct: TDataSetProvider
    DataSet = qryProductionProduct
    Left = 584
    Top = 128
  end
  object qryProductionProduct: TAbmesSQLQuery
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
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.MEASURE_CODE,'
      '  m.MEASURE_ABBREV,'
      '  p.TECH_MEASURE_CODE,'
      '  m.MEASURE_ABBREV as TECH_MEASURE_ABBREV,'
      '  p.IS_PRODUCTION_PRODUCT,'
      '  p.SELF_EXISTENT_STATUS_CODE,'
      '  p.IS_GROUP'
      ''
      'from'
      '  PRODUCTS p,'
      '  MEASURES m,'
      '  MEASURES tm'
      ''
      'where'
      '  (p.MEASURE_CODE = m.MEASURE_CODE(+)) and'
      ''
      '  (p.TECH_MEASURE_CODE = tm.MEASURE_CODE(+)) and'
      ''
      '  (p.PRODUCT_CODE = :PRODUCT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PRODUCTS_FOR_EDIT'
    Left = 584
    Top = 176
    object qryProductionProductPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryProductionProductPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryProductionProductPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryProductionProductMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      ProviderFlags = []
    end
    object qryProductionProductMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryProductionProductTECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryProductionProductTECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TECH_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryProductionProductIS_PRODUCTION_PRODUCT: TAbmesFloatField
      FieldName = 'IS_PRODUCTION_PRODUCT'
      ProviderFlags = [pfInUpdate]
    end
    object qryProductionProductSELF_EXISTENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'SELF_EXISTENT_STATUS_CODE'
      ProviderFlags = []
    end
    object qryProductionProductIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      ProviderFlags = []
    end
  end
  object dsProductionProduct: TDataSource
    DataSet = qryProductionProduct
    Left = 584
    Top = 224
  end
  object qryProductLocations: TAbmesSQLQuery
    DataSource = dsProductionProduct
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
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pl.PRODUCT_CODE,'
      '  pl.DEPT_CODE,'
      '  pl.STORE_CODE,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER || '#39' ' +
        '- '#39' || d.NAME) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = pl.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as STORE_FULL_NAME,'
      ''
      
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
      '  DEPT_TYPES dt,'
      '  DEPTS sd'
      ''
      'where'
      '  (pr.ANCESTOR_PRODUCT_CODE = pl.PRODUCT_CODE) and'
      '  (pl.DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (pl.STORE_CODE = sd.DEPT_CODE) and'
      ''
      '  (pr.DESCENDANT_PRODUCT_CODE = :PRODUCT_CODE)'
      ''
      'order by'
      '  PRODUCT_LEVEL,'
      '  dt.DEPT_TYPE_ABBREV,'
      '  d.CUSTOM_CODE,'
      '  d.SUFFIX_LETTER'
      ''
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 584
    Top = 272
    object qryProductLocationsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryProductLocationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryProductLocationsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryProductLocationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 149
    end
    object qryProductLocationsSTORE_FULL_NAME: TAbmesWideStringField
      FieldName = 'STORE_FULL_NAME'
      Size = 148
    end
    object qryProductLocationsIS_INHERITED: TAbmesFloatField
      FieldName = 'IS_INHERITED'
    end
    object qryProductLocationsPRODUCT_LEVEL: TAbmesFloatField
      FieldName = 'PRODUCT_LEVEL'
    end
  end
end
