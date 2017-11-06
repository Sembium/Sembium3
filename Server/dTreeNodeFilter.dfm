inherited dmTreeNodeFilter: TdmTreeNodeFilter
  Height = 273
  Width = 433
  object qryInsFilteredNodes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'this line is here to break the query'
      ''
      
        'insert /*+ APPEND */ into %TEMP_FILTERED_NODES_TABLE_NAME (NODE_' +
        'CODE)'
      'select'
      '  nr.DESCENDANT_NODE_CODE as NODE_CODE'
      ''
      'from'
      '  NODE_RELATIONS nr,'
      '  %TEMP_CHOSEN_NODES_TABLE_NAME tcn'
      ''
      'where'
      '  (nr.ANCESTOR_NODE_CODE = tcn.NODE_CODE)'
      ''
      'group by'
      '  nr.DESCENDANT_NODE_CODE'
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
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'TEMP_FILTERED_NODES_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'TEMP_CHOSEN_NODES_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'TEMP_CHOSEN_NODE_MISCS_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 136
  end
  object qryInsChosenNode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FILTER_LEVEL_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'this line is here to damage the query'
      ''
      'insert into %TEMP_CHOSEN_NODES_TABLE_NAME'
      '('
      '  FILTER_LEVEL_NO,'
      '  NODE_CODE'
      ')'
      'values'
      '('
      '  :FILTER_LEVEL_NO,'
      '  :NODE_CODE'
      ')'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'TEMP_CHOSEN_NODES_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 24
  end
  object qryInsChosenNodeMisc: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FILTER_LEVEL_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'this line is here to damage the query'
      ''
      'insert into %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME'
      '('
      '  FILTER_LEVEL_NO,'
      '  LIST_ALL_MISC_FIELDS_HERE'
      ')'
      'values'
      '('
      '  :FILTER_LEVEL_NO,'
      '  LIST_ALL_MISC_VALUES_HERE'
      ')')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'TEMP_CHOSEN_NODE_MISCS_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 80
  end
end
