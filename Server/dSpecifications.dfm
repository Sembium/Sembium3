inherited dmSpecifications: TdmSpecifications
  Height = 788
  Width = 1270
  object qrySpecifications: TAbmesSQLQuery
    BeforeOpen = qrySpecificationsBeforeOpen
    AfterClose = qrySpecificationsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TREE_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TREE_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TREE_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TREE_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DETAILS'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'AUTHOR_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHOR_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZATION_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZATION_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANUFACTURER_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANUFACTURER_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_IMPORTED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_IMPORTED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_IMPORTED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_IMPORTED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_INACTIVE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_INACTIVE_DETAIL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_INACTIVE_DETAIL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_INACTIVE_DETAIL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_INACTIVE_DETAIL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_INACTIVE_PRODUCT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_INACTIVE_PRODUCT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_INACTIVE_PRODUCT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_INACTIVE_PRODUCT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_SPEC_STATE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_SPEC_STATE_CODE'
        ParamType = ptInput
        Value = '6'
      end
      item
        DataType = ftFloat
        Name = 'MIN_SPEC_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_SPEC_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SMVS_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SMVS_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SMVS_DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  /*+ INDEX(sp pkSPECS) NO_USE_HASH(p sp) NO_USE_MERGE(p sp) USE' +
        '_NL(p sp) */'
      '  p.PRODUCT_CODE as SPEC_PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.IS_PRODUCTION_PRODUCT as IS_PRODUCTION_PRODUCT,'
      ''
      '  ( select'
      '      spt.SPEC_TYPE_NAME'
      '    from'
      '      SPEC_TYPES spt'
      '    where'
      '      (spt.SPEC_TYPE_CODE = sp.SPEC_TYPE_CODE)'
      '  ) as SPEC_TYPE_NAME,'
      ''
      
        '  Nvl2(sp.SPEC_PRODUCT_CODE, Nvl2(sp.AUTHORIZATION_EMPLOYEE_CODE' +
        ', 1, 0), null) as IS_VALID,'
      '  sp.SPEC_VERSION_NO,'
      '  sp.WORK_BRANCH_CODE,'
      '  sp.AUTHOR_EMPLOYEE_CODE,'
      ''
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = sp.MANUFACTURER_COMPANY_CODE)'
      '  ) as MANUFACTURER_SHORT_NAME,'
      ''
      '  ( select'
      '      e.ABBREV'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '     (e.EMPLOYEE_CODE = sp.AUTHOR_EMPLOYEE_CODE)'
      '  ) as AUTHOR_EMPLOYEE_ABBREV,'
      ''
      '  ( select'
      
        '      e.ABBREV || '#39'      '#39' || e.FIRST_NAME || '#39' '#39' || e.MIDDLE_NA' +
        'ME || '#39' '#39' || e.LAST_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '     (e.EMPLOYEE_CODE = sp.AUTHOR_EMPLOYEE_CODE)'
      '  ) as AUTHOR_EMPLOYEE_NAME,'
      ''
      '  ( select'
      '      e.ABBREV'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '     (e.EMPLOYEE_CODE = sp.AUTHORIZATION_EMPLOYEE_CODE)'
      '  ) as AUTHORIZATION_EMPLOYEE_ABBREV,'
      ''
      '  ( select'
      
        '      e.ABBREV || '#39'      '#39' || e.FIRST_NAME || '#39' '#39' || e.MIDDLE_NA' +
        'ME || '#39' '#39' || e.LAST_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '     (e.EMPLOYEE_CODE = sp.AUTHORIZATION_EMPLOYEE_CODE)'
      '  ) as AUTHORIZATION_EMPLOYEE_NAME,'
      ''
      '  sp.NOTES,'
      ''
      '  ( select'
      '      Coalesce('
      '        Max('
      '          Decode(spl.NO_1, 0, 0, 1) +'
      '          Decode(spl.NO_2, 0, 0, 1) +'
      '          Decode(spl.NO_3, 0, 0, 1) +'
      '          Decode(spl.NO_4, 0, 0, 1) +'
      '          Decode(spl.NO_5, 0, 0, 1) +'
      '          Decode(spl.NO_6, 0, 0, 1) +'
      '          Decode(spl.NO_7, 0, 0, 1) +'
      '          Decode(spl.NO_8, 0, 0, 1) +'
      '          Decode(spl.NO_9, 0, 0, 1) +'
      '          Decode(spl.NO_10, 0, 0, 1) +'
      '          Decode(spl.NO_11, 0, 0, 1) +'
      '          Decode(spl.NO_12, 0, 0, 1) +'
      '          Decode(spl.NO_13, 0, 0, 1) +'
      '          Decode(spl.NO_14, 0, 0, 1) +'
      '          Decode(spl.NO_15, 0, 0, 1) +'
      '          Decode(spl.NO_16, 0, 0, 1) +'
      '          Decode(spl.NO_17, 0, 0, 1) +'
      '          Decode(spl.NO_18, 0, 0, 1) +'
      '          Decode(spl.NO_19, 0, 0, 1) +'
      '          Decode(spl.NO_20, 0, 0, 1) +'
      '          Decode(spl.NO_21, 0, 0, 1) +'
      '          Decode(spl.NO_22, 0, 0, 1) +'
      '          Decode(spl.NO_23, 0, 0, 1) +'
      '          Decode(spl.NO_24, 0, 0, 1) +'
      '          Decode(spl.NO_25, 0, 0, 1)'
      '        ),'
      '        0'
      '      )'
      '    from'
      '      SPEC_LINES spl'
      '    where'
      '      (spl.SPEC_PRODUCT_CODE = sp.SPEC_PRODUCT_CODE)'
      '  ) as SPEC_DEPTH,'
      ''
      '  ( select'
      '      NullIf(Count(spli.DETAIL_CODE), 0) as IMPORT_COUNT'
      '    from'
      '      SPEC_LINES spli'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = spli.DETAIL_CODE) and'
      '      (spli.IS_IMPORTED = 1)'
      '  ) as IMPORT_COUNT,'
      ''
      '  ( select'
      '      NullIf(Count(*), 0) as SPEC_MODEL_VARIANT_COUNT'
      '    from'
      '      SPEC_MODEL_VARIANTS smv'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = smv.SPEC_PRODUCT_CODE)'
      '  ) as SPEC_MODEL_VARIANT_COUNT,'
      ''
      
        '  %SPEC_STATE[p.PRODUCT_CODE~null~null~null~null] as SPEC_STATE_' +
        'CODE,'
      ''
      '  %HAS_DOC_ITEMS[p] as SPEC_PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  p.T_DISPLAY_NAME,'
      '  p.T_SPEC_LINE_CODE,'
      '  p.T_PARENT_SPEC_LINE_CODE,'
      '  p.T_PRODUCT_CODE,'
      '  p.T_DETAIL_CODE,'
      '  p.T_IS_COMPLETE,'
      '  p.T_IS_IMPORTED,'
      '  p.ORDER_BY_FIELD'
      ''
      'from'
      '  ( select'
      
        '      /*+ INDEX(x) NO_USE_HASH(x sl) NO_USE_MERGE(x sl) USE_NL(x' +
        ' sl) */'
      '      x.PRODUCT_CODE,'
      '      x.NAME,'
      '      x.CUSTOM_CODE,'
      '      x.IS_PRODUCTION_PRODUCT,'
      '      x.IS_INACTIVE,'
      '      x.IS_GROUP,'
      '      x.PRODUCT_CLASS_CODE,'
      '      x.DOC_CODE,'
      '      x.DOC_BRANCH_CODE,'
      ''
      '      ( sl.NO_AS_TEXT ||'
      '        '#39' - '#39' ||'
      '        ( select'
      '            p2.NAME'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      ) as T_DISPLAY_NAME,'
      '      sl.SPEC_LINE_CODE as T_SPEC_LINE_CODE,'
      '      sl.PARENT_SPEC_LINE_CODE as T_PARENT_SPEC_LINE_CODE,'
      '      sl.PRODUCT_CODE as T_PRODUCT_CODE,'
      '      sl.DETAIL_CODE as T_DETAIL_CODE,'
      '      sl.IS_COMPLETE as T_IS_COMPLETE,'
      '      ( select'
      '          Sign(Count(*))'
      '        from'
      '          SPEC_MODEL_VARIANT_LINES smvl'
      '        where'
      '          (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) and'
      '          (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      
        '          (smvl.IMPORT_SPEC_PRODUCT_CODE <> smvl.SPEC_PRODUCT_CO' +
        'DE)'
      '      ) as T_IS_IMPORTED,'
      
        '      Nvl2(:TREE_PRODUCT_CODE, sl.NO_AS_FORMATED_TEXT, x.NAME) a' +
        's ORDER_BY_FIELD'
      '    from'
      '      PRODUCTS x,'
      '      SPEC_LINES sl'
      '    where'
      '      (x.PRODUCT_CODE = sl.DETAIL_CODE(+)) and'
      '      (:TREE_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE(+)) and'
      '      ( (:TREE_PRODUCT_CODE is null) or'
      '        (sl.SPEC_PRODUCT_CODE is not null)'
      '      )'
      '  ) p,'
      ''
      '  SPECS sp'
      ''
      'where'
      '  (p.PRODUCT_CODE = sp.SPEC_PRODUCT_CODE(+)) and'
      ''
      '  (p.IS_GROUP = 0) and'
      '  (p.PRODUCT_CLASS_CODE = 1) and'
      ''
      '  ( (:TREE_PRODUCT_CODE is not null) or'
      '    ( ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_PRODUCTS tfp'
      '            where'
      '              (tfp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '          )'
      '        ) or'
      '        ( (:INCLUDE_DETAILS = 1) and'
      '          (exists'
      '            ( select'
      '                /*+ INDEX(spl2 idxSL__DETAIL) INDEX(tfp) */'
      '                1'
      '              from'
      '                TEMP_FILTERED_PRODUCTS tfp,'
      '                SPEC_LINES spl2'
      '              where'
      '                (tfp.PRODUCT_CODE = spl2.SPEC_PRODUCT_CODE) and'
      '                (spl2.DETAIL_CODE = p.PRODUCT_CODE)'
      '            )'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:AUTHOR_EMPLOYEE_CODE is null) or'
      '        (sp.AUTHOR_EMPLOYEE_CODE = :AUTHOR_EMPLOYEE_CODE) ) and'
      '      ( (:AUTHORIZATION_EMPLOYEE_CODE is null) or'
      
        '        (sp.AUTHORIZATION_EMPLOYEE_CODE = :AUTHORIZATION_EMPLOYE' +
        'E_CODE) ) and'
      '      ( (:MANUFACTURER_COMPANY_CODE is null) or'
      
        '        (sp.MANUFACTURER_COMPANY_CODE = :MANUFACTURER_COMPANY_CO' +
        'DE) ) and'
      '      ( (:SPEC_TYPE_CODE is null) or'
      '        (sp.SPEC_TYPE_CODE = :SPEC_TYPE_CODE) ) and'
      ''
      '      ( (:IS_IMPORTED * :IS_NOT_IMPORTED = 1) or'
      '        ('
      '          (:IS_IMPORTED = 1) and'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                SPEC_LINES spli'
      '              where'
      '                (sp.SPEC_PRODUCT_CODE = spli.DETAIL_CODE) and'
      '                (spli.IS_IMPORTED = 1)'
      '            )'
      '          )'
      '        ) or'
      '        ('
      '          (:IS_NOT_IMPORTED = 1) and'
      '          (not exists'
      '            ( select'
      '                1'
      '              from'
      '                SPEC_LINES spli'
      '              where'
      '                (sp.SPEC_PRODUCT_CODE = spli.DETAIL_CODE) and'
      '                (spli.IS_IMPORTED = 1)'
      '            )'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( ( (:IS_ACTIVE = 1) and (p.IS_INACTIVE = 0) ) or'
      '        ( (:IS_INACTIVE = 1) and (p.IS_INACTIVE = 1) ) ) and'
      ''
      '      ( (:CREATE_BEGIN_DATE is null) or'
      '        (:CREATE_BEGIN_DATE <= sp.CREATE_DATE) ) and'
      ''
      '      ( (:CREATE_END_DATE is null) or'
      '        (sp.CREATE_DATE <= :CREATE_END_DATE) ) and'
      ''
      '      ( (:INCLUDE_DETAIL_CODE = %TREE_ROOT_CODE) or'
      '        (exists'
      '          ( select'
      
        '              /*+ NO_USE_HASH(spl pr) NO_USE_MERGE(spl pr) USE_N' +
        'L(spl pr)*/'
      '              1'
      '            from'
      '              SPEC_LINES spl,'
      '              PRODUCT_RELATIONS pr'
      '            where'
      '              (spl.SPEC_PRODUCT_CODE = sp.SPEC_PRODUCT_CODE) and'
      '              (pr.DESCENDANT_PRODUCT_CODE = spl.DETAIL_CODE) and'
      '              (pr.ANCESTOR_PRODUCT_CODE = :INCLUDE_DETAIL_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:INCLUDE_PRODUCT_CODE is null) or'
      '        (exists'
      '          ( select'
      
        '              /*+ NO_USE_HASH(spl pr) NO_USE_MERGE(spl pr) USE_N' +
        'L(spl pr)*/'
      '              1'
      '            from'
      '              SPEC_LINES spl,'
      '              PRODUCT_RELATIONS pr'
      '            where'
      '              (spl.SPEC_PRODUCT_CODE = sp.SPEC_PRODUCT_CODE) and'
      
        '              (pr.DESCENDANT_PRODUCT_CODE = spl.PRODUCT_CODE) an' +
        'd'
      '              (pr.ANCESTOR_PRODUCT_CODE = :INCLUDE_PRODUCT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:CHANGE_BEGIN_DATE is null) or'
      '        (:CHANGE_BEGIN_DATE <= sp.CHANGE_DATE) ) and'
      ''
      '      ( (:CHANGE_END_DATE is null) or'
      '        (:CHANGE_END_DATE >= sp.CHANGE_DATE) ) and'
      ''
      '      ( (:HAS_INACTIVE_DETAIL * :HAS_NOT_INACTIVE_DETAIL = 1) or'
      '        ('
      '          (:HAS_INACTIVE_DETAIL = 1) and'
      '          exists('
      '            select'
      '              1'
      '            from'
      '              SPEC_LINES sl,'
      '              PRODUCTS p'
      '            where'
      '              (sl.SPEC_PRODUCT_CODE = sp.SPEC_PRODUCT_CODE) and'
      '              (sl.DETAIL_CODE = p.PRODUCT_CODE) and'
      '              (p.IS_INACTIVE = 1)'
      '          )'
      '        ) or'
      '        ('
      '          (:HAS_NOT_INACTIVE_DETAIL = 1) and'
      '          not exists('
      '            select'
      '              1'
      '            from'
      '              SPEC_LINES sl,'
      '              PRODUCTS p'
      '            where'
      '              (sl.SPEC_PRODUCT_CODE = sp.SPEC_PRODUCT_CODE) and'
      '              (sl.DETAIL_CODE = p.PRODUCT_CODE) and'
      '              (p.IS_INACTIVE = 1)'
      '          )'
      '        )'
      '      ) and'
      ''
      
        '      ( (:HAS_INACTIVE_PRODUCT * :HAS_NOT_INACTIVE_PRODUCT = 1) ' +
        'or'
      '        ('
      '          (:HAS_INACTIVE_PRODUCT = 1) and'
      '          exists('
      '            select'
      '              1'
      '            from'
      '              SPEC_LINES sl,'
      '              PRODUCTS p'
      '            where'
      '              (sl.SPEC_PRODUCT_CODE = sp.SPEC_PRODUCT_CODE) and'
      '              (sl.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '              (p.IS_INACTIVE = 1)'
      '          )'
      '        ) or'
      '        ('
      '          (:HAS_NOT_INACTIVE_PRODUCT = 1) and'
      '          not exists('
      '            select'
      '              1'
      '            from'
      '              SPEC_LINES sl,'
      '              PRODUCTS p'
      '            where'
      '              (sl.SPEC_PRODUCT_CODE = sp.SPEC_PRODUCT_CODE) and'
      '              (sl.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '              (p.IS_INACTIVE = 1)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( ( (:MIN_SPEC_STATE_CODE = 0) and'
      '          (:MAX_SPEC_STATE_CODE = 6)'
      '        ) or'
      
        '        (%SPEC_STATE[p.PRODUCT_CODE~ null~ :MAIN_DEPT_CODE~ null' +
        '~ :SMVS_DEPT_CODE] between :MIN_SPEC_STATE_CODE and :MAX_SPEC_ST' +
        'ATE_CODE)'
      '      ) and'
      ''
      '      ( (:MAIN_DEPT_CODE is null) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              SPEC_MODEL_VARIANTS smv'
      '            where'
      '              (smv.SPEC_PRODUCT_CODE = sp.SPEC_PRODUCT_CODE) and'
      '              (smv.MAIN_DEPT_CODE = :MAIN_DEPT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:SMVS_DEPT_CODE is null) or'
      '        ( (exists'
      '            ( select'
      '                1'
      '              from'
      '                SPEC_MODEL_VARIANT_STAGES smvs'
      '              where'
      
        '                (smvs.SPEC_PRODUCT_CODE = sp.SPEC_PRODUCT_CODE) ' +
        'and'
      '                (exists'
      '                  ( select'
      '                      1'
      '                    from'
      '                      DEPT_RELATIONS dr'
      '                    where'
      
        '                      (dr.DESCENDANT_DEPT_CODE = smvs.DEPT_CODE)' +
        ' and'
      '                      (dr.ANCESTOR_DEPT_CODE = :SMVS_DEPT_CODE)'
      '                  )'
      '                )'
      '            )'
      '          ) or'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                SMVS_OPERATIONS smvso'
      '              where'
      
        '                (smvso.SPEC_PRODUCT_CODE = sp.SPEC_PRODUCT_CODE)' +
        ' and'
      '                (smvso.SMVS_OPERATION_VARIANT_NO >= 0) and'
      '                (exists'
      '                  ( select'
      '                      1'
      '                    from'
      '                      DEPT_RELATIONS dr'
      '                    where'
      
        '                      (dr.DESCENDANT_DEPT_CODE = smvso.DEPT_CODE' +
        ') and'
      '                      (dr.ANCESTOR_DEPT_CODE = :SMVS_DEPT_CODE)'
      '                  )'
      '                )'
      '            )'
      '          )'
      '        )'
      '      )'
      '    )'
      '  )'
      'order by'
      '  p.ORDER_BY_FIELD'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'SPEC_STATE[p.PRODUCT_CODE~null~null~null~null]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'TREE_ROOT_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'SPEC_STATE[p.PRODUCT_CODE~ null~ :MAIN_DEPT_CODE~ null~ :SMVS_DE' +
          'PT_CODE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_SPEC_PRODUCTS'
        ParamType = ptInput
      end>
    TableName = 'SPECS_FOR_EDIT'
    Left = 32
    Top = 56
    object qrySpecificationsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecificationsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qrySpecificationsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qrySpecificationsSPEC_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SPEC_TYPE_NAME'
      Size = 100
    end
    object qrySpecificationsWORK_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WORK_BRANCH_CODE'
    end
    object qrySpecificationsIS_VALID: TAbmesFloatField
      FieldName = 'IS_VALID'
    end
    object qrySpecificationsSPEC_VERSION_NO: TAbmesFloatField
      FieldName = 'SPEC_VERSION_NO'
    end
    object qrySpecificationsMANUFACTURER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'MANUFACTURER_SHORT_NAME'
    end
    object qrySpecificationsAUTHOR_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHOR_EMPLOYEE_CODE'
    end
    object qrySpecificationsAUTHOR_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'AUTHOR_EMPLOYEE_ABBREV'
      Size = 5
    end
    object qrySpecificationsAUTHORIZATION_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'AUTHORIZATION_EMPLOYEE_ABBREV'
      Size = 5
    end
    object qrySpecificationsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qrySpecificationsSPEC_DEPTH: TAbmesFloatField
      FieldName = 'SPEC_DEPTH'
      ProviderFlags = []
    end
    object qrySpecificationsIMPORT_COUNT: TAbmesFloatField
      FieldName = 'IMPORT_COUNT'
    end
    object qrySpecificationsSPEC_MODEL_VARIANT_COUNT: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_COUNT'
    end
    object qrySpecificationsSPEC_STATE_CODE: TAbmesFloatField
      FieldName = 'SPEC_STATE_CODE'
    end
    object qrySpecificationsSPEC_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_HAS_DOC_ITEMS'
    end
    object qrySpecificationsAUTHOR_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'AUTHOR_EMPLOYEE_NAME'
      Size = 70
    end
    object qrySpecificationsAUTHORIZATION_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'AUTHORIZATION_EMPLOYEE_NAME'
      Size = 70
    end
    object qrySpecificationsIS_PRODUCTION_PRODUCT: TAbmesFloatField
      FieldName = 'IS_PRODUCTION_PRODUCT'
      Required = True
    end
    object qrySpecificationsT_DISPLAY_NAME: TAbmesWideStringField
      FieldName = 'T_DISPLAY_NAME'
      Size = 203
    end
    object qrySpecificationsT_SPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'T_SPEC_LINE_CODE'
    end
    object qrySpecificationsT_PARENT_SPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'T_PARENT_SPEC_LINE_CODE'
    end
    object qrySpecificationsT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'T_PRODUCT_CODE'
    end
    object qrySpecificationsT_DETAIL_CODE: TAbmesFloatField
      FieldName = 'T_DETAIL_CODE'
    end
    object qrySpecificationsT_IS_COMPLETE: TAbmesFloatField
      FieldName = 'T_IS_COMPLETE'
    end
    object qrySpecificationsT_IS_IMPORTED: TAbmesFloatField
      FieldName = 'T_IS_IMPORTED'
    end
    object qrySpecificationsORDER_BY_FIELD: TAbmesWideStringField
      FieldName = 'ORDER_BY_FIELD'
      Size = 100
    end
  end
  object prvSpecifications: TDataSetProvider
    DataSet = qrySpecifications
    Options = [poDisableInserts, poDisableEdits]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvSpecificationsBeforeUpdateRecord
    Left = 32
    Top = 8
  end
  object qrySpecificationTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  SPEC_TYPES'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 256
    Top = 56
    object qrySpecificationTypesSPEC_TYPE_CODE: TAbmesFloatField
      FieldName = 'SPEC_TYPE_CODE'
    end
    object qrySpecificationTypesSPEC_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SPEC_TYPE_NAME'
      Size = 100
    end
  end
  object prvSpecificationTypes: TDataSetProvider
    DataSet = qrySpecificationTypes
    Left = 256
    Top = 8
  end
  object prvSpec: TDataSetProvider
    DataSet = qrySpec
    Options = [poCascadeDeletes]
    UpdateMode = upWhereKeyOnly
    OnGetData = prvSpecGetData
    OnUpdateData = prvSpecUpdateData
    OnUpdateError = prvSpecUpdateError
    AfterUpdateRecord = prvSpecAfterUpdateRecord
    BeforeUpdateRecord = prvSpecBeforeUpdateRecord
    BeforeApplyUpdates = prvSpecBeforeApplyUpdates
    AfterApplyUpdates = prvSpecAfterApplyUpdates
    AfterGetRecords = prvSpecAfterGetRecords
    Left = 288
    Top = 128
  end
  object qrySpec: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CREATE_LIKE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sp.SPEC_PRODUCT_CODE,'
      '  p.NAME as SPEC_PRODUCT_NAME,'
      '  p.CUSTOM_CODE as SPEC_PRODUCT_NO,'
      '  p.PARENT_CODE as SPEC_PRODUCT_PARENT_CODE,'
      '  p.TECH_MEASURE_CODE,'
      '  sp.SPEC_TYPE_CODE,'
      '  sp.SPEC_VERSION_NO,'
      '  sp.WORK_BRANCH_CODE,'
      '  sp.MANUFACTURER_COMPANY_CODE,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = sp.MANUFACTURER_COMPANY_CODE)'
      '  ) as MANUFACTURER_NAME,'
      '  sp.AUTHOR_EMPLOYEE_CODE,'
      '  sp.AUTHORIZATION_EMPLOYEE_CODE,'
      '  sp.AUTHORIZATION_DATE,'
      '  sp.AUTHORIZATION_TIME,'
      '  sp.VERSION_CREATE_EMPLOYEE_CODE,'
      '  sp.VERSION_CREATE_DATE,'
      '  sp.VERSION_CREATE_TIME,'
      '  sp.CREATE_EMPLOYEE_CODE,'
      '  sp.CREATE_DATE,'
      '  sp.CREATE_TIME,'
      '  sp.CHANGE_BRANCH_CODE,'
      '  sp.CHANGE_EMPLOYEE_CODE,'
      '  sp.CHANGE_DATE,'
      '  sp.CHANGE_TIME,'
      '  sp.STRUCT_CHANGE_CLEAR_EMPL_CODE,'
      '  sp.STRUCT_CHANGE_CLEAR_DATE,'
      '  sp.STRUCT_CHANGE_CLEAR_TIME,'
      '  sp.NOTES,'
      '  To_Number(:CREATE_LIKE) as CREATE_LIKE,'
      ''
      
        '  %SPEC_STATE[sp.SPEC_PRODUCT_CODE~null~null~null~null] as SPEC_' +
        'STATE_CODE,'
      '  p.PARTNER_PRODUCT_NAMES as COMPANY_PRODUCT_NAMES'
      ''
      'from'
      '  SPECS sp,'
      '  PRODUCTS p'
      'where'
      '  (sp.SPEC_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (sp.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'SPEC_STATE[sp.SPEC_PRODUCT_CODE~null~null~null~null]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SPECS_FOR_EDIT'
    AfterProviderStartTransaction = qrySpecAfterProviderStartTransaction
    BeforeProviderEndTransaction = qrySpecBeforeProviderEndTransaction
    Left = 288
    Top = 176
    object qrySpecSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecSPEC_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPEC_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qrySpecSPEC_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_NO'
      ProviderFlags = []
    end
    object qrySpecSPEC_PRODUCT_PARENT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_PARENT_CODE'
      ProviderFlags = []
    end
    object qrySpecTECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object qrySpecSPEC_TYPE_CODE: TAbmesFloatField
      FieldName = 'SPEC_TYPE_CODE'
    end
    object qrySpecSPEC_VERSION_NO: TAbmesFloatField
      FieldName = 'SPEC_VERSION_NO'
    end
    object qrySpecWORK_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WORK_BRANCH_CODE'
    end
    object qrySpecMANUFACTURER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MANUFACTURER_COMPANY_CODE'
    end
    object qrySpecAUTHOR_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHOR_EMPLOYEE_CODE'
    end
    object qrySpecAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZATION_EMPLOYEE_CODE'
    end
    object qrySpecAUTHORIZATION_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZATION_DATE'
    end
    object qrySpecAUTHORIZATION_TIME: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZATION_TIME'
    end
    object qrySpecVERSION_CREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'VERSION_CREATE_EMPLOYEE_CODE'
    end
    object qrySpecVERSION_CREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'VERSION_CREATE_DATE'
    end
    object qrySpecVERSION_CREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'VERSION_CREATE_TIME'
    end
    object qrySpecCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qrySpecCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qrySpecCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qrySpecCHANGE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'CHANGE_BRANCH_CODE'
    end
    object qrySpecCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qrySpecCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qrySpecCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qrySpecSTRUCT_CHANGE_CLEAR_EMPL_CODE: TAbmesFloatField
      FieldName = 'STRUCT_CHANGE_CLEAR_EMPL_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySpecSTRUCT_CHANGE_CLEAR_DATE: TAbmesSQLTimeStampField
      FieldName = 'STRUCT_CHANGE_CLEAR_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySpecSTRUCT_CHANGE_CLEAR_TIME: TAbmesSQLTimeStampField
      FieldName = 'STRUCT_CHANGE_CLEAR_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object qrySpecNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qrySpecCREATE_LIKE: TAbmesFloatField
      FieldName = 'CREATE_LIKE'
      ProviderFlags = []
    end
    object qrySpecMANUFACTURER_NAME: TAbmesWideStringField
      FieldName = 'MANUFACTURER_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qrySpecSPEC_STATE_CODE: TAbmesFloatField
      FieldName = 'SPEC_STATE_CODE'
      ProviderFlags = []
    end
    object qrySpecCOMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'COMPANY_PRODUCT_NAMES'
      ProviderFlags = []
      Size = 250
    end
  end
  object dsSpec: TDataSource
    DataSet = qrySpec
    Left = 288
    Top = 224
  end
  object qrySpecLines: TAbmesSQLQuery
    DataSource = dsSpec
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'CREATE_LIKE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  spl.SPEC_PRODUCT_CODE,'
      '  spl.SPEC_LINE_CODE,'
      '  spl.PARENT_SPEC_LINE_CODE,'
      '  spl.NO_1,'
      '  spl.NO_2,'
      '  spl.NO_3,'
      '  spl.NO_4,'
      '  spl.NO_5,'
      '  spl.NO_6,'
      '  spl.NO_7,'
      '  spl.NO_8,'
      '  spl.NO_9,'
      '  spl.NO_10,'
      '  spl.NO_11,'
      '  spl.NO_12,'
      '  spl.NO_13,'
      '  spl.NO_14,'
      '  spl.NO_15,'
      '  spl.NO_16,'
      '  spl.NO_17,'
      '  spl.NO_18,'
      '  spl.NO_19,'
      '  spl.NO_20,'
      '  spl.NO_21,'
      '  spl.NO_22,'
      '  spl.NO_23,'
      '  spl.NO_24,'
      '  spl.NO_25,'
      '  spl.NO_AS_TEXT,'
      '  spl.NO_AS_FORMATED_TEXT,'
      '  spl.DETAIL_CODE,'
      '  dp.NAME as DETAIL_NAME,'
      '  dp.CUSTOM_CODE as DETAIL_NO,'
      ''
      '  %HAS_DOC_ITEMS[dp] as DETAIL_HAS_DOCUMENTATION,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = dp.PRODUCT_CODE)'
      '  ) as DETAIL_HAS_SPEC,'
      ''
      '  dp.IS_INACTIVE as DETAIL_IS_INACTIVE,'
      ''
      '  dp.PARENT_CODE as DETAIL_PARENT_CODE,'
      ''
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = dp.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = dp.DOC_CODE) and'
      '      (d.IS_COMPLETE = 1) and'
      ''
      '      not exists('
      '        select'
      '          1'
      '        from'
      '          DOC_ITEMS di'
      '        where'
      '          (di.DOC_BRANCH_CODE = d.DOC_BRANCH_CODE) and'
      '          (di.DOC_CODE = d.DOC_CODE) and'
      '          (di.IS_INACTIVE = 0) and'
      '          (di.APPROVE_EMPLOYEE_CODE is null) and'
      '          (di.AUTHORIZE_EMPLOYEE_CODE is null)'
      '      )'
      '  ) as DETAIL_IS_SELF_APPROVED,'
      ''
      '  spl.DETAIL_TECH_QUANTITY,'
      '  spl.TOTAL_DETAIL_TECH_QUANTITY,'
      
        '  Coalesce(pspl.TOTAL_DETAIL_TECH_QUANTITY, 1) as PAR_TOTAL_DETA' +
        'IL_TECH_QUANTITY,'
      '  dp.TECH_MEASURE_CODE as DETAIL_TECH_MEASURE_CODE,'
      '  spl.PRODUCT_CODE,'
      '  pp.NAME as PRODUCT_NAME,'
      '  pp.CUSTOM_CODE as PRODUCT_NO,'
      '  pp.IS_INACTIVE as PRODUCT_IS_INACTIVE,'
      ''
      '  %HAS_DOC_ITEMS[pp] as PRODUCT_HAS_DOCUMENTATION,'
      ''
      '  spl.PRODUCT_TECH_QUANTITY,'
      '  (spl.TOTAL_DETAIL_TECH_QUANTITY *'
      '   spl.PRODUCT_TECH_QUANTITY) as TOTAL_PRODUCT_TECH_QUANTITY,'
      '  pp.TECH_MEASURE_CODE as PRODUCT_TECH_MEASURE_CODE,'
      '  pp.TECH_MEASURE_COEF as PRODUCT_TECH_MEASURE_COEF,'
      '  (spl.TOTAL_DETAIL_TECH_QUANTITY *'
      '   spl.PRODUCT_TECH_QUANTITY /'
      '   pp.TECH_MEASURE_COEF *'
      '   pp.ACCOUNT_MEASURE_COEF) as TOTAL_PRODUCT_ACCOUNT_QUANTITY,'
      '  pp.ACCOUNT_MEASURE_CODE as PRODUCT_ACCOUNT_MEASURE_CODE,'
      '  pp.ACCOUNT_MEASURE_COEF as PRODUCT_ACCOUNT_MEASURE_COEF,'
      ''
      
        '  (%PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[pp.PRODUCT_CODE ~ Con' +
        'textDate] / pp.ACCOUNT_MEASURE_COEF) as PRODUCT_SECONDARY_SINGLE' +
        '_PRICE,'
      ''
      
        '  (%PSD_SINGLE_PRICE_IN_BASE_CURRENCY[pp.PRODUCT_CODE ~ ContextD' +
        'ate] / pp.ACCOUNT_MEASURE_COEF) as PRODUCT_SINGLE_PRICE,'
      ''
      
        '  %PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[pp.PRODUCT_CODE ~ Context' +
        'Date] as PRODUCT_INVESTMENT_VALUE_2,'
      
        '  %PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[pp.PRODUCT_CODE ~ Context' +
        'Date] as PRODUCT_INVESTMENT_VALUE_3,'
      
        '  %PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[pp.PRODUCT_CODE ~ Context' +
        'Date] as PRODUCT_INVESTMENT_VALUE_4,'
      
        '  %PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[pp.PRODUCT_CODE ~ Context' +
        'Date] as PRODUCT_INVESTMENT_VALUE_5,'
      ''
      
        '  %PRODUCT_PRECISION_LEVEL_CODE[pp.PRODUCT_CODE ~ ContextDate] a' +
        's PRODUCT_PRECISION_LEVEL_CODE,'
      ''
      '  ( spl.TOTAL_DETAIL_TECH_QUANTITY *'
      '    spl.PRODUCT_TECH_QUANTITY *'
      
        '    %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[pp.PRODUCT_CODE ~ Context' +
        'Date] /'
      '    pp.TECH_MEASURE_COEF'
      '  ) as PRODUCT_SECONDARY_TOTAL_PRICE,'
      ''
      
        '  Nvl2(spl.PRODUCT_CODE, Decode(spl.PRODUCT_CODE, spl.DETAIL_COD' +
        'E, 0, 1), 0) as PRODUCT_IS_FOR_TREATMENT_USE,'
      
        '  Decode(spl.PRODUCT_CODE, spl.DETAIL_CODE, 1, 0) as PRODUCT_IS_' +
        'FOR_DIRECT_USE,'
      '  spl.NOTES,'
      '  spl.CONSTRUCTION_NOTES,'
      '  spl.IS_IMPORTED,'
      '  spl.IS_FOR_SINGLE_USE,'
      ''
      '  Coalesce(pspl.IS_IMPORTED, 0) as IS_IMPORTED_SUBDETAIL,'
      ''
      
        '  Nvl2(spl.STRUCT_CHANGE_EMPLOYEE_CODE, 1, 0) as IS_STRUCT_CHANG' +
        'ED,'
      '  spl.STRUCT_CHANGE_EMPLOYEE_CODE,'
      '  spl.STRUCT_CHANGE_DATE,'
      '  spl.STRUCT_CHANGE_TIME,'
      '  spl.IS_COMPLETE'
      ''
      'from'
      '  SPEC_LINES spl,'
      '  SPEC_LINES pspl,'
      '  PRODUCTS dp,'
      '  PRODUCTS pp'
      ''
      'where'
      '  (spl.SPEC_PRODUCT_CODE = pspl.SPEC_PRODUCT_CODE(+)) and'
      '  (spl.PARENT_SPEC_LINE_CODE = pspl.SPEC_LINE_CODE(+)) and'
      '  (spl.DETAIL_CODE = dp.PRODUCT_CODE) and'
      '  (spl.PRODUCT_CODE = pp.PRODUCT_CODE(+)) and'
      '  (spl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (:CREATE_LIKE = 0)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[dp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[pp.PRODUCT_CODE ~ Context' +
          'Date]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[pp.PRODUCT_CODE ~ ContextDate]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[pp.PRODUCT_CODE ~ ContextDat' +
          'e]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[pp.PRODUCT_CODE ~ ContextDat' +
          'e]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[pp.PRODUCT_CODE ~ ContextDat' +
          'e]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[pp.PRODUCT_CODE ~ ContextDat' +
          'e]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'PRODUCT_PRECISION_LEVEL_CODE[pp.PRODUCT_CODE ~ ContextDate]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SPEC_LINES_FOR_EDIT'
    Left = 208
    Top = 240
    object qrySpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'PARENT_SPEC_LINE_CODE'
    end
    object qrySpecLinesNO_1: TAbmesFloatField
      FieldName = 'NO_1'
    end
    object qrySpecLinesNO_2: TAbmesFloatField
      FieldName = 'NO_2'
    end
    object qrySpecLinesNO_3: TAbmesFloatField
      FieldName = 'NO_3'
    end
    object qrySpecLinesNO_4: TAbmesFloatField
      FieldName = 'NO_4'
    end
    object qrySpecLinesNO_5: TAbmesFloatField
      FieldName = 'NO_5'
    end
    object qrySpecLinesNO_6: TAbmesFloatField
      FieldName = 'NO_6'
    end
    object qrySpecLinesNO_7: TAbmesFloatField
      FieldName = 'NO_7'
    end
    object qrySpecLinesNO_8: TAbmesFloatField
      FieldName = 'NO_8'
    end
    object qrySpecLinesNO_9: TAbmesFloatField
      FieldName = 'NO_9'
    end
    object qrySpecLinesNO_10: TAbmesFloatField
      FieldName = 'NO_10'
    end
    object qrySpecLinesNO_11: TAbmesFloatField
      FieldName = 'NO_11'
    end
    object qrySpecLinesNO_12: TAbmesFloatField
      FieldName = 'NO_12'
    end
    object qrySpecLinesNO_13: TAbmesFloatField
      FieldName = 'NO_13'
    end
    object qrySpecLinesNO_14: TAbmesFloatField
      FieldName = 'NO_14'
    end
    object qrySpecLinesNO_15: TAbmesFloatField
      FieldName = 'NO_15'
    end
    object qrySpecLinesNO_16: TAbmesFloatField
      FieldName = 'NO_16'
    end
    object qrySpecLinesNO_17: TAbmesFloatField
      FieldName = 'NO_17'
    end
    object qrySpecLinesNO_18: TAbmesFloatField
      FieldName = 'NO_18'
    end
    object qrySpecLinesNO_19: TAbmesFloatField
      FieldName = 'NO_19'
    end
    object qrySpecLinesNO_20: TAbmesFloatField
      FieldName = 'NO_20'
    end
    object qrySpecLinesNO_21: TAbmesFloatField
      FieldName = 'NO_21'
    end
    object qrySpecLinesNO_22: TAbmesFloatField
      FieldName = 'NO_22'
    end
    object qrySpecLinesNO_23: TAbmesFloatField
      FieldName = 'NO_23'
    end
    object qrySpecLinesNO_24: TAbmesFloatField
      FieldName = 'NO_24'
    end
    object qrySpecLinesNO_25: TAbmesFloatField
      FieldName = 'NO_25'
    end
    object qrySpecLinesNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qrySpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object qrySpecLinesDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qrySpecLinesDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qrySpecLinesDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
      ProviderFlags = []
    end
    object qrySpecLinesDETAIL_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qrySpecLinesDETAIL_HAS_SPEC: TAbmesFloatField
      FieldName = 'DETAIL_HAS_SPEC'
      ProviderFlags = []
    end
    object qrySpecLinesDETAIL_IS_INACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_IS_INACTIVE'
      ProviderFlags = []
    end
    object qrySpecLinesDETAIL_IS_SELF_APPROVED: TAbmesFloatField
      FieldName = 'DETAIL_IS_SELF_APPROVED'
      ProviderFlags = []
    end
    object qrySpecLinesDETAIL_PARENT_CODE: TAbmesFloatField
      FieldName = 'DETAIL_PARENT_CODE'
      ProviderFlags = []
    end
    object qrySpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_QUANTITY'
    end
    object qrySpecLinesTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_DETAIL_TECH_QUANTITY'
    end
    object qrySpecLinesPAR_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PAR_TOTAL_DETAIL_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qrySpecLinesDETAIL_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'DETAIL_TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qrySpecLinesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qrySpecLinesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_IS_INACTIVE: TAbmesFloatField
      FieldName = 'PRODUCT_IS_INACTIVE'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object qrySpecLinesTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_TECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_MEASURE_COEF'
      ProviderFlags = []
    end
    object qrySpecLinesTOTAL_PRODUCT_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_ACCOUNT_QUANTITY'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_SECONDARY_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SECONDARY_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_INVESTMENT_VALUE_2: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_2'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_INVESTMENT_VALUE_3: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_3'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_INVESTMENT_VALUE_4: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_4'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_INVESTMENT_VALUE_5: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_5'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_PRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PRECISION_LEVEL_CODE'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_SECONDARY_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SECONDARY_TOTAL_PRICE'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_IS_FOR_TREATMENT_USE: TAbmesFloatField
      FieldName = 'PRODUCT_IS_FOR_TREATMENT_USE'
      ProviderFlags = []
    end
    object qrySpecLinesPRODUCT_IS_FOR_DIRECT_USE: TAbmesFloatField
      FieldName = 'PRODUCT_IS_FOR_DIRECT_USE'
      ProviderFlags = []
    end
    object qrySpecLinesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qrySpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField
      FieldName = 'CONSTRUCTION_NOTES'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object qrySpecLinesIS_IMPORTED: TAbmesFloatField
      FieldName = 'IS_IMPORTED'
      FieldValueType = fvtBoolean
    end
    object qrySpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField
      FieldName = 'IS_FOR_SINGLE_USE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySpecLinesIS_IMPORTED_SUBDETAIL: TAbmesFloatField
      FieldName = 'IS_IMPORTED_SUBDETAIL'
      ProviderFlags = []
    end
    object qrySpecLinesIS_STRUCT_CHANGED: TAbmesFloatField
      FieldName = 'IS_STRUCT_CHANGED'
      ProviderFlags = []
    end
    object qrySpecLinesSTRUCT_CHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STRUCT_CHANGE_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySpecLinesSTRUCT_CHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'STRUCT_CHANGE_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySpecLinesSTRUCT_CHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'STRUCT_CHANGE_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object qrySpecLinesIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
    end
  end
  object prvInsertSpecLines: TDataSetProvider
    DataSet = qryInsertSpecLines
    OnGetData = prvInsertSpecLinesGetData
    AfterGetRecords = prvInsertSpecLinesAfterGetRecords
    Left = 72
    Top = 208
  end
  object qryInsertSpecLines: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  spl.SPEC_PRODUCT_CODE,'
      '  spl.SPEC_LINE_CODE,'
      '  spl.NO_1,'
      '  spl.NO_2,'
      '  spl.NO_3,'
      '  spl.NO_4,'
      '  spl.NO_5,'
      '  spl.NO_6,'
      '  spl.NO_7,'
      '  spl.NO_8,'
      '  spl.NO_9,'
      '  spl.NO_10,'
      '  spl.NO_11,'
      '  spl.NO_12,'
      '  spl.NO_13,'
      '  spl.NO_14,'
      '  spl.NO_15,'
      '  spl.NO_16,'
      '  spl.NO_17,'
      '  spl.NO_18,'
      '  spl.NO_19,'
      '  spl.NO_20,'
      '  spl.NO_21,'
      '  spl.NO_22,'
      '  spl.NO_23,'
      '  spl.NO_24,'
      '  spl.NO_25,'
      '  spl.NO_AS_TEXT,'
      '  spl.NO_AS_FORMATED_TEXT,'
      '  spl.DETAIL_CODE,'
      '  Coalesce(spl.DETAIL_TECH_QUANTITY, 1) as DETAIL_TECH_QUANTITY,'
      '  spl.PRODUCT_CODE,'
      '  spl.PRODUCT_TECH_QUANTITY,'
      '  spl.NOTES,'
      '  spl.CONSTRUCTION_NOTES,'
      '  spl.IS_FOR_SINGLE_USE,'
      ''
      '  Decode(spl.NO_1, 0, 1, spl.IS_IMPORTED) as IS_IMPORTED,'
      '  Coalesce(pspl.NO_1, -1) as PARENT_NO_1,'
      '  Coalesce(pspl.NO_2, -1) as PARENT_NO_2,'
      '  Coalesce(pspl.NO_3, -1) as PARENT_NO_3,'
      '  Coalesce(pspl.NO_4, -1) as PARENT_NO_4,'
      '  Coalesce(pspl.NO_5, -1) as PARENT_NO_5,'
      '  Coalesce(pspl.NO_6, -1) as PARENT_NO_6,'
      '  Coalesce(pspl.NO_7, -1) as PARENT_NO_7,'
      '  Coalesce(pspl.NO_8, -1) as PARENT_NO_8,'
      '  Coalesce(pspl.NO_9, -1) as PARENT_NO_9,'
      '  Coalesce(pspl.NO_10, -1) as PARENT_NO_10,'
      '  Coalesce(pspl.NO_11, -1) as PARENT_NO_11,'
      '  Coalesce(pspl.NO_12, -1) as PARENT_NO_12,'
      '  Coalesce(pspl.NO_13, -1) as PARENT_NO_13,'
      '  Coalesce(pspl.NO_14, -1) as PARENT_NO_14,'
      '  Coalesce(pspl.NO_15, -1) as PARENT_NO_15,'
      '  Coalesce(pspl.NO_16, -1) as PARENT_NO_16,'
      '  Coalesce(pspl.NO_17, -1) as PARENT_NO_17,'
      '  Coalesce(pspl.NO_18, -1) as PARENT_NO_18,'
      '  Coalesce(pspl.NO_19, -1) as PARENT_NO_19,'
      '  Coalesce(pspl.NO_20, -1) as PARENT_NO_20,'
      '  Coalesce(pspl.NO_21, -1) as PARENT_NO_21,'
      '  Coalesce(pspl.NO_22, -1) as PARENT_NO_22,'
      '  Coalesce(pspl.NO_23, -1) as PARENT_NO_23,'
      '  Coalesce(pspl.NO_24, -1) as PARENT_NO_24,'
      '  Coalesce(pspl.NO_25, -1) as PARENT_NO_25,'
      ''
      '  dp.NAME as DETAIL_NAME,'
      '  dp.CUSTOM_CODE as DETAIL_NO,'
      ''
      '  %HAS_DOC_ITEMS[dp] as DETAIL_HAS_DOCUMENTATION,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = dp.PRODUCT_CODE)'
      '  ) as DETAIL_HAS_SPEC,'
      ''
      '  dp.IS_INACTIVE as DETAIL_IS_INACTIVE,'
      ''
      '  dp.TECH_MEASURE_CODE as DETAIL_TECH_MEASURE_CODE,'
      '  dp.PARENT_CODE as DETAIL_PARENT_CODE,'
      ''
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = dp.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = dp.DOC_CODE) and'
      '      (d.IS_COMPLETE = 1) and'
      ''
      '      not exists('
      '        select'
      '          1'
      '        from'
      '          DOC_ITEMS di'
      '        where'
      '          (di.DOC_BRANCH_CODE = d.DOC_BRANCH_CODE) and'
      '          (di.DOC_CODE = d.DOC_CODE) and'
      '          (di.IS_INACTIVE = 0) and'
      '          (di.APPROVE_EMPLOYEE_CODE is null) and'
      '          (di.AUTHORIZE_EMPLOYEE_CODE is null)'
      '      )'
      '  ) as DETAIL_IS_SELF_APPROVED,'
      ''
      '  pp.NAME as PRODUCT_NAME,'
      '  pp.CUSTOM_CODE as PRODUCT_NO,'
      ''
      '  %HAS_DOC_ITEMS[pp] as PRODUCT_HAS_DOCUMENTATION,'
      '  pp.IS_INACTIVE as PRODUCT_IS_INACTIVE,'
      ''
      '  pp.TECH_MEASURE_CODE as PRODUCT_TECH_MEASURE_CODE,'
      '  pp.TECH_MEASURE_COEF as PRODUCT_TECH_MEASURE_COEF,'
      '  pp.ACCOUNT_MEASURE_CODE as PRODUCT_ACCOUNT_MEASURE_CODE,'
      '  pp.ACCOUNT_MEASURE_COEF as PRODUCT_ACCOUNT_MEASURE_COEF,'
      ''
      
        '  (%PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[pp.PRODUCT_CODE ~ Con' +
        'textDate] / pp.ACCOUNT_MEASURE_COEF) as PRODUCT_SECONDARY_SINGLE' +
        '_PRICE,'
      ''
      
        '  (%PSD_SINGLE_PRICE_IN_BASE_CURRENCY[pp.PRODUCT_CODE ~ ContextD' +
        'ate] / pp.ACCOUNT_MEASURE_COEF) as PRODUCT_SINGLE_PRICE,'
      ''
      
        '  %PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[pp.PRODUCT_CODE ~ Context' +
        'Date] as PRODUCT_INVESTMENT_VALUE_2,'
      
        '  %PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[pp.PRODUCT_CODE ~ Context' +
        'Date] as PRODUCT_INVESTMENT_VALUE_3,'
      
        '  %PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[pp.PRODUCT_CODE ~ Context' +
        'Date] as PRODUCT_INVESTMENT_VALUE_4,'
      
        '  %PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[pp.PRODUCT_CODE ~ Context' +
        'Date] as PRODUCT_INVESTMENT_VALUE_5,'
      ''
      
        '  %PRODUCT_PRECISION_LEVEL_CODE[pp.PRODUCT_CODE ~ ContextDate] a' +
        's PRODUCT_PRECISION_LEVEL_CODE,'
      ''
      '  spl.IS_COMPLETE'
      ''
      'from'
      '  SPEC_LINES spl,'
      '  SPEC_LINES pspl,'
      '  PRODUCTS dp,'
      '  PRODUCTS pp'
      ''
      'where'
      '  (spl.SPEC_PRODUCT_CODE = pspl.SPEC_PRODUCT_CODE(+)) and'
      '  (spl.PARENT_SPEC_LINE_CODE = pspl.SPEC_LINE_CODE(+)) and'
      '  (spl.DETAIL_CODE = dp.PRODUCT_CODE) and'
      '  (spl.PRODUCT_CODE = pp.PRODUCT_CODE(+)) and'
      ''
      '  (spl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)'
      ''
      'order by'
      '  spl.NO_AS_FORMATED_TEXT'
      ''
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[dp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[pp.PRODUCT_CODE ~ Context' +
          'Date]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[pp.PRODUCT_CODE ~ ContextDate]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[pp.PRODUCT_CODE ~ ContextDat' +
          'e]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[pp.PRODUCT_CODE ~ ContextDat' +
          'e]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[pp.PRODUCT_CODE ~ ContextDat' +
          'e]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[pp.PRODUCT_CODE ~ ContextDat' +
          'e]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'PRODUCT_PRECISION_LEVEL_CODE[pp.PRODUCT_CODE ~ ContextDate]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 72
    Top = 256
    object qryInsertSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryInsertSpecLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qryInsertSpecLinesNO_1: TAbmesFloatField
      FieldName = 'NO_1'
    end
    object qryInsertSpecLinesNO_2: TAbmesFloatField
      FieldName = 'NO_2'
    end
    object qryInsertSpecLinesNO_3: TAbmesFloatField
      FieldName = 'NO_3'
    end
    object qryInsertSpecLinesNO_4: TAbmesFloatField
      FieldName = 'NO_4'
    end
    object qryInsertSpecLinesNO_5: TAbmesFloatField
      FieldName = 'NO_5'
    end
    object qryInsertSpecLinesNO_6: TAbmesFloatField
      FieldName = 'NO_6'
    end
    object qryInsertSpecLinesNO_7: TAbmesFloatField
      FieldName = 'NO_7'
    end
    object qryInsertSpecLinesNO_8: TAbmesFloatField
      FieldName = 'NO_8'
    end
    object qryInsertSpecLinesNO_9: TAbmesFloatField
      FieldName = 'NO_9'
    end
    object qryInsertSpecLinesNO_10: TAbmesFloatField
      FieldName = 'NO_10'
    end
    object qryInsertSpecLinesNO_11: TAbmesFloatField
      FieldName = 'NO_11'
    end
    object qryInsertSpecLinesNO_12: TAbmesFloatField
      FieldName = 'NO_12'
    end
    object qryInsertSpecLinesNO_13: TAbmesFloatField
      FieldName = 'NO_13'
    end
    object qryInsertSpecLinesNO_14: TAbmesFloatField
      FieldName = 'NO_14'
    end
    object qryInsertSpecLinesNO_15: TAbmesFloatField
      FieldName = 'NO_15'
    end
    object qryInsertSpecLinesNO_16: TAbmesFloatField
      FieldName = 'NO_16'
    end
    object qryInsertSpecLinesNO_17: TAbmesFloatField
      FieldName = 'NO_17'
    end
    object qryInsertSpecLinesNO_18: TAbmesFloatField
      FieldName = 'NO_18'
    end
    object qryInsertSpecLinesNO_19: TAbmesFloatField
      FieldName = 'NO_19'
    end
    object qryInsertSpecLinesNO_20: TAbmesFloatField
      FieldName = 'NO_20'
    end
    object qryInsertSpecLinesNO_21: TAbmesFloatField
      FieldName = 'NO_21'
    end
    object qryInsertSpecLinesNO_22: TAbmesFloatField
      FieldName = 'NO_22'
    end
    object qryInsertSpecLinesNO_23: TAbmesFloatField
      FieldName = 'NO_23'
    end
    object qryInsertSpecLinesNO_24: TAbmesFloatField
      FieldName = 'NO_24'
    end
    object qryInsertSpecLinesNO_25: TAbmesFloatField
      FieldName = 'NO_25'
    end
    object qryInsertSpecLinesNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qryInsertSpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object qryInsertSpecLinesDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qryInsertSpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_QUANTITY'
    end
    object qryInsertSpecLinesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryInsertSpecLinesPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object qryInsertSpecLinesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryInsertSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField
      FieldName = 'CONSTRUCTION_NOTES'
      Size = 250
    end
    object qryInsertSpecLinesIS_IMPORTED: TAbmesFloatField
      FieldName = 'IS_IMPORTED'
    end
    object qryInsertSpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField
      FieldName = 'IS_FOR_SINGLE_USE'
    end
    object qryInsertSpecLinesPARENT_NO_1: TAbmesFloatField
      FieldName = 'PARENT_NO_1'
    end
    object qryInsertSpecLinesPARENT_NO_2: TAbmesFloatField
      FieldName = 'PARENT_NO_2'
    end
    object qryInsertSpecLinesPARENT_NO_3: TAbmesFloatField
      FieldName = 'PARENT_NO_3'
    end
    object qryInsertSpecLinesPARENT_NO_4: TAbmesFloatField
      FieldName = 'PARENT_NO_4'
    end
    object qryInsertSpecLinesPARENT_NO_5: TAbmesFloatField
      FieldName = 'PARENT_NO_5'
    end
    object qryInsertSpecLinesPARENT_NO_6: TAbmesFloatField
      FieldName = 'PARENT_NO_6'
    end
    object qryInsertSpecLinesPARENT_NO_7: TAbmesFloatField
      FieldName = 'PARENT_NO_7'
    end
    object qryInsertSpecLinesPARENT_NO_8: TAbmesFloatField
      FieldName = 'PARENT_NO_8'
    end
    object qryInsertSpecLinesPARENT_NO_9: TAbmesFloatField
      FieldName = 'PARENT_NO_9'
    end
    object qryInsertSpecLinesPARENT_NO_10: TAbmesFloatField
      FieldName = 'PARENT_NO_10'
    end
    object qryInsertSpecLinesPARENT_NO_11: TAbmesFloatField
      FieldName = 'PARENT_NO_11'
    end
    object qryInsertSpecLinesPARENT_NO_12: TAbmesFloatField
      FieldName = 'PARENT_NO_12'
    end
    object qryInsertSpecLinesPARENT_NO_13: TAbmesFloatField
      FieldName = 'PARENT_NO_13'
    end
    object qryInsertSpecLinesPARENT_NO_14: TAbmesFloatField
      FieldName = 'PARENT_NO_14'
    end
    object qryInsertSpecLinesPARENT_NO_15: TAbmesFloatField
      FieldName = 'PARENT_NO_15'
    end
    object qryInsertSpecLinesPARENT_NO_16: TAbmesFloatField
      FieldName = 'PARENT_NO_16'
    end
    object qryInsertSpecLinesPARENT_NO_17: TAbmesFloatField
      FieldName = 'PARENT_NO_17'
    end
    object qryInsertSpecLinesPARENT_NO_18: TAbmesFloatField
      FieldName = 'PARENT_NO_18'
    end
    object qryInsertSpecLinesPARENT_NO_19: TAbmesFloatField
      FieldName = 'PARENT_NO_19'
    end
    object qryInsertSpecLinesPARENT_NO_20: TAbmesFloatField
      FieldName = 'PARENT_NO_20'
    end
    object qryInsertSpecLinesPARENT_NO_21: TAbmesFloatField
      FieldName = 'PARENT_NO_21'
    end
    object qryInsertSpecLinesPARENT_NO_22: TAbmesFloatField
      FieldName = 'PARENT_NO_22'
    end
    object qryInsertSpecLinesPARENT_NO_23: TAbmesFloatField
      FieldName = 'PARENT_NO_23'
    end
    object qryInsertSpecLinesPARENT_NO_24: TAbmesFloatField
      FieldName = 'PARENT_NO_24'
    end
    object qryInsertSpecLinesPARENT_NO_25: TAbmesFloatField
      FieldName = 'PARENT_NO_25'
    end
    object qryInsertSpecLinesDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryInsertSpecLinesDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qryInsertSpecLinesDETAIL_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOCUMENTATION'
    end
    object qryInsertSpecLinesDETAIL_HAS_SPEC: TAbmesFloatField
      FieldName = 'DETAIL_HAS_SPEC'
    end
    object qryInsertSpecLinesDETAIL_IS_INACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_IS_INACTIVE'
    end
    object qryInsertSpecLinesDETAIL_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'DETAIL_TECH_MEASURE_CODE'
    end
    object qryInsertSpecLinesDETAIL_PARENT_CODE: TAbmesFloatField
      FieldName = 'DETAIL_PARENT_CODE'
    end
    object qryInsertSpecLinesDETAIL_IS_SELF_APPROVED: TAbmesFloatField
      FieldName = 'DETAIL_IS_SELF_APPROVED'
    end
    object qryInsertSpecLinesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryInsertSpecLinesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryInsertSpecLinesPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
    end
    object qryInsertSpecLinesPRODUCT_IS_INACTIVE: TAbmesFloatField
      FieldName = 'PRODUCT_IS_INACTIVE'
    end
    object qryInsertSpecLinesPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_MEASURE_CODE'
    end
    object qryInsertSpecLinesPRODUCT_TECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_MEASURE_COEF'
    end
    object qryInsertSpecLinesPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_CODE'
    end
    object qryInsertSpecLinesPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
    end
    object qryInsertSpecLinesPRODUCT_SECONDARY_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SECONDARY_SINGLE_PRICE'
    end
    object qryInsertSpecLinesPRODUCT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SINGLE_PRICE'
    end
    object qryInsertSpecLinesPRODUCT_INVESTMENT_VALUE_2: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_2'
    end
    object qryInsertSpecLinesPRODUCT_INVESTMENT_VALUE_3: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_3'
    end
    object qryInsertSpecLinesPRODUCT_INVESTMENT_VALUE_4: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_4'
    end
    object qryInsertSpecLinesPRODUCT_INVESTMENT_VALUE_5: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_5'
    end
    object qryInsertSpecLinesPRODUCT_PRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PRECISION_LEVEL_CODE'
    end
    object qryInsertSpecLinesIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
    end
  end
  object qrySpecModelVariants: TAbmesSQLQuery
    DataSource = dsSpec
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'CREATE_LIKE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  smv.SPEC_PRODUCT_CODE,'
      '  smv.SPEC_MODEL_VARIANT_NO,'
      '  smv.MAIN_DEPT_CODE,'
      '  d.NAME as MAIN_DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as M' +
        'AIN_DEPT_IDENTIFIER,'
      '  d.BEGIN_DATE as MAIN_DEPT_BEGIN_DATE,'
      '  d.END_DATE as MAIN_DEPT_END_DATE,'
      '  smv.RESULT_STORE_CODE,'
      '  smv.MIN_TECH_QUANTITY,'
      '  smv.MAX_TECH_QUANTITY,'
      '  smv.AUTHORIZATION_EMPLOYEE_CODE,'
      '  smv.AUTHORIZATION_DATE,'
      '  smv.AUTHORIZATION_TIME,'
      '  smv.AUTHORIZATION_OF_OPERATIONS,'
      '  smv.CREATE_EMPLOYEE_CODE,'
      '  smv.CREATE_DATE,'
      '  smv.CREATE_TIME,'
      '  smv.CHANGE_EMPLOYEE_CODE,'
      '  smv.CHANGE_DATE,'
      '  smv.CHANGE_TIME,'
      '  (smv.SPEC_MODEL_VARIANT_NO || '#39'. '#39' || d.NAME || '#39' - '#39' ||'
      
        '   dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as M' +
        'ODEL_VARIANT_IDENTIFIER,'
      '   '
      '  ( select'
      '      Max(smvs.TOTAL_TREATMENT_WORKDAYS)'
      '    from'
      '      SPEC_MODEL_VARIANT_STAGES smvs'
      '    where'
      '      (smvs.SPEC_PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      '      (smvs.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIANT_NO)'
      '  ) as MAX_TOTAL_TREATMENT_WORKDAYS,'
      ''
      '  0 as IS_CHANGED,'
      ''
      '  smv.NOTES,'
      '  smv.IS_INACTIVE'
      ''
      'from'
      '  SPEC_MODEL_VARIANTS smv,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      ''
      'where'
      '  (smv.MAIN_DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (smv.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (:CREATE_LIKE = 0)'
      ''
      'order by'
      '  smv.SPEC_PRODUCT_CODE,'
      '  smv.SPEC_MODEL_VARIANT_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SPEC_MODEL_VARIANTS_FOR_EDIT'
    Left = 368
    Top = 240
    object qrySpecModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object qrySpecModelVariantsMAIN_DEPT_NAME: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qrySpecModelVariantsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qrySpecModelVariantsMAIN_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAIN_DEPT_BEGIN_DATE'
      ProviderFlags = []
    end
    object qrySpecModelVariantsMAIN_DEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAIN_DEPT_END_DATE'
      ProviderFlags = []
    end
    object qrySpecModelVariantsRESULT_STORE_CODE: TAbmesFloatField
      FieldName = 'RESULT_STORE_CODE'
    end
    object qrySpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_TECH_QUANTITY'
    end
    object qrySpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_TECH_QUANTITY'
    end
    object qrySpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZATION_EMPLOYEE_CODE'
    end
    object qrySpecModelVariantsAUTHORIZATION_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZATION_DATE'
    end
    object qrySpecModelVariantsAUTHORIZATION_TIME: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZATION_TIME'
    end
    object qrySpecModelVariantsAUTHORIZATION_OF_OPERATIONS: TAbmesFloatField
      FieldName = 'AUTHORIZATION_OF_OPERATIONS'
      ProviderFlags = [pfInUpdate]
    end
    object qrySpecModelVariantsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qrySpecModelVariantsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qrySpecModelVariantsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qrySpecModelVariantsCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qrySpecModelVariantsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qrySpecModelVariantsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qrySpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MODEL_VARIANT_IDENTIFIER'
      ProviderFlags = []
      Size = 191
    end
    object qrySpecModelVariantsMAX_TOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'MAX_TOTAL_TREATMENT_WORKDAYS'
      ProviderFlags = []
    end
    object qrySpecModelVariantsIS_CHANGED: TAbmesFloatField
      FieldName = 'IS_CHANGED'
      ProviderFlags = []
    end
    object qrySpecModelVariantsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qrySpecModelVariantsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object dsSpecLines: TDataSource
    DataSet = qrySpecLines
    Left = 208
    Top = 288
  end
  object qrySpecModelVariantStages: TAbmesSQLQuery
    BeforeScroll = qrySpecModelVariantStagesBeforeScroll
    DataSource = dsSpecModelVariantLines
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  smvs.SPEC_PRODUCT_CODE,'
      '  smvs.SPEC_MODEL_VARIANT_NO,'
      '  smvs.SPEC_LINE_CODE,'
      '  smvs.SPEC_LINE_STAGE_CODE,'
      '  smvs.SPEC_LINE_STAGE_NO,'
      '  smvs.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  Nvl2(s.STORE_CODE, 1, 0) as DEPT_IS_STORE,'
      '  d.BEGIN_DATE as DEPT_BEGIN_DATE,'
      '  d.END_DATE as DEPT_END_DATE,'
      '  smvs.TREATMENT_WORKDAYS,'
      '  smvs.TOTAL_TREATMENT_WORKDAYS,'
      '  smvs.OUTGOING_WORKDAYS,'
      '  smvs.IS_AUTO_MOVEMENT,'
      '  smvs.DOC_BRANCH_CODE,'
      '  smvs.DOC_CODE,'
      '  smvs.SMVS_TYPE_CODE,'
      '  smvs.EXTERNAL_WORK_PRICE,'
      ''
      '  %HAS_DOC_ITEMS[smvs] as HAS_DOCUMENTATION,'
      ''
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvs.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvs.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvs.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      SMVS_OPERATIONS smvso'
      '    where'
      '      (smvso.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      '      (smvso.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      
        '      (smvso.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL_VARIANT_NO' +
        ') and'
      
        '      (smvso.SPEC_LINE_STAGE_CODE = smvs.SPEC_LINE_STAGE_CODE) a' +
        'nd'
      '      (smvso.SMVS_OPERATION_VARIANT_NO = 0)'
      '  ) as OPERATION_COUNT'
      ''
      'from'
      '  SPEC_MODEL_VARIANT_STAGES smvs,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  STORES s'
      ''
      'where'
      '  (smvs.DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (d.DEPT_CODE = s.STORE_CODE(+)) and'
      '  (smvs.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvs.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      '  (smvs.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      ''
      
        '  (1 = 2)  -- triabva da ne vrushta nishto, za da bachka mehaniz' +
        'uma, za ednokratno iztochvane'
      ''
      'order by'
      '  smvs.SPEC_PRODUCT_CODE,'
      '  smvs.SPEC_MODEL_VARIANT_NO,'
      '  smvs.SPEC_LINE_CODE,'
      '  smvs.SPEC_LINE_STAGE_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[smvs]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SMVS_FOR_EDIT'
    Left = 208
    Top = 432
    object qrySpecModelVariantStagesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecModelVariantStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecModelVariantStagesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecModelVariantStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecModelVariantStagesSPEC_LINE_STAGE_NO: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_NO'
    end
    object qrySpecModelVariantStagesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qrySpecModelVariantStagesDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qrySpecModelVariantStagesDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qrySpecModelVariantStagesDEPT_IS_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_STORE'
      ProviderFlags = []
    end
    object qrySpecModelVariantStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
      ProviderFlags = []
    end
    object qrySpecModelVariantStagesDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
      ProviderFlags = []
    end
    object qrySpecModelVariantStagesTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object qrySpecModelVariantStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TOTAL_TREATMENT_WORKDAYS'
    end
    object qrySpecModelVariantStagesOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object qrySpecModelVariantStagesIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      ProviderFlags = [pfInUpdate]
      FieldValueType = fvtBoolean
    end
    object qrySpecModelVariantStagesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySpecModelVariantStagesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySpecModelVariantStagesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qrySpecModelVariantStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      ProviderFlags = []
    end
    object qrySpecModelVariantStagesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      ProviderFlags = []
    end
    object qrySpecModelVariantStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qrySpecModelVariantStagesSMVS_TYPE_CODE: TAbmesFloatField
      FieldName = 'SMVS_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySpecModelVariantStagesEXTERNAL_WORK_PRICE: TAbmesFloatField
      FieldName = 'EXTERNAL_WORK_PRICE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySpecModelVariantStagesOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
      ProviderFlags = []
    end
  end
  object qryUpdSpecVersion: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'AUTHORIZATION_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'AUTHORIZATION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'AUTHORIZATION_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHANGE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_VERSION_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update SPEC_VERSIONS'
      'set'
      '  AUTHORIZATION_EMPLOYEE_CODE = :AUTHORIZATION_EMPLOYEE_CODE,'
      '  AUTHORIZATION_DATE = :AUTHORIZATION_DATE,'
      '  AUTHORIZATION_TIME = :AUTHORIZATION_TIME,'
      '  CHANGE_EMPLOYEE_CODE = :CHANGE_EMPLOYEE_CODE,'
      '  CHANGE_DATE = :CHANGE_DATE,'
      '  CHANGE_TIME = :CHANGE_TIME'
      'where'
      '  (SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (SPEC_VERSION_NO = :SPEC_VERSION_NO)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 392
    Top = 656
  end
  object qryInsSpecVersion: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_VERSION_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZATION_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'AUTHORIZATION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'AUTHORIZATION_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VERSION_CREATE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'VERSION_CREATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'VERSION_CREATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHANGE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_TIME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into SPEC_VERSIONS'
      ' (SPEC_PRODUCT_CODE,'
      '  SPEC_VERSION_NO,'
      '  AUTHORIZATION_EMPLOYEE_CODE,'
      '  AUTHORIZATION_DATE,'
      '  AUTHORIZATION_TIME,'
      '  VERSION_CREATE_EMPLOYEE_CODE,'
      '  VERSION_CREATE_DATE,'
      '  VERSION_CREATE_TIME,'
      '  CHANGE_EMPLOYEE_CODE,'
      '  CHANGE_DATE,'
      '  CHANGE_TIME)'
      'values'
      ' (:SPEC_PRODUCT_CODE,'
      '  :SPEC_VERSION_NO,'
      '  :AUTHORIZATION_EMPLOYEE_CODE,'
      '  :AUTHORIZATION_DATE,'
      '  :AUTHORIZATION_TIME,'
      '  :VERSION_CREATE_EMPLOYEE_CODE,'
      '  :VERSION_CREATE_DATE,'
      '  :VERSION_CREATE_TIME,'
      '  :CHANGE_EMPLOYEE_CODE,'
      '  :CHANGE_DATE,'
      '  :CHANGE_TIME)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 392
    Top = 608
  end
  object dsInsertSpecLines: TDataSource
    DataSet = qryInsertSpecLines
    Left = 72
    Top = 304
  end
  object qryInsertSpecLineModelStages: TAbmesSQLQuery
    BeforeScroll = qryInsertSpecLineModelStagesBeforeScroll
    DataSource = dsInsertSpecModelVariantLines
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  smvs.SPEC_PRODUCT_CODE,'
      '  smvs.SPEC_LINE_CODE,'
      '  smvs.SPEC_MODEL_VARIANT_NO,'
      '  smvs.SPEC_LINE_STAGE_CODE,'
      '  smvs.SPEC_LINE_STAGE_NO,'
      '  smvs.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  Nvl2(s.STORE_CODE, 1, 0) as DEPT_IS_STORE,'
      '  d.BEGIN_DATE as DEPT_BEGIN_DATE,'
      '  d.END_DATE as DEPT_END_DATE,'
      '  smvs.TREATMENT_WORKDAYS,'
      '  smvs.TOTAL_TREATMENT_WORKDAYS,'
      '  smvs.OUTGOING_WORKDAYS,'
      '  smvs.IS_AUTO_MOVEMENT,'
      '  smvs.DOC_BRANCH_CODE,'
      '  smvs.DOC_CODE,'
      '  smvs.SMVS_TYPE_CODE,'
      '  smvs.EXTERNAL_WORK_PRICE,'
      ''
      '  %HAS_DOC_ITEMS[smvs] as HAS_DOCUMENTATION,'
      ''
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvs.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvs.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvs.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      SMVS_OPERATIONS smvso'
      '    where'
      '      (smvso.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      '      (smvso.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      
        '      (smvso.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL_VARIANT_NO' +
        ') and'
      
        '      (smvso.SPEC_LINE_STAGE_CODE = smvs.SPEC_LINE_STAGE_CODE) a' +
        'nd'
      '      (smvso.SMVS_OPERATION_VARIANT_NO = 0)'
      '  ) as OPERATION_COUNT'
      ''
      'from'
      '  SPEC_MODEL_VARIANT_STAGES smvs,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  STORES s'
      ''
      'where'
      '  (smvs.DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (d.DEPT_CODE = s.STORE_CODE(+)) and'
      '  (smvs.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvs.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      '  (smvs.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      ''
      
        '  (1 = 2)  -- triabva da ne vrushta nishto, za da bachka mehaniz' +
        'uma, za ednokratno iztochvane'
      ''
      'order by'
      '  smvs.SPEC_PRODUCT_CODE,'
      '  smvs.SPEC_LINE_CODE,'
      '  smvs.SPEC_MODEL_VARIANT_NO,'
      '  smvs.SPEC_LINE_STAGE_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[smvs]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 72
    Top = 448
    object qryInsertSpecLineModelStagesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryInsertSpecLineModelStagesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qryInsertSpecLineModelStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qryInsertSpecLineModelStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object qryInsertSpecLineModelStagesSPEC_LINE_STAGE_NO: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_NO'
    end
    object qryInsertSpecLineModelStagesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryInsertSpecLineModelStagesDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qryInsertSpecLineModelStagesDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryInsertSpecLineModelStagesDEPT_IS_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_STORE'
    end
    object qryInsertSpecLineModelStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object qryInsertSpecLineModelStagesDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object qryInsertSpecLineModelStagesTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object qryInsertSpecLineModelStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TOTAL_TREATMENT_WORKDAYS'
    end
    object qryInsertSpecLineModelStagesOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object qryInsertSpecLineModelStagesIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      ProviderFlags = [pfInUpdate]
      FieldValueType = fvtBoolean
    end
    object qryInsertSpecLineModelStagesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryInsertSpecLineModelStagesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryInsertSpecLineModelStagesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryInsertSpecLineModelStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      ProviderFlags = []
    end
    object qryInsertSpecLineModelStagesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      ProviderFlags = []
    end
    object qryInsertSpecLineModelStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryInsertSpecLineModelStagesEXTERNAL_WORK_PRICE: TAbmesFloatField
      FieldName = 'EXTERNAL_WORK_PRICE'
    end
    object qryInsertSpecLineModelStagesSMVS_TYPE_CODE: TAbmesFloatField
      FieldName = 'SMVS_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryInsertSpecLineModelStagesOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
  end
  object prvAuthorizedModelVariants: TDataSetProvider
    DataSet = qryAuthorizedModelVariants
    Left = 384
    Top = 8
  end
  object qryAuthorizedModelVariants: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smv.SPEC_PRODUCT_CODE,'
      '  smv.SPEC_MODEL_VARIANT_NO,'
      '    '
      
        '  (To_Char(smv.SPEC_MODEL_VARIANT_NO, '#39'FM9G999G999G999'#39') || '#39'. '#39 +
        ' ||'
      '   Decode(smv.IS_INACTIVE, 1, '#39'[x] '#39') ||'
      
        '   dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER || '#39' ' +
        '['#39' ||'
      '   Replace('
      
        '     To_Char(smv.MIN_TECH_QUANTITY, '#39'FM9G999G999G990D999'#39') || '#39' ' +
        '- '#39','
      '     To_Char(0, '#39'FMD'#39') || '#39' '#39', '#39' '#39') ||'
      '   Replace('
      
        '     To_Char(smv.MAX_TECH_QUANTITY, '#39'FM9G999G999G990D999'#39') || '#39']' +
        #39','
      '     To_Char(0, '#39'FMD'#39') || '#39']'#39', '#39']'#39') || '#39' - '#39' ||'
      '   d.NAME ||'
      '   Nvl2(smv.NOTES, '#39' ('#39' || smv.NOTES || '#39')'#39', null)'
      '  ) as MODEL_VARIANT_IDENTIFIER,'
      ''
      '  %SPEC_MODEL_VARIANT_STATE[smv] as SPEC_MODEL_VARIANT_STATE'
      ''
      'from'
      '  SPEC_MODEL_VARIANTS smv,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  EMPLOYEES e'
      ''
      'where'
      '  (smv.MAIN_DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (smv.AUTHORIZATION_EMPLOYEE_CODE = e.EMPLOYEE_CODE(+)) and'
      '  (smv.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)'
      '  '
      'order by'
      '  smv.SPEC_MODEL_VARIANT_NO'
      ' ')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'SPEC_MODEL_VARIANT_STATE[smv]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 56
    object qryAuthorizedModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryAuthorizedModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qryAuthorizedModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MODEL_VARIANT_IDENTIFIER'
      Size = 500
    end
    object qryAuthorizedModelVariantsSPEC_MODEL_VARIANT_STATE: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_STATE'
    end
  end
  object prvCLSpec: TDataSetProvider
    DataSet = qryCLSpec
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    OnGetData = prvCLSpecGetData
    AfterGetRecords = prvCLSpecAfterGetRecords
    Left = 568
    Top = 104
  end
  object qryCLSpec: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NEW_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEW_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sp.SPEC_PRODUCT_CODE as ORIGINAL_SPEC_PRODUCT_CODE,'
      '  To_Number(:NEW_SPEC_PRODUCT_CODE) as SPEC_PRODUCT_CODE,'
      '  p.NAME as SPEC_PRODUCT_NAME,'
      '  p.CUSTOM_CODE as SPEC_PRODUCT_NO,'
      '  sp.SPEC_TYPE_CODE,'
      '  sp.WORK_BRANCH_CODE,'
      '  sp.MANUFACTURER_COMPANY_CODE,'
      '  sp.NOTES'
      'from'
      '  SPECS sp,'
      '  PRODUCTS p'
      'where'
      '  (p.PRODUCT_CODE = :NEW_SPEC_PRODUCT_CODE) and'
      '  (sp.SPEC_PRODUCT_CODE = :ORIGINAL_SPEC_PRODUCT_CODE)'
      ' '
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SPECS'
    Left = 568
    Top = 152
    object qryCLSpecORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'ORIGINAL_SPEC_PRODUCT_CODE'
    end
    object qryCLSpecSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSpecSPEC_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPEC_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryCLSpecSPEC_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_NO'
      ProviderFlags = []
    end
    object qryCLSpecSPEC_TYPE_CODE: TAbmesFloatField
      FieldName = 'SPEC_TYPE_CODE'
    end
    object qryCLSpecWORK_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WORK_BRANCH_CODE'
    end
    object qryCLSpecMANUFACTURER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MANUFACTURER_COMPANY_CODE'
    end
    object qryCLSpecNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
  end
  object dsCLSpec: TDataSource
    DataSet = qryCLSpec
    Left = 568
    Top = 200
  end
  object qryCLSpecLines: TAbmesSQLQuery
    DataSource = dsCLSpec
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  To_Number(:ORIGINAL_SPEC_PRODUCT_CODE) as ORIGINAL_SPEC_PRODUC' +
        'T_CODE,'
      '  To_Number(:SPEC_PRODUCT_CODE) as SPEC_PRODUCT_CODE,'
      '  spl.SPEC_LINE_CODE,'
      '  spl.PARENT_SPEC_LINE_CODE,'
      '  spl.NO_1,'
      '  spl.NO_2,'
      '  spl.NO_3,'
      '  spl.NO_4,'
      '  spl.NO_5,'
      '  spl.NO_6,'
      '  spl.NO_7,'
      '  spl.NO_8,'
      '  spl.NO_9,'
      '  spl.NO_10,'
      '  spl.NO_11,'
      '  spl.NO_12,'
      '  spl.NO_13,'
      '  spl.NO_14,'
      '  spl.NO_15,'
      '  spl.NO_16,'
      '  spl.NO_17,'
      '  spl.NO_18,'
      '  spl.NO_19,'
      '  spl.NO_20,'
      '  spl.NO_21,'
      '  spl.NO_22,'
      '  spl.NO_23,'
      '  spl.NO_24,'
      '  spl.NO_25,'
      '  spl.NO_AS_TEXT,'
      '  spl.NO_AS_FORMATED_TEXT,'
      
        '  Decode(spl.NO_1, 0, To_Number(:SPEC_PRODUCT_CODE), spl.DETAIL_' +
        'CODE) as DETAIL_CODE,'
      '  dp.NAME as DETAIL_NAME,'
      '  dp.CUSTOM_CODE as DETAIL_NO,'
      ''
      '  %HAS_DOC_ITEMS[dp] as DETAIL_HAS_DOCUMENTATION,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = dp.PRODUCT_CODE)'
      '  ) as DETAIL_HAS_SPEC,'
      ''
      '  dp.IS_INACTIVE as DETAIL_IS_INACTIVE,'
      ''
      '  dp.PARENT_CODE as DETAIL_PARENT_CODE,'
      ''
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = dp.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = dp.DOC_CODE) and'
      '      (d.IS_COMPLETE = 1) and'
      ''
      '      not exists('
      '        select'
      '          1'
      '        from'
      '          DOC_ITEMS di'
      '        where'
      '          (di.DOC_BRANCH_CODE = d.DOC_BRANCH_CODE) and'
      '          (di.DOC_CODE = d.DOC_CODE) and'
      '          (di.IS_INACTIVE = 0) and'
      '          (di.APPROVE_EMPLOYEE_CODE is null) and'
      '          (di.AUTHORIZE_EMPLOYEE_CODE is null)'
      '      )'
      '  ) as DETAIL_IS_SELF_APPROVED,'
      ''
      '  spl.DETAIL_TECH_QUANTITY,'
      '  spl.TOTAL_DETAIL_TECH_QUANTITY,'
      
        '  Coalesce(pspl.TOTAL_DETAIL_TECH_QUANTITY, 1) as PAR_TOTAL_DETA' +
        'IL_TECH_QUANTITY,'
      '  dp.TECH_MEASURE_CODE as DETAIL_TECH_MEASURE_CODE,'
      '  spl.PRODUCT_CODE,'
      '  pp.NAME as PRODUCT_NAME,'
      '  pp.CUSTOM_CODE as PRODUCT_NO,'
      ''
      '  %HAS_DOC_ITEMS[pp] as PRODUCT_HAS_DOCUMENTATION,'
      '  pp.IS_INACTIVE as PRODUCT_IS_INACTIVE,'
      ''
      '  spl.PRODUCT_TECH_QUANTITY,'
      '  (spl.TOTAL_DETAIL_TECH_QUANTITY *'
      '   spl.PRODUCT_TECH_QUANTITY) as TOTAL_PRODUCT_TECH_QUANTITY,'
      '  pp.TECH_MEASURE_CODE as PRODUCT_TECH_MEASURE_CODE,'
      '  pp.TECH_MEASURE_COEF as PRODUCT_TECH_MEASURE_COEF,'
      '  (spl.TOTAL_DETAIL_TECH_QUANTITY *'
      '   spl.PRODUCT_TECH_QUANTITY /'
      '   pp.TECH_MEASURE_COEF *'
      '   pp.ACCOUNT_MEASURE_COEF) as TOTAL_PRODUCT_ACCOUNT_QUANTITY,'
      '  pp.ACCOUNT_MEASURE_CODE as PRODUCT_ACCOUNT_MEASURE_CODE,'
      '  pp.ACCOUNT_MEASURE_COEF as PRODUCT_ACCOUNT_MEASURE_COEF,'
      ''
      
        '  (%PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[pp.PRODUCT_CODE ~ Con' +
        'textDate] / pp.ACCOUNT_MEASURE_COEF) as PRODUCT_SECONDARY_SINGLE' +
        '_PRICE,'
      ''
      
        '  (%PSD_SINGLE_PRICE_IN_BASE_CURRENCY[pp.PRODUCT_CODE ~ ContextD' +
        'ate] / pp.ACCOUNT_MEASURE_COEF) as PRODUCT_SINGLE_PRICE,'
      ''
      
        '  %PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[pp.PRODUCT_CODE ~ Context' +
        'Date] as PRODUCT_INVESTMENT_VALUE_2,'
      
        '  %PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[pp.PRODUCT_CODE ~ Context' +
        'Date] as PRODUCT_INVESTMENT_VALUE_3,'
      
        '  %PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[pp.PRODUCT_CODE ~ Context' +
        'Date] as PRODUCT_INVESTMENT_VALUE_4,'
      
        '  %PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[pp.PRODUCT_CODE ~ Context' +
        'Date] as PRODUCT_INVESTMENT_VALUE_5,'
      ''
      
        '  %PRODUCT_PRECISION_LEVEL_CODE[pp.PRODUCT_CODE ~ ContextDate] a' +
        's PRODUCT_PRECISION_LEVEL_CODE,'
      ''
      '  ( spl.TOTAL_DETAIL_TECH_QUANTITY *'
      '    spl.PRODUCT_TECH_QUANTITY *'
      
        '    %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[pp.PRODUCT_CODE ~ Context' +
        'Date] /'
      '    pp.TECH_MEASURE_COEF'
      '  ) as PRODUCT_SECONDARY_TOTAL_PRICE,'
      ''
      '  Nvl2(spl.PRODUCT_CODE,'
      '    Decode(spl.PRODUCT_CODE,'
      
        '    Decode(spl.NO_1, 0, To_Number(:SPEC_PRODUCT_CODE), spl.DETAI' +
        'L_CODE),   -- DETAIL_CODE'
      '    0, 1), 0) as PRODUCT_IS_FOR_TREATMENT_USE,'
      '  Decode(spl.PRODUCT_CODE,'
      
        '    Decode(spl.NO_1, 0, To_Number(:SPEC_PRODUCT_CODE), spl.DETAI' +
        'L_CODE),   -- DETAIL_CODE'
      '    1, 0) as PRODUCT_IS_FOR_DIRECT_USE,'
      '  spl.NOTES,'
      '  spl.CONSTRUCTION_NOTES,'
      '  spl.IS_IMPORTED,'
      '  spl.IS_FOR_SINGLE_USE,'
      ''
      '  Coalesce(pspl.IS_IMPORTED, 0) as IS_IMPORTED_SUBDETAIL,'
      ''
      '  spl.IS_COMPLETE'
      ''
      'from'
      '  SPEC_LINES spl,'
      '  SPEC_LINES pspl,'
      '  PRODUCTS dp,'
      '  PRODUCTS pp'
      ''
      'where'
      '  (spl.SPEC_PRODUCT_CODE = pspl.SPEC_PRODUCT_CODE(+)) and'
      '  (spl.PARENT_SPEC_LINE_CODE = pspl.SPEC_LINE_CODE(+)) and'
      
        '  (dp.PRODUCT_CODE = Decode(spl.NO_1, 0, :SPEC_PRODUCT_CODE, spl' +
        '.DETAIL_CODE)) and   -- =DETAIL_CODE'
      '  (spl.PRODUCT_CODE = pp.PRODUCT_CODE(+)) and'
      '  (spl.SPEC_PRODUCT_CODE = :ORIGINAL_SPEC_PRODUCT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[dp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[pp.PRODUCT_CODE ~ Context' +
          'Date]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[pp.PRODUCT_CODE ~ ContextDate]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[pp.PRODUCT_CODE ~ ContextDat' +
          'e]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[pp.PRODUCT_CODE ~ ContextDat' +
          'e]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[pp.PRODUCT_CODE ~ ContextDat' +
          'e]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[pp.PRODUCT_CODE ~ ContextDat' +
          'e]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'PRODUCT_PRECISION_LEVEL_CODE[pp.PRODUCT_CODE ~ ContextDate]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SPEC_LINES'
    Left = 488
    Top = 224
    object qryCLSpecLinesORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'ORIGINAL_SPEC_PRODUCT_CODE'
    end
    object qryCLSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSpecLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSpecLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'PARENT_SPEC_LINE_CODE'
    end
    object qryCLSpecLinesNO_1: TAbmesFloatField
      FieldName = 'NO_1'
    end
    object qryCLSpecLinesNO_2: TAbmesFloatField
      FieldName = 'NO_2'
    end
    object qryCLSpecLinesNO_3: TAbmesFloatField
      FieldName = 'NO_3'
    end
    object qryCLSpecLinesNO_4: TAbmesFloatField
      FieldName = 'NO_4'
    end
    object qryCLSpecLinesNO_5: TAbmesFloatField
      FieldName = 'NO_5'
    end
    object qryCLSpecLinesNO_6: TAbmesFloatField
      FieldName = 'NO_6'
    end
    object qryCLSpecLinesNO_7: TAbmesFloatField
      FieldName = 'NO_7'
    end
    object qryCLSpecLinesNO_8: TAbmesFloatField
      FieldName = 'NO_8'
    end
    object qryCLSpecLinesNO_9: TAbmesFloatField
      FieldName = 'NO_9'
    end
    object qryCLSpecLinesNO_10: TAbmesFloatField
      FieldName = 'NO_10'
    end
    object qryCLSpecLinesNO_11: TAbmesFloatField
      FieldName = 'NO_11'
    end
    object qryCLSpecLinesNO_12: TAbmesFloatField
      FieldName = 'NO_12'
    end
    object qryCLSpecLinesNO_13: TAbmesFloatField
      FieldName = 'NO_13'
    end
    object qryCLSpecLinesNO_14: TAbmesFloatField
      FieldName = 'NO_14'
    end
    object qryCLSpecLinesNO_15: TAbmesFloatField
      FieldName = 'NO_15'
    end
    object qryCLSpecLinesNO_16: TAbmesFloatField
      FieldName = 'NO_16'
    end
    object qryCLSpecLinesNO_17: TAbmesFloatField
      FieldName = 'NO_17'
    end
    object qryCLSpecLinesNO_18: TAbmesFloatField
      FieldName = 'NO_18'
    end
    object qryCLSpecLinesNO_19: TAbmesFloatField
      FieldName = 'NO_19'
    end
    object qryCLSpecLinesNO_20: TAbmesFloatField
      FieldName = 'NO_20'
    end
    object qryCLSpecLinesNO_21: TAbmesFloatField
      FieldName = 'NO_21'
    end
    object qryCLSpecLinesNO_22: TAbmesFloatField
      FieldName = 'NO_22'
    end
    object qryCLSpecLinesNO_23: TAbmesFloatField
      FieldName = 'NO_23'
    end
    object qryCLSpecLinesNO_24: TAbmesFloatField
      FieldName = 'NO_24'
    end
    object qryCLSpecLinesNO_25: TAbmesFloatField
      FieldName = 'NO_25'
    end
    object qryCLSpecLinesNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qryCLSpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object qryCLSpecLinesDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qryCLSpecLinesDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryCLSpecLinesDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
      ProviderFlags = []
    end
    object qryCLSpecLinesDETAIL_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryCLSpecLinesDETAIL_HAS_SPEC: TAbmesFloatField
      FieldName = 'DETAIL_HAS_SPEC'
    end
    object qryCLSpecLinesDETAIL_IS_INACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_IS_INACTIVE'
    end
    object qryCLSpecLinesDETAIL_PARENT_CODE: TAbmesFloatField
      FieldName = 'DETAIL_PARENT_CODE'
    end
    object qryCLSpecLinesDETAIL_IS_SELF_APPROVED: TAbmesFloatField
      FieldName = 'DETAIL_IS_SELF_APPROVED'
    end
    object qryCLSpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_QUANTITY'
    end
    object qryCLSpecLinesTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_DETAIL_TECH_QUANTITY'
    end
    object qryCLSpecLinesPAR_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PAR_TOTAL_DETAIL_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qryCLSpecLinesDETAIL_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'DETAIL_TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryCLSpecLinesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryCLSpecLinesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryCLSpecLinesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryCLSpecLinesPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryCLSpecLinesPRODUCT_IS_INACTIVE: TAbmesFloatField
      FieldName = 'PRODUCT_IS_INACTIVE'
    end
    object qryCLSpecLinesPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object qryCLSpecLinesTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qryCLSpecLinesPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryCLSpecLinesPRODUCT_TECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryCLSpecLinesTOTAL_PRODUCT_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_ACCOUNT_QUANTITY'
      ProviderFlags = []
    end
    object qryCLSpecLinesPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryCLSpecLinesPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryCLSpecLinesPRODUCT_SECONDARY_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SECONDARY_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryCLSpecLinesPRODUCT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SINGLE_PRICE'
    end
    object qryCLSpecLinesPRODUCT_INVESTMENT_VALUE_2: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_2'
    end
    object qryCLSpecLinesPRODUCT_INVESTMENT_VALUE_3: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_3'
    end
    object qryCLSpecLinesPRODUCT_INVESTMENT_VALUE_4: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_4'
    end
    object qryCLSpecLinesPRODUCT_INVESTMENT_VALUE_5: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_5'
    end
    object qryCLSpecLinesPRODUCT_PRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PRECISION_LEVEL_CODE'
    end
    object qryCLSpecLinesPRODUCT_SECONDARY_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SECONDARY_TOTAL_PRICE'
      ProviderFlags = []
    end
    object qryCLSpecLinesPRODUCT_IS_FOR_TREATMENT_USE: TAbmesFloatField
      FieldName = 'PRODUCT_IS_FOR_TREATMENT_USE'
      ProviderFlags = []
    end
    object qryCLSpecLinesPRODUCT_IS_FOR_DIRECT_USE: TAbmesFloatField
      FieldName = 'PRODUCT_IS_FOR_DIRECT_USE'
      ProviderFlags = []
    end
    object qryCLSpecLinesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryCLSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField
      FieldName = 'CONSTRUCTION_NOTES'
      Size = 250
    end
    object qryCLSpecLinesIS_IMPORTED: TAbmesFloatField
      FieldName = 'IS_IMPORTED'
    end
    object qryCLSpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField
      FieldName = 'IS_FOR_SINGLE_USE'
    end
    object qryCLSpecLinesIS_IMPORTED_SUBDETAIL: TAbmesFloatField
      FieldName = 'IS_IMPORTED_SUBDETAIL'
    end
    object qryCLSpecLinesIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
    end
  end
  object qryCLSpecModelVariants: TAbmesSQLQuery
    DataSource = dsCLSpec
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  To_Number(:ORIGINAL_SPEC_PRODUCT_CODE) as ORIGINAL_SPEC_PRODUC' +
        'T_CODE,'
      '  To_Number(:SPEC_PRODUCT_CODE) as SPEC_PRODUCT_CODE,'
      '  smv.SPEC_MODEL_VARIANT_NO,'
      '  smv.MAIN_DEPT_CODE,'
      '  d.NAME as MAIN_DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as M' +
        'AIN_DEPT_IDENTIFIER,'
      '  d.BEGIN_DATE as MAIN_DEPT_BEGIN_DATE,'
      '  d.END_DATE as MAIN_DEPT_END_DATE,'
      '  smv.RESULT_STORE_CODE,'
      '  smv.MIN_TECH_QUANTITY,'
      '  smv.MAX_TECH_QUANTITY,'
      '  (smv.SPEC_MODEL_VARIANT_NO || '#39'. '#39' || d.NAME || '#39' - '#39' ||'
      
        '   dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as M' +
        'ODEL_VARIANT_IDENTIFIER,'
      '   smv.NOTES'
      ''
      'from'
      '  SPEC_MODEL_VARIANTS smv,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      ''
      'where'
      '  (smv.MAIN_DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (smv.IS_INACTIVE = 0) and'
      '  (smv.SPEC_PRODUCT_CODE = :ORIGINAL_SPEC_PRODUCT_CODE)'
      ''
      'order by'
      '  smv.SPEC_PRODUCT_CODE,'
      '  smv.SPEC_MODEL_VARIANT_NO'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SPEC_MODEL_VARIANTS'
    Left = 648
    Top = 224
    object qryCLSpecModelVariantsORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'ORIGINAL_SPEC_PRODUCT_CODE'
    end
    object qryCLSpecModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object qryCLSpecModelVariantsMAIN_DEPT_NAME: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryCLSpecModelVariantsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryCLSpecModelVariantsMAIN_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAIN_DEPT_BEGIN_DATE'
    end
    object qryCLSpecModelVariantsMAIN_DEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAIN_DEPT_END_DATE'
    end
    object qryCLSpecModelVariantsRESULT_STORE_CODE: TAbmesFloatField
      FieldName = 'RESULT_STORE_CODE'
    end
    object qryCLSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_TECH_QUANTITY'
    end
    object qryCLSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_TECH_QUANTITY'
    end
    object qryCLSpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MODEL_VARIANT_IDENTIFIER'
      ProviderFlags = []
      Size = 191
    end
    object qryCLSpecModelVariantsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
  end
  object dsCLSpecLines: TDataSource
    DataSet = qryCLSpecLines
    Left = 488
    Top = 272
  end
  object qryCLSpecModelVariantStages: TAbmesSQLQuery
    BeforeScroll = qryCLSpecModelVariantStagesBeforeScroll
    DataSource = dsCLSpecModelVariantLines
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      
        '  To_Number(:ORIGINAL_SPEC_PRODUCT_CODE) as ORIGINAL_SPEC_PRODUC' +
        'T_CODE,'
      '  To_Number(:SPEC_PRODUCT_CODE) as SPEC_PRODUCT_CODE,'
      '  smvs.SPEC_MODEL_VARIANT_NO,'
      '  smvs.SPEC_LINE_CODE,'
      '  smvs.SPEC_LINE_STAGE_CODE,'
      '  smvs.SPEC_LINE_STAGE_NO,'
      '  smvs.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  Nvl2(s.STORE_CODE, 1, 0) as DEPT_IS_STORE,'
      '  d.BEGIN_DATE as DEPT_BEGIN_DATE,'
      '  d.END_DATE as DEPT_END_DATE,'
      '  smvs.TREATMENT_WORKDAYS,'
      '  smvs.TOTAL_TREATMENT_WORKDAYS,'
      '  smvs.OUTGOING_WORKDAYS,'
      '  smvs.IS_AUTO_MOVEMENT,'
      '  smvs.DOC_BRANCH_CODE,'
      '  smvs.DOC_CODE,'
      '  smvs.SMVS_TYPE_CODE,'
      '  smvs.EXTERNAL_WORK_PRICE,'
      ''
      '  %HAS_DOC_ITEMS[smvs] as HAS_DOCUMENTATION,'
      ''
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvs.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvs.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvs.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      SMVS_OPERATIONS smvso'
      '    where'
      '      (smvso.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      '      (smvso.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      
        '      (smvso.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL_VARIANT_NO' +
        ') and'
      
        '      (smvso.SPEC_LINE_STAGE_CODE = smvs.SPEC_LINE_STAGE_CODE) a' +
        'nd'
      '      (smvso.SMVS_OPERATION_VARIANT_NO = 0)'
      '  ) as OPERATION_COUNT'
      ''
      'from'
      '  SPEC_MODEL_VARIANT_STAGES smvs,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  STORES s'
      ''
      'where'
      '  (smvs.DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (d.DEPT_CODE = s.STORE_CODE(+)) and'
      '  (smvs.SPEC_PRODUCT_CODE = :ORIGINAL_SPEC_PRODUCT_CODE) and'
      '  (smvs.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      '  (smvs.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      ''
      
        '  (1 = 2)  -- triabva da ne vrushta nishto, za da bachka mehaniz' +
        'uma, za ednokratno iztochvane'
      ''
      'order by'
      '  smvs.SPEC_PRODUCT_CODE,'
      '  smvs.SPEC_MODEL_VARIANT_NO,'
      '  smvs.SPEC_LINE_CODE,'
      '  smvs.SPEC_LINE_STAGE_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[smvs]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SMVS_FOR_EDIT'
    Left = 488
    Top = 416
    object qryCLSpecModelVariantStagesORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'ORIGINAL_SPEC_PRODUCT_CODE'
    end
    object qryCLSpecModelVariantStagesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSpecModelVariantStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSpecModelVariantStagesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSpecModelVariantStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object qryCLSpecModelVariantStagesSPEC_LINE_STAGE_NO: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSpecModelVariantStagesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryCLSpecModelVariantStagesDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryCLSpecModelVariantStagesDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryCLSpecModelVariantStagesDEPT_IS_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_STORE'
      ProviderFlags = []
    end
    object qryCLSpecModelVariantStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object qryCLSpecModelVariantStagesDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object qryCLSpecModelVariantStagesTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object qryCLSpecModelVariantStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TOTAL_TREATMENT_WORKDAYS'
    end
    object qryCLSpecModelVariantStagesOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object qryCLSpecModelVariantStagesIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      ProviderFlags = [pfInUpdate]
      FieldValueType = fvtBoolean
    end
    object qryCLSpecModelVariantStagesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryCLSpecModelVariantStagesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryCLSpecModelVariantStagesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryCLSpecModelVariantStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      ProviderFlags = []
    end
    object qryCLSpecModelVariantStagesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      ProviderFlags = []
    end
    object qryCLSpecModelVariantStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryCLSpecModelVariantStagesSMVS_TYPE_CODE: TAbmesFloatField
      FieldName = 'SMVS_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryCLSpecModelVariantStagesEXTERNAL_WORK_PRICE: TAbmesFloatField
      FieldName = 'EXTERNAL_WORK_PRICE'
      ProviderFlags = [pfInUpdate]
    end
    object qryCLSpecModelVariantStagesOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
      ProviderFlags = []
    end
  end
  object qrySpecVersion: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  SPEC_VERSION_NO'
      'from'
      '  SPECS'
      'where'
      '  (SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 632
    Top = 8
    object qrySpecVersionSPEC_VERSION_NO: TAbmesFloatField
      FieldName = 'SPEC_VERSION_NO'
    end
  end
  object qrySpecModelVariantLines: TAbmesSQLQuery
    BeforeScroll = qrySpecModelVariantLinesBeforeScroll
    DataSource = dsSpecLines
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  smvl.SPEC_PRODUCT_CODE,'
      '  smvl.SPEC_MODEL_VARIANT_NO,'
      '  smvl.SPEC_LINE_CODE,'
      '  smvl.IMPORT_SPEC_PRODUCT_CODE,'
      '  smvl.IMPORT_SPEC_MODEL_VARIANT_NO,'
      '  smvl.APPROVE_CYCLE_NO'
      'from'
      '  SPEC_MODEL_VARIANT_LINES smvl'
      'where'
      '  (smvl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvl.SPEC_LINE_CODE = :SPEC_LINE_CODE)'
      'order by'
      '  smvl.SPEC_PRODUCT_CODE,'
      '  smvl.SPEC_MODEL_VARIANT_NO,'
      '  smvl.SPEC_LINE_CODE,'
      '  smvl.IMPORT_SPEC_PRODUCT_CODE,'
      '  smvl.IMPORT_SPEC_MODEL_VARIANT_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SMVL_FOR_EDIT'
    Left = 208
    Top = 336
    object qrySpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_PRODUCT_CODE'
    end
    object qrySpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_MODEL_VARIANT_NO'
    end
    object qrySpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField
      FieldName = 'APPROVE_CYCLE_NO'
    end
  end
  object dsSpecModelVariantLines: TDataSource
    DataSet = qrySpecModelVariantLines
    Left = 208
    Top = 384
  end
  object dsCLSpecModelVariantLines: TDataSource
    DataSet = qryCLSpecModelVariantLines
    Left = 488
    Top = 368
  end
  object qryCLSpecModelVariantLines: TAbmesSQLQuery
    BeforeScroll = qryCLSpecModelVariantLinesBeforeScroll
    DataSource = dsCLSpecLines
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      
        '  To_Number(:ORIGINAL_SPEC_PRODUCT_CODE) as ORIGINAL_SPEC_PRODUC' +
        'T_CODE,'
      '  To_Number(:SPEC_PRODUCT_CODE) as SPEC_PRODUCT_CODE,'
      '  smvl.SPEC_MODEL_VARIANT_NO,'
      '  smvl.SPEC_LINE_CODE,'
      '  Decode(smvl.IMPORT_SPEC_PRODUCT_CODE,'
      
        '    To_Number(:ORIGINAL_SPEC_PRODUCT_CODE), To_Number(:SPEC_PROD' +
        'UCT_CODE),'
      '    smvl.IMPORT_SPEC_PRODUCT_CODE)'
      '  as IMPORT_SPEC_PRODUCT_CODE,'
      '  smvl.IMPORT_SPEC_MODEL_VARIANT_NO,'
      '  smvl.APPROVE_CYCLE_NO'
      ''
      'from'
      '  SPEC_MODEL_VARIANT_LINES smvl,'
      '  SPEC_MODEL_VARIANTS smv'
      ''
      'where'
      '  (smvl.SPEC_PRODUCT_CODE = :ORIGINAL_SPEC_PRODUCT_CODE) and'
      '  (smvl.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      ''
      '  (smv.SPEC_PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) and'
      '  (smv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VARIANT_NO) and'
      '  (smv.IS_INACTIVE = 0)'
      ''
      'order by'
      '  smvl.SPEC_PRODUCT_CODE,'
      '  smvl.SPEC_MODEL_VARIANT_NO,'
      '  smvl.SPEC_LINE_CODE'
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 488
    Top = 320
    object qryCLSpecModelVariantLinesORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'ORIGINAL_SPEC_PRODUCT_CODE'
    end
    object qryCLSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryCLSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qryCLSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qryCLSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_PRODUCT_CODE'
    end
    object qryCLSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_MODEL_VARIANT_NO'
    end
    object qryCLSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField
      FieldName = 'APPROVE_CYCLE_NO'
    end
  end
  object qryInsertSpecModelVariantLines: TAbmesSQLQuery
    BeforeScroll = qryInsertSpecModelVariantLinesBeforeScroll
    DataSource = dsInsertSpecLines
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  smvl.SPEC_PRODUCT_CODE,'
      '  smvl.SPEC_MODEL_VARIANT_NO,'
      '  smvl.SPEC_LINE_CODE,'
      '  smvl.IMPORT_SPEC_PRODUCT_CODE,'
      '  smvl.IMPORT_SPEC_MODEL_VARIANT_NO,'
      '  smvl.APPROVE_CYCLE_NO'
      ''
      'from'
      '  SPEC_MODEL_VARIANT_LINES smvl'
      ''
      'where'
      '  (smvl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvl.SPEC_LINE_CODE = :SPEC_LINE_CODE)'
      ''
      'order by'
      '  smvl.SPEC_PRODUCT_CODE,'
      '  smvl.SPEC_MODEL_VARIANT_NO,'
      '  smvl.SPEC_LINE_CODE,'
      '  smvl.IMPORT_SPEC_PRODUCT_CODE,'
      '  smvl.IMPORT_SPEC_MODEL_VARIANT_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 72
    Top = 352
    object qryInsertSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryInsertSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qryInsertSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qryInsertSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_PRODUCT_CODE'
    end
    object qryInsertSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_MODEL_VARIANT_NO'
    end
    object qryInsertSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField
      FieldName = 'APPROVE_CYCLE_NO'
    end
  end
  object dsInsertSpecModelVariantLines: TDataSource
    DataSet = qryInsertSpecModelVariantLines
    Left = 72
    Top = 400
  end
  object qryImportedSpecLines: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HOST_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HOST_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  spl.SPEC_PRODUCT_CODE,'
      '  spl.SPEC_LINE_CODE,'
      '  spl.PARENT_SPEC_LINE_CODE,'
      '  spl.NO_1,'
      '  spl.NO_2,'
      '  spl.NO_3,'
      '  spl.NO_4,'
      '  spl.NO_5,'
      '  spl.NO_6,'
      '  spl.NO_7,'
      '  spl.NO_8,'
      '  spl.NO_9,'
      '  spl.NO_10,'
      '  spl.NO_11,'
      '  spl.NO_12,'
      '  spl.NO_13,'
      '  spl.NO_14,'
      '  spl.NO_15,'
      '  spl.NO_16,'
      '  spl.NO_17,'
      '  spl.NO_18,'
      '  spl.NO_19,'
      '  spl.NO_20,'
      '  spl.NO_21,'
      '  spl.NO_22,'
      '  spl.NO_23,'
      '  spl.NO_24,'
      '  spl.NO_25,'
      '  spl.DETAIL_TECH_QUANTITY,'
      
        '  pspl.TOTAL_DETAIL_TECH_QUANTITY as PAR_TOTAL_DETAIL_TECH_QUANT' +
        'ITY,'
      '  spl.CONSTRUCTION_NOTES'
      'from'
      '  SPEC_LINES spl,'
      '  SPECS sp,'
      '  SPECS spo,'
      '  SPEC_LINES pspl'
      'where'
      '  (spl.SPEC_PRODUCT_CODE = sp.SPEC_PRODUCT_CODE) and'
      '  (spl.DETAIL_CODE = spo.SPEC_PRODUCT_CODE) and'
      '  '
      '  (spl.SPEC_PRODUCT_CODE = pspl.SPEC_PRODUCT_CODE(+)) and'
      '  (spl.PARENT_SPEC_LINE_CODE = pspl.SPEC_LINE_CODE(+)) and'
      '  '
      '  (spo.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (spl.IS_IMPORTED = 1) and'
      '  ( (spo.AUTHORIZATION_EMPLOYEE_CODE is not null) or'
      '    (sp.AUTHORIZATION_EMPLOYEE_CODE is null) ) and'
      ''
      '  ( (:HOST_SPEC_PRODUCT_CODE is null) or'
      '    (spl.SPEC_PRODUCT_CODE = :HOST_SPEC_PRODUCT_CODE) )'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 648
    object qryImportedSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryImportedSpecLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qryImportedSpecLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'PARENT_SPEC_LINE_CODE'
    end
    object qryImportedSpecLinesNO_1: TAbmesFloatField
      FieldName = 'NO_1'
    end
    object qryImportedSpecLinesNO_2: TAbmesFloatField
      FieldName = 'NO_2'
    end
    object qryImportedSpecLinesNO_3: TAbmesFloatField
      FieldName = 'NO_3'
    end
    object qryImportedSpecLinesNO_4: TAbmesFloatField
      FieldName = 'NO_4'
    end
    object qryImportedSpecLinesNO_5: TAbmesFloatField
      FieldName = 'NO_5'
    end
    object qryImportedSpecLinesNO_6: TAbmesFloatField
      FieldName = 'NO_6'
    end
    object qryImportedSpecLinesNO_7: TAbmesFloatField
      FieldName = 'NO_7'
    end
    object qryImportedSpecLinesNO_8: TAbmesFloatField
      FieldName = 'NO_8'
    end
    object qryImportedSpecLinesNO_9: TAbmesFloatField
      FieldName = 'NO_9'
    end
    object qryImportedSpecLinesNO_10: TAbmesFloatField
      FieldName = 'NO_10'
    end
    object qryImportedSpecLinesNO_11: TAbmesFloatField
      FieldName = 'NO_11'
    end
    object qryImportedSpecLinesNO_12: TAbmesFloatField
      FieldName = 'NO_12'
    end
    object qryImportedSpecLinesNO_13: TAbmesFloatField
      FieldName = 'NO_13'
    end
    object qryImportedSpecLinesNO_14: TAbmesFloatField
      FieldName = 'NO_14'
    end
    object qryImportedSpecLinesNO_15: TAbmesFloatField
      FieldName = 'NO_15'
    end
    object qryImportedSpecLinesNO_16: TAbmesFloatField
      FieldName = 'NO_16'
    end
    object qryImportedSpecLinesNO_17: TAbmesFloatField
      FieldName = 'NO_17'
    end
    object qryImportedSpecLinesNO_18: TAbmesFloatField
      FieldName = 'NO_18'
    end
    object qryImportedSpecLinesNO_19: TAbmesFloatField
      FieldName = 'NO_19'
    end
    object qryImportedSpecLinesNO_20: TAbmesFloatField
      FieldName = 'NO_20'
    end
    object qryImportedSpecLinesNO_21: TAbmesFloatField
      FieldName = 'NO_21'
    end
    object qryImportedSpecLinesNO_22: TAbmesFloatField
      FieldName = 'NO_22'
    end
    object qryImportedSpecLinesNO_23: TAbmesFloatField
      FieldName = 'NO_23'
    end
    object qryImportedSpecLinesNO_24: TAbmesFloatField
      FieldName = 'NO_24'
    end
    object qryImportedSpecLinesNO_25: TAbmesFloatField
      FieldName = 'NO_25'
    end
    object qryImportedSpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_QUANTITY'
    end
    object qryImportedSpecLinesPAR_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PAR_TOTAL_DETAIL_TECH_QUANTITY'
    end
    object qryImportedSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField
      FieldName = 'CONSTRUCTION_NOTES'
      Size = 250
    end
  end
  object qryImportedSpecLinesModelVLines: TAbmesSQLQuery
    DataSource = dsImportedSpecLines
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  smvl.SPEC_PRODUCT_CODE,'
      '  smvl.SPEC_MODEL_VARIANT_NO,'
      '  smvl.SPEC_LINE_CODE,'
      '  smvl.IMPORT_SPEC_PRODUCT_CODE,'
      '  smvl.IMPORT_SPEC_MODEL_VARIANT_NO,'
      '  smvsi.DEPT_CODE as LAST_STAGE_DEPT_CODE,'
      
        '  smvsi.TOTAL_TREATMENT_WORKDAYS as LAST_STAGE_TOTAL_TREATMENT_W' +
        'DS,'
      '  ('
      '    select'
      '      smvs3.TREATMENT_WORKDAYS'
      '    from'
      '      SPEC_LINES sl,'
      '      SPEC_MODEL_VARIANT_STAGES smvs3'
      '    where'
      '      (sl.SPEC_PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) and'
      '      (sl.SPEC_LINE_CODE = smvl.SPEC_LINE_CODE) and'
      ''
      '      (smvs3.SPEC_PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) and'
      
        '      (smvs3.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VARIANT_NO)' +
        ' and'
      '      (smvs3.SPEC_LINE_CODE = sl.PARENT_SPEC_LINE_CODE) and'
      '      (smvs3.SPEC_LINE_STAGE_NO = 1)'
      '  ) as PAR_FIRST_STAGE_TREATMENT_WDS'
      ''
      'from'
      '  SPEC_MODEL_VARIANT_LINES smvl,'
      '  ('
      '    select'
      '      smvs.SPEC_PRODUCT_CODE,'
      '      smvs.SPEC_MODEL_VARIANT_NO,'
      '      smvs.SPEC_LINE_CODE,'
      '      smvs.DEPT_CODE,'
      '      smvs.TOTAL_TREATMENT_WORKDAYS'
      '    from'
      '      SPEC_MODEL_VARIANT_STAGES smvs'
      '    where'
      '      (smvs.SPEC_LINE_STAGE_NO ='
      '        ('
      '          select'
      '            Max(smvs2.SPEC_LINE_STAGE_NO)'
      '          from'
      '            SPEC_MODEL_VARIANT_STAGES smvs2'
      '          where'
      
        '            (smvs2.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) a' +
        'nd'
      
        '            (smvs2.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARIA' +
        'NT_NO) and'
      '            (smvs2.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE)'
      '        )'
      '      )'
      '  ) smvsi'
      ''
      'where'
      '  (smvl.SPEC_PRODUCT_CODE = smvsi.SPEC_PRODUCT_CODE(+)) and'
      
        '  (smvl.SPEC_MODEL_VARIANT_NO = smvsi.SPEC_MODEL_VARIANT_NO(+)) ' +
        'and'
      '  (smvl.SPEC_LINE_CODE = smvsi.SPEC_LINE_CODE(+)) and'
      '  (smvl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvl.SPEC_LINE_CODE = :SPEC_LINE_CODE)'
      ' '
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 208
    Top = 648
    object qryImportedSpecLinesModelVLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryImportedSpecLinesModelVLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qryImportedSpecLinesModelVLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qryImportedSpecLinesModelVLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_PRODUCT_CODE'
    end
    object qryImportedSpecLinesModelVLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_MODEL_VARIANT_NO'
    end
    object qryImportedSpecLinesModelVLinesLAST_STAGE_DEPT_CODE: TAbmesFloatField
      FieldName = 'LAST_STAGE_DEPT_CODE'
    end
    object qryImportedSpecLinesModelVLinesLAST_STAGE_TOTAL_TREATMENT_WDS: TAbmesFloatField
      FieldName = 'LAST_STAGE_TOTAL_TREATMENT_WDS'
    end
    object qryImportedSpecLinesModelVLinesPAR_FIRST_STAGE_TREATMENT_WDS: TAbmesFloatField
      FieldName = 'PAR_FIRST_STAGE_TREATMENT_WDS'
    end
  end
  object dsImportedSpecLines: TDataSource
    DataSet = qryImportedSpecLines
    Left = 128
    Top = 632
  end
  object qryDelImportedSpecLine: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  SPEC_LINES_FOR_EDIT spl'
      'where'
      '  (spl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (spl.SPEC_LINE_CODE = :SPEC_LINE_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 288
    Top = 632
  end
  object qryInsSpecLine: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARENT_SPEC_LINE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_1'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_3'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_4'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_6'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_7'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_8'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_9'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_10'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_11'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_12'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_13'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_14'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_15'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_16'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_17'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_18'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_19'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_20'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_21'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_22'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_23'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_24'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NO_25'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'NO_AS_TEXT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'NO_AS_FORMATED_TEXT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_DETAIL_TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'NOTES'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CONSTRUCTION_NOTES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_IMPORTED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_FOR_SINGLE_USE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_COMPLETE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into SPEC_LINES_FOR_EDIT'
      '('
      '  SPEC_PRODUCT_CODE,'
      '  SPEC_LINE_CODE,'
      '  PARENT_SPEC_LINE_CODE,'
      '  NO_1,'
      '  NO_2,'
      '  NO_3,'
      '  NO_4,'
      '  NO_5,'
      '  NO_6,'
      '  NO_7,'
      '  NO_8,'
      '  NO_9,'
      '  NO_10,'
      '  NO_11,'
      '  NO_12,'
      '  NO_13,'
      '  NO_14,'
      '  NO_15,'
      '  NO_16,'
      '  NO_17,'
      '  NO_18,'
      '  NO_19,'
      '  NO_20,'
      '  NO_21,'
      '  NO_22,'
      '  NO_23,'
      '  NO_24,'
      '  NO_25,'
      '  NO_AS_TEXT,'
      '  NO_AS_FORMATED_TEXT,'
      '  DETAIL_CODE,'
      '  DETAIL_TECH_QUANTITY,'
      '  TOTAL_DETAIL_TECH_QUANTITY,'
      '  PRODUCT_CODE,'
      '  PRODUCT_TECH_QUANTITY,'
      '  NOTES,'
      '  CONSTRUCTION_NOTES,'
      '  IS_IMPORTED,'
      '  IS_FOR_SINGLE_USE,'
      '  IS_COMPLETE'
      ')'
      'values'
      '('
      '  :SPEC_PRODUCT_CODE,'
      '  :SPEC_LINE_CODE,'
      '  :PARENT_SPEC_LINE_CODE,'
      '  :NO_1,'
      '  :NO_2,'
      '  :NO_3,'
      '  :NO_4,'
      '  :NO_5,'
      '  :NO_6,'
      '  :NO_7,'
      '  :NO_8,'
      '  :NO_9,'
      '  :NO_10,'
      '  :NO_11,'
      '  :NO_12,'
      '  :NO_13,'
      '  :NO_14,'
      '  :NO_15,'
      '  :NO_16,'
      '  :NO_17,'
      '  :NO_18,'
      '  :NO_19,'
      '  :NO_20,'
      '  :NO_21,'
      '  :NO_22,'
      '  :NO_23,'
      '  :NO_24,'
      '  :NO_25,'
      '  :NO_AS_TEXT,'
      '  :NO_AS_FORMATED_TEXT,'
      '  :DETAIL_CODE,'
      '  :DETAIL_TECH_QUANTITY,'
      '  :TOTAL_DETAIL_TECH_QUANTITY,'
      '  :PRODUCT_CODE,'
      '  :PRODUCT_TECH_QUANTITY,'
      '  :NOTES,'
      '  :CONSTRUCTION_NOTES,'
      '  :IS_IMPORTED,'
      '  :IS_FOR_SINGLE_USE,'
      '  :IS_COMPLETE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 488
    Top = 576
  end
  object qryInsSpecLineModelVariantLine: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'APPROVE_CYCLE_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into SMVL_FOR_EDIT'
      '('
      '  SPEC_PRODUCT_CODE,'
      '  SPEC_MODEL_VARIANT_NO,'
      '  SPEC_LINE_CODE,'
      '  IMPORT_SPEC_PRODUCT_CODE,'
      '  IMPORT_SPEC_MODEL_VARIANT_NO,'
      '  APPROVE_CYCLE_NO'
      ')'
      'values'
      '('
      '  :SPEC_PRODUCT_CODE,'
      '  :SPEC_MODEL_VARIANT_NO,'
      '  :SPEC_LINE_CODE,'
      '  :IMPORT_SPEC_PRODUCT_CODE,'
      '  :IMPORT_SPEC_MODEL_VARIANT_NO,'
      '  :APPROVE_CYCLE_NO'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 528
    Top = 624
  end
  object qryInsSpecModelVariantStages: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEW_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEW_SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEW_SPEC_LINE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_LAST_STAGE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LAST_STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PAR_FIRST_STAGE_TREATMENT_WDS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LOCAL_BRANCH_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  ModelUtils.InsertImportedSpecStages('
      '    :SPEC_PRODUCT_CODE,'
      '    :SPEC_MODEL_VARIANT_NO,'
      '    :SPEC_LINE_CODE,'
      '    :NEW_SPEC_PRODUCT_CODE,'
      '    :NEW_SPEC_MODEL_VARIANT_NO,'
      '    :NEW_SPEC_LINE_CODE,'
      '    :SPEC_LINE_LAST_STAGE_NO,'
      '    :LAST_STAGE_DEPT_CODE,'
      '    :PAR_FIRST_STAGE_TREATMENT_WDS,'
      '    :LOCAL_BRANCH_CODE'
      '  );'
      'end;'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 776
    Top = 632
  end
  object qryLastStageInfo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smvs.SPEC_PRODUCT_CODE,'
      '  smvs.SPEC_MODEL_VARIANT_NO,'
      '  smvs.SPEC_LINE_CODE,'
      '  smvs.SPEC_LINE_STAGE_NO,'
      '  smvs.TOTAL_TREATMENT_WORKDAYS'
      'from'
      '  SPEC_MODEL_VARIANT_STAGES smvs'
      'where'
      '  (smvs.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvs.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      '  (smvs.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      '  (smvs.SPEC_LINE_STAGE_NO ='
      '    ('
      '      select'
      '        Max(smvs2.SPEC_LINE_STAGE_NO)'
      '      from'
      '        SPEC_MODEL_VARIANT_STAGES smvs2'
      '      where'
      '        (smvs2.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      
        '        (smvs2.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARIANT_N' +
        'O) and'
      '        (smvs2.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE)'
      '    )'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 616
    Top = 672
    object qryLastStageInfoSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryLastStageInfoSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qryLastStageInfoSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qryLastStageInfoSPEC_LINE_STAGE_NO: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_NO'
    end
    object qryLastStageInfoTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TOTAL_TREATMENT_WORKDAYS'
    end
  end
  object qryXSpecLines: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  spl.SPEC_PRODUCT_CODE,'
      '  spl.SPEC_LINE_CODE,'
      '  spl.PARENT_SPEC_LINE_CODE,'
      '  spl.NO_1,'
      '  spl.NO_2,'
      '  spl.NO_3,'
      '  spl.NO_4,'
      '  spl.NO_5,'
      '  spl.NO_6,'
      '  spl.NO_7,'
      '  spl.NO_8,'
      '  spl.NO_9,'
      '  spl.NO_10,'
      '  spl.NO_11,'
      '  spl.NO_12,'
      '  spl.NO_13,'
      '  spl.NO_14,'
      '  spl.NO_15,'
      '  spl.NO_16,'
      '  spl.NO_17,'
      '  spl.NO_18,'
      '  spl.NO_19,'
      '  spl.NO_20,'
      '  spl.NO_21,'
      '  spl.NO_22,'
      '  spl.NO_23,'
      '  spl.NO_24,'
      '  spl.NO_25,'
      '  spl.NO_AS_TEXT,'
      '  spl.NO_AS_FORMATED_TEXT,'
      '  spl.DETAIL_CODE,'
      '  spl.DETAIL_TECH_QUANTITY,'
      '  spl.TOTAL_DETAIL_TECH_QUANTITY,'
      '  spl.PRODUCT_CODE,'
      '  spl.PRODUCT_TECH_QUANTITY,'
      '  spl.NOTES,'
      '  spl.CONSTRUCTION_NOTES,'
      '  spl.IS_IMPORTED,'
      '  spl.IS_FOR_SINGLE_USE,'
      '  spl.IS_COMPLETE'
      ''
      'from'
      '  SPEC_LINES spl'
      ''
      'where'
      '  (spl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)'
      ''
      'order by'
      '  spl.NO_AS_FORMATED_TEXT'
      ''
      ' '
      ' '
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SPEC_LINES'
    Left = 760
    Top = 160
    object qryXSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryXSpecLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qryXSpecLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'PARENT_SPEC_LINE_CODE'
    end
    object qryXSpecLinesNO_1: TAbmesFloatField
      FieldName = 'NO_1'
    end
    object qryXSpecLinesNO_2: TAbmesFloatField
      FieldName = 'NO_2'
    end
    object qryXSpecLinesNO_3: TAbmesFloatField
      FieldName = 'NO_3'
    end
    object qryXSpecLinesNO_4: TAbmesFloatField
      FieldName = 'NO_4'
    end
    object qryXSpecLinesNO_5: TAbmesFloatField
      FieldName = 'NO_5'
    end
    object qryXSpecLinesNO_6: TAbmesFloatField
      FieldName = 'NO_6'
    end
    object qryXSpecLinesNO_7: TAbmesFloatField
      FieldName = 'NO_7'
    end
    object qryXSpecLinesNO_8: TAbmesFloatField
      FieldName = 'NO_8'
    end
    object qryXSpecLinesNO_9: TAbmesFloatField
      FieldName = 'NO_9'
    end
    object qryXSpecLinesNO_10: TAbmesFloatField
      FieldName = 'NO_10'
    end
    object qryXSpecLinesNO_11: TAbmesFloatField
      FieldName = 'NO_11'
    end
    object qryXSpecLinesNO_12: TAbmesFloatField
      FieldName = 'NO_12'
    end
    object qryXSpecLinesNO_13: TAbmesFloatField
      FieldName = 'NO_13'
    end
    object qryXSpecLinesNO_14: TAbmesFloatField
      FieldName = 'NO_14'
    end
    object qryXSpecLinesNO_15: TAbmesFloatField
      FieldName = 'NO_15'
    end
    object qryXSpecLinesNO_16: TAbmesFloatField
      FieldName = 'NO_16'
    end
    object qryXSpecLinesNO_17: TAbmesFloatField
      FieldName = 'NO_17'
    end
    object qryXSpecLinesNO_18: TAbmesFloatField
      FieldName = 'NO_18'
    end
    object qryXSpecLinesNO_19: TAbmesFloatField
      FieldName = 'NO_19'
    end
    object qryXSpecLinesNO_20: TAbmesFloatField
      FieldName = 'NO_20'
    end
    object qryXSpecLinesNO_21: TAbmesFloatField
      FieldName = 'NO_21'
    end
    object qryXSpecLinesNO_22: TAbmesFloatField
      FieldName = 'NO_22'
    end
    object qryXSpecLinesNO_23: TAbmesFloatField
      FieldName = 'NO_23'
    end
    object qryXSpecLinesNO_24: TAbmesFloatField
      FieldName = 'NO_24'
    end
    object qryXSpecLinesNO_25: TAbmesFloatField
      FieldName = 'NO_25'
    end
    object qryXSpecLinesNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qryXSpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object qryXSpecLinesDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qryXSpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_QUANTITY'
    end
    object qryXSpecLinesTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_DETAIL_TECH_QUANTITY'
    end
    object qryXSpecLinesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryXSpecLinesPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object qryXSpecLinesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryXSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField
      FieldName = 'CONSTRUCTION_NOTES'
      Size = 250
    end
    object qryXSpecLinesIS_IMPORTED: TAbmesFloatField
      FieldName = 'IS_IMPORTED'
      FieldValueType = fvtBoolean
    end
    object qryXSpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField
      FieldName = 'IS_FOR_SINGLE_USE'
    end
    object qryXSpecLinesIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
    end
  end
  object dsXSpecLines: TDataSource
    DataSet = qryXSpecLines
    Left = 760
    Top = 208
  end
  object qryXSpecModelVariantLines: TAbmesSQLQuery
    DataSource = dsXSpecLines
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  smvl.SPEC_PRODUCT_CODE,'
      '  smvl.SPEC_MODEL_VARIANT_NO,'
      '  smvl.SPEC_LINE_CODE,'
      '  smvl.IMPORT_SPEC_PRODUCT_CODE,'
      '  smvl.IMPORT_SPEC_MODEL_VARIANT_NO,'
      '  smvl.APPROVE_CYCLE_NO'
      'from'
      '  SPEC_MODEL_VARIANT_LINES smvl'
      'where'
      '  (smvl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvl.SPEC_LINE_CODE = :SPEC_LINE_CODE)'
      'order by'
      '  smvl.SPEC_PRODUCT_CODE,'
      '  smvl.SPEC_MODEL_VARIANT_NO,'
      '  smvl.SPEC_LINE_CODE,'
      '  smvl.IMPORT_SPEC_PRODUCT_CODE,'
      '  smvl.IMPORT_SPEC_MODEL_VARIANT_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 760
    Top = 256
    object qryXSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryXSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qryXSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qryXSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_PRODUCT_CODE'
    end
    object qryXSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_MODEL_VARIANT_NO'
    end
    object qryXSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField
      FieldName = 'APPROVE_CYCLE_NO'
    end
  end
  object qryMaxSpecLineCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(spl.SPEC_LINE_CODE) as MAX_SPEC_LINE_CODE'
      'from'
      '  SPEC_LINES spl'
      'where'
      '  (spl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 496
    Top = 672
    object qryMaxSpecLineCodeMAX_SPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'MAX_SPEC_LINE_CODE'
    end
  end
  object qryDelSpecLines: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  SPEC_LINES_FOR_EDIT sl'
      'where'
      '  (sl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 864
    Top = 288
  end
  object qryDelSpecModelVariants: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  SPEC_MODEL_VARIANTS_FOR_EDIT smv'
      'where'
      '  (smv.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 864
    Top = 336
  end
  object dsSpecModelVariants: TDataSource
    DataSet = qrySpecModelVariants
    Left = 368
    Top = 288
  end
  object qrySpecModelVariantTasks: TAbmesSQLQuery
    DataSource = dsSpecModelVariants
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smvt.SPEC_PRODUCT_CODE,'
      '  smvt.SPEC_MODEL_VARIANT_NO,'
      '  smvt.SPEC_MODEL_VARIANT_TASK_NO,'
      '  smvt.SPEC_MODEL_VARIANT_TASK_NAME'
      'from'
      '  SPEC_MODEL_VARIANT_TASKS smvt'
      'where'
      '  (smvt.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvt.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 336
    object qrySpecModelVariantTasksSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecModelVariantTasksSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NAME: TAbmesWideStringField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NAME'
      Size = 100
    end
  end
  object dsSpecModelVariantTasks: TDataSource
    DataSet = qrySpecModelVariantTasks
    Left = 368
    Top = 384
  end
  object qrySpecModelVariantTaskDepts: TAbmesSQLQuery
    DataSource = dsSpecModelVariantTasks
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_TASK_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smvtd.SPEC_PRODUCT_CODE,'
      '  smvtd.SPEC_MODEL_VARIANT_NO,'
      '  smvtd.SPEC_MODEL_VARIANT_TASK_NO,'
      '  smvtd.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER'
      'from'
      '  SPEC_MODEL_VARIANT_TASK_DEPTS smvtd,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      'where'
      '  (smvtd.DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (smvtd.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvtd.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      
        '  (smvtd.SPEC_MODEL_VARIANT_TASK_NO = :SPEC_MODEL_VARIANT_TASK_N' +
        'O)'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 432
    object qrySpecModelVariantTaskDeptsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecModelVariantTaskDeptsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecModelVariantTaskDeptsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qrySpecModelVariantTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
  end
  object dsCLSpecModelVariants: TDataSource
    DataSet = qryCLSpecModelVariants
    Left = 648
    Top = 272
  end
  object qryCLSpecModelVariantTasks: TAbmesSQLQuery
    DataSource = dsCLSpecModelVariants
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  To_Number(:ORIGINAL_SPEC_PRODUCT_CODE) as ORIGINAL_SPEC_PRODUC' +
        'T_CODE,'
      '  To_Number(:SPEC_PRODUCT_CODE) as SPEC_PRODUCT_CODE,'
      '  smvt.SPEC_MODEL_VARIANT_NO,'
      '  smvt.SPEC_MODEL_VARIANT_TASK_NO,'
      '  smvt.SPEC_MODEL_VARIANT_TASK_NAME'
      'from'
      '  SPEC_MODEL_VARIANT_TASKS smvt'
      'where'
      '  (smvt.SPEC_PRODUCT_CODE = :ORIGINAL_SPEC_PRODUCT_CODE) and'
      '  (smvt.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO)'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 648
    Top = 320
    object qryCLSpecModelVariantTasksORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'ORIGINAL_SPEC_PRODUCT_CODE'
    end
    object qryCLSpecModelVariantTasksSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSpecModelVariantTasksSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NAME: TAbmesWideStringField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NAME'
      Size = 100
    end
  end
  object dsCLSpecModelVariantTasks: TDataSource
    DataSet = qryCLSpecModelVariantTasks
    Left = 648
    Top = 368
  end
  object qryCLSpecModelVariantTaskDepts: TAbmesSQLQuery
    DataSource = dsCLSpecModelVariantTasks
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORIGINAL_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_TASK_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_Number(:SPEC_PRODUCT_CODE) as SPEC_PRODUCT_CODE,'
      '  smvtd.SPEC_MODEL_VARIANT_NO,'
      '  smvtd.SPEC_MODEL_VARIANT_TASK_NO,'
      '  smvtd.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER'
      'from'
      '  SPEC_MODEL_VARIANT_TASK_DEPTS smvtd,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      'where'
      '  (smvtd.DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (smvtd.SPEC_PRODUCT_CODE = :ORIGINAL_SPEC_PRODUCT_CODE) and'
      '  (smvtd.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      
        '  (smvtd.SPEC_MODEL_VARIANT_TASK_NO = :SPEC_MODEL_VARIANT_TASK_N' +
        'O)'
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 648
    Top = 416
    object qryCLSpecModelVariantTaskDeptsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSpecModelVariantTaskDeptsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSpecModelVariantTaskDeptsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryCLSpecModelVariantTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
  end
  object qryUpdSpecLineNosToPositive: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FAKE_ZERO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FAKE_ZERO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FAKE_ZERO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  update'
      '    SPEC_LINES_FOR_EDIT sl'
      '  set'
      '    sl.NO_1 = Abs(sl.NO_1),'
      '    sl.NO_2 = Abs(sl.NO_2),'
      '    sl.NO_3 = Abs(sl.NO_3),'
      '    sl.NO_4 = Abs(sl.NO_4),'
      '    sl.NO_5 = Abs(sl.NO_5),'
      '    sl.NO_6 = Abs(sl.NO_6),'
      '    sl.NO_7 = Abs(sl.NO_7),'
      '    sl.NO_8 = Abs(sl.NO_8),'
      '    sl.NO_9 = Abs(sl.NO_9),'
      '    sl.NO_10 = Abs(sl.NO_10),'
      '    sl.NO_11 = Abs(sl.NO_11),'
      '    sl.NO_12 = Abs(sl.NO_12),'
      '    sl.NO_13 = Abs(sl.NO_13),'
      '    sl.NO_14 = Abs(sl.NO_14),'
      '    sl.NO_15 = Abs(sl.NO_15),'
      '    sl.NO_16 = Abs(sl.NO_16),'
      '    sl.NO_17 = Abs(sl.NO_17),'
      '    sl.NO_18 = Abs(sl.NO_18),'
      '    sl.NO_19 = Abs(sl.NO_19),'
      '    sl.NO_20 = Abs(sl.NO_20),'
      '    sl.NO_21 = Abs(sl.NO_21),'
      '    sl.NO_22 = Abs(sl.NO_22),'
      '    sl.NO_23 = Abs(sl.NO_23),'
      '    sl.NO_24 = Abs(sl.NO_24),'
      '    sl.NO_25 = Abs(sl.NO_25),'
      '    sl.NO_AS_TEXT = Replace(sl.NO_AS_TEXT, '#39'-'#39'),'
      
        '    sl.NO_AS_FORMATED_TEXT = Replace(sl.NO_AS_FORMATED_TEXT, '#39'-'#39 +
        ')'
      '  where'
      '    (sl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)'
      '  ;'
      ''
      '  update'
      '    SMVS_FOR_EDIT smvs'
      '  set'
      '    smvs.SPEC_LINE_STAGE_NO ='
      
        '      Decode(Abs(smvs.SPEC_LINE_STAGE_NO), Abs(:FAKE_ZERO), 0, A' +
        'bs(smvs.SPEC_LINE_STAGE_NO))'
      '  where'
      '    (smvs.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '    (smvs.SPEC_LINE_STAGE_NO < 0)'
      '  ;'
      ''
      '  update'
      '    SMVS_OPERATIONS_FOR_EDIT smvso'
      '  set'
      '    smvso.SMVS_OPERATION_NO ='
      
        '      Decode(Abs(smvso.SMVS_OPERATION_NO), Abs(:FAKE_ZERO), 0, A' +
        'bs(Trunc(smvso.SMVS_OPERATION_NO/1000))),'
      '    smvso.SMVS_OPERATION_VARIANT_NO ='
      
        '      Decode(Abs(smvso.SMVS_OPERATION_VARIANT_NO), Abs(:FAKE_ZER' +
        'O), 0, Abs(Trunc(smvso.SMVS_OPERATION_VARIANT_NO/1000)))'
      '  where'
      '    (smvso.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '    ( (smvso.SMVS_OPERATION_NO < -1) or'
      '      (smvso.SMVS_OPERATION_VARIANT_NO < -1) )'
      '  ;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 256
    Top = 584
  end
  object qryReplaceProductInSpecs: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OLD_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TREE_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TREE_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TREE_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TREE_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DETAILS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHOR_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHOR_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZATION_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZATION_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANUFACTURER_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANUFACTURER_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_IMPORTED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_IMPORTED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_IMPORTED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_IMPORTED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_INACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_INACTIVE_DETAIL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_INACTIVE_DETAIL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_INACTIVE_DETAIL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_INACTIVE_DETAIL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_INACTIVE_PRODUCT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_INACTIVE_PRODUCT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_INACTIVE_PRODUCT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_INACTIVE_PRODUCT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_SPEC_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_SPEC_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_SPEC_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_SPEC_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SMVS_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SMVS_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SMVS_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEW_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEW_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  for x in'
      '    ( select'
      '        mspl.SPEC_PRODUCT_CODE,'
      '        mspl.SPEC_LINE_CODE'
      '      from'
      '        SPEC_LINES mspl'
      '      where'
      '        (mspl.PRODUCT_CODE = :OLD_PRODUCT_CODE) and'
      '        (mspl.SPEC_PRODUCT_CODE in'
      '          ( select'
      '              sp.SPEC_PRODUCT_CODE'
      ''
      '            from'
      '              ( select'
      
        '                  /*+ INDEX(x) NO_USE_HASH(x sl) NO_USE_MERGE(x ' +
        'sl) USE_NL(x sl) */'
      '                  x.PRODUCT_CODE,'
      '                  x.NAME,'
      '                  x.CUSTOM_CODE,'
      '                  x.IS_PRODUCTION_PRODUCT,'
      '                  x.IS_INACTIVE,'
      '                  x.IS_GROUP,'
      '                  x.PRODUCT_CLASS_CODE,'
      '                  x.DOC_CODE,'
      '                  x.DOC_BRANCH_CODE,'
      ''
      '                  ( sl.NO_AS_TEXT ||'
      '                    '#39' - '#39' ||'
      '                    ( select'
      '                        p2.NAME'
      '                      from'
      '                        PRODUCTS p2'
      '                      where'
      '                        (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '                    )'
      '                  ) as T_DISPLAY_NAME,'
      '                  sl.SPEC_LINE_CODE as T_SPEC_LINE_CODE,'
      
        '                  sl.PARENT_SPEC_LINE_CODE as T_PARENT_SPEC_LINE' +
        '_CODE,'
      '                  sl.PRODUCT_CODE as T_PRODUCT_CODE,'
      '                  sl.DETAIL_CODE as T_DETAIL_CODE,'
      '                  sl.IS_COMPLETE as T_IS_COMPLETE,'
      '                  ( select'
      '                      Sign(Count(*))'
      '                    from'
      '                      SPEC_MODEL_VARIANT_LINES smvl'
      '                    where'
      
        '                      (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_' +
        'CODE) and'
      
        '                      (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) ' +
        'and'
      
        '                      (smvl.IMPORT_SPEC_PRODUCT_CODE <> smvl.SPE' +
        'C_PRODUCT_CODE)'
      '                  ) as T_IS_IMPORTED,'
      
        '                  Nvl2(:TREE_PRODUCT_CODE, sl.NO_AS_FORMATED_TEX' +
        'T, x.NAME) as ORDER_BY_FIELD'
      '                from'
      '                  PRODUCTS x,'
      '                  SPEC_LINES sl'
      '                where'
      '                  (x.PRODUCT_CODE = sl.DETAIL_CODE(+)) and'
      
        '                  (:TREE_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE(+))' +
        ' and'
      '                  ( (:TREE_PRODUCT_CODE is null) or'
      '                    (sl.SPEC_PRODUCT_CODE is not null)'
      '                  )'
      '              ) p,'
      ''
      '              SPECS sp'
      ''
      '            where'
      '              (p.PRODUCT_CODE = sp.SPEC_PRODUCT_CODE(+)) and'
      ''
      '              (p.IS_GROUP = 0) and'
      '              (p.PRODUCT_CLASS_CODE = 1) and'
      ''
      '              ( (:TREE_PRODUCT_CODE is not null) or'
      '                ( ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '                    (exists'
      '                      ( select'
      '                          1'
      '                        from'
      '                          TEMP_FILTERED_PRODUCTS tfp'
      '                        where'
      '                          (tfp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '                      )'
      '                    ) or'
      '                    ( (:INCLUDE_DETAILS = 1) and'
      '                      (exists'
      '                        ( select'
      '                            /*+ INDEX(tfp)*/'
      '                            1'
      '                          from'
      '                            TEMP_FILTERED_PRODUCTS tfp,'
      '                            SPEC_LINES spl2'
      '                          where'
      
        '                            (tfp.PRODUCT_CODE = spl2.SPEC_PRODUC' +
        'T_CODE) and'
      '                            (spl2.DETAIL_CODE = p.PRODUCT_CODE)'
      '                        )'
      '                      )'
      '                    )'
      '                  ) and'
      ''
      '                  ( (:AUTHOR_EMPLOYEE_CODE is null) or'
      
        '                    (sp.AUTHOR_EMPLOYEE_CODE = :AUTHOR_EMPLOYEE_' +
        'CODE) ) and'
      '                  ( (:AUTHORIZATION_EMPLOYEE_CODE is null) or'
      
        '                    (sp.AUTHORIZATION_EMPLOYEE_CODE = :AUTHORIZA' +
        'TION_EMPLOYEE_CODE) ) and'
      '                  ( (:MANUFACTURER_COMPANY_CODE is null) or'
      
        '                    (sp.MANUFACTURER_COMPANY_CODE = :MANUFACTURE' +
        'R_COMPANY_CODE) ) and'
      '                  ( (:SPEC_TYPE_CODE is null) or'
      '                    (sp.SPEC_TYPE_CODE = :SPEC_TYPE_CODE) ) and'
      ''
      '                  ( (:IS_IMPORTED * :IS_NOT_IMPORTED = 1) or'
      '                    ('
      '                      (:IS_IMPORTED = 1) and'
      '                      (exists'
      '                        ( select'
      '                            1'
      '                          from'
      '                            SPEC_LINES spli'
      '                          where'
      
        '                            (sp.SPEC_PRODUCT_CODE = spli.DETAIL_' +
        'CODE) and'
      '                            (spli.IS_IMPORTED = 1)'
      '                        )'
      '                      )'
      '                    ) or'
      '                    ('
      '                      (:IS_NOT_IMPORTED = 1) and'
      '                      (not exists'
      '                        ( select'
      '                            1'
      '                          from'
      '                            SPEC_LINES spli'
      '                          where'
      
        '                            (sp.SPEC_PRODUCT_CODE = spli.DETAIL_' +
        'CODE) and'
      '                            (spli.IS_IMPORTED = 1)'
      '                        )'
      '                      )'
      '                    )'
      '                  ) and'
      ''
      
        '                  ( ( (:IS_ACTIVE = 1) and (p.IS_INACTIVE = 0) )' +
        ' or'
      
        '                    ( (:IS_INACTIVE = 1) and (p.IS_INACTIVE = 1)' +
        ' ) ) and'
      ''
      '                  ( (:CREATE_BEGIN_DATE is null) or'
      '                    (:CREATE_BEGIN_DATE <= sp.CREATE_DATE) ) and'
      ''
      '                  ( (:CREATE_END_DATE is null) or'
      '                    (sp.CREATE_DATE <= :CREATE_END_DATE) ) and'
      ''
      '                  ( (:INCLUDE_DETAIL_CODE = %TREE_ROOT_CODE) or'
      '                    (exists'
      '                      ( select'
      
        '                          /*+ NO_USE_HASH(spl pr) NO_USE_MERGE(s' +
        'pl pr) USE_NL(spl pr)*/'
      '                          1'
      '                        from'
      '                          SPEC_LINES spl,'
      '                          PRODUCT_RELATIONS pr'
      '                        where'
      
        '                          (spl.SPEC_PRODUCT_CODE = sp.SPEC_PRODU' +
        'CT_CODE) and'
      
        '                          (pr.DESCENDANT_PRODUCT_CODE = spl.DETA' +
        'IL_CODE) and'
      
        '                          (pr.ANCESTOR_PRODUCT_CODE = :INCLUDE_D' +
        'ETAIL_CODE)'
      '                      )'
      '                    )'
      '                  ) and'
      ''
      '                  ( (:INCLUDE_PRODUCT_CODE is null) or'
      '                    (exists'
      '                      ( select'
      
        '                          /*+ NO_USE_HASH(spl pr) NO_USE_MERGE(s' +
        'pl pr) USE_NL(spl pr)*/'
      '                          1'
      '                        from'
      '                          SPEC_LINES spl,'
      '                          PRODUCT_RELATIONS pr'
      '                        where'
      
        '                          (spl.SPEC_PRODUCT_CODE = sp.SPEC_PRODU' +
        'CT_CODE) and'
      
        '                          (pr.DESCENDANT_PRODUCT_CODE = spl.PROD' +
        'UCT_CODE) and'
      
        '                          (pr.ANCESTOR_PRODUCT_CODE = :INCLUDE_P' +
        'RODUCT_CODE)'
      '                      )'
      '                    )'
      '                  ) and'
      ''
      '                  ( (:CHANGE_BEGIN_DATE is null) or'
      '                    (:CHANGE_BEGIN_DATE <= sp.CHANGE_DATE) ) and'
      ''
      '                  ( (:CHANGE_END_DATE is null) or'
      '                    (:CHANGE_END_DATE >= sp.CHANGE_DATE) ) and'
      ''
      
        '                  ( (:HAS_INACTIVE_DETAIL * :HAS_NOT_INACTIVE_DE' +
        'TAIL = 1) or'
      '                    ('
      '                      (:HAS_INACTIVE_DETAIL = 1) and'
      '                      exists('
      '                        select'
      '                          1'
      '                        from'
      '                          SPEC_LINES sl,'
      '                          PRODUCTS p'
      '                        where'
      
        '                          (sl.SPEC_PRODUCT_CODE = sp.SPEC_PRODUC' +
        'T_CODE) and'
      '                          (sl.DETAIL_CODE = p.PRODUCT_CODE) and'
      '                          (p.IS_INACTIVE = 1)'
      '                      )'
      '                    ) or'
      '                    ('
      '                      (:HAS_NOT_INACTIVE_DETAIL = 1) and'
      '                      not exists('
      '                        select'
      '                          1'
      '                        from'
      '                          SPEC_LINES sl,'
      '                          PRODUCTS p'
      '                        where'
      
        '                          (sl.SPEC_PRODUCT_CODE = sp.SPEC_PRODUC' +
        'T_CODE) and'
      '                          (sl.DETAIL_CODE = p.PRODUCT_CODE) and'
      '                          (p.IS_INACTIVE = 1)'
      '                      )'
      '                    )'
      '                  ) and'
      ''
      
        '                  ( (:HAS_INACTIVE_PRODUCT * :HAS_NOT_INACTIVE_P' +
        'RODUCT = 1) or'
      '                    ('
      '                      (:HAS_INACTIVE_PRODUCT = 1) and'
      '                      exists('
      '                        select'
      '                          1'
      '                        from'
      '                          SPEC_LINES sl,'
      '                          PRODUCTS p'
      '                        where'
      
        '                          (sl.SPEC_PRODUCT_CODE = sp.SPEC_PRODUC' +
        'T_CODE) and'
      '                          (sl.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '                          (p.IS_INACTIVE = 1)'
      '                      )'
      '                    ) or'
      '                    ('
      '                      (:HAS_NOT_INACTIVE_PRODUCT = 1) and'
      '                      not exists('
      '                        select'
      '                          1'
      '                        from'
      '                          SPEC_LINES sl,'
      '                          PRODUCTS p'
      '                        where'
      
        '                          (sl.SPEC_PRODUCT_CODE = sp.SPEC_PRODUC' +
        'T_CODE) and'
      '                          (sl.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '                          (p.IS_INACTIVE = 1)'
      '                      )'
      '                    )'
      '                  ) and'
      ''
      '                  ( ( (:MIN_SPEC_STATE_CODE = 0) and'
      '                      (:MAX_SPEC_STATE_CODE = 6)'
      '                    ) or'
      
        '                    (%SPEC_STATE[p.PRODUCT_CODE~ null~ :MAIN_DEP' +
        'T_CODE~ null~ :SMVS_DEPT_CODE] between :MIN_SPEC_STATE_CODE and ' +
        ':MAX_SPEC_STATE_CODE)'
      '                  ) and'
      ''
      '                  ( (:MAIN_DEPT_CODE is null) or'
      '                    (exists'
      '                      ( select'
      '                          1'
      '                        from'
      '                          SPEC_MODEL_VARIANTS smv'
      '                        where'
      
        '                          (smv.SPEC_PRODUCT_CODE = sp.SPEC_PRODU' +
        'CT_CODE) and'
      '                          (smv.MAIN_DEPT_CODE = :MAIN_DEPT_CODE)'
      '                      )'
      '                    )'
      '                  ) and'
      ''
      '                  ( (:SMVS_DEPT_CODE is null) or'
      '                    ( (exists'
      '                        ( select'
      '                            1'
      '                          from'
      '                            SPEC_MODEL_VARIANT_STAGES smvs'
      '                          where'
      
        '                            (smvs.SPEC_PRODUCT_CODE = sp.SPEC_PR' +
        'ODUCT_CODE) and'
      '                            (exists'
      '                              ( select'
      '                                  1'
      '                                from'
      '                                  DEPT_RELATIONS dr'
      '                                where'
      
        '                                  (dr.DESCENDANT_DEPT_CODE = smv' +
        's.DEPT_CODE) and'
      
        '                                  (dr.ANCESTOR_DEPT_CODE = :SMVS' +
        '_DEPT_CODE)'
      '                              )'
      '                            )'
      '                        )'
      '                      ) or'
      '                      (exists'
      '                        ( select'
      '                            1'
      '                          from'
      '                            SMVS_OPERATIONS smvso'
      '                          where'
      
        '                            (smvso.SPEC_PRODUCT_CODE = sp.SPEC_P' +
        'RODUCT_CODE) and'
      
        '                            (smvso.SMVS_OPERATION_VARIANT_NO >= ' +
        '0) and'
      '                            (exists'
      '                              ( select'
      '                                  1'
      '                                from'
      '                                  DEPT_RELATIONS dr'
      '                                where'
      
        '                                  (dr.DESCENDANT_DEPT_CODE = smv' +
        'so.DEPT_CODE) and'
      
        '                                  (dr.ANCESTOR_DEPT_CODE = :SMVS' +
        '_DEPT_CODE)'
      '                              )'
      '                            )'
      '                        )'
      '                      )'
      '                    )'
      '                  )'
      '                )'
      '              )'
      '          )'
      '        )'
      '    )'
      '  loop'
      '    update'
      '      SPEC_LINES_FOR_EDIT mspl'
      '    set'
      '      mspl.PRODUCT_CODE = :NEW_PRODUCT_CODE,'
      '      mspl.DETAIL_CODE = Decode(mspl.DETAIL_CODE,'
      
        '                                mspl.PRODUCT_CODE, Decode(NO_1, ' +
        '0, mspl.DETAIL_CODE, :NEW_PRODUCT_CODE),'
      '                                mspl.DETAIL_CODE)'
      '    where'
      '      (mspl.SPEC_PRODUCT_CODE = x.SPEC_PRODUCT_CODE) and'
      '      (mspl.SPEC_LINE_CODE = x.SPEC_LINE_CODE)'
      '    ;'
      '  end loop;'
      'end;')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'TREE_ROOT_CODE'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'SPEC_STATE[p.PRODUCT_CODE~ null~ :MAIN_DEPT_CODE~ null~ :SMVS_DE' +
          'PT_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <
      item
        DataType = ftFloat
        Name = 'NEW_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DETAILS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LAST_MODEL_CHANGE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHOR_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZATION_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANUFACTURER_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_IMPORTED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_IMPORTED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_INACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_PRODUCT_CODE'
        ParamType = ptInput
      end>
    CustomParams = <>
    Left = 776
    Top = 688
  end
  object prvXSpecLines: TDataSetProvider
    DataSet = qryXSpecLines
    Exported = False
    Options = [poReadOnly]
    Left = 760
    Top = 112
  end
  object cdsXSpecLines: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvXSpecLines'
    Left = 856
    Top = 128
    object cdsXSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsXSpecLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsXSpecLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'PARENT_SPEC_LINE_CODE'
    end
    object cdsXSpecLinesNO_1: TAbmesFloatField
      FieldName = 'NO_1'
    end
    object cdsXSpecLinesNO_2: TAbmesFloatField
      FieldName = 'NO_2'
    end
    object cdsXSpecLinesNO_3: TAbmesFloatField
      FieldName = 'NO_3'
    end
    object cdsXSpecLinesNO_4: TAbmesFloatField
      FieldName = 'NO_4'
    end
    object cdsXSpecLinesNO_5: TAbmesFloatField
      FieldName = 'NO_5'
    end
    object cdsXSpecLinesNO_6: TAbmesFloatField
      FieldName = 'NO_6'
    end
    object cdsXSpecLinesNO_7: TAbmesFloatField
      FieldName = 'NO_7'
    end
    object cdsXSpecLinesNO_8: TAbmesFloatField
      FieldName = 'NO_8'
    end
    object cdsXSpecLinesNO_9: TAbmesFloatField
      FieldName = 'NO_9'
    end
    object cdsXSpecLinesNO_10: TAbmesFloatField
      FieldName = 'NO_10'
    end
    object cdsXSpecLinesNO_11: TAbmesFloatField
      FieldName = 'NO_11'
    end
    object cdsXSpecLinesNO_12: TAbmesFloatField
      FieldName = 'NO_12'
    end
    object cdsXSpecLinesNO_13: TAbmesFloatField
      FieldName = 'NO_13'
    end
    object cdsXSpecLinesNO_14: TAbmesFloatField
      FieldName = 'NO_14'
    end
    object cdsXSpecLinesNO_15: TAbmesFloatField
      FieldName = 'NO_15'
    end
    object cdsXSpecLinesNO_16: TAbmesFloatField
      FieldName = 'NO_16'
    end
    object cdsXSpecLinesNO_17: TAbmesFloatField
      FieldName = 'NO_17'
    end
    object cdsXSpecLinesNO_18: TAbmesFloatField
      FieldName = 'NO_18'
    end
    object cdsXSpecLinesNO_19: TAbmesFloatField
      FieldName = 'NO_19'
    end
    object cdsXSpecLinesNO_20: TAbmesFloatField
      FieldName = 'NO_20'
    end
    object cdsXSpecLinesNO_21: TAbmesFloatField
      FieldName = 'NO_21'
    end
    object cdsXSpecLinesNO_22: TAbmesFloatField
      FieldName = 'NO_22'
    end
    object cdsXSpecLinesNO_23: TAbmesFloatField
      FieldName = 'NO_23'
    end
    object cdsXSpecLinesNO_24: TAbmesFloatField
      FieldName = 'NO_24'
    end
    object cdsXSpecLinesNO_25: TAbmesFloatField
      FieldName = 'NO_25'
    end
    object cdsXSpecLinesNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object cdsXSpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object cdsXSpecLinesDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object cdsXSpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_QUANTITY'
    end
    object cdsXSpecLinesTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_DETAIL_TECH_QUANTITY'
    end
    object cdsXSpecLinesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsXSpecLinesPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object cdsXSpecLinesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsXSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField
      FieldName = 'CONSTRUCTION_NOTES'
      Size = 250
    end
    object cdsXSpecLinesIS_IMPORTED: TAbmesFloatField
      FieldName = 'IS_IMPORTED'
      FieldValueType = fvtBoolean
    end
    object cdsXSpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField
      FieldName = 'IS_FOR_SINGLE_USE'
      FieldValueType = fvtBoolean
    end
    object cdsXSpecLinesIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
    end
    object cdsXSpecLinesqryXSpecModelVariantLines: TDataSetField
      FieldName = 'qryXSpecModelVariantLines'
    end
  end
  object cdsXSpecModelVariantLines: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsXSpecLinesqryXSpecModelVariantLines
    Params = <>
    Left = 856
    Top = 176
    object cdsXSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsXSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsXSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsXSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_PRODUCT_CODE'
    end
    object cdsXSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_MODEL_VARIANT_NO'
    end
    object cdsXSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField
      FieldName = 'APPROVE_CYCLE_NO'
    end
  end
  object prvImportedSpecLines: TDataSetProvider
    DataSet = qryImportedSpecLines
    Exported = False
    Options = [poReadOnly]
    Left = 48
    Top = 696
  end
  object cdsImportedSpecLines: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HOST_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HOST_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvImportedSpecLines'
    Left = 168
    Top = 696
    object cdsImportedSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsImportedSpecLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsImportedSpecLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'PARENT_SPEC_LINE_CODE'
    end
    object cdsImportedSpecLinesNO_1: TAbmesFloatField
      FieldName = 'NO_1'
    end
    object cdsImportedSpecLinesNO_2: TAbmesFloatField
      FieldName = 'NO_2'
    end
    object cdsImportedSpecLinesNO_3: TAbmesFloatField
      FieldName = 'NO_3'
    end
    object cdsImportedSpecLinesNO_4: TAbmesFloatField
      FieldName = 'NO_4'
    end
    object cdsImportedSpecLinesNO_5: TAbmesFloatField
      FieldName = 'NO_5'
    end
    object cdsImportedSpecLinesNO_6: TAbmesFloatField
      FieldName = 'NO_6'
    end
    object cdsImportedSpecLinesNO_7: TAbmesFloatField
      FieldName = 'NO_7'
    end
    object cdsImportedSpecLinesNO_8: TAbmesFloatField
      FieldName = 'NO_8'
    end
    object cdsImportedSpecLinesNO_9: TAbmesFloatField
      FieldName = 'NO_9'
    end
    object cdsImportedSpecLinesNO_10: TAbmesFloatField
      FieldName = 'NO_10'
    end
    object cdsImportedSpecLinesNO_11: TAbmesFloatField
      FieldName = 'NO_11'
    end
    object cdsImportedSpecLinesNO_12: TAbmesFloatField
      FieldName = 'NO_12'
    end
    object cdsImportedSpecLinesNO_13: TAbmesFloatField
      FieldName = 'NO_13'
    end
    object cdsImportedSpecLinesNO_14: TAbmesFloatField
      FieldName = 'NO_14'
    end
    object cdsImportedSpecLinesNO_15: TAbmesFloatField
      FieldName = 'NO_15'
    end
    object cdsImportedSpecLinesNO_16: TAbmesFloatField
      FieldName = 'NO_16'
    end
    object cdsImportedSpecLinesNO_17: TAbmesFloatField
      FieldName = 'NO_17'
    end
    object cdsImportedSpecLinesNO_18: TAbmesFloatField
      FieldName = 'NO_18'
    end
    object cdsImportedSpecLinesNO_19: TAbmesFloatField
      FieldName = 'NO_19'
    end
    object cdsImportedSpecLinesNO_20: TAbmesFloatField
      FieldName = 'NO_20'
    end
    object cdsImportedSpecLinesNO_21: TAbmesFloatField
      FieldName = 'NO_21'
    end
    object cdsImportedSpecLinesNO_22: TAbmesFloatField
      FieldName = 'NO_22'
    end
    object cdsImportedSpecLinesNO_23: TAbmesFloatField
      FieldName = 'NO_23'
    end
    object cdsImportedSpecLinesNO_24: TAbmesFloatField
      FieldName = 'NO_24'
    end
    object cdsImportedSpecLinesNO_25: TAbmesFloatField
      FieldName = 'NO_25'
    end
    object cdsImportedSpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_QUANTITY'
    end
    object cdsImportedSpecLinesPAR_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PAR_TOTAL_DETAIL_TECH_QUANTITY'
    end
    object cdsImportedSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField
      FieldName = 'CONSTRUCTION_NOTES'
      Size = 250
    end
    object cdsImportedSpecLinesqryImportedSpecLinesModelVLines: TDataSetField
      FieldName = 'qryImportedSpecLinesModelVLines'
    end
  end
  object cdsImportedSpecLinesModelVariantLines: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsImportedSpecLinesqryImportedSpecLinesModelVLines
    Params = <>
    Left = 328
    Top = 696
    object cdsImportedSpecLinesModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsImportedSpecLinesModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsImportedSpecLinesModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsImportedSpecLinesModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_PRODUCT_CODE'
    end
    object cdsImportedSpecLinesModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_MODEL_VARIANT_NO'
    end
    object cdsImportedSpecLinesModelVariantLinesLAST_STAGE_DEPT_CODE: TAbmesFloatField
      FieldName = 'LAST_STAGE_DEPT_CODE'
    end
    object cdsImportedSpecLinesModelVariantLinesLAST_STAGE_TOTAL_TREATMENT_WDS: TAbmesFloatField
      FieldName = 'LAST_STAGE_TOTAL_TREATMENT_WDS'
    end
    object cdsImportedSpecLinesModelVariantLinesPAR_FIRST_STAGE_TREATMENT_WDS: TAbmesFloatField
      FieldName = 'PAR_FIRST_STAGE_TREATMENT_WDS'
    end
  end
  object dsSpecModelVariantStages: TDataSource
    DataSet = qrySpecModelVariantStages
    Left = 208
    Top = 480
  end
  object qrySMVSOperations: TAbmesSQLQuery
    DataSource = dsSpecModelVariantStages
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_STAGE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  smvso.SPEC_PRODUCT_CODE,'
      '  smvso.SPEC_MODEL_VARIANT_NO,'
      '  smvso.SPEC_LINE_CODE,'
      '  smvso.SPEC_LINE_STAGE_CODE,'
      '  smvso.SMVS_OPERATION_CODE,'
      '  smvso.SMVS_OPERATION_NO,'
      '  smvso.SMVS_OPERATION_VARIANT_NO,'
      '  smvso.OPERATION_TYPE_CODE,'
      
        '  Decode(smvso.OPERATION_TYPE_CODE, 2, 1, 0) as IS_NORMAL_OPERAT' +
        'ION,'
      '  smvso.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  d.PRODUCT_CODE as DEPT_PRODUCT_CODE,'
      '  d.PARENT_CODE as DEPT_PARENT_CODE,'
      '  d.BEGIN_DATE as DEPT_BEGIN_DATE,'
      '  d.END_DATE as DEPT_END_DATE,'
      '  smvso.SETUP_PROFESSION_CODE,'
      '  smvso.SETUP_EFFORT_COEF,'
      '  smvso.SETUP_HOUR_TECH_QUANTITY,'
      '  smvso.SETUP_COUNT,'
      '  smvso.PROFESSION_CODE,'
      '  smvso.EFFORT_COEF,'
      '  smvso.HOUR_TECH_QUANTITY,'
      '  smvso.PROGRAM_TOOL_PRODUCT_CODE,'
      '  ptp.NAME as PROGRAM_TOOL_PRODUCT_NAME,'
      '  ptp.CUSTOM_CODE as PROGRAM_TOOL_PRODUCT_NO,'
      '  smvso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '  stp.NAME as SPECIFIC_TOOL_PRODUCT_NAME,'
      '  stp.CUSTOM_CODE as SPECIFIC_TOOL_PRODUCT_NO,'
      '  smvso.TYPICAL_TOOL_PRODUCT_CODE,'
      '  ttp.NAME as TYPICAL_TOOL_PRODUCT_NAME,'
      '  ttp.CUSTOM_CODE as TYPICAL_TOOL_PRODUCT_NO,'
      '  smvso.NOTES,'
      '  smvso.DOC_BRANCH_CODE,'
      '  smvso.DOC_CODE,'
      '  smvso.SPECIFIC_TOOL_DETAIL_TECH_QTY,'
      '  smvso.TYPICAL_TOOL_DETAIL_TECH_QTY,'
      '  smvso.PROGRAM_TOOL_REQUIREMENT_CODE,'
      '  smvso.SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '  smvso.TYPICAL_TOOL_REQUIREMENT_CODE,'
      '  smvso.PROGRAM_TOOL_IS_COMPLETE,'
      '  smvso.SPECIFIC_TOOL_IS_COMPLETE,'
      '  smvso.TYPICAL_TOOL_IS_COMPLETE,'
      '  smvso.TREATMENT_BEGIN_WORKDAY_NO,'
      '  smvso.TREATMENT_WORKDAYS,'
      '  smvso.HAS_SPECIAL_CONTROL,'
      '  smvso.IS_AUTO_MOVEMENT,'
      '  smvso.IS_AUTO_SETUP,'
      ''
      '  ( select'
      '      dp.HOUR_PRICE'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_HOUR_PRICE,'
      ''
      '  ( select'
      '      dp.MAINTAINANCE_HOUR_PRICE'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_MAINTAINANCE_HOUR_PRICE,'
      ''
      '  ( select'
      '      dp.PARALLEL_OPERATOR_COUNT'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_PARALLEL_OPERATOR_COUNT,'
      ''
      '  ( select'
      '      dp.PARALLEL_PROCESS_COUNT'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_PARALLEL_PROCESS_COUNT,'
      ''
      '  %HAS_DOC_ITEMS[smvso] as HAS_DOCUMENTATION,'
      ''
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvso.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvso.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvso.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT'
      ''
      'from'
      '  SMVS_OPERATIONS smvso,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  PRODUCTS ptp,'
      '  PRODUCTS stp,'
      '  PRODUCTS ttp'
      ''
      'where'
      '  (smvso.DEPT_CODE = d.DEPT_CODE(+)) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (smvso.PROGRAM_TOOL_PRODUCT_CODE = ptp.PRODUCT_CODE(+)) and'
      '  (smvso.SPECIFIC_TOOL_PRODUCT_CODE = stp.PRODUCT_CODE(+)) and'
      '  (smvso.TYPICAL_TOOL_PRODUCT_CODE = ttp.PRODUCT_CODE(+)) and'
      ''
      '  (smvso.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvso.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      '  (smvso.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      '  (smvso.SPEC_LINE_STAGE_CODE = :SPEC_LINE_STAGE_CODE) and'
      ''
      '  (smvso.SMVS_OPERATION_VARIANT_NO >= 0) and'
      ''
      
        '  (1 = 2)  -- triabva da ne vrushta nishto, za da bachka mehaniz' +
        'uma, za ednokratno iztochvane'
      ''
      'order by'
      '  smvso.SMVS_OPERATION_NO,'
      '  smvso.SMVS_OPERATION_VARIANT_NO'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[smvso]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SMVS_OPERATIONS_FOR_EDIT'
    Left = 208
    Top = 528
    object qrySMVSOperationsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySMVSOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySMVSOperationsSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySMVSOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySMVSOperationsSMVS_OPERATION_CODE: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySMVSOperationsSMVS_OPERATION_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_VARIANT_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsIS_NORMAL_OPERATION: TAbmesFloatField
      FieldName = 'IS_NORMAL_OPERATION'
      ProviderFlags = []
    end
    object qrySMVSOperationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qrySMVSOperationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qrySMVSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qrySMVSOperationsDEPT_PARENT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PARENT_CODE'
      ProviderFlags = []
    end
    object qrySMVSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
      ProviderFlags = []
    end
    object qrySMVSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
      ProviderFlags = []
    end
    object qrySMVSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsSETUP_EFFORT_COEF: TAbmesFloatField
      FieldName = 'SETUP_EFFORT_COEF'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
    end
    object qrySMVSOperationsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsEFFORT_COEF: TAbmesFloatField
      FieldName = 'EFFORT_COEF'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'HOUR_TECH_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qrySMVSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NO'
      ProviderFlags = []
    end
    object qrySMVSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qrySMVSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NO'
      ProviderFlags = []
    end
    object qrySMVSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qrySMVSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NO'
      ProviderFlags = []
    end
    object qrySMVSOperationsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object qrySMVSOperationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_DETAIL_TECH_QTY'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_DETAIL_TECH_QTY'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object qrySMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object qrySMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object qrySMVSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
    end
    object qrySMVSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
    end
    object qrySMVSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
    end
    object qrySMVSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qrySMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      ProviderFlags = []
    end
    object qrySMVSOperationsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      ProviderFlags = []
    end
    object qrySMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qrySMVSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'HAS_SPECIAL_CONTROL'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsD_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_HOUR_PRICE'
      ProviderFlags = []
    end
    object qrySMVSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_MAINTAINANCE_HOUR_PRICE'
      ProviderFlags = []
    end
    object qrySMVSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_OPERATOR_COUNT'
      ProviderFlags = []
    end
    object qrySMVSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_PROCESS_COUNT'
      ProviderFlags = []
    end
    object qrySMVSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      ProviderFlags = [pfInUpdate]
    end
    object qrySMVSOperationsIS_AUTO_SETUP: TAbmesFloatField
      FieldName = 'IS_AUTO_SETUP'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsCLSpecModelVariantStages: TDataSource
    DataSet = qryCLSpecModelVariantStages
    Left = 488
    Top = 464
  end
  object qryCLSMVSOperations: TAbmesSQLQuery
    DataSource = dsCLSpecModelVariantStages
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_STAGE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  To_Number(:SPEC_PRODUCT_CODE) as SPEC_PRODUCT_CODE,'
      '  smvso.SPEC_MODEL_VARIANT_NO,'
      '  smvso.SPEC_LINE_CODE,'
      '  smvso.SPEC_LINE_STAGE_CODE,'
      '  smvso.SMVS_OPERATION_CODE,'
      '  smvso.SMVS_OPERATION_NO,'
      '  smvso.SMVS_OPERATION_VARIANT_NO,'
      '  smvso.OPERATION_TYPE_CODE,'
      
        '  Decode(smvso.OPERATION_TYPE_CODE, 2, 1, 0) as IS_NORMAL_OPERAT' +
        'ION,'
      '  smvso.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  d.PRODUCT_CODE as DEPT_PRODUCT_CODE,'
      '  d.PARENT_CODE as DEPT_PARENT_CODE,'
      '  d.BEGIN_DATE as DEPT_BEGIN_DATE,'
      '  d.END_DATE as DEPT_END_DATE,'
      '  smvso.SETUP_PROFESSION_CODE,'
      '  smvso.SETUP_EFFORT_COEF,'
      '  smvso.SETUP_HOUR_TECH_QUANTITY,'
      '  smvso.SETUP_COUNT,'
      '  smvso.PROFESSION_CODE,'
      '  smvso.EFFORT_COEF,'
      '  smvso.HOUR_TECH_QUANTITY,'
      '  smvso.PROGRAM_TOOL_PRODUCT_CODE,'
      '  ptp.NAME as PROGRAM_TOOL_PRODUCT_NAME,'
      '  ptp.CUSTOM_CODE as PROGRAM_TOOL_PRODUCT_NO,'
      '  smvso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '  stp.NAME as SPECIFIC_TOOL_PRODUCT_NAME,'
      '  stp.CUSTOM_CODE as SPECIFIC_TOOL_PRODUCT_NO,'
      '  smvso.TYPICAL_TOOL_PRODUCT_CODE,'
      '  ttp.NAME as TYPICAL_TOOL_PRODUCT_NAME,'
      '  ttp.CUSTOM_CODE as TYPICAL_TOOL_PRODUCT_NO,'
      '  smvso.NOTES,'
      '  smvso.DOC_BRANCH_CODE,'
      '  smvso.DOC_CODE,'
      '  smvso.SPECIFIC_TOOL_DETAIL_TECH_QTY,'
      '  smvso.TYPICAL_TOOL_DETAIL_TECH_QTY,'
      '  smvso.PROGRAM_TOOL_REQUIREMENT_CODE,'
      '  smvso.SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '  smvso.TYPICAL_TOOL_REQUIREMENT_CODE,'
      '  smvso.PROGRAM_TOOL_IS_COMPLETE,'
      '  smvso.SPECIFIC_TOOL_IS_COMPLETE,'
      '  smvso.TYPICAL_TOOL_IS_COMPLETE,'
      '  smvso.TREATMENT_BEGIN_WORKDAY_NO,'
      '  smvso.TREATMENT_WORKDAYS,'
      '  smvso.HAS_SPECIAL_CONTROL,'
      '  smvso.IS_AUTO_MOVEMENT,'
      '  smvso.IS_AUTO_SETUP,'
      ''
      '  ( select'
      '      dp.HOUR_PRICE'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_HOUR_PRICE,'
      ''
      '  ( select'
      '      dp.MAINTAINANCE_HOUR_PRICE'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_MAINTAINANCE_HOUR_PRICE,'
      ''
      '  ( select'
      '      dp.PARALLEL_OPERATOR_COUNT'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_PARALLEL_OPERATOR_COUNT,'
      ''
      '  ( select'
      '      dp.PARALLEL_PROCESS_COUNT'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_PARALLEL_PROCESS_COUNT,'
      ''
      '  %HAS_DOC_ITEMS[smvso] as HAS_DOCUMENTATION,'
      ''
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvso.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvso.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvso.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT'
      ''
      'from'
      '  SMVS_OPERATIONS smvso,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  PRODUCTS ptp,'
      '  PRODUCTS stp,'
      '  PRODUCTS ttp'
      ''
      'where'
      '  (smvso.DEPT_CODE = d.DEPT_CODE(+)) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (smvso.PROGRAM_TOOL_PRODUCT_CODE = ptp.PRODUCT_CODE(+)) and'
      '  (smvso.SPECIFIC_TOOL_PRODUCT_CODE = stp.PRODUCT_CODE(+)) and'
      '  (smvso.TYPICAL_TOOL_PRODUCT_CODE = ttp.PRODUCT_CODE(+)) and'
      ''
      '  (smvso.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvso.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      '  (smvso.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      '  (smvso.SPEC_LINE_STAGE_CODE = :SPEC_LINE_STAGE_CODE) and'
      ''
      '  (smvso.SMVS_OPERATION_VARIANT_NO >= 0) and'
      ''
      
        '  (1 = 2)  -- triabva da ne vrushta nishto, za da bachka mehaniz' +
        'uma, za ednokratno iztochvane'
      ''
      'order by'
      '  smvso.SMVS_OPERATION_NO,'
      '  smvso.SMVS_OPERATION_VARIANT_NO'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[smvso]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SMVS_OPERATIONS_FOR_EDIT'
    Left = 488
    Top = 512
    object qryCLSMVSOperationsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSMVSOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSMVSOperationsSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSMVSOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object qryCLSMVSOperationsSMVS_OPERATION_CODE: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCLSMVSOperationsSMVS_OPERATION_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qryCLSMVSOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_VARIANT_NO'
    end
    object qryCLSMVSOperationsOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryCLSMVSOperationsIS_NORMAL_OPERATION: TAbmesFloatField
      FieldName = 'IS_NORMAL_OPERATION'
    end
    object qryCLSMVSOperationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryCLSMVSOperationsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryCLSMVSOperationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryCLSMVSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
    object qryCLSMVSOperationsDEPT_PARENT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PARENT_CODE'
      ProviderFlags = []
    end
    object qryCLSMVSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object qryCLSMVSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object qryCLSMVSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
    end
    object qryCLSMVSOperationsSETUP_EFFORT_COEF: TAbmesFloatField
      FieldName = 'SETUP_EFFORT_COEF'
    end
    object qryCLSMVSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
    end
    object qryCLSMVSOperationsSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
    end
    object qryCLSMVSOperationsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryCLSMVSOperationsEFFORT_COEF: TAbmesFloatField
      FieldName = 'EFFORT_COEF'
      ProviderFlags = [pfInUpdate]
    end
    object qryCLSMVSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'HOUR_TECH_QUANTITY'
    end
    object qryCLSMVSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object qryCLSMVSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object qryCLSMVSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NO'
    end
    object qryCLSMVSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object qryCLSMVSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object qryCLSMVSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NO'
    end
    object qryCLSMVSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object qryCLSMVSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object qryCLSMVSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NO'
    end
    object qryCLSMVSOperationsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryCLSMVSOperationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryCLSMVSOperationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryCLSMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_DETAIL_TECH_QTY'
    end
    object qryCLSMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_DETAIL_TECH_QTY'
    end
    object qryCLSMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object qryCLSMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object qryCLSMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object qryCLSMVSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
    end
    object qryCLSMVSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
    end
    object qryCLSMVSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
    end
    object qryCLSMVSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
    end
    object qryCLSMVSOperationsTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object qryCLSMVSOperationsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryCLSMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      ProviderFlags = []
    end
    object qryCLSMVSOperationsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      ProviderFlags = []
    end
    object qryCLSMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryCLSMVSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'HAS_SPECIAL_CONTROL'
    end
    object qryCLSMVSOperationsD_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_HOUR_PRICE'
      ProviderFlags = []
    end
    object qryCLSMVSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_MAINTAINANCE_HOUR_PRICE'
    end
    object qryCLSMVSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_OPERATOR_COUNT'
    end
    object qryCLSMVSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_PROCESS_COUNT'
    end
    object qryCLSMVSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
    end
    object qryCLSMVSOperationsIS_AUTO_SETUP: TAbmesFloatField
      FieldName = 'IS_AUTO_SETUP'
    end
  end
  object dsInsertSpecModelVariantStages: TDataSource
    DataSet = qryInsertSpecLineModelStages
    Left = 72
    Top = 496
  end
  object qryInsertSMVSOperations: TAbmesSQLQuery
    DataSource = dsInsertSpecModelVariantStages
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_STAGE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  smvso.SPEC_PRODUCT_CODE,'
      '  smvso.SPEC_MODEL_VARIANT_NO,'
      '  smvso.SPEC_LINE_CODE,'
      '  smvso.SPEC_LINE_STAGE_CODE,'
      '  smvso.SMVS_OPERATION_CODE,'
      '  smvso.SMVS_OPERATION_NO,'
      '  smvso.SMVS_OPERATION_VARIANT_NO,'
      '  smvso.OPERATION_TYPE_CODE,'
      
        '  Decode(smvso.OPERATION_TYPE_CODE, 2, 1, 0) as IS_NORMAL_OPERAT' +
        'ION,'
      '  smvso.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  d.PRODUCT_CODE as DEPT_PRODUCT_CODE,'
      '  d.PARENT_CODE as DEPT_PARENT_CODE,'
      '  d.BEGIN_DATE as DEPT_BEGIN_DATE,'
      '  d.END_DATE as DEPT_END_DATE,'
      '  smvso.SETUP_PROFESSION_CODE,'
      '  smvso.SETUP_EFFORT_COEF,'
      '  smvso.SETUP_HOUR_TECH_QUANTITY,'
      '  smvso.SETUP_COUNT,'
      '  smvso.PROFESSION_CODE,'
      '  smvso.EFFORT_COEF,'
      '  smvso.HOUR_TECH_QUANTITY,'
      '  smvso.PROGRAM_TOOL_PRODUCT_CODE,'
      '  ptp.NAME as PROGRAM_TOOL_PRODUCT_NAME,'
      '  ptp.CUSTOM_CODE as PROGRAM_TOOL_PRODUCT_NO,'
      '  smvso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '  stp.NAME as SPECIFIC_TOOL_PRODUCT_NAME,'
      '  stp.CUSTOM_CODE as SPECIFIC_TOOL_PRODUCT_NO,'
      '  smvso.TYPICAL_TOOL_PRODUCT_CODE,'
      '  ttp.NAME as TYPICAL_TOOL_PRODUCT_NAME,'
      '  ttp.CUSTOM_CODE as TYPICAL_TOOL_PRODUCT_NO,'
      '  smvso.NOTES,'
      '  smvso.DOC_BRANCH_CODE,'
      '  smvso.DOC_CODE,'
      '  smvso.SPECIFIC_TOOL_DETAIL_TECH_QTY,'
      '  smvso.TYPICAL_TOOL_DETAIL_TECH_QTY,'
      '  smvso.PROGRAM_TOOL_REQUIREMENT_CODE,'
      '  smvso.SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '  smvso.TYPICAL_TOOL_REQUIREMENT_CODE,'
      '  smvso.PROGRAM_TOOL_IS_COMPLETE,'
      '  smvso.SPECIFIC_TOOL_IS_COMPLETE,'
      '  smvso.TYPICAL_TOOL_IS_COMPLETE,'
      '  smvso.TREATMENT_BEGIN_WORKDAY_NO,'
      '  smvso.TREATMENT_WORKDAYS,'
      '  smvso.HAS_SPECIAL_CONTROL,'
      ''
      '  smvso.IS_AUTO_MOVEMENT,'
      '  smvso.IS_AUTO_SETUP,'
      ''
      '  ( select'
      '      dp.HOUR_PRICE'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_HOUR_PRICE,'
      ''
      '  ( select'
      '      dp.MAINTAINANCE_HOUR_PRICE'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_MAINTAINANCE_HOUR_PRICE,'
      ''
      '  ( select'
      '      dp.PARALLEL_OPERATOR_COUNT'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_PARALLEL_OPERATOR_COUNT,'
      ''
      '  ( select'
      '      dp.PARALLEL_PROCESS_COUNT'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_PARALLEL_PROCESS_COUNT,'
      ''
      '  %HAS_DOC_ITEMS[smvso] as HAS_DOCUMENTATION,'
      ''
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvso.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvso.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvso.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT'
      ''
      'from'
      '  SMVS_OPERATIONS smvso,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  PRODUCTS ptp,'
      '  PRODUCTS stp,'
      '  PRODUCTS ttp'
      ''
      'where'
      '  (smvso.DEPT_CODE = d.DEPT_CODE(+)) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (smvso.PROGRAM_TOOL_PRODUCT_CODE = ptp.PRODUCT_CODE(+)) and'
      '  (smvso.SPECIFIC_TOOL_PRODUCT_CODE = stp.PRODUCT_CODE(+)) and'
      '  (smvso.TYPICAL_TOOL_PRODUCT_CODE = ttp.PRODUCT_CODE(+)) and'
      ''
      '  (smvso.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvso.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      '  (smvso.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      '  (smvso.SPEC_LINE_STAGE_CODE = :SPEC_LINE_STAGE_CODE) and'
      ''
      
        '  (1 = 2)  -- triabva da ne vrushta nishto, za da bachka mehaniz' +
        'uma, za ednokratno iztochvane'
      ''
      'order by'
      '  smvso.SPEC_PRODUCT_CODE,'
      '  smvso.SPEC_MODEL_VARIANT_NO,'
      '  smvso.SPEC_LINE_CODE,'
      '  smvso.SPEC_LINE_STAGE_CODE,'
      '  smvso.SMVS_OPERATION_NO,'
      '  smvso.SMVS_OPERATION_VARIANT_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[smvso]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 72
    Top = 544
    object qryInsertSMVSOperationsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInsertSMVSOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInsertSMVSOperationsSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInsertSMVSOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object qryInsertSMVSOperationsSMVS_OPERATION_CODE: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInsertSMVSOperationsSMVS_OPERATION_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qryInsertSMVSOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_VARIANT_NO'
    end
    object qryInsertSMVSOperationsOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryInsertSMVSOperationsIS_NORMAL_OPERATION: TAbmesFloatField
      FieldName = 'IS_NORMAL_OPERATION'
    end
    object qryInsertSMVSOperationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryInsertSMVSOperationsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryInsertSMVSOperationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryInsertSMVSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
    object qryInsertSMVSOperationsDEPT_PARENT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PARENT_CODE'
      ProviderFlags = []
    end
    object qryInsertSMVSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object qryInsertSMVSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object qryInsertSMVSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
    end
    object qryInsertSMVSOperationsSETUP_EFFORT_COEF: TAbmesFloatField
      FieldName = 'SETUP_EFFORT_COEF'
    end
    object qryInsertSMVSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
    end
    object qryInsertSMVSOperationsSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
    end
    object qryInsertSMVSOperationsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryInsertSMVSOperationsEFFORT_COEF: TAbmesFloatField
      FieldName = 'EFFORT_COEF'
      ProviderFlags = [pfInUpdate]
    end
    object qryInsertSMVSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'HOUR_TECH_QUANTITY'
    end
    object qryInsertSMVSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object qryInsertSMVSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object qryInsertSMVSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NO'
    end
    object qryInsertSMVSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object qryInsertSMVSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object qryInsertSMVSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NO'
    end
    object qryInsertSMVSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object qryInsertSMVSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object qryInsertSMVSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NO'
    end
    object qryInsertSMVSOperationsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryInsertSMVSOperationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryInsertSMVSOperationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryInsertSMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_DETAIL_TECH_QTY'
    end
    object qryInsertSMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_DETAIL_TECH_QTY'
    end
    object qryInsertSMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object qryInsertSMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object qryInsertSMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object qryInsertSMVSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
    end
    object qryInsertSMVSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
    end
    object qryInsertSMVSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
    end
    object qryInsertSMVSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
    end
    object qryInsertSMVSOperationsTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object qryInsertSMVSOperationsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryInsertSMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      ProviderFlags = []
    end
    object qryInsertSMVSOperationsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      ProviderFlags = []
    end
    object qryInsertSMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryInsertSMVSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'HAS_SPECIAL_CONTROL'
    end
    object qryInsertSMVSOperationsD_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_HOUR_PRICE'
    end
    object qryInsertSMVSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_MAINTAINANCE_HOUR_PRICE'
    end
    object qryInsertSMVSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_OPERATOR_COUNT'
    end
    object qryInsertSMVSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_PROCESS_COUNT'
    end
    object qryInsertSMVSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
    end
    object qryInsertSMVSOperationsIS_AUTO_SETUP: TAbmesFloatField
      FieldName = 'IS_AUTO_SETUP'
    end
  end
  object prvAllSMVSOperations: TDataSetProvider
    DataSet = qryAllSMVSOperations
    Exported = False
    Options = [poReadOnly]
    Left = 760
    Top = 432
  end
  object qryAllSMVSOperations: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smvso.SPEC_PRODUCT_CODE,'
      '  smvso.SPEC_MODEL_VARIANT_NO,'
      '  smvso.SPEC_LINE_CODE,'
      '  smvso.SPEC_LINE_STAGE_CODE,'
      '  smvso.SMVS_OPERATION_CODE,'
      '  smvso.SMVS_OPERATION_NO,'
      '  smvso.SMVS_OPERATION_VARIANT_NO,'
      '  smvso.OPERATION_TYPE_CODE,'
      
        '  Decode(smvso.OPERATION_TYPE_CODE, 2, 1, 0) as IS_NORMAL_OPERAT' +
        'ION,'
      '  smvso.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  d.PRODUCT_CODE as DEPT_PRODUCT_CODE,'
      '  d.PARENT_CODE as DEPT_PARENT_CODE,'
      '  d.BEGIN_DATE as DEPT_BEGIN_DATE,'
      '  d.END_DATE as DEPT_END_DATE,'
      '  smvso.SETUP_PROFESSION_CODE,'
      '  smvso.SETUP_EFFORT_COEF,'
      '  smvso.SETUP_HOUR_TECH_QUANTITY,'
      '  smvso.SETUP_COUNT,'
      '  smvso.PROFESSION_CODE,'
      '  smvso.EFFORT_COEF,'
      '  smvso.HOUR_TECH_QUANTITY,'
      '  smvso.PROGRAM_TOOL_PRODUCT_CODE,'
      '  ptp.NAME as PROGRAM_TOOL_PRODUCT_NAME,'
      '  ptp.CUSTOM_CODE as PROGRAM_TOOL_PRODUCT_NO,'
      '  smvso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '  stp.NAME as SPECIFIC_TOOL_PRODUCT_NAME,'
      '  stp.CUSTOM_CODE as SPECIFIC_TOOL_PRODUCT_NO,'
      '  smvso.TYPICAL_TOOL_PRODUCT_CODE,'
      '  ttp.NAME as TYPICAL_TOOL_PRODUCT_NAME,'
      '  ttp.CUSTOM_CODE as TYPICAL_TOOL_PRODUCT_NO,'
      '  smvso.NOTES,'
      '  smvso.DOC_BRANCH_CODE,'
      '  smvso.DOC_CODE,'
      '  smvso.SPECIFIC_TOOL_DETAIL_TECH_QTY,'
      '  smvso.TYPICAL_TOOL_DETAIL_TECH_QTY,'
      '  smvso.PROGRAM_TOOL_REQUIREMENT_CODE,'
      '  smvso.SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '  smvso.TYPICAL_TOOL_REQUIREMENT_CODE,'
      '  smvso.PROGRAM_TOOL_IS_COMPLETE,'
      '  smvso.SPECIFIC_TOOL_IS_COMPLETE,'
      '  smvso.TYPICAL_TOOL_IS_COMPLETE,'
      '  smvso.TREATMENT_BEGIN_WORKDAY_NO,'
      '  smvso.TREATMENT_WORKDAYS,'
      '  smvso.HAS_SPECIAL_CONTROL,'
      '  smvso.IS_AUTO_MOVEMENT,'
      '  smvso.IS_AUTO_SETUP,'
      ''
      '  ( select'
      '      dp.HOUR_PRICE'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_HOUR_PRICE,'
      ''
      '  ( select'
      '      dp.MAINTAINANCE_HOUR_PRICE'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_MAINTAINANCE_HOUR_PRICE,'
      ''
      '  ( select'
      '      dp.PARALLEL_OPERATOR_COUNT'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_PARALLEL_OPERATOR_COUNT,'
      ''
      '  ( select'
      '      dp.PARALLEL_PROCESS_COUNT'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_PARALLEL_PROCESS_COUNT,'
      ''
      '  %HAS_DOC_ITEMS[smvso] as HAS_DOCUMENTATION,'
      ''
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvso.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvso.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvso.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT'
      ''
      'from'
      '  SMVS_OPERATIONS smvso,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  PRODUCTS ptp,'
      '  PRODUCTS stp,'
      '  PRODUCTS ttp'
      ''
      'where'
      '  (smvso.DEPT_CODE = d.DEPT_CODE(+)) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (smvso.PROGRAM_TOOL_PRODUCT_CODE = ptp.PRODUCT_CODE(+)) and'
      '  (smvso.SPECIFIC_TOOL_PRODUCT_CODE = stp.PRODUCT_CODE(+)) and'
      '  (smvso.TYPICAL_TOOL_PRODUCT_CODE = ttp.PRODUCT_CODE(+)) and'
      ''
      '  (smvso.SMVS_OPERATION_VARIANT_NO >= 0) and'
      ''
      '  (smvso.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)'
      ''
      'order by'
      '  smvso.SPEC_PRODUCT_CODE,'
      '  smvso.SPEC_MODEL_VARIANT_NO,'
      '  smvso.SPEC_LINE_CODE,'
      '  smvso.SPEC_LINE_STAGE_CODE,'
      '  smvso.SMVS_OPERATION_NO,'
      '  smvso.SMVS_OPERATION_VARIANT_NO'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[smvso]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 760
    Top = 480
    object qryAllSMVSOperationsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryAllSMVSOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qryAllSMVSOperationsSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qryAllSMVSOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object qryAllSMVSOperationsSMVS_OPERATION_CODE: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_CODE'
    end
    object qryAllSMVSOperationsSMVS_OPERATION_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_NO'
    end
    object qryAllSMVSOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_VARIANT_NO'
    end
    object qryAllSMVSOperationsOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
    end
    object qryAllSMVSOperationsIS_NORMAL_OPERATION: TAbmesFloatField
      FieldName = 'IS_NORMAL_OPERATION'
    end
    object qryAllSMVSOperationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryAllSMVSOperationsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qryAllSMVSOperationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryAllSMVSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
    object qryAllSMVSOperationsDEPT_PARENT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PARENT_CODE'
    end
    object qryAllSMVSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object qryAllSMVSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object qryAllSMVSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
    end
    object qryAllSMVSOperationsSETUP_EFFORT_COEF: TAbmesFloatField
      FieldName = 'SETUP_EFFORT_COEF'
    end
    object qryAllSMVSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
    end
    object qryAllSMVSOperationsSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
    end
    object qryAllSMVSOperationsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object qryAllSMVSOperationsEFFORT_COEF: TAbmesFloatField
      FieldName = 'EFFORT_COEF'
    end
    object qryAllSMVSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'HOUR_TECH_QUANTITY'
    end
    object qryAllSMVSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object qryAllSMVSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object qryAllSMVSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NO'
    end
    object qryAllSMVSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object qryAllSMVSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object qryAllSMVSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NO'
    end
    object qryAllSMVSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object qryAllSMVSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object qryAllSMVSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NO'
    end
    object qryAllSMVSOperationsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryAllSMVSOperationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryAllSMVSOperationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryAllSMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_DETAIL_TECH_QTY'
    end
    object qryAllSMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_DETAIL_TECH_QTY'
    end
    object qryAllSMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object qryAllSMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object qryAllSMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object qryAllSMVSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
    end
    object qryAllSMVSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
    end
    object qryAllSMVSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
    end
    object qryAllSMVSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
    end
    object qryAllSMVSOperationsTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object qryAllSMVSOperationsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryAllSMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object qryAllSMVSOperationsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object qryAllSMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object qryAllSMVSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'HAS_SPECIAL_CONTROL'
    end
    object qryAllSMVSOperationsD_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_HOUR_PRICE'
    end
    object qryAllSMVSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_MAINTAINANCE_HOUR_PRICE'
    end
    object qryAllSMVSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_OPERATOR_COUNT'
    end
    object qryAllSMVSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_PROCESS_COUNT'
    end
    object qryAllSMVSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
    end
    object qryAllSMVSOperationsIS_AUTO_SETUP: TAbmesFloatField
      FieldName = 'IS_AUTO_SETUP'
    end
  end
  object cdsAllSMVSOperations: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvAllSMVSOperations'
    Left = 760
    Top = 528
    object cdsAllSMVSOperationsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsAllSMVSOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsAllSMVSOperationsSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsAllSMVSOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object cdsAllSMVSOperationsSMVS_OPERATION_CODE: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_CODE'
    end
    object cdsAllSMVSOperationsSMVS_OPERATION_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_NO'
    end
    object cdsAllSMVSOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_VARIANT_NO'
    end
    object cdsAllSMVSOperationsOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
    end
    object cdsAllSMVSOperationsIS_NORMAL_OPERATION: TAbmesFloatField
      FieldName = 'IS_NORMAL_OPERATION'
    end
    object cdsAllSMVSOperationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsAllSMVSOperationsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsAllSMVSOperationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsAllSMVSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
    object cdsAllSMVSOperationsDEPT_PARENT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PARENT_CODE'
    end
    object cdsAllSMVSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object cdsAllSMVSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object cdsAllSMVSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
    end
    object cdsAllSMVSOperationsSETUP_EFFORT_COEF: TAbmesFloatField
      FieldName = 'SETUP_EFFORT_COEF'
    end
    object cdsAllSMVSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
    end
    object cdsAllSMVSOperationsSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
    end
    object cdsAllSMVSOperationsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object cdsAllSMVSOperationsEFFORT_COEF: TAbmesFloatField
      FieldName = 'EFFORT_COEF'
    end
    object cdsAllSMVSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'HOUR_TECH_QUANTITY'
    end
    object cdsAllSMVSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object cdsAllSMVSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsAllSMVSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NO'
    end
    object cdsAllSMVSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object cdsAllSMVSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsAllSMVSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NO'
    end
    object cdsAllSMVSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object cdsAllSMVSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsAllSMVSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NO'
    end
    object cdsAllSMVSOperationsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsAllSMVSOperationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsAllSMVSOperationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsAllSMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_DETAIL_TECH_QTY'
    end
    object cdsAllSMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_DETAIL_TECH_QTY'
    end
    object cdsAllSMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object cdsAllSMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object cdsAllSMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object cdsAllSMVSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
    end
    object cdsAllSMVSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
    end
    object cdsAllSMVSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
    end
    object cdsAllSMVSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
    end
    object cdsAllSMVSOperationsTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object cdsAllSMVSOperationsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object cdsAllSMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsAllSMVSOperationsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object cdsAllSMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsAllSMVSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'HAS_SPECIAL_CONTROL'
    end
    object cdsAllSMVSOperationsD_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_HOUR_PRICE'
    end
    object cdsAllSMVSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_MAINTAINANCE_HOUR_PRICE'
    end
    object cdsAllSMVSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_OPERATOR_COUNT'
    end
    object cdsAllSMVSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_PROCESS_COUNT'
    end
    object cdsAllSMVSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
    end
    object cdsAllSMVSOperationsIS_AUTO_SETUP: TAbmesFloatField
      FieldName = 'IS_AUTO_SETUP'
    end
  end
  object qrySpecDoc: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sl.SPEC_PRODUCT_CODE,'
      '  sl.SPEC_LINE_CODE,'
      '  di.DOC_BRANCH_CODE,'
      '  di.DOC_CODE,'
      '  di.DOC_ITEM_CODE,'
      '  sl.PARENT_SPEC_LINE_CODE,'
      '  sl.NO_AS_TEXT,'
      '  sl.NO_AS_FORMATED_TEXT,'
      '  DETAIL_CODE,'
      '  p.NAME as DETAIL_NAME,'
      '  di.DOC_ITEM_NAME,'
      '  di.DOC_ITEM_TYPE_CODE,'
      '  dit.DOC_ITEM_TYPE_NAME,'
      '  di.FILE_NAME,'
      '  di.RELATIVE_PATH'
      'from'
      '  SPEC_LINES sl,'
      '  PRODUCTS p,'
      '  DOC_ITEMS di,'
      '  DOC_ITEM_TYPES dit'
      'where'
      '  (sl.DETAIL_CODE = p.PRODUCT_CODE) and'
      '  (di.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '  (di.DOC_CODE = p.DOC_CODE) and'
      '  (di.DOC_ITEM_TYPE_CODE = dit.DOC_ITEM_TYPE_CODE) and'
      '  (sl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)'
      'order by'
      '  sl.NO_AS_FORMATED_TEXT')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 808
    Top = 56
    object qrySpecDocSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qrySpecDocSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qrySpecDocDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qrySpecDocDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qrySpecDocDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
    end
    object qrySpecDocPARENT_SPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'PARENT_SPEC_LINE_CODE'
    end
    object qrySpecDocNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qrySpecDocNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object qrySpecDocDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qrySpecDocDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qrySpecDocDOC_ITEM_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_NAME'
      Size = 50
    end
    object qrySpecDocDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
    end
    object qrySpecDocDOC_ITEM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_NAME'
      Size = 50
    end
    object qrySpecDocFILE_NAME: TAbmesWideStringField
      FieldName = 'FILE_NAME'
      Size = 250
    end
    object qrySpecDocRELATIVE_PATH: TAbmesWideStringField
      FieldName = 'RELATIVE_PATH'
      Size = 250
    end
  end
  object prvSpecDoc: TDataSetProvider
    DataSet = qrySpecDoc
    UpdateMode = upWhereKeyOnly
    Left = 808
    Top = 8
  end
  object qryFixNoAsFormatedText: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  for x in'
      '    ( select'
      '        slx.SPEC_PRODUCT_CODE,'
      '        slx.SPEC_LINE_CODE,'
      '        slx.NEW_NO_AS_FORMATED_TEXT'
      '      from'
      '        ( select'
      '            sl.SPEC_PRODUCT_CODE,'
      '            sl.SPEC_LINE_CODE,'
      '            sl.NO_AS_FORMATED_TEXT,'
      '            ('
      
        '              Decode(sl.NO_1,  0, '#39'0'#39',         To_Char(sl.NO_1, ' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_1)  over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_2,  0, null, '#39'.'#39' || To_Char(sl.NO_2, ' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_2)  over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_3,  0, null, '#39'.'#39' || To_Char(sl.NO_3, ' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_3)  over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_4,  0, null, '#39'.'#39' || To_Char(sl.NO_4, ' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_4)  over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_5,  0, null, '#39'.'#39' || To_Char(sl.NO_5, ' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_5)  over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_6,  0, null, '#39'.'#39' || To_Char(sl.NO_6, ' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_6)  over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_7,  0, null, '#39'.'#39' || To_Char(sl.NO_7, ' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_7)  over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_8,  0, null, '#39'.'#39' || To_Char(sl.NO_8, ' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_8)  over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_9,  0, null, '#39'.'#39' || To_Char(sl.NO_9, ' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_9)  over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_10, 0, null, '#39'.'#39' || To_Char(sl.NO_10,' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_10) over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_11, 0, null, '#39'.'#39' || To_Char(sl.NO_11,' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_11) over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_12, 0, null, '#39'.'#39' || To_Char(sl.NO_12,' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_12) over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_13, 0, null, '#39'.'#39' || To_Char(sl.NO_13,' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_13) over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_14, 0, null, '#39'.'#39' || To_Char(sl.NO_14,' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_14) over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_15, 0, null, '#39'.'#39' || To_Char(sl.NO_15,' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_15) over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_16, 0, null, '#39'.'#39' || To_Char(sl.NO_16,' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_16) over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_17, 0, null, '#39'.'#39' || To_Char(sl.NO_17,' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_17) over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_18, 0, null, '#39'.'#39' || To_Char(sl.NO_18,' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_18) over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_19, 0, null, '#39'.'#39' || To_Char(sl.NO_19,' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_19) over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_20, 0, null, '#39'.'#39' || To_Char(sl.NO_20,' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_20) over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_21, 0, null, '#39'.'#39' || To_Char(sl.NO_21,' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_21) over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_22, 0, null, '#39'.'#39' || To_Char(sl.NO_22,' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_22) over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_23, 0, null, '#39'.'#39' || To_Char(sl.NO_23,' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_23) over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_24, 0, null, '#39'.'#39' || To_Char(sl.NO_24,' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_24) over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39'))) ||'
      
        '              Decode(sl.NO_25, 0, null, '#39'.'#39' || To_Char(sl.NO_25,' +
        ' '#39'FM'#39' || LPad('#39'9'#39', Length(Max(sl.NO_25) over (partition by sl.SP' +
        'EC_PRODUCT_CODE)), '#39'0'#39')))'
      '            ) as NEW_NO_AS_FORMATED_TEXT'
      '          from'
      '            SPEC_LINES sl'
      '          where'
      '            (sl.SPEC_PRODUCT_CODE in'
      '              ( select'
      '                  sl2.SPEC_PRODUCT_CODE'
      '                from'
      '                  SPEC_LINES sl2'
      '                where'
      '                  (sl2.DETAIL_CODE = :SPEC_PRODUCT_CODE) and'
      '                  (sl2.IS_IMPORTED = 1)'
      '              )'
      '            )'
      '        ) slx'
      '      where'
      '        (slx.NEW_NO_AS_FORMATED_TEXT <> slx.NO_AS_FORMATED_TEXT)'
      '    )'
      '  loop'
      ''
      '    update'
      '      SPEC_LINES_FOR_EDIT sl'
      '    set'
      '      sl.NO_AS_FORMATED_TEXT = x.NEW_NO_AS_FORMATED_TEXT'
      '    where'
      '      (sl.SPEC_PRODUCT_CODE = x.SPEC_PRODUCT_CODE) and'
      '      (sl.SPEC_LINE_CODE = x.SPEC_LINE_CODE);'
      ''
      '  end loop;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 552
  end
  object qrySpecLineExists: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sl.SPEC_PRODUCT_CODE,'
      '  sl.SPEC_LINE_CODE'
      ''
      'from'
      '  SPEC_LINES sl'
      ''
      'where'
      '  (sl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (sl.SPEC_LINE_CODE = :SPEC_LINE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 864
    Top = 232
    object qrySpecLineExistsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qrySpecLineExistsSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
  end
  object prvAllStages: TDataSetProvider
    DataSet = qryAllStages
    Exported = False
    Options = [poReadOnly]
    Left = 888
    Top = 408
  end
  object qryAllStages: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smvs.SPEC_PRODUCT_CODE,'
      '  smvs.SPEC_MODEL_VARIANT_NO,'
      '  smvs.SPEC_LINE_CODE,'
      '  smvs.SPEC_LINE_STAGE_CODE,'
      '  smvs.SPEC_LINE_STAGE_NO,'
      '  smvs.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  Nvl2(s.STORE_CODE, 1, 0) as DEPT_IS_STORE,'
      '  d.BEGIN_DATE as DEPT_BEGIN_DATE,'
      '  d.END_DATE as DEPT_END_DATE,'
      '  smvs.TREATMENT_WORKDAYS,'
      '  smvs.TOTAL_TREATMENT_WORKDAYS,'
      '  smvs.OUTGOING_WORKDAYS,'
      '  smvs.IS_AUTO_MOVEMENT,'
      '  smvs.DOC_BRANCH_CODE,'
      '  smvs.DOC_CODE,'
      '  smvs.SMVS_TYPE_CODE,'
      '  smvs.EXTERNAL_WORK_PRICE,'
      ''
      '  %HAS_DOC_ITEMS[smvs] as HAS_DOCUMENTATION,'
      ''
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvs.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvs.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvs.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      '  '
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      SMVS_OPERATIONS smvso'
      '    where'
      '      (smvso.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      '      (smvso.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      
        '      (smvso.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARIANT_NO)' +
        ' and'
      
        '      (smvso.SPEC_LINE_STAGE_CODE = smvs.SPEC_LINE_STAGE_CODE) a' +
        'nd'
      '      (smvso.SMVS_OPERATION_VARIANT_NO = 0)'
      '  ) as OPERATION_COUNT'
      ''
      'from'
      '  SPEC_MODEL_VARIANT_STAGES smvs,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  STORES s'
      ''
      'where'
      '  (smvs.DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (d.DEPT_CODE = s.STORE_CODE(+)) and'
      ''
      '  (smvs.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)'
      ''
      'order by'
      '  smvs.SPEC_PRODUCT_CODE,'
      '  smvs.SPEC_MODEL_VARIANT_NO,'
      '  smvs.SPEC_LINE_CODE,'
      '  smvs.SPEC_LINE_STAGE_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[smvs]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 888
    Top = 456
    object qryAllStagesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryAllStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qryAllStagesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qryAllStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object qryAllStagesSPEC_LINE_STAGE_NO: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_NO'
    end
    object qryAllStagesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryAllStagesDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qryAllStagesDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryAllStagesDEPT_IS_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_STORE'
    end
    object qryAllStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object qryAllStagesDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object qryAllStagesTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object qryAllStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TOTAL_TREATMENT_WORKDAYS'
    end
    object qryAllStagesOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object qryAllStagesIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      FieldValueType = fvtBoolean
    end
    object qryAllStagesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryAllStagesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryAllStagesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryAllStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object qryAllStagesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object qryAllStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object qryAllStagesSMVS_TYPE_CODE: TAbmesFloatField
      FieldName = 'SMVS_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryAllStagesOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
    object qryAllStagesEXTERNAL_WORK_PRICE: TAbmesFloatField
      FieldName = 'EXTERNAL_WORK_PRICE'
    end
  end
  object cdsAllStages: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvAllStages'
    Left = 888
    Top = 504
    object cdsAllStagesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsAllStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsAllStagesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsAllStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object cdsAllStagesSPEC_LINE_STAGE_NO: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_NO'
    end
    object cdsAllStagesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsAllStagesDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsAllStagesDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsAllStagesDEPT_IS_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_STORE'
    end
    object cdsAllStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object cdsAllStagesDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object cdsAllStagesTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object cdsAllStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TOTAL_TREATMENT_WORKDAYS'
    end
    object cdsAllStagesOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object cdsAllStagesIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
    end
    object cdsAllStagesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsAllStagesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsAllStagesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object cdsAllStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsAllStagesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object cdsAllStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsAllStagesSMVS_TYPE_CODE: TAbmesFloatField
      FieldName = 'SMVS_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAllStagesOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
    object cdsAllStagesEXTERNAL_WORK_PRICE: TAbmesFloatField
      FieldName = 'EXTERNAL_WORK_PRICE'
    end
  end
  object prvSMVSTypes: TDataSetProvider
    DataSet = qrySMVSTypes
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 912
    Top = 8
  end
  object qrySMVSTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  SMVS_TYPE_CODE,'
      '  SMVS_TYPE_NAME'
      ''
      'from'
      '  SMVS_TYPES'
      ''
      'order by'
      '  SMVS_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 912
    Top = 56
    object qrySMVSTypesSMVS_TYPE_CODE: TAbmesFloatField
      FieldName = 'SMVS_TYPE_CODE'
    end
    object qrySMVSTypesSMVS_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SMVS_TYPE_NAME'
      Size = 100
    end
  end
  object qryCheckAuthorizedStages: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smvl.SPEC_MODEL_VARIANT_NO,'
      '  sl.NO_AS_TEXT'
      'from'
      '  SPEC_MODEL_VARIANT_LINES smvl,'
      '  SPEC_MODEL_VARIANTS smv,'
      '  SPEC_LINES sl'
      ''
      'where'
      '  (smvl.SPEC_PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      '  (smvl.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIANT_NO) and'
      ''
      '  (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) and'
      '  (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      '  (smv.AUTHORIZATION_EMPLOYEE_CODE is not null) and'
      '  '
      '  ('
      '    ('
      '      select'
      '        Count(*)'
      '      from'
      '        SPEC_MODEL_VARIANT_STAGES smvs'
      '      where'
      '        (smvs.SPEC_PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) and'
      
        '        (smvs.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VARIANT_NO' +
        ') and'
      '        (smvs.SPEC_LINE_CODE = smvl.SPEC_LINE_CODE)'
      '    ) < 2'
      '  ) and'
      '  '
      '  (smvl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)'
      ''
      'order by'
      '  smvl.SPEC_MODEL_VARIANT_NO,'
      '  sl.NO_AS_TEXT'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 632
    Top = 504
    object qryCheckAuthorizedStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qryCheckAuthorizedStagesNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
  end
  object qryNullModelSpecVersion: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OLD_SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  MATERIAL_LISTS_FOR_EDIT ml'
      'set'
      '  ml.SPEC_VERSION_NO = null'
      'where'
      '  (ml.RESULT_PRODUCT_CODE = :OLD_SPEC_PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 656
    Top = 112
  end
  object qryUnauthorizeWrongSpecModels: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  SPEC_MODEL_VARIANTS_FOR_EDIT smv'
      'set'
      '  smv.AUTHORIZATION_EMPLOYEE_CODE = null,'
      '  smv.AUTHORIZATION_DATE = null,'
      '  smv.AUTHORIZATION_TIME = null'
      'where'
      '  (smv.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  '
      '  exists('
      '    select'
      '      1'
      '    from'
      '      SPEC_MODEL_VARIANT_LINES smvl'
      '    where'
      '      (smvl.SPEC_PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      
        '      (smvl.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIANT_NO) a' +
        'nd'
      '      '
      '      not exists('
      '        select'
      '          1'
      '        from'
      '          SPEC_MODEL_VARIANT_STAGES smvs'
      '        where'
      '          (smvs.SPEC_PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) and'
      
        '          (smvs.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VARIANT_' +
        'NO) and'
      '          (smvs.SPEC_LINE_CODE = smvl.SPEC_LINE_CODE)'
      '      )'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 72
    Top = 600
  end
  object prvDSSpec: TDataSetProvider
    DataSet = qryDSSpec
    UpdateMode = upWhereKeyOnly
    OnGetData = prvDSSpecGetData
    BeforeUpdateRecord = prvDSSpecBeforeUpdateRecord
    BeforeApplyUpdates = prvDSSpecBeforeApplyUpdates
    AfterApplyUpdates = prvDSSpecAfterApplyUpdates
    AfterGetRecords = prvDSSpecAfterGetRecords
    Left = 976
    Top = 64
  end
  object qryDSSpec: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sp.SPEC_PRODUCT_CODE,'
      '  ('
      '    select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sp.SPEC_PRODUCT_CODE)'
      '  ) as SPEC_PRODUCT_NAME,'
      '  sp.AUTHOR_EMPLOYEE_CODE,'
      '  sp.WORK_BRANCH_CODE'
      ''
      'from'
      '  SPECS sp'
      ''
      'where'
      '  (sp.SPEC_PRODUCT_CODE = :PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    AfterProviderStartTransaction = qryDSSpecAfterProviderStartTransaction
    Left = 976
    Top = 112
    object qryDSSpecSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryDSSpecSPEC_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPEC_PRODUCT_NAME'
      Size = 100
    end
    object qryDSSpecAUTHOR_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHOR_EMPLOYEE_CODE'
    end
    object qryDSSpecWORK_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WORK_BRANCH_CODE'
    end
  end
  object dsDSSpec: TDataSource
    DataSet = qryDSSpec
    Left = 976
    Top = 160
  end
  object qryDSSpecLines: TAbmesSQLQuery
    DataSource = dsDSSpec
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  sl.SPEC_PRODUCT_CODE,'
      '  sl.SPEC_LINE_CODE,'
      '  sl.PARENT_SPEC_LINE_CODE,'
      ''
      '  sl.NO_AS_TEXT,'
      '  sl.NO_AS_FORMATED_TEXT,'
      ''
      '  sl.DETAIL_CODE,'
      '  dp.NAME as DETAIL_NAME,'
      '  dp.CUSTOM_CODE as DETAIL_NO,'
      '  dp.PARENT_CODE as DETAIL_PARENT_CODE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_HAS_SPECIFICATION,'
      ''
      '  sl.PRODUCT_CODE,'
      '  pp.NAME as PRODUCT_NAME,'
      '  pp.CUSTOM_CODE as PRODUCT_NO,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = sl.PRODUCT_CODE)'
      '  ) as PRODUCT_HAS_SPECIFICATION,'
      ''
      
        '  Decode(sl.NO_1, 0, 0, Coalesce(Length(Translate(sl.NO_AS_TEXT,' +
        ' '#39'.0123456789'#39', '#39'.'#39')), 0) + 1) as LEVEL_NO,'
      ''
      '  sl.IS_COMPLETE,'
      ''
      '  ('
      '    select'
      '      Sign(Count(*))'
      '    from'
      '      SPEC_MODEL_VARIANT_LINES smvl'
      '    where'
      '      (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) and'
      '      (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      '      (smvl.IMPORT_SPEC_PRODUCT_CODE <> smvl.SPEC_PRODUCT_CODE)'
      '  ) as IS_IMPORTED,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      SPEC_LINES spl2'
      '    where'
      '      (spl2.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) and'
      '      (spl2.SPEC_LINE_CODE = sl.PARENT_SPEC_LINE_CODE) and'
      '      (spl2.IS_IMPORTED = 1)'
      '  ) as IS_IMPORTED_SUBDETAIL,'
      ''
      '  dp.DOC_BRANCH_CODE,'
      '  dp.DOC_CODE,'
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
      '  ('
      '    select'
      '      Sign(Count(*))'
      '    from'
      '      SPEC_LINES sl2'
      '    where'
      '      (sl2.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) and'
      '      (sl2.PARENT_SPEC_LINE_CODE = sl.SPEC_LINE_CODE)'
      '  ) as HAS_CHILDREN,'
      ''
      '  ('
      '    select'
      '      1 - Sign(Count(*))'
      '    from'
      '      SPEC_LINES sl2'
      '    where'
      '      (sl2.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) and'
      '      (sl2.PARENT_SPEC_LINE_CODE = sl.PARENT_SPEC_LINE_CODE) and'
      '      (sl2.NO_AS_FORMATED_TEXT > sl.NO_AS_FORMATED_TEXT)'
      '  ) as IS_LAST_CHILD,'
      ''
      '  ( select'
      '      1'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = dp.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = dp.DOC_CODE) and'
      '      (d.IS_COMPLETE = 1) and'
      '      not exists('
      '        select'
      '          1'
      '        from'
      '          DOC_ITEMS di'
      '        where'
      '          (di.DOC_BRANCH_CODE = d.DOC_BRANCH_CODE) and'
      '          (di.DOC_CODE = d.DOC_CODE) and'
      '          (di.AUTHORIZE_EMPLOYEE_CODE is null) and'
      '          (di.IS_INACTIVE = 0)'
      '      )'
      '  ) as IS_DETAIL_DOC_AUTHORIZED,'
      ''
      '  pp.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  pp.DOC_CODE as PRODUCT_DOC_CODE,'
      ''
      '  sl.NOTES,'
      '  sl.CONSTRUCTION_NOTES'
      ''
      'from'
      '  SPEC_LINES sl,'
      '  PRODUCTS dp,'
      '  PRODUCTS pp'
      ''
      'where'
      '  (sl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      ''
      '  (sl.DETAIL_CODE = dp.PRODUCT_CODE) and'
      ''
      '  (sl.PRODUCT_CODE = pp.PRODUCT_CODE(+))'
      ''
      'order by'
      '  sl.NO_AS_FORMATED_TEXT'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 976
    Top = 208
    object qryDSSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryDSSpecLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qryDSSpecLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'PARENT_SPEC_LINE_CODE'
    end
    object qryDSSpecLinesNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qryDSSpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object qryDSSpecLinesDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qryDSSpecLinesDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryDSSpecLinesDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qryDSSpecLinesDETAIL_PARENT_CODE: TAbmesFloatField
      FieldName = 'DETAIL_PARENT_CODE'
    end
    object qryDSSpecLinesDETAIL_HAS_SPECIFICATION: TAbmesFloatField
      FieldName = 'DETAIL_HAS_SPECIFICATION'
    end
    object qryDSSpecLinesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryDSSpecLinesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryDSSpecLinesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryDSSpecLinesPRODUCT_HAS_SPECIFICATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_SPECIFICATION'
    end
    object qryDSSpecLinesLEVEL_NO: TAbmesFloatField
      FieldName = 'LEVEL_NO'
    end
    object qryDSSpecLinesIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
    end
    object qryDSSpecLinesIS_IMPORTED: TAbmesFloatField
      FieldName = 'IS_IMPORTED'
    end
    object qryDSSpecLinesIS_IMPORTED_SUBDETAIL: TAbmesFloatField
      FieldName = 'IS_IMPORTED_SUBDETAIL'
    end
    object qryDSSpecLinesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDSSpecLinesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDSSpecLinesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object qryDSSpecLinesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object qryDSSpecLinesACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object qryDSSpecLinesUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
    end
    object qryDSSpecLinesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object qryDSSpecLinesHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
    end
    object qryDSSpecLinesIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
    end
    object qryDSSpecLinesIS_DETAIL_DOC_AUTHORIZED: TAbmesFloatField
      FieldName = 'IS_DETAIL_DOC_AUTHORIZED'
      ProviderFlags = []
    end
    object qryDSSpecLinesPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryDSSpecLinesPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryDSSpecLinesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryDSSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField
      FieldName = 'CONSTRUCTION_NOTES'
      Size = 250
    end
  end
  object dsDSSpecLines: TDataSource
    DataSet = qryDSSpecLines
    Left = 976
    Top = 256
  end
  object qryDSSpecModelVariantLines: TAbmesSQLQuery
    BeforeScroll = qryDSSpecModelVariantLinesBeforeScroll
    DataSource = dsDSSpecLines
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  smvl.SPEC_PRODUCT_CODE,'
      '  smvl.SPEC_LINE_CODE,'
      '  smvl.SPEC_MODEL_VARIANT_NO,'
      '  smvl.APPROVE_CYCLE_NO,'
      '  ('
      '    select'
      '      smv.MAIN_DEPT_CODE'
      '    from'
      '      SPEC_MODEL_VARIANTS smv'
      '    where'
      '      (smv.SPEC_PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) and'
      '      (smv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VARIANT_NO)'
      '  ) as MAIN_DEPT_CODE,'
      '  smvl.IMPORT_SPEC_MODEL_VARIANT_NO'
      ''
      'from'
      '  SPEC_MODEL_VARIANT_LINES smvl'
      ''
      'where'
      '  (smvl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvl.SPEC_LINE_CODE = :SPEC_LINE_CODE)'
      ''
      'order by'
      '  smvl.SPEC_MODEL_VARIANT_NO'
      '  ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SMVL_FOR_EDIT'
    Left = 976
    Top = 304
    object qryDSSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryDSSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryDSSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryDSSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField
      FieldName = 'APPROVE_CYCLE_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qryDSSpecModelVariantLinesMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
      ProviderFlags = []
    end
    object qryDSSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'IMPORT_SPEC_MODEL_VARIANT_NO'
    end
  end
  object dsDSSpecModelVariantLines: TDataSource
    DataSet = qryDSSpecModelVariantLines
    Left = 976
    Top = 352
  end
  object qryDSSpecModel: TAbmesSQLQuery
    DataSource = dsDSSpecModelVariantLines
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  -1 as ITEM_CODE,'
      '  To_Number(null) as PARENT_ITEM_CODE,'
      '  1 as ITEM_TYPE_CODE,'
      ''
      '  -1 as ORDER_NO,'
      ''
      '  smv.MAIN_DEPT_CODE as DEPT_CODE,'
      '  ('
      '    select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        'as DEPT_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = smv.MAIN_DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.PRODUCT_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smv.MAIN_DEPT_CODE)'
      '  ) as DEPT_PRODUCT_CODE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DEPTS d,'
      '      SPECS sp'
      '    where'
      '      (d.DEPT_CODE = smv.MAIN_DEPT_CODE) and'
      '      (sp.SPEC_PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      DEPTS d,'
      '      PRODUCTS p'
      '    where'
      '      (d.DEPT_CODE = smv.MAIN_DEPT_CODE) and'
      '      (p.PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_DOC_ITEMS,'
      ''
      
        '  ('#39'('#39' || RTrim(To_Char(smv.MIN_TECH_QUANTITY, '#39'FM999G999G999D99' +
        '9'#39'), To_Char(0, '#39'FMD'#39')) || '#39'-'#39' ||'
      
        '   RTrim(To_Char(smv.MAX_TECH_QUANTITY, '#39'FM999G999G999D999'#39'), To' +
        '_Char(0, '#39'FMD'#39')) || '#39']'#39') as MODEL_VARIANT_QUANTITIES,'
      ''
      '  To_Number(null) as STAGE_NO,'
      '  Cast('
      
        '    ModelUtils.SpecLineModelWorkdays(:SPEC_PRODUCT_CODE, :SPEC_M' +
        'ODEL_VARIANT_NO, :SPEC_LINE_CODE) as Varchar2(20 char)'
      '  ) as WORKDAYS,'
      ''
      '  To_Number(null) as OPERATION_NO,'
      '  To_Number(null) as OPERATION_TYPE_CODE,'
      '  To_Number(null) as OPERATION_HAS_SPECIAL_CONTROL,'
      
        '  Cast(null as Varchar2(20 char)) as OPERATION_HOUR_TECH_QUANTIT' +
        'IES,'
      ''
      '  To_Number(null) as DOC_BRANCH_CODE,'
      '  To_Number(null) as DOC_CODE,'
      '  To_Number(null) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  To_Number(null) as DOC_IS_COMPLETE,'
      '  To_Number(null) as ACTIVE_DI_COUNT,'
      '  To_Number(null) as UNAUTHORIZED_ACTIVE_DI_COUNT,'
      '  To_Number(null) as UNAPPROVED_ACTIVE_DI_COUNT,'
      '  To_Number(null) as APPROVED_DI_COUNT,'
      ''
      '  0 as LEVEL_NO,'
      '  ('
      '    select'
      '      Sign(Count(*))'
      '    from'
      '      SPEC_MODEL_VARIANT_STAGES smvs'
      '    where'
      '      (smvs.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '      (smvs.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      '      (smvs.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO)'
      '  ) as HAS_CHILDREN,'
      '  1 as IS_LAST_CHILD,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_PRODUCT_CODE,'
      '  To_Number(null) as SPECIFIC_TOOL_PRODUCT_CODE,'
      '  To_Number(null) as TYPICAL_TOOL_PRODUCT_CODE,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_REQUIREMENT_CODE,'
      '  To_Number(null) as SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '  To_Number(null) as TYPICAL_TOOL_REQUIREMENT_CODE,'
      '  '
      '  To_Number(null) as PROGRAM_TOOL_IS_COMPLETE,'
      '  To_Number(null) as SPECIFIC_TOOL_IS_COMPLETE,'
      '  To_Number(null) as TYPICAL_TOOL_IS_COMPLETE,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_PRODUCT_HAS_SPEC,'
      '  To_Number(null) as SPECIFIC_TOOL_PRODUCT_HAS_SPEC,'
      '  To_Number(null) as TYPICAL_TOOL_PRODUCT_HAS_SPEC,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_PRODUCT_HAS_DI,'
      '  To_Number(null) as SPECIFIC_TOOL_PRODUCT_HAS_DI,'
      '  To_Number(null) as TYPICAL_TOOL_PRODUCT_HAS_DI,'
      ''
      '  To_Number(null) as BASE_GROUP_CODE,'
      '  To_Number(null) as BASE_GROUP_DOC_BRANCH_CODE,'
      '  To_Number(null) as BASE_GROUP_DOC_CODE,'
      '  To_Number(null) as BASE_GROUP_HAS_DOC_ITEMS,'
      ''
      '  smv.NOTES'
      ''
      'from'
      '  SPEC_MODEL_VARIANTS smv'
      ''
      'where'
      '  (smv.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smv.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      
        '  (1 = 2)  -- triabva da ne vrushta nishto, za da bachka mehaniz' +
        'uma, za ednokratno iztochvane'
      ''
      ''
      'union all'
      ''
      ''
      'select'
      '  smvs.SPEC_LINE_STAGE_NO as ITEM_CODE,'
      '  -1 as PARENT_ITEM_CODE,'
      '  2 as ITEM_TYPE_CODE,'
      ''
      '  (smvs.SPEC_LINE_STAGE_NO*100000000000) as ORDER_NO,'
      ''
      '  smvs.DEPT_CODE as DEPT_CODE,'
      '  ('
      '    select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        'as DEPT_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = smvs.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.PRODUCT_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvs.DEPT_CODE)'
      '  ) as DEPT_PRODUCT_CODE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DEPTS d,'
      '      SPECS sp'
      '    where'
      '      (d.DEPT_CODE = smvs.DEPT_CODE) and'
      '      (sp.SPEC_PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      DEPTS d,'
      '      PRODUCTS p'
      '    where'
      '      (d.DEPT_CODE = smvs.DEPT_CODE) and'
      '      (p.PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  Cast(null as Varchar2(20 char)) as MODEL_VARIANT_QUANTITIES,'
      ''
      '  smvs.SPEC_LINE_STAGE_NO as STAGE_NO,'
      '  Decode(smvs.TREATMENT_WORKDAYS,'
      '         0, null,'
      
        '         ('#39'['#39' || smvs.TREATMENT_WORKDAYS || '#39'/'#39' || smvs.OUTGOING' +
        '_WORKDAYS || '#39']'#39')'
      '  ) as WORKDAYS,'
      ''
      '  To_Number(null) as OPERATION_NO,'
      '  To_Number(null) as OPERATION_TYPE_CODE,'
      '  To_Number(null) as OPERATION_HAS_SPECIAL_CONTROL,'
      
        '  Cast(null as Varchar2(20 char)) as OPERATION_HOUR_TECH_QUANTIT' +
        'IES,'
      ''
      '  smvs.DOC_BRANCH_CODE,'
      '  smvs.DOC_CODE,'
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvs.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvs.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvs.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvs.DOC_CODE) and'
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
      '      (di.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvs.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvs.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is not null)'
      '  ) as APPROVED_DI_COUNT,'
      ''
      '  1 as LEVEL_NO,'
      '  ('
      '    select'
      '      Sign(Count(*))'
      '    from'
      '      SMVS_OPERATIONS smvso'
      '    where'
      '      (smvso.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      '      (smvso.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      
        '      (smvso.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARIANT_NO)' +
        ' and'
      
        '      (smvso.SPEC_LINE_STAGE_CODE = smvs.SPEC_LINE_STAGE_CODE) a' +
        'nd'
      '      (smvso.SMVS_OPERATION_VARIANT_NO = 0)'
      '  ) as HAS_CHILDREN,'
      '  ('
      '    select'
      '      1 - Sign(Count(*))'
      '    from'
      '      SPEC_MODEL_VARIANT_STAGES smvs2'
      '    where'
      '      (smvs2.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      '      (smvs2.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      
        '      (smvs2.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARIANT_NO)' +
        ' and'
      '      (smvs2.SPEC_LINE_STAGE_NO > smvs.SPEC_LINE_STAGE_NO)'
      '  ) as IS_LAST_CHILD,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_PRODUCT_CODE,'
      '  To_Number(null) as SPECIFIC_TOOL_PRODUCT_CODE,'
      '  To_Number(null) as TYPICAL_TOOL_PRODUCT_CODE,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_REQUIREMENT_CODE,'
      '  To_Number(null) as SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '  To_Number(null) as TYPICAL_TOOL_REQUIREMENT_CODE,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_IS_COMPLETE,'
      '  To_Number(null) as SPECIFIC_TOOL_IS_COMPLETE,'
      '  To_Number(null) as TYPICAL_TOOL_IS_COMPLETE,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_PRODUCT_HAS_SPEC,'
      '  To_Number(null) as SPECIFIC_TOOL_PRODUCT_HAS_SPEC,'
      '  To_Number(null) as TYPICAL_TOOL_PRODUCT_HAS_SPEC,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_PRODUCT_HAS_DI,'
      '  To_Number(null) as SPECIFIC_TOOL_PRODUCT_HAS_DI,'
      '  To_Number(null) as TYPICAL_TOOL_PRODUCT_HAS_DI,'
      ''
      '  To_Number(null) as BASE_GROUP_CODE,'
      '  To_Number(null) as BASE_GROUP_DOC_BRANCH_CODE,'
      '  To_Number(null) as BASE_GROUP_DOC_CODE,'
      '  To_Number(null) as BASE_GROUP_HAS_DOC_ITEMS,'
      ''
      '  Cast(null as Varchar2(250 char)) as NOTES'
      ''
      'from'
      '  SPEC_MODEL_VARIANT_STAGES smvs,'
      '  SPEC_LINES sl'
      ''
      'where'
      '  (smvs.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvs.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      '  (smvs.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      ''
      '  (smvs.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) and'
      '  (smvs.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      
        '  (1 = 2)  -- triabva da ne vrushta nishto, za da bachka mehaniz' +
        'uma, za ednokratno iztochvane'
      ''
      ''
      'union all'
      ''
      ''
      'select'
      
        '  ((smvs.SPEC_LINE_STAGE_NO+1)*1000000 + smvso.SMVS_OPERATION_NO' +
        ') as ITEM_CODE,'
      '  smvs.SPEC_LINE_STAGE_NO as PARENT_ITEM_CODE,'
      '  3 as ITEM_TYPE_CODE,'
      ''
      
        '  ((smvs.SPEC_LINE_STAGE_NO*100000000000) + ((smvs.SPEC_LINE_STA' +
        'GE_NO+1)*1000000 + smvso.SMVS_OPERATION_NO)) as ORDER_NO,'
      ''
      '  smvso.DEPT_CODE as DEPT_CODE,'
      '  ('
      '    select'
      '      d.NAME as DEPT_IDENTIFIER'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.PRODUCT_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as DEPT_PRODUCT_CODE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DEPTS d,'
      '      SPECS sp'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (sp.SPEC_PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      DEPTS d,'
      '      PRODUCTS p'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (p.PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  Cast(null as Varchar2(20 char)) as MODEL_VARIANT_QUANTITIES,'
      ''
      '  smvs.SPEC_LINE_STAGE_NO as STAGE_NO,'
      
        '  ('#39'<'#39' || smvso.TREATMENT_BEGIN_WORKDAY_NO || '#39'/'#39' || smvs.TREATM' +
        'ENT_WORKDAYS || '#39'>'#39') as WORKDAYS,'
      ''
      '  smvso.SMVS_OPERATION_NO as OPERATION_NO,'
      '  smvso.OPERATION_TYPE_CODE,'
      '  smvso.HAS_SPECIAL_CONTROL as OPERATION_HAS_SPECIAL_CONTROL,'
      
        '  (Nvl2(smvso.SETUP_HOUR_TECH_QUANTITY, RTrim(To_Char(smvso.SETU' +
        'P_HOUR_TECH_QUANTITY, '#39'FM999G999G999D999'#39'), To_Char(0, '#39'FMD'#39')) |' +
        '| '#39';'#39', null) ||'
      
        '   RTrim(To_Char(smvso.HOUR_TECH_QUANTITY, '#39'FM999G999G999D999'#39'),' +
        ' To_Char(0, '#39'FMD'#39'))) as OPERATION_HOUR_TECH_QUANTITIES,'
      ''
      '  smvso.DOC_BRANCH_CODE,'
      '  smvso.DOC_CODE,'
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvso.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvso.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvso.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvso.DOC_CODE) and'
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
      '      (di.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvso.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvso.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is not null)'
      '  ) as APPROVED_DI_COUNT,'
      ''
      '  2 as LEVEL_NO,'
      '  0 as HAS_CHILDREN,'
      '  ('
      '    select'
      '      1 - Sign(Count(*))'
      '    from'
      '      SMVS_OPERATIONS smvso2'
      '    where'
      '      (smvso2.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_CODE) and'
      '      (smvso2.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) and'
      
        '      (smvso2.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL_VARIANT_N' +
        'O) and'
      
        '      (smvso2.SPEC_LINE_STAGE_CODE = smvso.SPEC_LINE_STAGE_CODE)' +
        ' and'
      '      (smvso2.SMVS_OPERATION_VARIANT_NO = 0) and'
      '      (smvso2.SMVS_OPERATION_NO > smvso.SMVS_OPERATION_NO)'
      '  ) as IS_LAST_CHILD,'
      ''
      '  smvso.PROGRAM_TOOL_PRODUCT_CODE,'
      '  smvso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '  smvso.TYPICAL_TOOL_PRODUCT_CODE,'
      ''
      '  smvso.PROGRAM_TOOL_REQUIREMENT_CODE,'
      '  smvso.SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '  smvso.TYPICAL_TOOL_REQUIREMENT_CODE,'
      ''
      '  smvso.PROGRAM_TOOL_IS_COMPLETE,'
      '  smvso.SPECIFIC_TOOL_IS_COMPLETE,'
      '  smvso.TYPICAL_TOOL_IS_COMPLETE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = smvso.PROGRAM_TOOL_PRODUCT_CODE)'
      '  ) as PROGRAM_TOOL_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = smvso.SPECIFIC_TOOL_PRODUCT_CODE)'
      '  ) as SPECIFIC_TOOL_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = smvso.TYPICAL_TOOL_PRODUCT_CODE)'
      '  ) as TYPICAL_TOOL_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = smvso.PROGRAM_TOOL_PRODUCT_CODE)'
      '  ) as PROGRAM_TOOL_PRODUCT_HAS_DI,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = smvso.SPECIFIC_TOOL_PRODUCT_CODE)'
      '  ) as SPECIFIC_TOOL_PRODUCT_HAS_DI,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = smvso.TYPICAL_TOOL_PRODUCT_CODE)'
      '  ) as TYPICAL_TOOL_PRODUCT_HAS_DI,'
      ''
      '  To_Number(null) as BASE_GROUP_CODE,'
      '  To_Number(null) as BASE_GROUP_DOC_BRANCH_CODE,'
      '  To_Number(null) as BASE_GROUP_DOC_CODE,'
      '  To_Number(null) as BASE_GROUP_HAS_DOC_ITEMS,'
      ''
      '  smvso.NOTES'
      ''
      'from'
      '  SMVS_OPERATIONS smvso,'
      '  SPEC_MODEL_VARIANT_STAGES smvs,'
      '  SPEC_LINES sl'
      ''
      'where'
      '  (smvso.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvso.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      '  (smvso.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      '  (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      '  (smvso.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      '  (smvso.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      '  (smvso.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARIANT_NO) and'
      '  (smvso.SPEC_LINE_STAGE_CODE = smvs.SPEC_LINE_STAGE_CODE) and'
      ''
      '  (smvs.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) and'
      '  (smvs.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      
        '  (1 = 2)  -- triabva da ne vrushta nishto, za da bachka mehaniz' +
        'uma, za ednokratno iztochvane'
      ''
      ''
      'order by'
      '  ORDER_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 976
    Top = 400
    object qryDSSpecModelITEM_CODE: TAbmesFloatField
      FieldName = 'ITEM_CODE'
    end
    object qryDSSpecModelPARENT_ITEM_CODE: TAbmesFloatField
      FieldName = 'PARENT_ITEM_CODE'
    end
    object qryDSSpecModelITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'ITEM_TYPE_CODE'
    end
    object qryDSSpecModelORDER_NO: TAbmesFloatField
      FieldName = 'ORDER_NO'
    end
    object qryDSSpecModelDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryDSSpecModelDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 100
    end
    object qryDSSpecModelMODEL_VARIANT_QUANTITIES: TAbmesWideStringField
      FieldName = 'MODEL_VARIANT_QUANTITIES'
      Size = 35
    end
    object qryDSSpecModelSTAGE_NO: TAbmesFloatField
      FieldName = 'STAGE_NO'
    end
    object qryDSSpecModelWORKDAYS: TAbmesWideStringField
      FieldName = 'WORKDAYS'
      Size = 83
    end
    object qryDSSpecModelOPERATION_NO: TAbmesFloatField
      FieldName = 'OPERATION_NO'
    end
    object qryDSSpecModelOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
    end
    object qryDSSpecModelOPERATION_HAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'OPERATION_HAS_SPECIAL_CONTROL'
    end
    object qryDSSpecModelOPERATION_HOUR_TECH_QUANTITIES: TAbmesWideStringField
      FieldName = 'OPERATION_HOUR_TECH_QUANTITIES'
      Size = 33
    end
    object qryDSSpecModelDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDSSpecModelDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDSSpecModelDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object qryDSSpecModelDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object qryDSSpecModelACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object qryDSSpecModelUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
    end
    object qryDSSpecModelUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object qryDSSpecModelAPPROVED_DI_COUNT: TAbmesFloatField
      FieldName = 'APPROVED_DI_COUNT'
    end
    object qryDSSpecModelLEVEL_NO: TAbmesFloatField
      FieldName = 'LEVEL_NO'
    end
    object qryDSSpecModelHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
    end
    object qryDSSpecModelIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
    end
    object qryDSSpecModelDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
    object qryDSSpecModelPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object qryDSSpecModelSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object qryDSSpecModelTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object qryDSSpecModelPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object qryDSSpecModelSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object qryDSSpecModelTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object qryDSSpecModelPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
    end
    object qryDSSpecModelSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
    end
    object qryDSSpecModelTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
    end
    object qryDSSpecModelDEPT_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_HAS_SPEC'
    end
    object qryDSSpecModelPROGRAM_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_HAS_SPEC'
    end
    object qryDSSpecModelSPECIFIC_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_HAS_SPEC'
    end
    object qryDSSpecModelTYPICAL_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_HAS_SPEC'
    end
    object qryDSSpecModelDEPT_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_HAS_DOC_ITEMS'
    end
    object qryDSSpecModelPROGRAM_TOOL_PRODUCT_HAS_DI: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_HAS_DI'
    end
    object qryDSSpecModelSPECIFIC_TOOL_PRODUCT_HAS_DI: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_HAS_DI'
    end
    object qryDSSpecModelTYPICAL_TOOL_PRODUCT_HAS_DI: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_HAS_DI'
    end
    object qryDSSpecModelBASE_GROUP_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_CODE'
    end
    object qryDSSpecModelBASE_GROUP_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_DOC_BRANCH_CODE'
    end
    object qryDSSpecModelBASE_GROUP_DOC_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_DOC_CODE'
    end
    object qryDSSpecModelBASE_GROUP_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'BASE_GROUP_HAS_DOC_ITEMS'
    end
    object qryDSSpecModelNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
  end
  object qryDSSpecModelVariants: TAbmesSQLQuery
    DataSource = dsDSSpec
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smv.SPEC_PRODUCT_CODE,'
      '  smv.SPEC_MODEL_VARIANT_NO,'
      '  '
      '  ('
      '    select'
      '      (smv.SPEC_MODEL_VARIANT_NO || '#39'. '#39' ||'
      
        '       (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)' +
        ' ||'
      
        '       '#39' ('#39' || RTrim(To_Char(smv.MIN_TECH_QUANTITY, '#39'FM999G999G9' +
        '99D999'#39'), To_Char(0, '#39'FMD'#39')) || '#39' - '#39' ||'
      
        '       RTrim(To_Char(smv.MAX_TECH_QUANTITY, '#39'FM999G999G999D999'#39')' +
        ', To_Char(0, '#39'FMD'#39')) || '#39'], '#39' ||'
      ''
      '       ( select'
      '           Coalesce(Max(smvs.TOTAL_TREATMENT_WORKDAYS), 0)'
      '         from'
      '           SPEC_MODEL_VARIANT_STAGES smvs'
      '         where'
      '           (smvs.SPEC_PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      
        '           (smvs.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIANT_' +
        'NO)'
      '       )'
      '      ) as MODEL_VARIANT_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = smv.MAIN_DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as MODEL_VARIANT_IDENTIFIER'
      '  '
      'from'
      '  SPEC_MODEL_VARIANTS smv'
      '  '
      'where'
      '  (smv.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smv.IS_INACTIVE = 0)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 976
    Top = 448
    object qryDSSpecModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryDSSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qryDSSpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MODEL_VARIANT_IDENTIFIER'
      Size = 84
    end
  end
  object qryAllDSSpecModels: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smvl.SPEC_MODEL_VARIANT_NO,'
      '  smvl.SPEC_LINE_CODE,'
      '  -1 as ITEM_CODE,'
      '  To_Number(null) as PARENT_ITEM_CODE,'
      '  1 as ITEM_TYPE_CODE,'
      ''
      '  -1 as ORDER_NO,'
      '  '
      '  smv.MAIN_DEPT_CODE as DEPT_CODE,'
      '  ('
      '    select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        'as DEPT_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = smv.MAIN_DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      '  '
      '  ( select'
      '      d.PRODUCT_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smv.MAIN_DEPT_CODE)'
      '  ) as DEPT_PRODUCT_CODE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DEPTS d,'
      '      SPECS sp'
      '    where'
      '      (d.DEPT_CODE = smv.MAIN_DEPT_CODE) and'
      '      (sp.SPEC_PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      DEPTS d,'
      '      PRODUCTS p'
      '    where'
      '      (d.DEPT_CODE = smv.MAIN_DEPT_CODE) and'
      '      (p.PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_DOC_ITEMS,'
      ''
      
        '  ('#39'('#39' || RTrim(To_Char(smv.MIN_TECH_QUANTITY, '#39'FM999G999G999D99' +
        '9'#39'), To_Char(0, '#39'FMD'#39')) || '#39'-'#39' ||'
      
        '   RTrim(To_Char(smv.MAX_TECH_QUANTITY, '#39'FM999G999G999D999'#39'), To' +
        '_Char(0, '#39'FMD'#39')) || '#39']'#39') as MODEL_VARIANT_QUANTITIES,'
      ''
      '  To_Number(null) as STAGE_NO,'
      '  Cast('
      
        '    ModelUtils.SpecLineModelWorkdays(:SPEC_PRODUCT_CODE, smvl.SP' +
        'EC_MODEL_VARIANT_NO, smvl.SPEC_LINE_CODE) as Varchar2(20 char)'
      '  ) as WORKDAYS,'
      ''
      '  To_Number(null) as OPERATION_NO,'
      '  To_Number(null) as OPERATION_TYPE_CODE,'
      '  To_Number(null) as OPERATION_HAS_SPECIAL_CONTROL,'
      
        '  Cast(null as Varchar2(20 char)) as OPERATION_HOUR_TECH_QUANTIT' +
        'IES,'
      ''
      '  To_Number(null) as DOC_BRANCH_CODE,'
      '  To_Number(null) as DOC_CODE,'
      '  To_Number(null) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  To_Number(null) as DOC_IS_COMPLETE,'
      '  To_Number(null) as ACTIVE_DI_COUNT,'
      '  To_Number(null) as UNAUTHORIZED_ACTIVE_DI_COUNT,'
      '  To_Number(null) as UNAPPROVED_ACTIVE_DI_COUNT,'
      '  To_Number(null) as APPROVED_DI_COUNT,'
      ''
      '  0 as LEVEL_NO,'
      '  ('
      '    select'
      '      Sign(Count(*))'
      '    from'
      '      SPEC_MODEL_VARIANT_STAGES smvs'
      '    where'
      '      (smvs.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '      (smvs.SPEC_LINE_CODE = smvl.SPEC_LINE_CODE) and'
      '      (smvs.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VARIANT_NO)'
      '  ) as HAS_CHILDREN,'
      '  1 as IS_LAST_CHILD,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_PRODUCT_CODE,'
      '  To_Number(null) as SPECIFIC_TOOL_PRODUCT_CODE,'
      '  To_Number(null) as TYPICAL_TOOL_PRODUCT_CODE,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_REQUIREMENT_CODE,'
      '  To_Number(null) as SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '  To_Number(null) as TYPICAL_TOOL_REQUIREMENT_CODE,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_IS_COMPLETE,'
      '  To_Number(null) as SPECIFIC_TOOL_IS_COMPLETE,'
      '  To_Number(null) as TYPICAL_TOOL_IS_COMPLETE,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_PRODUCT_HAS_SPEC,'
      '  To_Number(null) as SPECIFIC_TOOL_PRODUCT_HAS_SPEC,'
      '  To_Number(null) as TYPICAL_TOOL_PRODUCT_HAS_SPEC,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_PRODUCT_HAS_DI,'
      '  To_Number(null) as SPECIFIC_TOOL_PRODUCT_HAS_DI,'
      '  To_Number(null) as TYPICAL_TOOL_PRODUCT_HAS_DI,'
      ''
      '  To_Number(null) as BASE_GROUP_CODE,'
      '  To_Number(null) as BASE_GROUP_DOC_BRANCH_CODE,'
      '  To_Number(null) as BASE_GROUP_DOC_CODE,'
      '  To_Number(null) as BASE_GROUP_HAS_DOC_ITEMS,'
      ''
      '  smv.NOTES'
      ''
      'from'
      '  SPEC_MODEL_VARIANTS smv,'
      '  SPEC_MODEL_VARIANT_LINES smvl'
      ''
      'where'
      '  (smv.SPEC_PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) and'
      '  (smv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VARIANT_NO) and'
      ''
      '  (smv.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)'
      ''
      ''
      'union all'
      ''
      ''
      'select'
      '  smvs.SPEC_MODEL_VARIANT_NO,'
      '  smvs.SPEC_LINE_CODE,'
      '  smvs.SPEC_LINE_STAGE_NO as ITEM_CODE,'
      '  -1 as PARENT_ITEM_CODE,'
      '  2 as ITEM_TYPE_CODE,'
      ''
      '  (smvs.SPEC_LINE_STAGE_NO*100000000000) as ORDER_NO,'
      ''
      '  smvs.DEPT_CODE as DEPT_CODE,'
      '  ('
      '    select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        'as DEPT_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = smvs.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.PRODUCT_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvs.DEPT_CODE)'
      '  ) as DEPT_PRODUCT_CODE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DEPTS d,'
      '      SPECS sp'
      '    where'
      '      (d.DEPT_CODE = smvs.DEPT_CODE) and'
      '      (sp.SPEC_PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      DEPTS d,'
      '      PRODUCTS p'
      '    where'
      '      (d.DEPT_CODE = smvs.DEPT_CODE) and'
      '      (p.PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  Cast(null as Varchar2(20 char)) as MODEL_VARIANT_QUANTITIES,'
      ''
      '  smvs.SPEC_LINE_STAGE_NO as STAGE_NO,'
      '  Decode(smvs.TREATMENT_WORKDAYS,'
      '         0, null,'
      
        '         ('#39'['#39' || smvs.TREATMENT_WORKDAYS || '#39'/'#39' || smvs.OUTGOING' +
        '_WORKDAYS || '#39']'#39')'
      '  ) as WORKDAYS,'
      ''
      '  To_Number(null) as OPERATION_NO,'
      '  To_Number(null) as OPERATION_TYPE_CODE,'
      '  To_Number(null) as OPERATION_HAS_SPECIAL_CONTROL,'
      
        '  Cast(null as Varchar2(20 char)) as OPERATION_HOUR_TECH_QUANTIT' +
        'IES,'
      ''
      '  smvs.DOC_BRANCH_CODE,'
      '  smvs.DOC_CODE,'
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvs.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvs.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvs.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvs.DOC_CODE) and'
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
      '      (di.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvs.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvs.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvs.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is not null)'
      '  ) as APPROVED_DI_COUNT,'
      ''
      '  1 as LEVEL_NO,'
      '  ('
      '    select'
      '      Sign(Count(*))'
      '    from'
      '      SMVS_OPERATIONS smvso'
      '    where'
      '      (smvso.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      '      (smvso.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      
        '      (smvso.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARIANT_NO)' +
        ' and'
      
        '      (smvso.SPEC_LINE_STAGE_CODE = smvs.SPEC_LINE_STAGE_CODE) a' +
        'nd'
      '      (smvso.SMVS_OPERATION_VARIANT_NO = 0)'
      '  ) as HAS_CHILDREN,'
      '  ('
      '    select'
      '      1 - Sign(Count(*))'
      '    from'
      '      SPEC_MODEL_VARIANT_STAGES smvs2'
      '    where'
      '      (smvs2.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      '      (smvs2.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      
        '      (smvs2.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARIANT_NO)' +
        ' and'
      '      (smvs2.SPEC_LINE_STAGE_NO > smvs.SPEC_LINE_STAGE_NO)'
      '  ) as IS_LAST_CHILD,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_PRODUCT_CODE,'
      '  To_Number(null) as SPECIFIC_TOOL_PRODUCT_CODE,'
      '  To_Number(null) as TYPICAL_TOOL_PRODUCT_CODE,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_REQUIREMENT_CODE,'
      '  To_Number(null) as SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '  To_Number(null) as TYPICAL_TOOL_REQUIREMENT_CODE,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_IS_COMPLETE,'
      '  To_Number(null) as SPECIFIC_TOOL_IS_COMPLETE,'
      '  To_Number(null) as TYPICAL_TOOL_IS_COMPLETE,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_PRODUCT_HAS_SPEC,'
      '  To_Number(null) as SPECIFIC_TOOL_PRODUCT_HAS_SPEC,'
      '  To_Number(null) as TYPICAL_TOOL_PRODUCT_HAS_SPEC,'
      ''
      '  To_Number(null) as PROGRAM_TOOL_PRODUCT_HAS_DI,'
      '  To_Number(null) as SPECIFIC_TOOL_PRODUCT_HAS_DI,'
      '  To_Number(null) as TYPICAL_TOOL_PRODUCT_HAS_DI,'
      ''
      '  ( select'
      '      Min(bg.BASE_GROUP_CODE)'
      '    from'
      '      BASE_GROUPS bg,'
      '      BASE_GROUP_PRODUCTS bgp'
      '    where'
      '      (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE) and'
      '      (bg.GROUP_DEPT_CODE = smvs.DEPT_CODE) and'
      '      (bgp.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as BASE_GROUP_CODE,'
      ''
      '  ( select'
      '      bg2.DOC_BRANCH_CODE'
      '    from'
      '      BASE_GROUPS bg2'
      '    where'
      '      (bg2.BASE_GROUP_CODE ='
      '        ( select'
      '            Min(bg.BASE_GROUP_CODE)'
      '          from'
      '            BASE_GROUPS bg,'
      '            BASE_GROUP_PRODUCTS bgp'
      '          where'
      '            (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE) and'
      '            (bg.GROUP_DEPT_CODE = smvs.DEPT_CODE) and'
      '            (bgp.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as BASE_GROUP_DOC_BRANCH_CODE,'
      ''
      '  ( select'
      '      bg2.DOC_CODE'
      '    from'
      '      BASE_GROUPS bg2'
      '    where'
      '      (bg2.BASE_GROUP_CODE ='
      '        ( select'
      '            Min(bg.BASE_GROUP_CODE)'
      '          from'
      '            BASE_GROUPS bg,'
      '            BASE_GROUP_PRODUCTS bgp'
      '          where'
      '            (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE) and'
      '            (bg.GROUP_DEPT_CODE = smvs.DEPT_CODE) and'
      '            (bgp.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as BASE_GROUP_DOC_CODE,'
      ''
      '  ( select'
      '      Coalesce(Min(%HAS_DOC_ITEMS[bg2]), 0)'
      '    from'
      '      BASE_GROUPS bg2'
      '    where'
      '      (bg2.BASE_GROUP_CODE ='
      '        ( select'
      '            Min(bg.BASE_GROUP_CODE)'
      '          from'
      '            BASE_GROUPS bg,'
      '            BASE_GROUP_PRODUCTS bgp'
      '          where'
      '            (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE) and'
      '            (bg.GROUP_DEPT_CODE = smvs.DEPT_CODE) and'
      '            (bgp.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as BASE_GROUP_HAS_DOC_ITEMS,'
      ''
      '  Cast(null as Varchar2(250 char)) as NOTES'
      ''
      'from'
      '  SPEC_MODEL_VARIANT_STAGES smvs,'
      '  SPEC_LINES sl'
      ''
      'where'
      '  (smvs.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) and'
      '  (smvs.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      '  (smvs.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)'
      ''
      ''
      'union all'
      ''
      ''
      'select'
      '  smvso.SPEC_MODEL_VARIANT_NO,'
      '  smvso.SPEC_LINE_CODE,'
      
        '  ((smvs.SPEC_LINE_STAGE_NO+1)*1000000 + smvso.SMVS_OPERATION_NO' +
        ') as ITEM_CODE,'
      '  smvs.SPEC_LINE_STAGE_NO as PARENT_ITEM_CODE,'
      '  3 as ITEM_TYPE_CODE,'
      ''
      
        '  ((smvs.SPEC_LINE_STAGE_NO*100000000000) + ((smvs.SPEC_LINE_STA' +
        'GE_NO+1)*1000000 + smvso.SMVS_OPERATION_NO)) as ORDER_NO,'
      ''
      '  smvso.DEPT_CODE as DEPT_CODE,'
      '  ('
      '    select'
      '      d.NAME as DEPT_IDENTIFIER'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.PRODUCT_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as DEPT_PRODUCT_CODE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DEPTS d,'
      '      SPECS sp'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (sp.SPEC_PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      DEPTS d,'
      '      PRODUCTS p'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (p.PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  Cast(null as Varchar2(20 char)) as MODEL_VARIANT_QUANTITIES,'
      ''
      '  smvs.SPEC_LINE_STAGE_NO as STAGE_NO,'
      
        '  ('#39'<'#39' || smvso.TREATMENT_BEGIN_WORKDAY_NO || '#39'/'#39' || smvs.TREATM' +
        'ENT_WORKDAYS || '#39'>'#39') as WORKDAYS,'
      ''
      '  smvso.SMVS_OPERATION_NO as OPERATION_NO,'
      '  smvso.OPERATION_TYPE_CODE,'
      '  smvso.HAS_SPECIAL_CONTROL as OPERATION_HAS_SPECIAL_CONTROL,'
      
        '  (Nvl2(smvso.SETUP_HOUR_TECH_QUANTITY, RTrim(To_Char(smvso.SETU' +
        'P_HOUR_TECH_QUANTITY, '#39'FM999G999G999D999'#39'), To_Char(0, '#39'FMD'#39')) |' +
        '| '#39';'#39', null) ||'
      
        '   RTrim(To_Char(smvso.HOUR_TECH_QUANTITY, '#39'FM999G999G999D999'#39'),' +
        ' To_Char(0, '#39'FMD'#39'))) as OPERATION_HOUR_TECH_QUANTITIES,'
      ''
      '  smvso.DOC_BRANCH_CODE,'
      '  smvso.DOC_CODE,'
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvso.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = smvso.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvso.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvso.DOC_CODE) and'
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
      '      (di.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvso.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = smvso.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is not null)'
      '  ) as APPROVED_DI_COUNT,'
      ''
      '  2 as LEVEL_NO,'
      '  0 as HAS_CHILDREN,'
      '  ('
      '    select'
      '      1 - Sign(Count(*))'
      '    from'
      '      SMVS_OPERATIONS smvso2'
      '    where'
      '      (smvso2.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_CODE) and'
      '      (smvso2.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) and'
      
        '      (smvso2.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL_VARIANT_N' +
        'O) and'
      
        '      (smvso2.SPEC_LINE_STAGE_CODE = smvso.SPEC_LINE_STAGE_CODE)' +
        ' and'
      '      (smvso2.SMVS_OPERATION_VARIANT_NO = 0) and'
      '      (smvso2.SMVS_OPERATION_NO > smvso.SMVS_OPERATION_NO)'
      '  ) as IS_LAST_CHILD,'
      ''
      '  smvso.PROGRAM_TOOL_PRODUCT_CODE,'
      '  smvso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '  smvso.TYPICAL_TOOL_PRODUCT_CODE,'
      ''
      '  smvso.PROGRAM_TOOL_REQUIREMENT_CODE,'
      '  smvso.SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '  smvso.TYPICAL_TOOL_REQUIREMENT_CODE,'
      ''
      '  smvso.PROGRAM_TOOL_IS_COMPLETE,'
      '  smvso.SPECIFIC_TOOL_IS_COMPLETE,'
      '  smvso.TYPICAL_TOOL_IS_COMPLETE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = smvso.PROGRAM_TOOL_PRODUCT_CODE)'
      '  ) as PROGRAM_TOOL_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = smvso.SPECIFIC_TOOL_PRODUCT_CODE)'
      '  ) as SPECIFIC_TOOL_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = smvso.TYPICAL_TOOL_PRODUCT_CODE)'
      '  ) as TYPICAL_TOOL_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = smvso.PROGRAM_TOOL_PRODUCT_CODE)'
      '  ) as PROGRAM_TOOL_PRODUCT_HAS_DI,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = smvso.SPECIFIC_TOOL_PRODUCT_CODE)'
      '  ) as SPECIFIC_TOOL_PRODUCT_HAS_DI,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = smvso.TYPICAL_TOOL_PRODUCT_CODE)'
      '  ) as TYPICAL_TOOL_PRODUCT_HAS_DI,'
      ''
      '  ( select'
      '      Min(bg.BASE_GROUP_CODE)'
      '    from'
      '      BASE_GROUPS bg,'
      '      BASE_GROUP_PRODUCTS bgp'
      '    where'
      '      (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE) and'
      '      (bg.GROUP_DEPT_CODE = smvso.DEPT_CODE) and'
      '      (bgp.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as BASE_GROUP_CODE,'
      ''
      '  ( select'
      '      bg2.DOC_BRANCH_CODE'
      '    from'
      '      BASE_GROUPS bg2'
      '    where'
      '      (bg2.BASE_GROUP_CODE ='
      '        ( select'
      '            Min(bg.BASE_GROUP_CODE)'
      '          from'
      '            BASE_GROUPS bg,'
      '            BASE_GROUP_PRODUCTS bgp'
      '          where'
      '            (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE) and'
      '            (bg.GROUP_DEPT_CODE = smvso.DEPT_CODE) and'
      '            (bgp.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as BASE_GROUP_DOC_BRANCH_CODE,'
      ''
      '  ( select'
      '      bg2.DOC_CODE'
      '    from'
      '      BASE_GROUPS bg2'
      '    where'
      '      (bg2.BASE_GROUP_CODE ='
      '        ( select'
      '            Min(bg.BASE_GROUP_CODE)'
      '          from'
      '            BASE_GROUPS bg,'
      '            BASE_GROUP_PRODUCTS bgp'
      '          where'
      '            (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE) and'
      '            (bg.GROUP_DEPT_CODE = smvso.DEPT_CODE) and'
      '            (bgp.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as BASE_GROUP_DOC_CODE,'
      ''
      '  ( select'
      '      Coalesce(Min(%HAS_DOC_ITEMS[bg2]), 0)'
      '    from'
      '      BASE_GROUPS bg2'
      '    where'
      '      (bg2.BASE_GROUP_CODE ='
      '        ( select'
      '            Min(bg.BASE_GROUP_CODE)'
      '          from'
      '            BASE_GROUPS bg,'
      '            BASE_GROUP_PRODUCTS bgp'
      '          where'
      '            (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE) and'
      '            (bg.GROUP_DEPT_CODE = smvso.DEPT_CODE) and'
      '            (bgp.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as BASE_GROUP_HAS_DOC_ITEMS,'
      ''
      '  smvso.NOTES'
      ''
      'from'
      '  SMVS_OPERATIONS smvso,'
      '  SPEC_MODEL_VARIANT_STAGES smvs,'
      '  SPEC_LINES sl'
      ''
      'where'
      '  (smvso.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      '  (smvso.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      '  (smvso.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      '  (smvso.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARIANT_NO) and'
      '  (smvso.SPEC_LINE_STAGE_CODE = smvs.SPEC_LINE_STAGE_CODE) and'
      ''
      '  (smvs.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) and'
      '  (smvs.SPEC_LINE_CODE = sl.SPEC_LINE_CODE)'
      ''
      'order by'
      '  SPEC_MODEL_VARIANT_NO,'
      '  SPEC_LINE_CODE,'
      '  ORDER_NO'
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
        Name = 'HAS_DOC_ITEMS[bg2]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 976
    Top = 568
    object qryAllDSSpecModelsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qryAllDSSpecModelsSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qryAllDSSpecModelsITEM_CODE: TAbmesFloatField
      FieldName = 'ITEM_CODE'
    end
    object qryAllDSSpecModelsPARENT_ITEM_CODE: TAbmesFloatField
      FieldName = 'PARENT_ITEM_CODE'
    end
    object qryAllDSSpecModelsITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'ITEM_TYPE_CODE'
    end
    object qryAllDSSpecModelsORDER_NO: TAbmesFloatField
      FieldName = 'ORDER_NO'
    end
    object qryAllDSSpecModelsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryAllDSSpecModelsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 100
    end
    object qryAllDSSpecModelsMODEL_VARIANT_QUANTITIES: TAbmesWideStringField
      FieldName = 'MODEL_VARIANT_QUANTITIES'
      Size = 35
    end
    object qryAllDSSpecModelsSTAGE_NO: TAbmesFloatField
      FieldName = 'STAGE_NO'
    end
    object qryAllDSSpecModelsWORKDAYS: TAbmesWideStringField
      FieldName = 'WORKDAYS'
      Size = 83
    end
    object qryAllDSSpecModelsOPERATION_NO: TAbmesFloatField
      FieldName = 'OPERATION_NO'
    end
    object qryAllDSSpecModelsOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
    end
    object qryAllDSSpecModelsOPERATION_HAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'OPERATION_HAS_SPECIAL_CONTROL'
    end
    object qryAllDSSpecModelsOPERATION_HOUR_TECH_QUANTITIES: TAbmesWideStringField
      FieldName = 'OPERATION_HOUR_TECH_QUANTITIES'
      Size = 33
    end
    object qryAllDSSpecModelsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryAllDSSpecModelsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryAllDSSpecModelsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object qryAllDSSpecModelsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object qryAllDSSpecModelsACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object qryAllDSSpecModelsUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
    end
    object qryAllDSSpecModelsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object qryAllDSSpecModelsAPPROVED_DI_COUNT: TAbmesFloatField
      FieldName = 'APPROVED_DI_COUNT'
    end
    object qryAllDSSpecModelsLEVEL_NO: TAbmesFloatField
      FieldName = 'LEVEL_NO'
    end
    object qryAllDSSpecModelsHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
    end
    object qryAllDSSpecModelsIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
    end
    object qryAllDSSpecModelsDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
    object qryAllDSSpecModelsDEPT_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_HAS_SPEC'
    end
    object qryAllDSSpecModelsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object qryAllDSSpecModelsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object qryAllDSSpecModelsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object qryAllDSSpecModelsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object qryAllDSSpecModelsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object qryAllDSSpecModelsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object qryAllDSSpecModelsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
    end
    object qryAllDSSpecModelsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
    end
    object qryAllDSSpecModelsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
    end
    object qryAllDSSpecModelsPROGRAM_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_HAS_SPEC'
    end
    object qryAllDSSpecModelsSPECIFIC_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_HAS_SPEC'
    end
    object qryAllDSSpecModelsTYPICAL_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_HAS_SPEC'
    end
    object qryAllDSSpecModelsDEPT_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_HAS_DOC_ITEMS'
    end
    object qryAllDSSpecModelsPROGRAM_TOOL_PRODUCT_HAS_DI: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_HAS_DI'
    end
    object qryAllDSSpecModelsSPECIFIC_TOOL_PRODUCT_HAS_DI: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_HAS_DI'
    end
    object qryAllDSSpecModelsTYPICAL_TOOL_PRODUCT_HAS_DI: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_HAS_DI'
    end
    object qryAllDSSpecModelsBASE_GROUP_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_CODE'
    end
    object qryAllDSSpecModelsBASE_GROUP_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_DOC_BRANCH_CODE'
    end
    object qryAllDSSpecModelsBASE_GROUP_DOC_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_DOC_CODE'
    end
    object qryAllDSSpecModelsBASE_GROUP_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'BASE_GROUP_HAS_DOC_ITEMS'
    end
    object qryAllDSSpecModelsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
  end
  object prvAllDSSpecModels: TDataSetProvider
    DataSet = qryAllDSSpecModels
    Left = 976
    Top = 520
  end
  object cdsAllDSSpecModels: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvAllDSSpecModels'
    Left = 976
    Top = 616
    object cdsAllDSSpecModelsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsAllDSSpecModelsSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object cdsAllDSSpecModelsITEM_CODE: TAbmesFloatField
      FieldName = 'ITEM_CODE'
    end
    object cdsAllDSSpecModelsPARENT_ITEM_CODE: TAbmesFloatField
      FieldName = 'PARENT_ITEM_CODE'
    end
    object cdsAllDSSpecModelsITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'ITEM_TYPE_CODE'
    end
    object cdsAllDSSpecModelsORDER_NO: TAbmesFloatField
      FieldName = 'ORDER_NO'
    end
    object cdsAllDSSpecModelsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsAllDSSpecModelsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 100
    end
    object cdsAllDSSpecModelsMODEL_VARIANT_QUANTITIES: TAbmesWideStringField
      FieldName = 'MODEL_VARIANT_QUANTITIES'
      Size = 35
    end
    object cdsAllDSSpecModelsSTAGE_NO: TAbmesFloatField
      FieldName = 'STAGE_NO'
    end
    object cdsAllDSSpecModelsWORKDAYS: TAbmesWideStringField
      FieldName = 'WORKDAYS'
      Size = 83
    end
    object cdsAllDSSpecModelsOPERATION_NO: TAbmesFloatField
      FieldName = 'OPERATION_NO'
    end
    object cdsAllDSSpecModelsOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
    end
    object cdsAllDSSpecModelsOPERATION_HAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'OPERATION_HAS_SPECIAL_CONTROL'
    end
    object cdsAllDSSpecModelsOPERATION_HOUR_TECH_QUANTITIES: TAbmesWideStringField
      FieldName = 'OPERATION_HOUR_TECH_QUANTITIES'
      Size = 33
    end
    object cdsAllDSSpecModelsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsAllDSSpecModelsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsAllDSSpecModelsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsAllDSSpecModelsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object cdsAllDSSpecModelsACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object cdsAllDSSpecModelsUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
    end
    object cdsAllDSSpecModelsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsAllDSSpecModelsAPPROVED_DI_COUNT: TAbmesFloatField
      FieldName = 'APPROVED_DI_COUNT'
    end
    object cdsAllDSSpecModelsLEVEL_NO: TAbmesFloatField
      FieldName = 'LEVEL_NO'
    end
    object cdsAllDSSpecModelsHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
    end
    object cdsAllDSSpecModelsIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
    end
    object cdsAllDSSpecModelsDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
    object cdsAllDSSpecModelsDEPT_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_HAS_SPEC'
    end
    object cdsAllDSSpecModelsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object cdsAllDSSpecModelsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object cdsAllDSSpecModelsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object cdsAllDSSpecModelsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object cdsAllDSSpecModelsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object cdsAllDSSpecModelsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object cdsAllDSSpecModelsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
    end
    object cdsAllDSSpecModelsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
    end
    object cdsAllDSSpecModelsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
    end
    object cdsAllDSSpecModelsPROGRAM_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_HAS_SPEC'
    end
    object cdsAllDSSpecModelsSPECIFIC_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_HAS_SPEC'
    end
    object cdsAllDSSpecModelsTYPICAL_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_HAS_SPEC'
    end
    object cdsAllDSSpecModelsDEPT_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_HAS_DOC_ITEMS'
    end
    object cdsAllDSSpecModelsPROGRAM_TOOL_PRODUCT_HAS_DI: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_HAS_DI'
    end
    object cdsAllDSSpecModelsSPECIFIC_TOOL_PRODUCT_HAS_DI: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_HAS_DI'
    end
    object cdsAllDSSpecModelsTYPICAL_TOOL_PRODUCT_HAS_DI: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_HAS_DI'
    end
    object cdsAllDSSpecModelsBASE_GROUP_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_CODE'
    end
    object cdsAllDSSpecModelsBASE_GROUP_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_DOC_BRANCH_CODE'
    end
    object cdsAllDSSpecModelsBASE_GROUP_DOC_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_DOC_CODE'
    end
    object cdsAllDSSpecModelsBASE_GROUP_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'BASE_GROUP_HAS_DOC_ITEMS'
    end
    object cdsAllDSSpecModelsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
  end
  object prvSpecStructStatus: TDataSetProvider
    DataSet = qrySpecStructStatus
    Left = 872
    Top = 560
  end
  object qrySpecStructStatus: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  case'
      '    when (z.LEVEL_NO = z.MAX_LEVEL_NO - 1) and'
      '         (z.LEVEL_IS_COMPLETE = 1) and'
      '         (z.HAS_MISSING_CHILDREN = 0) then'
      '      z.LEVEL_NO + 1'
      '  else'
      '    z.LEVEL_NO'
      '  end as LEVEL_NO,'
      '  z.LEVEL_IS_COMPLETE,'
      '  z.MAX_LEVEL_NO,'
      '  z.HAS_MISSING_CHILDREN'
      ''
      'from'
      '  ('
      '    select'
      '      y.LEVEL_NO,'
      '      ('
      '        select'
      
        '          Decode(y.LEVEL_NO, -1, lev.LEVEL_IS_SELF_APPROVED, lev' +
        '.LEVEL_IS_COMPLETE)'
      '        from'
      '          ( select'
      
        '              ( Decode(sl.NO_1, 0, 0, Coalesce(Length(Translate(' +
        'sl.NO_AS_TEXT, '#39'.0123456789'#39', '#39'.'#39')), 0) + 1) -'
      
        '                Decode(sl2.NO_1, 0, 0, Coalesce(Length(Translate' +
        '(sl2.NO_AS_TEXT, '#39'.0123456789'#39', '#39'.'#39')), 0) + 1)'
      '              ) as LEVEL_NO,'
      ''
      
        '              ( (Max(Decode(sl.NO_1, 0, 0, Coalesce(Length(Trans' +
        'late(sl.NO_AS_TEXT, '#39'.0123456789'#39', '#39'.'#39')), 0) + 1)) over ()) -'
      
        '                Decode(sl2.NO_1, 0, 0, Coalesce(Length(Translate' +
        '(sl2.NO_AS_TEXT, '#39'.0123456789'#39', '#39'.'#39')), 0) + 1)'
      '              ) as MAX_LEVEL_NO,'
      ''
      '              Min('
      '                ('
      '                  select'
      '                    Sign(Count(*))'
      '                  from'
      '                    PRODUCTS p,'
      '                    DOCS d'
      '                  where'
      '                    (p.PRODUCT_CODE = sl.DETAIL_CODE) and'
      ''
      '                    (d.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '                    (d.DOC_CODE = p.DOC_CODE) and'
      '                    (d.IS_COMPLETE = 1) and'
      ''
      '                    not exists('
      '                      select'
      '                        1'
      '                      from'
      '                        DOC_ITEMS di'
      '                      where'
      
        '                        (di.DOC_BRANCH_CODE = d.DOC_BRANCH_CODE)' +
        ' and'
      '                        (di.DOC_CODE = d.DOC_CODE) and'
      '                        (di.IS_INACTIVE = 0) and'
      '                        (di.APPROVE_EMPLOYEE_CODE is null) and'
      '                        (di.AUTHORIZE_EMPLOYEE_CODE is null)'
      '                    )'
      '                ) *'
      '                ('
      '                  select'
      '                    1 - Sign(Count(*))'
      '                  from'
      '                    SPEC_LINES slp,'
      '                    SPEC_LINES sl3'
      '                  where'
      
        '                    (slp.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_COD' +
        'E) and'
      
        '                    (slp.SPEC_LINE_CODE = sl.PARENT_SPEC_LINE_CO' +
        'DE) and'
      ''
      
        '                    (sl3.SPEC_PRODUCT_CODE = slp.SPEC_PRODUCT_CO' +
        'DE) and'
      
        '                    (sl3.PARENT_SPEC_LINE_CODE = slp.PARENT_SPEC' +
        '_LINE_CODE) and'
      '                    (sl3.PRODUCT_CODE is null) and'
      ''
      '                    not exists('
      '                      select'
      '                        1'
      '                      from'
      '                        SPEC_LINES sl4'
      '                      where'
      
        '                        (sl4.SPEC_PRODUCT_CODE = sl3.SPEC_PRODUC' +
        'T_CODE) and'
      
        '                        (sl4.PARENT_SPEC_LINE_CODE = sl3.SPEC_LI' +
        'NE_CODE)'
      '                    )'
      '                )'
      '              ) as LEVEL_IS_SELF_APPROVED,'
      ''
      '              Min(sl.IS_COMPLETE) as LEVEL_IS_COMPLETE,'
      ''
      '              Max('
      '                Nvl2(sl.PRODUCT_CODE,'
      '                  0,'
      '                  1 - sl.IS_COMPLETE'
      '                )'
      '              ) as LEVEL_HAS_MISSING_CHILDREN'
      ''
      '            from'
      '              SPEC_LINES sl,'
      '              SPEC_LINES sl2'
      ''
      '            where'
      '              (sl2.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '              ( ( (:SPEC_LINE_CODE is null) and'
      '                  (sl2.NO_1 = 0)'
      '                ) or'
      '                (sl2.SPEC_LINE_CODE = :SPEC_LINE_CODE)'
      '              ) and'
      ''
      '              (sl.SPEC_PRODUCT_CODE = sl2.SPEC_PRODUCT_CODE) and'
      '              ( (sl2.NO_1 = 0) or'
      
        '                (InStr(sl.NO_AS_FORMATED_TEXT, sl2.NO_AS_FORMATE' +
        'D_TEXT) = 1) )'
      ''
      '            group by'
      
        '              Decode(sl.NO_1, 0, 0, Coalesce(Length(Translate(sl' +
        '.NO_AS_TEXT, '#39'.0123456789'#39', '#39'.'#39')), 0) + 1),'
      '              sl2.NO_1,'
      '              sl2.NO_AS_TEXT'
      '          ) lev'
      '        where'
      '          (lev.LEVEL_NO = Greatest(y.LEVEL_NO, 0))'
      '      ) as LEVEL_IS_COMPLETE,'
      '      y.MAX_LEVEL_NO,'
      '      y.HAS_MISSING_CHILDREN'
      ''
      '    from'
      '      ('
      '        select'
      
        '          Decode(Sign(x.MAX_SELF_APPROVED_LEVEL_NO - x.MAX_COMPL' +
        'ETE_LEVEL_NO),'
      
        '                 1, (x.MAX_COMPLETE_LEVEL_NO + Sign(x.MAX_SELF_A' +
        'PPROVED_LEVEL_NO - x.MAX_COMPLETE_LEVEL_NO - 1)),'
      
        '                 Greatest((x.MAX_SELF_APPROVED_LEVEL_NO - 1), -1' +
        ')'
      '          ) as LEVEL_NO,'
      '          x.MAX_LEVEL_NO,'
      '          x.HAS_MISSING_CHILDREN'
      '        from'
      '          ( select'
      
        '              (Min(Decode(lev.LEVEL_IS_SELF_APPROVED, 1, lev.MAX' +
        '_LEVEL_NO+1, lev.LEVEL_NO)) - 1) as MAX_SELF_APPROVED_LEVEL_NO,'
      
        '              (Min(Decode(lev.LEVEL_IS_COMPLETE, 1, lev.MAX_LEVE' +
        'L_NO+1, lev.LEVEL_NO)) - 1) as MAX_COMPLETE_LEVEL_NO,'
      '              Max(lev.MAX_LEVEL_NO) as MAX_LEVEL_NO,'
      
        '              Max(lev.LEVEL_HAS_MISSING_CHILDREN) as HAS_MISSING' +
        '_CHILDREN'
      '            from'
      '              ( select'
      
        '                  ( Decode(sl.NO_1, 0, 0, Coalesce(Length(Transl' +
        'ate(sl.NO_AS_TEXT, '#39'.0123456789'#39', '#39'.'#39')), 0) + 1) -'
      
        '                    Decode(sl2.NO_1, 0, 0, Coalesce(Length(Trans' +
        'late(sl2.NO_AS_TEXT, '#39'.0123456789'#39', '#39'.'#39')), 0) + 1)'
      '                  ) as LEVEL_NO,'
      ''
      
        '                  ( (Max(Decode(sl.NO_1, 0, 0, Coalesce(Length(T' +
        'ranslate(sl.NO_AS_TEXT, '#39'.0123456789'#39', '#39'.'#39')), 0) + 1)) over ()) ' +
        '-'
      
        '                    Decode(sl2.NO_1, 0, 0, Coalesce(Length(Trans' +
        'late(sl2.NO_AS_TEXT, '#39'.0123456789'#39', '#39'.'#39')), 0) + 1)'
      '                  ) as MAX_LEVEL_NO,'
      ''
      '                  Min('
      '                    ('
      '                      select'
      '                        Sign(Count(*))'
      '                      from'
      '                        PRODUCTS p,'
      '                        DOCS d'
      '                      where'
      '                        (p.PRODUCT_CODE = sl.DETAIL_CODE) and'
      ''
      
        '                        (d.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) ' +
        'and'
      '                        (d.DOC_CODE = p.DOC_CODE) and'
      '                        (d.IS_COMPLETE = 1) and'
      ''
      '                        not exists('
      '                          select'
      '                            1'
      '                          from'
      '                            DOC_ITEMS di'
      '                          where'
      
        '                            (di.DOC_BRANCH_CODE = d.DOC_BRANCH_C' +
        'ODE) and'
      '                            (di.DOC_CODE = d.DOC_CODE) and'
      '                            (di.IS_INACTIVE = 0) and'
      
        '                            (di.APPROVE_EMPLOYEE_CODE is null) a' +
        'nd'
      '                            (di.AUTHORIZE_EMPLOYEE_CODE is null)'
      '                        )'
      '                    ) *'
      '                    ('
      '                      select'
      '                        1 - Sign(Count(*))'
      '                      from'
      '                        SPEC_LINES slp,'
      '                        SPEC_LINES sl3'
      '                      where'
      
        '                        (slp.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT' +
        '_CODE) and'
      
        '                        (slp.SPEC_LINE_CODE = sl.PARENT_SPEC_LIN' +
        'E_CODE) and'
      ''
      
        '                        (sl3.SPEC_PRODUCT_CODE = slp.SPEC_PRODUC' +
        'T_CODE) and'
      
        '                        (sl3.PARENT_SPEC_LINE_CODE = slp.PARENT_' +
        'SPEC_LINE_CODE) and'
      '                        (sl3.PRODUCT_CODE is null) and'
      ''
      '                        not exists('
      '                          select'
      '                            1'
      '                          from'
      '                            SPEC_LINES sl4'
      '                          where'
      
        '                            (sl4.SPEC_PRODUCT_CODE = sl3.SPEC_PR' +
        'ODUCT_CODE) and'
      
        '                            (sl4.PARENT_SPEC_LINE_CODE = sl3.SPE' +
        'C_LINE_CODE)'
      '                        )'
      '                    )'
      '                  ) as LEVEL_IS_SELF_APPROVED,'
      ''
      '                  Min(sl.IS_COMPLETE) as LEVEL_IS_COMPLETE,'
      ''
      '                  Max('
      '                    Nvl2(sl.PRODUCT_CODE,'
      '                      0,'
      '                      1 - sl.IS_COMPLETE'
      '                    )'
      '                  ) as LEVEL_HAS_MISSING_CHILDREN'
      ''
      '                from'
      '                  SPEC_LINES sl,'
      '                  SPEC_LINES sl2'
      ''
      '                where'
      
        '                  (sl2.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) a' +
        'nd'
      '                  ( ( (:SPEC_LINE_CODE is null) and'
      '                      (sl2.NO_1 = 0)'
      '                    ) or'
      '                    (sl2.SPEC_LINE_CODE = :SPEC_LINE_CODE)'
      '                  ) and'
      ''
      
        '                  (sl.SPEC_PRODUCT_CODE = sl2.SPEC_PRODUCT_CODE)' +
        ' and'
      '                  ( (sl2.NO_1 = 0) or'
      
        '                    (InStr(sl.NO_AS_FORMATED_TEXT, sl2.NO_AS_FOR' +
        'MATED_TEXT) = 1) )'
      ''
      '                group by'
      
        '                  Decode(sl.NO_1, 0, 0, Coalesce(Length(Translat' +
        'e(sl.NO_AS_TEXT, '#39'.0123456789'#39', '#39'.'#39')), 0) + 1),'
      '                  sl2.NO_1,'
      '                  sl2.NO_AS_TEXT'
      '              ) lev'
      '          ) x'
      '      ) y'
      '  ) z'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 872
    Top = 608
    object qrySpecStructStatusLEVEL_NO: TAbmesFloatField
      FieldName = 'LEVEL_NO'
    end
    object qrySpecStructStatusLEVEL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'LEVEL_IS_COMPLETE'
    end
    object qrySpecStructStatusMAX_LEVEL_NO: TAbmesFloatField
      FieldName = 'MAX_LEVEL_NO'
    end
    object qrySpecStructStatusHAS_MISSING_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_MISSING_CHILDREN'
    end
  end
  object qryCheckOperationDocs: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Sign(Count(*)) as WRONG_OPERATION_DOC_EXISTS'
      ''
      'from'
      '  SMVS_OPERATIONS smvso1'
      ''
      'where'
      '  (smvso1.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      SMVS_OPERATIONS smvso2'
      '    where'
      '      (smvso2.DOC_BRANCH_CODE = smvso1.DOC_BRANCH_CODE) and'
      '      (smvso2.DOC_CODE = smvso1.DOC_CODE) and'
      ''
      '      (smvso2.SPEC_PRODUCT_CODE = smvso1.SPEC_PRODUCT_CODE) and'
      ''
      '      ( (smvso2.SPEC_LINE_CODE > smvso1.SPEC_LINE_CODE) or'
      '        ( (smvso2.SPEC_LINE_CODE = smvso1.SPEC_LINE_CODE) and'
      
        '          ( (smvso2.SPEC_MODEL_VARIANT_NO > smvso1.SPEC_MODEL_VA' +
        'RIANT_NO) or'
      
        '            ( (smvso2.SPEC_MODEL_VARIANT_NO = smvso1.SPEC_MODEL_' +
        'VARIANT_NO) and'
      
        '              ( (smvso2.SPEC_LINE_STAGE_CODE > smvso1.SPEC_LINE_' +
        'STAGE_CODE) or'
      
        '                ( (smvso2.SPEC_LINE_STAGE_CODE = smvso1.SPEC_LIN' +
        'E_STAGE_CODE) and'
      
        '                  (smvso2.SMVS_OPERATION_NO > smvso1.SMVS_OPERAT' +
        'ION_NO) ) ) ) ) ) )'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 448
    Top = 736
    object qryCheckOperationDocsWRONG_OPERATION_DOC_EXISTS: TAbmesFloatField
      FieldName = 'WRONG_OPERATION_DOC_EXISTS'
    end
  end
  object qrySpecInsertionsCount: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Count(*) as SPEC_INSERTIONS_COUNT'
      ''
      'from'
      '  SPEC_LINES sl'
      ''
      'where'
      '  (sl.DETAIL_CODE = :SPEC_PRODUCT_CODE) and'
      '  (sl.IS_IMPORTED = 1)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 24
    object qrySpecInsertionsCountSPEC_INSERTIONS_COUNT: TAbmesFloatField
      FieldName = 'SPEC_INSERTIONS_COUNT'
    end
  end
  object qrySpecType: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  SPEC_TYPE_CODE'
      'from'
      '  SPECS'
      'where'
      '  (SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 640
    Top = 56
    object qrySpecTypeSPEC_TYPE_CODE: TAbmesFloatField
      FieldName = 'SPEC_TYPE_CODE'
    end
  end
  object qryCalcSpecTotalTreatmentWorkdays: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      
        '  ModelUtils.CalcSpecTotalTreatmentWorkdays(:SPEC_PRODUCT_CODE, ' +
        ':SPEC_LINE_CODE);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 608
    Top = 720
  end
  object prvToolRequirements: TDataSetProvider
    DataSet = qryToolRequirements
    Options = [poReadOnly, poUseQuoteChar]
    Left = 768
    Top = 312
  end
  object qryToolRequirements: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  tr.TOOL_REQUIREMENT_CODE,'
      '  tr.TOOL_REQUIREMENT_NAME'
      '  '
      'from'
      '  TOOL_REQUIREMENTS tr'
      ''
      'order by'
      '  tr.TOOL_REQUIREMENT_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 768
    Top = 360
    object qryToolRequirementsTOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TOOL_REQUIREMENT_CODE'
    end
    object qryToolRequirementsTOOL_REQUIREMENT_NAME: TAbmesWideStringField
      FieldName = 'TOOL_REQUIREMENT_NAME'
      Size = 100
    end
  end
  object qrySpecificationsDetail: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SMVS_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SMVS_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SMVS_DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smv.SPEC_PRODUCT_CODE,'
      '  smv.SPEC_MODEL_VARIANT_NO,'
      ''
      '  %SPEC_MODEL_VARIANT_STATE[smv] as SPEC_MODEL_VARIANT_STATE,'
      ''
      '  smv.MAIN_DEPT_CODE,'
      '  '
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (d.DEPT_CODE = smv.MAIN_DEPT_CODE)'
      '  ) as MAIN_DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.NAME'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smv.MAIN_DEPT_CODE)'
      '  ) as MAIN_DEPT_NAME,'
      ''
      '  smv.MIN_TECH_QUANTITY,'
      '  smv.MAX_TECH_QUANTITY,'
      '  '
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+)) and'
      '      (p.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE)      '
      '  ) as TECH_MEASURE_ABBREV,'
      ''
      '  smv.AUTHORIZATION_EMPLOYEE_CODE,'
      '  '
      '  ( select'
      
        '      (e.FIRST_NAME || Nvl2(e.MIDDLE_NAME, ('#39' '#39' || SubStr(e.MIDD' +
        'LE_NAME, 1, 1) || '#39'. '#39'), '#39' '#39') || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = smv.AUTHORIZATION_EMPLOYEE_CODE)'
      '  ) as AUTHORIZATION_EMPLOYEE_NAME,'
      ''
      '  smv.AUTHORIZATION_DATE,'
      
        '  Nvl2(smv.AUTHORIZATION_EMPLOYEE_CODE, smv.AUTHORIZATION_OF_OPE' +
        'RATIONS, null) as AUTHORIZATION_OF_OPERATIONS,'
      '  '
      '  smv.CHANGE_EMPLOYEE_CODE,'
      '  '
      '  ( select'
      
        '      (e.FIRST_NAME || Nvl2(e.MIDDLE_NAME, ('#39' '#39' || SubStr(e.MIDD' +
        'LE_NAME, 1, 1) || '#39'. '#39'), '#39' '#39') || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = smv.CHANGE_EMPLOYEE_CODE)'
      '  ) as CHANGE_EMPLOYEE_NAME,'
      '  '
      '  smv.CHANGE_DATE,'
      '  '
      '  ( select'
      '      Max(smvs.TOTAL_TREATMENT_WORKDAYS)'
      '    from'
      '      SPEC_MODEL_VARIANT_STAGES smvs'
      '    where'
      '      (smvs.SPEC_PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      '      (smvs.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIANT_NO)'
      '  ) as MODEL_LENGTH_WORKDAYS,'
      ''
      '  smv.NOTES,'
      '  smv.IS_INACTIVE'
      ''
      'from'
      '  SPEC_MODEL_VARIANTS smv'
      ''
      'where'
      '  (smv.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      ''
      '  ( (:MAIN_DEPT_CODE is null) or'
      '    (smv.MAIN_DEPT_CODE = :MAIN_DEPT_CODE)'
      '  ) and'
      ''
      '  ( (:SMVS_DEPT_CODE is null) or'
      '    ( (exists'
      '        ( select'
      '            1'
      '          from'
      '            SPEC_MODEL_VARIANT_STAGES smvs'
      '          where'
      '            (smvs.SPEC_PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      
        '            (smvs.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIANT' +
        '_NO) and'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  DEPT_RELATIONS dr'
      '                where'
      '                  (dr.DESCENDANT_DEPT_CODE = smvs.DEPT_CODE) and'
      '                  (dr.ANCESTOR_DEPT_CODE = :SMVS_DEPT_CODE)'
      '              )'
      '            )'
      '        )'
      '      ) or'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            SMVS_OPERATIONS smvso'
      '          where'
      
        '            (smvso.SPEC_PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) an' +
        'd'
      
        '            (smvso.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIAN' +
        'T_NO) and'
      '            (smvso.SMVS_OPERATION_VARIANT_NO >= 0) and'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  DEPT_RELATIONS dr'
      '                where'
      
        '                  (dr.DESCENDANT_DEPT_CODE = smvso.DEPT_CODE) an' +
        'd'
      '                  (dr.ANCESTOR_DEPT_CODE = :SMVS_DEPT_CODE)'
      '              )'
      '            )'
      '        )'
      '      )'
      '    )'
      '  )'
      ''
      'order by'
      '  smv.SPEC_PRODUCT_CODE,'
      '  smv.SPEC_MODEL_VARIANT_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'SPEC_MODEL_VARIANT_STATE[smv]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 136
    Top = 56
    object qrySpecificationsDetailSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecificationsDetailSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecificationsDetailSPEC_MODEL_VARIANT_STATE: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_STATE'
    end
    object qrySpecificationsDetailMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object qrySpecificationsDetailMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      Size = 46
    end
    object qrySpecificationsDetailMAIN_DEPT_NAME: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_NAME'
      Size = 100
    end
    object qrySpecificationsDetailMIN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_TECH_QUANTITY'
    end
    object qrySpecificationsDetailMAX_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_TECH_QUANTITY'
    end
    object qrySpecificationsDetailTECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qrySpecificationsDetailAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZATION_EMPLOYEE_CODE'
    end
    object qrySpecificationsDetailAUTHORIZATION_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'AUTHORIZATION_EMPLOYEE_NAME'
      Size = 44
    end
    object qrySpecificationsDetailAUTHORIZATION_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZATION_DATE'
    end
    object qrySpecificationsDetailAUTHORIZATION_OF_OPERATIONS: TAbmesFloatField
      FieldName = 'AUTHORIZATION_OF_OPERATIONS'
    end
    object qrySpecificationsDetailCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qrySpecificationsDetailCHANGE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'CHANGE_EMPLOYEE_NAME'
      Size = 44
    end
    object qrySpecificationsDetailCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qrySpecificationsDetailMODEL_LENGTH_WORKDAYS: TAbmesFloatField
      FieldName = 'MODEL_LENGTH_WORKDAYS'
    end
    object qrySpecificationsDetailNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qrySpecificationsDetailIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object prvSpecificationsDetail: TDataSetProvider
    DataSet = qrySpecificationsDetail
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 8
  end
  object qryDelSpec: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  SPECS_FOR_EDIT sp'
      ''
      'where'
      '  (sp.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 560
    Top = 576
  end
  object qrySpecInvestedValueLevelsGraph: TAbmesSQLQuery
    BeforeOpen = qrySpecInvestedValueLevelsGraphBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVESTMENT_VALUE_SINGLE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
        Value = 2.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
        Value = 1.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVESTMENT_VALUE_SINGLE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVESTMENT_VALUE_SINGLE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVESTMENT_VALUE_SINGLE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVESTMENT_VALUE_SINGLE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.DATE_UNIT_FIRST_DATE,'
      '  x.DATE_UNIT_LAST_DATE,'
      '  x.DATE_UNIT_NO,'
      '  x.WORKDAYS as DATE_UNIT_WORKDAYS,'
      ''
      '  x.INVESTMENT_LEVEL_1_VALUE,'
      '  x.INVESTMENT_LEVEL_1_INCOMPLETE,'
      '  '
      '  x.INVESTMENT_LEVEL_2_VALUE,'
      '  x.INVESTMENT_LEVEL_2_INCOMPLETE,'
      '  '
      '  x.INVESTMENT_LEVEL_3_VALUE,'
      '  x.INVESTMENT_LEVEL_3_INCOMPLETE,'
      '  '
      '  x.INVESTMENT_LEVEL_4_VALUE,'
      '  x.INVESTMENT_LEVEL_4_INCOMPLETE,'
      '  '
      '  x.INVESTMENT_LEVEL_5_VALUE,'
      '  x.INVESTMENT_LEVEL_5_INCOMPLETE,'
      ''
      '  x.INVESTMENT_LEVEL_1_VALUE as FULL_INV_LEVEL_1_VALUE,'
      
        '  x.INVESTMENT_LEVEL_1_INCOMPLETE as FULL_INV_LEVEL_1_INCOMPLETE' +
        ','
      '  '
      '  ( x.INVESTMENT_LEVEL_1_VALUE +'
      '    x.INVESTMENT_LEVEL_2_VALUE'
      '  ) as FULL_INV_LEVEL_2_VALUE,'
      '  '
      '  Sign('
      '    x.INVESTMENT_LEVEL_1_INCOMPLETE +'
      '    x.INVESTMENT_LEVEL_2_INCOMPLETE'
      '  ) as FULL_INV_LEVEL_2_INCOMPLETE,'
      '  '
      '  ( x.INVESTMENT_LEVEL_1_VALUE +'
      '    x.INVESTMENT_LEVEL_2_VALUE +'
      '    x.INVESTMENT_LEVEL_3_VALUE'
      '  ) as FULL_INV_LEVEL_3_VALUE,'
      '  '
      '  Sign('
      '    x.INVESTMENT_LEVEL_1_INCOMPLETE +'
      '    x.INVESTMENT_LEVEL_2_INCOMPLETE +'
      '    x.INVESTMENT_LEVEL_3_INCOMPLETE'
      '  ) as FULL_INV_LEVEL_3_INCOMPLETE,'
      '  '
      '  ( x.INVESTMENT_LEVEL_1_VALUE +'
      '    x.INVESTMENT_LEVEL_2_VALUE +'
      '    x.INVESTMENT_LEVEL_3_VALUE +'
      '    x.INVESTMENT_LEVEL_4_VALUE'
      '  ) as FULL_INV_LEVEL_4_VALUE,'
      '  '
      '  Sign('
      '    x.INVESTMENT_LEVEL_1_INCOMPLETE +'
      '    x.INVESTMENT_LEVEL_2_INCOMPLETE +'
      '    x.INVESTMENT_LEVEL_3_INCOMPLETE +'
      '    x.INVESTMENT_LEVEL_4_INCOMPLETE'
      '  ) as FULL_INV_LEVEL_4_INCOMPLETE,'
      ''
      '  ( x.INVESTMENT_LEVEL_1_VALUE +'
      '    x.INVESTMENT_LEVEL_2_VALUE +'
      '    x.INVESTMENT_LEVEL_3_VALUE +'
      '    x.INVESTMENT_LEVEL_4_VALUE +'
      '    x.INVESTMENT_LEVEL_5_VALUE'
      '  ) as FULL_INV_LEVEL_5_VALUE,'
      ''
      '  Sign('
      '    x.INVESTMENT_LEVEL_1_INCOMPLETE +'
      '    x.INVESTMENT_LEVEL_2_INCOMPLETE +'
      '    x.INVESTMENT_LEVEL_3_INCOMPLETE +'
      '    x.INVESTMENT_LEVEL_4_INCOMPLETE +'
      '    x.INVESTMENT_LEVEL_5_INCOMPLETE'
      '  ) as FULL_INV_LEVEL_5_INCOMPLETE,'
      ''
      '  ( x.INVESTMENT_LEVEL_2_VALUE +'
      '    x.INVESTMENT_LEVEL_3_VALUE +'
      '    x.INVESTMENT_LEVEL_4_VALUE +'
      '    x.INVESTMENT_LEVEL_5_VALUE'
      '  ) as AGGR_INV_LEVEL_5_VALUE,'
      ''
      '  Sign('
      '    x.INVESTMENT_LEVEL_2_INCOMPLETE +'
      '    x.INVESTMENT_LEVEL_3_INCOMPLETE +'
      '    x.INVESTMENT_LEVEL_4_INCOMPLETE +'
      '    x.INVESTMENT_LEVEL_5_INCOMPLETE'
      '  ) as AGGR_INV_LEVEL_5_INCOMPLETE'
      ''
      'from'
      '  ( select'
      '      td.THE_FIRST_DATE as DATE_UNIT_FIRST_DATE,'
      '      td.THE_LAST_DATE as DATE_UNIT_LAST_DATE,'
      
        '      (DateTimeUtils.TimeUnitsBetween(:BEGIN_DATE, td.THE_FIRST_' +
        'DATE, :DATE_UNIT_CODE) + 1) as DATE_UNIT_NO,'
      '      td.WORKDAYS,'
      ''
      '      ('
      '        ( select'
      '            Coalesce('
      '              Sum('
      '                ( ( :TECH_QUANTITY *'
      '                    sl.TOTAL_DETAIL_TECH_QUANTITY *'
      '                    sl.PRODUCT_TECH_QUANTITY /'
      '                    p.TECH_MEASURE_COEF'
      '                  ) *'
      
        '                  %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[p.PRODUCT_C' +
        'ODE ~ td.THE_FIRST_DATE]'
      '                )'
      '              ),'
      '              0'
      '            )'
      '          from'
      '            SPEC_LINES sl,'
      '            PRODUCTS p'
      '          where'
      '            (sl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '            (sl.PRODUCT_CODE = p.PRODUCT_CODE)'
      '        ) /'
      '        ('
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '              (cr.RATE_DATE = Least(td.THE_FIRST_DATE, ContextDa' +
        'te))'
      '          )'
      '        ) /'
      '        Decode(:INVESTMENT_VALUE_SINGLE, 1, :TECH_QUANTITY, 1)'
      '      ) as INVESTMENT_LEVEL_1_VALUE,'
      '      '
      '      Sign('
      '        ( select'
      '            Count('
      '              Nvl2('
      '                ( ( :TECH_QUANTITY *'
      '                    sl.TOTAL_DETAIL_TECH_QUANTITY *'
      '                    sl.PRODUCT_TECH_QUANTITY /'
      '                    p.TECH_MEASURE_COEF'
      '                  ) *'
      
        '                  %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[p.PRODUCT_C' +
        'ODE ~ td.THE_FIRST_DATE]'
      '                ),'
      '                null,'
      '                1'
      '              )'
      '            )'
      '          from'
      '            SPEC_LINES sl,'
      '            PRODUCTS p'
      '          where'
      '            (sl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '            (sl.PRODUCT_CODE = p.PRODUCT_CODE)'
      '        ) +  -- tuk delenieto e smeneno sas sabirane'
      '        Nvl2('
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '              (cr.RATE_DATE = Least(td.THE_FIRST_DATE, ContextDa' +
        'te))'
      '          ),'
      '          0,'
      '          1'
      '        )'
      '      ) as INVESTMENT_LEVEL_1_INCOMPLETE,'
      '      '
      '      ( '
      '        ('
      '          ( select'
      '              Coalesce('
      '                Sum('
      '                  ( ( :TECH_QUANTITY *'
      '                      sl.TOTAL_DETAIL_TECH_QUANTITY *'
      '                      sl.PRODUCT_TECH_QUANTITY /'
      '                      p.TECH_MEASURE_COEF'
      '                    ) *'
      
        '                    %PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[p.PRODU' +
        'CT_CODE ~ td.THE_FIRST_DATE]'
      '                  )'
      '                ),'
      '                0'
      '              )'
      '            from'
      '              SPEC_LINES sl,'
      '              PRODUCTS p'
      '            where'
      '              (sl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '              (sl.PRODUCT_CODE = p.PRODUCT_CODE)'
      '          ) +'
      '          ( ( ( select'
      '                  Coalesce('
      '                    Sum('
      
        '                      ( ( (:TECH_QUANTITY * sl.TOTAL_DETAIL_TECH' +
        '_QUANTITY) / smvso.HOUR_TECH_QUANTITY) *'
      '                        ( select'
      '                            prp.HOUR_PRICE'
      '                          from'
      '                            PROFESSION_PERIODS prp'
      '                          where'
      
        '                            (prp.PROFESSION_CODE = smvso.PROFESS' +
        'ION_CODE) and'
      
        '                            (td.THE_FIRST_DATE between prp.BEGIN' +
        '_DATE and prp.END_DATE)'
      '                        ) *'
      '                        smvso.EFFORT_COEF'
      '                      )'
      '                    ),'
      '                    0'
      '                  ) +'
      '                  Coalesce('
      '                    Sum('
      '                      Decode('
      '                        smvso.SETUP_PROFESSION_CODE,'
      '                        null,'
      '                        0,'
      
        '                        ( ( (smvso.SETUP_COUNT / smvso.SETUP_HOU' +
        'R_TECH_QUANTITY) *'
      '                            ( select'
      '                                prp.HOUR_PRICE'
      '                              from'
      '                                PROFESSION_PERIODS prp'
      '                              where'
      
        '                                (prp.PROFESSION_CODE = smvso.SET' +
        'UP_PROFESSION_CODE) and'
      
        '                                (td.THE_FIRST_DATE between prp.B' +
        'EGIN_DATE and prp.END_DATE)'
      '                            ) *'
      '                            smvso.SETUP_EFFORT_COEF '
      '                          )'
      '                        )'
      '                      )'
      '                    ),'
      '                    0'
      '                  )'
      '                from'
      '                  PRODUCT_PERIODS pp,'
      '                  PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '                  SPEC_MODEL_VARIANTS smv,'
      '                  SPEC_MODEL_VARIANT_LINES smvl,'
      '                  SPEC_LINES sl,'
      '                  SPEC_MODEL_VARIANT_STAGES smvs,'
      '                  SMVS_OPERATIONS smvso'
      '                where'
      '                  (pp.PRODUCT_CODE = ppsmv.PRODUCT_CODE) and'
      
        '                  (pp.PRODUCT_PERIOD_CODE = ppsmv.PRODUCT_PERIOD' +
        '_CODE) and'
      '                  '
      
        '                  (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) a' +
        'nd'
      
        '                  (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_' +
        'VARIANT_NO) and'
      '                  '
      
        '                  (smv.SPEC_PRODUCT_CODE = smvl.SPEC_PRODUCT_COD' +
        'E) and'
      
        '                  (smv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_V' +
        'ARIANT_NO) and'
      ''
      
        '                  (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE' +
        ') and'
      '                  (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      
        '                  (smvl.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CO' +
        'DE) and'
      
        '                  (smvl.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_' +
        'VARIANT_NO) and'
      
        '                  (smvl.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) an' +
        'd'
      ''
      
        '                  (smvs.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_C' +
        'ODE) and'
      
        '                  (smvs.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL' +
        '_VARIANT_NO) and'
      
        '                  (smvs.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) a' +
        'nd'
      
        '                  (smvs.SPEC_LINE_STAGE_CODE = smvso.SPEC_LINE_S' +
        'TAGE_CODE) and'
      ''
      '                  ( (smvs.SMVS_TYPE_CODE = 1) or'
      '                    ( (smvs.SMVS_TYPE_CODE = 2) and'
      '                      ( ( (sl.PARENT_SPEC_LINE_CODE is null) and'
      
        '                          (:ROOT_LINE_STAGE_INCLUDE_LEVEL in (1,' +
        ' 2))'
      '                        ) or'
      
        '                        ( (sl.PARENT_SPEC_LINE_CODE is not null)' +
        ' and'
      
        '                          (:NON_ROOT_LINE_STAGE_INCLUDE_LEVEL = ' +
        '1)'
      '                        )'
      '                      )'
      '                    ) or'
      '                    ( (smvs.SMVS_TYPE_CODE = 3) and'
      '                      ( ( (sl.PARENT_SPEC_LINE_CODE is null) and'
      '                          (:ROOT_LINE_STAGE_INCLUDE_LEVEL = 2)'
      '                        ) or'
      
        '                        ( (sl.PARENT_SPEC_LINE_CODE is not null)' +
        ' and'
      
        '                          (:NON_ROOT_LINE_STAGE_INCLUDE_LEVEL = ' +
        '1)'
      '                        )'
      '                      )'
      '                    )'
      '                  ) and'
      ''
      '                  (smvs.SPEC_LINE_STAGE_NO > 0) and'
      '                  (smvs.TREATMENT_WORKDAYS > 0) and'
      '                  (smvs.OUTGOING_WORKDAYS > 0) and'
      '                  (smvso.OPERATION_TYPE_CODE = 2) and'
      '                  (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      '                  (pp.PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      
        '                  (td.THE_FIRST_DATE between pp.BEGIN_DATE and p' +
        'p.END_DATE) and'
      ''
      '                  (smv.MAIN_DEPT_CODE = :MAIN_DEPT_CODE) and'
      '                  (smv.MIN_TECH_QUANTITY < :TECH_QUANTITY) and'
      '                  (smv.MAX_TECH_QUANTITY >= :TECH_QUANTITY)'
      '              )'
      '            ) *'
      '            Coalesce('
      '              ( select'
      '                  em.LABOUR_COST_COEF'
      '                from'
      '                  EARNING_MODIFIERS em'
      '                where'
      
        '                  (td.THE_FIRST_DATE between em.BEGIN_DATE and e' +
        'm.END_DATE)'
      '              ),'
      '              1'
      '            )'
      '          )'
      '        ) /'
      '        ('
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '              (cr.RATE_DATE = Least(td.THE_FIRST_DATE, ContextDa' +
        'te))'
      '          )'
      '        ) /'
      '        Decode(:INVESTMENT_VALUE_SINGLE, 1, :TECH_QUANTITY, 1)'
      '      ) as INVESTMENT_LEVEL_2_VALUE,'
      ''
      '      Sign('
      '        ('
      '          ( select'
      '              Count('
      '                Nvl2('
      '                  ( ( :TECH_QUANTITY *'
      '                      sl.TOTAL_DETAIL_TECH_QUANTITY *'
      '                      sl.PRODUCT_TECH_QUANTITY /'
      '                      p.TECH_MEASURE_COEF'
      '                    ) *'
      
        '                    %PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[p.PRODU' +
        'CT_CODE ~ td.THE_FIRST_DATE]'
      '                  ),'
      '                  null,'
      '                  1'
      '                )'
      '              )'
      '            from'
      '              SPEC_LINES sl,'
      '              PRODUCTS p'
      '            where'
      '              (sl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '              (sl.PRODUCT_CODE = p.PRODUCT_CODE)'
      '          ) +'
      '          ( ( ( select'
      '                  Count('
      '                    Nvl2('
      
        '                      ( ( (:TECH_QUANTITY * sl.TOTAL_DETAIL_TECH' +
        '_QUANTITY) / smvso.HOUR_TECH_QUANTITY) *'
      '                        ( select'
      '                            prp.HOUR_PRICE'
      '                          from'
      '                            PROFESSION_PERIODS prp'
      '                          where'
      
        '                            (prp.PROFESSION_CODE = smvso.PROFESS' +
        'ION_CODE) and'
      
        '                            (td.THE_FIRST_DATE between prp.BEGIN' +
        '_DATE and prp.END_DATE)'
      '                        ) *'
      '                        smvso.EFFORT_COEF'
      '                      ),'
      '                      null,'
      '                      1'
      '                    )'
      '                  ) +'
      '                  Count('
      '                    Nvl2('
      '                      Decode('
      '                        smvso.SETUP_PROFESSION_CODE,'
      '                        null,'
      '                        0,'
      
        '                        ( ( (smvso.SETUP_COUNT / smvso.SETUP_HOU' +
        'R_TECH_QUANTITY) *'
      '                            ( select'
      '                                prp.HOUR_PRICE'
      '                              from'
      '                                PROFESSION_PERIODS prp'
      '                              where'
      
        '                                (prp.PROFESSION_CODE = smvso.SET' +
        'UP_PROFESSION_CODE) and'
      
        '                                (td.THE_FIRST_DATE between prp.B' +
        'EGIN_DATE and prp.END_DATE)'
      '                            ) *'
      '                            smvso.SETUP_EFFORT_COEF'
      '                          )'
      '                        )'
      '                      ),'
      '                      null,'
      '                      1'
      '                    )'
      '                  )'
      '                from'
      '                  PRODUCT_PERIODS pp,'
      '                  PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '                  SPEC_MODEL_VARIANTS smv,'
      '                  SPEC_MODEL_VARIANT_LINES smvl,'
      '                  SPEC_LINES sl,'
      '                  SPEC_MODEL_VARIANT_STAGES smvs,'
      '                  SMVS_OPERATIONS smvso'
      '                where'
      '                  (pp.PRODUCT_CODE = ppsmv.PRODUCT_CODE) and'
      
        '                  (pp.PRODUCT_PERIOD_CODE = ppsmv.PRODUCT_PERIOD' +
        '_CODE) and'
      ''
      
        '                  (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) a' +
        'nd'
      
        '                  (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_' +
        'VARIANT_NO) and'
      ''
      
        '                  (smv.SPEC_PRODUCT_CODE = smvl.SPEC_PRODUCT_COD' +
        'E) and'
      
        '                  (smv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_V' +
        'ARIANT_NO) and'
      ''
      
        '                  (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE' +
        ') and'
      '                  (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      
        '                  (smvl.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CO' +
        'DE) and'
      
        '                  (smvl.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_' +
        'VARIANT_NO) and'
      
        '                  (smvl.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) an' +
        'd'
      ''
      
        '                  (smvs.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_C' +
        'ODE) and'
      
        '                  (smvs.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL' +
        '_VARIANT_NO) and'
      
        '                  (smvs.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) a' +
        'nd'
      
        '                  (smvs.SPEC_LINE_STAGE_CODE = smvso.SPEC_LINE_S' +
        'TAGE_CODE) and'
      ''
      '                  ( (smvs.SMVS_TYPE_CODE = 1) or'
      '                    ( (smvs.SMVS_TYPE_CODE = 2) and'
      '                      ( ( (sl.PARENT_SPEC_LINE_CODE is null) and'
      
        '                          (:ROOT_LINE_STAGE_INCLUDE_LEVEL in (1,' +
        ' 2))'
      '                        ) or'
      
        '                        ( (sl.PARENT_SPEC_LINE_CODE is not null)' +
        ' and'
      
        '                          (:NON_ROOT_LINE_STAGE_INCLUDE_LEVEL = ' +
        '1)'
      '                        )'
      '                      )'
      '                    ) or'
      '                    ( (smvs.SMVS_TYPE_CODE = 3) and'
      '                      ( ( (sl.PARENT_SPEC_LINE_CODE is null) and'
      '                          (:ROOT_LINE_STAGE_INCLUDE_LEVEL = 2)'
      '                        ) or'
      
        '                        ( (sl.PARENT_SPEC_LINE_CODE is not null)' +
        ' and'
      
        '                          (:NON_ROOT_LINE_STAGE_INCLUDE_LEVEL = ' +
        '1)'
      '                        )'
      '                      )'
      '                    )'
      '                  ) and'
      ''
      '                  (smvs.SPEC_LINE_STAGE_NO > 0) and'
      '                  (smvs.TREATMENT_WORKDAYS > 0) and'
      '                  (smvs.OUTGOING_WORKDAYS > 0) and'
      '                  (smvso.OPERATION_TYPE_CODE = 2) and'
      '                  (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      '                  (pp.PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      
        '                  (td.THE_FIRST_DATE between pp.BEGIN_DATE and p' +
        'p.END_DATE) and'
      ''
      '                  (smv.MAIN_DEPT_CODE = :MAIN_DEPT_CODE) and'
      '                  (smv.MIN_TECH_QUANTITY < :TECH_QUANTITY) and'
      '                  (smv.MAX_TECH_QUANTITY >= :TECH_QUANTITY)'
      
        '              ) +  -- tuk dobaviame problem pri lipsa na aktiven' +
        ' variant na model za parametrite'
      '              ( select'
      '                  1 - Sign(Count(*))'
      '                from'
      '                  PRODUCT_PERIODS pp,'
      '                  PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '                  SPEC_MODEL_VARIANTS smv'
      '                where'
      '                  (pp.PRODUCT_CODE = ppsmv.PRODUCT_CODE) and'
      
        '                  (pp.PRODUCT_PERIOD_CODE = ppsmv.PRODUCT_PERIOD' +
        '_CODE) and'
      ''
      
        '                  (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) a' +
        'nd'
      
        '                  (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_' +
        'VARIANT_NO) and'
      ''
      '                  (pp.PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      
        '                  (td.THE_FIRST_DATE between pp.BEGIN_DATE and p' +
        'p.END_DATE) and'
      ''
      '                  (smv.MAIN_DEPT_CODE = :MAIN_DEPT_CODE) and'
      '                  (smv.MIN_TECH_QUANTITY < :TECH_QUANTITY) and'
      '                  (smv.MAX_TECH_QUANTITY >= :TECH_QUANTITY)'
      '              )'
      '            ) +  -- tuk umnojenieto e smeneno sas sabirane'
      '            Nvl2('
      '              ( select'
      '                  em.LABOUR_COST_COEF'
      '                from'
      '                  EARNING_MODIFIERS em'
      '                where'
      
        '                  (td.THE_FIRST_DATE between em.BEGIN_DATE and e' +
        'm.END_DATE)'
      '              ),'
      '              0,'
      '              1'
      '            )'
      '          )'
      '        ) +  -- tuk delenieto e smeneno sas sabirane'
      '        Nvl2('
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '              (cr.RATE_DATE = Least(td.THE_FIRST_DATE, ContextDa' +
        'te))'
      '          ),'
      '          0,'
      '          1'
      '        )'
      '      ) as INVESTMENT_LEVEL_2_INCOMPLETE,'
      '      '
      '      ( '
      '        ('
      '          ( select'
      '              Coalesce('
      '                Sum('
      '                  ( ( :TECH_QUANTITY *'
      '                      sl.TOTAL_DETAIL_TECH_QUANTITY *'
      '                      sl.PRODUCT_TECH_QUANTITY /'
      '                      p.TECH_MEASURE_COEF'
      '                    ) *'
      
        '                    %PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[p.PRODU' +
        'CT_CODE ~ td.THE_FIRST_DATE]'
      '                  )'
      '                ),'
      '                0'
      '              )'
      '            from'
      '              SPEC_LINES sl,'
      '              PRODUCTS p'
      '            where'
      '              (sl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '              (sl.PRODUCT_CODE = p.PRODUCT_CODE)'
      '          ) +'
      '          ( select'
      '              Coalesce('
      '                Sum('
      
        '                  ( ( (:TECH_QUANTITY * sl.TOTAL_DETAIL_TECH_QUA' +
        'NTITY) / smvso.HOUR_TECH_QUANTITY ) *'
      '                    ( select'
      
        '                        (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PR' +
        'ICE) / dp.PARALLEL_PROCESS_COUNT'
      '                      from'
      '                        DEPT_PERIODS dp'
      '                      where'
      '                        (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      
        '                        (td.THE_FIRST_DATE between dp.BEGIN_DATE' +
        ' and dp.END_DATE)'
      '                    )'
      '                  )'
      '                ),'
      '                0'
      '              ) +'
      '              Coalesce('
      '                Sum('
      '                  Decode('
      '                    smvso.SETUP_PROFESSION_CODE,'
      '                    null,'
      '                    0,'
      
        '                    ( (smvso.SETUP_COUNT / smvso.SETUP_HOUR_TECH' +
        '_QUANTITY) *'
      '                      ( select'
      
        '                          (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_' +
        'PRICE) / dp.PARALLEL_PROCESS_COUNT'
      '                        from'
      '                          DEPT_PERIODS dp'
      '                        where'
      '                          (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      
        '                          (td.THE_FIRST_DATE between dp.BEGIN_DA' +
        'TE and dp.END_DATE)'
      '                      )'
      '                    )'
      '                  )'
      '                ),'
      '                0'
      '              )'
      '            from'
      '              PRODUCT_PERIODS pp,'
      '              PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '              SPEC_MODEL_VARIANTS smv,'
      '              SPEC_MODEL_VARIANT_LINES smvl,'
      '              SPEC_LINES sl,'
      '              SPEC_MODEL_VARIANT_STAGES smvs,'
      '              SMVS_OPERATIONS smvso'
      '            where'
      '              (pp.PRODUCT_CODE = ppsmv.PRODUCT_CODE) and'
      
        '              (pp.PRODUCT_PERIOD_CODE = ppsmv.PRODUCT_PERIOD_COD' +
        'E) and'
      '                  '
      '              (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      
        '              (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARI' +
        'ANT_NO) and'
      '                  '
      
        '              (smv.SPEC_PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) a' +
        'nd'
      
        '              (smv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VARIA' +
        'NT_NO) and'
      ''
      
        '              (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) an' +
        'd'
      '              (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      
        '              (smvl.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) ' +
        'and'
      
        '              (smvl.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARI' +
        'ANT_NO) and'
      '              (smvl.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      ''
      
        '              (smvs.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_CODE)' +
        ' and'
      
        '              (smvs.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL_VAR' +
        'IANT_NO) and'
      '              (smvs.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) and'
      
        '              (smvs.SPEC_LINE_STAGE_CODE = smvso.SPEC_LINE_STAGE' +
        '_CODE) and'
      ''
      '              ( (smvs.SMVS_TYPE_CODE = 1) or'
      '                ( (smvs.SMVS_TYPE_CODE = 2) and'
      '                  ( ( (sl.PARENT_SPEC_LINE_CODE is null) and'
      '                      (:ROOT_LINE_STAGE_INCLUDE_LEVEL in (1, 2))'
      '                    ) or'
      '                    ( (sl.PARENT_SPEC_LINE_CODE is not null) and'
      '                      (:NON_ROOT_LINE_STAGE_INCLUDE_LEVEL = 1)'
      '                    )'
      '                  )'
      '                ) or'
      '                ( (smvs.SMVS_TYPE_CODE = 3) and'
      '                  ( ( (sl.PARENT_SPEC_LINE_CODE is null) and'
      '                      (:ROOT_LINE_STAGE_INCLUDE_LEVEL = 2)'
      '                    ) or'
      '                    ( (sl.PARENT_SPEC_LINE_CODE is not null) and'
      '                      (:NON_ROOT_LINE_STAGE_INCLUDE_LEVEL = 1)'
      '                    )'
      '                  )'
      '                )'
      '              ) and'
      ''
      '              (smvs.SPEC_LINE_STAGE_NO > 0) and'
      '              (smvs.TREATMENT_WORKDAYS > 0) and'
      '              (smvs.OUTGOING_WORKDAYS > 0) and'
      '              (smvso.OPERATION_TYPE_CODE = 2) and'
      '              (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      '              (pp.PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      
        '              (td.THE_FIRST_DATE between pp.BEGIN_DATE and pp.EN' +
        'D_DATE) and'
      ''
      '              (smv.MAIN_DEPT_CODE = :MAIN_DEPT_CODE) and'
      '              (smv.MIN_TECH_QUANTITY < :TECH_QUANTITY) and'
      '              (smv.MAX_TECH_QUANTITY >= :TECH_QUANTITY)'
      '          )'
      '        ) /'
      '        ('
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '              (cr.RATE_DATE = Least(td.THE_FIRST_DATE, ContextDa' +
        'te))'
      '          )'
      '        ) /'
      '        Decode(:INVESTMENT_VALUE_SINGLE, 1, :TECH_QUANTITY, 1)'
      '      ) as INVESTMENT_LEVEL_3_VALUE,'
      ''
      '      Sign('
      '        ('
      '          ( select'
      '              Count('
      '                Nvl2('
      '                  ( ( :TECH_QUANTITY *'
      '                      sl.TOTAL_DETAIL_TECH_QUANTITY *'
      '                      sl.PRODUCT_TECH_QUANTITY /'
      '                      p.TECH_MEASURE_COEF'
      '                    ) *'
      
        '                    %PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[p.PRODU' +
        'CT_CODE ~ td.THE_FIRST_DATE]'
      '                  ),'
      '                  null,'
      '                  1'
      '                )'
      '              )'
      '            from'
      '              SPEC_LINES sl,'
      '              PRODUCTS p'
      '            where'
      '              (sl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '              (sl.PRODUCT_CODE = p.PRODUCT_CODE)'
      '          ) +'
      '          ( select'
      '              Count('
      '                Nvl2('
      
        '                  ( ( (:TECH_QUANTITY * sl.TOTAL_DETAIL_TECH_QUA' +
        'NTITY) / smvso.HOUR_TECH_QUANTITY ) *'
      '                    ( select'
      
        '                        (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PR' +
        'ICE) / dp.PARALLEL_PROCESS_COUNT'
      '                      from'
      '                        DEPT_PERIODS dp'
      '                      where'
      '                        (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      
        '                        (td.THE_FIRST_DATE between dp.BEGIN_DATE' +
        ' and dp.END_DATE)'
      '                    )'
      '                  ),'
      '                  null,'
      '                  1'
      '                )'
      '              ) +'
      '              Count('
      '                Nvl2('
      '                  Decode('
      '                    smvso.SETUP_PROFESSION_CODE,'
      '                    null,'
      '                    0,'
      
        '                    ( (smvso.SETUP_COUNT / smvso.SETUP_HOUR_TECH' +
        '_QUANTITY) *'
      '                      ( select'
      
        '                          (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_' +
        'PRICE) / dp.PARALLEL_PROCESS_COUNT'
      '                        from'
      '                          DEPT_PERIODS dp'
      '                        where'
      '                          (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      
        '                          (td.THE_FIRST_DATE between dp.BEGIN_DA' +
        'TE and dp.END_DATE)'
      '                      )'
      '                    )'
      '                  ),'
      '                  null,'
      '                  1'
      '                )'
      '              )'
      '            from'
      '              PRODUCT_PERIODS pp,'
      '              PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '              SPEC_MODEL_VARIANTS smv,'
      '              SPEC_MODEL_VARIANT_LINES smvl,'
      '              SPEC_LINES sl,'
      '              SPEC_MODEL_VARIANT_STAGES smvs,'
      '              SMVS_OPERATIONS smvso'
      '            where'
      '              (pp.PRODUCT_CODE = ppsmv.PRODUCT_CODE) and'
      
        '              (pp.PRODUCT_PERIOD_CODE = ppsmv.PRODUCT_PERIOD_COD' +
        'E) and'
      '                  '
      '              (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      
        '              (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARI' +
        'ANT_NO) and'
      '                  '
      
        '              (smv.SPEC_PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) a' +
        'nd'
      
        '              (smv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VARIA' +
        'NT_NO) and'
      ''
      
        '              (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) an' +
        'd'
      '              (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      
        '              (smvl.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) ' +
        'and'
      
        '              (smvl.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARI' +
        'ANT_NO) and'
      '              (smvl.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      ''
      
        '              (smvs.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_CODE)' +
        ' and'
      
        '              (smvs.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL_VAR' +
        'IANT_NO) and'
      '              (smvs.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) and'
      
        '              (smvs.SPEC_LINE_STAGE_CODE = smvso.SPEC_LINE_STAGE' +
        '_CODE) and'
      ''
      '              ( (smvs.SMVS_TYPE_CODE = 1) or'
      '                ( (smvs.SMVS_TYPE_CODE = 2) and'
      '                  ( ( (sl.PARENT_SPEC_LINE_CODE is null) and'
      '                      (:ROOT_LINE_STAGE_INCLUDE_LEVEL in (1, 2))'
      '                    ) or'
      '                    ( (sl.PARENT_SPEC_LINE_CODE is not null) and'
      '                      (:NON_ROOT_LINE_STAGE_INCLUDE_LEVEL = 1)'
      '                    )'
      '                  )'
      '                ) or'
      '                ( (smvs.SMVS_TYPE_CODE = 3) and'
      '                  ( ( (sl.PARENT_SPEC_LINE_CODE is null) and'
      '                      (:ROOT_LINE_STAGE_INCLUDE_LEVEL = 2)'
      '                    ) or'
      '                    ( (sl.PARENT_SPEC_LINE_CODE is not null) and'
      '                      (:NON_ROOT_LINE_STAGE_INCLUDE_LEVEL = 1)'
      '                    )'
      '                  )'
      '                )'
      '              ) and'
      ''
      '              (smvs.SPEC_LINE_STAGE_NO > 0) and'
      '              (smvs.TREATMENT_WORKDAYS > 0) and'
      '              (smvs.OUTGOING_WORKDAYS > 0) and'
      '              (smvso.OPERATION_TYPE_CODE = 2) and'
      '              (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      '              (pp.PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      
        '              (td.THE_FIRST_DATE between pp.BEGIN_DATE and pp.EN' +
        'D_DATE) and'
      ''
      '              (smv.MAIN_DEPT_CODE = :MAIN_DEPT_CODE) and'
      '              (smv.MIN_TECH_QUANTITY < :TECH_QUANTITY) and'
      '              (smv.MAX_TECH_QUANTITY >= :TECH_QUANTITY)'
      
        '          ) +  -- tuk dobaviame problem pri lipsa na aktiven var' +
        'iant na model za parametrite'
      '          ( select'
      '              1 - Sign(Count(*))'
      '            from'
      '              PRODUCT_PERIODS pp,'
      '              PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '              SPEC_MODEL_VARIANTS smv'
      '            where'
      '              (pp.PRODUCT_CODE = ppsmv.PRODUCT_CODE) and'
      
        '              (pp.PRODUCT_PERIOD_CODE = ppsmv.PRODUCT_PERIOD_COD' +
        'E) and'
      ''
      '              (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      
        '              (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARI' +
        'ANT_NO) and'
      ''
      '              (pp.PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      
        '              (td.THE_FIRST_DATE between pp.BEGIN_DATE and pp.EN' +
        'D_DATE) and'
      ''
      '              (smv.MAIN_DEPT_CODE = :MAIN_DEPT_CODE) and'
      '              (smv.MIN_TECH_QUANTITY < :TECH_QUANTITY) and'
      '              (smv.MAX_TECH_QUANTITY >= :TECH_QUANTITY)'
      '          )'
      '        ) +  -- tuk delenieto e smeneno sas sabirane'
      '        Nvl2('
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '              (cr.RATE_DATE = Least(td.THE_FIRST_DATE, ContextDa' +
        'te))'
      '          ),'
      '          0,'
      '          1'
      '        )'
      '      ) as INVESTMENT_LEVEL_3_INCOMPLETE,'
      ''
      '      ('
      '        ('
      '          ( select'
      '              Coalesce('
      '                Sum('
      '                  ( ( :TECH_QUANTITY *'
      '                      sl.TOTAL_DETAIL_TECH_QUANTITY *'
      '                      sl.PRODUCT_TECH_QUANTITY /'
      '                      p.TECH_MEASURE_COEF'
      '                    ) *'
      
        '                    %PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[p.PRODU' +
        'CT_CODE ~ td.THE_FIRST_DATE]'
      '                  )'
      '                ),'
      '                0'
      '              )'
      '            from'
      '              SPEC_LINES sl,'
      '              PRODUCTS p'
      '            where'
      '              (sl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '              (sl.PRODUCT_CODE = p.PRODUCT_CODE)'
      '          ) +'
      '          ( select'
      '              Coalesce('
      '                Sum('
      
        '                  (:TECH_QUANTITY * sl.TOTAL_DETAIL_TECH_QUANTIT' +
        'Y * Coalesce(smvs.EXTERNAL_WORK_PRICE, 0))'
      '                ),'
      '                0'
      '              )'
      '            from'
      '              PRODUCT_PERIODS pp,'
      '              PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '              SPEC_MODEL_VARIANTS smv,'
      '              SPEC_MODEL_VARIANT_LINES smvl,'
      '              SPEC_LINES sl,'
      '              SPEC_MODEL_VARIANT_STAGES smvs'
      '            where'
      '              (pp.PRODUCT_CODE = ppsmv.PRODUCT_CODE) and'
      
        '              (pp.PRODUCT_PERIOD_CODE = ppsmv.PRODUCT_PERIOD_COD' +
        'E) and'
      '                  '
      '              (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      
        '              (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARI' +
        'ANT_NO) and'
      '                  '
      
        '              (smv.SPEC_PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) a' +
        'nd'
      
        '              (smv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VARIA' +
        'NT_NO) and'
      ''
      
        '              (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) an' +
        'd'
      '              (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      
        '              (smvl.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) ' +
        'and'
      
        '              (smvl.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARI' +
        'ANT_NO) and'
      '              (smvl.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      ''
      '              ( (smvs.SMVS_TYPE_CODE = 1) or'
      '                ( (smvs.SMVS_TYPE_CODE = 2) and'
      '                  ( ( (sl.PARENT_SPEC_LINE_CODE is null) and'
      '                      (:ROOT_LINE_STAGE_INCLUDE_LEVEL in (1, 2))'
      '                    ) or'
      '                    ( (sl.PARENT_SPEC_LINE_CODE is not null) and'
      '                      (:NON_ROOT_LINE_STAGE_INCLUDE_LEVEL = 1)'
      '                    )'
      '                  )'
      '                ) or'
      '                ( (smvs.SMVS_TYPE_CODE = 3) and'
      '                  ( ( (sl.PARENT_SPEC_LINE_CODE is null) and'
      '                      (:ROOT_LINE_STAGE_INCLUDE_LEVEL = 2)'
      '                    ) or'
      '                    ( (sl.PARENT_SPEC_LINE_CODE is not null) and'
      '                      (:NON_ROOT_LINE_STAGE_INCLUDE_LEVEL = 1)'
      '                    )'
      '                  )'
      '                )'
      '              ) and'
      ''
      '              (smvs.SPEC_LINE_STAGE_NO > 0) and'
      '              (smvs.TREATMENT_WORKDAYS > 0) and'
      '              (smvs.OUTGOING_WORKDAYS > 0) and'
      ''
      '              (pp.PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      
        '              (td.THE_FIRST_DATE between pp.BEGIN_DATE and pp.EN' +
        'D_DATE) and'
      ''
      '              (smv.MAIN_DEPT_CODE = :MAIN_DEPT_CODE) and'
      '              (smv.MIN_TECH_QUANTITY < :TECH_QUANTITY) and'
      '              (smv.MAX_TECH_QUANTITY >= :TECH_QUANTITY)'
      '          )'
      '        ) /'
      '        ('
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '              (cr.RATE_DATE = Least(td.THE_FIRST_DATE, ContextDa' +
        'te))'
      '          )'
      '        ) /'
      '        Decode(:INVESTMENT_VALUE_SINGLE, 1, :TECH_QUANTITY, 1)'
      '      ) as INVESTMENT_LEVEL_4_VALUE,'
      ''
      '      Sign('
      '        ('
      '          ( select'
      '              Count('
      '                Nvl2('
      '                  ( ( :TECH_QUANTITY *'
      '                      sl.TOTAL_DETAIL_TECH_QUANTITY *'
      '                      sl.PRODUCT_TECH_QUANTITY /'
      '                      p.TECH_MEASURE_COEF'
      '                    ) *'
      
        '                    %PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[p.PRODU' +
        'CT_CODE ~ td.THE_FIRST_DATE]'
      '                  ),'
      '                  null,'
      '                  1'
      '                )'
      '              )'
      '            from'
      '              SPEC_LINES sl,'
      '              PRODUCTS p'
      '            where'
      '              (sl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '              (sl.PRODUCT_CODE = p.PRODUCT_CODE)'
      '          ) +'
      '          ( select'
      '              Count('
      '                Nvl2('
      
        '                  (:TECH_QUANTITY * sl.TOTAL_DETAIL_TECH_QUANTIT' +
        'Y * Coalesce(smvs.EXTERNAL_WORK_PRICE, 0)),'
      '                  null,'
      '                  1'
      '                )'
      '              )'
      '            from'
      '              PRODUCT_PERIODS pp,'
      '              PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '              SPEC_MODEL_VARIANTS smv,'
      '              SPEC_MODEL_VARIANT_LINES smvl,'
      '              SPEC_LINES sl,'
      '              SPEC_MODEL_VARIANT_STAGES smvs'
      '            where'
      '              (pp.PRODUCT_CODE = ppsmv.PRODUCT_CODE) and'
      
        '              (pp.PRODUCT_PERIOD_CODE = ppsmv.PRODUCT_PERIOD_COD' +
        'E) and'
      '                  '
      '              (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      
        '              (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARI' +
        'ANT_NO) and'
      '                  '
      
        '              (smv.SPEC_PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) a' +
        'nd'
      
        '              (smv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VARIA' +
        'NT_NO) and'
      ''
      
        '              (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) an' +
        'd'
      '              (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      
        '              (smvl.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) ' +
        'and'
      
        '              (smvl.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARI' +
        'ANT_NO) and'
      '              (smvl.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      ''
      '              ( (smvs.SMVS_TYPE_CODE = 1) or'
      '                ( (smvs.SMVS_TYPE_CODE = 2) and'
      '                  ( ( (sl.PARENT_SPEC_LINE_CODE is null) and'
      '                      (:ROOT_LINE_STAGE_INCLUDE_LEVEL in (1, 2))'
      '                    ) or'
      '                    ( (sl.PARENT_SPEC_LINE_CODE is not null) and'
      '                      (:NON_ROOT_LINE_STAGE_INCLUDE_LEVEL = 1)'
      '                    )'
      '                  )'
      '                ) or'
      '                ( (smvs.SMVS_TYPE_CODE = 3) and'
      '                  ( ( (sl.PARENT_SPEC_LINE_CODE is null) and'
      '                      (:ROOT_LINE_STAGE_INCLUDE_LEVEL = 2)'
      '                    ) or'
      '                    ( (sl.PARENT_SPEC_LINE_CODE is not null) and'
      '                      (:NON_ROOT_LINE_STAGE_INCLUDE_LEVEL = 1)'
      '                    )'
      '                  )'
      '                )'
      '              ) and'
      '      '
      '              (smvs.SPEC_LINE_STAGE_NO > 0) and'
      '              (smvs.TREATMENT_WORKDAYS > 0) and'
      '              (smvs.OUTGOING_WORKDAYS > 0) and'
      '      '
      '              (pp.PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      
        '              (td.THE_FIRST_DATE between pp.BEGIN_DATE and pp.EN' +
        'D_DATE) and'
      ''
      '              (smv.MAIN_DEPT_CODE = :MAIN_DEPT_CODE) and'
      '              (smv.MIN_TECH_QUANTITY < :TECH_QUANTITY) and'
      '              (smv.MAX_TECH_QUANTITY >= :TECH_QUANTITY)'
      
        '          ) +  -- tuk dobaviame problem pri lipsa na aktiven var' +
        'iant na model za parametrite'
      '          ( select'
      '              1 - Sign(Count(*))'
      '            from'
      '              PRODUCT_PERIODS pp,'
      '              PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '              SPEC_MODEL_VARIANTS smv'
      '            where'
      '              (pp.PRODUCT_CODE = ppsmv.PRODUCT_CODE) and'
      
        '              (pp.PRODUCT_PERIOD_CODE = ppsmv.PRODUCT_PERIOD_COD' +
        'E) and'
      ''
      '              (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      
        '              (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARI' +
        'ANT_NO) and'
      ''
      '              (pp.PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      
        '              (td.THE_FIRST_DATE between pp.BEGIN_DATE and pp.EN' +
        'D_DATE) and'
      ''
      '              (smv.MAIN_DEPT_CODE = :MAIN_DEPT_CODE) and'
      '              (smv.MIN_TECH_QUANTITY < :TECH_QUANTITY) and'
      '              (smv.MAX_TECH_QUANTITY >= :TECH_QUANTITY)'
      '          )'
      '        ) +  -- tuk delenieto e smeneno sas sabirane'
      '        Nvl2('
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '              (cr.RATE_DATE = Least(td.THE_FIRST_DATE, ContextDa' +
        'te))'
      '          ),'
      '          0,'
      '          1'
      '        )'
      '      ) as INVESTMENT_LEVEL_4_INCOMPLETE,'
      '    '
      '      ( '
      '        ('
      '          ( select'
      '              Coalesce('
      '                Sum('
      '                  ( ( :TECH_QUANTITY *'
      '                      sl.TOTAL_DETAIL_TECH_QUANTITY *'
      '                      sl.PRODUCT_TECH_QUANTITY /'
      '                      p.TECH_MEASURE_COEF'
      '                    ) *'
      
        '                    %PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[p.PRODU' +
        'CT_CODE ~ td.THE_FIRST_DATE]'
      '                  )'
      '                ),'
      '                0'
      '              )'
      '            from'
      '              SPEC_LINES sl,'
      '              PRODUCTS p'
      '            where'
      '              (sl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '              (sl.PRODUCT_CODE = p.PRODUCT_CODE)'
      '          ) +'
      '          ( ( ( select'
      '                  Coalesce('
      '                    Sum('
      
        '                      ( ( (:TECH_QUANTITY * sl.TOTAL_DETAIL_TECH' +
        '_QUANTITY) / smvso.HOUR_TECH_QUANTITY) *'
      '                        ( select'
      '                            prp.HOUR_PRICE'
      '                          from'
      '                            PROFESSION_PERIODS prp'
      '                          where'
      
        '                            (prp.PROFESSION_CODE = smvso.PROFESS' +
        'ION_CODE) and'
      
        '                            (td.THE_FIRST_DATE between prp.BEGIN' +
        '_DATE and prp.END_DATE)'
      '                        ) *'
      '                        smvso.EFFORT_COEF'
      '                      )'
      '                    ),'
      '                    0'
      '                  ) +'
      '                  Coalesce('
      '                    Sum('
      '                      Decode('
      '                        smvso.SETUP_PROFESSION_CODE,'
      '                        null,'
      '                        0,'
      
        '                        ( ( (smvso.SETUP_COUNT / smvso.SETUP_HOU' +
        'R_TECH_QUANTITY) *'
      '                            ( select'
      '                                prp.HOUR_PRICE'
      '                              from'
      '                                PROFESSION_PERIODS prp'
      '                              where'
      
        '                                (prp.PROFESSION_CODE = smvso.SET' +
        'UP_PROFESSION_CODE) and'
      
        '                                (td.THE_FIRST_DATE between prp.B' +
        'EGIN_DATE and prp.END_DATE)'
      '                            ) *'
      '                            smvso.SETUP_EFFORT_COEF '
      '                          )'
      '                        )'
      '                      )'
      '                    ),'
      '                    0'
      '                  )'
      '                from'
      '                  PRODUCT_PERIODS pp,'
      '                  PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '                  SPEC_MODEL_VARIANTS smv,'
      '                  SPEC_MODEL_VARIANT_LINES smvl,'
      '                  SPEC_LINES sl,'
      '                  SPEC_MODEL_VARIANT_STAGES smvs,'
      '                  SMVS_OPERATIONS smvso'
      '                where'
      '                  (pp.PRODUCT_CODE = ppsmv.PRODUCT_CODE) and'
      
        '                  (pp.PRODUCT_PERIOD_CODE = ppsmv.PRODUCT_PERIOD' +
        '_CODE) and'
      '                  '
      
        '                  (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) a' +
        'nd'
      
        '                  (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_' +
        'VARIANT_NO) and'
      '                  '
      
        '                  (smv.SPEC_PRODUCT_CODE = smvl.SPEC_PRODUCT_COD' +
        'E) and'
      
        '                  (smv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_V' +
        'ARIANT_NO) and'
      ''
      
        '                  (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE' +
        ') and'
      '                  (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      
        '                  (smvl.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CO' +
        'DE) and'
      
        '                  (smvl.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_' +
        'VARIANT_NO) and'
      
        '                  (smvl.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) an' +
        'd'
      ''
      
        '                  (smvs.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_C' +
        'ODE) and'
      
        '                  (smvs.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL' +
        '_VARIANT_NO) and'
      
        '                  (smvs.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) a' +
        'nd'
      
        '                  (smvs.SPEC_LINE_STAGE_CODE = smvso.SPEC_LINE_S' +
        'TAGE_CODE) and'
      ''
      '                  ( (smvs.SMVS_TYPE_CODE = 1) or'
      '                    ( (smvs.SMVS_TYPE_CODE = 2) and'
      '                      ( ( (sl.PARENT_SPEC_LINE_CODE is null) and'
      
        '                          (:ROOT_LINE_STAGE_INCLUDE_LEVEL in (1,' +
        ' 2))'
      '                        ) or'
      
        '                        ( (sl.PARENT_SPEC_LINE_CODE is not null)' +
        ' and'
      
        '                          (:NON_ROOT_LINE_STAGE_INCLUDE_LEVEL = ' +
        '1)'
      '                        )'
      '                      )'
      '                    ) or'
      '                    ( (smvs.SMVS_TYPE_CODE = 3) and'
      '                      ( ( (sl.PARENT_SPEC_LINE_CODE is null) and'
      '                          (:ROOT_LINE_STAGE_INCLUDE_LEVEL = 2)'
      '                        ) or'
      
        '                        ( (sl.PARENT_SPEC_LINE_CODE is not null)' +
        ' and'
      
        '                          (:NON_ROOT_LINE_STAGE_INCLUDE_LEVEL = ' +
        '1)'
      '                        )'
      '                      )'
      '                    )'
      '                  ) and'
      ''
      '                  (smvs.SPEC_LINE_STAGE_NO > 0) and'
      '                  (smvs.TREATMENT_WORKDAYS > 0) and'
      '                  (smvs.OUTGOING_WORKDAYS > 0) and'
      '                  (smvso.OPERATION_TYPE_CODE = 2) and'
      '                  (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      '                  (pp.PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      
        '                  (td.THE_FIRST_DATE between pp.BEGIN_DATE and p' +
        'p.END_DATE) and'
      ''
      '                  (smv.MAIN_DEPT_CODE = :MAIN_DEPT_CODE) and'
      '                  (smv.MIN_TECH_QUANTITY < :TECH_QUANTITY) and'
      '                  (smv.MAX_TECH_QUANTITY >= :TECH_QUANTITY)'
      '              )'
      '            ) *'
      '            Coalesce('
      '              ( select'
      
        '                  em.LABOUR_COST_COEF * em.ORGANIZATION_COST_COE' +
        'F  -- tuk se razlichavba ot is2'
      '                from'
      '                  EARNING_MODIFIERS em'
      '                where'
      
        '                  (td.THE_FIRST_DATE between em.BEGIN_DATE and e' +
        'm.END_DATE)'
      '              ),'
      '              0  -- tuk se razlichavba ot is2'
      '            )'
      '          )'
      '        ) /'
      '        ('
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '              (cr.RATE_DATE = Least(td.THE_FIRST_DATE, ContextDa' +
        'te))'
      '          )'
      '        ) /'
      '        Decode(:INVESTMENT_VALUE_SINGLE, 1, :TECH_QUANTITY, 1)'
      '      ) as INVESTMENT_LEVEL_5_VALUE,'
      ''
      '      Sign('
      '        ('
      '          ( select'
      '              Count('
      '                Nvl2('
      '                  ( ( :TECH_QUANTITY *'
      '                      sl.TOTAL_DETAIL_TECH_QUANTITY *'
      '                      sl.PRODUCT_TECH_QUANTITY /'
      '                      p.TECH_MEASURE_COEF'
      '                    ) *'
      
        '                    %PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[p.PRODU' +
        'CT_CODE ~ td.THE_FIRST_DATE]'
      '                  ),'
      '                  null,'
      '                  1'
      '                )'
      '              )'
      '            from'
      '              SPEC_LINES sl,'
      '              PRODUCTS p'
      '            where'
      '              (sl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '              (sl.PRODUCT_CODE = p.PRODUCT_CODE)'
      '          ) +'
      '          ( ( ( select'
      '                  Count('
      '                    Nvl2('
      
        '                      ( ( (:TECH_QUANTITY * sl.TOTAL_DETAIL_TECH' +
        '_QUANTITY) / smvso.HOUR_TECH_QUANTITY) *'
      '                        ( select'
      '                            prp.HOUR_PRICE'
      '                          from'
      '                            PROFESSION_PERIODS prp'
      '                          where'
      
        '                            (prp.PROFESSION_CODE = smvso.PROFESS' +
        'ION_CODE) and'
      
        '                            (td.THE_FIRST_DATE between prp.BEGIN' +
        '_DATE and prp.END_DATE)'
      '                        ) *'
      '                        smvso.EFFORT_COEF'
      '                      ),'
      '                      null,'
      '                      1'
      '                    )'
      '                  ) +'
      '                  Count('
      '                    Nvl2('
      '                      Decode('
      '                        smvso.SETUP_PROFESSION_CODE,'
      '                        null,'
      '                        0,'
      
        '                        ( ( (smvso.SETUP_COUNT / smvso.SETUP_HOU' +
        'R_TECH_QUANTITY) *'
      '                            ( select'
      '                                prp.HOUR_PRICE'
      '                              from'
      '                                PROFESSION_PERIODS prp'
      '                              where'
      
        '                                (prp.PROFESSION_CODE = smvso.SET' +
        'UP_PROFESSION_CODE) and'
      
        '                                (td.THE_FIRST_DATE between prp.B' +
        'EGIN_DATE and prp.END_DATE)'
      '                            ) *'
      '                            smvso.SETUP_EFFORT_COEF'
      '                          )'
      '                        )'
      '                      ),'
      '                      null,'
      '                      1'
      '                    )'
      '                  )'
      '                from'
      '                  PRODUCT_PERIODS pp,'
      '                  PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '                  SPEC_MODEL_VARIANTS smv,'
      '                  SPEC_MODEL_VARIANT_LINES smvl,'
      '                  SPEC_LINES sl,'
      '                  SPEC_MODEL_VARIANT_STAGES smvs,'
      '                  SMVS_OPERATIONS smvso'
      '                where'
      '                  (pp.PRODUCT_CODE = ppsmv.PRODUCT_CODE) and'
      
        '                  (pp.PRODUCT_PERIOD_CODE = ppsmv.PRODUCT_PERIOD' +
        '_CODE) and'
      '                  '
      
        '                  (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) a' +
        'nd'
      
        '                  (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_' +
        'VARIANT_NO) and'
      '                  '
      
        '                  (smv.SPEC_PRODUCT_CODE = smvl.SPEC_PRODUCT_COD' +
        'E) and'
      
        '                  (smv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_V' +
        'ARIANT_NO) and'
      ''
      
        '                  (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE' +
        ') and'
      '                  (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      
        '                  (smvl.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CO' +
        'DE) and'
      
        '                  (smvl.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_' +
        'VARIANT_NO) and'
      
        '                  (smvl.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) an' +
        'd'
      ''
      
        '                  (smvs.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_C' +
        'ODE) and'
      
        '                  (smvs.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL' +
        '_VARIANT_NO) and'
      
        '                  (smvs.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) a' +
        'nd'
      
        '                  (smvs.SPEC_LINE_STAGE_CODE = smvso.SPEC_LINE_S' +
        'TAGE_CODE) and'
      ''
      '                  ( (smvs.SMVS_TYPE_CODE = 1) or'
      '                    ( (smvs.SMVS_TYPE_CODE = 2) and'
      '                      ( ( (sl.PARENT_SPEC_LINE_CODE is null) and'
      
        '                          (:ROOT_LINE_STAGE_INCLUDE_LEVEL in (1,' +
        ' 2))'
      '                        ) or'
      
        '                        ( (sl.PARENT_SPEC_LINE_CODE is not null)' +
        ' and'
      
        '                          (:NON_ROOT_LINE_STAGE_INCLUDE_LEVEL = ' +
        '1)'
      '                        )'
      '                      )'
      '                    ) or'
      '                    ( (smvs.SMVS_TYPE_CODE = 3) and'
      '                      ( ( (sl.PARENT_SPEC_LINE_CODE is null) and'
      '                          (:ROOT_LINE_STAGE_INCLUDE_LEVEL = 2)'
      '                        ) or'
      
        '                        ( (sl.PARENT_SPEC_LINE_CODE is not null)' +
        ' and'
      
        '                          (:NON_ROOT_LINE_STAGE_INCLUDE_LEVEL = ' +
        '1)'
      '                        )'
      '                      )'
      '                    )'
      '                  ) and'
      ''
      '                  (smvs.SPEC_LINE_STAGE_NO > 0) and'
      '                  (smvs.TREATMENT_WORKDAYS > 0) and'
      '                  (smvs.OUTGOING_WORKDAYS > 0) and'
      '                  (smvso.OPERATION_TYPE_CODE = 2) and'
      '                  (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      '                  (pp.PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      
        '                  (td.THE_FIRST_DATE between pp.BEGIN_DATE and p' +
        'p.END_DATE) and'
      ''
      '                  (smv.MAIN_DEPT_CODE = :MAIN_DEPT_CODE) and'
      '                  (smv.MIN_TECH_QUANTITY < :TECH_QUANTITY) and'
      '                  (smv.MAX_TECH_QUANTITY >= :TECH_QUANTITY)'
      
        '              ) +  -- tuk dobaviame problem pri lipsa na aktiven' +
        ' variant na model za parametrite'
      '              ( select'
      '                  1 - Sign(Count(*))'
      '                from'
      '                  PRODUCT_PERIODS pp,'
      '                  PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '                  SPEC_MODEL_VARIANTS smv'
      '                where'
      '                  (pp.PRODUCT_CODE = ppsmv.PRODUCT_CODE) and'
      
        '                  (pp.PRODUCT_PERIOD_CODE = ppsmv.PRODUCT_PERIOD' +
        '_CODE) and'
      ''
      
        '                  (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) a' +
        'nd'
      
        '                  (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_' +
        'VARIANT_NO) and'
      ''
      '                  (pp.PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      
        '                  (td.THE_FIRST_DATE between pp.BEGIN_DATE and p' +
        'p.END_DATE) and'
      ''
      '                  (smv.MAIN_DEPT_CODE = :MAIN_DEPT_CODE) and'
      '                  (smv.MIN_TECH_QUANTITY < :TECH_QUANTITY) and'
      '                  (smv.MAX_TECH_QUANTITY >= :TECH_QUANTITY)'
      '              )'
      '            ) +  -- tuk umnojenieto e smeneno sas sabirane'
      '            Nvl2('
      '              ( select'
      
        '                  em.LABOUR_COST_COEF * em.ORGANIZATION_COST_COE' +
        'F  -- tuk se razlichavba ot is2'
      '                from'
      '                  EARNING_MODIFIERS em'
      '                where'
      
        '                  (td.THE_FIRST_DATE between em.BEGIN_DATE and e' +
        'm.END_DATE)'
      '              ),'
      '              0,'
      '              1'
      '            )'
      '          )'
      '        ) +  -- tuk delenieto e smeneno sas sabirane'
      '        Nvl2('
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '              (cr.RATE_DATE = Least(td.THE_FIRST_DATE, ContextDa' +
        'te))'
      '          ),'
      '          0,'
      '          1'
      '        )'
      '      ) as INVESTMENT_LEVEL_5_INCOMPLETE'
      ''
      '    from'
      '      %THE_X_DATES td'
      ''
      '    where'
      '      (td.THE_FIRST_DATE between :BEGIN_DATE and :END_DATE)'
      ''
      '    order by'
      '      DATE_UNIT_NO'
      '  ) x')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[p.PRODUCT_CODE ~ td.THE_FIRST_' +
          'DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[p.PRODUCT_CODE ~ td.THE_FIRS' +
          'T_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[p.PRODUCT_CODE ~ td.THE_FIRS' +
          'T_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[p.PRODUCT_CODE ~ td.THE_FIRS' +
          'T_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[p.PRODUCT_CODE ~ td.THE_FIRS' +
          'T_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'THE_X_DATES'
        ParamType = ptInput
        Value = 'THE_MONTH_DATES'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 944
    Top = 728
    object qrySpecInvestedValueLevelsGraphDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField
      FieldName = 'DATE_UNIT_FIRST_DATE'
    end
    object qrySpecInvestedValueLevelsGraphDATE_UNIT_LAST_DATE: TAbmesSQLTimeStampField
      FieldName = 'DATE_UNIT_LAST_DATE'
    end
    object qrySpecInvestedValueLevelsGraphDATE_UNIT_NO: TAbmesFloatField
      FieldName = 'DATE_UNIT_NO'
    end
    object qrySpecInvestedValueLevelsGraphDATE_UNIT_WORKDAYS: TAbmesFloatField
      FieldName = 'DATE_UNIT_WORKDAYS'
    end
    object qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_1_VALUE'
    end
    object qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_1_INCOMPLETE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_1_INCOMPLETE'
    end
    object qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_2_VALUE'
    end
    object qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_2_INCOMPLETE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_2_INCOMPLETE'
    end
    object qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_3_VALUE'
    end
    object qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_3_INCOMPLETE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_3_INCOMPLETE'
    end
    object qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_4_VALUE'
    end
    object qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_4_INCOMPLETE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_4_INCOMPLETE'
    end
    object qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_5_VALUE'
    end
    object qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_5_INCOMPLETE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_5_INCOMPLETE'
    end
    object qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'FULL_INV_LEVEL_1_VALUE'
    end
    object qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_1_INCOMPLETE: TAbmesFloatField
      FieldName = 'FULL_INV_LEVEL_1_INCOMPLETE'
    end
    object qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'FULL_INV_LEVEL_2_VALUE'
    end
    object qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_2_INCOMPLETE: TAbmesFloatField
      FieldName = 'FULL_INV_LEVEL_2_INCOMPLETE'
    end
    object qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'FULL_INV_LEVEL_3_VALUE'
    end
    object qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_3_INCOMPLETE: TAbmesFloatField
      FieldName = 'FULL_INV_LEVEL_3_INCOMPLETE'
    end
    object qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'FULL_INV_LEVEL_4_VALUE'
    end
    object qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_4_INCOMPLETE: TAbmesFloatField
      FieldName = 'FULL_INV_LEVEL_4_INCOMPLETE'
    end
    object qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'FULL_INV_LEVEL_5_VALUE'
    end
    object qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_5_INCOMPLETE: TAbmesFloatField
      FieldName = 'FULL_INV_LEVEL_5_INCOMPLETE'
    end
    object qrySpecInvestedValueLevelsGraphAGGR_INV_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'AGGR_INV_LEVEL_5_VALUE'
    end
    object qrySpecInvestedValueLevelsGraphAGGR_INV_LEVEL_5_INCOMPLETE: TAbmesFloatField
      FieldName = 'AGGR_INV_LEVEL_5_INCOMPLETE'
    end
  end
  object prvSpecInvestedValueLevelsGraph: TDataSetProvider
    DataSet = qrySpecInvestedValueLevelsGraph
    Options = [poReadOnly, poUseQuoteChar]
    Left = 944
    Top = 680
  end
  object qryGetPeriodFieldNames: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'THE_DATE_UNIT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  TABLE_NAME,'
      '  YEAR_UNIT_NO_NAME'
      'from'
      '  THE_DATE_UNITS'
      'where'
      '  THE_DATE_UNIT_CODE = :THE_DATE_UNIT_CODE'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 776
    Top = 736
    object qryGetPeriodFieldNamesTABLE_NAME: TAbmesWideStringField
      FieldName = 'TABLE_NAME'
      Size = 50
    end
    object qryGetPeriodFieldNamesYEAR_UNIT_NO_NAME: TAbmesWideStringField
      FieldName = 'YEAR_UNIT_NO_NAME'
      Size = 50
    end
  end
  object prvSpecModelMainDepts: TDataSetProvider
    DataSet = qrySpecModelMainDepts
    Options = [poReadOnly, poUseQuoteChar]
    Left = 448
    Top = 120
  end
  object qrySpecModelMainDepts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  d.DEPT_CODE as MAIN_DEPT_CODE,'
      
        '  (d.NAME || '#39' - '#39' || dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.' +
        'SUFFIX_LETTER) as MAIN_DEPT_IDENTIFIER'
      'from'
      '  SPEC_MODEL_VARIANTS smv,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      'where'
      '  (smv.MAIN_DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (smv.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)'
      ''
      'group by'
      '  d.DEPT_CODE,'
      '  d.NAME,'
      '  dt.DEPT_TYPE_ABBREV,'
      '  d.CUSTOM_CODE,'
      '  d.SUFFIX_LETTER')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 448
    Top = 168
    object qrySpecModelMainDeptsMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object qrySpecModelMainDeptsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      Size = 149
    end
  end
  object qrySMVProductPeriods: TAbmesSQLQuery
    DataSource = dsSpecModelVariants
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pper.PRODUCT_CODE,'
      '  pper.PRODUCT_PERIOD_CODE,'
      '  pper.BEGIN_DATE,'
      '  pper.END_DATE'
      'from'
      '  PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '  PRODUCT_PERIODS pper'
      'where'
      '  (ppsmv.PRODUCT_CODE = pper.PRODUCT_CODE) and'
      '  (ppsmv.PRODUCT_PERIOD_CODE = pper.PRODUCT_PERIOD_CODE) and'
      ''
      '  (ppsmv.PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (ppsmv.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 480
    object qrySMVProductPeriodsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qrySMVProductPeriodsPRODUCT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_CODE'
    end
    object qrySMVProductPeriodsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qrySMVProductPeriodsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
  end
  object qrySpecInvestedValuesLevel1: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'RESULT_PRODUCT_TECH_QUANTITY'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'RESULT_PRODUCT_TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RESULT_PRODUCT_TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.PRODUCT_CODE,'
      '  x.PRODUCT_NAME,'
      '  x.LINE_COUNT,'
      '  x.PRECISION_LEVEL_NO,'
      '  x.TOTAL_PRODUCT_TECH_QUANTITY,'
      '  x.TECH_MEASURE_ABBREV,'
      '  x.TOTAL_PRODUCT_ACCOUNT_QUANTITY,'
      '  x.ACCOUNT_MEASURE_ABBREV,'
      '  x.PRODUCT_SINGLE_PRICE,'
      '  x.PRODUCT_TOTAL_PRICE,'
      '  ( x.PRODUCT_TOTAL_PRICE /'
      '    Sum(x.PRODUCT_TOTAL_PRICE) over ()'
      '  ) as PRODUCT_TOTAL_PRICE_PCT'
      'from'
      '  ( select'
      '      p.PRODUCT_CODE,'
      '      p.NAME as PRODUCT_NAME,'
      ''
      '      Count(*) as LINE_COUNT,'
      '      Min(sl.NO_AS_FORMATED_TEXT) as MIN_NO_AS_FORMATED_TEXT,'
      ''
      '      ( select'
      '          pl.PRECISION_LEVEL_NO'
      '        from'
      '          PRECISION_LEVELS pl'
      '        where'
      
        '          (pl.PRECISION_LEVEL_CODE = %PRODUCT_PRECISION_LEVEL_CO' +
        'DE[p.PRODUCT_CODE ~ :THE_DATE])'
      '      ) as PRECISION_LEVEL_NO,'
      ''
      '      Sum('
      '        sl.TOTAL_DETAIL_TECH_QUANTITY *'
      '        sl.PRODUCT_TECH_QUANTITY *'
      '        To_Number(:RESULT_PRODUCT_TECH_QUANTITY)'
      '       ) as TOTAL_PRODUCT_TECH_QUANTITY,'
      ''
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.TECH_MEASURE_CODE)'
      '      ) as TECH_MEASURE_ABBREV,'
      ''
      '      Sum('
      '        sl.TOTAL_DETAIL_TECH_QUANTITY *'
      '        sl.PRODUCT_TECH_QUANTITY /'
      '        p.TECH_MEASURE_COEF *'
      '        p.ACCOUNT_MEASURE_COEF *'
      '        To_Number(:RESULT_PRODUCT_TECH_QUANTITY)'
      '       ) as TOTAL_PRODUCT_ACCOUNT_QUANTITY,'
      ''
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '      ) as ACCOUNT_MEASURE_ABBREV,'
      ''
      
        '      (%PSD_SINGLE_PRICE_IN_BASE_CURRENCY[p.PRODUCT_CODE ~ :THE_' +
        'DATE] / p.ACCOUNT_MEASURE_COEF) as PRODUCT_SINGLE_PRICE,'
      ''
      '      Sum('
      '        sl.TOTAL_DETAIL_TECH_QUANTITY *'
      '        sl.PRODUCT_TECH_QUANTITY *'
      
        '        %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[p.PRODUCT_CODE ~ :THE' +
        '_DATE] /'
      '        p.TECH_MEASURE_COEF *'
      '        To_Number(:RESULT_PRODUCT_TECH_QUANTITY)'
      '      ) as PRODUCT_TOTAL_PRICE,'
      ''
      '      :THE_DATE as THE_DATE'
      ''
      '    from'
      '      SPEC_LINES sl,'
      '      PRODUCTS p'
      ''
      '    where'
      '      (sl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '      (sl.PRODUCT_CODE = p.PRODUCT_CODE)'
      ''
      '    group by'
      '      p.PRODUCT_CODE,'
      '      p.NAME,'
      '      p.TECH_MEASURE_CODE,'
      '      p.ACCOUNT_MEASURE_CODE,'
      '      p.ACCOUNT_MEASURE_COEF'
      ''
      '    order by'
      '      MIN_NO_AS_FORMATED_TEXT'
      '  ) x')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRODUCT_PRECISION_LEVEL_CODE[p.PRODUCT_CODE ~ :THE_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[p.PRODUCT_CODE ~ :THE_DATE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 1096
    Top = 56
    object qrySpecInvestedValuesLevel1PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      Required = True
    end
    object qrySpecInvestedValuesLevel1PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Required = True
      Size = 100
    end
    object qrySpecInvestedValuesLevel1LINE_COUNT: TAbmesFloatField
      FieldName = 'LINE_COUNT'
    end
    object qrySpecInvestedValuesLevel1PRECISION_LEVEL_NO: TAbmesFloatField
      FieldName = 'PRECISION_LEVEL_NO'
    end
    object qrySpecInvestedValuesLevel1TOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
    end
    object qrySpecInvestedValuesLevel1TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qrySpecInvestedValuesLevel1TOTAL_PRODUCT_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_ACCOUNT_QUANTITY'
    end
    object qrySpecInvestedValuesLevel1ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qrySpecInvestedValuesLevel1PRODUCT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SINGLE_PRICE'
    end
    object qrySpecInvestedValuesLevel1PRODUCT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_TOTAL_PRICE'
    end
    object qrySpecInvestedValuesLevel1PRODUCT_TOTAL_PRICE_PCT: TAbmesFloatField
      FieldName = 'PRODUCT_TOTAL_PRICE_PCT'
    end
  end
  object prvSpecInvestedValuesLevel1: TDataSetProvider
    DataSet = qrySpecInvestedValuesLevel1
    Options = [poReadOnly, poUseQuoteChar]
    Left = 1096
    Top = 8
  end
  object qrySpecDepth: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Coalesce('
      '    Max('
      '      Decode(spl.NO_1, 0, 0, 1) +'
      '      Decode(spl.NO_2, 0, 0, 1) +'
      '      Decode(spl.NO_3, 0, 0, 1) +'
      '      Decode(spl.NO_4, 0, 0, 1) +'
      '      Decode(spl.NO_5, 0, 0, 1) +'
      '      Decode(spl.NO_6, 0, 0, 1) +'
      '      Decode(spl.NO_7, 0, 0, 1) +'
      '      Decode(spl.NO_8, 0, 0, 1) +'
      '      Decode(spl.NO_9, 0, 0, 1) +'
      '      Decode(spl.NO_10, 0, 0, 1) +'
      '      Decode(spl.NO_11, 0, 0, 1) +'
      '      Decode(spl.NO_12, 0, 0, 1) +'
      '      Decode(spl.NO_13, 0, 0, 1) +'
      '      Decode(spl.NO_14, 0, 0, 1) +'
      '      Decode(spl.NO_15, 0, 0, 1) +'
      '      Decode(spl.NO_16, 0, 0, 1) +'
      '      Decode(spl.NO_17, 0, 0, 1) +'
      '      Decode(spl.NO_18, 0, 0, 1) +'
      '      Decode(spl.NO_19, 0, 0, 1) +'
      '      Decode(spl.NO_20, 0, 0, 1) +'
      '      Decode(spl.NO_21, 0, 0, 1) +'
      '      Decode(spl.NO_22, 0, 0, 1) +'
      '      Decode(spl.NO_23, 0, 0, 1) +'
      '      Decode(spl.NO_24, 0, 0, 1) +'
      '      Decode(spl.NO_25, 0, 0, 1)'
      '    ),'
      '    0'
      '  ) as SPEC_DEPTH'
      ''
      'from'
      '  SPEC_LINES spl'
      ''
      'where'
      '  (spl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 544
    Top = 32
    object qrySpecDepthSPEC_DEPTH: TAbmesFloatField
      FieldName = 'SPEC_DEPTH'
    end
  end
  object qryGetInlineModelCount: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Count(*) as INLINE_MODEL_COUNT'
      'from'
      '  SPEC_LINES sl'
      'where'
      '  (sl.DETAIL_CODE = :PRODUCT_CODE) and'
      '  (sl.DETAIL_CODE <> Coalesce(sl.PRODUCT_CODE, 0)) and'
      '  (sl.IS_IMPORTED = 0) and'
      '  (sl.NO_1 > 0)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 1128
    Top = 160
    object qryGetInlineModelCountINLINE_MODEL_COUNT: TAbmesFloatField
      FieldName = 'INLINE_MODEL_COUNT'
    end
  end
end
