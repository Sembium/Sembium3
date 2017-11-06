inherited dmDeptsTree: TdmDeptsTree
  OldCreateOrder = False
  Height = 402
  Width = 801
  inherited qryTreeNodeChildren: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  d.DEPT_CODE as NODE_ID,'
      '  d.PARENT_CODE as PARENT_NODE_ID,'
      '  d.NAME as NODE_NAME,'
      '  d.CUSTOM_CODE as NODE_NO,'
      '  Nvl2(d.PARENT_CODE, 1, 0) as NODE_TYPE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      DEPTS d3'
      '    where'
      '      (d3.PARENT_CODE = d.DEPT_CODE) and'
      '      (d3.IS_GROUP = 1)'
      '  ) as IS_EXPANDABLE,'
      ''
      '  case'
      
        '    when (ContextDate between d.BEGIN_DATE and Coalesce(d.END_DATE' +
        ', ContextDate)) then 0'
      '  else'
      '    1'
      '  end as IS_INACTIVE,'
      ''
      '  Nvl2(s.STORE_CODE, 1, 0) as IS_STORE,'
      '  Coalesce(s.IS_COMPUTERIZED, 0) as IS_COMPUTERIZED_STORE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      FIN_STORES fs'
      '    where'
      '      (fs.STORE_CODE = d.DEPT_CODE)'
      '  ) as IS_FIN_STORE,'
      ''
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as S' +
        'HOW_NO'
      ''
      'from'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  STORES s'
      ''
      'where'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      ''
      '  (d.DEPT_CODE = s.STORE_CODE(+)) and'
      ''
      '  (d.PARENT_CODE = :NODE_ID) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      GROUP_DEPTS gd'
      '    where'
      '      (gd.DEPT_CODE = d.DEPT_CODE)'
      '  )'
      ''
      'order by'
      '  SHOW_NO,'
      '  NODE_NAME,'
      '  NODE_ID')
    object qryTreeNodeChildrenIS_STORE: TAbmesFloatField
      FieldName = 'IS_STORE'
    end
    object qryTreeNodeChildrenIS_COMPUTERIZED_STORE: TAbmesFloatField
      FieldName = 'IS_COMPUTERIZED_STORE'
    end
    object qryTreeNodeChildrenSHOW_NO: TAbmesWideStringField
      FieldName = 'SHOW_NO'
      Size = 46
    end
    object qryTreeNodeChildrenIS_FIN_STORE: TAbmesFloatField
      FieldName = 'IS_FIN_STORE'
    end
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
      '  d.DEPT_CODE as NODE_ID,'
      '  d.PARENT_CODE as PARENT_NODE_ID,'
      '  d.NAME as NODE_NAME,'
      '  d.CUSTOM_CODE as NODE_NO,'
      '  Decode(d.DEPT_CODE, :ROOT_NODE_ID, 0, 1) as NODE_TYPE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      DEPTS d3'
      '    where'
      '      (d3.PARENT_CODE = d.DEPT_CODE) and'
      '      (d3.IS_GROUP = 1)'
      '  ) as IS_EXPANDABLE,'
      ''
      '  Decode(d.DEPT_CODE,'
      '         ('
      '           select'
      '             dn.PARENT_CODE'
      '           from'
      '             DEPTS dn'
      '           where'
      '             (dn.DEPT_CODE = :NODE_ID)'
      '         ),'
      '         1, 0) as IS_THE_PARENT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DEPT_RELATIONS drc'
      '    where'
      '      (drc.DESCENDANT_DEPT_CODE = d.DEPT_CODE)'
      '  ) as NODE_REAL_LEVEL,'
      ''
      '  Nvl2(s.STORE_CODE, 1, 0) as IS_STORE,'
      '  Coalesce(s.IS_COMPUTERIZED, 0) as IS_COMPUTERIZED_STORE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      FIN_STORES fs'
      '    where'
      '      (fs.STORE_CODE = d.DEPT_CODE)'
      '  ) as IS_FIN_STORE,'
      ''
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as S' +
        'HOW_NO'
      ''
      'from'
      '  DEPT_RELATIONS dr,'
      '  DEPTS d2,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  STORES s'
      ''
      'where'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      ''
      '  (dr.ANCESTOR_DEPT_CODE = d2.DEPT_CODE) and'
      '  (Coalesce(d2.PARENT_CODE, 0) = Coalesce(d.PARENT_CODE, 0)) and'
      ''
      '  (dr.DESCENDANT_DEPT_CODE = :NODE_ID) and'
      '  (dr.ANCESTOR_DEPT_CODE <> :NODE_ID) and'
      ''
      '  (d.DEPT_CODE = s.STORE_CODE(+)) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      DEPT_RELATIONS dr2'
      '    where'
      '      (dr2.ANCESTOR_DEPT_CODE = :ROOT_NODE_ID) and'
      '      (dr2.DESCENDANT_DEPT_CODE = dr.ANCESTOR_DEPT_CODE)'
      '  ) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      DEPT_RELATIONS dr3'
      '    where'
      '      (dr3.ANCESTOR_DEPT_CODE = :ROOT_NODE_ID) and'
      '      (dr3.DESCENDANT_DEPT_CODE = d.DEPT_CODE)'
      '  ) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      GROUP_DEPTS gd'
      '    where'
      '      (gd.DEPT_CODE = d.DEPT_CODE)'
      '  )'
      ''
      'order by'
      '  NODE_REAL_LEVEL,'
      '  SHOW_NO,'
      '  NODE_NAME')
    object qryTreeToNodeIS_STORE: TAbmesFloatField
      FieldName = 'IS_STORE'
    end
    object qryTreeToNodeIS_COMPUTERIZED_STORE: TAbmesFloatField
      FieldName = 'IS_COMPUTERIZED_STORE'
    end
    object qryTreeToNodeSHOW_NO: TAbmesWideStringField
      FieldName = 'SHOW_NO'
      Size = 46
    end
    object qryTreeToNodeIS_FIN_STORE: TAbmesFloatField
      FieldName = 'IS_FIN_STORE'
    end
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
        Name = 'SHOW_FIN_STORES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_OWD_FIN_STORES'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'select'
      '  d.DEPT_CODE as NODE_ID,'
      '  d.PARENT_CODE as PARENT_NODE_ID,'
      '  d.NAME as NODE_NAME,'
      '  Coalesce('
      '    ('
      '      select'
      '        2'
      '      from'
      '        DEFINITE_DEPTS dd'
      '      where'
      '        (dd.DEPT_CODE = d.DEPT_CODE)'
      '    ),'
      '    1'
      '  ) as NODE_TYPE,'
      '  d.CUSTOM_CODE as NODE_NO,'
      ''
      '  case'
      
        '    when (ContextDate between d.BEGIN_DATE and Coalesce(d.END_DATE' +
        ', ContextDate)) then 0'
      '  else'
      '    1'
      '  end as IS_INACTIVE,'
      ''
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as S' +
        'HOW_NO,'
      ''
      '  Nvl2(s.STORE_CODE, 1, 0) as IS_STORE,'
      '  Coalesce(s.IS_COMPUTERIZED, 0) as IS_COMPUTERIZED_STORE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      FIN_STORES fs'
      '    where'
      '      (fs.STORE_CODE = d.DEPT_CODE)'
      '  ) as IS_FIN_STORE,'
      ''
      '  %HAS_DOC_ITEMS[d] as HAS_DOCUMENTATION,'
      ''
      '  d.PRODUCT_CODE'
      ''
      'from'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  STORES s'
      ''
      'where'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      ''
      '  (d.DEPT_CODE = s.STORE_CODE(+)) and'
      ''
      '  (d.PARENT_CODE = :NODE_ID) and'
      ''
      '  ( (:SHOW_FIN_STORES = 1) or'
      '    not exists('
      '      select'
      '        1'
      '      from'
      '        FIN_STORES fs'
      '      where'
      '        (fs.STORE_CODE = d.DEPT_CODE)'
      '    ) or'
      '    ( (:SHOW_OWD_FIN_STORES = 1) and'
      '      exists('
      '        select'
      '          1'
      '        from'
      '          OCCUPATION_EMPLOYEES oe,'
      '          OCCUPATION_WORK_DEPTS owd,'
      '          OCC_WORK_DEPT_PRIORITIES owdp'
      '        where'
      '          (oe.OCCUPATION_CODE = owd.OCCUPATION_CODE) and'
      
        '          (owd.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WORK_DEPT_' +
        'PRIORITY_CODE) and'
      ''
      '          (owdp.ORG_WORK_LEVEL_CODE = %owl_EXECUTING) and'
      '          (owdp.ORG_WORK_MODE_CODE = %owm_EXPLOITATION) and'
      ''
      '          (oe.EMPLOYEE_CODE = LoginContext.UserCode) and'
      
        '          (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe.ASS' +
        'IGNMENT_END_DATE) and'
      ''
      '          (owd.DEPT_CODE = d.DEPT_CODE)'
      '      )'
      '    )'
      '  )'
      ''
      'order by'
      '  NODE_TYPE,'
      '  SHOW_NO,'
      '  NODE_NAME')
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[d]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'owl_EXECUTING'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'owm_EXPLOITATION'
        ParamType = ptInput
        Value = '1'
      end>
    object qryNodeChildrenSHOW_NO: TAbmesWideStringField
      FieldName = 'SHOW_NO'
      Size = 46
    end
    object qryNodeChildrenIS_STORE: TAbmesFloatField
      FieldName = 'IS_STORE'
      Visible = False
    end
    object qryNodeChildrenIS_COMPUTERIZED_STORE: TAbmesFloatField
      FieldName = 'IS_COMPUTERIZED_STORE'
      Visible = False
    end
    object qryNodeChildrenHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryNodeChildrenPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryNodeChildrenIS_FIN_STORE: TAbmesFloatField
      FieldName = 'IS_FIN_STORE'
    end
  end
  inherited qryTreeNode: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  d.DEPT_CODE as NODE_ID,'
      '  d.PARENT_CODE as PARENT_NODE_ID,'
      '  d.NAME as NODE_NAME,'
      '  d.CUSTOM_CODE as NODE_NO,'
      '  Nvl2(d.PARENT_CODE, 1, 0) as NODE_TYPE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      DEPTS d3'
      '    where'
      '      (d3.PARENT_CODE = d.DEPT_CODE) and'
      '      (d3.IS_GROUP = 1)'
      '  ) as IS_EXPANDABLE,'
      ''
      '  Nvl2(s.STORE_CODE, 1, 0) as IS_STORE,'
      '  Coalesce(s.IS_COMPUTERIZED, 0) as IS_COMPUTERIZED_STORE'
      ''
      'from'
      '  DEPTS d,'
      '  STORES s'
      ''
      'where'
      '  (d.DEPT_CODE = s.STORE_CODE(+)) and'
      ''
      '  (d.DEPT_CODE = :NODE_ID)'
      ''
      'order by'
      '  NODE_ID,'
      '  PARENT_NODE_ID,'
      '  NODE_NAME')
    object qryTreeNodeIS_STORE: TAbmesFloatField
      FieldName = 'IS_STORE'
    end
    object qryTreeNodeIS_COMPUTERIZED_STORE: TAbmesFloatField
      FieldName = 'IS_COMPUTERIZED_STORE'
    end
  end
  inherited qryIsDescendantOf: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  pr.DESCENDANT_DEPT_CODE as DESCENDANT_NODE_ID'
      ''
      'from'
      '  DEPT_RELATIONS pr'
      ''
      'where'
      '  (pr.ANCESTOR_DEPT_CODE = :ROOT_ID) and'
      '  (pr.DESCENDANT_DEPT_CODE = :NODE_ID)'
      ' '
      '')
  end
  inherited qryNodeIsInstance: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  1 as IS_INSTANCE'
      'from'
      '  DEFINITE_DEPTS dd'
      'where'
      '  (dd.DEPT_CODE = :NODE_ID)'
      '')
  end
  inherited qryPrintTree: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  d.DEPT_CODE as NODE_ID,'
      '  d.PARENT_CODE as PARENT_NODE_ID,'
      '  d.NAME as NODE_NAME,'
      '  d.CUSTOM_CODE as NODE_NO,'
      '  0 as NODE_LEVEL,'
      '  0 as IS_LAST_CHILD,'
      '  0 as ORDER_NO,'
      '  0 as NODE_TYPE,'
      '  0 as IS_INACTIVE,'
      '  0 as HAS_CHILDREN,'
      '  Cast(null as Varchar2(20 char)) as SHOW_NO'
      ''
      'from'
      '  DEPTS d'
      ''
      'where'
      '  (d.DEPT_CODE = :NODE_ID)'
      ''
      'order by'
      '  ORDER_NO')
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SORT_FIELD_NAMES'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SORT_DESC_FIELD_NAMES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_FIN_STORES'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_RECORDS'
        ParamType = ptUnknown
        Value = '5000'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_OWD_FIN_STORES'
        ParamType = ptUnknown
        Value = '1'
      end>
    object qryPrintTreeSHOW_NO: TAbmesWideStringField [9]
      FieldName = 'SHOW_NO'
    end
  end
  inherited qryNodeData: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  d.CUSTOM_CODE as NODE_NO,'
      '  d.NAME as NODE_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  Nvl2(s.STORE_CODE, 1, 0) as DEPT_IS_STORE,'
      '  d.PRODUCT_CODE,'
      '  d.PARENT_CODE as PARENT_NODE_ID,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER || '#39' ' +
        '- '#39' || d.NAME) as DEPT_FULL_NAME,'
      '  d.DOC_BRANCH_CODE,'
      '  d.DOC_CODE,'
      '  %HAS_DOC_ITEMS[d] as HAS_DOCUMENTATION,'
      '  d.IS_RECURRENT,'
      '  d.BEGIN_DATE,'
      '  d.END_DATE,'
      '  d.IS_EXTERNAL,'
      '  Nvl2(fs.STORE_CODE, 1, 0) as DEPT_IS_FIN_STORE'
      ''
      'from'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  STORES s,'
      '  FIN_STORES fs'
      ''
      'where'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (d.DEPT_CODE = s.STORE_CODE(+)) and'
      '  (d.DEPT_CODE = fs.STORE_CODE(+)) and'
      ''
      '  (d.DEPT_CODE = :NODE_ID)'
      ''
      ' ')
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[d]'
        ParamType = ptInput
        Value = '1'
      end>
    object qryNodeDataDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryNodeDataDEPT_IS_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_STORE'
      FieldValueType = fvtBoolean
    end
    object qryNodeDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryNodeDataPARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object qryNodeDataDEPT_FULL_NAME: TAbmesWideStringField
      FieldName = 'DEPT_FULL_NAME'
      Size = 149
    end
    object qryNodeDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryNodeDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryNodeDataHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object qryNodeDataIS_RECURRENT: TAbmesFloatField
      FieldName = 'IS_RECURRENT'
      FieldValueType = fvtBoolean
    end
    object qryNodeDataBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryNodeDataEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryNodeDataIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
      FieldValueType = fvtBoolean
    end
    object qryNodeDataDEPT_IS_FIN_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_FIN_STORE'
      FieldValueType = fvtBoolean
    end
  end
  inherited qryNodeID: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  d.DEPT_CODE as NODE_ID'
      ''
      'from'
      '  DEPTS d'
      '  '
      'where'
      '  (d.CUSTOM_CODE = :NODE_NO) and'
      '  (d.DEPT_TYPE_CODE is null) and'
      '  (d.SUFFIX_LETTER is null)'
      ' ')
  end
  inherited prvShowNodeParams: TDataSetProvider
    Left = 544
  end
  inherited qryShowNodeParams: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  o.OCCUPATION_CODE as NODE_PARAM_CODE,'
      '  o.OCCUPATION_NAME as NODE_PARAM_NAME,'
      '  0 as NODE_PARAM_ORDER_NO,'
      '  To_Number(null) as VALUE_TYPE,'
      '  '#39'nothing'#39' as PARAM_VALUE,'
      ''
      '  To_Number(null) as DOC_BRANCH_CODE,'
      '  To_Number(null) as DOC_CODE,'
      '  To_Number(null) as HAS_DOC_ITEMS,'
      ''
      '  To_Number(null) as NOM_DOC_BRANCH_CODE,'
      '  To_Number(null) as NOM_DOC_CODE,'
      '  To_Number(null) as NOM_HAS_DOC_ITEMS,'
      ''
      '  To_Number(null) as VALUE_NOM_ITEM_DOC_BRANCH_CODE,'
      '  To_Number(null) as VALUE_NOM_ITEM_DOC_CODE,'
      '  To_Number(null) as VALUE_NOM_ITEM_HAS_DOC_ITEMS'
      ''
      'from'
      '  OCCUPATIONS o'
      ''
      'where'
      '  (o.DEPT_CODE = :NODE_ID)'
      ''
      'order by'
      '  NODE_PARAM_NAME')
    Left = 544
    inherited qryShowNodeParamsPARAM_VALUE: TAbmesWideStringField
      Size = 7
    end
    object qryShowNodeParamsNOM_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'NOM_DOC_BRANCH_CODE'
    end
    object qryShowNodeParamsNOM_DOC_CODE: TAbmesFloatField
      FieldName = 'NOM_DOC_CODE'
    end
    object qryShowNodeParamsNOM_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'NOM_HAS_DOC_ITEMS'
    end
    object qryShowNodeParamsVALUE_NOM_ITEM_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_DOC_BRANCH_CODE'
    end
    object qryShowNodeParamsVALUE_NOM_ITEM_DOC_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_DOC_CODE'
    end
    object qryShowNodeParamsVALUE_NOM_ITEM_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_HAS_DOC_ITEMS'
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
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_FIN_STORES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_OWD_FIN_STORES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  d.DEPT_CODE as NODE_ID,'
      '  d.PARENT_CODE as PARENT_NODE_ID,'
      '  d.NAME as NODE_NAME,'
      '  d.CUSTOM_CODE as NODE_NO,'
      '  Coalesce('
      '    ('
      '      select'
      '        2'
      '      from'
      '        DEFINITE_DEPTS dd'
      '      where'
      '        (dd.DEPT_CODE = d.DEPT_CODE)'
      '    ),'
      '    1'
      '  ) as NODE_TYPE,'
      ''
      '  case'
      
        '    when (ContextDate between d.BEGIN_DATE and Coalesce(d.END_DATE' +
        ', ContextDate)) then 0'
      '  else'
      '    1'
      '  end as IS_INACTIVE,'
      ''
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as S' +
        'HOW_NO,'
      '  ('
      '    select'
      '      Count(d3.DEPT_CODE) as NODE_CHILD_COUNT'
      '    from'
      '      DEPTS d3'
      '    where'
      '      (d3.PARENT_CODE = d.DEPT_CODE) and'
      '      (case'
      
        '         when (ContextDate between d3.BEGIN_DATE and Coalesce(d3.E' +
        'ND_DATE, ContextDate)) then 0'
      '       else'
      '         1'
      '       end <= :SHOW_INACTIVE)'
      '      ) as NODE_CHILD_COUNT,'
      ''
      '  (level - 1) as LEVEL_NO'
      ''
      'from'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      ''
      'where'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE) and'
      ''
      '  (case'
      
        '     when (ContextDate between d.BEGIN_DATE and Coalesce(d.END_DAT' +
        'E, ContextDate)) then 0'
      '   else'
      '     1'
      '   end <= :SHOW_INACTIVE) and'
      ''
      '  ( (:SHOW_FIN_STORES = 1) or'
      '    not exists('
      '      select'
      '        1'
      '      from'
      '        FIN_STORES fs'
      '      where'
      '        (fs.STORE_CODE = d.DEPT_CODE)'
      '    ) or'
      '    ( (:SHOW_OWD_FIN_STORES = 1) and'
      '      exists('
      '        select'
      '          1'
      '        from'
      '          OCCUPATION_EMPLOYEES oe,'
      '          OCCUPATION_WORK_DEPTS owd,'
      '          OCC_WORK_DEPT_PRIORITIES owdp'
      '        where'
      '          (oe.OCCUPATION_CODE = owd.OCCUPATION_CODE) and'
      
        '          (owd.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WORK_DEPT_' +
        'PRIORITY_CODE) and'
      ''
      '          (owdp.ORG_WORK_LEVEL_CODE = %owl_EXECUTING) and'
      '          (owdp.ORG_WORK_MODE_CODE = %owm_EXPLOITATION) and'
      ''
      '          (oe.EMPLOYEE_CODE = LoginContext.UserCode) and'
      
        '          (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe.ASS' +
        'IGNMENT_END_DATE) and'
      ''
      '          (owd.DEPT_CODE = d.DEPT_CODE)'
      '      )'
      '    )'
      '  )'
      ''
      'start with'
      '  (d.DEPT_CODE = :NODE_ID)'
      ''
      'connect by'
      '  (d.PARENT_CODE = prior d.DEPT_CODE)'
      ''
      'order siblings by'
      '  %ORDER_BY_FIELDS,'
      '  SHOW_NO,'
      '  NAME'
      '')
    Macros = <
      item
        DataType = ftWideString
        Name = 'owl_EXECUTING'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'owm_EXPLOITATION'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'ORDER_BY_FIELDS'
        ParamType = ptInput
        Value = '0=0'
      end>
    object qryPrintTreeChildrenSHOW_NO: TAbmesWideStringField [7]
      FieldName = 'SHOW_NO'
      Size = 46
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
        Name = 'SHOW_NO'
        DataType = ftWideString
        Size = 46
      end>
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
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_FIN_STORES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_OWD_FIN_STORES'
        ParamType = ptUnknown
        Value = '1'
      end>
    BeforeOpen = cdsPrintTreeChildrenBeforeOpen
    object cdsPrintTreeChildrenSHOW_NO: TAbmesWideStringField [7]
      FieldName = 'SHOW_NO'
      Size = 46
    end
  end
  inherited qryFindTreeNodes: TAbmesSQLQuery
    Params = <
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
      end
      item
        DataType = ftFloat
        Name = 'SHOW_FIN_STORES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_OWD_FIN_STORES'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'select  /*+NO_USE_HASH(d dt) NO_USE_MERGE(d dt)*/'
      '  d.DEPT_CODE as NODE_ID,'
      
        '  Cast(MiscUtils.DeptParentCodes(d.DEPT_CODE) as VarChar2(4000))' +
        ' as PARENT_NODE_IDS,'
      '  d.NAME as NODE_NAME,'
      '  d.CUSTOM_CODE as NODE_NO,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as S' +
        'HOW_NO'
      ''
      'from'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      ''
      'where'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      ''
      '  ( (:PARENT_CODE is null) or'
      '    (d.PARENT_CODE = :PARENT_CODE) ) and'
      ''
      '  ( (:SHOW_INACTIVE = 1) or'
      '    (ContextDate between d.BEGIN_DATE and d.END_DATE) ) and'
      ''
      '  ( (:SHOW_FIN_STORES = 1) or'
      '    not exists('
      '      select'
      '        1'
      '      from'
      '        FIN_STORES fs'
      '      where'
      '        (fs.STORE_CODE = d.DEPT_CODE)'
      '    ) or'
      '    ( (:SHOW_OWD_FIN_STORES = 1) and'
      '      exists('
      '        select'
      '          1'
      '        from'
      '          OCCUPATION_EMPLOYEES oe,'
      '          OCCUPATION_WORK_DEPTS owd,'
      '          OCC_WORK_DEPT_PRIORITIES owdp'
      '        where'
      '          (oe.OCCUPATION_CODE = owd.OCCUPATION_CODE) and'
      
        '          (owd.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WORK_DEPT_' +
        'PRIORITY_CODE) and'
      ''
      '          (owdp.ORG_WORK_LEVEL_CODE = %owl_EXECUTING) and'
      '          (owdp.ORG_WORK_MODE_CODE = %owm_EXPLOITATION) and'
      ''
      '          (oe.EMPLOYEE_CODE = LoginContext.UserCode) and'
      
        '          (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe.ASS' +
        'IGNMENT_END_DATE) and'
      ''
      '          (owd.DEPT_CODE = d.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  %FIND_CONDITION'
      ''
      'order by'
      '  SHOW_NO'
      '')
    Macros = <
      item
        DataType = ftWideString
        Name = 'owl_EXECUTING'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'owm_EXPLOITATION'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'FIND_CONDITION'
        ParamType = ptInput
        Value = '0=0'
      end>
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
        Name = 'FIND_PRODUCT'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'EXACT_MATCH'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qryFindTreeNodesSHOW_NO: TAbmesWideStringField
      FieldName = 'SHOW_NO'
      Size = 46
    end
  end
  inherited shFindStringTemplate: TJvStrHolder
    Capacity = 28
    StrData = (
      ''
      '28202820283a46494e445f4e4f44455f4e414d45203d20312920616e64'
      
        '20202020284465636f6465283a434153455f53454e5349544956452c20312c20' +
        '642e4e414d452c20557070657228642e4e414d452929206c696b6520254c494b' +
        '455f4d4f444946494552207c7c202546494e445f535452494e475f504152414d' +
        '5f4e414d45207c7c20254c494b455f4d4f44494649455229'
      '202029206f72'
      ''
      '20202820283a46494e445f4e4f44455f4e4f203d20312920616e64'
      '20202020284465636f6465283a434153455f53454e5349544956452c'
      
        '202020202020202020202020312c202864742e444550545f545950455f414242' +
        '524556207c7c20642e435553544f4d5f434f4445207c7c20642e535546464958' +
        '5f4c4554544552292c'
      
        '2020202020202020202020205570706572282864742e444550545f545950455f' +
        '414242524556207c7c20642e435553544f4d5f434f4445207c7c20642e535546' +
        '4649585f4c45545445522929'
      
        '202020202029206c696b6520254c494b455f4d4f444946494552207c7c202546' +
        '494e445f535452494e475f504152414d5f4e414d45207c7c20254c494b455f4d' +
        '4f44494649455229'
      '202029206f72'
      ''
      '20202820283a46494e445f50524f44554354203d20312920616e64'
      '2020202065786973747328'
      '20202020202073656c656374'
      '202020202020202031'
      '20202020202066726f6d'
      '202020202020202050524f44554354532070'
      '2020202020207768657265'
      
        '202020202020202028702e50524f445543545f434f4445203d20642e50524f44' +
        '5543545f434f44452920616e64'
      
        '20202020202020202820284465636f6465283a434153455f53454e5349544956' +
        '452c20312c20702e4e414d452c20557070657228702e4e414d452929206c696b' +
        '6520254c494b455f4d4f444946494552207c7c202546494e445f535452494e47' +
        '5f504152414d5f4e414d45207c7c20254c494b455f4d4f44494649455229206f' +
        '72'
      
        '2020202020202020202028702e435553544f4d5f434f4445206c696b6520254c' +
        '494b455f4d4f444946494552207c7c202546494e445f535452494e475f504152' +
        '414d5f4e414d45207c7c20254c494b455f4d4f444946494552292029'
      '2020202029'
      '202029'
      '29')
  end
  object qryDeptID: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'DEPT_IDENTIFIER'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  d.DEPT_CODE'
      ''
      'from'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      ''
      'where'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      ''
      
        '  (Upper(dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER' +
        ') = Upper(:DEPT_IDENTIFIER))'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 184
    Top = 176
    object qryDeptIDDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
  end
  object qryDeptDoc: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  d.DOC_BRANCH_CODE,'
      '  d.DOC_CODE'
      'from'
      '  DEPTS d'
      'where'
      '  (d.DEPT_CODE = :DEPT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 576
    Top = 168
    object qryDeptDocDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDeptDocDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
  end
  object qryCheckDeptRelation: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NEW_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEW_DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  *'
      '  '
      'from'
      '  DEPT_RELATIONS'
      ''
      'where'
      '  ( (ANCESTOR_DEPT_CODE = :NEW_DEPT_CODE) and'
      '  (DESCENDANT_DEPT_CODE = :OLD_DEPT_CODE) ) or'
      ''
      '  ( (ANCESTOR_DEPT_CODE = :OLD_DEPT_CODE) and'
      '  (DESCENDANT_DEPT_CODE = :NEW_DEPT_CODE) )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 576
    Top = 120
    object qryCheckDeptRelationANCESTOR_DEPT_CODE: TAbmesFloatField
      FieldName = 'ANCESTOR_DEPT_CODE'
    end
    object qryCheckDeptRelationDESCENDANT_DEPT_CODE: TAbmesFloatField
      FieldName = 'DESCENDANT_DEPT_CODE'
    end
  end
  object qryDateDeptPrices: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PRICES_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dp.HOUR_PRICE,'
      '  dp.MAINTAINANCE_HOUR_PRICE,'
      '  dp.PARALLEL_PROCESS_COUNT,'
      '  dp.PARALLEL_OPERATOR_COUNT'
      ''
      'from'
      '  DEPT_PERIODS dp'
      '  '
      'where'
      '  (dp.DEPT_CODE = :DEPT_CODE) and'
      '  (:PRICES_DATE between dp.BEGIN_DATE and dp.END_DATE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 576
    Top = 216
    object qryDateDeptPricesHOUR_PRICE: TAbmesFloatField
      FieldName = 'HOUR_PRICE'
    end
    object qryDateDeptPricesMAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      FieldName = 'MAINTAINANCE_HOUR_PRICE'
    end
    object qryDateDeptPricesPARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'PARALLEL_PROCESS_COUNT'
    end
    object qryDateDeptPricesPARALLEL_OPERATOR_COUNT: TAbmesFloatField
      FieldName = 'PARALLEL_OPERATOR_COUNT'
    end
  end
  object qryGraphObjectSet: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'GRAPH_OBJECT_SET_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  gos.GRAPH_OBJECT_SET_CODE,'
      '  gos.DEPT_CODE'
      'from'
      '  GRAPH_OBJECT_SETS gos'
      'where'
      '  (gos.GRAPH_OBJECT_SET_CODE = :GRAPH_OBJECT_SET_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 192
    Top = 304
    object qryGraphObjectSetGRAPH_OBJECT_SET_CODE: TAbmesFloatField
      FieldName = 'GRAPH_OBJECT_SET_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryGraphObjectSetDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
  end
  object qryGraphObjects: TAbmesSQLQuery
    DataSource = dsGraphObjectSet
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'GRAPH_OBJECT_SET_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  go.GRAPH_OBJECT_SET_CODE,'
      '  go.GRAPH_OBJECT_CODE,'
      '  go.GRAPH_OBJECT_TYPE_CODE'
      'from'
      '  GRAPH_OBJECTS go'
      'where'
      '  (go.GRAPH_OBJECT_SET_CODE = :GRAPH_OBJECT_SET_CODE) ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 288
    Top = 304
    object qryGraphObjectsGRAPH_OBJECT_SET_CODE: TAbmesFloatField
      FieldName = 'GRAPH_OBJECT_SET_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryGraphObjectsGRAPH_OBJECT_CODE: TAbmesFloatField
      FieldName = 'GRAPH_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryGraphObjectsGRAPH_OBJECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'GRAPH_OBJECT_TYPE_CODE'
    end
  end
  object qryGraphObjectPoints: TAbmesSQLQuery
    DataSource = dsGraphObjects
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'GRAPH_OBJECT_SET_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'GRAPH_OBJECT_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  gop.GRAPH_OBJECT_SET_CODE,'
      '  gop.GRAPH_OBJECT_CODE,'
      '  gop.GRAPH_OBJECT_POINT_NO,'
      '  gop.X,'
      '  gop.Y'
      'from'
      '  GRAPH_OBJECT_POINTS gop'
      'where'
      '  (gop.GRAPH_OBJECT_SET_CODE = :GRAPH_OBJECT_SET_CODE) and'
      '  (gop.GRAPH_OBJECT_CODE = :GRAPH_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 304
    object qryGraphObjectPointsGRAPH_OBJECT_SET_CODE: TAbmesFloatField
      FieldName = 'GRAPH_OBJECT_SET_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryGraphObjectPointsGRAPH_OBJECT_CODE: TAbmesFloatField
      FieldName = 'GRAPH_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryGraphObjectPointsGRAPH_OBJECT_POINT_NO: TAbmesFloatField
      FieldName = 'GRAPH_OBJECT_POINT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryGraphObjectPointsX: TAbmesFloatField
      FieldName = 'X'
    end
    object qryGraphObjectPointsY: TAbmesFloatField
      FieldName = 'Y'
    end
  end
  object qryGraphObjectTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      'from '
      '  GRAPH_OBJECT_TYPES')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 304
    object qryGraphObjectTypesGRAPH_OBJECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'GRAPH_OBJECT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryGraphObjectTypesGRAPH_OBJECT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'GRAPH_OBJECT_TYPE_NAME'
      Size = 50
    end
  end
  object prvGraphObjectTypes: TDataSetProvider
    DataSet = qryGraphObjectTypes
    Left = 56
    Top = 256
  end
  object prvGraphObjectSet: TDataSetProvider
    DataSet = qryGraphObjectSet
    Left = 192
    Top = 256
  end
  object dsGraphObjectSet: TDataSource
    DataSet = qryGraphObjectSet
    Left = 288
    Top = 256
  end
  object dsGraphObjects: TDataSource
    DataSet = qryGraphObjects
    Left = 384
    Top = 256
  end
  object qryDeptPeriodData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dp.PARALLEL_PROCESS_COUNT'
      ''
      'from'
      '  DEPT_PERIODS dp'
      ''
      'where'
      '  (dp.DEPT_CODE = :DEPT_CODE) and'
      '  (:THE_DATE between dp.BEGIN_DATE and dp.END_DATE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 264
    Top = 176
    object qryDeptPeriodDataPARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'PARALLEL_PROCESS_COUNT'
    end
  end
  object qryGetDeptBranchCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  b.DEPT_CODE'
      'from'
      '  ( select'
      '      d.DEPT_CODE,'
      '      level as BRANCH_LEVEL'
      '    from'
      '      DEPTS d'
      '    where'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            BRANCHES b'
      '          where'
      '            (b.BRANCH_CODE = d.DEPT_CODE)'
      '        )'
      '      )'
      '    start with'
      '      (d.DEPT_CODE = :DEPT_CODE)'
      '    connect by'
      '      (d.DEPT_CODE = prior d.PARENT_CODE)'
      '  ) b'
      'where'
      '  (b.BRANCH_LEVEL ='
      '    ( select'
      '        Min(level)'
      '      from'
      '        DEPTS d'
      '      where'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              BRANCHES b'
      '            where'
      '              (b.BRANCH_CODE = d.DEPT_CODE)'
      '          )'
      '        )'
      '      start with'
      '        (d.DEPT_CODE = :DEPT_CODE)'
      '      connect by'
      '        (d.DEPT_CODE = prior d.PARENT_CODE)'
      '    )'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 648
    Top = 296
    object qryGetDeptBranchCodeDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      Required = True
    end
  end
end
