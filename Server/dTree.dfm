inherited dmTree: TdmTree
  Height = 220
  Width = 473
  object qryTreeNodeChildren: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      '//This line is to crash this query. It is abstract.'
      'select'
      '  p.PRODUCT_CODE as NODE_ID,'
      '  p.PARENT_CODE as PARENT_NODE_ID,'
      '  p.NAME as NODE_NAME,'
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
      '  ) as IS_EXPANDABLE'
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
      '  NODE_NAME,'
      '  NODE_ID')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 40
    Top = 56
    object qryTreeNodeChildrenNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTreeNodeChildrenPARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object qryTreeNodeChildrenNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 100
    end
    object qryTreeNodeChildrenNODE_TYPE: TAbmesFloatField
      FieldName = 'NODE_TYPE'
    end
    object qryTreeNodeChildrenIS_EXPANDABLE: TAbmesFloatField
      FieldName = 'IS_EXPANDABLE'
    end
  end
  object qryTreeToNode: TAbmesSQLQuery
    MaxBlobSize = -1
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
      end>
    SQL.Strings = (
      '//This line is to crash this query. It is abstract.'
      'select'
      '  p.PRODUCT_CODE as NODE_ID,'
      '  p.PARENT_CODE as PARENT_NODE_ID,'
      '  p.NAME as NODE_NAME,'
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
      ''
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
      '  not exists('
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
      '  NODE_NAME')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 160
    Top = 56
    object qryTreeToNodeNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTreeToNodePARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object qryTreeToNodeNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 100
    end
    object qryTreeToNodeNODE_TYPE: TAbmesFloatField
      FieldName = 'NODE_TYPE'
    end
    object qryTreeToNodeIS_EXPANDABLE: TAbmesFloatField
      FieldName = 'IS_EXPANDABLE'
    end
    object qryTreeToNodeIS_THE_PARENT: TAbmesFloatField
      FieldName = 'IS_THE_PARENT'
    end
    object qryTreeToNodeNODE_REAL_LEVEL: TAbmesFloatField
      FieldName = 'NODE_REAL_LEVEL'
    end
  end
  object qryNodeChildren: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
        Value = '0'
      end>
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
      '  ) as NODE_TYPE'
      ''
      'from'
      '  PRODUCTS p'
      ''
      'where'
      '  (p.PARENT_CODE = :NODE_ID)'
      '  '
      'order by'
      '  NODE_TYPE,'
      '  NODE_NAME')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 264
    Top = 56
    object qryNodeChildrenNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNodeChildrenPARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object qryNodeChildrenNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 100
    end
    object qryNodeChildrenNODE_TYPE: TAbmesFloatField
      FieldName = 'NODE_TYPE'
    end
  end
  object qryTreeNode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      '//This line is to crash this query. It is abstract.'
      'select'
      '  p.PRODUCT_CODE as NODE_ID,'
      '  p.PARENT_CODE as PARENT_NODE_ID,'
      '  p.NAME as NODE_NAME,'
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
      'order by'
      '  NODE_ID,'
      '  PARENT_NODE_ID,'
      '  NODE_NAME')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 56
    object qryRootNodeNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryRootNodePARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object qryRootNodeNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 100
    end
    object qryRootNodeNODE_TYPE: TAbmesFloatField
      FieldName = 'NODE_TYPE'
    end
    object qryRootNodeIS_EXPANDABLE: TAbmesFloatField
      FieldName = 'IS_EXPANDABLE'
    end
  end
  object prvTreeNodeChildren: TDataSetProvider
    DataSet = qryTreeNodeChildren
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 8
  end
  object prvTreeToNode: TDataSetProvider
    DataSet = qryTreeToNode
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 160
    Top = 8
  end
  object prvNodeChildren: TDataSetProvider
    DataSet = qryNodeChildren
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 264
    Top = 8
  end
  object prvTreeNode: TDataSetProvider
    DataSet = qryTreeNode
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 360
    Top = 8
  end
  object qryIsDescendantOf: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ROOT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  nr.DESCENDANT_NODE_ID as DESCENDANT_NODE_ID'
      ''
      'from'
      '  NODE_RELATIONS nr'
      ''
      'where'
      '  (nr.ANCESTOR_NODE_ID = :ROOT_ID) and'
      '  (nr.DESCENDANT_NODE_ID = :NODE_ID)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 160
    Top = 112
    object qryIsDescendantOfDESCENDANT_NODE_ID: TAbmesFloatField
      FieldName = 'DESCENDANT_NODE_ID'
    end
  end
  object qryNodeIsInstance: TAbmesSQLQuery
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
      '  1 as IS_INSTANCE'
      'from'
      '  DEFINITE_PRODUCTS dp'
      'where'
      '  (dp.PRODUCT_CODE = :NODE_ID)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 40
    Top = 112
    object qryNodeIsInstanceIS_INSTANCE: TAbmesFloatField
      FieldName = 'IS_INSTANCE'
      FieldValueType = fvtBoolean
    end
  end
end
