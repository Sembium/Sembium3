inherited dmDeptsTreeEditor: TdmDeptsTreeEditor
  OldCreateOrder = True
  Height = 498
  Width = 910
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
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as S' +
        'HOW_NO,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      BRANCHES b'
      '    where'
      '      (b.BRANCH_CODE = d.DEPT_CODE)'
      '  ) as IS_BRANCH,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      FIN_STORES fs'
      '    where'
      '      (fs.STORE_CODE = d.DEPT_CODE)'
      '  ) as IS_FIN_STORE,'
      ''
      '  d.IS_EXTERNAL,'
      '  d.IS_RECURRENT,'
      ''
      '  case'
      '    when (ContextDate < d.BEGIN_DATE) then 2'
      '    when (ContextDate between d.BEGIN_DATE and d.END_DATE) then 0'
      '  else'
      '    1'
      '  end as INACTIVE_TYPE_CODE'
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
    object qryTreeNodeChildrenIS_BRANCH: TAbmesFloatField [10]
      FieldName = 'IS_BRANCH'
    end
    object qryTreeNodeChildrenIS_EXTERNAL: TAbmesFloatField [11]
      FieldName = 'IS_EXTERNAL'
    end
    object qryTreeNodeChildrenIS_RECURRENT: TAbmesFloatField [12]
      FieldName = 'IS_RECURRENT'
    end
    object qryTreeNodeChildrenINACTIVE_TYPE_CODE: TAbmesFloatField [13]
      FieldName = 'INACTIVE_TYPE_CODE'
    end
  end
  inherited qryTreeToNode: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  d.DEPT_CODE as NODE_ID,'
      '  d.PARENT_CODE as PARENT_NODE_ID,'
      '  d.NAME as NODE_NAME,'
      '  d.CUSTOM_CODE as NODE_NO,'
      '  Decode(d.DEPT_CODE, :ROOT_NODE_ID, 0, 1) as NODE_TYPE,'
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      DEPTS d3'
      '    where'
      '      (d3.PARENT_CODE = d.DEPT_CODE) and'
      '      (d3.IS_GROUP = 1)'
      '  ) as IS_EXPANDABLE,'
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
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as S' +
        'HOW_NO,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      BRANCHES b'
      '    where'
      '      (b.BRANCH_CODE = d.DEPT_CODE)'
      '  ) as IS_BRANCH,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      FIN_STORES fs'
      '    where'
      '      (fs.STORE_CODE = d.DEPT_CODE)'
      '  ) as IS_FIN_STORE,'
      ''
      '  d.IS_EXTERNAL,'
      '  d.IS_RECURRENT,'
      ''
      '  case'
      '    when (ContextDate < d.BEGIN_DATE) then 2'
      '    when (ContextDate between d.BEGIN_DATE and d.END_DATE) then 0'
      '  else'
      '    1'
      '  end as INACTIVE_TYPE_CODE  '
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
    object qryTreeToNodeIS_BRANCH: TAbmesFloatField [11]
      FieldName = 'IS_BRANCH'
    end
    object qryTreeToNodeIS_EXTERNAL: TAbmesFloatField [12]
      FieldName = 'IS_EXTERNAL'
    end
    object qryTreeToNodeIS_RECURRENT: TAbmesFloatField [13]
      FieldName = 'IS_RECURRENT'
    end
    object qryTreeToNodeINACTIVE_TYPE_CODE: TAbmesFloatField [14]
      FieldName = 'INACTIVE_TYPE_CODE'
    end
  end
  inherited qryNodeChildren: TAbmesSQLQuery
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
      '  d.IS_EXTERNAL,'
      '  d.IS_RECURRENT,'
      ''
      '  d.BEGIN_DATE,'
      '  d.END_DATE,'
      ''
      '  case'
      
        '    when (ContextDate between d.BEGIN_DATE and Coalesce(d.END_DATE' +
        ', ContextDate)) then 0'
      '  else'
      '    1'
      '  end as IS_INACTIVE,'
      ''
      '  d.IS_GROUP,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as S' +
        'HOW_NO,'
      ''
      '  d.DEPT_CODE,'
      '  d.PARENT_CODE,'
      '  d.NAME,'
      '  d.CUSTOM_CODE,'
      '  d.DEPT_TYPE_CODE,'
      '  d.SUFFIX_LETTER,'
      '  d.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  Nvl2(b.BRANCH_CODE, 1, 0) as IS_BRANCH,'
      '  d.DOC_BRANCH_CODE,'
      '  d.DOC_CODE,'
      ''
      '  Nvl2(s.STORE_CODE, 1, 0) as IS_STORE,'
      '  Coalesce(s.IS_COMPUTERIZED, 0) as IS_COMPUTERIZED_STORE,'
      '  s.STORE_TYPE_CODE,'
      ''
      '  pd.IS_RECURRENT as PARENT_IS_RECURRENT,'
      '  pd.BEGIN_DATE as PARENT_BEGIN_DATE,'
      '  pd.END_DATE as PARENT_END_DATE,'
      ''
      '  %HAS_DOC_ITEMS[d] as HAS_DOCUMENTATION,'
      ''
      '  ContextNow as CHANGE_DATE_TIME,'
      ''
      '  ('
      '    select'
      '      dd.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS dd'
      '    where'
      '      (dd.DOC_BRANCH_CODE = d.DOC_BRANCH_CODE) and'
      '      (dd.DOC_CODE = d.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      dd.IS_COMPLETE'
      '    from'
      '      DOCS dd'
      '    where'
      '      (dd.DOC_BRANCH_CODE = d.DOC_BRANCH_CODE) and'
      '      (dd.DOC_CODE = d.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = d.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = d.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = d.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = d.DOC_CODE) and'
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
      '      (di.DOC_BRANCH_CODE = d.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = d.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      FIN_STORES fs'
      '    where'
      '      (fs.STORE_CODE = d.DEPT_CODE)'
      '  ) as IS_FIN_STORE,'
      ''
      '  case'
      '    when (ContextDate < d.BEGIN_DATE) then 2'
      '    when (ContextDate between d.BEGIN_DATE and d.END_DATE) then 0'
      '  else'
      '    1'
      '  end as INACTIVE_TYPE_CODE,'
      ''
      '  ( select'
      '      db.DUMMY_BLOB_DATA'
      '    from'
      '      DUMMY_BLOB db'
      '  ) as PRC_DATA,'
      ''
      '  d.IS_OWD_PRIORITIES_SET_COMPLETE,'
      '  d.SKIP_OWDP_TYPE_CHECK'
      ''
      'from'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  BRANCHES b,'
      '  PRODUCTS p,'
      '  STORES s,'
      '  DEPTS pd'
      ''
      'where'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (d.DEPT_CODE = b.BRANCH_CODE(+)) and'
      '  (d.PRODUCT_CODE = p.PRODUCT_CODE(+)) and'
      '  (d.DEPT_CODE = s.STORE_CODE(+)) and'
      '  (d.PARENT_CODE = pd.DEPT_CODE(+)) and'
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
    TableName = 'DEPTS_FOR_EDIT'
    AfterProviderStartTransaction = qryNodeChildrenAfterProviderStartTransaction
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
    object qryNodeChildrenIS_EXTERNAL: TAbmesFloatField [5]
      FieldName = 'IS_EXTERNAL'
    end
    object qryNodeChildrenIS_RECURRENT: TAbmesFloatField [6]
      FieldName = 'IS_RECURRENT'
    end
    object qryNodeChildrenBEGIN_DATE: TAbmesSQLTimeStampField [7]
      FieldName = 'BEGIN_DATE'
    end
    object qryNodeChildrenEND_DATE: TAbmesSQLTimeStampField [8]
      FieldName = 'END_DATE'
    end
    inherited qryNodeChildrenIS_INACTIVE: TAbmesFloatField
      ProviderFlags = []
    end
    object qryNodeChildrenDEPT_CODE: TAbmesFloatField [10]
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNodeChildrenPARENT_CODE: TAbmesFloatField [11]
      FieldName = 'PARENT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNodeChildrenNAME: TAbmesWideStringField [12]
      FieldName = 'NAME'
      Size = 100
    end
    object qryNodeChildrenCUSTOM_CODE: TAbmesFloatField [13]
      FieldName = 'CUSTOM_CODE'
    end
    object qryNodeChildrenIS_GROUP: TAbmesFloatField [14]
      FieldName = 'IS_GROUP'
      ProviderFlags = [pfInUpdate]
    end
    object qryNodeChildrenDEPT_TYPE_CODE: TAbmesFloatField [15]
      FieldName = 'DEPT_TYPE_CODE'
    end
    object qryNodeChildrenSUFFIX_LETTER: TAbmesWideStringField [16]
      FieldName = 'SUFFIX_LETTER'
      Size = 1
    end
    object qryNodeChildrenIS_BRANCH: TAbmesFloatField [17]
      FieldName = 'IS_BRANCH'
      ProviderFlags = []
    end
    inherited qryNodeChildrenSHOW_NO: TAbmesWideStringField
      ProviderFlags = []
    end
    inherited qryNodeChildrenIS_STORE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited qryNodeChildrenIS_COMPUTERIZED_STORE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited qryNodeChildrenHAS_DOCUMENTATION: TAbmesFloatField
      ProviderFlags = []
    end
    object qryNodeChildrenPRODUCT_NAME: TAbmesWideStringField [22]
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryNodeChildrenPRODUCT_NO: TAbmesFloatField [23]
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryNodeChildrenDOC_BRANCH_CODE: TAbmesFloatField [24]
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryNodeChildrenDOC_CODE: TAbmesFloatField [25]
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    inherited qryNodeChildrenIS_FIN_STORE: TAbmesFloatField
      ProviderFlags = []
    end
    object qryNodeChildrenCHANGE_DATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE_TIME'
      ProviderFlags = []
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
    object qryNodeChildrenPARENT_IS_RECURRENT: TAbmesFloatField
      FieldName = 'PARENT_IS_RECURRENT'
      ProviderFlags = []
    end
    object qryNodeChildrenPARENT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PARENT_BEGIN_DATE'
      ProviderFlags = []
    end
    object qryNodeChildrenPARENT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PARENT_END_DATE'
      ProviderFlags = []
    end
    object qryNodeChildrenINACTIVE_TYPE_CODE: TAbmesFloatField
      FieldName = 'INACTIVE_TYPE_CODE'
      ProviderFlags = []
    end
    object qryNodeChildrenSTORE_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_TYPE_CODE'
      ProviderFlags = []
    end
    object qryNodeChildrenPRC_DATA: TBlobField
      FieldName = 'PRC_DATA'
      ProviderFlags = []
      BlobType = ftOraBlob
      Size = 1
    end
    object qryNodeChildrenIS_OWD_PRIORITIES_SET_COMPLETE: TAbmesFloatField
      FieldName = 'IS_OWD_PRIORITIES_SET_COMPLETE'
      Required = True
    end
    object qryNodeChildrenSKIP_OWDP_TYPE_CHECK: TAbmesFloatField
      FieldName = 'SKIP_OWDP_TYPE_CHECK'
      Required = True
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
      '  Coalesce(s.IS_COMPUTERIZED, 0) as IS_COMPUTERIZED_STORE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      BRANCHES b'
      '    where'
      '      (b.BRANCH_CODE = d.DEPT_CODE)'
      '  ) as IS_BRANCH,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      FIN_STORES fs'
      '    where'
      '      (fs.STORE_CODE = d.DEPT_CODE)'
      '  ) as IS_FIN_STORE,'
      ''
      '  d.IS_EXTERNAL,'
      '  d.IS_RECURRENT,'
      ''
      '  case'
      '    when (ContextDate < d.BEGIN_DATE) then 2'
      '    when (ContextDate between d.BEGIN_DATE and d.END_DATE) then 0'
      '  else'
      '    1'
      '  end as INACTIVE_TYPE_CODE  '
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
    object qryTreeNodeIS_BRANCH: TAbmesFloatField
      FieldName = 'IS_BRANCH'
    end
    object qryTreeNodeIS_FIN_STORE: TAbmesFloatField
      FieldName = 'IS_FIN_STORE'
    end
    object qryTreeNodeIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
    end
    object qryTreeNodeIS_RECURRENT: TAbmesFloatField
      FieldName = 'IS_RECURRENT'
    end
    object qryTreeNodeINACTIVE_TYPE_CODE: TAbmesFloatField
      FieldName = 'INACTIVE_TYPE_CODE'
    end
  end
  inherited prvNodeChildren: TDataSetProvider
    Options = [poPropogateChanges]
    OnUpdateError = prvNodeChildrenUpdateError
    AfterUpdateRecord = prvNodeChildrenAfterUpdateRecord
    BeforeUpdateRecord = prvNodeChildrenBeforeUpdateRecord
    BeforeApplyUpdates = prvNodeChildrenBeforeApplyUpdates
    AfterApplyUpdates = prvNodeChildrenAfterApplyUpdates
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
      ''
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
      '  case'
      '    when (ContextDate < d.BEGIN_DATE) then 2'
      '    when (ContextDate between d.BEGIN_DATE and d.END_DATE) then 0'
      '  else'
      '    1'
      '  end as INACTIVE_TYPE_CODE,'
      ''
      '  0 as HAS_CHILDREN,'
      '  Cast(null as Varchar2(20 char)) as SHOW_NO,'
      ''
      '  d.IS_EXTERNAL,'
      '  d.IS_RECURRENT,'
      '  Nvl2(b.BRANCH_CODE, 1, 0) as IS_BRANCH,'
      '  Nvl2(s.STORE_CODE, 1, 0) as IS_STORE,'
      '  ( select'
      '      Count(*)'
      '    from'
      '      FIN_STORES fs'
      '    where'
      '      (fs.STORE_CODE = d.DEPT_CODE)'
      '  ) as IS_FIN_STORE'
      ''
      'from'
      '  DEPTS d,'
      '  BRANCHES b,'
      '  STORES s'
      ''
      'where'
      '  (d.DEPT_CODE = b.BRANCH_CODE(+)) and'
      '  (d.DEPT_CODE = s.STORE_CODE(+)) and'
      ''
      '  (d.DEPT_CODE = :NODE_ID)'
      ''
      'order by'
      '  ORDER_NO')
    object qryPrintTreeINACTIVE_TYPE_CODE: TAbmesFloatField [9]
      FieldName = 'INACTIVE_TYPE_CODE'
    end
    object qryPrintTreeIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
      Required = True
    end
    object qryPrintTreeIS_RECURRENT: TAbmesFloatField
      FieldName = 'IS_RECURRENT'
      Required = True
    end
    object qryPrintTreeIS_BRANCH: TAbmesFloatField
      FieldName = 'IS_BRANCH'
    end
    object qryPrintTreeIS_STORE: TAbmesFloatField
      FieldName = 'IS_STORE'
    end
    object qryPrintTreeIS_FIN_STORE: TAbmesFloatField
      FieldName = 'IS_FIN_STORE'
    end
  end
  inherited prvShowNodeParams: TDataSetProvider
    Options = []
    OnGetData = prvShowNodeParamsGetData
    BeforeUpdateRecord = prvShowNodeParamsBeforeUpdateRecord
    Left = 640
  end
  inherited qryShowNodeParams: TAbmesSQLQuery
    SQL.Strings = (
      'select'
      '  o.OCCUPATION_CODE as NODE_PARAM_CODE,'
      '  o.OCCUPATION_NAME as NODE_PARAM_NAME,'
      '  '#39'nothing'#39' as PARAM_VALUE,'
      '  To_Number(null) as VALUE_TYPE,'
      '  To_number(null) as NODE_PARAM_ORDER_NO,'
      ''
      '  case'
      
        '    when (ContextDate between o.OCCUPATION_BEGIN_DATE and o.OCCUPA' +
        'TION_END_DATE) then 1'
      '  else'
      '    0'
      '  end as IS_ACTIVE,'
      ''
      '  case'
      '    when (ContextDate > o.OCCUPATION_END_DATE) then 1'
      '  else'
      '    0'
      '  end as IS_PAST,'
      ''
      '  case'
      '    when (ContextDate < o.OCCUPATION_BEGIN_DATE) then 1'
      '  else'
      '    0'
      '  end as IS_FUTURE,'
      ''
      '  ('
      '    select'
      '      Sign(Count(*))'
      '    from'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      
        '      (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNM' +
        'ENT_END_DATE)'
      '  ) as IS_OCCUPIED,'
      ''
      '  o.OCCUPATION_CODE,'
      '  o.IS_MAIN,'
      '  ('
      '    select'
      
        '      (op.OCCUPATION_PHASE_CODE || '#39' - '#39' || op.OCCUPATION_PHASE_' +
        'NAME)'
      '    from'
      '      OCCUPATION_PHASES op'
      '    where'
      '      (op.OCCUPATION_PHASE_CODE = o.OCCUPATION_PHASE_CODE)'
      '  ) as OCCUPATION_PHASE_NAME,'
      ''
      '  1 as IS_DEFINED,'
      '  0 as IS_INHERITED,'
      ''
      '  o.DOC_BRANCH_CODE,'
      '  o.DOC_CODE,'
      '  %HAS_DOC_ITEMS[o] as HAS_DOC_ITEMS,'
      ''
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = o.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = o.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = o.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = o.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = o.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = o.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = o.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = o.DOC_CODE) and'
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
      '      (di.DOC_BRANCH_CODE = o.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = o.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
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
      '  IS_FUTURE,'
      '  IS_ACTIVE,'
      '  NODE_PARAM_NAME,'
      '  NODE_PARAM_CODE')
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[o]'
        ParamType = ptInput
        Value = '1'
      end>
    Left = 640
    inherited qryShowNodeParamsNODE_PARAM_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited qryShowNodeParamsNODE_PARAM_NAME: TAbmesWideStringField
      ProviderFlags = []
    end
    inherited qryShowNodeParamsNODE_PARAM_ORDER_NO: TAbmesFloatField
      ProviderFlags = []
    end
    inherited qryShowNodeParamsPARAM_VALUE: TAbmesWideStringField
      ProviderFlags = []
    end
    object qryShowNodeParamsOCCUPATION_CODE: TAbmesFloatField [4]
      FieldName = 'OCCUPATION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryShowNodeParamsIS_MAIN: TAbmesFloatField [5]
      FieldName = 'IS_MAIN'
    end
    object qryShowNodeParamsOCCUPATION_PHASE_NAME: TAbmesWideStringField [6]
      FieldName = 'OCCUPATION_PHASE_NAME'
      Size = 93
    end
    object qryShowNodeParamsIS_ACTIVE: TAbmesFloatField [7]
      FieldName = 'IS_ACTIVE'
      FieldValueType = fvtBoolean
    end
    object qryShowNodeParamsIS_PAST: TAbmesFloatField [8]
      FieldName = 'IS_PAST'
    end
    object qryShowNodeParamsIS_FUTURE: TAbmesFloatField [9]
      FieldName = 'IS_FUTURE'
    end
    object qryShowNodeParamsIS_OCCUPIED: TAbmesFloatField [10]
      FieldName = 'IS_OCCUPIED'
      FieldValueType = fvtBoolean
    end
    object qryShowNodeParamsIS_DEFINED: TAbmesFloatField [11]
      FieldName = 'IS_DEFINED'
    end
    object qryShowNodeParamsDOC_BRANCH_CODE: TAbmesFloatField [12]
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryShowNodeParamsDOC_CODE: TAbmesFloatField [13]
      FieldName = 'DOC_CODE'
    end
    object qryShowNodeParamsHAS_DOC_ITEMS: TAbmesFloatField [14]
      FieldName = 'HAS_DOC_ITEMS'
    end
    object qryShowNodeParamsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField [15]
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object qryShowNodeParamsDOC_IS_COMPLETE: TAbmesFloatField [16]
      FieldName = 'DOC_IS_COMPLETE'
    end
    object qryShowNodeParamsACTIVE_DI_COUNT: TAbmesFloatField [17]
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object qryShowNodeParamsUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField [18]
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
    end
    object qryShowNodeParamsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField [19]
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object qryShowNodeParamsIS_INHERITED: TAbmesFloatField
      FieldName = 'IS_INHERITED'
    end
  end
  inherited qryPrintTreeChildren: TAbmesSQLQuery
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
      '  case'
      '    when (ContextDate < d.BEGIN_DATE) then 2'
      '    when (ContextDate between d.BEGIN_DATE and d.END_DATE) then 0'
      '  else'
      '    1'
      '  end as INACTIVE_TYPE_CODE,'
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
      '  (level - 1) as LEVEL_NO,'
      ''
      '  d.IS_EXTERNAL,'
      '  d.IS_RECURRENT,'
      '  Nvl2(b.BRANCH_CODE, 1, 0) as IS_BRANCH,'
      '  Nvl2(s.STORE_CODE, 1, 0) as IS_STORE,'
      '  ( select'
      '      Count(*)'
      '    from'
      '      FIN_STORES fs'
      '    where'
      '      (fs.STORE_CODE = d.DEPT_CODE)'
      '  ) as IS_FIN_STORE'
      ''
      'from'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  BRANCHES b,'
      '  STORES s'
      ''
      'where'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      ''
      '  (d.DEPT_CODE = b.BRANCH_CODE(+)) and'
      '  (d.DEPT_CODE = s.STORE_CODE(+)) and'
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
        Value = '1'
      end>
    object qryPrintTreeChildrenINACTIVE_TYPE_CODE: TAbmesFloatField [7]
      FieldName = 'INACTIVE_TYPE_CODE'
    end
    object qryPrintTreeChildrenIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
      Required = True
    end
    object qryPrintTreeChildrenIS_RECURRENT: TAbmesFloatField
      FieldName = 'IS_RECURRENT'
      Required = True
    end
    object qryPrintTreeChildrenIS_BRANCH: TAbmesFloatField
      FieldName = 'IS_BRANCH'
    end
    object qryPrintTreeChildrenIS_STORE: TAbmesFloatField
      FieldName = 'IS_STORE'
    end
    object qryPrintTreeChildrenIS_FIN_STORE: TAbmesFloatField
      FieldName = 'IS_FIN_STORE'
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
        Name = 'INACTIVE_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SHOW_NO'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'LEVEL_NO'
        DataType = ftFloat
      end
      item
        Name = 'IS_EXTERNAL'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'IS_RECURRENT'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'IS_BRANCH'
        DataType = ftFloat
      end
      item
        Name = 'IS_STORE'
        DataType = ftFloat
      end
      item
        Name = 'IS_FIN_STORE'
        DataType = ftFloat
      end>
    object cdsPrintTreeChildrenINACTIVE_TYPE_CODE: TAbmesFloatField [9]
      FieldName = 'INACTIVE_TYPE_CODE'
    end
    object cdsPrintTreeChildrenIS_EXTERNAL: TAbmesFloatField [10]
      FieldName = 'IS_EXTERNAL'
      Required = True
    end
    object cdsPrintTreeChildrenIS_RECURRENT: TAbmesFloatField [11]
      FieldName = 'IS_RECURRENT'
      Required = True
    end
    object cdsPrintTreeChildrenIS_BRANCH: TAbmesFloatField [12]
      FieldName = 'IS_BRANCH'
    end
    object cdsPrintTreeChildrenIS_STORE: TAbmesFloatField [13]
      FieldName = 'IS_STORE'
    end
    object cdsPrintTreeChildrenIS_FIN_STORE: TAbmesFloatField [14]
      FieldName = 'IS_FIN_STORE'
    end
  end
  inherited qryFindTreeNodes: TAbmesSQLQuery
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
    Left = 704
    Top = 80
  end
  inherited prvFindTreeNodes: TDataSetProvider
    Left = 704
    Top = 32
  end
  inherited qryDeptDoc: TAbmesSQLQuery
    Left = 552
    Top = 136
  end
  inherited qryDateDeptPrices: TAbmesSQLQuery
    Left = 648
    Top = 192
  end
  object prvDeptTypes: TDataSetProvider
    DataSet = qryDeptTypes
    Options = [poReadOnly]
    Left = 544
    Top = 8
  end
  object qryDeptTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      ''
      'from'
      '  DEPT_TYPES')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 544
    Top = 56
    object qryDeptTypesDEPT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_TYPE_CODE'
    end
    object qryDeptTypesDEPT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DEPT_TYPE_ABBREV'
      Size = 5
    end
    object qryDeptTypesDEPT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DEPT_TYPE_NAME'
      Size = 50
    end
  end
  object qryMaxDeptCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  Max(DEPT_CODE) as MAX_DEPT_CODE'
      ''
      'from'
      '  DEPTS')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 240
    object qryMaxDeptCodeMAX_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAX_DEPT_CODE'
    end
  end
  object qryAddBranch: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into BRANCHES'
      '('
      '  BRANCH_CODE'
      ')'
      'values'
      '('
      '  :BRANCH_CODE'
      ')'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 352
    Top = 136
  end
  object qryDelBranch: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete from BRANCHES'
      ''
      'where'
      '  (BRANCH_CODE = :BRANCH_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 352
    Top = 184
  end
  object qryInsStore: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_COMPUTERIZED_STORE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into STORES'
      '('
      '  STORE_CODE,'
      '  IS_COMPUTERIZED,'
      '  STORE_TYPE_CODE'
      ')'
      'values'
      '('
      '  :DEPT_CODE,'
      '  :IS_COMPUTERIZED_STORE,'
      '  :STORE_TYPE_CODE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 272
    Top = 128
  end
  object qryUpdStore: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_COMPUTERIZED_STORE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  STORES'
      'set'
      '  IS_COMPUTERIZED = :IS_COMPUTERIZED_STORE,'
      '  STORE_TYPE_CODE = :STORE_TYPE_CODE'
      'where'
      '  (STORE_CODE = :DEPT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 272
    Top = 176
  end
  object qryDelStore: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  STORES'
      'where'
      '  (STORE_CODE = :DEPT_CODE)'
      '  ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 272
    Top = 224
  end
  object prvDeptPeriods: TDataSetProvider
    DataSet = qryDeptPeriods
    UpdateMode = upWhereKeyOnly
    OnUpdateError = prvDeptPeriodsUpdateError
    BeforeUpdateRecord = prvDeptPeriodsBeforeUpdateRecord
    BeforeApplyUpdates = prvDeptPeriodsBeforeApplyUpdates
    AfterApplyUpdates = prvDeptPeriodsAfterApplyUpdates
    Left = 568
    Top = 208
  end
  object qryDeptPeriods: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dp.DEPT_PERIOD_CODE,'
      '  dp.DEPT_CODE,'
      '  dp.BEGIN_DATE,'
      '  dp.END_DATE,'
      '  dp.HOUR_PRICE,'
      '  dp.MAINTAINANCE_HOUR_PRICE,'
      '  dp.CHANGE_EMPLOYEE_CODE,'
      '  dp.CHANGE_DATE,'
      '  dp.CHANGE_TIME,'
      '  dp.EST_CAPACITY_DAY_LIMIT_HOURS,'
      '  dp.PARALLEL_PROCESS_COUNT,'
      '  dp.PARALLEL_OPERATOR_COUNT,'
      '  dp.DOC_BRANCH_CODE,'
      '  dp.DOC_CODE,'
      '  %HAS_DOC_ITEMS[dp] as HAS_DOC_ITEMS,'
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = dp.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = dp.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = dp.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = dp.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = dp.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = dp.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = dp.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = dp.DOC_CODE) and'
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
      '      (di.DOC_BRANCH_CODE = dp.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = dp.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  case'
      '    when (dp.END_DATE < ContextDate) then 1'
      '    else 0'
      '  end as IS_PAST,'
      ''
      '  case'
      
        '    when (ContextDate between dp.BEGIN_DATE and dp.END_DATE) then ' +
        '1'
      '    else 0'
      '  end as IS_PRESENT,'
      ''
      '  case'
      '    when (ContextDate < dp.BEGIN_DATE) then 1'
      '    else 0'
      '  end as IS_FUTURE'
      ''
      'from'
      '  DEPT_PERIODS dp'
      ''
      'where'
      '  (dp.DEPT_CODE = :DEPT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[dp]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'DEPT_PERIODS_FOR_EDIT'
    AfterProviderStartTransaction = qryDeptPeriodsAfterProviderStartTransaction
    Left = 568
    Top = 256
    object qryDeptPeriodsDEPT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'DEPT_PERIOD_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDeptPeriodsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryDeptPeriodsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryDeptPeriodsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryDeptPeriodsHOUR_PRICE: TAbmesFloatField
      FieldName = 'HOUR_PRICE'
    end
    object qryDeptPeriodsMAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      FieldName = 'MAINTAINANCE_HOUR_PRICE'
    end
    object qryDeptPeriodsCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryDeptPeriodsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryDeptPeriodsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryDeptPeriodsEST_CAPACITY_DAY_LIMIT_HOURS: TAbmesFloatField
      FieldName = 'EST_CAPACITY_DAY_LIMIT_HOURS'
    end
    object qryDeptPeriodsPARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'PARALLEL_PROCESS_COUNT'
    end
    object qryDeptPeriodsPARALLEL_OPERATOR_COUNT: TAbmesFloatField
      FieldName = 'PARALLEL_OPERATOR_COUNT'
    end
    object qryDeptPeriodsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDeptPeriodsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDeptPeriodsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryDeptPeriodsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      ProviderFlags = []
    end
    object qryDeptPeriodsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      ProviderFlags = []
    end
    object qryDeptPeriodsACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryDeptPeriodsUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryDeptPeriodsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryDeptPeriodsIS_PAST: TAbmesFloatField
      FieldName = 'IS_PAST'
      ProviderFlags = []
    end
    object qryDeptPeriodsIS_PRESENT: TAbmesFloatField
      FieldName = 'IS_PRESENT'
      ProviderFlags = []
    end
    object qryDeptPeriodsIS_FUTURE: TAbmesFloatField
      FieldName = 'IS_FUTURE'
      ProviderFlags = []
    end
  end
  object qryNewDeptPeriodCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_DEPT_PERIODS.NextVal as NEW_DEPT_PERIOD_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 568
    Top = 304
    object qryNewDeptPeriodCodeNEW_DEPT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'NEW_DEPT_PERIOD_CODE'
    end
  end
  object qryDelDeptPeriods: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  DEPT_PERIODS_FOR_EDIT dp'
      'where'
      '  (dp.DEPT_CODE = :DEPT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 448
    Top = 304
  end
  object qryDeleteOccupation: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  OCCUPATIONS_FOR_EDIT o'
      'where'
      '  (o.OCCUPATION_CODE = :OCCUPATION_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 640
    Top = 136
  end
  object qryDeptPeriodsHeader: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  d.DEPT_CODE,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as S' +
        'HOW_NO,'
      '  d.NAME,'
      '  d.DOC_BRANCH_CODE,'
      '  d.DOC_CODE,'
      '  d.BEGIN_DATE,'
      '  d.END_DATE,'
      '  %HAS_DOC_ITEMS[d] as HAS_DOCUMENTATION,'
      '  Nvl2(b.BRANCH_CODE, 1, 0) as IS_BRANCH,'
      '  Nvl2(s.STORE_CODE, 1, 0) as IS_STORE,'
      '  Coalesce(s.IS_COMPUTERIZED, 0) as IS_COMPUTERIZED_STORE,'
      '  d.IS_EXTERNAL,'
      '  d.IS_RECURRENT'
      ''
      'from'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  BRANCHES b,'
      '  STORES s'
      ''
      'where'
      '  (d.DEPT_CODE = :DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (d.DEPT_CODE = b.BRANCH_CODE(+)) and'
      '  (d.DEPT_CODE = s.STORE_CODE(+))')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[d]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 664
    Top = 288
    object qryDeptPeriodsHeaderDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryDeptPeriodsHeaderSHOW_NO: TAbmesWideStringField
      FieldName = 'SHOW_NO'
      Size = 46
    end
    object qryDeptPeriodsHeaderNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 100
    end
    object qryDeptPeriodsHeaderDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDeptPeriodsHeaderDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDeptPeriodsHeaderBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryDeptPeriodsHeaderEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryDeptPeriodsHeaderHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryDeptPeriodsHeaderIS_BRANCH: TAbmesFloatField
      FieldName = 'IS_BRANCH'
    end
    object qryDeptPeriodsHeaderIS_STORE: TAbmesFloatField
      FieldName = 'IS_STORE'
    end
    object qryDeptPeriodsHeaderIS_COMPUTERIZED_STORE: TAbmesFloatField
      FieldName = 'IS_COMPUTERIZED_STORE'
    end
    object qryDeptPeriodsHeaderIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
    end
    object qryDeptPeriodsHeaderIS_RECURRENT: TAbmesFloatField
      FieldName = 'IS_RECURRENT'
    end
  end
  object prvDeptPeriodsHeader: TDataSetProvider
    DataSet = qryDeptPeriodsHeader
    Options = [poReadOnly, poUseQuoteChar]
    Left = 664
    Top = 240
  end
  object prvStoreMinQuantities: TDataSetProvider
    DataSet = qryStoreMinQuantities
    UpdateMode = upWhereKeyOnly
    OnUpdateError = prvStoreMinQuantitiesUpdateError
    BeforeUpdateRecord = prvStoreMinQuantitiesBeforeUpdateRecord
    BeforeApplyUpdates = prvStoreMinQuantitiesBeforeApplyUpdates
    Left = 784
    Top = 8
  end
  object qryStoreMinQuantities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ps.PRODUCT_STORE_CODE,'
      ''
      '  ps.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_COEF,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  ps.STORE_CODE,'
      '  ps.BEGIN_DATE,'
      '  ps.END_DATE,'
      ''
      '  case'
      '    when (ps.END_DATE < ContextDate) then 1'
      '    else 0'
      '  end as IS_PAST,'
      ''
      '  case'
      
        '    when (ContextDate between ps.BEGIN_DATE and ps.END_DATE) then ' +
        '1'
      '    else 0'
      '  end as IS_PRESENT,'
      ''
      '  case'
      '    when (ContextDate < ps.BEGIN_DATE) then 1'
      '    else 0'
      '  end as IS_FUTURE,'
      ''
      '  ps.MIN_QUANTITY,'
      
        '  (ps.MIN_QUANTITY * p.ACCOUNT_MEASURE_COEF) as ACCOUNT_MIN_QUAN' +
        'TITY,'
      ''
      '  ps.DOC_BRANCH_CODE,'
      '  ps.DOC_CODE,'
      '  %HAS_DOC_ITEMS[ps] as HAS_DOC_ITEMS'
      ''
      'from'
      '  PRODUCT_STORES ps,'
      '  PRODUCTS p'
      '  '
      'where'
      '  (ps.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (ps.STORE_CODE = :DEPT_CODE)'
      '  '
      'order by'
      '  PRODUCT_NO,'
      '  BEGIN_DATE'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[ps]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PRODUCT_STORES_FOR_EDIT'
    Left = 784
    Top = 56
    object qryStoreMinQuantitiesPRODUCT_STORE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_STORE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryStoreMinQuantitiesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryStoreMinQuantitiesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryStoreMinQuantitiesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryStoreMinQuantitiesMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      ProviderFlags = []
    end
    object qryStoreMinQuantitiesACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryStoreMinQuantitiesACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryStoreMinQuantitiesPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryStoreMinQuantitiesSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryStoreMinQuantitiesBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryStoreMinQuantitiesEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryStoreMinQuantitiesIS_PAST: TAbmesFloatField
      FieldName = 'IS_PAST'
      ProviderFlags = []
    end
    object qryStoreMinQuantitiesIS_PRESENT: TAbmesFloatField
      FieldName = 'IS_PRESENT'
      ProviderFlags = []
    end
    object qryStoreMinQuantitiesIS_FUTURE: TAbmesFloatField
      FieldName = 'IS_FUTURE'
      ProviderFlags = []
    end
    object qryStoreMinQuantitiesMIN_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_QUANTITY'
    end
    object qryStoreMinQuantitiesACCOUNT_MIN_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_MIN_QUANTITY'
      ProviderFlags = []
    end
    object qryStoreMinQuantitiesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryStoreMinQuantitiesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryStoreMinQuantitiesHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
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
    Left = 784
    Top = 104
    object qryNewProductStoreCodeNEW_PRODUCT_STORE_CODE: TAbmesFloatField
      FieldName = 'NEW_PRODUCT_STORE_CODE'
    end
  end
  object qryInsFinStore: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into FIN_STORES'
      '('
      '  STORE_CODE'
      ')'
      'values'
      '('
      '  :DEPT_CODE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 752
    Top = 320
  end
  object qryDelFinStore: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  FIN_STORES fs'
      'where'
      '  (fs.STORE_CODE = :DEPT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 840
    Top = 320
  end
  object prvStoreTypes: TDataSetProvider
    DataSet = qryStoreTypes
    Options = [poReadOnly, poUseQuoteChar]
    Left = 656
    Top = 352
  end
  object qryStoreTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  st.STORE_TYPE_CODE,'
      '  st.STORE_TYPE_NAME,'
      '  st.STORE_TYPE_ABBREV'
      '  '
      'from'
      '  STORE_TYPES st'
      ''
      'order by'
      '  st.STORE_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 656
    Top = 400
    object qryStoreTypesSTORE_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_TYPE_CODE'
      Required = True
    end
    object qryStoreTypesSTORE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'STORE_TYPE_NAME'
      Required = True
      Size = 100
    end
    object qryStoreTypesSTORE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'STORE_TYPE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object qryDeptOWDPriorities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dowdp.DEPT_CODE,'
      '  dowdp.OCC_WORK_DEPT_PRIORITY_CODE,'
      '  dowdp.DEPT_OWDP_COVER_TYPE_CODE,'
      ''
      '  ( select'
      '      owdp.OCC_WORK_DEPT_PRIORITY_NO'
      '    from'
      '      OCC_WORK_DEPT_PRIORITIES owdp'
      '    where'
      
        '      (owdp.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WORK_DEPT_PR' +
        'IORITY_CODE)'
      '  ) as OCC_WORK_DEPT_PRIORITY_NO,'
      ''
      '  ( select'
      '      owdp.OCC_WORK_DEPT_PRIORITY_NAME'
      '    from'
      '      OCC_WORK_DEPT_PRIORITIES owdp'
      '    where'
      
        '      (owdp.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WORK_DEPT_PR' +
        'IORITY_CODE)'
      '  ) as OCC_WORK_DEPT_PRIORITY_NAME,'
      ''
      '  To_Number(null) as HAS_NOT_COVERED_DESCENDANT'
      ''
      'from'
      '  DEPT_OWD_PRIORITIES dowdp'
      ''
      'where'
      '  (dowdp.DEPT_CODE = :DEPT_CODE)'
      ''
      'order by'
      '  OCC_WORK_DEPT_PRIORITY_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'DEPT_OWD_PRIORITIES'
    Left = 56
    Top = 440
    object qryDeptOWDPrioritiesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDeptOWDPrioritiesDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
      Required = True
    end
    object qryDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NO'
      ProviderFlags = []
    end
    object qryDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryDeptOWDPrioritiesHAS_NOT_COVERED_DESCENDANT: TAbmesFloatField
      FieldName = 'HAS_NOT_COVERED_DESCENDANT'
      ProviderFlags = []
    end
  end
  object prvDeptOWDPriorities: TDataSetProvider
    DataSet = qryDeptOWDPriorities
    UpdateMode = upWhereKeyOnly
    OnUpdateError = prvDeptOWDPrioritiesUpdateError
    BeforeUpdateRecord = prvDeptOWDPrioritiesBeforeUpdateRecord
    BeforeApplyUpdates = prvDeptOWDPrioritiesBeforeApplyUpdates
    Left = 56
    Top = 392
  end
  object qryDeptNotOWDPriorities: TAbmesSQLQuery
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
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_Number(:DEPT_CODE) as DEPT_CODE,'
      '  owdp.OCC_WORK_DEPT_PRIORITY_CODE,'
      '  owdp.OCC_WORK_DEPT_PRIORITY_NO,'
      '  owdp.OCC_WORK_DEPT_PRIORITY_NAME,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      DEPT_RELATIONS dr,'
      '      DEPT_OWD_PRIORITIES dowdp2'
      '    where'
      '      (dr.ANCESTOR_DEPT_CODE = :DEPT_CODE) and'
      '      (dr.DESCENDANT_DEPT_CODE = dowdp2.DEPT_CODE) and'
      
        '      (dowdp2.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WORK_DEPT_P' +
        'RIORITY_CODE) and'
      '      (dowdp2.DEPT_OWDP_COVER_TYPE_CODE = %dowdpct_ANCESTOR) and'
      '      (not exists'
      '        ( select'
      '            1'
      '          from'
      '            DEPT_RELATIONS dr2,'
      '            DEPT_OWD_PRIORITIES dowdp3'
      '          where'
      
        '            (dr2.DESCENDANT_DEPT_CODE = dr.DESCENDANT_DEPT_CODE)' +
        ' and'
      '            (dr2.ANCESTOR_DEPT_CODE = dowdp3.DEPT_CODE) and'
      
        '            (dowdp3.OCC_WORK_DEPT_PRIORITY_CODE = dowdp2.OCC_WOR' +
        'K_DEPT_PRIORITY_CODE) and'
      
        '            (dowdp3.DEPT_OWDP_COVER_TYPE_CODE = %dowdpct_LOCAL_A' +
        'ND_DESCENDANTS)'
      '        )'
      '      )'
      '  ) as HAS_NOT_COVERED_DESCENDANT'
      ''
      'from'
      '  OCC_WORK_DEPT_PRIORITIES owdp'
      ''
      'where'
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        DEPT_OWD_PRIORITIES dowdp'
      '      where'
      '        (dowdp.DEPT_CODE = :DEPT_CODE) and'
      
        '        (dowdp.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WORK_DEPT_' +
        'PRIORITY_CODE)'
      '    )'
      '  )'
      ''
      'order by'
      '  owdp.OCC_WORK_DEPT_PRIORITY_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'dowdpct_ANCESTOR'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'dowdpct_LOCAL_AND_DESCENDANTS'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 184
    Top = 440
    object qryDeptNotOWDPrioritiesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryDeptNotOWDPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
      Required = True
    end
    object qryDeptNotOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NO'
      Required = True
    end
    object qryDeptNotOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NAME'
      Required = True
      Size = 50
    end
    object qryDeptNotOWDPrioritiesHAS_NOT_COVERED_DESCENDANT: TAbmesFloatField
      FieldName = 'HAS_NOT_COVERED_DESCENDANT'
    end
  end
  object prvDeptNotOWDPriorities: TDataSetProvider
    DataSet = qryDeptNotOWDPriorities
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 392
  end
  object qryDeptCapacityGeneratorOWDPrioritiesCount: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Count(*) as CAPACITY_GEN_COUNT'
      'from'
      '  DEPT_OWD_PRIORITIES dowdp,'
      '  OCC_WORK_DEPT_PRIORITIES owdp'
      'where'
      
        '  (dowdp.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WORK_DEPT_PRIORI' +
        'TY_CODE) and'
      ''
      '  (dowdp.DEPT_CODE = :DEPT_CODE) and'
      '  (owdp.IS_CAPACITY_GENERATOR = 1)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 376
    Top = 440
    object qryDeptCapacityGeneratorOWDPrioritiesCountCAPACITY_GEN_COUNT: TAbmesFloatField
      FieldName = 'CAPACITY_GEN_COUNT'
    end
  end
end
