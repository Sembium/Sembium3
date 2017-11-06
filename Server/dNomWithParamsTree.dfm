inherited dmNomWithParamsTree: TdmNomWithParamsTree
  OldCreateOrder = False
  Height = 360
  Width = 740
  inherited qryTreeNodeChildren: TAbmesSQLQuery
    SQL.Strings = (
      '//This line is to crash this query. It is abstract.'
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
      ''
      '      exists('
      '        select'
      '          1'
      '        from'
      '          GROUP_PRODUCTS gp2'
      '        where'
      '          (gp2.PRODUCT_CODE = p2.PRODUCT_CODE)'
      '      )'
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
      '  ),'
      '  p.IS_INACTIVE'
      ''
      'order by'
      '  NODE_NAME,'
      '  NODE_ID')
  end
  inherited qryNodeChildren: TAbmesSQLQuery
    SQL.Strings = (
      '//This line is to crash this query. It is abstract.'
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
      '  ContextNow as CHANGE_DATE_TIME'
      ''
      'from'
      '  PRODUCTS p'
      ''
      'where'
      '  (p.PARENT_CODE = :NODE_ID)'
      ''
      'order by'
      '  NODE_TYPE,'
      '  NODE_NAME')
    BeforeProviderEndTransaction = qryNodeChildrenBeforeProviderEndTransaction
    inherited qryNodeChildrenNODE_ID: TAbmesFloatField
      ProviderFlags = []
    end
    inherited qryNodeChildrenPARENT_NODE_ID: TAbmesFloatField
      ProviderFlags = []
    end
    inherited qryNodeChildrenNODE_NAME: TAbmesWideStringField
      ProviderFlags = []
    end
    inherited qryNodeChildrenNODE_TYPE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited qryNodeChildrenNODE_NO: TAbmesFloatField
      ProviderFlags = []
    end
    object qryNodeChildrenCHANGE_DATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE_TIME'
      ProviderFlags = []
    end
  end
  inherited prvNodeChildren: TDataSetProvider
    Options = [poReadOnly, poPropogateChanges]
    AfterUpdateRecord = prvNodeChildrenAfterUpdateRecord
    BeforeUpdateRecord = prvNodeChildrenBeforeUpdateRecord
    BeforeApplyUpdates = prvNodeChildrenBeforeApplyUpdates
  end
  inherited qryPrintTree: TAbmesSQLQuery
    Params = <
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
      '//This line is to crash this query. It is abstract.'
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
      '  PRODUCTS p'
      ''
      'where'
      '  (p.PRODUCT_CODE = :NODE_ID)'
      ''
      'order by'
      '  ORDER_NO')
    object qryPrintTreeNODE_PARAM_NAMES: TAbmesWideStringField
      FieldName = 'NODE_PARAM_NAMES'
      Size = 4000
    end
    object qryPrintTreeNODE_PARAM_VALUES: TAbmesWideStringField
      FieldName = 'NODE_PARAM_VALUES'
      Size = 4000
    end
  end
  inherited qryNodeID: TAbmesSQLQuery
    Left = 112
  end
  inherited qryShowNodeParams: TAbmesSQLQuery
    SQL.Strings = (
      '//This line is to crash this query. It is abstract.'
      'select'
      '  pp.PRODUCT_PARAM_CODE as NODE_PARAM_CODE,'
      '  pp.PRODUCT_PARAM_NAME as NODE_PARAM_NAME,'
      '  pp.PRODUCT_PARAM_ORDER_NO as NODE_PARAM_ORDER_NO,'
      '  Cast('
      '    Decode(pp.VALUE_TYPE,'
      '      0, ni.NOM_ITEM_NAME,'
      '      1, Nvl2(pp.VALUE_FLOAT_FORMAT,'
      
        '           To_Char(pp.VALUE_FLOAT, '#39'FM9999999999'#39' || pp.VALUE_FL' +
        'OAT_FORMAT),'
      '           To_Char(pp.VALUE_FLOAT)),'
      '      2, pp.VALUE_STRING,'
      '      '#39#39') as Varchar2(250 char)) as PARAM_VALUE,'
      '  pp.VALUE_TYPE,'
      '  pp.IS_INHERITED,'
      '  pp.IS_DEFINED'
      ''
      'from'
      '  PRODUCT_PARAMS pp,'
      '  NOM_ITEMS ni'
      ''
      'where'
      '  (pp.VALUE_NOM_CODE = ni.NOM_CODE(+)) and'
      '  (pp.VALUE_NOM_ITEM_CODE = ni.NOM_ITEM_CODE(+)) and'
      '  '
      '  (pp.PRODUCT_CODE = :NODE_ID)'
      '  '
      'order by'
      '  pp.PRODUCT_PARAM_ORDER_NO,'
      '  pp.PRODUCT_PARAM_CODE')
    object qryShowNodeParamsIS_INHERITED: TAbmesFloatField
      FieldName = 'IS_INHERITED'
      Required = True
    end
    object qryShowNodeParamsIS_DEFINED: TAbmesFloatField
      FieldName = 'IS_DEFINED'
      Required = True
    end
  end
  inherited qryPrintTreeChildren: TAbmesSQLQuery
    Params = <
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
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
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '//This line is to crash this query. It is abstract.'
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
      '  ( select'
      
        '      ListAgg(Coalesce(pp.PARAM_VALUE, Chr(7)), Chr(8)) within g' +
        'roup (order by rp.PRODUCT_PARAM_ORDER_NO)'
      '    from'
      '      PRODUCT_PARAMS rp,'
      '      PRODUCT_PARAMS pp'
      '    where'
      '      (rp.PRODUCT_CODE = :NODE_ID) and'
      '      (pp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (pp.PRODUCT_PARAM_CODE = rp.PRODUCT_PARAM_CODE)'
      '  ) as NODE_PARAM_VALUES'
      ''
      'from'
      '  PRODUCTS p'
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
        Name = 'NODE_PARAM_NAMES'
        DataType = ftWideString
        Size = 4000
      end
      item
        Name = 'NODE_PARAM_VALUES'
        DataType = ftWideString
        Size = 4000
      end>
    object cdsPrintTreeChildrenNODE_PARAM_NAMES: TAbmesWideStringField [8]
      FieldName = 'NODE_PARAM_NAMES'
      Size = 4000
    end
    object cdsPrintTreeChildrenNODE_PARAM_VALUES: TAbmesWideStringField [9]
      FieldName = 'NODE_PARAM_VALUES'
      Size = 4000
    end
  end
  object qryNodeParams: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NEW_NODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'NEW_NODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEW_NODE'
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
      '//This line is to crash this query. It is abstract.'
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
      '  NODE_PARAM_ID')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pp]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'NODE_PARAMS_FOR_EDIT'
    Left = 264
    Top = 176
    object qryNodeParamsNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNodeParamsNODE_PARAM_ID: TAbmesFloatField
      FieldName = 'NODE_PARAM_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNodeParamsNODE_PARAM_NAME: TAbmesWideStringField
      FieldName = 'NODE_PARAM_NAME'
      Size = 50
    end
    object qryNodeParamsNODE_PARAM_ORDER_NO: TAbmesFloatField
      FieldName = 'NODE_PARAM_ORDER_NO'
    end
    object qryNodeParamsVALUE_TYPE: TAbmesFloatField
      FieldName = 'VALUE_TYPE'
    end
    object qryNodeParamsNOM_CODE: TAbmesFloatField
      FieldName = 'NOM_CODE'
    end
    object qryNodeParamsVALUE_NOM_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_CODE'
    end
    object qryNodeParamsVALUE_NOM_ITEM_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_CODE'
    end
    object qryNodeParamsVALUE_FLOAT: TAbmesFloatField
      FieldName = 'VALUE_FLOAT'
    end
    object qryNodeParamsVALUE_FLOAT_FORMAT: TAbmesWideStringField
      FieldName = 'VALUE_FLOAT_FORMAT'
    end
    object qryNodeParamsVALUE_FLOAT_RANGE_START: TAbmesFloatField
      FieldName = 'VALUE_FLOAT_RANGE_START'
    end
    object qryNodeParamsVALUE_FLOAT_RANGE_END: TAbmesFloatField
      FieldName = 'VALUE_FLOAT_RANGE_END'
    end
    object qryNodeParamsVALUE_STRING: TAbmesWideStringField
      FieldName = 'VALUE_STRING'
      Size = 150
    end
    object qryNodeParamsABBREV: TAbmesWideStringField
      FieldName = 'ABBREV'
    end
    object qryNodeParamsPREFIX: TAbmesWideStringField
      FieldName = 'PREFIX'
    end
    object qryNodeParamsSUFFIX: TAbmesWideStringField
      FieldName = 'SUFFIX'
    end
    object qryNodeParamsIS_REQUIRED: TAbmesFloatField
      FieldName = 'IS_REQUIRED'
    end
    object qryNodeParamsIS_PART_OF_NAME: TAbmesFloatField
      FieldName = 'IS_PART_OF_NAME'
    end
    object qryNodeParamsIS_DEFINED: TAbmesFloatField
      FieldName = 'IS_DEFINED'
      ProviderFlags = [pfInUpdate]
    end
    object qryNodeParamsIS_INHERITED: TAbmesFloatField
      FieldName = 'IS_INHERITED'
    end
    object qryNodeParamsIS_VALUE_INHERITED: TAbmesFloatField
      FieldName = 'IS_VALUE_INHERITED'
    end
    object qryNodeParamsNOM_ITEM_NAME: TAbmesWideStringField
      FieldName = 'NOM_ITEM_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryNodeParamsNOM_ITEM_IS_NOT_PART_OF_NAME: TAbmesFloatField
      FieldName = 'NOM_ITEM_IS_NOT_PART_OF_NAME'
      ProviderFlags = []
    end
    object qryNodeParamsPARENT_IS_DEFINED: TAbmesFloatField
      FieldName = 'PARENT_IS_DEFINED'
      ProviderFlags = []
    end
    object qryNodeParamsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryNodeParamsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryNodeParamsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryNodeParamsPARENT_IS_FOR_EXPORT: TAbmesFloatField
      FieldName = 'PARENT_IS_FOR_EXPORT'
    end
    object qryNodeParamsIS_FOR_EXPORT: TAbmesFloatField
      FieldName = 'IS_FOR_EXPORT'
    end
    object qryNodeParamsEXPORT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'EXPORT_IDENTIFIER'
    end
  end
  object prvNodeParams: TDataSetProvider
    DataSet = qryNodeParams
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = prvNodeParamsUpdateError
    AfterUpdateRecord = prvNodeParamsAfterUpdateRecord
    BeforeUpdateRecord = prvNodeParamsBeforeUpdateRecord
    BeforeApplyUpdates = prvNodeParamsBeforeApplyUpdates
    Left = 264
    Top = 128
  end
  object qryMaxNodeParamID: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '//This line is to crash this query. It is abstract.'
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
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 264
    object qryMaxNodeParamIDMAX_NODE_PARAM_ID: TAbmesFloatField
      FieldName = 'MAX_NODE_PARAM_ID'
    end
  end
  object qryMaxNodeID: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '//This line is to crash this query. It is abstract.'
      'select'
      '  Max(PRODUCT_CODE) as MAX_NODE_ID'
      'from'
      '  PRODUCTS')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 168
    object qryMaxNodeIDMAX_NODE_ID: TAbmesFloatField
      FieldName = 'MAX_NODE_ID'
    end
  end
  object qryCalcNodeChildrenNames: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '//This line is to crash this query. It is abstract.'
      'begin'
      '  ProductUtils.CalcProductName(:NODE_ID);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 216
  end
  object prvFilterNodeParams: TDataSetProvider
    DataSet = qryFilterNodeParams
    Options = [poDisableInserts, poDisableDeletes]
    Left = 128
    Top = 232
  end
  object qryFilterNodeParams: TAbmesSQLQuery
    OnCalcFields = qryFilterNodeParamsCalcFields
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  np.NODE_PARAM_CODE as NODE_PARAM_CODE,'
      '  np.NODE_PARAM_NAME as NODE_PARAM_NAME,'
      '  np.NODE_PARAM_ORDER_NO as NODE_PARAM_ORDER_NO,'
      '  np.VALUE_TYPE,'
      '  np.NOM_CODE,'
      '  n.NOM_NAME,'
      '  np.VALUE_NOM_CODE,'
      '  np.VALUE_NOM_ITEM_CODE,'
      '  ni.NOM_ITEM_NAME as VALUE_NOM_ITEM_NAME,'
      '  np.VALUE_FLOAT,'
      '  np.VALUE_FLOAT as VALUE_FLOAT_MIN,'
      '  np.VALUE_FLOAT as VALUE_FLOAT_MAX,'
      '  np.VALUE_STRING,'
      ''
      '  np.DOC_BRANCH_CODE,'
      '  np.DOC_CODE,'
      '  %HAS_DOC_ITEMS[np] as HAS_DOC_ITEMS,'
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
      '  NODE_PARAMS np,'
      '  NOMS n,'
      '  NOM_ITEMS ni'
      ''
      'where'
      '  (np.NOM_CODE = n.NOM_CODE(+)) and'
      '  (np.VALUE_NOM_CODE = ni.NOM_CODE(+)) and'
      '  (np.VALUE_NOM_ITEM_CODE = ni.NOM_ITEM_CODE(+)) and'
      '  (np.NODE_CODE = :NODE_CODE)'
      ''
      'order by'
      '  np.NODE_PARAM_ORDER_NO,'
      '  np.NODE_PARAM_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[np]'
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
    MacroParams = <>
    CustomParams = <>
    Left = 128
    Top = 280
    object qryFilterNodeParamsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryFilterNodeParamsNODE_PARAM_CODE: TAbmesFloatField
      FieldName = 'NODE_PARAM_CODE'
    end
    object qryFilterNodeParamsNODE_PARAM_NAME: TAbmesWideStringField
      FieldName = 'NODE_PARAM_NAME'
      Size = 50
    end
    object qryFilterNodeParamsNODE_PARAM_ORDER_NO: TAbmesFloatField
      FieldName = 'NODE_PARAM_ORDER_NO'
    end
    object qryFilterNodeParamsVALUE_TYPE: TAbmesFloatField
      FieldName = 'VALUE_TYPE'
    end
    object qryFilterNodeParamsNOM_CODE: TAbmesFloatField
      FieldName = 'NOM_CODE'
    end
    object qryFilterNodeParamsNOM_NAME: TAbmesWideStringField
      FieldName = 'NOM_NAME'
      Size = 50
    end
    object qryFilterNodeParamsVALUE_NOM_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_CODE'
    end
    object qryFilterNodeParamsVALUE_NOM_ITEM_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_CODE'
    end
    object qryFilterNodeParamsVALUE_NOM_ITEM_NAME: TAbmesWideStringField
      FieldName = 'VALUE_NOM_ITEM_NAME'
      Size = 50
    end
    object qryFilterNodeParamsVALUE_FLOAT: TAbmesFloatField
      FieldName = 'VALUE_FLOAT'
    end
    object qryFilterNodeParamsVALUE_STRING: TAbmesWideStringField
      FieldName = 'VALUE_STRING'
      Size = 150
    end
    object qryFilterNodeParamsVALUE_FLOAT_MIN: TAbmesFloatField
      FieldName = 'VALUE_FLOAT_MIN'
    end
    object qryFilterNodeParamsVALUE_FLOAT_MAX: TAbmesFloatField
      FieldName = 'VALUE_FLOAT_MAX'
    end
    object qryFilterNodeParamsIS_READ_ONLY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'IS_READ_ONLY'
      Calculated = True
    end
    object qryFilterNodeParamsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryFilterNodeParamsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object qryFilterNodeParamsNOM_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'NOM_DOC_BRANCH_CODE'
    end
    object qryFilterNodeParamsNOM_DOC_CODE: TAbmesFloatField
      FieldName = 'NOM_DOC_CODE'
    end
    object qryFilterNodeParamsNOM_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'NOM_HAS_DOC_ITEMS'
    end
    object qryFilterNodeParamsVALUE_NOM_ITEM_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_DOC_BRANCH_CODE'
    end
    object qryFilterNodeParamsVALUE_NOM_ITEM_DOC_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_DOC_CODE'
    end
    object qryFilterNodeParamsVALUE_NOM_ITEM_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_HAS_DOC_ITEMS'
    end
  end
  object qryInsNodeParams: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'NODE_PARAM_ID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NODE_PARAM_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NODE_PARAM_ORDER_NO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_FLOAT'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_FLOAT_FORMAT'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_FLOAT_RANGE_START'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_FLOAT_RANGE_END'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_STRING'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PREFIX'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'SUFFIX'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'IS_REQUIRED'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'IS_PART_OF_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_DEFINED'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'IS_INHERITED'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'IS_VALUE_INHERITED'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_FLOAT'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_STRING'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
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
        DataType = ftWideString
        Name = 'EXPORT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NODE_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '//This line is to crash this query. It is abstract.'
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
      '  (ANCESTOR_PRODUCT_CODE = :NODE_ID)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 344
    Top = 160
  end
  object qryUpdNodeParams: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'OLD_NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NODE_PARAM_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NODE_PARAM_ORDER_NO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_FLOAT'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_VALUE_FLOAT'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_FLOAT'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_VALUE_FLOAT'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_FLOAT'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_FLOAT_FORMAT'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_FLOAT_RANGE_START'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_FLOAT_RANGE_END'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_STRING'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_VALUE_STRING'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_STRING'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_VALUE_STRING'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_STRING'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PREFIX'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'SUFFIX'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'IS_REQUIRED'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'IS_PART_OF_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_DEFINED'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_IS_DEFINED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_DEFINED'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_IS_DEFINED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_DEFINED'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_FLOAT'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'VALUE_STRING'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
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
        DataType = ftUnknown
        Name = 'OLD_NODE_PARAM_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '//This line is to crash this query. It is abstract.'
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
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 344
    Top = 208
  end
  object qryDelNodeParams: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'OLD_NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OLD_NODE_PARAM_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '//This line is to crash this query. It is abstract.'
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
      'end;'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 344
    Top = 256
  end
end
