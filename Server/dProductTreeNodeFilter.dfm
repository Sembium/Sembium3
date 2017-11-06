inherited dmProductTreeNodeFilter: TdmProductTreeNodeFilter
  inherited qryInsFilteredNodes: TAbmesSQLQuery
    SQL.Strings = (
      
        'insert /*+ APPEND */ into %TEMP_FILTERED_NODES_TABLE_NAME (PRODU' +
        'CT_CODE)'
      'select'
      '  pr.DESCENDANT_PRODUCT_CODE as NODE_CODE'
      ''
      'from'
      '  PRODUCT_RELATIONS pr,'
      '  %TEMP_CHOSEN_NODES_TABLE_NAME tcp'
      ''
      'where'
      '  (pr.ANCESTOR_PRODUCT_CODE = tcp.PRODUCT_CODE)'
      ''
      'group by'
      '  pr.DESCENDANT_PRODUCT_CODE'
      ''
      'having'
      '  (Count(*) ='
      '    ( select'
      '        Max(tcnm.FILTER_LEVEL_NO)'
      '      from'
      '        %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcnm'
      '    )'
      '  )'
      ''
      'order by'
      '  NODE_CODE'
      ''
      '')
    Macros = <
      item
        DataType = ftWideString
        Name = 'TEMP_FILTERED_NODES_TABLE_NAME'
        ParamType = ptInput
        Value = 'TEMP_FILTERED_PRODUCTS'
      end
      item
        DataType = ftWideString
        Name = 'TEMP_CHOSEN_NODES_TABLE_NAME'
        ParamType = ptInput
        Value = 'TEMP_CHOSEN_PRODUCTS'
      end
      item
        DataType = ftWideString
        Name = 'TEMP_CHOSEN_NODE_MISCS_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end>
  end
  inherited qryInsChosenNode: TAbmesSQLQuery
    SQL.Strings = (
      'insert into %TEMP_CHOSEN_NODES_TABLE_NAME'
      '('
      '  FILTER_LEVEL_NO,'
      '  PRODUCT_CODE'
      ')'
      'values'
      '('
      '  :FILTER_LEVEL_NO,'
      '  :NODE_CODE'
      ')'
      ''
      '')
    Macros = <
      item
        DataType = ftWideString
        Name = 'TEMP_CHOSEN_NODES_TABLE_NAME'
        ParamType = ptInput
        Value = 'TEMP_CHOSEN_PRODUCTS'
      end>
  end
  inherited qryInsChosenNodeMisc: TAbmesSQLQuery
    Params = <
      item
        DataType = ftFloat
        Name = 'FILTER_LEVEL_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_NODES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USED_BY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROVIDED_BY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_ORIGIN_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACTIVE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME'
      '('
      '  FILTER_LEVEL_NO,'
      '  ALL_FILTERED_NODES,'
      '  USED_BY_CODE,'
      '  PROVIDED_BY_CODE,'
      '  PRODUCT_ORIGIN_CODE,'
      '  COMMON_STATUS_CODE,'
      '  ACTIVE_CODE'
      ')'
      'values'
      '('
      '  :FILTER_LEVEL_NO,'
      '  :ALL_FILTERED_NODES,'
      '  :USED_BY_CODE,'
      '  :PROVIDED_BY_CODE,'
      '  :PRODUCT_ORIGIN_CODE,'
      '  :COMMON_STATUS_CODE,'
      '  :ACTIVE_CODE'
      ')')
  end
  object qryInsFilteredDepts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'insert /*+ APPEND */ into %TEMP_FILTERED_NODES_TABLE_NAME (DEPT_' +
        'CODE)'
      'select'
      '  d.DEPT_CODE'
      ''
      'from'
      '  DEPTS d'
      ''
      'where'
      '  ( (not exists'
      '      ( select'
      '          1'
      '        from'
      '          %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcnm'
      '        where'
      '          (tcnm.ALL_NODES_FILTERED = 0)'
      '      )'
      '    ) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          ( select'
      '              pr.DESCENDANT_PRODUCT_CODE as PRODUCT_CODE'
      '            from'
      '              PRODUCT_RELATIONS pr,'
      '              %TEMP_CHOSEN_NODES_TABLE_NAME tcp'
      '            where'
      '              (pr.ANCESTOR_PRODUCT_CODE = tcp.PRODUCT_CODE)'
      '            group by'
      '              pr.DESCENDANT_PRODUCT_CODE'
      '            having'
      '              (Count(*) ='
      '                ( select'
      '                    Max(tcnm.FILTER_LEVEL_NO)'
      '                  from'
      '                    %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcnm'
      '                )'
      '              )'
      '          ) x'
      '        where'
      '          (x.PRODUCT_CODE = d.PRODUCT_CODE)'
      '      )'
      '    )'
      '  )'
      ''
      'order by'
      '  d.DEPT_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'TEMP_FILTERED_NODES_TABLE_NAME'
        ParamType = ptInput
        Value = 'TEMP_FILTERED_DEPTS'
      end
      item
        DataType = ftWideString
        Name = 'TEMP_CHOSEN_NODE_MISCS_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'TEMP_CHOSEN_NODES_TABLE_NAME'
        ParamType = ptInput
        Value = 'TEMP_CHOSEN_PRODUCTS'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 192
  end
  object qryGetRootCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE'
      'from'
      '  PRODUCTS p'
      'where'
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      '  (p.CUSTOM_CODE is null)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 200
    Top = 16
    object qryGetRootCodePRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
  end
end
