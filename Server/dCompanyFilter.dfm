inherited dmCompanyFilter: TdmCompanyFilter
  inherited qryInsFilteredNodes: TAbmesSQLQuery
    SQL.Strings = (
      
        'insert /*+ APPEND */ into %TEMP_FILTERED_NODES_TABLE_NAME (COMPA' +
        'NY_CODE)'
      'select'
      '  c.COMPANY_CODE'
      ''
      'from'
      '  COMPANIES c,'
      '  %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tccm'
      ''
      'where'
      '  (c.COMPANY_CODE <> 0) and'
      ''
      '  ( (tccm.ALL_FILTERED_NODES = 1) or'
      ''
      '    ( (exists'
      '        ( select'
      '            1'
      '          from'
      '            %TEMP_CHOSEN_NODES_TABLE_NAME tcc'
      '          where'
      '            (tcc.FILTER_LEVEL_NO = tccm.FILTER_LEVEL_NO) and'
      '            (tcc.COMPANY_CODE = c.COMPANY_CODE)'
      '        )'
      '      ) and'
      ''
      '      ( (tccm.COMMON_STATUS_CODE is null) or'
      ''
      '        ( (tccm.COMMON_STATUS_CODE = %csc_SINGLE) and'
      '          (not exists'
      '            ( select'
      '                1'
      '              from'
      '                COMMON_PARTNERS cp'
      '              where'
      '                (cp.PARTNER_CODE = c.COMPANY_CODE)'
      '            )'
      '          ) and'
      '          (not exists'
      '            ( select'
      '                1'
      '              from'
      '                PAR_RELS pr'
      '              where'
      '                (pr.PARTNER_CODE = c.COMPANY_CODE) and'
      '                (pr.COMMON_PARTNER_CODE is not null)'
      '            )'
      '          )'
      '        ) or'
      ''
      '        ( (tccm.COMMON_STATUS_CODE = %csc_COMMON) and'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                COMMON_PARTNERS cp'
      '              where'
      '                (cp.PARTNER_CODE = c.COMPANY_CODE)'
      '            )'
      '          )'
      '        ) or'
      ''
      '        ( (tccm.COMMON_STATUS_CODE = %csc_JOINED) and'
      '          ( (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  PAR_RELS pr'
      '                where'
      '                  (pr.PARTNER_CODE = c.COMPANY_CODE) and'
      '                  (pr.COMMON_PARTNER_CODE is not null)'
      '              )'
      '            )'
      '          )'
      '        )'
      '      )'
      '    ) or'
      ''
      '    ( (tccm.COMMON_STATUS_CODE = %csc_FILTER_THRU_COMMON) and'
      '      ( (exists'
      '          ( select'
      '              1'
      '            from'
      '              PAR_RELS pr'
      '            where'
      '              (pr.PARTNER_CODE = c.COMPANY_CODE) and'
      '              ( ( (pr.COMMON_PARTNER_CODE is not null) and'
      '                  (not exists'
      '                    ( select'
      '                        1'
      '                      from'
      '                        %TEMP_CHOSEN_NODES_TABLE_NAME tcc'
      '                      where'
      
        '                        (tcc.FILTER_LEVEL_NO = tccm.FILTER_LEVEL' +
        '_NO)'
      '                    )'
      '                  )'
      '                ) or'
      '                (exists'
      '                  ( select'
      '                      1'
      '                    from'
      '                      %TEMP_CHOSEN_NODES_TABLE_NAME tcc'
      '                    where'
      
        '                      (tcc.FILTER_LEVEL_NO = tccm.FILTER_LEVEL_N' +
        'O) and'
      
        '                      (tcc.COMPANY_CODE = pr.COMMON_PARTNER_CODE' +
        ')'
      '                  )'
      '                )'
      '              )'
      '          )'
      '        )'
      '      )'
      '    )'
      '  )'
      ''
      'group by'
      '  c.COMPANY_CODE'
      ''
      'having'
      '  (Count(distinct tccm.FILTER_LEVEL_NO) ='
      '    ( select'
      '        Count(*)'
      '      from'
      '        %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME'
      '    )'
      '  )'
      ''
      'order by'
      '  c.COMPANY_CODE'
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
        Name = 'TEMP_CHOSEN_NODE_MISCS_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'TEMP_CHOSEN_NODES_TABLE_NAME'
        ParamType = ptInput
        Value = 'TEMP_CHOSEN_DEPTS'
      end
      item
        DataType = ftWideString
        Name = 'csc_SINGLE'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'csc_COMMON'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'csc_JOINED'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'csc_FILTER_THRU_COMMON'
        ParamType = ptInput
        Value = '0=0'
      end>
  end
  inherited qryInsChosenNode: TAbmesSQLQuery
    SQL.Strings = (
      'insert into %TEMP_CHOSEN_NODES_TABLE_NAME'
      '('
      '  FILTER_LEVEL_NO,'
      '  COMPANY_CODE'
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
        Name = 'COMMON_STATUS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME'
      '('
      '  FILTER_LEVEL_NO,'
      '  ALL_FILTERED_NODES,'
      '  COMMON_STATUS_CODE'
      ')'
      'values'
      '('
      '  :FILTER_LEVEL_NO,'
      '  :ALL_FILTERED_NODES,'
      '  :COMMON_STATUS_CODE'
      ')')
  end
  object mshLocalMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'csc_SINGLE'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'csc_COMMON'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'csc_JOINED'
        Strings.Strings = (
          '3')
      end
      item
        Name = 'csc_FILTER_THRU_COMMON'
        Strings.Strings = (
          '101')
      end>
    Left = 202
    Top = 120
  end
  object qryCompanies: TAbmesSQLQuery
    BeforeOpen = qryCompaniesBeforeOpen
    AfterClose = qryCompaniesAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  c.COMPANY_CODE,'
      '  c.COMPANY_NO,'
      '  Nvl2(p.COMPANY_CODE,'
      
        '    (p.FIRST_NAME || '#39' '#39' || SubStr(p.MIDDLE_NAME, 1, 1) || '#39'. '#39' ' +
        ' || p.LAST_NAME),'
      '    c.SHORT_NAME'
      '  ) as SHORT_NAME,'
      ''
      '  case'
      '    when'
      '      (:ALL_FILTERED_COMPANIES = 1) or'
      '      (not exists'
      '        ( select'
      '            1'
      '          from'
      '            TEMP_FILTERED_COMPANIES tfc'
      '          where'
      '            (tfc.COMPANY_CODE = c.COMPANY_CODE)'
      '        )'
      '      )'
      '    then'
      '      0'
      '    else'
      '      1'
      '  end as IS_CHOSEN'
      ''
      'from'
      '  COMPANIES c,'
      '  PERSONS p'
      ''
      'where'
      '  (c.COMPANY_CODE = p.COMPANY_CODE(+)) and'
      '  (c.COMPANY_CODE <> 0) and'
      ''
      '  ( (exists'
      '      ( select'
      '          1'
      '        from'
      '          CLIENT_COMPANIES cc'
      '        where'
      '          (cc.CLIENT_COMPANY_CODE = c.COMPANY_CODE)'
      '      )'
      '    ) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          VENDOR_COMPANIES vc'
      '        where'
      '          (vc.VENDOR_COMPANY_CODE = c.COMPANY_CODE)'
      '      )'
      '    )'
      '  )'
      ''
      ''
      'order by'
      '  SHORT_NAME')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 320
    Top = 176
    object qryCompaniesCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCompaniesCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
    end
    object qryCompaniesSHORT_NAME: TAbmesWideStringField
      FieldName = 'SHORT_NAME'
      ProviderFlags = []
    end
    object qryCompaniesIS_CHOSEN: TAbmesFloatField
      FieldName = 'IS_CHOSEN'
    end
  end
  object prvCompanies: TDataSetProvider
    DataSet = qryCompanies
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 128
  end
end
