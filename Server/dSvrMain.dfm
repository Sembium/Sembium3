object dmSvrMain: TdmSvrMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 537
  Width = 914
  object mshMainMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'HAS_DOC_ITEMS'
        Strings.Strings = (
          'Decode(%1.DOC_CODE,'
          '  null, 0,'
          '  ( select'
          '      Sign(Count(*)) '
          '    from '
          '      DOC_ITEMS library_di'
          '    where '
          '      (library_di.DOC_BRANCH_CODE = %1.DOC_BRANCH_CODE) and'
          '      (library_di.DOC_CODE = %1.DOC_CODE)'
          '  )'
          ')')
      end
      item
        Name = 'PRODUCT_COMPANY_PRODUCT_NAMES'
        Strings.Strings = (
          'Decode(Coalesce(To_Number(%2), 0), 0,'
          '  ( select'
          '      library_p.PARTNER_PRODUCT_NAMES'
          '    from'
          '      PRODUCTS library_p'
          '    where'
          '      (library_p.PRODUCT_CODE = %1)'
          '  ),'
          '  ( select'
          '      library_cp.NAME'
          '    from'
          '      COMPANY_PRODUCTS library_cp'
          '    where'
          '      (library_cp.COMPANY_CODE = %2) and'
          '      (library_cp.PRODUCT_CODE = %1)'
          '  )'
          ')')
      end
      item
        Name = 'PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS'
        Strings.Strings = (
          'Decode(Coalesce(To_Number(%2), 0), 0,'
          '  %3.PARTNER_PRODUCT_NAMES,'
          '  ( select'
          '      library_cp.NAME'
          '    from'
          '      COMPANY_PRODUCTS library_cp'
          '    where'
          '      (library_cp.COMPANY_CODE = %2) and'
          '      (library_cp.PRODUCT_CODE = %1)'
          '  )'
          ')')
      end
      item
        Name = 'SPEC_STATE'
        Strings.Strings = (
          'case'
          '  when'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          PRODUCTS library_p'
          '        where'
          '          (library_p.PRODUCT_CODE = %1) and'
          '          (library_p.PRODUCT_SPEC_REQUIREMENT_CODE = 1)'
          '      )'
          '    ) then'
          '    0'
          '  when'
          '    (not exists'
          '      ( select'
          '          1'
          '        from'
          '          SPECS library_sp'
          '        where'
          '          (library_sp.SPEC_PRODUCT_CODE = %1)'
          '      )'
          '    ) then'
          '    1'
          '  when'
          '    (not exists'
          '      ( select'
          '          1'
          '        from'
          '          SPECS library_sp'
          '        where'
          '          (library_sp.SPEC_PRODUCT_CODE = %1) and'
          '          (library_sp.AUTHORIZATION_EMPLOYEE_CODE is not null)'
          '      )'
          '    ) then'
          '    2'
          '  when'
          '    (not exists'
          '      ( select'
          '          1'
          '        from'
          '          SPEC_MODEL_VARIANTS library_smv'
          '        where'
          '          (library_smv.SPEC_PRODUCT_CODE = %1) and'
          '          (library_smv.IS_INACTIVE = 0) and'
          ''
          '          ( (%3 is null) or'
          '            ( (library_smv.MAIN_DEPT_CODE = %3) and'
          '              ( (%2 is null) or'
          '                ( (%2 > library_smv.MIN_TECH_QUANTITY) and'
          '                  (%2 <= library_smv.MAX_TECH_QUANTITY)'
          '                )'
          '              )'
          '            )'
          '          ) and'
          ''
          '          ( (%4 is null) or'
          '            exists('
          '              select'
          '                1'
          '              from'
          '                PROD_PER_SPEC_MODEL_VARIANTS library_ppsmv,'
          '                PRODUCT_PERIODS library_pper'
          '              where'
          
            '                (library_ppsmv.PRODUCT_CODE = library_smv.SPEC_P' +
            'RODUCT_CODE) and'
          
            '                (library_ppsmv.SPEC_MODEL_VARIANT_NO = library_s' +
            'mv.SPEC_MODEL_VARIANT_NO) and'
          ''
          
            '                (library_ppsmv.PRODUCT_CODE = library_pper.PRODU' +
            'CT_CODE) and'
          
            '                (library_ppsmv.PRODUCT_PERIOD_CODE = library_ppe' +
            'r.PRODUCT_PERIOD_CODE) and'
          
            '                (%4 between library_pper.BEGIN_DATE and library_' +
            'pper.END_DATE)'
          '            )'
          '          ) and'
          '          '
          '          ( (%5 is null) or'
          '            ( (exists'
          '                ( select'
          '                    1'
          '                  from'
          '                    SPEC_MODEL_VARIANT_STAGES library_smvs'
          '                  where'
          
            '                    (library_smvs.SPEC_PRODUCT_CODE = library_sm' +
            'v.SPEC_PRODUCT_CODE) and'
          
            '                    (library_smvs.SPEC_MODEL_VARIANT_NO = librar' +
            'y_smv.SPEC_MODEL_VARIANT_NO) and'
          '                    (exists'
          '                      ( select'
          '                          1'
          '                        from'
          '                          DEPT_RELATIONS library_dr'
          '                        where'
          
            '                          (library_dr.DESCENDANT_DEPT_CODE = lib' +
            'rary_smvs.DEPT_CODE) and'
          '                          (library_dr.ANCESTOR_DEPT_CODE = %5)'
          '                      )'
          '                    )'
          '                )'
          '              ) or'
          '              (exists'
          '                ( select'
          '                    1'
          '                  from'
          '                    SMVS_OPERATIONS library_smvso'
          '                  where'
          
            '                    (library_smvso.SPEC_PRODUCT_CODE = library_s' +
            'mv.SPEC_PRODUCT_CODE) and'
          
            '                    (library_smvso.SPEC_MODEL_VARIANT_NO = libra' +
            'ry_smv.SPEC_MODEL_VARIANT_NO) and'
          
            '                    (library_smvso.SMVS_OPERATION_VARIANT_NO >= ' +
            '0) and'
          '                    (exists'
          '                      ( select'
          '                          1'
          '                        from'
          '                          DEPT_RELATIONS library_dr'
          '                        where'
          
            '                          (library_dr.DESCENDANT_DEPT_CODE = lib' +
            'rary_smvso.DEPT_CODE) and'
          '                          (library_dr.ANCESTOR_DEPT_CODE = %5)'
          '                      )'
          '                    )'
          '                )'
          '              )'
          '            )'
          '          )'
          '      )'
          '    ) then'
          '    3'
          '  when'
          '    (not exists'
          '      ( select'
          '          1'
          '        from'
          '          SPEC_MODEL_VARIANTS library_smv'
          '        where'
          '          (library_smv.SPEC_PRODUCT_CODE = %1) and'
          '          (library_smv.IS_INACTIVE = 0) and'
          ''
          '          ( (%3 is null) or'
          '            ( (library_smv.MAIN_DEPT_CODE = %3) and'
          '              ( (%2 is null) or'
          '                ( (%2 > library_smv.MIN_TECH_QUANTITY) and'
          '                  (%2 <= library_smv.MAX_TECH_QUANTITY)'
          '                )'
          '              )'
          '            )'
          '          ) and'
          ''
          '          ('
          
            '            ( ( (select library_co.PRODUCTION_LEVEL_CODE from CO' +
            'MMON_OPTIONS library_co where (library_co.CODE = 1)) < 3 ) and'
          
            '              (library_smv.AUTHORIZATION_EMPLOYEE_CODE is not nu' +
            'll)'
          '            ) or'
          
            '            ( ( (select library_co.PRODUCTION_LEVEL_CODE from CO' +
            'MMON_OPTIONS library_co where (library_co.CODE = 1)) = 3 ) and'
          
            '              (library_smv.AUTHORIZATION_EMPLOYEE_CODE is not nu' +
            'll) and'
          '              (library_smv.AUTHORIZATION_OF_OPERATIONS = 1)'
          '            )'
          '          ) and'
          ''
          '          ( (%4 is null) or'
          '            exists('
          '              select'
          '                1'
          '              from'
          '                PROD_PER_SPEC_MODEL_VARIANTS library_ppsmv,'
          '                PRODUCT_PERIODS library_pper'
          '              where'
          
            '                (library_ppsmv.PRODUCT_CODE = library_smv.SPEC_P' +
            'RODUCT_CODE) and'
          
            '                (library_ppsmv.SPEC_MODEL_VARIANT_NO = library_s' +
            'mv.SPEC_MODEL_VARIANT_NO) and'
          ''
          
            '                (library_ppsmv.PRODUCT_CODE = library_pper.PRODU' +
            'CT_CODE) and'
          
            '                (library_ppsmv.PRODUCT_PERIOD_CODE = library_ppe' +
            'r.PRODUCT_PERIOD_CODE) and'
          
            '                (%4 between library_pper.BEGIN_DATE and library_' +
            'pper.END_DATE)'
          '            )'
          '          ) and'
          '          '
          '          ( (%5 is null) or'
          '            ( (exists'
          '                ( select'
          '                    1'
          '                  from'
          '                    SPEC_MODEL_VARIANT_STAGES library_smvs'
          '                  where'
          
            '                    (library_smvs.SPEC_PRODUCT_CODE = library_sm' +
            'v.SPEC_PRODUCT_CODE) and'
          
            '                    (library_smvs.SPEC_MODEL_VARIANT_NO = librar' +
            'y_smv.SPEC_MODEL_VARIANT_NO) and'
          '                    (exists'
          '                      ( select'
          '                          1'
          '                        from'
          '                          DEPT_RELATIONS library_dr'
          '                        where'
          
            '                          (library_dr.DESCENDANT_DEPT_CODE = lib' +
            'rary_smvs.DEPT_CODE) and'
          '                          (library_dr.ANCESTOR_DEPT_CODE = %5)'
          '                      )'
          '                    )'
          '                )'
          '              ) or'
          '              (exists'
          '                ( select'
          '                    1'
          '                  from'
          '                    SMVS_OPERATIONS library_smvso'
          '                  where'
          
            '                    (library_smvso.SPEC_PRODUCT_CODE = library_s' +
            'mv.SPEC_PRODUCT_CODE) and'
          
            '                    (library_smvso.SPEC_MODEL_VARIANT_NO = libra' +
            'ry_smv.SPEC_MODEL_VARIANT_NO) and'
          
            '                    (library_smvso.SMVS_OPERATION_VARIANT_NO >= ' +
            '0) and'
          '                    (exists'
          '                      ( select'
          '                          1'
          '                        from'
          '                          DEPT_RELATIONS library_dr'
          '                        where'
          
            '                          (library_dr.DESCENDANT_DEPT_CODE = lib' +
            'rary_smvso.DEPT_CODE) and'
          '                          (library_dr.ANCESTOR_DEPT_CODE = %5)'
          '                      )'
          '                    )'
          '                )'
          '              )'
          '            )'
          '          )'
          '      )'
          '    ) then'
          '    4'
          '  when'
          '    (not exists'
          '      ( select'
          '          1'
          '        from'
          '          SPEC_MODEL_VARIANTS library_smv'
          '        where'
          '          (library_smv.SPEC_PRODUCT_CODE = %1) and'
          '          (library_smv.IS_INACTIVE = 0) and'
          ''
          '          ( (%3 is null) or'
          '            ( (library_smv.MAIN_DEPT_CODE = %3) and'
          '              ( (%2 is null) or'
          '                ( (%2 > library_smv.MIN_TECH_QUANTITY) and'
          '                  (%2 <= library_smv.MAX_TECH_QUANTITY)'
          '                )'
          '              )'
          '            )'
          '          ) and'
          ''
          '          ('
          
            '            ( ( (select library_co.PRODUCTION_LEVEL_CODE from CO' +
            'MMON_OPTIONS library_co where (library_co.CODE = 1)) < 3 ) and'
          '              (library_smv.AUTHORIZATION_EMPLOYEE_CODE is null)'
          '            ) or'
          
            '            ( ( (select library_co.PRODUCTION_LEVEL_CODE from CO' +
            'MMON_OPTIONS library_co where (library_co.CODE = 1)) = 3 ) and'
          
            '              (library_smv.AUTHORIZATION_EMPLOYEE_CODE is null) ' +
            'and'
          '              (library_smv.AUTHORIZATION_OF_OPERATIONS = 1)'
          '            )'
          '          ) and'
          ''
          '          ( (%4 is null) or'
          '            exists('
          '              select'
          '                1'
          '              from'
          '                PROD_PER_SPEC_MODEL_VARIANTS library_ppsmv,'
          '                PRODUCT_PERIODS library_pper'
          '              where'
          
            '                (library_ppsmv.PRODUCT_CODE = library_smv.SPEC_P' +
            'RODUCT_CODE) and'
          
            '                (library_ppsmv.SPEC_MODEL_VARIANT_NO = library_s' +
            'mv.SPEC_MODEL_VARIANT_NO) and'
          ''
          
            '                (library_ppsmv.PRODUCT_CODE = library_pper.PRODU' +
            'CT_CODE) and'
          
            '                (library_ppsmv.PRODUCT_PERIOD_CODE = library_ppe' +
            'r.PRODUCT_PERIOD_CODE) and'
          
            '                (%4 between library_pper.BEGIN_DATE and library_' +
            'pper.END_DATE)'
          '            )'
          '          ) and'
          '          '
          '          ( (%5 is null) or'
          '            ( (exists'
          '                ( select'
          '                    1'
          '                  from'
          '                    SPEC_MODEL_VARIANT_STAGES library_smvs'
          '                  where'
          
            '                    (library_smvs.SPEC_PRODUCT_CODE = library_sm' +
            'v.SPEC_PRODUCT_CODE) and'
          
            '                    (library_smvs.SPEC_MODEL_VARIANT_NO = librar' +
            'y_smv.SPEC_MODEL_VARIANT_NO) and'
          '                    (exists'
          '                      ( select'
          '                          1'
          '                        from'
          '                          DEPT_RELATIONS library_dr'
          '                        where'
          
            '                          (library_dr.DESCENDANT_DEPT_CODE = lib' +
            'rary_smvs.DEPT_CODE) and'
          '                          (library_dr.ANCESTOR_DEPT_CODE = %5)'
          '                      )'
          '                    )'
          '                )'
          '              ) or'
          '              (exists'
          '                ( select'
          '                    1'
          '                  from'
          '                    SMVS_OPERATIONS library_smvso'
          '                  where'
          
            '                    (library_smvso.SPEC_PRODUCT_CODE = library_s' +
            'mv.SPEC_PRODUCT_CODE) and'
          
            '                    (library_smvso.SPEC_MODEL_VARIANT_NO = libra' +
            'ry_smv.SPEC_MODEL_VARIANT_NO) and'
          
            '                    (library_smvso.SMVS_OPERATION_VARIANT_NO >= ' +
            '0) and'
          '                    (exists'
          '                      ( select'
          '                          1'
          '                        from'
          '                          DEPT_RELATIONS library_dr'
          '                        where'
          
            '                          (library_dr.DESCENDANT_DEPT_CODE = lib' +
            'rary_smvso.DEPT_CODE) and'
          '                          (library_dr.ANCESTOR_DEPT_CODE = %5)'
          '                      )'
          '                    )'
          '                )'
          '              )'
          '            )'
          '          )'
          '      )'
          '    ) then'
          '    6'
          '  else'
          '    5'
          'end')
      end
      item
        Name = 'INC_DATE_BY_WORKDAYS'
        Strings.Strings = (
          'Decode(Sign(%2),'
          '  0, %1,'
          '  1,'
          '  ( select'
          '      library_d.THE_DATE'
          '    from'
          '      THE_DATES library_d'
          '    where'
          '      (library_d.ZERO_WHEN_WORKDAY = 0) and'
          '      (library_d.ACCUMULATED_WORKDAYS ='
          '        ( select'
          '            (library_d.ACCUMULATED_WORKDAYS + %2)'
          '          from'
          '            THE_DATES library_d'
          '          where'
          '            (library_d.THE_DATE = %1)'
          '        )'
          '      )'
          '  ),'
          '  -1,'
          '  ( select'
          '      library_d.THE_DATE'
          '    from'
          '      THE_DATES library_d'
          '    where'
          '      (library_d.ZERO_WHEN_WORKDAY = 0) and'
          '      (library_d.ACCUMULATED_WORKDAYS = '
          '        ( select'
          
            '            (library_d.ACCUMULATED_WORKDAYS + %2 + (1 - library_' +
            'd.WORKDAYS))'
          '          from'
          '            THE_DATES library_d'
          '          where'
          '            (library_d.THE_DATE = %1)'
          '        )'
          '      )'
          '  )'
          ')')
      end
      item
        Name = 'COUNT_WORKDAYS'
        Strings.Strings = (
          'Coalesce('
          '  ( select'
          '      Decode('
          '        Sign(library_d2.THE_DATE - library_d1.THE_DATE),'
          '        -1,'
          
            '        -(library_d1.ACCUMULATED_WORKDAYS - library_d2.ACCUMULAT' +
            'ED_WORKDAYS + library_d2.WORKDAYS),'
          
            '        (library_d2.ACCUMULATED_WORKDAYS - library_d1.ACCUMULATE' +
            'D_WORKDAYS + library_d1.WORKDAYS)'
          '      )      '
          '    from'
          '      THE_DATES library_d1,'
          '      THE_DATES library_d2'
          '    where'
          '      (library_d1.THE_DATE = %1) and'
          '      (library_d2.THE_DATE = %2)'
          '  ),'
          '  0'
          ')')
      end
      item
        Name = 'ML_MIN_PRODUCT_NEED_DATE'
        Strings.Strings = (
          '( select'
          '    Min(library_mll.PRODUCT_NEED_BEGIN_DATE)'
          '  from'
          '    MATERIAL_LIST_LINES library_mll'
          '  where'
          '    (library_mll.ML_OBJECT_BRANCH_CODE = %1) and'
          '    (library_mll.ML_OBJECT_CODE = %2) and'
          '    (library_mll.ANNUL_EMPLOYEE_CODE is null)'
          ')')
      end
      item
        Name = 'TREE_ROOT_CODE'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'brt_CLIENT'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'brt_VENDOR'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'ot_ACQUIRE'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'ot_LEASE'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'ot_CONSIGN'
        Strings.Strings = (
          '3')
      end
      item
        Name = 'MIN_DATE'
        Strings.Strings = (
          'To_Date('#39'01.01.1996'#39', '#39'DD.MM.YYYY'#39')')
      end
      item
        Name = 'MAX_DATE'
        Strings.Strings = (
          'To_Date('#39'31.12.2020'#39', '#39'DD.MM.YYYY'#39')')
      end
      item
        Name = 'EPS'
        Strings.Strings = (
          '0.0001')
      end
      item
        Name = 'MAX_NUMBER'
        Strings.Strings = (
          '1000000000000')
      end
      item
        Name = 'poc_MODEL_OPERATION'
        Strings.Strings = (
          '70')
      end
      item
        Name = 'sdt_SALE'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'sdt_LEASE'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'GET_PARTNER_NAME'
        Strings.Strings = (
          '( select'
          '    Decode(library_c.COMPANY_CLASS_CODE, 1,'
          '      Nvl2('
          '        library_ct.COMPANY_TYPE_CODE,'
          '        Decode(library_ct.ABBREV_BEFORE, 1,'
          
            '          (library_ct.COMPANY_TYPE_ABBREV || '#39' "'#39' || library_c.C' +
            'OMPANY_NAME ||'#39'"'#39'),'
          
            '          ('#39'"'#39' || library_c.COMPANY_NAME ||'#39'" '#39' || library_ct.CO' +
            'MPANY_TYPE_ABBREV)'
          '        ),'
          '        library_c.COMPANY_NAME'
          '      ),'
          '      2,'
          '      ( library_p.FIRST_NAME ||'
          
            '        Nvl2(library_p.MIDDLE_NAME, ('#39' '#39' || SubStr(library_p.MID' +
            'DLE_NAME, 1, 1) || '#39'. '#39'), '#39' '#39') ||'
          '        library_p.LAST_NAME'
          '      ),'
          '      library_c.COMPANY_NAME'
          '    ) as PARTNER_NAME'
          '  from'
          '    COMPANIES library_c,'
          '    COMPANY_TYPES library_ct,'
          '    PERSONS library_p'
          '  where'
          
            '    (library_c.COMPANY_TYPE_CODE = library_ct.COMPANY_TYPE_CODE(' +
            '+)) and'
          '    (library_c.COMPANY_CODE = library_p.COMPANY_CODE(+)) and'
          '    (library_c.COMPANY_CODE = To_Number(%1))'
          ')')
      end
      item
        Name = 'MODEL_OPERATIONS_STATUS'
        Strings.Strings = (
          'Decode(%1.IS_OPERATIONS_MODEL,'
          '  0, 1,'
          '  ( select'
          '      3 - Sign(Count(*))'
          '    from'
          '      MATERIAL_LIST_LINES library_mll,'
          '      ML_MODEL_STAGES library_mlms'
          '    where'
          
            '      (library_mll.ML_OBJECT_BRANCH_CODE = %1.ML_OBJECT_BRANCH_C' +
            'ODE) and'
          '      (library_mll.ML_OBJECT_CODE = %1.ML_OBJECT_CODE) and'
          '      (library_mll.ANNUL_EMPLOYEE_CODE is null) and'
          '      '
          
            '      (library_mlms.MLL_OBJECT_BRANCH_CODE = library_mll.MLL_OBJ' +
            'ECT_BRANCH_CODE) and'
          
            '      (library_mlms.MLL_OBJECT_CODE = library_mll.MLL_OBJECT_COD' +
            'E) and'
          '          '
          '      (library_mlms.ML_MODEL_STAGE_NO > 0) and'
          '      (library_mlms.OUTGOING_WORKDAYS > 0) and'
          '                '
          '      not exists('
          '        select'
          '          1'
          '        from'
          '          MLMS_OPERATIONS library_mlmso'
          '        where'
          
            '          (library_mlmso.MLMS_OBJECT_BRANCH_CODE = library_mlms.' +
            'MLMS_OBJECT_BRANCH_CODE) and'
          
            '          (library_mlmso.MLMS_OBJECT_CODE = library_mlms.MLMS_OB' +
            'JECT_CODE) and'
          '          (library_mlmso.OPERATION_TYPE_CODE <> 1) and'
          '          (library_mlmso.MLMS_OPERATION_VARIANT_NO >= 0)'
          '      )'
          '  )'
          ')')
      end
      item
        Name = 'MLL_COMPLECTATION_PERCENT'
        Strings.Strings = (
          '( select'
          '    1 - MiscUtils.LargeZero(1 - '
          '      Min('
          '        ( select'
          
            '            Coalesce(Sum(library_mm3.DETAIL_TECH_QUANTITY), 0) a' +
            's MOVED_QUANTITY'
          '          from'
          '            MODEL_MOVEMENTS library_mm3,'
          '            ML_MODEL_STAGES library_mlms3,'
          '            MATERIAL_LIST_LINES library_mll3'
          '          where'
          
            '            (library_mm3.FROM_MLMS_OBJECT_BRANCH_CODE = library_' +
            'mlms3.MLMS_OBJECT_BRANCH_CODE) and'
          
            '            (library_mm3.FROM_MLMS_OBJECT_CODE = library_mlms3.M' +
            'LMS_OBJECT_CODE) and'
          
            '            (library_mlms3.MLL_OBJECT_BRANCH_CODE = library_mll3' +
            '.MLL_OBJECT_BRANCH_CODE) and'
          
            '            (library_mlms3.MLL_OBJECT_CODE = library_mll3.MLL_OB' +
            'JECT_CODE) and'
          
            '            (library_mll3.ML_OBJECT_BRANCH_CODE = library_mll2.M' +
            'L_OBJECT_BRANCH_CODE) and'
          
            '            (library_mll3.ML_OBJECT_CODE = library_mll2.ML_OBJEC' +
            'T_CODE) and'
          
            '            (library_mll3.NO_AS_TEXT = library_mll2.NO_AS_TEXT) ' +
            'and'
          '            (library_mll3.ANNUL_EMPLOYEE_CODE is null) and'
          '            (library_mlms3.TREATMENT_WORKDAYS > 0) and'
          '            (library_mlms3.OUTGOING_WORKDAYS > 0) and'
          '            (not exists'
          '              ( select'
          '                  1'
          '                from'
          '                  ML_MODEL_STAGES library_mlms4'
          '                where'
          
            '                  (library_mlms4.MLL_OBJECT_BRANCH_CODE = librar' +
            'y_mlms3.MLL_OBJECT_BRANCH_CODE) and'
          
            '                  (library_mlms4.MLL_OBJECT_CODE = library_mlms3' +
            '.MLL_OBJECT_CODE) and'
          
            '                  (library_mlms4.ML_MODEL_STAGE_NO > library_mlm' +
            's3.ML_MODEL_STAGE_NO) and'
          '                  (library_mlms4.OUTGOING_WORKDAYS > 0) and'
          
            '                  (library_mlms4.TREATMENT_WORKDAYS > 0)        ' +
            '                  '
          '              )'
          '            ) and'
          '            (library_mm3.TO_DEPT_CODE is null) and'
          '            (library_mm3.STORNO_EMPLOYEE_CODE is null)'
          '        ) /'
          '        library_mll2.TOTAL_DETAIL_TECH_QUANTITY'
          '      )'
          '    )'
          ''
          '  from'
          '    MATERIAL_LIST_LINES library_mll2'
          '    '
          '  where'
          
            '    (library_mll2.PARENT_MLL_OBJECT_BRANCH_CODE = %1.MLL_OBJECT_' +
            'BRANCH_CODE) and'
          
            '    (library_mll2.PARENT_MLL_OBJECT_CODE = %1.MLL_OBJECT_CODE) a' +
            'nd'
          '    (library_mll2.FORK_NO = 0)'
          ')')
      end
      item
        Name = 'at_ESTIMATION'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'at_REALIZATION'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'EXCEPT_EVENT_DAMAGE_STATE'
        Strings.Strings = (
          '( select'
          '    1 + Sign(Count(*))'
          '  from'
          '    EXCEPT_EVENT_DMG_ATTACKS library_eeda'
          '  where'
          
            '    (library_eeda.EXCEPT_EVENT_DAMAGE_CODE = %1.EXCEPT_EVENT_DAM' +
            'AGE_CODE) and'
          '    (library_eeda.NORMALIZE_EMPLOYEE_CODE is null)'
          ')')
      end
      item
        Name = 'pc_NORMAL'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'pc_FINANCIAL'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'pc_BUDGET'
        Strings.Strings = (
          '3')
      end
      item
        Name = 'HAS_WORK_DEPT'
        Strings.Strings = (
          '( select'
          '    Sign(Count(*))'
          '  from'
          '    OCCUPATION_WORK_DEPTS library_owd,'
          '    OCCUPATION_EMPLOYEES library_oe,'
          '    OCC_WORK_DEPT_PRIORITIES library_owdp'
          '  where'
          
            '    (library_owd.OCCUPATION_CODE = library_oe.OCCUPATION_CODE) a' +
            'nd'
          '    (library_oe.EMPLOYEE_CODE = %1) and'
          '    (library_owd.DEPT_CODE = %2) and'
          
            '    (ContextDate between library_oe.ASSIGNMENT_BEGIN_DATE and li' +
            'brary_oe.ASSIGNMENT_END_DATE) and'
          ''
          
            '    (library_owd.OCC_WORK_DEPT_PRIORITY_CODE = library_owdp.OCC_' +
            'WORK_DEPT_PRIORITY_CODE) and'
          '    (library_owdp.ORG_WORK_LEVEL_CODE = %owl_EXECUTING) and'
          '    (library_owdp.ORG_WORK_MODE_CODE = %owm_EXPLOITATION)'
          ')')
      end
      item
        Name = 'COMPANY_BASE_ROLE_CODE'
        Strings.Strings = (
          '( select'
          '    Decode('
          '      Least('
          
            '        Coalesce((select library_p.PRIORITY_NO from PRIORITIES l' +
            'ibrary_p where (library_p.PRIORITY_CODE = library_cc.PRIORITY_CO' +
            'DE)), 1000000), '
          
            '        Coalesce((select library_p.PRIORITY_NO from PRIORITIES l' +
            'ibrary_p where (library_p.PRIORITY_CODE = library_mc.PRIORITY_CO' +
            'DE)), 1000000),'
          
            '        Coalesce((select library_p.PRIORITY_NO from PRIORITIES l' +
            'ibrary_p where (library_p.PRIORITY_CODE = library_vc.PRIORITY_CO' +
            'DE)), 1000000),'
          
            '        Coalesce((select library_p.PRIORITY_NO from PRIORITIES l' +
            'ibrary_p where (library_p.PRIORITY_CODE = library_go.PRIORITY_CO' +
            'DE)), 1000000),'
          
            '        Coalesce((select library_p.PRIORITY_NO from PRIORITIES l' +
            'ibrary_p where (library_p.PRIORITY_CODE = library_bc.PRIORITY_CO' +
            'DE)), 1000000),'
          
            '        Coalesce((select library_p.PRIORITY_NO from PRIORITIES l' +
            'ibrary_p where (library_p.PRIORITY_CODE = library_w.PRIORITY_COD' +
            'E)), 1000000)'
          '      ),'
          
            '      (select library_p.PRIORITY_NO from PRIORITIES library_p wh' +
            'ere (library_p.PRIORITY_CODE = library_cc.PRIORITY_CODE)), 1,'
          
            '      (select library_p.PRIORITY_NO from PRIORITIES library_p wh' +
            'ere (library_p.PRIORITY_CODE = library_mc.PRIORITY_CODE)), 2,'
          
            '      (select library_p.PRIORITY_NO from PRIORITIES library_p wh' +
            'ere (library_p.PRIORITY_CODE = library_vc.PRIORITY_CODE)), 3,'
          
            '      (select library_p.PRIORITY_NO from PRIORITIES library_p wh' +
            'ere (library_p.PRIORITY_CODE = library_go.PRIORITY_CODE)), 4,'
          
            '      (select library_p.PRIORITY_NO from PRIORITIES library_p wh' +
            'ere (library_p.PRIORITY_CODE = library_bc.PRIORITY_CODE)), 5,'
          
            '      (select library_p.PRIORITY_NO from PRIORITIES library_p wh' +
            'ere (library_p.PRIORITY_CODE = library_w.PRIORITY_CODE)), 6,'
          '      null'
          '    )'
          '  from'
          '    COMPANIES library_c,'
          '    CLIENT_COMPANIES library_cc,'
          '    MEDIATOR_COMPANIES library_mc,'
          '    VENDOR_COMPANIES library_vc,'
          '    GOVERNMENT_ORGANIZATIONS library_go,'
          '    BANK_COMPANIES library_bc,'
          '    WORKERS library_w'
          '  where'
          '    (library_c.COMPANY_CODE = %1) and'
          
            '    (library_c.COMPANY_CODE = library_cc.CLIENT_COMPANY_CODE(+))' +
            ' and'
          
            '    (library_c.COMPANY_CODE = library_mc.MEDIATOR_COMPANY_CODE(+' +
            ')) and'
          
            '    (library_c.COMPANY_CODE = library_vc.VENDOR_COMPANY_CODE(+))' +
            ' and'
          
            '    (library_c.COMPANY_CODE = library_go.GOVERNMENT_ORGANIZATION' +
            '_CODE(+)) and'
          
            '    (library_c.COMPANY_CODE = library_bc.BANK_COMPANY_CODE(+)) a' +
            'nd'
          '    (library_c.COMPANY_CODE = library_w.COMPANY_CODE(+))'
          ')'
          '')
      end
      item
        Name = 'COMPANY_BASE_ROLE_PRIORITY_CODE'
        Strings.Strings = (
          '( select'
          '    Decode('
          '      Least('
          
            '        Coalesce((select library_p.PRIORITY_NO from PRIORITIES l' +
            'ibrary_p where (library_p.PRIORITY_CODE = library_cc.PRIORITY_CO' +
            'DE)), 1000000), '
          
            '        Coalesce((select library_p.PRIORITY_NO from PRIORITIES l' +
            'ibrary_p where (library_p.PRIORITY_CODE = library_mc.PRIORITY_CO' +
            'DE)), 1000000),'
          
            '        Coalesce((select library_p.PRIORITY_NO from PRIORITIES l' +
            'ibrary_p where (library_p.PRIORITY_CODE = library_vc.PRIORITY_CO' +
            'DE)), 1000000),'
          
            '        Coalesce((select library_p.PRIORITY_NO from PRIORITIES l' +
            'ibrary_p where (library_p.PRIORITY_CODE = library_go.PRIORITY_CO' +
            'DE)), 1000000),'
          
            '        Coalesce((select library_p.PRIORITY_NO from PRIORITIES l' +
            'ibrary_p where (library_p.PRIORITY_CODE = library_bc.PRIORITY_CO' +
            'DE)), 1000000),'
          
            '        Coalesce((select library_p.PRIORITY_NO from PRIORITIES l' +
            'ibrary_p where (library_p.PRIORITY_CODE = library_w.PRIORITY_COD' +
            'E)), 1000000)'
          '      ),'
          
            '      (select library_p.PRIORITY_NO from PRIORITIES library_p wh' +
            'ere (library_p.PRIORITY_CODE = library_cc.PRIORITY_CODE)), libra' +
            'ry_cc.PRIORITY_CODE,'
          
            '      (select library_p.PRIORITY_NO from PRIORITIES library_p wh' +
            'ere (library_p.PRIORITY_CODE = library_mc.PRIORITY_CODE)), libra' +
            'ry_mc.PRIORITY_CODE,'
          
            '      (select library_p.PRIORITY_NO from PRIORITIES library_p wh' +
            'ere (library_p.PRIORITY_CODE = library_vc.PRIORITY_CODE)), libra' +
            'ry_vc.PRIORITY_CODE,'
          
            '      (select library_p.PRIORITY_NO from PRIORITIES library_p wh' +
            'ere (library_p.PRIORITY_CODE = library_go.PRIORITY_CODE)), libra' +
            'ry_go.PRIORITY_CODE,'
          
            '      (select library_p.PRIORITY_NO from PRIORITIES library_p wh' +
            'ere (library_p.PRIORITY_CODE = library_bc.PRIORITY_CODE)), libra' +
            'ry_bc.PRIORITY_CODE,'
          
            '      (select library_p.PRIORITY_NO from PRIORITIES library_p wh' +
            'ere (library_p.PRIORITY_CODE = library_w.PRIORITY_CODE)), librar' +
            'y_w.PRIORITY_CODE,'
          '      null'
          '    )'
          '  from'
          '    COMPANIES library_c,'
          '    CLIENT_COMPANIES library_cc,'
          '    MEDIATOR_COMPANIES library_mc,'
          '    VENDOR_COMPANIES library_vc,'
          '    GOVERNMENT_ORGANIZATIONS library_go,'
          '    BANK_COMPANIES library_bc,'
          '    WORKERS library_w'
          '  where'
          '    (library_c.COMPANY_CODE = %1) and'
          
            '    (library_c.COMPANY_CODE = library_cc.CLIENT_COMPANY_CODE(+))' +
            ' and'
          
            '    (library_c.COMPANY_CODE = library_mc.MEDIATOR_COMPANY_CODE(+' +
            ')) and'
          
            '    (library_c.COMPANY_CODE = library_vc.VENDOR_COMPANY_CODE(+))' +
            ' and'
          
            '    (library_c.COMPANY_CODE = library_go.GOVERNMENT_ORGANIZATION' +
            '_CODE(+)) and'
          
            '    (library_c.COMPANY_CODE = library_bc.BANK_COMPANY_CODE(+)) a' +
            'nd'
          '    (library_c.COMPANY_CODE = library_w.COMPANY_CODE(+))'
          ')'
          '')
      end
      item
        Name = 'fmlt_PRIMARY'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'fmlt_SECONDARY'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'SPEC_MODEL_VARIANT_STATE'
        Strings.Strings = (
          'case'
          '  when'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          PRODUCTS library_p'
          '        where'
          '          (library_p.PRODUCT_CODE = %1.SPEC_PRODUCT_CODE) and'
          '          (library_p.PRODUCT_SPEC_REQUIREMENT_CODE = 1)'
          '      )'
          '    ) then'
          '    0  '
          
            '  when ( ( (select library_co.PRODUCTION_LEVEL_CODE from COMMON_' +
            'OPTIONS library_co where (library_co.CODE = 1)) < 3 ) and'
          '         (%1.AUTHORIZATION_EMPLOYEE_CODE is null)'
          '       ) or'
          
            '       ( ( (select library_co.PRODUCTION_LEVEL_CODE from COMMON_' +
            'OPTIONS library_co where (library_co.CODE = 1)) = 3 ) and'
          '         (%1.AUTHORIZATION_EMPLOYEE_CODE is null) and'
          '         (%1.AUTHORIZATION_OF_OPERATIONS = 1)'
          '       ) then'
          '    4'
          '  else'
          '    6'
          'end')
      end
      item
        Name = 'PAR_REL_PRODUCT_STATUS_CODE'
        Strings.Strings = (
          '( select'
          '    prpsc_library.PAR_REL_PRODUCT_STATUS_CODE'
          '  from'
          '    PAR_REL_PRODUCT_STATUS_CHANGES prpsc_library'
          '  where'
          '    (prpsc_library.PARTNER_CODE = %1.PARTNER_CODE) and'
          
            '    (prpsc_library.BORDER_REL_TYPE_CODE = %1.BORDER_REL_TYPE_COD' +
            'E) and'
          '    (prpsc_library.PRODUCT_CODE = %1.PRODUCT_CODE) and'
          ''
          '    (prpsc_library.STATUS_DATE ='
          '      ( select'
          '          Max(prpsc2_library.STATUS_DATE)'
          '        from'
          '          PAR_REL_PRODUCT_STATUS_CHANGES prpsc2_library'
          '        where'
          '          (prpsc2_library.PARTNER_CODE = %1.PARTNER_CODE) and'
          
            '          (prpsc2_library.BORDER_REL_TYPE_CODE = %1.BORDER_REL_T' +
            'YPE_CODE) and'
          '          (prpsc2_library.PRODUCT_CODE = %1.PRODUCT_CODE)'
          '      )'
          '    )'
          ')')
      end
      item
        Name = 'CURRENCY_FIXING'
        Strings.Strings = (
          '( select'
          '    library_cr.FIXING'
          '  from'
          '    CURRENCY_RATES library_cr'
          '  where'
          '    (library_cr.CURRENCY_CODE = %1) and'
          
            '    (library_cr.RATE_DATE = Least(Coalesce(%2, ContextDate), Con' +
            'textDate))'
          ')')
      end
      item
        Name = 'EMPLOYEE_MAIN_SHIFT_WORKDAY_COUNT'
        Strings.Strings = (
          '( select'
          '    Count(*) as EMP_MAIN_SHIFT_WORKDAY_COUNT'
          
            '    -- Sum(library_sc.WORKDAY_DURATION_HOURS * library_sc.WORKDA' +
            'Y_DENSITY_PERCENT) as EMP_MAIN_SHIFT_EFF_WORKHOURS'
          ''
          '  from'
          '    THE_DATES library_td,'
          '    OCCUPATIONS library_o,'
          '    OCCUPATION_EMPLOYEES library_oe,'
          '    OCCUPATION_SHIFTS library_os,'
          '    DATE_SHIFT_CYCLES library_dsc,'
          '    SHIFT_CYCLES library_sc'
          ''
          '  where'
          '    (library_oe.EMPLOYEE_CODE = %1) and'
          '    (library_oe.OCCUPATION_CODE = library_o.OCCUPATION_CODE) and'
          '    (library_o.OCCUPATION_CODE = library_os.OCCUPATION_CODE) and'
          ''
          '    (library_td.THE_DATE = library_dsc.THE_DATE) and'
          '    ( Coalesce('
          '        ( select'
          '            library_eam.NEW_SHIFT_CODE'
          '          from'
          '            EMP_AVAIL_MODIFIERS library_eam'
          '          where'
          
            '            (library_eam.EMPLOYEE_CODE = library_oe.EMPLOYEE_COD' +
            'E) and'
          
            '            (library_td.THE_DATE between library_eam.BEGIN_DATE ' +
            'and library_eam.END_DATE) and'
          '            (library_eam.STORNO_EMPLOYEE_CODE is null) and'
          '            (library_eam.OLD_SHIFT_CODE = library_os.SHIFT_CODE)'
          '        ),'
          '        library_os.SHIFT_CODE'
          '      ) = library_dsc.SHIFT_CODE'
          '    ) and'
          '            '
          
            '    (library_dsc.SHIFT_CYCLE_CODE = library_sc.SHIFT_CYCLE_CODE)' +
            ' and'
          '        '
          '    (library_sc.IS_WORK_CYCLE = 1) and'
          '          '
          
            '    (library_td.THE_DATE between library_o.OCCUPATION_BEGIN_DATE' +
            ' and library_o.OCCUPATION_END_DATE) and'
          ''
          
            '    (library_td.THE_DATE between library_oe.ASSIGNMENT_BEGIN_DAT' +
            'E and library_oe.ASSIGNMENT_END_DATE) and'
          ''
          
            '    (library_td.THE_DATE between library_os.BEGIN_DATE and libra' +
            'ry_os.END_DATE) and'
          ''
          '    (library_td.THE_DATE between %2 and %3) and'
          ''
          '    (library_o.IS_MAIN = 1) and'
          ''
          '    (not exists'
          '      ( select'
          '          1'
          '        from'
          '          EMP_AVAIL_MODIFIERS library_eam'
          '        where'
          
            '          (library_eam.EMPLOYEE_CODE = library_oe.EMPLOYEE_CODE)' +
            ' and'
          
            '          (library_td.THE_DATE between library_eam.BEGIN_DATE an' +
            'd library_eam.END_DATE) and'
          
            '          (library_eam.EMP_AVAIL_MODIFIER_TYPE_CODE = 1) and  --' +
            ' celodnevno otsustvie'
          '          (library_eam.STORNO_EMPLOYEE_CODE is null)'
          '      )'
          '    )'
          ')')
      end
      item
        Name = 'EMPLOYEE_MAIN_SHIFT_EFFECTIVE_WORKHOURS'
        Strings.Strings = (
          '( select'
          '   --  Count(*) as EMP_MAIN_SHIFT_WORKDAY_COUNT'
          
            '    Sum(library_sc.WORKDAY_DURATION_HOURS * library_sc.WORKDAY_D' +
            'ENSITY_PERCENT) as EMP_MAIN_SHIFT_EFF_WORKHOURS'
          ''
          '  from'
          '    THE_DATES library_td,'
          '    OCCUPATIONS library_o,'
          '    OCCUPATION_EMPLOYEES library_oe,'
          '    OCCUPATION_SHIFTS library_os,'
          '    DATE_SHIFT_CYCLES library_dsc,'
          '    SHIFT_CYCLES library_sc'
          ''
          '  where'
          '    (library_oe.EMPLOYEE_CODE = %1) and'
          '    (library_oe.OCCUPATION_CODE = library_o.OCCUPATION_CODE) and'
          '    (library_o.OCCUPATION_CODE = library_os.OCCUPATION_CODE) and'
          ''
          '    (library_td.THE_DATE = library_dsc.THE_DATE) and'
          '    ( Coalesce('
          '        ( select'
          '            library_eam.NEW_SHIFT_CODE'
          '          from'
          '            EMP_AVAIL_MODIFIERS library_eam'
          '          where'
          
            '            (library_eam.EMPLOYEE_CODE = library_oe.EMPLOYEE_COD' +
            'E) and'
          
            '            (library_td.THE_DATE between library_eam.BEGIN_DATE ' +
            'and library_eam.END_DATE) and'
          '            (library_eam.STORNO_EMPLOYEE_CODE is null) and'
          '            (library_eam.OLD_SHIFT_CODE = library_os.SHIFT_CODE)'
          '        ),'
          '        library_os.SHIFT_CODE'
          '      ) = library_dsc.SHIFT_CODE'
          '    ) and'
          '            '
          
            '    (library_dsc.SHIFT_CYCLE_CODE = library_sc.SHIFT_CYCLE_CODE)' +
            ' and'
          '        '
          '    (library_sc.IS_WORK_CYCLE = 1) and'
          '          '
          
            '    (library_td.THE_DATE between library_o.OCCUPATION_BEGIN_DATE' +
            ' and library_o.OCCUPATION_END_DATE) and'
          ''
          
            '    (library_td.THE_DATE between library_oe.ASSIGNMENT_BEGIN_DAT' +
            'E and library_oe.ASSIGNMENT_END_DATE) and'
          ''
          
            '    (library_td.THE_DATE between library_os.BEGIN_DATE and libra' +
            'ry_os.END_DATE) and'
          ''
          '    (library_td.THE_DATE between %2 and %3) and'
          ''
          '    (library_o.IS_MAIN = 1) and'
          ''
          '    (not exists'
          '      ( select'
          '          1'
          '        from'
          '          EMP_AVAIL_MODIFIERS library_eam'
          '        where'
          
            '          (library_eam.EMPLOYEE_CODE = library_oe.EMPLOYEE_CODE)' +
            ' and'
          
            '          (library_td.THE_DATE between library_eam.BEGIN_DATE an' +
            'd library_eam.END_DATE) and'
          
            '          (library_eam.EMP_AVAIL_MODIFIER_TYPE_CODE = 1) and  --' +
            ' celodnevno otsustvie'
          '          (library_eam.STORNO_EMPLOYEE_CODE is null)'
          '      )'
          '    )'
          ')')
      end
      item
        Name = 'DEPT_IDENTIFIER'
        Strings.Strings = (
          '( select'
          
            '    (library_dt.DEPT_TYPE_ABBREV || library_d.CUSTOM_CODE || lib' +
            'rary_d.SUFFIX_LETTER)'
          '  from'
          '    DEPTS library_d,'
          '    DEPT_TYPES library_dt'
          '  where'
          '    (library_d.DEPT_CODE = %1) and'
          '    (library_d.DEPT_TYPE_CODE = library_dt.DEPT_TYPE_CODE(+))'
          ')')
      end
      item
        Name = 'EMPLOYEE_ABBREV_NAME'
        Strings.Strings = (
          '( select'
          '    '#39' '#39' || library_e.ABBREV || '#39'    '#39' ||'
          '    library_e.FIRST_NAME ||'
          '    Nvl2(library_e.MIDDLE_NAME,'
          '      '#39' '#39' || Substr(library_e.MIDDLE_NAME, 1, 1) || '#39'. '#39','
          '      '#39' '#39') ||'
          '    library_e.LAST_NAME'
          '  from'
          '    EMPLOYEES library_e'
          '  where'
          '    (library_e.EMPLOYEE_CODE = %1)'
          ')')
      end
      item
        Name = 'DEPT_NAME'
        Strings.Strings = (
          '( select'
          '    library_d.NAME'
          '  from'
          '    DEPTS library_d'
          '  where'
          '    (library_d.DEPT_CODE = %1)'
          ')')
      end
      item
        Name = 'PROCESS_OBJECT_IDENTIFIER'
        Strings.Strings = (
          '( select'
          '    library_po.PROCESS_OBJECT_IDENTIFIER'
          '  from'
          '    PROCESS_OBJECTS library_po'
          '  where'
          '    (library_po.PROCESS_OBJECT_BRANCH_CODE = %1) and'
          '    (library_po.PROCESS_OBJECT_CODE = %2)'
          ')')
      end
      item
        Name = 'MEASURE_ABBREV'
        Strings.Strings = (
          '( select'
          '    library_m.MEASURE_ABBREV'
          '  from'
          '    MEASURES library_m'
          '  where'
          '    (library_m.MEASURE_CODE = %1)'
          ')')
      end
      item
        Name = 'pobt_SALE_COVER'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'pobt_ENV_COVER'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'pobt_DELIVERY_COVER'
        Strings.Strings = (
          '4')
      end
      item
        Name = 'pobt_PROJECT'
        Strings.Strings = (
          '5')
      end
      item
        Name = 'pobt_INPUT_EMPLOYEES'
        Strings.Strings = (
          '6')
      end
      item
        Name = 'sot_NORMAL_SALE_ORDER'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'sot_QUICK_SALE_ORDER'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'sot_PRODUCTION_ORDER'
        Strings.Strings = (
          '3')
      end
      item
        Name = 'sot_CURRENT_QUANTITY'
        Strings.Strings = (
          '6')
      end
      item
        Name = 'sot_FUTURE_QUANTITY'
        Strings.Strings = (
          '7')
      end
      item
        Name = 'mdt_SPEC_AND_MODEL'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'mdt_MODEL_ONLY'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'mdt_WITHOUT_MODEL'
        Strings.Strings = (
          '3')
      end
      item
        Name = 'srt_ACTIVITIES'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'srt_FILTER_VARIANTS'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'srt_DOC_ITEMS'
        Strings.Strings = (
          '3')
      end
      item
        Name = 'srt_FV_AND_DI'
        Strings.Strings = (
          '4')
      end
      item
        Name = 'ROOT_SALE_PRODUCT_IF_FOR_PROJECT'
        Strings.Strings = (
          '( select'
          '    '#39' ('#39' || lib_p.CUSTOM_CODE || '#39' '#39' || lib_p.NAME || '#39')'#39
          '  from'
          '    PRODUCTS lib_p'
          '  where'
          
            '    (lib_p.PRODUCT_CODE = %ROOT_SALE_PRODUCT_CODE_IF_FOR_PROJECT' +
            '[%1])'
          ')')
      end
      item
        Name = 'ROOT_SALE_PRODUCT_CODE_IF_FOR_PROJECT'
        Strings.Strings = (
          '( select'
          '    Decode('
          '      ( select'
          '          lib_pot.PROD_ORDER_BASE_TYPE_CODE'
          '        from'
          '          PRODUCTION_ORDER_TYPES lib_pot'
          '        where'
          
            '          (lib_pot.PRODUCTION_ORDER_TYPE_CODE = lib_s.PRODUCTION' +
            '_ORDER_TYPE_CODE)'
          '      ),'
          '      CommonConsts.pobtProject,'
          '      lib_s.PRODUCT_CODE'
          '    )'
          '  from'
          '    SALES lib_s'
          '  where'
          '    (lib_s.WASTING_SALE_OBJ_BRANCH_CODE is null)'
          '  start with'
          
            '    (lib_s.SALE_OBJECT_BRANCH_CODE = %1.SALE_OBJECT_BRANCH_CODE)' +
            ' and'
          '    (lib_s.SALE_OBJECT_CODE = %1.SALE_OBJECT_CODE)'
          '  connect by'
          
            '    (lib_s.SALE_OBJECT_BRANCH_CODE = prior lib_s.WASTING_SALE_OB' +
            'J_BRANCH_CODE) and'
          '    (lib_s.SALE_OBJECT_CODE = prior lib_s.WASTING_SALE_OBJ_CODE)'
          ')')
      end
      item
        Name = 'PRODUCT_BASE_PSD_SINGLE_PRICE'
        Strings.Strings = (
          '%PSD_SINGLE_PRICE_IN_BASE_CURRENCY[%1 ~ %2]')
      end
      item
        Name = 'PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE'
        Strings.Strings = (
          '( ( (%1 = 2) and'
          '    (%2.IS_COMMON = 0)'
          '  ) or'
          '  ( (%1 = 1) and'
          '    ( ( (%2.IS_COMMON = 1) and'
          '        (%2.IS_STRATEGIC = 0)'
          '      ) or'
          '      ( (%2.IS_COMMON = 0) and'
          '        (exists'
          '          ( select'
          '              1'
          '            from'
          '              DEFINITE_PRODUCTS lib_common_level_filter_dp'
          '            where'
          
            '              (lib_common_level_filter_dp.PRODUCT_CODE = %2.PROD' +
            'UCT_CODE) and'
          
            '              (lib_common_level_filter_dp.COMMON_PRODUCT_CODE is' +
            ' null)'
          '          )'
          '        )'
          '      )'
          '    )'
          '  ) or'
          '  ( (%1 = 0) and'
          '    (%2.IS_COMMON = 1) and'
          '    (%2.IS_STRATEGIC = 1)'
          '  )'
          ')')
      end
      item
        Name = 'PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCT_CODE'
        Strings.Strings = (
          '(exists'
          '  ( select'
          '      1'
          '    from'
          '      PRODUCTS lib_common_level_filter_p'
          '    where'
          '      (lib_common_level_filter_p.PRODUCT_CODE = %2) and'
          
            '      %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[%1 ~ lib_co' +
            'mmon_level_filter_p]'
          '      '
          '  )'
          ')')
      end
      item
        Name = 'PARTNER_COMMON_LEVEL_FILTER'
        Strings.Strings = (
          '(exists'
          '  ( select'
          '      1'
          '    from'
          '      COMPANIES lib_c'
          '    where'
          '      (lib_c.COMPANY_CODE = %2) and'
          '      ( ( ( (%1 is null) or'
          '            (%1 = 2)'
          '          ) and'
          '          (lib_c.COMPANY_CLASS_CODE <> 4)'
          '        ) or'
          '        ( (%1 = 1) and'
          '          ( (lib_c.COMPANY_CLASS_CODE = 4) or'
          '            (exists'
          '              ( select'
          '                  1'
          '                from'
          '                  PAR_RELS lib_par_common_level_filter_pr'
          '                where'
          
            '                  (lib_par_common_level_filter_pr.PARTNER_CODE =' +
            ' lib_c.COMPANY_CODE) and'
          
            '                  (lib_par_common_level_filter_pr.BORDER_REL_TYP' +
            'E_CODE = %3) and'
          
            '                  (lib_par_common_level_filter_pr.COMMON_PARTNER' +
            '_CODE is null)'
          '              )'
          '            )'
          '          )'
          '        )'
          '      )      '
          '  )'
          ')')
      end
      item
        Name = 'PRODUCT_ACCOUNT_MEASURE_COEF'
        Strings.Strings = (
          '-- macro PRODUCT_ACCOUNT_MEASURE_COEF (product_code)'
          '( select'
          '    p.ACCOUNT_MEASURE_COEF'
          '  from'
          '    PRODUCTS p'
          '  where'
          '    (p.PRODUCT_CODE = %1)'
          ')')
      end
      item
        Name = 'PAR_REL_PERIOD_EXISTANCE_PARTNER_CODE'
        Strings.Strings = (
          
            '-- macro PAR_REL_PERIOD_EXISTANCE_PARTNER_CODE (partner_code, bo' +
            'rder_rel_type_code, date)'
          'Coalesce('
          '  ( select'
          '      lib_prper2.PARTNER_CODE'
          '    from'
          '      PAR_REL_PERIODS lib_prper2'
          '    where'
          '      (%1 = lib_prper2.PARTNER_CODE) and'
          '      (%2 = lib_prper2.BORDER_REL_TYPE_CODE) and'
          '      (%3 between lib_prper2.BEGIN_DATE and lib_prper2.END_DATE)'
          '  ),'
          '  ( select'
          '      lib_pr2.COMMON_PARTNER_CODE'
          '    from'
          '      PAR_RELS lib_pr2'
          '    where'
          '      (%1 = lib_pr2.PARTNER_CODE) and'
          '      (%2 = lib_pr2.BORDER_REL_TYPE_CODE)'
          '  )'
          ')')
      end
      item
        Name = 'PRODUCT_PERIOD_EXISTANCE_PRODUCT_CODE'
        Strings.Strings = (
          
            '-- macro PRODUCT_PERIOD_EXISTANCE_PRODUCT_CODE (product_code, da' +
            'te)'
          'Coalesce('
          '  ( select'
          '      lib_pper2.PRODUCT_CODE'
          '    from'
          '      PRODUCT_PERIODS lib_pper2'
          '    where'
          '      (%1 = lib_pper2.PRODUCT_CODE) and'
          '      (%2 between lib_pper2.BEGIN_DATE and lib_pper2.END_DATE)'
          '  ),'
          '  ( select'
          '      lib_dp.COMMON_PRODUCT_CODE'
          '    from'
          '      DEFINITE_PRODUCTS lib_dp'
          '    where'
          '      (lib_dp.PRODUCT_CODE = %1)'
          '  )'
          ')')
      end
      item
        Name = 'PSD_SINGLE_PRICE_IN_BASE_CURRENCY'
        Strings.Strings = (
          '-- macro PSD_SINGLE_PRICE_IN_BASE_CURRENCY (product_code, date)'
          '( select'
          '    Max('
          '      Decode('
          '        %IS_PSD_PRICE_FROM_DELIVERY_EX[library_pper],'
          '        1,'
          '        ( library_pper.DELIVERY_ACQUIRE_SINGLE_PRICE *'
          '          ( select'
          '              library_cr.FIXING'
          '            from'
          '              CURRENCY_RATES library_cr'
          '            where'
          
            '              (library_cr.CURRENCY_CODE = library_pper.DELIVERY_' +
            'ACQUIRE_CURRENCY_CODE) and'
          '              (library_cr.RATE_DATE = Least(%2, ContextDate))'
          '          )'
          '        ),'
          '        library_pper.INVESTMENT_LEVEL_1_VALUE'
          '      )'
          '    )'
          '  from'
          '    PRODUCT_PERIODS library_pper'
          '  where'
          '    (library_pper.PRODUCT_CODE ='
          '      Coalesce('
          '        ( select'
          '            library_pper2.PRODUCT_CODE'
          '          from'
          '            PRODUCT_PERIODS library_pper2'
          '          where'
          '            (library_pper2.PRODUCT_CODE = %1) and'
          
            '            (ContextDate between library_pper2.BEGIN_DATE and li' +
            'brary_pper2.END_DATE)'
          '        ),'
          '        ( select'
          '            library_dp.COMMON_PRODUCT_CODE'
          '          from'
          '            DEFINITE_PRODUCTS library_dp'
          '          where'
          '            (library_dp.PRODUCT_CODE = %1)'
          '        )'
          '      )'
          '    ) and'
          
            '    (%2 between library_pper.BEGIN_DATE and library_pper.END_DAT' +
            'E)'
          ')')
      end
      item
        Name = 'PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY'
        Strings.Strings = (
          
            '-- macro PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY (product_code, d' +
            'ate)'
          '( %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[%1 ~ %2] /'
          '  ( select'
          '      lib_cr.FIXING'
          '    from'
          '      CURRENCY_RATES lib_cr,'
          '      INTERNAL_VALUES lib_iv'
          '    where'
          '      (lib_cr.RATE_DATE = Least(%2, ContextDate)) and'
          
            '      (lib_cr.CURRENCY_CODE = lib_iv.SECONDARY_CURRENCY_CODE) an' +
            'd'
          '      (lib_iv.CODE = 1)'
          '  )'
          ')')
      end
      item
        Name = 'PRODUCT_PRECISION_LEVEL_CODE'
        Strings.Strings = (
          '-- macro PRODUCT_PRECISION_LEVEL_CODE (product_code, date)'
          '( select'
          '    lib_pper.PRECISION_LEVEL_CODE'
          '  from'
          '    PRODUCT_PERIODS lib_pper'
          '  where'
          
            '    (lib_pper.PRODUCT_CODE = %PRODUCT_PERIOD_EXISTANCE_PRODUCT_C' +
            'ODE[%1 ~ %2]) and'
          '    (%2 between lib_pper.BEGIN_DATE and lib_pper.END_DATE)'
          ')')
      end
      item
        Name = 'PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY'
        Strings.Strings = (
          
            '-- macro PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_BASE_CURRENCY (pro' +
            'duct_code, date)'
          '( select'
          '    lib_pper.SALE_ACQUIRE_SINGLE_PRICE * lib_cr.FIXING'
          '  from'
          '    PRODUCT_PERIODS lib_pper,'
          '    CURRENCY_RATES lib_cr'
          '  where'
          
            '    (lib_pper.PRODUCT_CODE = %PRODUCT_PERIOD_EXISTANCE_PRODUCT_C' +
            'ODE[%1 ~ %2]) and'
          '    (%2 between lib_pper.BEGIN_DATE and lib_pper.END_DATE) and'
          '    (lib_cr.RATE_DATE = Least(%2, ContextDate)) and'
          '    (lib_cr.CURRENCY_CODE = lib_pper.SALE_ACQUIRE_CURRENCY_CODE)'
          ')')
      end
      item
        Name = 'PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_SECONDARY_CURRENCY'
        Strings.Strings = (
          
            '-- macro PRODUCT_SALE_ACQUIRE_SINGLE_PRICE_IN_SECONDARY_CURRENCY' +
            ' (product_code, date)'
          '( select'
          '    lib_pper.SALE_ACQUIRE_SINGLE_PRICE * lib_scr.FIXING'
          '  from'
          '    PRODUCT_PERIODS lib_pper,'
          '    SECONDARY_CURRENCY_RATES lib_scr'
          '  where'
          
            '    (lib_pper.PRODUCT_CODE = %PRODUCT_PERIOD_EXISTANCE_PRODUCT_C' +
            'ODE[%1 ~ %2]) and'
          '    (%2 between lib_pper.BEGIN_DATE and lib_pper.END_DATE) and'
          '    (lib_scr.RATE_DATE = Least(%2, ContextDate)) and'
          
            '    (lib_scr.CURRENCY_CODE = lib_pper.SALE_ACQUIRE_CURRENCY_CODE' +
            ')'
          ')')
      end
      item
        Name = 'PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX'
        Strings.Strings = (
          
            '-- macro PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX (product_code, date' +
            ')'
          '( select'
          
            '    Decode(%IS_PSD_PRICE_FROM_DELIVERY_EX[lib_pper], 1, 0, lib_p' +
            'per.INVESTMENT_LEVEL_2_VALUE)'
          '  from'
          '    PRODUCT_PERIODS lib_pper'
          '  where'
          
            '    (lib_pper.PRODUCT_CODE = %PRODUCT_PERIOD_EXISTANCE_PRODUCT_C' +
            'ODE[%1 ~ %2]) and'
          '    (%2 between lib_pper.BEGIN_DATE and lib_pper.END_DATE)'
          ')')
      end
      item
        Name = 'PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX'
        Strings.Strings = (
          
            '-- macro PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX (product_code, date' +
            ')'
          '( select'
          
            '    Decode(%IS_PSD_PRICE_FROM_DELIVERY_EX[lib_pper], 1, 0, lib_p' +
            'per.INVESTMENT_LEVEL_3_VALUE)'
          '  from'
          '    PRODUCT_PERIODS lib_pper'
          '  where'
          
            '    (lib_pper.PRODUCT_CODE = %PRODUCT_PERIOD_EXISTANCE_PRODUCT_C' +
            'ODE[%1 ~ %2]) and'
          '    (%2 between lib_pper.BEGIN_DATE and lib_pper.END_DATE)'
          ')')
      end
      item
        Name = 'PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX'
        Strings.Strings = (
          
            '-- macro PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX (product_code, date' +
            ')'
          '( select'
          
            '    Decode(%IS_PSD_PRICE_FROM_DELIVERY_EX[lib_pper], 1, 0, lib_p' +
            'per.INVESTMENT_LEVEL_4_VALUE)'
          '  from'
          '    PRODUCT_PERIODS lib_pper'
          '  where'
          
            '    (lib_pper.PRODUCT_CODE = %PRODUCT_PERIOD_EXISTANCE_PRODUCT_C' +
            'ODE[%1 ~ %2]) and'
          '    (%2 between lib_pper.BEGIN_DATE and lib_pper.END_DATE)'
          ')')
      end
      item
        Name = 'PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX'
        Strings.Strings = (
          
            '-- macro PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX (product_code, date' +
            ')'
          '( select'
          
            '    Decode(%IS_PSD_PRICE_FROM_DELIVERY_EX[lib_pper], 1, 0, lib_p' +
            'per.INVESTMENT_LEVEL_5_VALUE)'
          '  from'
          '    PRODUCT_PERIODS lib_pper'
          '  where'
          
            '    (lib_pper.PRODUCT_CODE = %PRODUCT_PERIOD_EXISTANCE_PRODUCT_C' +
            'ODE[%1 ~ %2]) and'
          '    (%2 between lib_pper.BEGIN_DATE and lib_pper.END_DATE)'
          ')')
      end
      item
        Name = 'PRODUCT_INVESTMENT_LEVEL_6_VALUE_EX'
        Strings.Strings = (
          
            '-- macro PRODUCT_INVESTMENT_LEVEL_6_VALUE_EX (product_code, date' +
            ')'
          '( select'
          
            '    Decode(%IS_PSD_PRICE_FROM_DELIVERY_EX[lib_pper], 1, 0, lib_p' +
            'per.INVESTMENT_LEVEL_6_VALUE)'
          '  from'
          '    PRODUCT_PERIODS lib_pper'
          '  where'
          
            '    (lib_pper.PRODUCT_CODE = %PRODUCT_PERIOD_EXISTANCE_PRODUCT_C' +
            'ODE[%1 ~ %2]) and'
          '    (%2 between lib_pper.BEGIN_DATE and lib_pper.END_DATE)'
          ')')
      end
      item
        Name = 'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER'
        Strings.Strings = (
          
            '-- macro GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER (partner_cod' +
            'e, border_rel_type_code, product_code, date, field_name, overrid' +
            'e_field_name)'
          '( case'
          '    when'
          '      (exists '
          '        ( select'
          '            1'
          '          from'
          '            PAR_REL_PRODUCT_PERIODS prpp'
          '          where'
          '            (prpp.PARTNER_CODE = %1) and'
          '            (prpp.BORDER_REL_TYPE_CODE = %2) and'
          '            (prpp.PRODUCT_CODE = %3) and'
          '            (%4 between prpp.BEGIN_DATE and prpp.END_DATE)'
          '        )'
          '      )'
          '      then'
          '        ( select'
          '            prpp.%5'
          '          from'
          '            PAR_REL_PRODUCT_PERIODS prpp'
          '          where'
          '            (prpp.PARTNER_CODE = %1) and'
          '            (prpp.BORDER_REL_TYPE_CODE = %2) and'
          '            (prpp.PRODUCT_CODE = %3) and'
          '            (%4 between prpp.BEGIN_DATE and prpp.END_DATE)'
          '        )'
          '        '
          '    when'
          '      (exists'
          '        ( select'
          '            1'
          '          from'
          '            PAR_REL_PRODUCT_PERIODS prpp'
          '          where'
          '            (prpp.PARTNER_CODE = %1) and'
          '            (prpp.BORDER_REL_TYPE_CODE = %2) and'
          '            (prpp.PRODUCT_CODE ='
          '              ( select'
          '                  lib_dp.COMMON_PRODUCT_CODE'
          '                from'
          '                  DEFINITE_PRODUCTS lib_dp'
          '                where'
          '                  (lib_dp.PRODUCT_CODE = %3)'
          '              )'
          '            ) and'
          '            (%4 between prpp.BEGIN_DATE and prpp.END_DATE) and'
          '            (prpp.%6 = 1)'
          '        )'
          '      )'
          '      then'
          '        ( select'
          '            prpp.%5'
          '          from'
          '            PAR_REL_PRODUCT_PERIODS prpp'
          '          where'
          '            (prpp.PARTNER_CODE = %1) and'
          '            (prpp.BORDER_REL_TYPE_CODE = %2) and'
          '            (prpp.PRODUCT_CODE ='
          '              ( select'
          '                  dp.COMMON_PRODUCT_CODE'
          '                from'
          '                  DEFINITE_PRODUCTS dp'
          '                where'
          '                  (dp.PRODUCT_CODE = %3)'
          '              )'
          '            ) and'
          '            (%4 between prpp.BEGIN_DATE and prpp.END_DATE)'
          '        )'
          '        '
          '    when'
          '      (exists '
          '        ( select'
          '            1'
          '          from'
          '            PAR_REL_PRODUCT_PERIODS prpp'
          '          where'
          '            (prpp.PARTNER_CODE ='
          '              ( select'
          '                  pr2.COMMON_PARTNER_CODE'
          '                from'
          '                  PAR_RELS pr2'
          '                where'
          '                  (pr2.PARTNER_CODE =  %1) and'
          '                  (pr2.BORDER_REL_TYPE_CODE = %2)'
          '              )'
          '            ) and'
          '            (prpp.BORDER_REL_TYPE_CODE = %2) and'
          '            (prpp.PRODUCT_CODE = %3) and'
          '            (%4 between prpp.BEGIN_DATE and prpp.END_DATE) and'
          '            (prpp.%6 = 1)'
          '        )'
          '      )'
          '      then'
          '        ( select'
          '            prpp.%5'
          '          from'
          '            PAR_REL_PRODUCT_PERIODS prpp'
          '          where'
          '            (prpp.PARTNER_CODE ='
          '              ( select'
          '                  pr2.COMMON_PARTNER_CODE'
          '                from'
          '                  PAR_RELS pr2'
          '                where'
          '                  (pr2.PARTNER_CODE =  %1) and'
          '                  (pr2.BORDER_REL_TYPE_CODE = %2)'
          '              )'
          '            ) and'
          '            (prpp.BORDER_REL_TYPE_CODE = %2) and'
          '            (prpp.PRODUCT_CODE = %3) and'
          '            (%4 between prpp.BEGIN_DATE and prpp.END_DATE)'
          '        )'
          '        '
          '    when'
          '      (exists '
          '        ( select'
          '            1'
          '          from'
          '            PAR_REL_PRODUCT_PERIODS prpp'
          '          where'
          '            (prpp.PARTNER_CODE ='
          '              ( select'
          '                  pr2.COMMON_PARTNER_CODE'
          '                from'
          '                  PAR_RELS pr2'
          '                where'
          '                  (pr2.PARTNER_CODE =  %1) and'
          '                  (pr2.BORDER_REL_TYPE_CODE = %2)'
          '              )'
          '            ) and'
          '            (prpp.BORDER_REL_TYPE_CODE = %2) and'
          '            (prpp.PRODUCT_CODE ='
          '              ( select'
          '                  dp.COMMON_PRODUCT_CODE'
          '                from'
          '                  DEFINITE_PRODUCTS dp'
          '                where'
          '                  (dp.PRODUCT_CODE = %3)'
          '              )'
          '            ) and'
          '            (%4 between prpp.BEGIN_DATE and prpp.END_DATE) and'
          '            (prpp.%6 = 1)'
          '        )'
          '      )'
          '      then'
          '        ( select'
          '            prpp.%5'
          '          from'
          '            PAR_REL_PRODUCT_PERIODS prpp'
          '          where'
          '            (prpp.PARTNER_CODE ='
          '              ( select'
          '                  pr2.COMMON_PARTNER_CODE'
          '                from'
          '                  PAR_RELS pr2'
          '                where'
          '                  (pr2.PARTNER_CODE =  %1) and'
          '                  (pr2.BORDER_REL_TYPE_CODE = %2)'
          '              )'
          '            ) and'
          '            (prpp.BORDER_REL_TYPE_CODE = %2) and'
          '            (prpp.PRODUCT_CODE ='
          '              ( select'
          '                  dp.COMMON_PRODUCT_CODE'
          '                from'
          '                  DEFINITE_PRODUCTS dp'
          '                where'
          '                  (dp.PRODUCT_CODE = %3)'
          '              )'
          '            ) and'
          '            (%4 between prpp.BEGIN_DATE and prpp.END_DATE)'
          '        )'
          ''
          '    else'
          '      ( select'
          '          prper.%5'
          '        from'
          '          PAR_REL_PERIODS prper'
          '        where'
          
            '          (prper.PARTNER_CODE = %PAR_REL_PERIOD_EXISTANCE_PARTNE' +
            'R_CODE[%1 ~ %2 ~ %4]) and'
          '          (prper.BORDER_REL_TYPE_CODE = %2) and'
          '          (%4 between prper.BEGIN_DATE and prper.END_DATE)'
          '      )'
          '  end)')
      end
      item
        Name = 'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PRODUCT'
        Strings.Strings = (
          
            '-- macro GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PRODUCT (partner_cod' +
            'e, border_rel_type_code, product_code, date, field_name, overrid' +
            'e_field_name)'
          '( case'
          '    when'
          '      (exists '
          '        ( select'
          '            1'
          '          from'
          '            PAR_REL_PRODUCT_PERIODS prpp'
          '          where'
          '            (prpp.PARTNER_CODE = %1) and'
          '            (prpp.BORDER_REL_TYPE_CODE = %2) and'
          '            (prpp.PRODUCT_CODE = %3) and'
          '            (%4 between prpp.BEGIN_DATE and prpp.END_DATE)'
          '        )'
          '      )'
          '      then'
          '        ( select'
          '            prpp.%5'
          '          from'
          '            PAR_REL_PRODUCT_PERIODS prpp'
          '          where'
          '            (prpp.PARTNER_CODE = %1) and'
          '            (prpp.BORDER_REL_TYPE_CODE = %2) and'
          '            (prpp.PRODUCT_CODE = %3) and'
          '            (%4 between prpp.BEGIN_DATE and prpp.END_DATE)'
          '        )'
          '        '
          '    when'
          '      (exists'
          '        ( select'
          '            1'
          '          from'
          '            PAR_REL_PRODUCT_PERIODS prpp'
          '          where'
          '            (prpp.PARTNER_CODE = %1) and'
          '            (prpp.BORDER_REL_TYPE_CODE = %2) and'
          '            (prpp.PRODUCT_CODE ='
          '              ( select'
          '                  lib_dp.COMMON_PRODUCT_CODE'
          '                from'
          '                  DEFINITE_PRODUCTS lib_dp'
          '                where'
          '                  (lib_dp.PRODUCT_CODE = %3)'
          '              )'
          '            ) and'
          '            (%4 between prpp.BEGIN_DATE and prpp.END_DATE) and'
          '            (prpp.%6 = 1)'
          '        )'
          '      )'
          '      then'
          '        ( select'
          '            prpp.%5'
          '          from'
          '            PAR_REL_PRODUCT_PERIODS prpp'
          '          where'
          '            (prpp.PARTNER_CODE = %1) and'
          '            (prpp.BORDER_REL_TYPE_CODE = %2) and'
          '            (prpp.PRODUCT_CODE ='
          '              ( select'
          '                  dp.COMMON_PRODUCT_CODE'
          '                from'
          '                  DEFINITE_PRODUCTS dp'
          '                where'
          '                  (dp.PRODUCT_CODE = %3)'
          '              )'
          '            ) and'
          '            (%4 between prpp.BEGIN_DATE and prpp.END_DATE)'
          '        )'
          '        '
          '    when'
          '      (exists '
          '        ( select'
          '            1'
          '          from'
          '            PAR_REL_PRODUCT_PERIODS prpp'
          '          where'
          '            (prpp.PARTNER_CODE ='
          '              ( select'
          '                  pr2.COMMON_PARTNER_CODE'
          '                from'
          '                  PAR_RELS pr2'
          '                where'
          '                  (pr2.PARTNER_CODE =  %1) and'
          '                  (pr2.BORDER_REL_TYPE_CODE = %2)'
          '              )'
          '            ) and'
          '            (prpp.BORDER_REL_TYPE_CODE = %2) and'
          '            (prpp.PRODUCT_CODE = %3) and'
          '            (%4 between prpp.BEGIN_DATE and prpp.END_DATE) and'
          '            (prpp.%6 = 1)'
          '        )'
          '      )'
          '      then'
          '        ( select'
          '            prpp.%5'
          '          from'
          '            PAR_REL_PRODUCT_PERIODS prpp'
          '          where'
          '            (prpp.PARTNER_CODE ='
          '              ( select'
          '                  pr2.COMMON_PARTNER_CODE'
          '                from'
          '                  PAR_RELS pr2'
          '                where'
          '                  (pr2.PARTNER_CODE =  %1) and'
          '                  (pr2.BORDER_REL_TYPE_CODE = %2)'
          '              )'
          '            ) and'
          '            (prpp.BORDER_REL_TYPE_CODE = %2) and'
          '            (prpp.PRODUCT_CODE = %3) and'
          '            (%4 between prpp.BEGIN_DATE and prpp.END_DATE)'
          '        )'
          '        '
          '    when'
          '      (exists '
          '        ( select'
          '            1'
          '          from'
          '            PAR_REL_PRODUCT_PERIODS prpp'
          '          where'
          '            (prpp.PARTNER_CODE ='
          '              ( select'
          '                  pr2.COMMON_PARTNER_CODE'
          '                from'
          '                  PAR_RELS pr2'
          '                where'
          '                  (pr2.PARTNER_CODE =  %1) and'
          '                  (pr2.BORDER_REL_TYPE_CODE = %2)'
          '              )'
          '            ) and'
          '            (prpp.BORDER_REL_TYPE_CODE = %2) and'
          '            (prpp.PRODUCT_CODE ='
          '              ( select'
          '                  dp.COMMON_PRODUCT_CODE'
          '                from'
          '                  DEFINITE_PRODUCTS dp'
          '                where'
          '                  (dp.PRODUCT_CODE = %3)'
          '              )'
          '            ) and'
          '            (%4 between prpp.BEGIN_DATE and prpp.END_DATE) and'
          '            (prpp.%6 = 1)'
          '        )'
          '      )'
          '      then'
          '        ( select'
          '            prpp.%5'
          '          from'
          '            PAR_REL_PRODUCT_PERIODS prpp'
          '          where'
          '            (prpp.PARTNER_CODE ='
          '              ( select'
          '                  pr2.COMMON_PARTNER_CODE'
          '                from'
          '                  PAR_RELS pr2'
          '                where'
          '                  (pr2.PARTNER_CODE =  %1) and'
          '                  (pr2.BORDER_REL_TYPE_CODE = %2)'
          '              )'
          '            ) and'
          '            (prpp.BORDER_REL_TYPE_CODE = %2) and'
          '            (prpp.PRODUCT_CODE ='
          '              ( select'
          '                  dp.COMMON_PRODUCT_CODE'
          '                from'
          '                  DEFINITE_PRODUCTS dp'
          '                where'
          '                  (dp.PRODUCT_CODE = %3)'
          '              )'
          '            ) and'
          '            (%4 between prpp.BEGIN_DATE and prpp.END_DATE)'
          '        )'
          ''
          '    else'
          '        ( select'
          '            ppbr.%5'
          '          from'
          '            PRODUCT_PERIODS pper,'
          '            PRODUCT_PERIOD_BORDER_RELS ppbr'
          '          where'
          '            (pper.PRODUCT_CODE = ppbr.PRODUCT_CODE) and'
          
            '            (pper.PRODUCT_PERIOD_CODE = ppbr.PRODUCT_PERIOD_CODE' +
            ') and'
          '            (ppbr.BORDER_REL_TYPE_CODE = %2) and'
          
            '            (pper.PRODUCT_CODE = %PRODUCT_PERIOD_EXISTANCE_PRODU' +
            'CT_CODE[%3 ~ %4]) and'
          '            (%4 between pper.BEGIN_DATE and pper.END_DATE)'
          '        )'
          '  end)')
      end
      item
        Name = 'cc_FIRM'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'cc_PERSON'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'cc_CUMULATIVE'
        Strings.Strings = (
          '3')
      end
      item
        Name = 'cc_COMMON'
        Strings.Strings = (
          '4')
      end
      item
        Name = 'FIN_ORDER_STATUS'
        Strings.Strings = (
          'case'
          '  when (%1.ANNUL_EMPLOYEE_CODE is not null) then'
          '    7'
          '  when (%1.CLOSE_EMPLOYEE_CODE is not null) then'
          '    6'
          '  when'
          '    exists('
          '      select'
          '        1'
          '      from'
          '        REAL_FIN_MODEL_LINES library_rfml'
          '      where'
          '        (library_rfml.FIN_ORDER_CODE = %1.FIN_ORDER_CODE) and'
          '        (library_rfml.ANNUL_EMPLOYEE_CODE is null)'
          '    ) and'
          '    not exists('
          '      select'
          '    /*+ORDERED*/'
          '        1'
          '      from'
          '        REAL_FIN_MODEL_LINES library_rfml,'
          '        PLANNED_STORE_DEALS library_psd'
          '      where'
          '        (library_rfml.FIN_ORDER_CODE = %1.FIN_ORDER_CODE) and'
          
            '        (library_rfml.RFML_OBJECT_BRANCH_CODE = library_psd.BND_' +
            'PROCESS_OBJECT_BRANCH_CODE) and'
          
            '        (library_rfml.RFML_OBJECT_CODE = library_psd.BND_PROCESS' +
            '_OBJECT_CODE) and'
          '        (library_rfml.ANNUL_EMPLOYEE_CODE is null) and'
          '        (library_psd.COMPLETED_QUANTITY <> library_psd.QUANTITY)'
          '    ) then'
          '    5'
          '  when'
          '    exists('
          '      select'
          '        1'
          '      from'
          '        REAL_FIN_MODEL_LINES library_rfml,'
          '        STORE_DEALS library_sd'
          '      where'
          '        (library_rfml.FIN_ORDER_CODE = %1.FIN_ORDER_CODE) and'
          
            '        (library_rfml.RFML_OBJECT_BRANCH_CODE = library_sd.BND_P' +
            'ROCESS_OBJECT_BRANCH_CODE) and'
          
            '        (library_rfml.RFML_OBJECT_CODE = library_sd.BND_PROCESS_' +
            'OBJECT_CODE) and'
          '        (library_rfml.ANNUL_EMPLOYEE_CODE is null) and'
          '        (library_sd.STORNO_EMPLOYEE_CODE is null)'
          '    ) then'
          '    4'
          '  when'
          '    (%1.ACTIVATE_EMPLOYEE_CODE is not null) and'
          '    ( ( select'
          '          Min(library_psd.STORE_DEAL_BEGIN_DATE)'
          '        from'
          '          REAL_FIN_MODEL_LINES library_rfml,'
          '          PLANNED_STORE_DEALS library_psd'
          '        where'
          
            '          (library_psd.BND_PROCESS_OBJECT_BRANCH_CODE = library_' +
            'rfml.RFML_OBJECT_BRANCH_CODE) and'
          
            '          (library_psd.BND_PROCESS_OBJECT_CODE = library_rfml.RF' +
            'ML_OBJECT_CODE) and'
          '        '
          '          (library_rfml.FIN_ORDER_CODE = %1.FIN_ORDER_CODE) and'
          '          (library_rfml.ANNUL_EMPLOYEE_CODE is null)'
          '      ) < ContextDate'
          '    ) then'
          '    3'
          '  when (%1.ACTIVATE_EMPLOYEE_CODE is not null) then'
          '    2'
          '  when (%1.FIN_ORDER_CODE is not null) then'
          '    1 '
          '  else'
          '    null'
          'end')
      end
      item
        Name = 'dowdpct_LOCAL'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'dowdpct_LOCAL_AND_DESCENDANTS'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'dowdpct_ANCESTOR'
        Strings.Strings = (
          '3')
      end
      item
        Name = 'owl_EXECUTING'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'owl_MANAGING'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'owm_EXPLOITATION'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'owm_SERVICE'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'PROFESSION_FULL_NO'
        Strings.Strings = (
          'Decode('
          '  %1,'
          '  1000000,'
          '  '#39'0.'#39','
          '  ( select'
          
            '      Reverse(Sys_Connect_By_Path(Reverse(To_Char(library_p.PROF' +
            'ESSION_LOCAL_NO)), '#39'.'#39'))'
          '    from'
          '      PROFESSIONS library_p'
          '    where'
          '      (library_p.PARENT_PROFESSION_CODE = 1000000)'
          '    start with'
          '      (library_p.PROFESSION_CODE = %1)'
          '    connect by'
          
            '      (library_p.PROFESSION_CODE = prior library_p.PARENT_PROFES' +
            'SION_CODE)'
          '  )'
          ')'
          '')
      end
      item
        Name = 'PROFESSION_FORMATTED_FULL_NO'
        Strings.Strings = (
          'Decode('
          '  %1,'
          '  1000000,'
          '  '#39'0.'#39','
          '  ( select'
          '      Reverse('
          '        Sys_Connect_By_Path('
          '          Reverse('
          '            LPad('
          '              To_Char(library_p2.PROFESSION_LOCAL_NO),'
          '              10,'
          '              '#39'0'#39
          '            )'
          '          ),'
          '          '#39'.'#39
          '        )'
          '      )'
          '    from'
          '      PROFESSIONS library_p2'
          '    where'
          '      (library_p2.PARENT_PROFESSION_CODE = 1000000)'
          '    start with'
          '      (library_p2.PROFESSION_CODE = %1)'
          '    connect by'
          
            '      (library_p2.PROFESSION_CODE = prior library_p2.PARENT_PROF' +
            'ESSION_CODE)'
          '  )'
          ')'
          '')
      end
      item
        Name = 'sdt_EXPORT'
        Strings.Strings = (
          '8')
      end
      item
        Name = 'st_STRAIGHT'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'st_REVERSE'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'IS_PSD_PRICE_FROM_DELIVERY_EX'
        Strings.Strings = (
          '-- macro IS_PSD_PRICE_FROM_DELIVERY_EX (pper)'
          '( select'
          '    Coalesce('
          '      Min(lib_pdo.IS_PSD_PRICE_FROM_DELIVERY) keep '
          '      (dense_rank last order by'
          '        ( select '
          '            Count(*) '
          '          from '
          '            PRODUCT_RELATIONS lib_pr2 '
          '          where '
          
            '            (lib_pr2.DESCENDANT_PRODUCT_CODE = lib_pr.ANCESTOR_P' +
            'RODUCT_CODE) '
          '        ),'
          '        ( select '
          '            Count(*) '
          '          from '
          '            DEPT_RELATIONS lib_dr2 '
          '          where '
          
            '            (lib_dr2.DESCENDANT_DEPT_CODE = lib_dr.ANCESTOR_DEPT' +
            '_CODE) '
          '        )'
          '      ),'
          '      %1.IS_PSD_PRICE_FROM_DELIVERY'
          '    )      '
          ''
          '  from'
          '    PRODUCT_RELATIONS lib_pr,'
          '    DEPT_RELATIONS lib_dr,'
          '    PRODUCT_DEPT_OPTIONS lib_pdo'
          '      '
          '  where'
          '    (lib_pr.DESCENDANT_PRODUCT_CODE = %1.PRODUCT_CODE) and'
          '        '
          
            '    (lib_dr.DESCENDANT_DEPT_CODE = LoginContext.CurrentDeptCode)' +
            ' and'
          '        '
          '    (lib_pdo.PRODUCT_CODE = lib_pr.ANCESTOR_PRODUCT_CODE) and'
          '    (lib_pdo.DEPT_CODE = lib_dr.ANCESTOR_DEPT_CODE) and'
          '    (lib_pdo.IS_PSD_PRICE_FROM_DELIVERY is not null)'
          ')')
      end
      item
        Name = 'ML_STATE'
        Strings.Strings = (
          'case'
          '  when (%1.ANNUL_EMPLOYEE_CODE is not null) then'
          '    13'
          
            '  when (%1.FINISH_EMPLOYEE_CODE is not null) and (%2.ML_OBJECT_B' +
            'RANCH_CODE is null) then'
          '    12'
          
            '  when (%2.IS_ARCHIVED = 1) and (%1.FINISH_EMPLOYEE_CODE is not ' +
            'null) then'
          '    11'
          
            '  when (%2.IS_ARCHIVED = 1) and (%1.FINISH_EMPLOYEE_CODE is null' +
            ') then'
          '    10'
          
            '  when (%2.CLOSE_EMPLOYEE_CODE is not null) and (%1.FINISH_EMPLO' +
            'YEE_CODE is not null) then'
          '    9'
          
            '  when (%2.CLOSE_EMPLOYEE_CODE is not null) and (%1.FINISH_EMPLO' +
            'YEE_CODE is null) then'
          '    8'
          '  when'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          PLANNED_STORE_DEALS library_psd'
          '        where'
          
            '          (library_psd.BND_PROCESS_OBJECT_BRANCH_CODE = %2.BND_P' +
            'ROCESS_OBJECT_BRANCH_CODE) and'
          
            '          (library_psd.BND_PROCESS_OBJECT_CODE = %2.BND_PROCESS_' +
            'OBJECT_CODE) and'
          
            '          (library_psd.PRODUCT_CODE = %2.RESULT_PRODUCT_CODE) an' +
            'd'
          '          (library_psd.IN_OUT = 1) and'
          '          (library_psd.IS_PLANNED_MANUALLY = 0) and'
          '          (library_psd.BND_PROCESS_CODE <> 110) and'
          '          (library_psd.IS_ACTIVE = 0)'
          '      )'
          '    ) and'
          '    ( (%1.TRANSIENT_STATUS_CODE <> 2) or'
          '      not exists('
          '        select'
          '          1'
          '        from'
          '          PRODUCTION_ORDER_TYPES library_pot,'
          '          PROD_ORDER_BASE_ROLES library_pobr'
          '        where'
          
            '          (library_pot.PRODUCTION_ORDER_TYPE_CODE = %1.PRODUCTIO' +
            'N_ORDER_TYPE_CODE) and'
          
            '          (library_pobr.PROD_ORDER_BASE_ROLE_CODE = library_pot.' +
            'PROD_ORDER_BASE_ROLE_CODE) and'
          '          (library_pobr.IS_REVERSIBLE = 1)'
          '      ) or'
          '      not exists('
          '        select'
          '          1'
          '        from'
          '          MATERIAL_LIST_LINES library_mll,'
          '          PLANNED_STORE_DEALS library_psd'
          '        where'
          
            '          (library_mll.ML_OBJECT_BRANCH_CODE = %2.ML_OBJECT_BRAN' +
            'CH_CODE) and'
          '          (library_mll.ML_OBJECT_CODE = %2.ML_OBJECT_CODE) and'
          ''
          
            '          (library_psd.BND_PROCESS_OBJECT_BRANCH_CODE = library_' +
            'mll.MLL_OBJECT_BRANCH_CODE) and'
          
            '          (library_psd.BND_PROCESS_OBJECT_CODE = library_mll.MLL' +
            '_OBJECT_CODE) and'
          ''
          '          (library_mll.ANNUL_EMPLOYEE_CODE is null) and'
          '          (library_psd.ANNUL_EMPLOYEE_CODE is null) and'
          '          (library_psd.IS_ACTIVE = 1) and'
          '          (library_psd.IN_OUT = 1)'
          '      )'
          '    ) and'
          '    ( (%1.IS_AUTO_COMPLETIVE = 0) or'
          '      ('
          '        Coalesce('
          '          ('
          '            select'
          '              1 - Sign(Sum(library_psd.REMAINING_QUANTITY))'
          '            from'
          '              MATERIAL_LIST_LINES library_mll,'
          '              PLANNED_STORE_DEALS library_psd'
          '            where'
          
            '              (library_mll.ML_OBJECT_BRANCH_CODE = %2.ML_OBJECT_' +
            'BRANCH_CODE) and'
          
            '              (library_mll.ML_OBJECT_CODE = %2.ML_OBJECT_CODE) a' +
            'nd'
          ''
          
            '              (library_mll.MLL_OBJECT_BRANCH_CODE = library_psd.' +
            'BND_PROCESS_OBJECT_BRANCH_CODE) and'
          
            '              (library_mll.MLL_OBJECT_CODE = library_psd.BND_PRO' +
            'CESS_OBJECT_CODE) and'
          ''
          '              (library_mll.IS_FOR_SINGLE_USE = 0) and'
          '              (library_psd.IN_OUT = 1) and'
          '              (library_psd.ANNUL_EMPLOYEE_CODE is null)'
          '          ),'
          '          1'
          '        ) = 1  -- IS_BACKWARD_AUTO_COMPLETED'
          '      )'
          '    ) then'
          '    7'
          '  when'
          '    ( (%2.LIMITING_EMPLOYEE_CODE is not null) or'
          
            '      ( (%1.MODEL_DEVELOPMENT_TYPE_CODE = %mdt_WITHOUT_MODEL) an' +
            'd'
          '        (%2.ML_OBJECT_BRANCH_CODE is null) and'
          '        ( ( (%1.PRODUCTION_START_PLAN_DATE is not null) and'
          '            (%1.PRODUCTION_START_PLAN_DATE >= ContextDate)'
          '          ) or'
          '          (exists'
          '            ( select'
          '               1'
          '             from'
          '               STORE_DEALS library_sd'
          '             where'
          
            '               (library_sd.BND_PROCESS_OBJECT_BRANCH_CODE = %1.S' +
            'ALE_OBJECT_BRANCH_CODE) and'
          
            '               (library_sd.BND_PROCESS_OBJECT_CODE = %1.SALE_OBJ' +
            'ECT_CODE) and'
          '               (library_sd.IN_OUT = -1) and'
          '               (library_sd.STORNO_EMPLOYEE_CODE is null)'
          '            )'
          '          )'
          '        )'
          '      )'
          '    ) then'
          '    6'
          '  when'
          '    ('
          '      (%2.ML_OBJECT_BRANCH_CODE is not null) and'
          '      ( ( select '
          '            Min(library_d2.THE_DATE)'
          '          from '
          '            THE_DATES library_d1,'
          '            THE_DATES library_d2'
          '          where '
          '            (library_d1.THE_DATE = ContextDate - 1) and'
          '            ( library_d2.ACCUMULATED_WORKDAYS = '
          '                library_d1.ACCUMULATED_WORKDAYS + '
          
            '                (select co.ML_LIMITING_WORKDAYS from COMMON_OPTI' +
            'ONS co where (co.CODE = 1))'
          '            )'
          
            '        ) >= %ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_CODE~' +
            ' ml.ML_OBJECT_CODE]'
          '      )'
          '    ) then'
          '    5'
          '  when'
          '    ( (%2.ML_OBJECT_BRANCH_CODE is not null) or'
          
            '      ( (%1.MODEL_DEVELOPMENT_TYPE_CODE = %mdt_WITHOUT_MODEL) an' +
            'd'
          '        (%2.ML_OBJECT_BRANCH_CODE is null) and'
          '        (%1.OKIDU_EMPLOYEE_CODE is not null) and'
          '        (%1.PRODUCTION_DEPT_CODE is not null)'
          '      )'
          '    ) then'
          '    4'
          
            '  when (%1.OKIDU_EMPLOYEE_CODE is not null) and (%1.PRODUCTION_D' +
            'EPT_CODE is not null) then'
          '    3'
          '  when (%1.OKIDU_EMPLOYEE_CODE is not null) then'
          '    2'
          '  else'
          '    1'
          'end')
      end>
    Left = 48
    Top = 15
  end
  object mshBudgetMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'BOIO_ACCOUNT_TOTAL_PRICE'
        Strings.Strings = (
          'Decode('
          '  %1.BOI_ORDER_TYPE_CODE,'
          ''
          '  1,'
          '  ( select'
          '      Sum('
          '        lib_sd.TOTAL_PRICE *'
          '        ( select'
          '            lib_cr.FIXING'
          '          from'
          '            CURRENCY_RATES lib_cr'
          '          where'
          '            (lib_cr.CURRENCY_CODE = lib_sd.CURRENCY_CODE) and'
          
            '            (lib_cr.RATE_DATE = Least(Coalesce(lib_sd.STORE_DEAL' +
            '_DATE, ContextDate), ContextDate))'
          '        )'
          '      )'
          '    from'
          '      STORE_DEALS lib_sd'
          '    where'
          '      (lib_sd.STORNO_EMPLOYEE_CODE is null) and'
          '      (lib_sd.IN_OUT = -1) and'
          
            '      (lib_sd.BND_PROCESS_OBJECT_BRANCH_CODE = %1.BOI_ORDER_OBJE' +
            'CT_BRANCH_CODE) and'
          
            '      (lib_sd.BND_PROCESS_OBJECT_CODE = %1.BOI_ORDER_OBJECT_CODE' +
            ')'
          '  ),'
          ''
          '  2,'
          '  ( %1.ACCOUNT_TOTAL_PRICE *'
          '    ( select'
          '        lib_cr.FIXING'
          '      from'
          '        CURRENCY_RATES lib_cr'
          '      where'
          '        (lib_cr.CURRENCY_CODE = %1.CURRENCY_CODE) and'
          
            '        (lib_cr.RATE_DATE = Least(Coalesce(%1.ACCOUNT_DATE, Cont' +
            'extDate), ContextDate))'
          '    )'
          '  ),'
          ''
          '  3,'
          '  %1.ACCOUNT_TOTAL_PRICE,'
          ''
          '  4,'
          '  Decode('
          '    ( select'
          '        lib_boi.BUDGET_ORDER_ITEM_TYPE_CODE'
          '      from'
          '        BUDGET_ORDER_ITEMS lib_boi'
          '      where'
          
            '        (lib_boi.BUDGET_ORDER_BRANCH_CODE = %1.BUDGET_ORDER_BRAN' +
            'CH_CODE) and'
          '        (lib_boi.BUDGET_ORDER_CODE = %1.BUDGET_ORDER_CODE) and'
          
            '        (lib_boi.BUDGET_ORDER_ITEM_CODE = %1.BUDGET_ORDER_ITEM_C' +
            'ODE)'
          '    ),'
          '    1,'
          '    ( select'
          '        Sum('
          '          lib_sd.TOTAL_PRICE *'
          '          ( select'
          '              lib_cr.FIXING'
          '            from'
          '              CURRENCY_RATES lib_cr'
          '            where'
          '              (lib_cr.CURRENCY_CODE = lib_sd.CURRENCY_CODE) and'
          
            '              (lib_cr.RATE_DATE = Least(Coalesce(lib_sd.STORE_DE' +
            'AL_DATE, ContextDate), ContextDate))'
          '          )'
          '        )'
          '      from'
          '        STORE_DEALS lib_sd'
          '      where'
          
            '        (lib_sd.BND_PROCESS_OBJECT_BRANCH_CODE = %1.DELIVERY_OBJ' +
            'ECT_BRANCH_CODE) and'
          
            '        (lib_sd.BND_PROCESS_OBJECT_CODE = %1.DELIVERY_OBJECT_COD' +
            'E) and'
          '        (lib_sd.STORNO_EMPLOYEE_CODE is null) and'
          '        (lib_sd.IN_OUT = 1)'
          '    ),'
          '    %1.ACCOUNT_TOTAL_PRICE'
          '  )'
          ')')
      end
      item
        Name = 'BOIO_PLAN_TOTAL_PRICE'
        Strings.Strings = (
          'Decode('
          '  %1.BOI_ORDER_TYPE_CODE,'
          ''
          '  1,'
          '  ( Coalesce(%1.QUANTITY, 0) *'
          '    Coalesce('
          
            '      %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[%1.PRODUCT_CODE ~ %1.PL' +
            'AN_DATE],'
          '      0'
          '    )'
          '  ),'
          ''
          '  2,'
          '  ( %1.PLAN_TOTAL_PRICE *'
          '    ( select'
          '        lib_cr.FIXING'
          '      from'
          '        CURRENCY_RATES lib_cr'
          '      where'
          '        (lib_cr.CURRENCY_CODE = %1.CURRENCY_CODE) and'
          
            '        (lib_cr.RATE_DATE = Least(Coalesce(%1.PLAN_DATE, Context' +
            'Date), ContextDate))'
          '    )'
          '  ),'
          ''
          '  3,'
          '  %1.PLAN_TOTAL_PRICE,'
          ''
          '  4,'
          '  Decode('
          '    ( select'
          '        lib_boi.BUDGET_ORDER_ITEM_TYPE_CODE'
          '      from'
          '        BUDGET_ORDER_ITEMS lib_boi'
          '      where'
          
            '        (lib_boi.BUDGET_ORDER_BRANCH_CODE = %1.BUDGET_ORDER_BRAN' +
            'CH_CODE) and'
          '        (lib_boi.BUDGET_ORDER_CODE = %1.BUDGET_ORDER_CODE) and'
          
            '        (lib_boi.BUDGET_ORDER_ITEM_CODE = %1.BUDGET_ORDER_ITEM_C' +
            'ODE)'
          '    ),'
          '    1,'
          '    ( select'
          '        lib_dp.TOTAL_PRICE *'
          '        ( select'
          '            lib_cr.FIXING'
          '          from'
          '            CURRENCY_RATES lib_cr'
          '          where'
          '            (lib_cr.CURRENCY_CODE = lib_dp.CURRENCY_CODE) and'
          
            '            (lib_cr.RATE_DATE = Least(Coalesce(lib_dp.DELIVERY_D' +
            'ATE, ContextDate), ContextDate))'
          '        )'
          '      from'
          '        DELIVERY_CONTRACTS lib_dc,'
          '        DELIVERY_PROJECTS lib_dp'
          '      where'
          
            '        (lib_dc.DCD_OBJECT_BRANCH_CODE = lib_dp.DCD_OBJECT_BRANC' +
            'H_CODE) and'
          '        (lib_dc.DCD_OBJECT_CODE = lib_dp.DCD_OBJECT_CODE) and'
          
            '        (lib_dc.DELIVERY_PROJECT_CODE = lib_dp.DELIVERY_PROJECT_' +
            'CODE) and'
          ''
          
            '        (lib_dc.DELIVERY_OBJECT_BRANCH_CODE = %1.DELIVERY_OBJECT' +
            '_BRANCH_CODE) and'
          '        (lib_dc.DELIVERY_OBJECT_CODE = %1.DELIVERY_OBJECT_CODE)'
          '    ),'
          '    %1.PLAN_TOTAL_PRICE'
          '  )'
          ')')
      end
      item
        Name = 'boit_DELIVERIES_INTRODUCING'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'boit_INTERNAL_INTRODUCING'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'boit_EXPENSE'
        Strings.Strings = (
          '3')
      end
      item
        Name = 'boit_EXPLOITATION'
        Strings.Strings = (
          '4')
      end
      item
        Name = 'otps_ENGINEERING'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'otps_PRODUCTION'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'boit_set_INVESTMENT_INCREASE'
        Strings.Strings = (
          
            '(%boit_DELIVERIES_INTRODUCING, %boit_INTERNAL_INTRODUCING, %boit' +
            '_EXPENSE)')
      end
      item
        Name = 'otps_set_ALL'
        Strings.Strings = (
          '(%otps_ENGINEERING, %otps_PRODUCTION)')
      end
      item
        Name = 'boc_INVEST'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'boc_EXPENSE'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'boiot_PRODUCT'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'boiot_COMPANY'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'boiot_WASTE'
        Strings.Strings = (
          '3')
      end
      item
        Name = 'boiot_MARKING'
        Strings.Strings = (
          '4')
      end>
    Left = 48
    Top = 72
  end
  object DSServer: TDSServer
    OnConnect = DSServerConnect
    OnDisconnect = DSServerDisconnect
    AutoStart = False
    OnTrace = DSServerTrace
    Left = 192
    Top = 16
  end
  object dsscCommon: TDSServerClass
    OnGetClass = dsscCommonGetClass
    OnCreateInstance = dsscCommonCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 192
    Top = 88
  end
  object dsscCompanies: TDSServerClass
    OnGetClass = dsscCompaniesGetClass
    OnCreateInstance = dsscCompaniesCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 296
    Top = 88
  end
  object dsscCompany: TDSServerClass
    OnGetClass = dsscCompanyGetClass
    OnCreateInstance = dsscCompanyCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 400
    Top = 88
  end
  object dsscDeficit: TDSServerClass
    OnGetClass = dsscDeficitGetClass
    OnCreateInstance = dsscDeficitCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 504
    Top = 88
  end
  object dsscDeliveries: TDSServerClass
    OnGetClass = dsscDeliveriesGetClass
    OnCreateInstance = dsscDeliveriesCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 608
    Top = 88
  end
  object dsscDeptsTree: TDSServerClass
    OnGetClass = dsscDeptsTreeGetClass
    OnCreateInstance = dsscDeptsTreeCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 712
    Top = 88
  end
  object dsscDeptsTreeEditor: TDSServerClass
    OnGetClass = dsscDeptsTreeEditorGetClass
    OnCreateInstance = dsscDeptsTreeEditorCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 816
    Top = 88
  end
  object dsscGroupSales: TDSServerClass
    OnGetClass = dsscGroupSalesGetClass
    OnCreateInstance = dsscGroupSalesCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 192
    Top = 144
  end
  object dsscInvoices: TDSServerClass
    OnGetClass = dsscInvoicesGetClass
    OnCreateInstance = dsscInvoicesCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 296
    Top = 144
  end
  object dsscLogin: TDSServerClass
    OnGetClass = dsscLoginGetClass
    OnCreateInstance = dsscLoginCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 400
    Top = 144
  end
  object dsscProductsTree: TDSServerClass
    OnGetClass = dsscProductsTreeGetClass
    OnCreateInstance = dsscProductsTreeCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 504
    Top = 144
  end
  object dsscProductQuantitiesTree: TDSServerClass
    OnGetClass = dsscProductQuantitiesTreeGetClass
    OnCreateInstance = dsscProductQuantitiesTreeCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 608
    Top = 144
  end
  object dsscProductsTreeEditor: TDSServerClass
    OnGetClass = dsscProductsTreeEditorGetClass
    OnCreateInstance = dsscProductsTreeEditorCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 712
    Top = 144
  end
  object dsscSaleOrders: TDSServerClass
    OnGetClass = dsscSaleOrdersGetClass
    OnCreateInstance = dsscSaleOrdersCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 816
    Top = 144
  end
  object dsscParRelProducts: TDSServerClass
    OnGetClass = dsscParRelProductsGetClass
    OnCreateInstance = dsscParRelProductsCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 192
    Top = 200
  end
  object dsscSales: TDSServerClass
    OnGetClass = dsscSalesGetClass
    OnCreateInstance = dsscSalesCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 296
    Top = 200
  end
  object dsscSalesCommon: TDSServerClass
    OnGetClass = dsscSalesCommonGetClass
    OnCreateInstance = dsscSalesCommonCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 400
    Top = 200
  end
  object dsscSpecifications: TDSServerClass
    OnGetClass = dsscSpecificationsGetClass
    OnCreateInstance = dsscSpecificationsCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 504
    Top = 200
  end
  object dsscStore: TDSServerClass
    OnGetClass = dsscStoreGetClass
    OnCreateInstance = dsscStoreCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 608
    Top = 200
  end
  object dsscStoreRequests: TDSServerClass
    OnGetClass = dsscStoreRequestsGetClass
    OnCreateInstance = dsscStoreRequestsCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 712
    Top = 200
  end
  object dsscVIM: TDSServerClass
    OnGetClass = dsscVIMGetClass
    OnCreateInstance = dsscVIMCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 816
    Top = 200
  end
  object dsscAdmin: TDSServerClass
    OnGetClass = dsscAdminGetClass
    OnCreateInstance = dsscAdminCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 192
    Top = 256
  end
  object dsscSaleReports: TDSServerClass
    OnGetClass = dsscSaleReportsGetClass
    OnCreateInstance = dsscSaleReportsCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 296
    Top = 256
  end
  object dsscModelMovements: TDSServerClass
    OnGetClass = dsscModelMovementsGetClass
    OnCreateInstance = dsscModelMovementsCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 400
    Top = 256
  end
  object dsscModelChanges: TDSServerClass
    OnGetClass = dsscModelChangesGetClass
    OnCreateInstance = dsscModelChangesCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 504
    Top = 256
  end
  object dsscModelReports: TDSServerClass
    OnGetClass = dsscModelReportsGetClass
    OnCreateInstance = dsscModelReportsCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 608
    Top = 256
  end
  object dsscNonDbUtils: TDSServerClass
    OnGetClass = dsscNonDbUtilsGetClass
    OnCreateInstance = dsscNonDbUtilsCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 712
    Top = 256
  end
  object dsscDoc: TDSServerClass
    OnGetClass = dsscDocGetClass
    OnCreateInstance = dsscDocCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 816
    Top = 256
  end
  object dsscFilter: TDSServerClass
    OnGetClass = dsscFilterGetClass
    OnCreateInstance = dsscFilterCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 192
    Top = 312
  end
  object dsscProductionProductsTree: TDSServerClass
    OnGetClass = dsscProductionProductsTreeGetClass
    OnCreateInstance = dsscProductionProductsTreeCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 296
    Top = 312
  end
  object dsscNeeds: TDSServerClass
    OnGetClass = dsscNeedsGetClass
    OnCreateInstance = dsscNeedsCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 400
    Top = 312
  end
  object dsscExtensions: TDSServerClass
    OnGetClass = dsscExtensionsGetClass
    OnCreateInstance = dsscExtensionsCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 504
    Top = 312
  end
  object dsscProductTreeNodeFilter: TDSServerClass
    OnGetClass = dsscProductTreeNodeFilterGetClass
    OnCreateInstance = dsscProductTreeNodeFilterCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 608
    Top = 312
  end
  object dsscParamProductTreeNodeFilter: TDSServerClass
    OnGetClass = dsscParamProductTreeNodeFilterGetClass
    OnCreateInstance = dsscParamProductTreeNodeFilterCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 712
    Top = 312
  end
  object dsscDeptTreeNodeFilter: TDSServerClass
    OnGetClass = dsscDeptTreeNodeFilterGetClass
    OnCreateInstance = dsscDeptTreeNodeFilterCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 816
    Top = 312
  end
  object dsscBaseGroups: TDSServerClass
    OnGetClass = dsscBaseGroupsGetClass
    OnCreateInstance = dsscBaseGroupsCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 192
    Top = 368
  end
  object dsscHumanResource: TDSServerClass
    OnGetClass = dsscHumanResourceGetClass
    OnCreateInstance = dsscHumanResourceCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 296
    Top = 368
  end
  object dsscCapacity: TDSServerClass
    OnGetClass = dsscCapacityGetClass
    OnCreateInstance = dsscCapacityCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 400
    Top = 368
  end
  object dsscBudget: TDSServerClass
    OnGetClass = dsscBudgetGetClass
    OnCreateInstance = dsscBudgetCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 504
    Top = 368
  end
  object dsscDocItemViewGenerators: TDSServerClass
    OnGetClass = dsscDocItemViewGeneratorsGetClass
    OnCreateInstance = dsscDocItemViewGeneratorsCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 608
    Top = 368
  end
  object dsscShifts: TDSServerClass
    OnGetClass = dsscShiftsGetClass
    OnCreateInstance = dsscShiftsCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 712
    Top = 368
  end
  object dsscDocXML: TDSServerClass
    OnGetClass = dsscDocXMLGetClass
    OnCreateInstance = dsscDocXMLCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 816
    Top = 368
  end
  object dsscEngineering: TDSServerClass
    OnGetClass = dsscEngineeringGetClass
    OnCreateInstance = dsscEngineeringCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 192
    Top = 424
  end
  object dsscEmployeeAvailability: TDSServerClass
    OnGetClass = dsscEmployeeAvailabilityGetClass
    OnCreateInstance = dsscEmployeeAvailabilityCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 296
    Top = 424
  end
  object dsscOrganisationTasks: TDSServerClass
    OnGetClass = dsscOrganisationTasksGetClass
    OnCreateInstance = dsscOrganisationTasksCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 400
    Top = 424
  end
  object dsscExceptEvents: TDSServerClass
    OnGetClass = dsscExceptEventsGetClass
    OnCreateInstance = dsscExceptEventsCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 504
    Top = 424
  end
  object dsscFinance: TDSServerClass
    OnGetClass = dsscFinanceGetClass
    OnCreateInstance = dsscFinanceCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 608
    Top = 424
  end
  object dsscProcesses: TDSServerClass
    OnGetClass = dsscProcessesGetClass
    OnCreateInstance = dsscProcessesCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 712
    Top = 424
  end
  object dsscXModels: TDSServerClass
    OnGetClass = dsscXModelsGetClass
    OnCreateInstance = dsscXModelsCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 816
    Top = 424
  end
  object dsscMfgReports: TDSServerClass
    OnGetClass = dsscMfgReportsGetClass
    OnCreateInstance = dsscMfgReportsCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 192
    Top = 480
  end
  object dsscSession: TDSServerClass
    OnGetClass = dsscSessionGetClass
    OnCreateInstance = dsscSessionCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 296
    Top = 480
  end
  object mshFinanceMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'RFML_DOCUMENT_IDENTIFIER'
        Strings.Strings = (
          '( select'
          '    lib_rfml.DOCUMENT_IDENTIFIER'
          '  from'
          '    REAL_FIN_MODEL_LINES lib_rfml'
          '  where'
          '    (lib_rfml.RFML_OBJECT_BRANCH_CODE = %1) and'
          '    (lib_rfml.RFML_OBJECT_CODE = %2)'
          ')')
      end
      item
        Name = 'RFML_DOCUMENT_DATE'
        Strings.Strings = (
          '( select'
          '    lib_rfml.DOCUMENT_DATE'
          '  from'
          '    REAL_FIN_MODEL_LINES lib_rfml'
          '  where'
          '    (lib_rfml.RFML_OBJECT_BRANCH_CODE = %1) and'
          '    (lib_rfml.RFML_OBJECT_CODE = %2)'
          ')')
      end>
    Left = 48
    Top = 128
  end
  object mshProcessesMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'PRC_KNOWL_FULL_NO'
        Strings.Strings = (
          'Decode('
          '  %1,'
          '  1,'
          '  '#39'0.'#39','
          '  ( select'
          
            '      Reverse(Sys_Connect_By_Path(Reverse(To_Char(library_pk.PRC' +
            '_KNOWL_LOCAL_NO)), '#39'.'#39'))'
          '    from'
          '      PRC_KNOWLS library_pk'
          '    where'
          '      (library_pk.PARENT_PRC_KNOWL_CODE = 1)'
          '    start with'
          '      (library_pk.PRC_KNOWL_CODE = %1)'
          '    connect by'
          
            '      (library_pk.PRC_KNOWL_CODE = prior library_pk.PARENT_PRC_K' +
            'NOWL_CODE)'
          '  )'
          ')')
      end
      item
        Name = 'PRC_KNOWL_FORMATTED_FULL_NO'
        Strings.Strings = (
          'Decode('
          '  %1,'
          '  1,'
          '  '#39'0.'#39','
          '  ( select'
          '      Reverse('
          '        Sys_Connect_By_Path('
          '          Reverse('
          '            LPad('
          '              To_Char(library_pk2.PRC_KNOWL_LOCAL_NO),'
          '              10,'
          '              '#39'0'#39
          '            )'
          '          ),'
          '          '#39'.'#39
          '        )'
          '      )'
          '    from'
          '      PRC_KNOWLS library_pk2'
          '    where'
          '      (library_pk2.PARENT_PRC_KNOWL_CODE = 1)'
          '    start with'
          '      (library_pk2.PRC_KNOWL_CODE = %1)'
          '    connect by'
          
            '      (library_pk2.PRC_KNOWL_CODE = prior library_pk2.PARENT_PRC' +
            '_KNOWL_CODE)'
          '  )'
          ')')
      end
      item
        Name = 'PRC_FUNC_FULL_NO'
        Strings.Strings = (
          'Decode('
          '  %1,'
          '  1,'
          '  '#39'0.'#39','
          '  ( select'
          
            '      Reverse(Sys_Connect_By_Path(Reverse(To_Char(library_pf.PRC' +
            '_FUNC_LOCAL_NO)), '#39'.'#39'))'
          '    from'
          '      PRC_FUNCS library_pf'
          '    where'
          '      (library_pf.PARENT_PRC_FUNC_CODE = 1)'
          '    start with'
          '      (library_pf.PRC_FUNC_CODE = %1)'
          '    connect by'
          
            '      (library_pf.PRC_FUNC_CODE = prior library_pf.PARENT_PRC_FU' +
            'NC_CODE)'
          '  )'
          ')'
          '')
      end
      item
        Name = 'PRC_FUNC_FORMATTED_FULL_NO'
        Strings.Strings = (
          'Decode('
          '  %1,'
          '  1,'
          '  '#39'0.'#39','
          '  ( select'
          '      Reverse('
          '        Sys_Connect_By_Path('
          '          Reverse('
          '            LPad('
          '              To_Char(library_pf2.PRC_FUNC_LOCAL_NO),'
          '              10,'
          '              '#39'0'#39
          '            )'
          '          ),'
          '          '#39'.'#39
          '        )'
          '      )'
          '    from'
          '      PRC_FUNCS library_pf2'
          '    where'
          '      (library_pf2.PARENT_PRC_FUNC_CODE = 1)'
          '    start with'
          '      (library_pf2.PRC_FUNC_CODE = %1)'
          '    connect by'
          
            '      (library_pf2.PRC_FUNC_CODE = prior library_pf2.PARENT_PRC_' +
            'FUNC_CODE)'
          '  )'
          ')')
      end
      item
        Name = 'PRC_BASE_OP_FULL_NO'
        Strings.Strings = (
          'Decode('
          '  %1,'
          '  1,'
          '  '#39'0.'#39','
          '  ( select'
          
            '      Reverse(Sys_Connect_By_Path(Reverse(To_Char(library_pbo.PR' +
            'C_BASE_OP_LOCAL_NO)), '#39'.'#39'))'
          '    from'
          '      PRC_BASE_OPS library_pbo'
          '    where'
          '      (library_pbo.PARENT_PRC_BASE_OP_CODE = 1)'
          '    start with'
          '      (library_pbo.PRC_BASE_OP_CODE = %1)'
          '    connect by'
          
            '      (library_pbo.PRC_BASE_OP_CODE = prior library_pbo.PARENT_P' +
            'RC_BASE_OP_CODE)'
          '  )'
          ')')
      end
      item
        Name = 'PRC_BASE_OP_FORMATTED_FULL_NO'
        Strings.Strings = (
          'Decode('
          '  %1,'
          '  1,'
          '  '#39'0.'#39','
          '  ( select'
          '      Reverse('
          '        Sys_Connect_By_Path('
          '          Reverse('
          '            LPad('
          '              To_Char(library_pbo2.PRC_BASE_OP_LOCAL_NO),'
          '              10,'
          '              '#39'0'#39
          '            )'
          '          ),'
          '          '#39'.'#39
          '        )'
          '      )'
          '    from'
          '      PRC_BASE_OPS library_pbo2'
          '    where'
          '      (library_pbo2.PARENT_PRC_BASE_OP_CODE = 1)'
          '    start with'
          '      (library_pbo2.PRC_BASE_OP_CODE = %1)'
          '    connect by'
          
            '      (library_pbo2.PRC_BASE_OP_CODE = prior library_pbo2.PARENT' +
            '_PRC_BASE_OP_CODE)'
          '  )'
          ')')
      end
      item
        Name = 'PRC_CONCRETE_OP_FULL_NO'
        Strings.Strings = (
          'Decode('
          '  %1,'
          '  1,'
          '  '#39'0.'#39','
          '  ( select'
          
            '      Reverse(Sys_Connect_By_Path(Reverse(To_Char(library_pco.PR' +
            'C_CONCRETE_OP_LOCAL_NO)), '#39'.'#39'))'
          '    from'
          '      PRC_CONCRETE_OPS library_pco'
          '    where'
          '      (library_pco.PARENT_PRC_CONCRETE_OP_CODE = 1)'
          '    start with'
          '      (library_pco.PRC_CONCRETE_OP_CODE = %1)'
          '    connect by'
          
            '      (library_pco.PRC_CONCRETE_OP_CODE = prior library_pco.PARE' +
            'NT_PRC_CONCRETE_OP_CODE)'
          '  )'
          ')')
      end
      item
        Name = 'PRC_CONCRETE_OP_FORMATTED_FULL_NO'
        Strings.Strings = (
          'Decode('
          '  %1,'
          '  1,'
          '  '#39'0.'#39','
          '  ( select'
          '      Reverse('
          '        Sys_Connect_By_Path('
          '          Reverse('
          '            LPad('
          '              To_Char(library_pco2.PRC_CONCRETE_OP_LOCAL_NO),'
          '              10,'
          '              '#39'0'#39
          '            )'
          '          ),'
          '          '#39'.'#39
          '        )'
          '      )'
          '    from'
          '      PRC_CONCRETE_OPS library_pco2'
          '    where'
          '      (library_pco2.PARENT_PRC_CONCRETE_OP_CODE = 1)'
          '    start with'
          '      (library_pco2.PRC_CONCRETE_OP_CODE = %1)'
          '    connect by'
          
            '      (library_pco2.PRC_CONCRETE_OP_CODE = prior library_pco2.PA' +
            'RENT_PRC_CONCRETE_OP_CODE)'
          '  )'
          ')')
      end
      item
        Name = 'PRC_ACTION_FULL_NO'
        Strings.Strings = (
          '( select'
          '    lib_pa.PRC_ACTION_NO'
          '  from'
          '    PRC_ACTIONS lib_pa'
          '  where'
          '    (lib_pa.PRC_ACTION_CODE = %1)'
          ')')
      end
      item
        Name = 'PRC_ACTION_FORMATTED_FULL_NO'
        Strings.Strings = (
          '( select'
          '    LPad(To_Char(lib_pa.PRC_ACTION_NO), 10, '#39'0'#39')'
          '  from'
          '    PRC_ACTIONS lib_pa'
          '  where'
          '    (lib_pa.PRC_ACTION_CODE = %1)'
          ')')
      end
      item
        Name = 'pls_UNMASTERED'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'pls_MASTERED'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'pls_REJECTED'
        Strings.Strings = (
          '3')
      end
      item
        Name = 'pods_GROUP_DEPT'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'pods_DESCENDANT_GROUP_DEPT'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'pods_DEFINITE_DEPT'
        Strings.Strings = (
          '3')
      end
      item
        Name = 'pods_OCCUPATION'
        Strings.Strings = (
          '4')
      end
      item
        Name = 'pods_OCCUPATION_EMPLOYEE'
        Strings.Strings = (
          '5')
      end
      item
        Name = 'pods_MASTERED_OCCUPATION_EMPLOYEE'
        Strings.Strings = (
          '6')
      end
      item
        Name = 'OE_PBA_DISTRIBUTION_STATUS_CODE'
        Strings.Strings = (
          'Coalesce('
          '  ( select'
          '      %pods_MASTERED_OCCUPATION_EMPLOYEE'
          '    from'
          '      OE_PRC_BASE_ACT_STAT_CHGS lib_oepbasc'
          '    where'
          '      (lib_oepbasc.PRC_LEARNING_STATUS_CODE = %pls_MASTERED) and'
          ''
          '      (lib_oepbasc.OCCUPATION_EMPLOYEE_CODE = %1) and'
          '      (lib_oepbasc.PRC_FUNC_CODE = %2) and'
          '      (lib_oepbasc.PRC_KNOWL_CODE = %3) and'
          '      (lib_oepbasc.PRC_BASE_OP_CODE = %4) and'
          '      (lib_oepbasc.PRC_ACTION_CODE = %5) and'
          '      (lib_oepbasc.STATUS_DATE ='
          '        ( select'
          '            Max(lib_oepbasc2.STATUS_DATE)'
          '          from'
          '            OE_PRC_BASE_ACT_STAT_CHGS lib_oepbasc2'
          '          where'
          '            (lib_oepbasc2.OCCUPATION_EMPLOYEE_CODE = %1) and'
          '            (lib_oepbasc2.PRC_FUNC_CODE = %2) and'
          '            (lib_oepbasc2.PRC_KNOWL_CODE = %3) and'
          '            (lib_oepbasc2.PRC_BASE_OP_CODE = %4) and'
          '            (lib_oepbasc2.PRC_ACTION_CODE = %5) and'
          '            (lib_oepbasc2.STATUS_DATE <= %6)'
          '        )'
          '      )'
          '  ),'
          '  %pods_OCCUPATION_EMPLOYEE'
          ')')
      end
      item
        Name = 'OCC_PBA_DISTRIBUTION_STATUS_CODE'
        Strings.Strings = (
          'Coalesce('
          '  ( select'
          
            '      Min(%OE_PBA_DISTRIBUTION_STATUS_CODE[lib_oe.OCCUPATION_EMP' +
            'LOYEE_CODE~ %2~ %3~ %4~ %5~ %6])'
          '    from'
          '      OE_PRC_BASE_ACTIONS lib_oepba,'
          '      OCCUPATION_EMPLOYEES lib_oe'
          '    where'
          
            '      (lib_oepba.OCCUPATION_EMPLOYEE_CODE = lib_oe.OCCUPATION_EM' +
            'PLOYEE_CODE) and'
          ''
          '      (lib_oepba.OCCUPATION_CODE = %1) and'
          '      (lib_oepba.PRC_FUNC_CODE = %2) and'
          '      (lib_oepba.PRC_KNOWL_CODE = %3) and'
          '      (lib_oepba.PRC_BASE_OP_CODE = %4) and'
          '      (lib_oepba.PRC_ACTION_CODE = %5) and'
          ''
          
            '      (%6 between lib_oe.ASSIGNMENT_BEGIN_DATE and lib_oe.ASSIGN' +
            'MENT_END_DATE)'
          '  ),'
          '  %pods_OCCUPATION'
          ')')
      end
      item
        Name = 'DEFINITE_DEPT_PBA_DISTRIBUTION_STATUS_CODE'
        Strings.Strings = (
          'Coalesce('
          '  ( select'
          
            '      Min(%OCC_PBA_DISTRIBUTION_STATUS_CODE[lib_opba.OCCUPATION_' +
            'CODE~ %2~ %3~ %4~ %5~ %6])'
          '    from'
          '      OWD_PRC_BASE_ACTIONS lib_owdpba,'
          '      OCC_PRC_BASE_ACTIONS lib_opba'
          '    where'
          '      (lib_owdpba.DEPT_CODE = %1) and'
          '      (lib_owdpba.PRC_FUNC_CODE = %2) and'
          '      (lib_owdpba.PRC_KNOWL_CODE = %3) and'
          '      (lib_owdpba.PRC_BASE_OP_CODE = %4) and'
          '      (lib_owdpba.PRC_ACTION_CODE = %5) and'
          ''
          
            '      (lib_opba.OCCUPATION_CODE = lib_owdpba.OCCUPATION_CODE) an' +
            'd'
          '      (lib_opba.PRC_FUNC_CODE = lib_owdpba.PRC_FUNC_CODE) and'
          '      (lib_opba.PRC_KNOWL_CODE = lib_owdpba.PRC_KNOWL_CODE) and'
          
            '      (lib_opba.PRC_BASE_OP_CODE = lib_owdpba.PRC_BASE_OP_CODE) ' +
            'and'
          '      (lib_opba.PRC_ACTION_CODE = lib_owdpba.PRC_ACTION_CODE)'
          '  ),'
          '  %pods_DEFINITE_DEPT'
          ')')
      end
      item
        Name = 'DESCENDANT_GROUP_DEPT_PBA_DISTRIBUTION_STATUS_CODE'
        Strings.Strings = (
          'Coalesce('
          '  ( select'
          
            '      Min(%DEFINITE_DEPT_PBA_DISTRIBUTION_STATUS_CODE[lib_dpba2.' +
            'DEPT_CODE~ %2~ %3~ %4~ %5~ %6])'
          '    from'
          '      DEPT_PRC_BASE_ACTIONS lib_dpba2'
          '    where'
          '      (lib_dpba2.PRC_FUNC_CODE = %2) and'
          '      (lib_dpba2.PRC_KNOWL_CODE = %3) and'
          '      (lib_dpba2.PRC_BASE_OP_CODE = %4) and'
          '      (lib_dpba2.PRC_ACTION_CODE = %5) and'
          ''
          '      (exists'
          '        ( select'
          '            1'
          '          from'
          '            DEPT_RELATIONS dr'
          '          where'
          '            (dr.ANCESTOR_DEPT_CODE = %1) and'
          '            (dr.DESCENDANT_DEPT_CODE = lib_dpba2.DEPT_CODE)'
          '        )'
          '      ) and'
          ''
          '      (exists'
          '        ( select'
          '            1'
          '          from'
          '            DEFINITE_DEPTS dd'
          '          where'
          '            (dd.DEPT_CODE = lib_dpba2.DEPT_CODE)'
          '        )'
          '      )'
          '  ),'
          '  %pods_DESCENDANT_GROUP_DEPT'
          ')')
      end
      item
        Name = 'GROUP_DEPT_PBA_DISTRIBUTION_STATUS_CODE'
        Strings.Strings = (
          'Coalesce('
          '  ( select'
          
            '      Min(%DESCENDANT_GROUP_DEPT_PBA_DISTRIBUTION_STATUS_CODE[li' +
            'b_dpba.DEPT_CODE~ %2~ %3~ %4~ %5~ %6])'
          '    from'
          '      DEPT_PRC_BASE_ACTIONS lib_dpba'
          '    where'
          '      (lib_dpba.PRC_FUNC_CODE = %2) and'
          '      (lib_dpba.PRC_KNOWL_CODE = %3) and'
          '      (lib_dpba.PRC_BASE_OP_CODE = %4) and'
          '      (lib_dpba.PRC_ACTION_CODE = %5) and'
          '      (exists'
          '        ( select'
          '            1'
          '          from'
          '            DEPT_RELATIONS lib_dr'
          '          where'
          '            (lib_dr.ANCESTOR_DEPT_CODE = %1) and'
          
            '            (lib_dr.DESCENDANT_DEPT_CODE = lib_dpba.DEPT_CODE) a' +
            'nd'
          
            '            (lib_dr.DESCENDANT_DEPT_CODE <> lib_dr.ANCESTOR_DEPT' +
            '_CODE)'
          '        )'
          '      )'
          '  ),'
          '  %pods_GROUP_DEPT'
          ')')
      end
      item
        Name = 'OE_PCA_DISTRIBUTION_STATUS_CODE'
        Strings.Strings = (
          'Coalesce('
          '  ( select'
          '      %pods_MASTERED_OCCUPATION_EMPLOYEE'
          '    from'
          '      OE_PRC_CONCRETE_ACT_STAT_CHGS lib_oepcasc'
          '    where'
          '      (lib_oepcasc.PRC_LEARNING_STATUS_CODE = %pls_MASTERED) and'
          ''
          '      (lib_oepcasc.OCCUPATION_EMPLOYEE_CODE = %1) and'
          '      (lib_oepcasc.PRC_FUNC_CODE = %2) and'
          '      (lib_oepcasc.PRC_KNOWL_CODE = %3) and'
          '      (lib_oepcasc.PRC_BASE_OP_CODE = %4) and'
          '      (lib_oepcasc.PRC_CONCRETE_OP_CODE = %5) and'
          '      (lib_oepcasc.PRC_ACTION_CODE = %6) and'
          '      (lib_oepcasc.STATUS_DATE ='
          '        ( select'
          '            Max(lib_oepcasc2.STATUS_DATE)'
          '          from'
          '            OE_PRC_CONCRETE_ACT_STAT_CHGS lib_oepcasc2'
          '          where'
          '            (lib_oepcasc2.OCCUPATION_EMPLOYEE_CODE = %1) and'
          '            (lib_oepcasc2.PRC_FUNC_CODE = %2) and'
          '            (lib_oepcasc2.PRC_KNOWL_CODE = %3) and'
          '            (lib_oepcasc2.PRC_BASE_OP_CODE = %4) and'
          '            (lib_oepcasc2.PRC_CONCRETE_OP_CODE = %5) and'
          '            (lib_oepcasc2.PRC_ACTION_CODE = %6) and'
          '            (lib_oepcasc2.STATUS_DATE <= %7)'
          '        )'
          '      )'
          '  ),'
          '  %pods_OCCUPATION_EMPLOYEE'
          ')')
      end
      item
        Name = 'OCC_PCA_DISTRIBUTION_STATUS_CODE'
        Strings.Strings = (
          'Coalesce('
          '  ( select'
          
            '      Min(%OE_PCA_DISTRIBUTION_STATUS_CODE[lib_oe.OCCUPATION_EMP' +
            'LOYEE_CODE~ %2~ %3~ %4~ %5~ %6~ %7])'
          '    from'
          '      OE_PRC_CONCRETE_ACTIONS lib_oepca,'
          '      OCCUPATION_EMPLOYEES lib_oe'
          '    where'
          
            '      (lib_oepca.OCCUPATION_EMPLOYEE_CODE = lib_oe.OCCUPATION_EM' +
            'PLOYEE_CODE) and'
          ''
          '      (lib_oepca.OCCUPATION_CODE = %1) and'
          '      (lib_oepca.PRC_FUNC_CODE = %2) and'
          '      (lib_oepca.PRC_KNOWL_CODE = %3) and'
          '      (lib_oepca.PRC_BASE_OP_CODE = %4) and'
          '      (lib_oepca.PRC_CONCRETE_OP_CODE = %5) and'
          '      (lib_oepca.PRC_ACTION_CODE = %6) and'
          ''
          
            '      (%7 between lib_oe.ASSIGNMENT_BEGIN_DATE and lib_oe.ASSIGN' +
            'MENT_END_DATE)'
          '  ),'
          '  %pods_OCCUPATION'
          ')')
      end
      item
        Name = 'DEFINITE_DEPT_PCA_DISTRIBUTION_STATUS_CODE'
        Strings.Strings = (
          'Coalesce('
          '  ( select'
          
            '      Min(%OCC_PCA_DISTRIBUTION_STATUS_CODE[lib_opca.OCCUPATION_' +
            'CODE~ %2~ %3~ %4~ %5~ %6~ %7])'
          '    from'
          '      OWD_PRC_CONCRETE_ACTIONS lib_owdpca,'
          '      OCC_PRC_CONCRETE_ACTIONS lib_opca'
          '    where'
          '      (lib_owdpca.DEPT_CODE = %1) and'
          '      (lib_owdpca.PRC_FUNC_CODE = %2) and'
          '      (lib_owdpca.PRC_KNOWL_CODE = %3) and'
          '      (lib_owdpca.PRC_BASE_OP_CODE = %4) and'
          '      (lib_owdpca.PRC_CONCRETE_OP_CODE = %5) and'
          '      (lib_owdpca.PRC_ACTION_CODE = %6) and'
          ''
          
            '      (lib_opca.OCCUPATION_CODE = lib_owdpca.OCCUPATION_CODE) an' +
            'd'
          '      (lib_opca.PRC_FUNC_CODE = lib_owdpca.PRC_FUNC_CODE) and'
          '      (lib_opca.PRC_KNOWL_CODE = lib_owdpca.PRC_KNOWL_CODE) and'
          
            '      (lib_opca.PRC_BASE_OP_CODE = lib_owdpca.PRC_BASE_OP_CODE) ' +
            'and'
          
            '      (lib_opca.PRC_CONCRETE_OP_CODE = lib_owdpca.PRC_CONCRETE_O' +
            'P_CODE) and'
          '      (lib_opca.PRC_ACTION_CODE = lib_owdpca.PRC_ACTION_CODE)'
          '  ),'
          '  %pods_DEFINITE_DEPT'
          ')')
      end
      item
        Name = 'ORG_PCA_DISTRIBUTION_STATUS_CODE'
        Strings.Strings = (
          'Coalesce('
          '  ( select'
          
            '      Min(%DEFINITE_DEPT_PCA_DISTRIBUTION_STATUS_CODE[lib_dpca.D' +
            'EPT_CODE~ lib_dpca.PRC_FUNC_CODE~ lib_dpca.PRC_KNOWL_CODE~ lib_d' +
            'pca.PRC_BASE_OP_CODE~ %1~ %2~ %3])'
          '    from'
          '      DEPT_PRC_CONCRETE_ACTIONS lib_dpca'
          '    where'
          '      (lib_dpca.PRC_CONCRETE_OP_CODE = %1) and'
          '      (lib_dpca.PRC_ACTION_CODE = %2)'
          '  ),'
          '  %pods_GROUP_DEPT'
          ')')
      end
      item
        Name = 'EXISTS_PRC_FUNC_RELATION'
        Strings.Strings = (
          '(exists'
          '  ( select'
          '      1'
          '    from'
          '      PRC_FUNC_RELATIONS lib_pfr'
          '    where'
          '      (lib_pfr.ANC_PRC_FUNC_CODE = %1) and'
          '      (lib_pfr.DESC_PRC_FUNC_CODE = %2)'
          '  )'
          ')')
      end
      item
        Name = 'EXISTS_PRC_KNOWL_RELATION'
        Strings.Strings = (
          '(exists'
          '  ( select'
          '      1'
          '    from'
          '      PRC_KNOWL_RELATIONS lib_pkr'
          '    where'
          '      (lib_pkr.ANC_PRC_KNOWL_CODE = %1) and'
          '      (lib_pkr.DESC_PRC_KNOWL_CODE = %2)'
          '  )'
          ')')
      end
      item
        Name = 'EXISTS_PRC_BASE_OP_RELATION'
        Strings.Strings = (
          '(exists'
          '  ( select'
          '      1'
          '    from'
          '      PRC_BASE_OP_RELATIONS lib_pbor'
          '    where'
          '      (lib_pbor.ANC_PRC_BASE_OP_CODE = %1) and'
          '      (lib_pbor.DESC_PRC_BASE_OP_CODE = %2)'
          '  )'
          ')')
      end
      item
        Name = 'EXISTS_PRC_CONCRETE_OP_RELATION'
        Strings.Strings = (
          '(exists'
          '  ( select'
          '      1'
          '    from'
          '      PRC_CONCRETE_OP_RELATIONS lib_pcor'
          '    where'
          '      (lib_pcor.ANC_PRC_CONCRETE_OP_CODE = %1) and'
          '      (lib_pcor.DESC_PRC_CONCRETE_OP_CODE = %2)'
          '  )'
          ')')
      end
      item
        Name = 'PRC_DATA_FILTER'
        Strings.Strings = (
          '-- params ( do not put colon in theese comments )'
          '-- 1. PrcOwner Table Prefix (ex. OTP)'
          '-- 2. PrcOwner Key Field Name (ex. ORG_TASK_PROPOSAL_CODE)'
          '-- 3. PrcOwner Key Field Value (ex. otp.ORG_TASK_PROPOSAL_CODE)'
          '-- 4. ..PRC_FUNC_CODE'
          '-- 5. ..PRC_KNOWL_CODE'
          '-- 6. ..PRC_BASE_OP_CODE'
          '-- 7. ..PRC_BASE_ACTION_CODE'
          '-- 8. ..PRC_CONCRETE_OP_CODE'
          '-- 9. ..PRC_CONCRETE_ACTION_CODE'
          ''
          '( ( (%4 is null) or'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          %1_PRC_FUNCS lib_pf'
          '        where'
          '          (lib_pf.%2 = %3) and'
          '          (%EXISTS_PRC_FUNC_RELATION[%4~ lib_pf.PRC_FUNC_CODE])'
          '      )'
          '    )'
          '  ) and'
          ''
          '  ( (%5 is null) or'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          %1_PRC_KNOWLS lib_pk'
          '        where'
          '          (lib_pk.%2 = %3) and'
          ''
          '          ( (%4 is null) or'
          
            '            (%EXISTS_PRC_FUNC_RELATION[%4~ lib_pk.PRC_FUNC_CODE]' +
            ')'
          '          ) and'
          ''
          
            '          (%EXISTS_PRC_KNOWL_RELATION[%5~ lib_pk.PRC_KNOWL_CODE]' +
            ')'
          '      )'
          '    )'
          '  ) and'
          ''
          '  ( (%6 is null) or'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          %1_PRC_BASE_OPS lib_pbo'
          '        where'
          '          (lib_pbo.%2 = %3) and'
          ''
          '          ( (%4 is null) or'
          
            '            (%EXISTS_PRC_FUNC_RELATION[%4~ lib_pbo.PRC_FUNC_CODE' +
            '])'
          '          ) and'
          ''
          '          ( (%5 is null) or'
          
            '            (%EXISTS_PRC_KNOWL_RELATION[%5~ lib_pbo.PRC_KNOWL_CO' +
            'DE])'
          '          ) and'
          ''
          
            '          (%EXISTS_PRC_BASE_OP_RELATION[%6~ lib_pbo.PRC_BASE_OP_' +
            'CODE])'
          '      )'
          '    )'
          '  ) and'
          ''
          '  ( (%7 is null) or'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          %1_PRC_BASE_ACTIONS lib_pba'
          '        where'
          '          (lib_pba.%2 = %3) and'
          ''
          '          ( (%4 is null) or'
          
            '            (%EXISTS_PRC_FUNC_RELATION[%4~ lib_pba.PRC_FUNC_CODE' +
            '])'
          '          ) and'
          ''
          '          ( (%5 is null) or'
          
            '            (%EXISTS_PRC_KNOWL_RELATION[%5~ lib_pba.PRC_KNOWL_CO' +
            'DE])'
          '          ) and'
          ''
          '          ( (%6 is null) or'
          
            '            (%EXISTS_PRC_BASE_OP_RELATION[%6~ lib_pba.PRC_BASE_O' +
            'P_CODE])'
          '          ) and'
          ''
          '          (lib_pba.PRC_ACTION_CODE = %7)'
          '      )'
          '    )'
          '  ) and'
          ''
          '  ( (%8 is null) or'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          %1_PRC_CONCRETE_OPS lib_pco'
          '        where'
          '          (lib_pco.%2 = %3) and'
          ''
          '          ( (%4 is null) or'
          
            '            (%EXISTS_PRC_FUNC_RELATION[%4~ lib_pco.PRC_FUNC_CODE' +
            '])'
          '          ) and'
          ''
          '          ( (%5 is null) or'
          
            '            (%EXISTS_PRC_KNOWL_RELATION[%5~ lib_pco.PRC_KNOWL_CO' +
            'DE])'
          '          ) and'
          ''
          '          ( (%6 is null) or'
          
            '            (%EXISTS_PRC_BASE_OP_RELATION[%6~ lib_pco.PRC_BASE_O' +
            'P_CODE])'
          '          ) and'
          ''
          
            '          (%EXISTS_PRC_CONCRETE_OP_RELATION[%8~ lib_pco.PRC_CONC' +
            'RETE_OP_CODE])'
          '      )'
          '    )'
          '  ) and'
          ''
          '  ( (%9 is null) or'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          %1_PRC_CONCRETE_ACTIONS lib_pca'
          '        where'
          '          (lib_pca.%2 = %3) and'
          ''
          '          ( (%4 is null) or'
          
            '            (%EXISTS_PRC_FUNC_RELATION[%4~ lib_pca.PRC_FUNC_CODE' +
            '])'
          '          ) and'
          ''
          '          ( (%5 is null) or'
          
            '            (%EXISTS_PRC_KNOWL_RELATION[%5~ lib_pca.PRC_KNOWL_CO' +
            'DE])'
          '          ) and'
          ''
          '          ( (%6 is null) or'
          
            '            (%EXISTS_PRC_BASE_OP_RELATION[%6~ lib_pca.PRC_BASE_O' +
            'P_CODE])'
          '          ) and'
          ''
          '          ( (%8 is null) or'
          
            '            (%EXISTS_PRC_CONCRETE_OP_RELATION[%8~ lib_pca.PRC_CO' +
            'NCRETE_OP_CODE])'
          '          ) and'
          ''
          '          (lib_pca.PRC_ACTION_CODE = %9)'
          '      )'
          '    )'
          '  )'
          ')')
      end
      item
        Name = 'GROUP_DEPT_PBA_DISTRIBUTION_COUNT'
        Strings.Strings = (
          '( select'
          '    Count(*)'
          '  from'
          '    DEPT_PRC_BASE_ACTIONS lib_dpba'
          '  where'
          '    -- samo za tazi chetworica'
          '    (lib_dpba.PRC_FUNC_CODE = %1.PRC_FUNC_CODE) and'
          '    (lib_dpba.PRC_KNOWL_CODE = %1.PRC_KNOWL_CODE) and'
          '    (lib_dpba.PRC_BASE_OP_CODE = %1.PRC_BASE_OP_CODE) and'
          '    (lib_dpba.PRC_ACTION_CODE = %1.PRC_ACTION_CODE) and'
          ''
          '    -- poddyrwoto na ot.DEPT_CODE'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          DEPT_RELATIONS dr'
          '        where'
          '          (dr.ANCESTOR_DEPT_CODE = %1.DEPT_CODE) and'
          '          (dr.DESCENDANT_DEPT_CODE = lib_dpba.DEPT_CODE)'
          '      )'
          '    ) and'
          ''
          '    -- samo EtFOrP-owe'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          GROUP_DEPTS gd'
          '        where'
          '          (gd.DEPT_CODE = lib_dpba.DEPT_CODE)'
          '      )'
          '    ) and'
          ''
          
            '    -- takiwa deto sa lista w poddyrwoto ot EtFOrP-owe za chetwo' +
            'ricata'
          '    (not exists'
          '      ( select'
          '          1'
          '        from'
          '          DEPT_PRC_BASE_ACTIONS lib_dpba2'
          '        where'
          '          (exists'
          '            ( select'
          '                1'
          '              from'
          '                GROUP_DEPTS gd'
          '              where'
          '                (gd.DEPT_CODE = lib_dpba2.DEPT_CODE)'
          '            )'
          '          ) and'
          '          (lib_dpba2.PARENT_CODE = lib_dpba.DEPT_CODE) and'
          '          (lib_dpba2.PRC_FUNC_CODE = lib_dpba.PRC_FUNC_CODE) and'
          
            '          (lib_dpba2.PRC_KNOWL_CODE = lib_dpba.PRC_KNOWL_CODE) a' +
            'nd'
          
            '          (lib_dpba2.PRC_BASE_OP_CODE = lib_dpba.PRC_BASE_OP_COD' +
            'E) and'
          '          (lib_dpba2.PRC_ACTION_CODE = lib_dpba.PRC_ACTION_CODE)'
          '      )'
          '    )'
          ')')
      end
      item
        Name = 'OCC_PROFESSIONS_COUNT'
        Strings.Strings = (
          '( select'
          '    Count(*)'
          '  from'
          '    OCCUPATION_PROFESSIONS library_op'
          '  where'
          '    (library_op.OCCUPATION_CODE = %1.OCCUPATION_CODE)'
          ')')
      end
      item
        Name = 'prcls_UNMASTERED'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'prcls_MASTERED'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'OCC_PRC_ACTIONS_COUNT'
        Strings.Strings = (
          '( ( select'
          '      Count(*)'
          '    from'
          '      OCC_PRC_BASE_ACTIONS lib_opba'
          '    where'
          '      (lib_opba.OCCUPATION_CODE = %1.OCCUPATION_CODE)'
          '  ) +'
          '  ( select'
          '      Count(*)'
          '    from'
          '      OCC_PRC_CONCRETE_ACTIONS lib_opca'
          '    where'
          '      (lib_opca.OCCUPATION_CODE = %1.OCCUPATION_CODE)'
          '  )'
          ')')
      end
      item
        Name = 'OE_MASTERED_PRC_ACTIONS_COUNT'
        Strings.Strings = (
          '( ( select'
          '      Count(*)'
          '    from'
          '      OE_PRC_CONCRETE_ACTIONS lib_oepca'
          '    where'
          
            '      (lib_oepca.OCCUPATION_EMPLOYEE_CODE = %1.OCCUPATION_EMPLOY' +
            'EE_CODE) and'
          
            '      (%PRC_CONCRETE_ACTION_STATUS[lib_oepca~%2] = %prcls_MASTER' +
            'ED)'
          '  ) +'
          '  ( select'
          '      Count(*)'
          '    from'
          '      OE_PRC_BASE_ACTIONS lib_oepba'
          '    where'
          
            '      (lib_oepba.OCCUPATION_EMPLOYEE_CODE = %1.OCCUPATION_EMPLOY' +
            'EE_CODE) and'
          '      (%PRC_BASE_ACTION_STATUS[lib_oepba~%2] = %prcls_MASTERED)'
          '  )'
          ')')
      end
      item
        Name = 'PRC_BASE_ACTION_STATUS'
        Strings.Strings = (
          'Coalesce('
          '  ( select'
          '      lib_oepbasc.PRC_LEARNING_STATUS_CODE'
          '    from'
          '      OE_PRC_BASE_ACT_STAT_CHGS lib_oepbasc'
          '    where'
          
            '      (lib_oepbasc.OCCUPATION_EMPLOYEE_CODE = %1.OCCUPATION_EMPL' +
            'OYEE_CODE) and'
          '      (lib_oepbasc.PRC_FUNC_CODE = %1.PRC_FUNC_CODE) and'
          '      (lib_oepbasc.PRC_KNOWL_CODE = %1.PRC_KNOWL_CODE) and'
          '      (lib_oepbasc.PRC_BASE_OP_CODE = %1.PRC_BASE_OP_CODE) and'
          '      (lib_oepbasc.PRC_ACTION_CODE = %1.PRC_ACTION_CODE) and'
          '      (lib_oepbasc.STATUS_DATE ='
          '        ( select'
          '            Max(lib_oepbasc2.STATUS_DATE)'
          '          from'
          '            OE_PRC_BASE_ACT_STAT_CHGS lib_oepbasc2'
          '          where'
          
            '            (lib_oepbasc2.OCCUPATION_EMPLOYEE_CODE = %1.OCCUPATI' +
            'ON_EMPLOYEE_CODE) and'
          '            (lib_oepbasc2.PRC_FUNC_CODE = %1.PRC_FUNC_CODE) and'
          
            '            (lib_oepbasc2.PRC_KNOWL_CODE = %1.PRC_KNOWL_CODE) an' +
            'd'
          
            '            (lib_oepbasc2.PRC_BASE_OP_CODE = %1.PRC_BASE_OP_CODE' +
            ') and'
          
            '            (lib_oepbasc2.PRC_ACTION_CODE = %1.PRC_ACTION_CODE) ' +
            'and'
          '            (lib_oepbasc2.STATUS_DATE <= %2)'
          '        )'
          '      )'
          '  ),'
          '  %prcls_UNMASTERED'
          ')')
      end
      item
        Name = 'PRC_CONCRETE_ACTION_STATUS'
        Strings.Strings = (
          'Coalesce('
          '  ( select'
          '      lib_oepcasc.PRC_LEARNING_STATUS_CODE'
          '    from'
          '      OE_PRC_CONCRETE_ACT_STAT_CHGS lib_oepcasc'
          '    where'
          
            '      (lib_oepcasc.OCCUPATION_EMPLOYEE_CODE = %1.OCCUPATION_EMPL' +
            'OYEE_CODE) and'
          '      (lib_oepcasc.PRC_FUNC_CODE = %1.PRC_FUNC_CODE) and'
          '      (lib_oepcasc.PRC_KNOWL_CODE = %1.PRC_KNOWL_CODE) and'
          '      (lib_oepcasc.PRC_BASE_OP_CODE = %1.PRC_BASE_OP_CODE) and'
          
            '      (lib_oepcasc.PRC_CONCRETE_OP_CODE = %1.PRC_CONCRETE_OP_COD' +
            'E) and'
          '      (lib_oepcasc.PRC_ACTION_CODE = %1.PRC_ACTION_CODE) and'
          '      (lib_oepcasc.STATUS_DATE ='
          '        ( select'
          '            Max(lib_oepcasc2.STATUS_DATE)'
          '          from'
          '            OE_PRC_CONCRETE_ACT_STAT_CHGS lib_oepcasc2'
          '          where'
          
            '            (lib_oepcasc2.OCCUPATION_EMPLOYEE_CODE = %1.OCCUPATI' +
            'ON_EMPLOYEE_CODE) and'
          '            (lib_oepcasc2.PRC_FUNC_CODE = %1.PRC_FUNC_CODE) and'
          
            '            (lib_oepcasc2.PRC_KNOWL_CODE = %1.PRC_KNOWL_CODE) an' +
            'd'
          
            '            (lib_oepcasc2.PRC_BASE_OP_CODE = %1.PRC_BASE_OP_CODE' +
            ') and'
          
            '            (lib_oepcasc2.PRC_CONCRETE_OP_CODE = %1.PRC_CONCRETE' +
            '_OP_CODE) and'
          
            '            (lib_oepcasc2.PRC_ACTION_CODE = %1.PRC_ACTION_CODE) ' +
            'and'
          '            (lib_oepcasc2.STATUS_DATE <= %2)'
          '        )'
          '      )'
          '  ),'
          '  %prcls_UNMASTERED'
          ')')
      end
      item
        Name = 'DEPT_OWDP_COVERING_DEPT'
        Strings.Strings = (
          
            '-- DEPT_OWDP_COVERING_DEPT[DEPT_CODE~OCC_WORK_DEPT_PRIORITY_CODE' +
            ']'
          ''
          '( select'
          '    lib_dr.ANCESTOR_DEPT_CODE'
          '  from'
          '    DEPT_RELATIONS lib_dr,'
          '    DEPT_OWD_PRIORITIES lib_dowdp'
          '  where'
          
            '    (lib_dowdp.DEPT_CODE = lib_dr.DESCENDANT_DEPT_CODE) and  -- ' +
            'nie da sme descendant'
          ''
          
            '    (lib_dowdp.DEPT_CODE = %1) and  -- razglejdame si cover type' +
            '-a'
          
            '    (lib_dowdp.OCC_WORK_DEPT_PRIORITY_CODE = %2) and  -- razglej' +
            'dame si cover-type-a'
          '    '
          
            '    ( ( (lib_dowdp.DEPT_OWDP_COVER_TYPE_CODE in (%dowdpct_LOCAL,' +
            ' %dowdpct_LOCAL_AND_DESCENDANTS)) and  -- nie sme si poeli otgow' +
            'ornost'
          
            '        (lib_dr.ANCESTOR_DEPT_CODE = lib_dr.DESCENDANT_DEPT_CODE' +
            ')  -- togawa shte si gledame samo w nas'
          '      ) or'
          
            '      ( (lib_dowdp.DEPT_OWDP_COVER_TYPE_CODE = %dowdpct_ANCESTOR' +
            ') and  -- chakame nqkoi otgore da poeme'
          
            '        (exists  -- ot teq nagore hareswame samo takiwa koito po' +
            'emat otgowornost i za decata si za toq rejim'
          '          ( select'
          '              1'
          '            from'
          '              DEPT_OWD_PRIORITIES lib_dowdp2'
          '            where'
          
            '              (lib_dowdp2.DEPT_CODE = lib_dr.ANCESTOR_DEPT_CODE)' +
            ' and'
          
            '              (lib_dowdp2.OCC_WORK_DEPT_PRIORITY_CODE = lib_dowd' +
            'p.OCC_WORK_DEPT_PRIORITY_CODE) and'
          
            '              (lib_dowdp2.DEPT_OWDP_COVER_TYPE_CODE = %dowdpct_L' +
            'OCAL_AND_DESCENDANTS)'
          '          )'
          '        ) and'
          '        ( ( select'
          '              Count(*)'
          '            from'
          '              DEPT_RELATIONS lib_dr2'
          '            where'
          
            '              (lib_dr2.DESCENDANT_DEPT_CODE = lib_dr.ANCESTOR_DE' +
            'PT_CODE)'
          '          ) ='
          '          ( select'
          '              Max('
          '                ( select'
          '                    Count(*)'
          '                  from'
          '                    DEPT_RELATIONS lib_dr2'
          '                  where'
          
            '                    (lib_dr2.DESCENDANT_DEPT_CODE = lib_dr3.ANCE' +
            'STOR_DEPT_CODE)'
          '                )'
          '              ) as DEPT_LEVEL'
          '            from'
          '              DEPT_RELATIONS lib_dr3'
          '            where'
          '              (lib_dr3.DESCENDANT_DEPT_CODE = %1) and'
          '              (exists'
          '                ( select'
          '                    1'
          '                  from'
          '                    DEPT_OWD_PRIORITIES lib_dowdp2'
          '                  where'
          
            '                    (lib_dowdp2.DEPT_CODE = lib_dr3.ANCESTOR_DEP' +
            'T_CODE) and'
          
            '                    (lib_dowdp2.OCC_WORK_DEPT_PRIORITY_CODE = %2' +
            ') and'
          
            '                    (lib_dowdp2.DEPT_OWDP_COVER_TYPE_CODE = %dow' +
            'dpct_LOCAL_AND_DESCENDANTS)'
          '                )'
          '              )'
          '          )'
          '        )'
          '      )'
          '    )'
          ')')
      end
      item
        Name = 'DEPT_OWDP_DELEGATING_DEPT'
        Strings.Strings = (
          
            '-- DEPT_OWDP_DELEGATING_DEPT[DEPT_CODE~OCC_WORK_DEPT_PRIORITY_CO' +
            'DE]'
          ''
          '( select'
          '    lib_dr.ANCESTOR_DEPT_CODE'
          '  from'
          '    DEPT_RELATIONS lib_dr,'
          '    DEPT_OWD_PRIORITIES lib_dowdp'
          '  where'
          
            '    (lib_dowdp.DEPT_CODE = lib_dr.DESCENDANT_DEPT_CODE) and  -- ' +
            'nie da sme descendant'
          ''
          
            '    (lib_dowdp.DEPT_CODE = %1) and  -- razglejdame si cover type' +
            '-a'
          
            '    (lib_dowdp.OCC_WORK_DEPT_PRIORITY_CODE = %2) and  -- razglej' +
            'dame si cover-type-a'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          OCC_WORK_DEPT_PRIORITIES lib_owdp'
          '        where'
          
            '          (lib_owdp.OCC_WORK_DEPT_PRIORITY_CODE = lib_dowdp.OCC_' +
            'WORK_DEPT_PRIORITY_CODE) and'
          '          (lib_owdp.ORG_WORK_LEVEL_CODE = %owl_MANAGING)'
          '      )'
          '    ) and'
          
            '    (lib_dowdp.DEPT_OWDP_COVER_TYPE_CODE in (%dowdpct_LOCAL_AND_' +
            'DESCENDANTS, %dowdpct_LOCAL)) and  -- i ako poemame nadolu ili e' +
            'dinichno otgowornost'
          ''
          
            '    (lib_dr.ANCESTOR_DEPT_CODE <> lib_dr.DESCENDANT_DEPT_CODE) a' +
            'nd  -- propuskame sebe si'
          ''
          
            '    (exists  -- ot teq nagore hareswame samo takiwa koito poemat' +
            ' otgowornost i za decata si za toq rejim'
          '      ( select'
          '          1'
          '        from'
          '          DEPT_OWD_PRIORITIES lib_dowdp2'
          '        where'
          '          (lib_dowdp2.DEPT_CODE = lib_dr.ANCESTOR_DEPT_CODE) and'
          
            '          (lib_dowdp2.OCC_WORK_DEPT_PRIORITY_CODE = lib_dowdp.OC' +
            'C_WORK_DEPT_PRIORITY_CODE) and'
          
            '          (lib_dowdp2.DEPT_OWDP_COVER_TYPE_CODE = %dowdpct_LOCAL' +
            '_AND_DESCENDANTS)'
          '      )'
          '    ) and'
          '      '
          '    (not exists'
          '      ( select'
          '          1'
          '        from'
          '          DEPT_RELATIONS lib_dr2'
          '        where'
          
            '          (lib_dr2.ANCESTOR_DEPT_CODE <> lib_dr2.DESCENDANT_DEPT' +
            '_CODE) and'
          
            '          (lib_dr2.ANCESTOR_DEPT_CODE = lib_dr.ANCESTOR_DEPT_COD' +
            'E) and'
          '           '
          
            '          -- lib_dr2.DESCENDANT_DEPT_CODE da e ancestor na inter' +
            'esniq, i da e s gnadolu)'
          '          (exists'
          '            ( select'
          '                1'
          '              from'
          '                DEPT_RELATIONS lib_dr3'
          '              where'
          
            '                (lib_dr3.ANCESTOR_DEPT_CODE <> lib_dr3.DESCENDAN' +
            'T_DEPT_CODE) and'
          
            '                (lib_dr3.ANCESTOR_DEPT_CODE = lib_dr2.DESCENDANT' +
            '_DEPT_CODE) and'
          '                (lib_dr3.DESCENDANT_DEPT_CODE = %1)'
          '            )'
          '          ) and'
          '          (exists'
          '            ( select'
          '                1'
          '              from'
          '                DEPT_OWD_PRIORITIES lib_dowdp2'
          '              where'
          
            '                (lib_dowdp2.DEPT_CODE = lib_dr2.DESCENDANT_DEPT_' +
            'CODE) and'
          
            '                (lib_dowdp2.OCC_WORK_DEPT_PRIORITY_CODE = %2) an' +
            'd'
          
            '                (lib_dowdp2.DEPT_OWDP_COVER_TYPE_CODE = %dowdpct' +
            '_LOCAL_AND_DESCENDANTS)'
          '            )'
          '          )'
          '      )'
          '    )'
          ')')
      end>
    Left = 48
    Top = 176
  end
  object DSTCPServerTransport: TDSTCPServerTransport
    Port = 215
    PoolSize = 0
    Server = DSServer
    BufferKBSize = 200
    Filters = <
      item
        FilterId = 'ZLibCompression'
        Properties.Strings = (
          'CompressMoreThan=1024')
      end>
    Left = 296
    Top = 16
  end
  object mshOrganisationTasks: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'OTP_STATE_CODE'
        Strings.Strings = (
          '( case'
          '    when (%1.ANNUL_EMPLOYEE_CODE is not null) then'
          '      22'
          '    when (%1.ORG_TASK_PROP_RESULT_TYPE_CODE = 4) then'
          '      21'
          '    when (%1.ORG_TASK_PROP_RESULT_TYPE_CODE = 3) and'
          '         (exists'
          '           ( select'
          '               1'
          '             from'
          '               ORG_TASK_PROPOSALS library_otp'
          '             where'
          
            '               (library_otp.REPLACED_ORG_TASK_PROP_CODE = %1.ORG' +
            '_TASK_PROPOSAL_CODE)'
          '           )'
          '         ) then'
          '      20'
          '    when (%1.ORG_TASK_PROP_RESULT_TYPE_CODE = 2) then'
          '      19'
          '    when (%1.CLOSE_EMPLOYEE_CODE is not null) then'
          '      ( case'
          '          when ( ( select'
          '                     Count(*)'
          '                   from'
          '                     ENGINEERING_ORDERS library_eo'
          '                   where'
          
            '                     (library_eo.PRODUCT_CODE = %1.PRODUCT_CODE)' +
            ' and'
          
            '                     (library_eo.CLOSE_EMPLOYEE_CODE is not null' +
            ') and'
          
            '                     (library_eo.ANNUL_EMPLOYEE_CODE is null) an' +
            'd'
          
            '                     (library_eo.PARENT_ENGINEERING_ORDER_CODE i' +
            's null)'
          '                 ) > 1'
          '               ) and'
          '               (%1.IS_PREMATURELY_CLOSED = 1) and '
          '               (%2.SALE_OBJECT_BRANCH_CODE is not null) then'
          '            18'
          '          when (%1.IS_PREMATURELY_CLOSED = 1) then'
          '            17'
          '          when ( ( select'
          '                     Count(*)'
          '                   from'
          '                     ENGINEERING_ORDERS library_eo'
          '                   where'
          
            '                     (library_eo.PRODUCT_CODE = %1.PRODUCT_CODE)' +
            ' and'
          
            '                     (library_eo.CLOSE_EMPLOYEE_CODE is not null' +
            ') and'
          
            '                     (library_eo.ANNUL_EMPLOYEE_CODE is null) an' +
            'd'
          
            '                     (library_eo.PARENT_ENGINEERING_ORDER_CODE i' +
            's null)'
          '                 ) > 1'
          '               ) and'
          '               (%2.SALE_OBJECT_BRANCH_CODE is not null) then'
          '            14'
          '          when ( ( select'
          '                     Count(*)'
          '                   from'
          '                     ENGINEERING_ORDERS library_eo'
          '                   where'
          
            '                     (library_eo.PRODUCT_CODE = %1.PRODUCT_CODE)' +
            ' and'
          
            '                     ( (library_eo.CREATE_DATE < %1.CLOSE_DATE) ' +
            'or'
          
            '                       ( (library_eo.CREATE_DATE = %1.CLOSE_DATE' +
            ') and'
          
            '                         (library_eo.CREATE_TIME < %1.CLOSE_TIME' +
            ')'
          '                       )'
          '                     ) and'
          
            '                     ( (library_eo.ANNUL_EMPLOYEE_CODE is null) ' +
            'or'
          
            '                       (library_eo.ANNUL_DATE > %1.CLOSE_DATE) o' +
            'r'
          
            '                       ( (library_eo.ANNUL_DATE = %1.CLOSE_DATE)' +
            ' and'
          '                         (library_eo.ANNUL_TIME > %1.CLOSE_TIME)'
          '                       )'
          '                     ) and'
          
            '                     (library_eo.PARENT_ENGINEERING_ORDER_CODE i' +
            's null)'
          '                 ) > 1'
          '               ) then'
          '            16'
          '        else'
          '          15'
          '        end'
          '      )'
          '    when ( ( select'
          '               Count(*)'
          '             from'
          '               ENGINEERING_ORDERS library_eo'
          '             where'
          '               (library_eo.PRODUCT_CODE = %1.PRODUCT_CODE) and'
          '               (library_eo.CLOSE_EMPLOYEE_CODE is not null) and'
          '               (library_eo.ANNUL_EMPLOYEE_CODE is null) and'
          
            '               (library_eo.PARENT_ENGINEERING_ORDER_CODE is null' +
            ')'
          '           ) > 1'
          '         ) and'
          '         (%2.FINISH_EMPLOYEE_CODE is not null) then'
          '      13'
          '    when ( ( select'
          '               Count(*)'
          '             from'
          '               ENGINEERING_ORDERS library_eo'
          '             where'
          '               (library_eo.PRODUCT_CODE = %1.PRODUCT_CODE) and'
          '               (library_eo.CLOSE_EMPLOYEE_CODE is not null) and'
          '               (library_eo.ANNUL_EMPLOYEE_CODE is null) and'
          
            '               (library_eo.PARENT_ENGINEERING_ORDER_CODE is null' +
            ')'
          '           ) > 1'
          '         ) and'
          
            '         ( (%2.MODEL_DEVELOPMENT_TYPE_CODE = 3) or (%3.LIMITING_' +
            'EMPLOYEE_CODE is not null) ) then'
          '      12'
          '    when ( ( select'
          '               Count(*)'
          '             from'
          '               ENGINEERING_ORDERS library_eo'
          '             where'
          '               (library_eo.PRODUCT_CODE = %1.PRODUCT_CODE) and'
          '               (library_eo.CLOSE_EMPLOYEE_CODE is not null) and'
          '               (library_eo.ANNUL_EMPLOYEE_CODE is null) and'
          
            '               (library_eo.PARENT_ENGINEERING_ORDER_CODE is null' +
            ')'
          '           ) > 1'
          '         ) and'
          '         (%2.SALE_OBJECT_BRANCH_CODE is not null) then'
          '      11'
          '    when ( ( select'
          '               Count(*)'
          '             from'
          '               ENGINEERING_ORDERS library_eo'
          '             where'
          '               (library_eo.PRODUCT_CODE = %1.PRODUCT_CODE) and'
          '               (library_eo.CLOSE_EMPLOYEE_CODE is not null) and'
          '               (library_eo.ANNUL_EMPLOYEE_CODE is null) and'
          
            '               (library_eo.PARENT_ENGINEERING_ORDER_CODE is null' +
            ')'
          '           ) > 1'
          '         ) and'
          '         (%4.ENGINEERING_ORDER_CODE is null) then'
          '      10'
          '    when ( ( select'
          '               Count(*)'
          '             from'
          '               ENGINEERING_ORDERS library_eo'
          '             where'
          '               (library_eo.PRODUCT_CODE = %1.PRODUCT_CODE) and'
          '               (library_eo.CLOSE_EMPLOYEE_CODE is not null) and'
          '               (library_eo.ANNUL_EMPLOYEE_CODE is null) and'
          
            '               (library_eo.PARENT_ENGINEERING_ORDER_CODE is null' +
            ')'
          '           ) > 0'
          '         ) and'
          '         (%4.ACTIVATE_EMPLOYEE_CODE is not null) then'
          '      9'
          '    when ( ( select'
          '               Count(*)'
          '             from'
          '               ENGINEERING_ORDERS library_eo'
          '             where'
          '               (library_eo.PRODUCT_CODE = %1.PRODUCT_CODE) and'
          '               (library_eo.CLOSE_EMPLOYEE_CODE is not null) and'
          '               (library_eo.ANNUL_EMPLOYEE_CODE is null) and'
          
            '               (library_eo.PARENT_ENGINEERING_ORDER_CODE is null' +
            ')'
          '           ) > 0'
          '         ) and'
          '         (%4.ENGINEERING_ORDER_CODE is not null) then'
          '      8'
          '    when ( ( select'
          '               Count(*)'
          '             from'
          '               ENGINEERING_ORDERS library_eo'
          '             where'
          '               (library_eo.PRODUCT_CODE = %1.PRODUCT_CODE) and'
          '               (library_eo.CLOSE_EMPLOYEE_CODE is not null) and'
          '               (library_eo.ANNUL_EMPLOYEE_CODE is null) and'
          
            '               (library_eo.PARENT_ENGINEERING_ORDER_CODE is null' +
            ')'
          '           ) > 0'
          '         ) and'
          '         (%4.ENGINEERING_ORDER_CODE is null) then'
          '      7'
          '    when (%4.ACTIVATE_EMPLOYEE_CODE is not null) then'
          '      6'
          '    when (%4.ENGINEERING_ORDER_CODE is not null) then'
          '      5'
          '    when (%1.ORG_TASK_PROP_RESULT_TYPE_CODE = 1) then'
          '      4'
          '    when (%1.ORG_TASK_PROP_RESULT_TYPE_CODE = 3) then'
          '      3'
          
            '    when ((%1.PLAN_PROPOSAL_DATE is not null) and (%1.PLAN_PROPO' +
            'SAL_EMPLOYEE_CODE is not null)) then'
          '      2'
          '  else'
          '    1'
          '  end'
          ')')
      end
      item
        Name = 'otprt_ACCEPTED'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'otprt_ATTACHED'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'otprt_RETURNED'
        Strings.Strings = (
          '3')
      end
      item
        Name = 'otprt_DENIED'
        Strings.Strings = (
          '4')
      end>
    Left = 48
    Top = 232
  end
  object mshDocOwnerTypes: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'dot_PRODUCT'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'dot_DEPT'
        Strings.Strings = (
          '3')
      end
      item
        Name = 'dot_PROFESSION'
        Strings.Strings = (
          '5')
      end
      item
        Name = 'dot_OCCUPATION'
        Strings.Strings = (
          '6')
      end
      item
        Name = 'dot_ORG_TASK_PROPOSAL'
        Strings.Strings = (
          '33')
      end
      item
        Name = 'dot_PROCESS_FUNCTION'
        Strings.Strings = (
          '42')
      end
      item
        Name = 'dot_PROCESS_KNOWL'
        Strings.Strings = (
          '43')
      end
      item
        Name = 'dot_PROCESS_BASE_OPERATION'
        Strings.Strings = (
          '44')
      end
      item
        Name = 'dot_PROCESS_CONCRETE_OPERATION'
        Strings.Strings = (
          '45')
      end
      item
        Name = 'dot_PROCESS_ACTION'
        Strings.Strings = (
          '46')
      end>
    Left = 48
    Top = 288
  end
  object dsscCompanyFilter: TDSServerClass
    OnGetClass = dsscCompanyFilterGetClass
    OnCreateInstance = dsscCompanyFilterCreateInstance
    OnDestroyInstance = dsscDestroyInstance
    Server = DSServer
    Left = 400
    Top = 480
  end
  object mshExceptEvents: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'EE_TYPE_FULL_NO'
        Strings.Strings = (
          '( select'
          
            '    ListAgg(To_Char(lib_eet.EXCEPT_EVENT_TYPE_LOCAL_NO) || '#39'.'#39') ' +
            'within group'
          '    ( order by'
          '      ( select'
          '          Count(*)'
          '        from'
          '          EXCEPT_EVENT_TYPE_RELATIONS lib_eetr2'
          '        where'
          
            '          (lib_eetr2.DESC_EXCEPT_EVENT_TYPE_CODE = lib_eet.EXCEP' +
            'T_EVENT_TYPE_CODE)'
          '      )'
          '    )'
          '  from'
          '    EXCEPT_EVENT_TYPES lib_eet,'
          '    EXCEPT_EVENT_TYPE_RELATIONS lib_eetr'
          '  where'
          '    ( (%1 = 1) or'
          '      (lib_eet.EXCEPT_EVENT_TYPE_CODE <> 1)'
          '    ) and'
          
            '    (lib_eet.EXCEPT_EVENT_TYPE_CODE = lib_eetr.ANC_EXCEPT_EVENT_' +
            'TYPE_CODE) and'
          '    (lib_eetr.DESC_EXCEPT_EVENT_TYPE_CODE = %1)'
          ')'
          '')
      end
      item
        Name = 'EE_TYPE_FORMATTED_FULL_NO'
        Strings.Strings = (
          '( select'
          
            '    ListAgg(LPad(To_Char(lib_eet.EXCEPT_EVENT_TYPE_LOCAL_NO), 10' +
            ', '#39'0'#39') || '#39'.'#39') within group'
          '    ( order by'
          '      ( select'
          '          Count(*)'
          '        from'
          '          EXCEPT_EVENT_TYPE_RELATIONS lib_eetr2'
          '        where'
          
            '          (lib_eetr2.DESC_EXCEPT_EVENT_TYPE_CODE = lib_eet.EXCEP' +
            'T_EVENT_TYPE_CODE)'
          '      )'
          '    )'
          '  from'
          '    EXCEPT_EVENT_TYPES lib_eet,'
          '    EXCEPT_EVENT_TYPE_RELATIONS lib_eetr'
          '  where'
          '    ( (%1 = 1) or'
          '      (lib_eet.EXCEPT_EVENT_TYPE_CODE <> 1)'
          '    ) and'
          
            '    (lib_eet.EXCEPT_EVENT_TYPE_CODE = lib_eetr.ANC_EXCEPT_EVENT_' +
            'TYPE_CODE) and'
          '    (lib_eetr.DESC_EXCEPT_EVENT_TYPE_CODE = %1)'
          ')'
          '')
      end>
    Left = 48
    Top = 344
  end
  object tmrRestoreUnavailableExecuteServers: TTimer
    Interval = 60000
    OnTimer = tmrRestoreUnavailableExecuteServersTimer
    Left = 608
    Top = 16
  end
  object tmrFreeExpiredSessionContexts: TTimer
    Interval = 60000
    OnTimer = tmrFreeExpiredSessionContextsTimer
    Left = 816
    Top = 16
  end
  object DSHTTPService: TDSHTTPService
    HttpPort = 280
    Server = DSServer
    Filters = <
      item
        FilterId = 'ZLibCompression'
        Properties.Strings = (
          'CompressMoreThan=1024')
      end>
    SessionTimeout = 300000
    Left = 400
    Top = 16
  end
  object VersionHTTPServer: TIdHTTPServer
    Bindings = <>
    DefaultPort = 2080
    OnCommandGet = VersionHTTPServerCommandGet
    Left = 48
    Top = 440
  end
end
