inherited dmParamProductTreeNodeFilter: TdmParamProductTreeNodeFilter
  Width = 554
  inherited qryInsFilteredNodes: TAbmesSQLQuery
    SQL.Strings = (
      
        'insert /*+ APPEND */ into %TEMP_FILTERED_NODES_TABLE_NAME (PRODU' +
        'CT_CODE)'
      'select'
      '  pr.DESCENDANT_PRODUCT_CODE as NODE_CODE'
      ''
      'from'
      '  PRODUCT_RELATIONS pr,'
      '  %TEMP_CHOSEN_NODES_TABLE_NAME tcp,'
      '  %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcpm'
      ''
      'where'
      '  (pr.ANCESTOR_PRODUCT_CODE = tcp.PRODUCT_CODE) and'
      '  (tcp.FILTER_LEVEL_NO = tcpm.FILTER_LEVEL_NO) and'
      ''
      '  ( (tcpm.ALL_FILTERED_NODES = 1) or'
      '    ( (tcpm.USED_BY_CODE is null) and'
      '      (tcpm.PROVIDED_BY_CODE is null) and'
      '      (tcpm.PRODUCT_ORIGIN_CODE is null) and'
      '      (tcpm.COMMON_STATUS_CODE is null) and'
      '      (tcpm.ACTIVE_CODE is null)'
      '    ) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          PRODUCTS p'
      '        where'
      '          (p.PRODUCT_CODE = pr.DESCENDANT_PRODUCT_CODE) and'
      ''
      '          ( (tcpm.USED_BY_CODE is null) or'
      
        '            ( (tcpm.USED_BY_CODE = 1) and (p.IS_USED_BY_SALES = ' +
        '1) ) or'
      
        '            ( (tcpm.USED_BY_CODE = 2) and (p.IS_USED_BY_SALE_PRO' +
        'DUCTION = 1) ) or'
      
        '            ( (tcpm.USED_BY_CODE = 3) and (p.IS_USED_BY_ENV_PROD' +
        'UCTION = 1) )'
      '          ) and'
      ''
      '          ( (tcpm.PROVIDED_BY_CODE is null) or'
      
        '            ( (tcpm.PROVIDED_BY_CODE = 1) and (p.IS_PROVIDED_BY_' +
        'DELIVERIES = 1) ) or'
      
        '            ( (tcpm.PROVIDED_BY_CODE = 2) and (p.IS_PROVIDED_BY_' +
        'SALE_PRODUCTION = 1) ) or'
      
        '            ( (tcpm.PROVIDED_BY_CODE = 3) and (p.IS_PROVIDED_BY_' +
        'ENV_PRODUCTION = 1) )'
      '          ) and'
      ''
      '          ( (tcpm.PRODUCT_ORIGIN_CODE is null) or'
      '            (tcpm.PRODUCT_ORIGIN_CODE = p.PRODUCT_ORIGIN_CODE)'
      '          ) and'
      ''
      '          ( (tcpm.COMMON_STATUS_CODE is null) or'
      '            ( (tcpm.COMMON_STATUS_CODE = 1) and'
      '              (p.IS_COMMON = 0) and'
      '              ( exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    CONCRETE_PRODUCTS cp,'
      '                    DEFINITE_PRODUCTS dp'
      '                  where'
      '                    (cp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '                    (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '                    (dp.COMMON_PRODUCT_CODE is null)'
      '                )'
      '              )'
      '            ) or'
      '            ( (tcpm.COMMON_STATUS_CODE = 2) and'
      '              (p.IS_COMMON = 1)'
      '            ) or'
      '            ( (tcpm.COMMON_STATUS_CODE = 3) and'
      '              (p.IS_COMMON = 0) and'
      '              ( exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    CONCRETE_PRODUCTS cp,'
      '                    DEFINITE_PRODUCTS dp'
      '                  where'
      '                    (cp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '                    (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '                    (dp.COMMON_PRODUCT_CODE is not null)'
      '                )'
      '              )'
      '            ) or'
      '            ( (tcpm.COMMON_STATUS_CODE = 4) and'
      '              (p.IS_COMMON = 0) and'
      '              (p.IS_THOROUGHLY_ENGINEERED = 1) and'
      '              ( exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    CONCRETE_PRODUCTS cp,'
      '                    DEFINITE_PRODUCTS dp'
      '                  where'
      '                    (cp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '                    (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '                    (dp.COMMON_PRODUCT_CODE is not null)'
      '                )'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (tcpm.ACTIVE_CODE is null) or'
      
        '            ( (tcpm.ACTIVE_CODE = 1) and (p.IS_INACTIVE = 0) ) o' +
        'r'
      '            ( (tcpm.ACTIVE_CODE = 2) and (p.IS_INACTIVE = 1) )'
      '          )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (tcpm.ALL_FILTERED_NODES = 1) or'
      '    (not exists'
      '      ( select'
      '          1'
      '        from'
      '          %TEMP_CHOSEN_NODE_PARAMS_TABLE_NAME tcpp'
      '        where'
      '          (tcpp.FILTER_LEVEL_NO = tcp.FILTER_LEVEL_NO) and'
      '          (tcpp.PRODUCT_CODE = tcp.PRODUCT_CODE) and'
      '          (not exists'
      '            ( select'
      '                1'
      '              from'
      '                PRODUCT_PARAMS pp'
      '              where'
      
        '                (pp.PRODUCT_CODE = pr.DESCENDANT_PRODUCT_CODE) a' +
        'nd'
      
        '                (pp.PRODUCT_PARAM_CODE = tcpp.PRODUCT_PARAM_CODE' +
        ') and'
      ''
      '                (pp.IS_DEFINED = 1) and'
      ''
      '                ( (not exists'
      '                    ( select'
      '                        1'
      '                      from'
      
        '                        %TEMP_CHOSEN_NODE_PARAM_VALUES_TABLE_NAM' +
        'E tcppv'
      '                      where'
      
        '                        (tcppv.FILTER_LEVEL_NO = tcpp.FILTER_LEV' +
        'EL_NO) and'
      
        '                        (tcppv.PRODUCT_CODE = tcpp.PRODUCT_CODE)' +
        ' and'
      
        '                        (tcppv.PRODUCT_PARAM_CODE = tcpp.PRODUCT' +
        '_PARAM_CODE)'
      '                    )'
      '                  ) or'
      '                  (exists'
      '                    ( select'
      '                        1'
      '                      from'
      
        '                        %TEMP_CHOSEN_NODE_PARAM_VALUES_TABLE_NAM' +
        'E tcppv'
      '                      where'
      
        '                        (tcppv.FILTER_LEVEL_NO = tcpp.FILTER_LEV' +
        'EL_NO) and'
      
        '                        (tcppv.PRODUCT_CODE = tcpp.PRODUCT_CODE)' +
        ' and'
      
        '                        (tcppv.PRODUCT_PARAM_CODE = tcpp.PRODUCT' +
        '_PARAM_CODE) and'
      ''
      '                        ( ( (pp.VALUE_TYPE = 0) and'
      
        '                            ( ( (tcppv.VALUE_NOM_CODE is null) a' +
        'nd'
      
        '                                (tcppv.VALUE_NOM_ITEM_CODE is nu' +
        'll)'
      '                              ) or'
      
        '                              ( (pp.VALUE_NOM_CODE = tcppv.VALUE' +
        '_NOM_CODE) and'
      
        '                                (pp.VALUE_NOM_ITEM_CODE = tcppv.' +
        'VALUE_NOM_ITEM_CODE)'
      '                              )'
      '                            )'
      '                          ) or'
      '                          ( (pp.VALUE_TYPE = 1) and'
      '                            ( (tcppv.VALUE_FLOAT_MIN is null) or'
      
        '                              (pp.VALUE_FLOAT >= tcppv.VALUE_FLO' +
        'AT_MIN)'
      '                            ) and'
      '                            ( (tcppv.VALUE_FLOAT_MAX is null) or'
      
        '                              (pp.VALUE_FLOAT <= tcppv.VALUE_FLO' +
        'AT_MAX)'
      '                            )'
      '                           ) or'
      '                          ( (pp.VALUE_TYPE = 2) and'
      '                            ( (tcppv.VALUE_STRING is null) or'
      
        '                              (pp.VALUE_STRING like (tcppv.VALUE' +
        '_STRING || '#39'%'#39'))'
      '                            )'
      '                          )'
      '                        )'
      '                    )'
      '                  )'
      '                )'
      '            )'
      '          )'
      '      )'
      '    )'
      '  )'
      ''
      'group by'
      '  pr.DESCENDANT_PRODUCT_CODE'
      ''
      'having'
      '  (Count(*) ='
      '    ( select'
      '        Max(tcpm2.FILTER_LEVEL_NO)'
      '      from'
      '        %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcpm2'
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
      end
      item
        DataType = ftWideString
        Name = 'TEMP_CHOSEN_NODE_PARAMS_TABLE_NAME'
        ParamType = ptInput
        Value = 'TEMP_CHOSEN_PRODUCT_PARAMS'
      end
      item
        DataType = ftString
        Name = 'TEMP_CHOSEN_NODE_PARAM_VALUES_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end>
  end
  inherited qryInsChosenNode: TAbmesSQLQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'FILTER_LEVEL_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_CODE'
        ParamType = ptInput
      end>
  end
  inherited qryInsFilteredDepts: TAbmesSQLQuery
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
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcpm'
      '      where'
      '        (tcpm.ALL_FILTERED_NODES = 0)'
      '    )'
      '  ) or'
      '  ( ( (not exists'
      '        ( select'
      '            1'
      '          from'
      '            %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcpm'
      '          where'
      '            (tcpm.USED_BY_CODE is not null) or'
      '            (tcpm.PROVIDED_BY_CODE is not null) or'
      '            (tcpm.PRODUCT_ORIGIN_CODE is not null) or'
      '            (tcpm.COMMON_STATUS_CODE is not null) or'
      '            (tcpm.ACTIVE_CODE is not null)'
      '        )'
      '      ) or'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            ( select'
      '                p.PRODUCT_CODE'
      ''
      '              from'
      '                PRODUCTS p,'
      '                %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcpm'
      ''
      '              where'
      '                ( (tcpm.USED_BY_CODE is null) or'
      
        '                  ( (tcpm.USED_BY_CODE = 1) and (p.IS_USED_BY_SA' +
        'LES = 1) ) or'
      
        '                  ( (tcpm.USED_BY_CODE = 2) and (p.IS_USED_BY_SA' +
        'LE_PRODUCTION = 1) ) or'
      
        '                  ( (tcpm.USED_BY_CODE = 3) and (p.IS_USED_BY_EN' +
        'V_PRODUCTION = 1) )'
      '                ) and'
      ''
      '                ( (tcpm.PROVIDED_BY_CODE is null) or'
      
        '                  ( (tcpm.PROVIDED_BY_CODE = 1) and (p.IS_PROVID' +
        'ED_BY_DELIVERIES = 1) ) or'
      
        '                  ( (tcpm.PROVIDED_BY_CODE = 2) and (p.IS_PROVID' +
        'ED_BY_SALE_PRODUCTION = 1) ) or'
      
        '                  ( (tcpm.PROVIDED_BY_CODE = 3) and (p.IS_PROVID' +
        'ED_BY_ENV_PRODUCTION = 1) )'
      '                ) and'
      ''
      '                ( (tcpm.PRODUCT_ORIGIN_CODE is null) or'
      
        '                  (tcpm.PRODUCT_ORIGIN_CODE = p.PRODUCT_ORIGIN_C' +
        'ODE)'
      '                ) and'
      ''
      '                ( (tcpm.COMMON_STATUS_CODE is null) or'
      '                  ( (tcpm.COMMON_STATUS_CODE = 1) and'
      '                    (p.IS_COMMON = 0) and'
      '                    ( exists'
      '                      ( select'
      '                          1'
      '                        from'
      '                          CONCRETE_PRODUCTS cp,'
      '                          DEFINITE_PRODUCTS dp'
      '                        where'
      '                          (cp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '                          (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '                          (dp.COMMON_PRODUCT_CODE is null)'
      '                      )'
      '                    )'
      '                  ) or'
      '                  ( (tcpm.COMMON_STATUS_CODE = 2) and'
      '                    (p.IS_COMMON = 1)'
      '                  ) or'
      '                  ( (tcpm.COMMON_STATUS_CODE = 3) and'
      '                    (p.IS_COMMON = 0) and'
      '                    ( exists'
      '                      ( select'
      '                          1'
      '                        from'
      '                          CONCRETE_PRODUCTS cp,'
      '                          DEFINITE_PRODUCTS dp'
      '                        where'
      '                          (cp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '                          (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '                          (dp.COMMON_PRODUCT_CODE is not null)'
      '                      )'
      '                    )'
      '                  ) or'
      '                  ( (tcpm.COMMON_STATUS_CODE = 4) and'
      '                    (p.IS_COMMON = 0) and'
      '                    (p.IS_THOROUGHLY_ENGINEERED = 1) and'
      '                    ( exists'
      '                      ( select'
      '                          1'
      '                        from'
      '                          CONCRETE_PRODUCTS cp,'
      '                          DEFINITE_PRODUCTS dp'
      '                        where'
      '                          (cp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '                          (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '                          (dp.COMMON_PRODUCT_CODE is not null)'
      '                      )'
      '                    )'
      '                  )'
      '                ) and'
      ''
      '                ( (tcpm.ACTIVE_CODE is null) or'
      
        '                  ( (tcpm.ACTIVE_CODE = 1) and (p.IS_INACTIVE = ' +
        '0) ) or'
      
        '                  ( (tcpm.ACTIVE_CODE = 2) and (p.IS_INACTIVE = ' +
        '1) )'
      '                )'
      ''
      '              group by'
      '                p.PRODUCT_CODE'
      ''
      '              having'
      '                (Count(*) ='
      '                  ( select'
      '                      Max(tcpm2.FILTER_LEVEL_NO)'
      '                    from'
      '                      %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcpm2'
      '                  )'
      '                )'
      '            ) x'
      '          where'
      '            (x.PRODUCT_CODE = d.PRODUCT_CODE)'
      '        )'
      '      )'
      '    ) and'
      ''
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          ( select'
      '              pr.DESCENDANT_PRODUCT_CODE as PRODUCT_CODE'
      '            from'
      '              PRODUCT_RELATIONS pr,'
      '              %TEMP_CHOSEN_NODES_TABLE_NAME tcp,'
      '              %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcpm'
      '            where'
      '              (pr.ANCESTOR_PRODUCT_CODE = tcp.PRODUCT_CODE) and'
      '              (tcp.FILTER_LEVEL_NO = tcpm.FILTER_LEVEL_NO) and'
      '              (not exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    %TEMP_CHOSEN_NODE_PARAMS_TABLE_NAME tcpp'
      '                  where'
      
        '                    (tcpp.FILTER_LEVEL_NO = tcp.FILTER_LEVEL_NO)' +
        ' and'
      '                    (tcpp.PRODUCT_CODE = tcp.PRODUCT_CODE) and'
      '                    (not exists'
      '                      ( select'
      '                          1'
      '                        from'
      '                          PRODUCT_PARAMS pp'
      '                        where'
      
        '                          (pp.PRODUCT_CODE = pr.DESCENDANT_PRODU' +
        'CT_CODE) and'
      
        '                          (pp.PRODUCT_PARAM_CODE = tcpp.PRODUCT_' +
        'PARAM_CODE) and'
      ''
      '                          (pp.IS_DEFINED = 1) and'
      ''
      '                          ( (not exists'
      '                              ( select'
      '                                  1'
      '                                from'
      
        '                                  %TEMP_CHOSEN_NODE_PARAM_VALUES' +
        '_TABLE_NAME tcppv'
      '                                where'
      
        '                                  (tcppv.FILTER_LEVEL_NO = tcpp.' +
        'FILTER_LEVEL_NO) and'
      
        '                                  (tcppv.PRODUCT_CODE = tcpp.PRO' +
        'DUCT_CODE) and'
      
        '                                  (tcppv.PRODUCT_PARAM_CODE = tc' +
        'pp.PRODUCT_PARAM_CODE)'
      '                              )'
      '                            ) or'
      '                            (exists'
      '                              ( select'
      '                                  1'
      '                                from'
      
        '                                  %TEMP_CHOSEN_NODE_PARAM_VALUES' +
        '_TABLE_NAME tcppv'
      '                                where'
      
        '                                  (tcppv.FILTER_LEVEL_NO = tcpp.' +
        'FILTER_LEVEL_NO) and'
      
        '                                  (tcppv.PRODUCT_CODE = tcpp.PRO' +
        'DUCT_CODE) and'
      
        '                                  (tcppv.PRODUCT_PARAM_CODE = tc' +
        'pp.PRODUCT_PARAM_CODE) and'
      ''
      '                                  ( ( (pp.VALUE_TYPE = 0) and'
      
        '                                      ( ( (tcppv.VALUE_NOM_CODE ' +
        'is null) and'
      
        '                                          (tcppv.VALUE_NOM_ITEM_' +
        'CODE is null)'
      '                                        ) or'
      
        '                                        ( (pp.VALUE_NOM_CODE = t' +
        'cppv.VALUE_NOM_CODE) and'
      
        '                                          (pp.VALUE_NOM_ITEM_COD' +
        'E = tcppv.VALUE_NOM_ITEM_CODE)'
      '                                        )'
      '                                      )'
      '                                    ) or'
      '                                    ( (pp.VALUE_TYPE = 1) and'
      
        '                                      ( (tcppv.VALUE_FLOAT_MIN i' +
        's null) or'
      
        '                                        (pp.VALUE_FLOAT >= tcppv' +
        '.VALUE_FLOAT_MIN)'
      '                                      ) and'
      
        '                                      ( (tcppv.VALUE_FLOAT_MAX i' +
        's null) or'
      
        '                                        (pp.VALUE_FLOAT <= tcppv' +
        '.VALUE_FLOAT_MAX)'
      '                                      )'
      '                                     ) or'
      '                                    ( (pp.VALUE_TYPE = 2) and'
      
        '                                      ( (tcppv.VALUE_STRING is n' +
        'ull) or'
      
        '                                        (pp.VALUE_STRING like (t' +
        'cppv.VALUE_STRING || '#39'%'#39'))'
      '                                      )'
      '                                    )'
      '                                  )'
      '                              )'
      '                            )'
      '                          )'
      '                      )'
      '                    )'
      '                )'
      '              )'
      ''
      '            group by'
      '              pr.DESCENDANT_PRODUCT_CODE'
      ''
      '            having'
      '              (Count(*) ='
      '                ( select'
      '                    Max(tcpm2.FILTER_LEVEL_NO)'
      '                  from'
      '                    %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcpm2'
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
      end
      item
        DataType = ftWideString
        Name = 'TEMP_CHOSEN_NODE_PARAMS_TABLE_NAME'
        ParamType = ptInput
        Value = 'TEMP_CHOSEN_PRODUCT_PARAMS'
      end
      item
        DataType = ftString
        Name = 'TEMP_CHOSEN_NODE_PARAM_VALUES_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end>
  end
  inherited qryGetRootCode: TAbmesSQLQuery
    Left = 280
    Top = 80
  end
  object qryInsChosenNodeParam: TAbmesSQLQuery
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
      end
      item
        DataType = ftFloat
        Name = 'NODE_PARAM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into %TEMP_CHOSEN_NODE_PARAMS_TABLE_NAME'
      '('
      '  FILTER_LEVEL_NO,'
      '  PRODUCT_CODE,'
      '  PRODUCT_PARAM_CODE'
      ')'
      'values'
      '('
      '  :FILTER_LEVEL_NO,'
      '  :NODE_CODE,'
      '  :NODE_PARAM_CODE'
      ')'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'TEMP_CHOSEN_NODE_PARAMS_TABLE_NAME'
        ParamType = ptInput
        Value = 'TEMP_CHOSEN_PRODUCT_PARAMS'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 24
  end
  object qryInsFilteredNodesThruCommonProduct: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'insert /*+ APPEND */ into %TEMP_FILTERED_NODES_TABLE_NAME (PRODU' +
        'CT_CODE)'
      'select'
      '  cp.PRODUCT_CODE as NODE_CODE'
      ''
      'from'
      '  CONCRETE_PRODUCTS cp,'
      '  DEFINITE_PRODUCTS dp,'
      '  PRODUCT_RELATIONS pr,'
      '  %TEMP_CHOSEN_NODES_TABLE_NAME tcp,'
      '  %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcpm'
      ''
      'where'
      '  (cp.PRODUCT_CODE = dp.PRODUCT_CODE) and'
      '  (dp.COMMON_PRODUCT_CODE = pr.DESCENDANT_PRODUCT_CODE) and'
      '  (pr.ANCESTOR_PRODUCT_CODE = tcp.PRODUCT_CODE) and'
      '  (tcp.FILTER_LEVEL_NO = tcpm.FILTER_LEVEL_NO) and'
      ''
      '  ( (tcpm.ALL_FILTERED_NODES = 1) or'
      '    ( (tcpm.USED_BY_CODE is null) and'
      '      (tcpm.PROVIDED_BY_CODE is null) and'
      '      (tcpm.PRODUCT_ORIGIN_CODE is null) and'
      '      (tcpm.ACTIVE_CODE is null) and'
      '      ( (tcpm.COMMON_STATUS_CODE is null) or'
      '        (tcpm.COMMON_STATUS_CODE <> 102)'
      '      )'
      '    ) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          PRODUCTS p'
      '        where'
      '          (p.PRODUCT_CODE = cp.PRODUCT_CODE) and'
      ''
      '          ( (tcpm.USED_BY_CODE is null) or'
      
        '            ( (tcpm.USED_BY_CODE = 1) and (p.IS_USED_BY_SALES = ' +
        '1) ) or'
      
        '            ( (tcpm.USED_BY_CODE = 2) and (p.IS_USED_BY_SALE_PRO' +
        'DUCTION = 1) ) or'
      
        '            ( (tcpm.USED_BY_CODE = 3) and (p.IS_USED_BY_ENV_PROD' +
        'UCTION = 1) )'
      '          ) and'
      ''
      '          ( (tcpm.PROVIDED_BY_CODE is null) or'
      
        '            ( (tcpm.PROVIDED_BY_CODE = 1) and (p.IS_PROVIDED_BY_' +
        'DELIVERIES = 1) ) or'
      
        '            ( (tcpm.PROVIDED_BY_CODE = 2) and (p.IS_PROVIDED_BY_' +
        'SALE_PRODUCTION = 1) ) or'
      
        '            ( (tcpm.PROVIDED_BY_CODE = 3) and (p.IS_PROVIDED_BY_' +
        'ENV_PRODUCTION = 1) )'
      '          ) and'
      ''
      '          ( (tcpm.PRODUCT_ORIGIN_CODE is null) or'
      '            (tcpm.PRODUCT_ORIGIN_CODE = p.PRODUCT_ORIGIN_CODE)'
      '          ) and'
      ''
      '          ( (tcpm.ACTIVE_CODE is null) or'
      
        '            ( (tcpm.ACTIVE_CODE = 1) and (p.IS_INACTIVE = 0) ) o' +
        'r'
      '            ( (tcpm.ACTIVE_CODE = 2) and (p.IS_INACTIVE = 1) )'
      '          ) and'
      ''
      '          ( (tcpm.COMMON_STATUS_CODE is null) or'
      '            (tcpm.COMMON_STATUS_CODE <> 102) or'
      '            (p.IS_THOROUGHLY_ENGINEERED = 1)'
      '          )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (tcpm.ALL_FILTERED_NODES = 1) or'
      '    (not exists'
      '      ( select'
      '          1'
      '        from'
      '          %TEMP_CHOSEN_NODE_PARAMS_TABLE_NAME tcpp'
      '        where'
      '          (tcpp.FILTER_LEVEL_NO = tcp.FILTER_LEVEL_NO) and'
      '          (tcpp.PRODUCT_CODE = tcp.PRODUCT_CODE) and'
      '          (not exists'
      '            ( select'
      '                1'
      '              from'
      '                PRODUCT_PARAMS pp'
      '              where'
      
        '                (pp.PRODUCT_CODE = pr.DESCENDANT_PRODUCT_CODE) a' +
        'nd'
      
        '                (pp.PRODUCT_PARAM_CODE = tcpp.PRODUCT_PARAM_CODE' +
        ') and'
      ''
      '                (pp.IS_DEFINED = 1) and'
      ''
      '                ( (not exists'
      '                    ( select'
      '                        1'
      '                      from'
      
        '                        %TEMP_CHOSEN_NODE_PARAM_VALUES_TABLE_NAM' +
        'E tcppv'
      '                      where'
      
        '                        (tcppv.FILTER_LEVEL_NO = tcpp.FILTER_LEV' +
        'EL_NO) and'
      
        '                        (tcppv.PRODUCT_CODE = tcpp.PRODUCT_CODE)' +
        ' and'
      
        '                        (tcppv.PRODUCT_PARAM_CODE = tcpp.PRODUCT' +
        '_PARAM_CODE)'
      '                    )'
      '                  ) or'
      '                  (exists'
      '                    ( select'
      '                        1'
      '                      from'
      
        '                        %TEMP_CHOSEN_NODE_PARAM_VALUES_TABLE_NAM' +
        'E tcppv'
      '                      where'
      
        '                        (tcppv.FILTER_LEVEL_NO = tcpp.FILTER_LEV' +
        'EL_NO) and'
      
        '                        (tcppv.PRODUCT_CODE = tcpp.PRODUCT_CODE)' +
        ' and'
      
        '                        (tcppv.PRODUCT_PARAM_CODE = tcpp.PRODUCT' +
        '_PARAM_CODE) and'
      ''
      '                        ( ( (pp.VALUE_TYPE = 0) and'
      
        '                            ( ( (tcppv.VALUE_NOM_CODE is null) a' +
        'nd'
      
        '                                (tcppv.VALUE_NOM_ITEM_CODE is nu' +
        'll)'
      '                              ) or'
      
        '                              ( (pp.VALUE_NOM_CODE = tcppv.VALUE' +
        '_NOM_CODE) and'
      
        '                                (pp.VALUE_NOM_ITEM_CODE = tcppv.' +
        'VALUE_NOM_ITEM_CODE)'
      '                              )'
      '                            )'
      '                          ) or'
      '                          ( (pp.VALUE_TYPE = 1) and'
      '                            ( (tcppv.VALUE_FLOAT_MIN is null) or'
      
        '                              (pp.VALUE_FLOAT >= tcppv.VALUE_FLO' +
        'AT_MIN)'
      '                            ) and'
      '                            ( (tcppv.VALUE_FLOAT_MAX is null) or'
      
        '                              (pp.VALUE_FLOAT <= tcppv.VALUE_FLO' +
        'AT_MAX)'
      '                            )'
      '                           ) or'
      '                          ( (pp.VALUE_TYPE = 2) and'
      '                            ( (tcppv.VALUE_STRING is null) or'
      
        '                              (pp.VALUE_STRING like (tcppv.VALUE' +
        '_STRING || '#39'%'#39'))'
      '                            )'
      '                          )'
      '                        )'
      '                    )'
      '                  )'
      '                )'
      '            )'
      '          )'
      '      )'
      '    )'
      '  )'
      ''
      'group by'
      '  cp.PRODUCT_CODE'
      ''
      'having'
      '  (Count(*) ='
      '    ( select'
      '        Max(tcpm2.FILTER_LEVEL_NO)'
      '      from'
      '        %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcpm2'
      '    )'
      '  )'
      ''
      'order by'
      '  NODE_CODE')
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
      end
      item
        DataType = ftWideString
        Name = 'TEMP_CHOSEN_NODE_PARAMS_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'TEMP_CHOSEN_NODE_PARAM_VALUES_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 216
    Top = 136
  end
  object qryInsFilteredDeptsThruCommonProduct: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'insert /*+ APPEND */ into %TEMP_FILTERED_NODES_TABLE_NAME (DEPT_' +
        'CODE)'
      'select'
      '  d.DEPT_CODE as NODE_CODE'
      ''
      'from'
      '  DEPTS d,'
      '  CONCRETE_PRODUCTS cp,'
      '  DEFINITE_PRODUCTS dp,'
      '  PRODUCT_RELATIONS prx,'
      '  %TEMP_CHOSEN_NODES_TABLE_NAME tcp'
      ''
      'where'
      '  (d.PRODUCT_CODE = cp.PRODUCT_CODE) and'
      '  (cp.PRODUCT_CODE = dp.PRODUCT_CODE) and'
      '  (dp.COMMON_PRODUCT_CODE = prx.DESCENDANT_PRODUCT_CODE) and'
      '  (prx.ANCESTOR_PRODUCT_CODE = tcp.PRODUCT_CODE) and'
      ''
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcpm'
      '      where'
      '        (tcpm.ALL_FILTERED_NODES = 0)'
      '    )'
      '  ) or'
      ''
      '  ( ( (not exists'
      '        ( select'
      '            1'
      '          from'
      '            %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcpm'
      '          where'
      '            (tcpm.USED_BY_CODE is not null) or'
      '            (tcpm.PROVIDED_BY_CODE is not null) or'
      '            (tcpm.PRODUCT_ORIGIN_CODE is not null) or'
      '            (tcpm.ACTIVE_CODE is not null) or'
      '            ( (tcpm.COMMON_STATUS_CODE is not null) and'
      '              (tcpm.COMMON_STATUS_CODE = 102)'
      '            )'
      '        )'
      '      ) or'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            ( select'
      '                p.PRODUCT_CODE'
      ''
      '              from'
      '                PRODUCTS p,'
      '                %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcpm'
      ''
      '              where'
      '                ( (tcpm.USED_BY_CODE is null) or'
      
        '                  ( (tcpm.USED_BY_CODE = 1) and (p.IS_USED_BY_SA' +
        'LES = 1) ) or'
      
        '                  ( (tcpm.USED_BY_CODE = 2) and (p.IS_USED_BY_SA' +
        'LE_PRODUCTION = 1) ) or'
      
        '                  ( (tcpm.USED_BY_CODE = 3) and (p.IS_USED_BY_EN' +
        'V_PRODUCTION = 1) )'
      '                ) and'
      ''
      '                ( (tcpm.PROVIDED_BY_CODE is null) or'
      
        '                  ( (tcpm.PROVIDED_BY_CODE = 1) and (p.IS_PROVID' +
        'ED_BY_DELIVERIES = 1) ) or'
      
        '                  ( (tcpm.PROVIDED_BY_CODE = 2) and (p.IS_PROVID' +
        'ED_BY_SALE_PRODUCTION = 1) ) or'
      
        '                  ( (tcpm.PROVIDED_BY_CODE = 3) and (p.IS_PROVID' +
        'ED_BY_ENV_PRODUCTION = 1) )'
      '                ) and'
      ''
      '                ( (tcpm.PRODUCT_ORIGIN_CODE is null) or'
      
        '                  (tcpm.PRODUCT_ORIGIN_CODE = p.PRODUCT_ORIGIN_C' +
        'ODE)'
      '                ) and'
      ''
      '                ( (tcpm.ACTIVE_CODE is null) or'
      
        '                  ( (tcpm.ACTIVE_CODE = 1) and (p.IS_INACTIVE = ' +
        '0) ) or'
      
        '                  ( (tcpm.ACTIVE_CODE = 2) and (p.IS_INACTIVE = ' +
        '1) )'
      '                ) and'
      ''
      '                ( (tcpm.COMMON_STATUS_CODE is null) or'
      '                  (tcpm.COMMON_STATUS_CODE <> 102) or'
      '                  (p.IS_THOROUGHLY_ENGINEERED = 1)'
      '                )'
      ''
      '              group by'
      '                p.PRODUCT_CODE'
      ''
      '              having'
      '                (Count(*) ='
      '                  ( select'
      '                      Max(tcpm2.FILTER_LEVEL_NO)'
      '                    from'
      '                      %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcpm2'
      '                  )'
      '                )'
      '            ) x'
      '          where'
      '            (x.PRODUCT_CODE = cp.PRODUCT_CODE)'
      '        )'
      '      )'
      '    ) and'
      ''
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          ( select'
      '              pr.DESCENDANT_PRODUCT_CODE as PRODUCT_CODE'
      '            from'
      '              PRODUCT_RELATIONS pr,'
      '              %TEMP_CHOSEN_NODES_TABLE_NAME tcp,'
      '              %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcpm'
      '            where'
      '              (pr.ANCESTOR_PRODUCT_CODE = tcp.PRODUCT_CODE) and'
      '              (tcp.FILTER_LEVEL_NO = tcpm.FILTER_LEVEL_NO) and'
      '              (not exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    %TEMP_CHOSEN_NODE_PARAMS_TABLE_NAME tcpp'
      '                  where'
      
        '                    (tcpp.FILTER_LEVEL_NO = tcp.FILTER_LEVEL_NO)' +
        ' and'
      '                    (tcpp.PRODUCT_CODE = tcp.PRODUCT_CODE) and'
      '                    (not exists'
      '                      ( select'
      '                          1'
      '                        from'
      '                          PRODUCT_PARAMS pp'
      '                        where'
      
        '                          (pp.PRODUCT_CODE = pr.DESCENDANT_PRODU' +
        'CT_CODE) and'
      
        '                          (pp.PRODUCT_PARAM_CODE = tcpp.PRODUCT_' +
        'PARAM_CODE) and'
      ''
      '                          (pp.IS_DEFINED = 1) and'
      ''
      '                          ( (not exists'
      '                              ( select'
      '                                  1'
      '                                from'
      
        '                                  %TEMP_CHOSEN_NODE_PARAM_VALUES' +
        '_TABLE_NAME tcppv'
      '                                where'
      
        '                                  (tcppv.FILTER_LEVEL_NO = tcpp.' +
        'FILTER_LEVEL_NO) and'
      
        '                                  (tcppv.PRODUCT_CODE = tcpp.PRO' +
        'DUCT_CODE) and'
      
        '                                  (tcppv.PRODUCT_PARAM_CODE = tc' +
        'pp.PRODUCT_PARAM_CODE)'
      '                              )'
      '                            ) or'
      '                            (exists'
      '                              ( select'
      '                                  1'
      '                                from'
      
        '                                  %TEMP_CHOSEN_NODE_PARAM_VALUES' +
        '_TABLE_NAME tcppv'
      '                                where'
      
        '                                  (tcppv.FILTER_LEVEL_NO = tcpp.' +
        'FILTER_LEVEL_NO) and'
      
        '                                  (tcppv.PRODUCT_CODE = tcpp.PRO' +
        'DUCT_CODE) and'
      
        '                                  (tcppv.PRODUCT_PARAM_CODE = tc' +
        'pp.PRODUCT_PARAM_CODE) and'
      ''
      '                                  ( ( (pp.VALUE_TYPE = 0) and'
      
        '                                      ( ( (tcppv.VALUE_NOM_CODE ' +
        'is null) and'
      
        '                                          (tcppv.VALUE_NOM_ITEM_' +
        'CODE is null)'
      '                                        ) or'
      
        '                                        ( (pp.VALUE_NOM_CODE = t' +
        'cppv.VALUE_NOM_CODE) and'
      
        '                                          (pp.VALUE_NOM_ITEM_COD' +
        'E = tcppv.VALUE_NOM_ITEM_CODE)'
      '                                        )'
      '                                      )'
      '                                    ) or'
      '                                    ( (pp.VALUE_TYPE = 1) and'
      
        '                                      ( (tcppv.VALUE_FLOAT_MIN i' +
        's null) or'
      
        '                                        (pp.VALUE_FLOAT >= tcppv' +
        '.VALUE_FLOAT_MIN)'
      '                                      ) and'
      
        '                                      ( (tcppv.VALUE_FLOAT_MAX i' +
        's null) or'
      
        '                                        (pp.VALUE_FLOAT <= tcppv' +
        '.VALUE_FLOAT_MAX)'
      '                                      )'
      '                                     ) or'
      '                                    ( (pp.VALUE_TYPE = 2) and'
      
        '                                      ( (tcppv.VALUE_STRING is n' +
        'ull) or'
      
        '                                        (pp.VALUE_STRING like (t' +
        'cppv.VALUE_STRING || '#39'%'#39'))'
      '                                      )'
      '                                    )'
      '                                  )'
      '                              )'
      '                            )'
      '                          )'
      '                      )'
      '                    )'
      '                )'
      '              )'
      ''
      '            group by'
      '              pr.DESCENDANT_PRODUCT_CODE'
      ''
      '            having'
      '              (Count(*) ='
      '                ( select'
      '                    Max(tcpm2.FILTER_LEVEL_NO)'
      '                  from'
      '                    %TEMP_CHOSEN_NODE_MISCS_TABLE_NAME tcpm2'
      '                )'
      '              )'
      '          ) x'
      '        where'
      '          (x.PRODUCT_CODE = tcp.PRODUCT_CODE)'
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
      end
      item
        DataType = ftWideString
        Name = 'TEMP_CHOSEN_NODE_PARAMS_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'TEMP_CHOSEN_NODE_PARAM_VALUES_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 216
    Top = 192
  end
  object qryInsChosenNodeParamValue: TAbmesSQLQuery
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
      end
      item
        DataType = ftFloat
        Name = 'NODE_PARAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_PARAM_VALUE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_NOM_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_FLOAT_MIN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUE_FLOAT_MAX'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'VALUE_STRING'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into %TEMP_CHOSEN_NODE_PARAM_VALUES_TABLE_NAME'
      '('
      '  FILTER_LEVEL_NO,'
      '  PRODUCT_CODE,'
      '  PRODUCT_PARAM_CODE,'
      '  PRODUCT_PARAM_VALUE_CODE,'
      '  VALUE_NOM_CODE,'
      '  VALUE_NOM_ITEM_CODE,'
      '  VALUE_FLOAT_MIN,'
      '  VALUE_FLOAT_MAX,'
      '  VALUE_STRING'
      ')'
      'values'
      '('
      '  :FILTER_LEVEL_NO,'
      '  :NODE_CODE,'
      '  :NODE_PARAM_CODE,'
      '  :NODE_PARAM_VALUE_CODE,'
      '  :VALUE_NOM_CODE,'
      '  :VALUE_NOM_ITEM_CODE,'
      '  :VALUE_FLOAT_MIN,'
      '  :VALUE_FLOAT_MAX,'
      '  :VALUE_STRING'
      ')'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 'TEMP_CHOSEN_NODE_PARAM_VALUES_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 328
    Top = 24
  end
end
