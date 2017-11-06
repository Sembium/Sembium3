inherited dmNomTree: TdmNomTree
  Height = 287
  Width = 731
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
      '  )'
      ''
      'order by'
      '  NODE_NO,'
      '  NODE_NAME,'
      '  NODE_ID')
    object qryTreeNodeChildrenNODE_NO: TAbmesFloatField [3]
      FieldName = 'NODE_NO'
    end
    object qryTreeNodeChildrenIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  inherited qryTreeToNode: TAbmesSQLQuery
    SQL.Strings = (
      '//This line is to crash this query. It is abstract.'
      'select'
      '  p.PRODUCT_CODE as NODE_ID,'
      '  p.PARENT_CODE as PARENT_NODE_ID,'
      '  p.NAME as NODE_NAME,'
      '  p.CUSTOM_CODE as NODE_NO,'
      '  Decode(p.PRODUCT_CODE, :ROOT_NODE_ID, 0, 1) as NODE_TYPE,'
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      PRODUCTS p3'
      '    where'
      '      (p.PRODUCT_CODE = p3.PARENT_CODE) and'
      ''
      '      exists('
      '        select'
      '          1'
      '        from'
      '          GROUP_PRODUCTS gp2'
      '        where'
      '          (gp2.PRODUCT_CODE = p3.PRODUCT_CODE)'
      '      )'
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
      '  )'
      ''
      'order by'
      '  NODE_REAL_LEVEL,'
      '  NODE_NO,'
      '  NODE_NAME')
    object qryTreeToNodeNODE_NO: TAbmesFloatField [3]
      FieldName = 'NODE_NO'
    end
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
      '  p.IS_INACTIVE'
      ''
      'from'
      '  PRODUCTS p'
      ''
      'where'
      '  (p.PARENT_CODE = :NODE_ID)'
      ''
      'order by'
      '  NODE_TYPE,'
      '  NODE_NO,'
      '  NODE_NAME')
    object qryNodeChildrenNODE_NO: TAbmesFloatField
      FieldName = 'NODE_NO'
    end
    object qryNodeChildrenIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  inherited qryTreeNode: TAbmesSQLQuery
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
      '      PRODUCTS p2,'
      '      PRODUCTS p3'
      '    where'
      '      (p.PRODUCT_CODE = p2.PARENT_CODE) and'
      '      (p2.PRODUCT_CODE = p3.PARENT_CODE)'
      '  ) as IS_EXPANDABLE'
      ''
      'from'
      '  PRODUCTS p'
      ''
      'where'
      '  (p.PRODUCT_CODE = :NODE_ID)'
      ''
      ''
      'order by'
      '  NODE_ID,'
      '  PARENT_NODE_ID,'
      '  NODE_NAME')
    object qryTreeNodeNODE_NO: TAbmesFloatField [3]
      FieldName = 'NODE_NO'
    end
  end
  inherited prvNodeChildren: TDataSetProvider
    BeforeGetRecords = prvNodeChildrenBeforeGetRecords
  end
  object qryPrintTree: TAbmesSQLQuery
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
      '  0 as HAS_CHILDREN'
      ''
      'from'
      '  PRODUCTS p'
      ''
      'where'
      '  (p.PRODUCT_CODE = :NODE_ID)'
      ''
      'order by'
      '  ORDER_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
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
        Name = 'MAX_RECORDS'
        ParamType = ptUnknown
        Value = '5000'
      end>
    Left = 456
    Top = 56
    object qryPrintTreeNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
    end
    object qryPrintTreePARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object qryPrintTreeNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 100
    end
    object qryPrintTreeNODE_NO: TAbmesFloatField
      FieldName = 'NODE_NO'
    end
    object qryPrintTreeNODE_LEVEL: TAbmesFloatField
      FieldName = 'NODE_LEVEL'
    end
    object qryPrintTreeIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
    end
    object qryPrintTreeORDER_NO: TAbmesFloatField
      FieldName = 'ORDER_NO'
    end
    object qryPrintTreeNODE_TYPE: TAbmesFloatField
      FieldName = 'NODE_TYPE'
    end
    object qryPrintTreeIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
    object qryPrintTreeHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
    end
  end
  object prvPrintTree: TDataSetProvider
    DataSet = qryPrintTree
    OnGetData = prvPrintTreeGetData
    BeforeGetRecords = prvPrintTreeBeforeGetRecords
    Left = 456
    Top = 8
  end
  object qryNodeData: TAbmesSQLQuery
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
      '  p.CUSTOM_CODE as NODE_NO,'
      '  p.NAME as NODE_NAME'
      'from'
      '  PRODUCTS p'
      'where'
      '  (p.PRODUCT_CODE = :NODE_ID)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 40
    Top = 176
    object qryNodeDataNODE_NO: TAbmesFloatField
      FieldName = 'NODE_NO'
    end
    object qryNodeDataNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 100
    end
  end
  object qryNodeID: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '//This line is to crash this query. It is abstract.'
      'select'
      '  p.PRODUCT_CODE as NODE_ID'
      'from'
      '  PRODUCTS p'
      '  '
      'where'
      '  (p.CUSTOM_CODE = :NODE_NO)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 120
    Top = 176
    object qryNodeIDNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
    end
  end
  object prvShowNodeParams: TDataSetProvider
    DataSet = qryShowNodeParams
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 552
    Top = 8
  end
  object qryShowNodeParams: TAbmesSQLQuery
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
      '  pp.VALUE_TYPE'
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
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 56
    object qryShowNodeParamsNODE_PARAM_CODE: TAbmesFloatField
      FieldName = 'NODE_PARAM_CODE'
    end
    object qryShowNodeParamsNODE_PARAM_NAME: TAbmesWideStringField
      FieldName = 'NODE_PARAM_NAME'
      Size = 50
    end
    object qryShowNodeParamsNODE_PARAM_ORDER_NO: TAbmesFloatField
      FieldName = 'NODE_PARAM_ORDER_NO'
    end
    object qryShowNodeParamsPARAM_VALUE: TAbmesWideStringField
      FieldName = 'PARAM_VALUE'
      Size = 250
    end
    object qryShowNodeParamsVALUE_TYPE: TAbmesFloatField
      FieldName = 'VALUE_TYPE'
    end
  end
  object prvPrintTreeChildren: TDataSetProvider
    DataSet = qryPrintTreeChildren
    Exported = False
    Options = [poReadOnly]
    Left = 456
    Top = 104
  end
  object qryPrintTreeChildren: TAbmesSQLQuery
    MaxBlobSize = -1
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
      '  (level - 1) as LEVEL_NO'
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
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'ORDER_BY_FIELDS'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 456
    Top = 152
    object qryPrintTreeChildrenNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
    end
    object qryPrintTreeChildrenPARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object qryPrintTreeChildrenNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 100
    end
    object qryPrintTreeChildrenNODE_NO: TAbmesFloatField
      FieldName = 'NODE_NO'
    end
    object qryPrintTreeChildrenNODE_CHILD_COUNT: TAbmesFloatField
      FieldName = 'NODE_CHILD_COUNT'
    end
    object qryPrintTreeChildrenNODE_TYPE: TAbmesFloatField
      FieldName = 'NODE_TYPE'
    end
    object qryPrintTreeChildrenIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      Required = True
    end
    object qryPrintTreeChildrenLEVEL_NO: TAbmesFloatField
      FieldName = 'LEVEL_NO'
    end
  end
  object cdsPrintTreeChildren: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
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
        Name = 'LEVEL_NO'
        DataType = ftFloat
      end
      item
        Name = 'IS_INACTIVE'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    IndexDefs = <>
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
      end>
    ProviderName = 'prvPrintTreeChildren'
    StoreDefs = True
    Left = 456
    Top = 200
    object cdsPrintTreeChildrenNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
    end
    object cdsPrintTreeChildrenPARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object cdsPrintTreeChildrenNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 100
    end
    object cdsPrintTreeChildrenNODE_NO: TAbmesFloatField
      FieldName = 'NODE_NO'
    end
    object cdsPrintTreeChildrenNODE_CHILD_COUNT: TAbmesFloatField
      FieldName = 'NODE_CHILD_COUNT'
    end
    object cdsPrintTreeChildrenNODE_TYPE: TAbmesFloatField
      FieldName = 'NODE_TYPE'
    end
    object cdsPrintTreeChildrenIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      Required = True
    end
    object cdsPrintTreeChildrenLEVEL_NO: TAbmesFloatField
      FieldName = 'LEVEL_NO'
    end
    object cdsPrintTreeChildren_MAX_LEVEL_NO: TAggregateField
      FieldName = '_MAX_LEVEL_NO'
      Active = True
      Expression = 'Max(LEVEL_NO)'
    end
  end
  object qryFindTreeNodes: TAbmesSQLQuery
    BeforeOpen = qryFindTreeNodesBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
        Value = '0'
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
      end>
    SQL.Strings = (
      '//This line is to crash this query. It is abstract.'
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
      '  (p.IS_INACTIVE <= :SHOW_INACTIVE) and'
      ''
      '  ( (:PARENT_CODE is null) or'
      '    (p.PARENT_CODE = :PARENT_CODE) ) and'
      ''
      '  %FIND_CONDITION'
      ''
      'order by'
      '  To_Char(p.CUSTOM_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'FIND_CONDITION'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
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
        Name = 'EXACT_MATCH'
        ParamType = ptUnknown
        Value = '0'
      end>
    Left = 656
    Top = 56
    object qryFindTreeNodesNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
      Required = True
    end
    object qryFindTreeNodesPARENT_NODE_IDS: TAbmesWideStringField
      FieldName = 'PARENT_NODE_IDS'
      Size = 4000
    end
    object qryFindTreeNodesNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Required = True
      Size = 100
    end
    object qryFindTreeNodesNODE_NO: TAbmesFloatField
      FieldName = 'NODE_NO'
    end
  end
  object prvFindTreeNodes: TDataSetProvider
    DataSet = qryFindTreeNodes
    Options = [poReadOnly, poUseQuoteChar]
    Left = 656
    Top = 8
  end
  object shFindStringTemplate: TJvStrHolder
    Capacity = 8
    Macros = <
      item
        Name = 'LIKE_MODIFIER'
        Value = #39'%'#39
      end
      item
        Name = 'FIND_STRING_PARAM_NAME'
      end>
    Left = 656
    Top = 104
    InternalVer = 1
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
        '45207c7c20254c494b455f4d4f444946494552292029'
      '29')
  end
end
