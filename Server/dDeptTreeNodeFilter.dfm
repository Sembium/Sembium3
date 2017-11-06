inherited dmDeptTreeNodeFilter: TdmDeptTreeNodeFilter
  inherited qryInsFilteredNodes: TAbmesSQLQuery
    SQL.Strings = (
      
        'insert /*+ APPEND */ into %TEMP_FILTERED_NODES_TABLE_NAME (DEPT_' +
        'CODE)'
      'select'
      '  dr.DESCENDANT_DEPT_CODE as NODE_CODE'
      ''
      'from'
      '  DEPT_RELATIONS dr,'
      '  %TEMP_CHOSEN_NODES_TABLE_NAME tcd,'
      '  %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcdm'
      ''
      'where'
      '  (dr.ANCESTOR_DEPT_CODE = tcd.DEPT_CODE) and'
      '  (tcd.FILTER_LEVEL_NO = tcdm.FILTER_LEVEL_NO) and'
      ''
      '  ( (tcdm.ALL_FILTERED_NODES = 1) or'
      '    ( (tcdm.EXTERNAL is null) and'
      '      (tcdm.RECURRENT is null) and'
      '      (tcdm.ACTIVE is null) and'
      '      (tcdm.STORE_TYPE_CODE is null) and'
      '      (tcdm.DEPTH is null)'
      '    ) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          DEPTS d'
      '        where'
      '          (d.DEPT_CODE = dr.DESCENDANT_DEPT_CODE) and'
      ''
      '          ( (tcdm.EXTERNAL is null) or'
      '            ( (tcdm.EXTERNAL = 1) and'
      '              (d.IS_EXTERNAL = 1)'
      '            ) or'
      '            ( (tcdm.EXTERNAL = 2) and'
      '              (d.IS_EXTERNAL = 0)'
      '            )'
      '          ) and'
      ''
      '          ( (tcdm.RECURRENT is null) or'
      '            ( (tcdm.RECURRENT = 1) and'
      '              (d.IS_RECURRENT = 1)'
      '            ) or'
      '            ( (tcdm.RECURRENT = 2) and'
      '              (d.IS_RECURRENT = 0)'
      '            )'
      '          ) and'
      ''
      '          ( (tcdm.ACTIVE is null) or'
      '            ( (tcdm.ACTIVE = 1) and'
      '              (ContextDate between d.BEGIN_DATE and d.END_DATE)'
      '            ) or'
      '            ( (tcdm.ACTIVE = 2) and'
      
        '              (not ContextDate between d.BEGIN_DATE and d.END_DATE' +
        ')'
      '            )'
      '          ) and'
      ''
      '          ( (tcdm.STORE_TYPE_CODE is null) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  STORES s'
      '                where'
      '                  (s.STORE_CODE = d.DEPT_CODE) and'
      '                  (s.STORE_TYPE_CODE = tcdm.STORE_TYPE_CODE)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (tcdm.DEPTH is null) or'
      '            (dr.ANCESTOR_DEPT_CODE = dr.DESCENDANT_DEPT_CODE)'
      '          )'
      '      )'
      '    )'
      '  )'
      ''
      'group by'
      '  dr.DESCENDANT_DEPT_CODE'
      ''
      'having'
      '  (Count(*) ='
      '    ( select'
      '        Max(tcdm2.FILTER_LEVEL_NO)'
      '      from'
      '        %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcdm2'
      '    )'
      '  )'
      ''
      'order by'
      '  NODE_CODE'
      '')
    Macros = <
      item
        DataType = ftWideString
        Name = 'TEMP_FILTERED_NODES_TABLE_NAME'
        ParamType = ptInput
        Value = 'TEMP_FILTERED_DEPTS'
      end
      item
        DataType = ftWideString
        Name = 'TEMP_CHOSEN_NODES_TABLE_NAME'
        ParamType = ptInput
        Value = 'TEMP_CHOSEN_DEPTS'
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
      '  DEPT_CODE'
      ')'
      'values'
      '('
      '  :FILTER_LEVEL_NO,'
      '  :NODE_CODE'
      ')'
      '')
    Macros = <
      item
        DataType = ftWideString
        Name = 'TEMP_CHOSEN_NODES_TABLE_NAME'
        ParamType = ptInput
        Value = 'TEMP_CHOSEN_DEPTS'
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
        Name = 'EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECURRENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPTH'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME'
      '('
      '  FILTER_LEVEL_NO,'
      '  ALL_FILTERED_NODES,'
      '  EXTERNAL,'
      '  RECURRENT,'
      '  ACTIVE,'
      '  STORE_TYPE_CODE,'
      '  DEPTH'
      ')'
      'values'
      '('
      '  :FILTER_LEVEL_NO,'
      '  :ALL_FILTERED_NODES,'
      '  :EXTERNAL,'
      '  :RECURRENT,'
      '  :ACTIVE,'
      '  :STORE_TYPE_CODE,'
      '  :DEPTH'
      ')')
  end
end
