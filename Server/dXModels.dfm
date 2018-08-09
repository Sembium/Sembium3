inherited dmXModels: TdmXModels
  Height = 584
  Width = 957
  object qryBoundProcessObject: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BND_PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  po.*,'
      '  s.SALE_ORDER_TYPE_CODE,'
      ''
      '  s.SALE_BRANCH_CODE,'
      '  ('
      '    select'
      '      d.CUSTOM_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = s.SALE_BRANCH_CODE)'
      '  ) as SALE_BRANCH_NO,'
      ''
      '  s.SALE_NO,'
      ''
      '  ('
      '    select'
      '      st.SALE_TYPE_ABBREV'
      '    from'
      '      SALE_TYPES st'
      '    where'
      '      (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '  ) as SALE_TYPE_ABBREV,'
      '  '
      '  s.PRODUCT_CODE as SALE_PRODUCT_CODE,'
      '  p.NAME as SALE_PRODUCT_NAME,'
      '  p.CUSTOM_CODE as SALE_PRODUCT_NO,'
      ''
      '  ('
      '    select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  )  as SALE_MEASURE_ABBREV,'
      '  '
      '  s.MANUFACTURE_QUANTITY as SALE_MANUFACTURE_QUANTITY,'
      
        '  (s.MANUFACTURE_QUANTITY * p.TECH_MEASURE_COEF) as SALE_MANUFAC' +
        'TURE_TECH_QUANTITY,'
      ''
      '  s.MANAGER_EMPLOYEE_CODE as SALE_MANAGER_CODE,'
      '  '
      '  ('
      '    select'
      '      (e.FIRST_NAME || '#39' '#39' || e.LAST_NAME) as SALE_MANAGER_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = s.MANAGER_EMPLOYEE_CODE)'
      '  ) as SALE_MANAGER_NAME,'
      '  '
      
        '  s.ENTER_SH_STORE_PLAN_BEGIN_DATE as S_ENTER_STORE_PLAN_BEGIN_D' +
        'ATE,'
      '  s.ENTER_SH_STORE_PLAN_END_DATE as S_ENTER_STORE_PLAN_END_DATE,'
      '  s.OKIDU_EMPLOYEE_CODE,'
      ''
      '  ('
      '    select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = s.CLIENT_COMPANY_CODE)    '
      '  ) as SALE_CLIENT_COMPANY_SHORT_NAME,'
      ''
      '  ('
      '    select'
      '      cou.COUNTRY_ABBREV'
      '    from'
      '      COMPANIES c,'
      '      COUNTRIES cou'
      '    where'
      '      (c.COMPANY_CODE = s.CLIENT_COMPANY_CODE) and'
      '      (cou.COUNTRY_CODE = c.COUNTRY_CODE)'
      '  ) as SALE_CLIENT_COUNTRY_ABBREV,'
      ''
      '  ( Decode('
      '      Coalesce(s.CLIENT_COMPANY_CODE, 0),'
      '      0, p.PARTNER_PRODUCT_NAMES,'
      '      ( select'
      '          cp.NAME'
      '        from'
      '          COMPANY_PRODUCTS cp'
      '        where'
      '          (cp.COMPANY_CODE = s.CLIENT_COMPANY_CODE) and'
      '          (cp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) as SALE_CLIENT_PRODUCT_SIGNATURE,'
      ''
      '  s.CLIENT_REQUEST_NO as SALE_CLIENT_REQUEST_NO,'
      '  s.PRODUCTION_DEPT_CODE as SALE_PRODUCTION_DEPT_CODE,'
      '  s.TRANSIENT_STATUS_CODE as SALE_TRANSIENT_STATUS_CODE,'
      '  s.WORKDAYS_TO_EXIST as SALE_WORKDAYS_TO_EXIST,'
      ''
      '  %ML_STATE[s~ml] as ML_STATE_CODE,'
      '  '
      '  Coalesce('
      '    ('
      '      select'
      '        Min(sd.STORE_DEAL_DATE)'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        STORE_DEALS sd'
      '      where'
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '        (sd.IN_OUT = -1) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null)'
      '    ),'
      
        '    %ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_CODE~ ml.ML_OB' +
        'JECT_CODE]'
      '  ) as MIN_STORE_DEAL_DATE,'
      ''
      '  (  '
      
        '    %ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_CODE~ ml.ML_OB' +
        'JECT_CODE] -'
      '    ('
      '      select'
      '        Coalesce(Min(sd.STORE_DEAL_DATE), ContextDate)'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        STORE_DEALS sd'
      '      where'
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '        '
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '        (sd.IN_OUT = -1) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null)'
      '    )'
      '  ) as PRODUCTION_START_RESERVE_DAYS,'
      ''
      '  ( select'
      
        '      Min(Sum(psd.COMPLETED_QUANTITY) / Sum(psd.QUANTITY)) as ST' +
        'ART_STAGE_COEF'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      PLANNED_STORE_DEALS psd'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANC' +
        'H_CODE) and'
      '      (mll.MLL_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      '      (psd.IS_PLANNED_MANUALLY = 0) and'
      '      (psd.IN_OUT = -1) and'
      '      (psd.BND_PROCESS_CODE <> 110)'
      '    group by'
      '      mll.NO_AS_TEXT'
      '  ) as START_STAGE_COEF,'
      ''
      '  Nvl2(ml.ML_OBJECT_CODE,'
      '    %COUNT_WORKDAYS['
      
        '      %ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_CODE~ ml.ML_' +
        'OBJECT_CODE]~'
      '      ml.ENTER_RESULT_STORE_END_DATE'
      '    ],'
      '    null'
      '  ) as MODEL_WORKDAYS,'
      ''
      '  s.SHIPMENT_STORE_CODE,'
      ''
      '  ( select'
      '      pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '    from'
      '      PRODUCTION_ORDER_TYPES pot'
      '    where'
      
        '      (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER_TYPE_' +
        'CODE)'
      '  ) as PRODUCTION_ORDER_TYPE_ABBREV,'
      ''
      '  ml.INITIAL_TREATMENT_WORKDAYS,'
      ''
      '  ('
      '    select'
      '      Max(mlms.TOTAL_TREATMENT_WORKDAYS) as PRODUCTION_WORKDAYS'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '      (mll.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as PRODUCTION_WORKDAYS,'
      ''
      '  ( select'
      '      Max('
      '        %COUNT_WORKDAYS['
      '          ( select'
      '              Min(mm.MM_DATE) + 1'
      '            from'
      '              MODEL_MOVEMENTS mm'
      '            where'
      
        '              (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '              (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE)' +
        ' and'
      '              (mm.STORNO_EMPLOYEE_CODE is null) and'
      '              (mm.MM_DATE < mlms.TREATMENT_BEGIN_DATE)'
      '          )~'
      '          mlms.TREATMENT_BEGIN_DATE]'
      '      )'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '  ) as MAX_OP_DATE_POSITIVE_DIFF,'
      ''
      '  Nvl2(s.ANNUL_EMPLOYEE_CODE,'
      '    null,'
      '    ( select'
      '        -Max('
      '          %COUNT_WORKDAYS['
      '            (mlms.TREATMENT_END_DATE + 1)~'
      '            case'
      '              when (ml.CLOSE_EMPLOYEE_CODE is null) and'
      '                   ( MiscUtils.LargeZero('
      '                       mll.LINE_DETAIL_TECH_QUANTITY -'
      '                       ( select'
      
        '                           Coalesce(Sum(mm.DETAIL_TECH_QUANTITY)' +
        ', 0)'
      '                         from'
      '                           ML_MODEL_STAGES mlms2,'
      '                           MODEL_MOVEMENTS mm'
      '                         where'
      
        '                           (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.' +
        'MLL_OBJECT_BRANCH_CODE) and'
      
        '                           (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJ' +
        'ECT_CODE) and'
      
        '                           (mlms2.ML_MODEL_STAGE_NO <= mlms.ML_M' +
        'ODEL_STAGE_NO) and'
      
        '                           (mm.FROM_MLMS_OBJECT_BRANCH_CODE = ml' +
        'ms2.MLMS_OBJECT_BRANCH_CODE) and'
      
        '                           (mm.FROM_MLMS_OBJECT_CODE = mlms2.MLM' +
        'S_OBJECT_CODE) and'
      '                           (mm.TO_DEPT_CODE is not null) and'
      '                           (mm.STORNO_EMPLOYEE_CODE is null)'
      '                       ) -'
      '                       ( select'
      
        '                           Coalesce(Sum(mm.DETAIL_TECH_QUANTITY)' +
        ', 0)'
      '                         from'
      '                           MODEL_MOVEMENTS mm'
      '                         where'
      
        '                           (mm.FROM_MLMS_OBJECT_BRANCH_CODE = ml' +
        'ms.MLMS_OBJECT_BRANCH_CODE) and'
      
        '                           (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS' +
        '_OBJECT_CODE) and'
      '                           (mm.TO_DEPT_CODE is null) and'
      '                           (mm.STORNO_EMPLOYEE_CODE is null)'
      '                       )'
      '                     ) > 0'
      '                   ) then ContextDate'
      '            else'
      '              ( select'
      '                  Max(mm.MM_DATE)'
      '                from'
      '                  MODEL_MOVEMENTS mm'
      '                where'
      
        '                  (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_O' +
        'BJECT_BRANCH_CODE) and'
      
        '                  (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_C' +
        'ODE) and'
      '                  (mm.STORNO_EMPLOYEE_CODE is null) and'
      '                  (mm.MM_DATE > mlms.TREATMENT_END_DATE)'
      '              )'
      '            end'
      '          ]'
      '         )'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        ML_MODEL_STAGES mlms'
      '      where'
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '        (mlms.TREATMENT_END_DATE < ContextDate) and'
      '        (mlms.OUTGOING_WORKDAYS > 0)'
      '    )'
      '  ) as MIN_OP_DATE_NEGATIVE_DIFF,'
      ''
      
        '  Nvl2(s.WASTING_SALE_OBJ_BRANCH_CODE, 1, 0) as IS_WASTE_COMPENS' +
        'ATING_ORDER,'
      ''
      '  s.WASTING_SALE_OBJ_BRANCH_CODE,'
      '  s.WASTING_SALE_OBJ_CODE,'
      ''
      '  ('
      '    select'
      '      d.CUSTOM_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = ws.SALE_BRANCH_CODE)'
      '  ) as WASTING_SALE_BRANCH_NO,'
      ''
      '  ws.SALE_NO as WASTING_SALE_NO,'
      ''
      '  wml.ML_OBJECT_BRANCH_CODE as WASTING_ML_OBJECT_BRANCH_CODE,'
      '  wml.ML_OBJECT_CODE as WASTING_ML_OBJECT_CODE,'
      '  '
      '  ( select'
      '      pr.PRIORITY_NO'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as PRIORITY_NO,'
      '  ( select'
      '      pr.PRIORITY_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as PRIORITY_COLOR,'
      '  ( select'
      '      pr.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as PRIORITY_BACKGROUND_COLOR,'
      ''
      '  ( select'
      '      wp.WORK_PRIORITY_NO'
      '    from'
      '      WORK_PRIORITIES wp'
      '    where'
      '      (wp.WORK_PRIORITY_CODE = s.WORK_PRIORITY_CODE)'
      '  ) as WORK_PRIORITY_NO,'
      ''
      '  s.DOC_BRANCH_CODE,'
      '  s.DOC_CODE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms,'
      '      MODEL_MOVEMENTS mm'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '      (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '      (mm.TO_DEPT_CODE is not null) and'
      '      (mm.STORNO_EMPLOYEE_CODE is null)'
      '  ) as HAS_WASTE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SALES wcs'
      '    where'
      
        '      (wcs.WASTING_SALE_OBJ_BRANCH_CODE = s.SALE_OBJECT_BRANCH_C' +
        'ODE) and'
      '      (wcs.WASTING_SALE_OBJ_CODE = s.SALE_OBJECT_CODE)'
      '  ) as WASTE_COMPENSATOR_COUNT,'
      ''
      '  Nvl2('
      '    ( select'
      '         Min(sd.STORE_DEAL_DATE)'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        STORE_DEALS sd'
      '      where'
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '        (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '        (sd.IN_OUT = -1) and'
      '        (sd.BND_PROCESS_CODE <> 110) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null)'
      '    ),'
      '    %COUNT_WORKDAYS['
      '      ( select'
      '           Min(sd.STORE_DEAL_DATE)'
      '        from'
      '          MATERIAL_LIST_LINES mll,'
      '          STORE_DEALS sd'
      '        where'
      
        '          (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE)' +
        ' and'
      '          (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '          (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '          (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '          (sd.IN_OUT = -1) and'
      '          (sd.BND_PROCESS_CODE <> 110) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null)'
      '      )~'
      '      case'
      '        when'
      '          exists'
      '            ( select'
      '                1'
      '              from'
      '                PLANNED_STORE_DEALS psd'
      '              where'
      
        '                (psd.BND_PROCESS_OBJECT_BRANCH_CODE = ml.BND_PRO' +
        'CESS_OBJECT_BRANCH_CODE) and'
      
        '                (psd.BND_PROCESS_OBJECT_CODE = ml.BND_PROCESS_OB' +
        'JECT_CODE) and'
      '                (psd.PRODUCT_CODE = ml.RESULT_PRODUCT_CODE) and'
      '                (psd.IN_OUT = 1) and'
      '                (psd.IS_PLANNED_MANUALLY = 0) and'
      '                (psd.BND_PROCESS_CODE <> 110) and'
      '                (psd.IS_ACTIVE = 0)'
      '            )'
      '          then'
      '          ( select'
      '              Max(sd.STORE_DEAL_DATE)'
      '            from'
      '              STORE_DEALS sd'
      '            where'
      
        '              (sd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT' +
        '_BRANCH_CODE) and'
      
        '              (sd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) ' +
        'and'
      '              (sd.IN_OUT = 1) and'
      '              (sd.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '      else'
      '        ContextDate'
      '      end'
      '    ],'
      '    null'
      '  ) as REAL_PRODUCTION_WORKDAYS,'
      ''
      '  ( select'
      '       Nvl2(  '
      '         Min(sd.STORE_DEAL_DATE) - ml.LIMITING_DATE,'
      '         Decode(ml.LIMITING_DATE,'
      '           Min(sd.STORE_DEAL_DATE), 0,'
      
        '           CountWorkdays(ml.LIMITING_DATE, (Min(sd.STORE_DEAL_DA' +
        'TE)-1))'
      '         ),'
      '         null'
      '       )'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      STORE_DEALS sd'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '      (sd.IN_OUT = -1) and'
      '      (sd.BND_PROCESS_CODE <> 110) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as START_AFTER_LIMITING_DAYS,'
      ''
      '  p.PARTNER_PRODUCT_NAMES as COMPANY_PRODUCT_NAMES,'
      ''
      '  s.MODEL_DEVELOPMENT_TYPE_CODE,'
      '  ( select'
      '      mdt.MODEL_DEVELOPMENT_TYPE_ABBREV'
      '    from'
      '      MODEL_DEVELOPMENT_TYPES mdt'
      '    where'
      
        '      (mdt.MODEL_DEVELOPMENT_TYPE_CODE = s.MODEL_DEVELOPMENT_TYP' +
        'E_CODE)'
      '  ) as MODEL_DEVELOPMENT_TYPE_ABBREV,'
      ''
      '  s.PRODUCTION_START_PLAN_DATE,'
      ''
      '  ( select'
      '      pot.PROD_ORDER_BASE_ROLE_CODE'
      '    from'
      '      PRODUCTION_ORDER_TYPES pot'
      '    where'
      
        '      (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER_TYPE_' +
        'CODE)'
      '  ) as PROD_ORDER_BASE_ROLE_CODE'
      ''
      'from'
      '  PROCESS_OBJECTS po,'
      '  SALES s,'
      '  SALE_GROUPS sg,'
      '  PRODUCTS p,'
      '  MATERIAL_LISTS ml,'
      '  SALES ws,'
      '  MATERIAL_LISTS wml'
      ''
      'where'
      
        '  (po.PROCESS_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_CO' +
        'DE) and'
      '  (po.PROCESS_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE) and'
      ''
      
        '  (po.PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) an' +
        'd'
      '  (po.PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '  '
      
        '  (s.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRANCH' +
        '_CODE(+)) and'
      '  (s.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE(+)) and'
      ''
      '  (s.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE' +
        '(+)) and'
      '  (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE(+)) and'
      ''
      
        '  (s.WASTING_SALE_OBJ_BRANCH_CODE = ws.SALE_OBJECT_BRANCH_CODE(+' +
        ')) and'
      '  (s.WASTING_SALE_OBJ_CODE = ws.SALE_OBJECT_CODE(+)) and'
      ''
      
        '  (ws.SALE_OBJECT_BRANCH_CODE = wml.BND_PROCESS_OBJECT_BRANCH_CO' +
        'DE(+)) and'
      '  (ws.SALE_OBJECT_CODE = wml.BND_PROCESS_OBJECT_CODE(+))')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'ML_STATE[s~ml]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_CODE~ ml.ML_OBJECT_' +
          'CODE]'
        ParamType = ptInput
        Value = 'To_Date(null)'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'      %ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BR' +
          'ANCH_CODE~ ml.ML_OBJECT_CODE]~'#13#10'      ml.ENTER_RESULT_STORE_END_' +
          'DATE'#13#10'    ]'
        ParamType = ptInput
        Value = 'To_Number(null)'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'          ( select'#13#10'              Min(mm.MM_DAT' +
          'E) + 1'#13#10'            from'#13#10'              MODEL_MOVEMENTS mm'#13#10'    ' +
          '        where'#13#10'              (mm.FROM_MLMS_OBJECT_BRANCH_CODE = ' +
          'mlms.MLMS_OBJECT_BRANCH_CODE) and'#13#10'              (mm.FROM_MLMS_O' +
          'BJECT_CODE = mlms.MLMS_OBJECT_CODE) and'#13#10'              (mm.STORN' +
          'O_EMPLOYEE_CODE is null) and'#13#10'              (mm.MM_DATE < mlms.T' +
          'REATMENT_BEGIN_DATE)'#13#10'          )~'#13#10'          mlms.TREATMENT_BEG' +
          'IN_DATE]'
        ParamType = ptInput
        Value = 'To_Number(null)'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'            (mlms.TREATMENT_END_DATE + 1)~'#13#10'   ' +
          '         case'#13#10'              when (ml.CLOSE_EMPLOYEE_CODE is nul' +
          'l) and'#13#10'                   ( MiscUtils.LargeZero('#13#10'             ' +
          '          mll.LINE_DETAIL_TECH_QUANTITY -'#13#10'                     ' +
          '  ( select'#13#10'                           Coalesce(Sum(mm.DETAIL_TE' +
          'CH_QUANTITY), 0)'#13#10'                         from'#13#10'               ' +
          '            ML_MODEL_STAGES mlms2,'#13#10'                           M' +
          'ODEL_MOVEMENTS mm'#13#10'                         where'#13#10'             ' +
          '              (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BR' +
          'ANCH_CODE) and'#13#10'                           (mlms2.MLL_OBJECT_COD' +
          'E = mlms.MLL_OBJECT_CODE) and'#13#10'                           (mlms2' +
          '.ML_MODEL_STAGE_NO <= mlms.ML_MODEL_STAGE_NO) and'#13#10'             ' +
          '              (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJE' +
          'CT_BRANCH_CODE) and'#13#10'                           (mm.FROM_MLMS_OB' +
          'JECT_CODE = mlms2.MLMS_OBJECT_CODE) and'#13#10'                       ' +
          '    (mm.TO_DEPT_CODE is not null) and'#13#10'                         ' +
          '  (mm.STORNO_EMPLOYEE_CODE is null)'#13#10'                       ) -'#13 +
          #10'                       ( select'#13#10'                           Coa' +
          'lesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)'#13#10'                        ' +
          ' from'#13#10'                           MODEL_MOVEMENTS mm'#13#10'          ' +
          '               where'#13#10'                           (mm.FROM_MLMS_O' +
          'BJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and'#13#10'         ' +
          '                  (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_C' +
          'ODE) and'#13#10'                           (mm.TO_DEPT_CODE is null) a' +
          'nd'#13#10'                           (mm.STORNO_EMPLOYEE_CODE is null)' +
          #13#10'                       )'#13#10'                     ) > 0'#13#10'        ' +
          '           ) then ContextDate'#13#10'            else'#13#10'              (' +
          ' select'#13#10'                  Max(mm.MM_DATE)'#13#10'                from' +
          #13#10'                  MODEL_MOVEMENTS mm'#13#10'                where'#13#10' ' +
          '                 (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OB' +
          'JECT_BRANCH_CODE) and'#13#10'                  (mm.FROM_MLMS_OBJECT_CO' +
          'DE = mlms.MLMS_OBJECT_CODE) and'#13#10'                  (mm.STORNO_EM' +
          'PLOYEE_CODE is null) and'#13#10'                  (mm.MM_DATE > mlms.T' +
          'REATMENT_END_DATE)'#13#10'              )'#13#10'            end'#13#10'          ' +
          ']'
        ParamType = ptInput
        Value = 'To_Number(null)'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'      ( select'#13#10'           Min(sd.STORE_DEAL_DA' +
          'TE)'#13#10'        from'#13#10'          MATERIAL_LIST_LINES mll,'#13#10'         ' +
          ' STORE_DEALS sd'#13#10'        where'#13#10'          (mll.ML_OBJECT_BRANCH_' +
          'CODE = ml.ML_OBJECT_BRANCH_CODE) and'#13#10'          (mll.ML_OBJECT_C' +
          'ODE = ml.ML_OBJECT_CODE) and'#13#10'          (mll.MLL_OBJECT_BRANCH_C' +
          'ODE = sd.BND_PROCESS_OBJECT_BRANCH_CODE) and'#13#10'          (mll.MLL' +
          '_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'#13#10'          (sd.IN' +
          '_OUT = -1) and'#13#10'          (sd.BND_PROCESS_CODE <> 110) and'#13#10'    ' +
          '      (sd.STORNO_EMPLOYEE_CODE is null)'#13#10'      )~'#13#10'      case'#13#10' ' +
          '       when'#13#10'          exists'#13#10'            ( select'#13#10'           ' +
          '     1'#13#10'              from'#13#10'                PLANNED_STORE_DEALS ' +
          'psd'#13#10'              where'#13#10'                (psd.BND_PROCESS_OBJEC' +
          'T_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE) and'#13#10'        ' +
          '        (psd.BND_PROCESS_OBJECT_CODE = ml.BND_PROCESS_OBJECT_COD' +
          'E) and'#13#10'                (psd.PRODUCT_CODE = ml.RESULT_PRODUCT_CO' +
          'DE) and'#13#10'                (psd.IN_OUT = 1) and'#13#10'                (' +
          'psd.IS_PLANNED_MANUALLY = 0) and'#13#10'                (psd.BND_PROCE' +
          'SS_CODE <> 110) and'#13#10'                (psd.IS_ACTIVE = 0)'#13#10'      ' +
          '      )'#13#10'          then'#13#10'          ( select'#13#10'              Max(s' +
          'd.STORE_DEAL_DATE)'#13#10'            from'#13#10'              STORE_DEALS ' +
          'sd'#13#10'            where'#13#10'              (sd.BND_PROCESS_OBJECT_BRAN' +
          'CH_CODE = s.SALE_OBJECT_BRANCH_CODE) and'#13#10'              (sd.BND_' +
          'PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'#13#10'              (sd' +
          '.IN_OUT = 1) and'#13#10'              (sd.STORNO_EMPLOYEE_CODE is null' +
          ')'#13#10'          )'#13#10'      else'#13#10'        ContextDate'#13#10'      end'#13#10'    ' +
          ']'
        ParamType = ptInput
        Value = 'To_Number(null)'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 248
    Top = 56
    object qryBoundProcessObjectPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryBoundProcessObjectPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
    object qryBoundProcessObjectPROCESS_OBJECT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CLASS_CODE'
    end
    object qryBoundProcessObjectPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 100
    end
    object qryBoundProcessObjectSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object qryBoundProcessObjectSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object qryBoundProcessObjectSALE_BRANCH_NO: TAbmesFloatField
      FieldName = 'SALE_BRANCH_NO'
    end
    object qryBoundProcessObjectSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object qryBoundProcessObjectSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 5
    end
    object qryBoundProcessObjectSALE_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_CODE'
    end
    object qryBoundProcessObjectSALE_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SALE_PRODUCT_NAME'
      Size = 100
    end
    object qryBoundProcessObjectSALE_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_NO'
    end
    object qryBoundProcessObjectSALE_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_MEASURE_ABBREV'
      Size = 5
    end
    object qryBoundProcessObjectSALE_MANUFACTURE_QUANTITY: TAbmesFloatField
      FieldName = 'SALE_MANUFACTURE_QUANTITY'
    end
    object qryBoundProcessObjectSALE_MANUFACTURE_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SALE_MANUFACTURE_TECH_QUANTITY'
    end
    object qryBoundProcessObjectSALE_MANAGER_CODE: TAbmesFloatField
      FieldName = 'SALE_MANAGER_CODE'
    end
    object qryBoundProcessObjectSALE_MANAGER_NAME: TAbmesWideStringField
      FieldName = 'SALE_MANAGER_NAME'
      Size = 41
    end
    object qryBoundProcessObjectS_ENTER_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'S_ENTER_STORE_PLAN_BEGIN_DATE'
    end
    object qryBoundProcessObjectS_ENTER_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'S_ENTER_STORE_PLAN_END_DATE'
    end
    object qryBoundProcessObjectOKIDU_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OKIDU_EMPLOYEE_CODE'
    end
    object qryBoundProcessObjectSALE_CLIENT_COMPANY_SHORT_NAME: TAbmesWideStringField
      FieldName = 'SALE_CLIENT_COMPANY_SHORT_NAME'
    end
    object qryBoundProcessObjectSALE_CLIENT_COUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_CLIENT_COUNTRY_ABBREV'
      Size = 5
    end
    object qryBoundProcessObjectSALE_CLIENT_PRODUCT_SIGNATURE: TAbmesWideStringField
      FieldName = 'SALE_CLIENT_PRODUCT_SIGNATURE'
      Size = 250
    end
    object qryBoundProcessObjectSALE_CLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'SALE_CLIENT_REQUEST_NO'
      Size = 50
    end
    object qryBoundProcessObjectSALE_PRODUCTION_DEPT_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCTION_DEPT_CODE'
    end
    object qryBoundProcessObjectSALE_TRANSIENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'SALE_TRANSIENT_STATUS_CODE'
    end
    object qryBoundProcessObjectSALE_WORKDAYS_TO_EXIST: TAbmesFloatField
      FieldName = 'SALE_WORKDAYS_TO_EXIST'
    end
    object qryBoundProcessObjectML_STATE_CODE: TAbmesFloatField
      FieldName = 'ML_STATE_CODE'
    end
    object qryBoundProcessObjectMIN_STORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_STORE_DEAL_DATE'
    end
    object qryBoundProcessObjectPRODUCTION_START_RESERVE_DAYS: TAbmesFloatField
      FieldName = 'PRODUCTION_START_RESERVE_DAYS'
    end
    object qryBoundProcessObjectSTART_STAGE_COEF: TAbmesFloatField
      FieldName = 'START_STAGE_COEF'
    end
    object qryBoundProcessObjectMODEL_WORKDAYS: TAbmesFloatField
      FieldName = 'MODEL_WORKDAYS'
    end
    object qryBoundProcessObjectSHIPMENT_STORE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_STORE_CODE'
    end
    object qryBoundProcessObjectPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object qryBoundProcessObjectINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'INITIAL_TREATMENT_WORKDAYS'
    end
    object qryBoundProcessObjectPRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'PRODUCTION_WORKDAYS'
    end
    object qryBoundProcessObjectMAX_OP_DATE_POSITIVE_DIFF: TAbmesFloatField
      FieldName = 'MAX_OP_DATE_POSITIVE_DIFF'
    end
    object qryBoundProcessObjectMIN_OP_DATE_NEGATIVE_DIFF: TAbmesFloatField
      FieldName = 'MIN_OP_DATE_NEGATIVE_DIFF'
    end
    object qryBoundProcessObjectIS_WASTE_COMPENSATING_ORDER: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATING_ORDER'
    end
    object qryBoundProcessObjectWASTING_SALE_OBJ_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_OBJ_BRANCH_CODE'
    end
    object qryBoundProcessObjectWASTING_SALE_OBJ_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_OBJ_CODE'
    end
    object qryBoundProcessObjectWASTING_SALE_BRANCH_NO: TAbmesFloatField
      FieldName = 'WASTING_SALE_BRANCH_NO'
    end
    object qryBoundProcessObjectWASTING_SALE_NO: TAbmesFloatField
      FieldName = 'WASTING_SALE_NO'
    end
    object qryBoundProcessObjectWASTING_ML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WASTING_ML_OBJECT_BRANCH_CODE'
    end
    object qryBoundProcessObjectWASTING_ML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'WASTING_ML_OBJECT_CODE'
    end
    object qryBoundProcessObjectPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qryBoundProcessObjectPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qryBoundProcessObjectPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object qryBoundProcessObjectWORK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_NO'
    end
    object qryBoundProcessObjectDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryBoundProcessObjectDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryBoundProcessObjectHAS_WASTE: TAbmesFloatField
      FieldName = 'HAS_WASTE'
    end
    object qryBoundProcessObjectWASTE_COMPENSATOR_COUNT: TAbmesFloatField
      FieldName = 'WASTE_COMPENSATOR_COUNT'
    end
    object qryBoundProcessObjectREAL_PRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'REAL_PRODUCTION_WORKDAYS'
    end
    object qryBoundProcessObjectSTART_AFTER_LIMITING_DAYS: TAbmesFloatField
      FieldName = 'START_AFTER_LIMITING_DAYS'
    end
    object qryBoundProcessObjectCOMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryBoundProcessObjectMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_CODE'
      Required = True
    end
    object qryBoundProcessObjectMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_ABBREV'
      Size = 100
    end
    object qryBoundProcessObjectPRODUCTION_START_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_START_PLAN_DATE'
    end
    object qryBoundProcessObjectPROD_ORDER_BASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_ROLE_CODE'
    end
  end
  object prvBoundProcessObject: TDataSetProvider
    DataSet = qryBoundProcessObject
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 8
  end
  object prvXModel: TDataSetProvider
    DataSet = qryXModel
    Options = [poCascadeDeletes]
    UpdateMode = upWhereKeyOnly
    OnGetData = prvXModelGetData
    OnUpdateData = prvXModelUpdateData
    OnUpdateError = prvXModelUpdateError
    AfterUpdateRecord = prvXModelAfterUpdateRecord
    BeforeUpdateRecord = prvXModelBeforeUpdateRecord
    BeforeApplyUpdates = prvXModelBeforeApplyUpdates
    AfterApplyUpdates = prvXModelAfterApplyUpdates
    AfterGetRecords = prvXModelAfterGetRecords
    Left = 120
    Top = 8
  end
  object qryXModel: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.ML_OBJECT_BRANCH_CODE,'
      '  x.ML_OBJECT_CODE,'
      '  x.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  x.BND_PROCESS_OBJECT_CODE,'
      '  x.BND_PROCESS_OBJECT_CLASS_CODE,'
      '  x.BND_SALE_ORDER_TYPE_CODE,'
      '  x.MAIN_DEPT_CODE,'
      '  x.MAIN_DEPT_NAME,'
      '  x.MAIN_DEPT_IDENTIFIER,'
      '  x.MAIN_DEPT_BEGIN_DATE,'
      '  x.MAIN_DEPT_END_DATE,'
      '  x.RESULT_PRODUCT_CODE,'
      '  x.RESULT_PRODUCT_NAME,'
      '  x.RESULT_PRODUCT_NO,'
      '  x.RES_PRODUCT_TECH_MEASURE_CODE,'
      '  x.RES_PRODUCT_TECH_MEASURE_COEF,'
      '  x.TECH_QUANTITY,'
      '  x.SPEC_VERSION_NO,'
      '  x.SPEC_MODEL_VARIANT_NO,'
      '  x.RESULT_STORE_CODE,'
      '  x.ENTER_RESULT_STORE_BEGIN_DATE,'
      '  x.ENTER_RESULT_STORE_END_DATE,'
      '  x.OWNER_EMPLOYEE_CODE,'
      '  x.IS_ARCHIVED,'
      '  x.CREATE_EMPLOYEE_CODE,'
      '  x.CREATE_DATE,'
      '  x.CREATE_TIME,'
      '  x.CHANGE_EMPLOYEE_CODE,'
      '  x.CHANGE_DATE,'
      '  x.CHANGE_TIME,'
      '  x.LIMITING_EMPLOYEE_CODE,'
      '  x.LIMITING_DATE,'
      '  x.LIMITING_TIME,'
      '  x.CLOSE_EMPLOYEE_CODE,'
      '  x.CLOSE_DATE,'
      '  x.CLOSE_TIME,'
      '  x.ANNUL_EMPLOYEE_CODE,'
      '  x.ANNUL_DATE,'
      '  x.ANNUL_TIME,'
      '  x.NOTES,'
      '  x.TRANSIENT_STATUS_CODE,'
      '  x.WORKDAYS_TO_EXIST,'
      '  x.IS_OPERATIONS_MODEL,'
      '  x.INITIAL_TREATMENT_WORKDAYS,'
      '  x.MODEL_OPERATIONS_STATUS_CODE,'
      '  x.SALE_BRANCH_NO,'
      '  x.SALE_NO,'
      '  x.SALE_GROUP_BRANCH_NO,'
      '  x.SALE_GROUP_CODE,'
      '  x.MAX_MLMS_OBJECT_CODE,'
      '  x.MAX_MLMSO_OBJECT_CODE,'
      '  x.QUANTITY_IN,'
      ''
      
        '  MiscUtils.GetNamedValue(x.MODEL_LEVEL_1_INVESTED_VALUE, '#39'VALUE' +
        #39') as MODEL_LEVEL_1_INVESTED_VALUE,'
      
        '  MiscUtils.GetNamedValue(x.MODEL_LEVEL_1_INVESTED_VALUE, '#39'IS_IN' +
        'COMPLETE'#39') as MODEL_LEVEL_1_IV_IS_INCOMPLETE,'
      ''
      '  x.LAST_SHIPMENT_STORE_IN_DATE,'
      '  x.SALE_REMAINING_QUANTITY'
      ''
      'from'
      '  ( select'
      '      ml.ML_OBJECT_BRANCH_CODE,'
      '      ml.ML_OBJECT_CODE,'
      '      ml.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '      ml.BND_PROCESS_OBJECT_CODE,'
      
        '      po.PROCESS_OBJECT_CLASS_CODE as BND_PROCESS_OBJECT_CLASS_C' +
        'ODE,'
      '      s.SALE_ORDER_TYPE_CODE as BND_SALE_ORDER_TYPE_CODE,'
      '      ml.MAIN_DEPT_CODE,'
      '      d.NAME as MAIN_DEPT_NAME,'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        'as MAIN_DEPT_IDENTIFIER,'
      '      d.BEGIN_DATE as MAIN_DEPT_BEGIN_DATE,'
      '      d.END_DATE as MAIN_DEPT_END_DATE,'
      '      ml.RESULT_PRODUCT_CODE,'
      '      p.NAME as RESULT_PRODUCT_NAME,'
      '      p.CUSTOM_CODE as RESULT_PRODUCT_NO,'
      '      p.TECH_MEASURE_CODE as RES_PRODUCT_TECH_MEASURE_CODE,'
      '      p.TECH_MEASURE_COEF as RES_PRODUCT_TECH_MEASURE_COEF,'
      '      ml.TECH_QUANTITY,'
      '      ml.SPEC_VERSION_NO,'
      '      ml.SPEC_MODEL_VARIANT_NO,'
      '      ml.RESULT_STORE_CODE,'
      '      ml.ENTER_RESULT_STORE_BEGIN_DATE,'
      '      ml.ENTER_RESULT_STORE_END_DATE,'
      '      ml.OWNER_EMPLOYEE_CODE,'
      '      ml.IS_ARCHIVED,'
      '      ml.CREATE_EMPLOYEE_CODE,'
      '      ml.CREATE_DATE,'
      '      ml.CREATE_TIME,'
      '      ml.CHANGE_EMPLOYEE_CODE,'
      '      ml.CHANGE_DATE,'
      '      ml.CHANGE_TIME,'
      '      ml.LIMITING_EMPLOYEE_CODE,'
      '      ml.LIMITING_DATE,'
      '      ml.LIMITING_TIME,'
      '      ml.CLOSE_EMPLOYEE_CODE,'
      '      ml.CLOSE_DATE,'
      '      ml.CLOSE_TIME,'
      '      ml.ANNUL_EMPLOYEE_CODE,'
      '      ml.ANNUL_DATE,'
      '      ml.ANNUL_TIME,'
      '      ml.NOTES,'
      '      ml.TRANSIENT_STATUS_CODE,'
      '      ml.WORKDAYS_TO_EXIST,'
      '      ml.IS_OPERATIONS_MODEL,'
      '      ml.INITIAL_TREATMENT_WORKDAYS,'
      
        '      %MODEL_OPERATIONS_STATUS[ml] as MODEL_OPERATIONS_STATUS_CO' +
        'DE,'
      '      sd.CUSTOM_CODE as SALE_BRANCH_NO,'
      '      s.SALE_NO,'
      '      sgd.CUSTOM_CODE as SALE_GROUP_BRANCH_NO,'
      '      sg.SALE_GROUP_CODE,'
      ''
      '      ('
      '        select'
      '          Max(mlmsx.MLMS_OBJECT_CODE) as MAX_MLMS_OBJECT_CODE'
      '        from'
      '          ML_MODEL_STAGES mlmsx,'
      '          MATERIAL_LIST_LINES mllx'
      '        where'
      
        '          (mlmsx.MLL_OBJECT_BRANCH_CODE = mllx.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '          (mlmsx.MLL_OBJECT_CODE = mllx.MLL_OBJECT_CODE) and'
      
        '          (mllx.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE' +
        ') and'
      '          (mllx.ML_OBJECT_CODE = ml.ML_OBJECT_CODE)'
      '      ) as MAX_MLMS_OBJECT_CODE,'
      ''
      '      ('
      '        select'
      '          Max(mlmsox.MLMSO_OBJECT_CODE) as MAX_MLMSO_OBJECT_CODE'
      '        from'
      '          MLMS_OPERATIONS mlmsox,'
      '          ML_MODEL_STAGES mlmsx,'
      '          MATERIAL_LIST_LINES mllx'
      '        where'
      
        '          (mlmsox.MLMS_OBJECT_BRANCH_CODE = mlmsx.MLMS_OBJECT_BR' +
        'ANCH_CODE) and'
      '          (mlmsox.MLMS_OBJECT_CODE = mlmsx.MLMS_OBJECT_CODE) and'
      
        '          (mlmsx.MLL_OBJECT_BRANCH_CODE = mllx.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '          (mlmsx.MLL_OBJECT_CODE = mllx.MLL_OBJECT_CODE) and'
      
        '          (mllx.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE' +
        ') and'
      '          (mllx.ML_OBJECT_CODE = ml.ML_OBJECT_CODE)'
      '      ) as MAX_MLMSO_OBJECT_CODE,'
      ''
      '      ('
      '         select'
      '           Sum(sd.QUANTITY) as QUANTITY_IN'
      '         from'
      '           STORE_DEALS sd'
      '         where'
      
        '           (sd.BND_PROCESS_OBJECT_BRANCH_CODE = ml.BND_PROCESS_O' +
        'BJECT_BRANCH_CODE) and'
      
        '           (sd.BND_PROCESS_OBJECT_CODE = ml.BND_PROCESS_OBJECT_C' +
        'ODE) and'
      '           (sd.PRODUCT_CODE = ml.RESULT_PRODUCT_CODE) and'
      '           (sd.IN_OUT = 1) and'
      '           (sd.STORNO_EMPLOYEE_CODE is null)'
      '      ) as QUANTITY_IN,'
      ''
      
        '      ModelUtils.ModelInvestedValue2(ml.ML_OBJECT_BRANCH_CODE, m' +
        'l.ML_OBJECT_CODE, 1, 0, 0,'
      '        ('
      '          select'
      '            iv.BASE_CURRENCY_CODE'
      '          from'
      '            INTERNAL_VALUES iv'
      '          where'
      '            (iv.CODE = 1)'
      '        )'
      '      ) as MODEL_LEVEL_1_INVESTED_VALUE,'
      ''
      '      ('
      '        select'
      '          Max(sd.STORE_DEAL_DATE) as LAST_SHIPMENT_STORE_IN_DATE'
      '        from'
      '          STORE_DEALS sd'
      '        where'
      
        '          (sd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRA' +
        'NCH_CODE) and'
      '          (sd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '          (sd.IN_OUT > 0) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null)'
      '      ) as LAST_SHIPMENT_STORE_IN_DATE,'
      ''
      '      ( select'
      '          MiscUtils.LargeZero(psd.REMAINING_QUANTITY)'
      '        from'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BR' +
        'ANCH_CODE) and'
      '          (psd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '          (psd.IN_OUT = 1)'
      '      ) as SALE_REMAINING_QUANTITY'
      ''
      '    from'
      '      MATERIAL_LISTS ml,'
      '      PROCESS_OBJECTS po,'
      '      DEPTS d,'
      '      DEPT_TYPES dt,'
      '      PRODUCTS p,'
      '      SALES s,'
      '      DEPTS sd,'
      '      SALE_GROUPS sg,'
      '      DEPTS sgd'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = po.PROCESS_OBJECT_CODE) and'
      '      (ml.MAIN_DEPT_CODE = d.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (ml.RESULT_PRODUCT_CODE = p.PRODUCT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE(+)) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE(+)) and'
      '      (s.SALE_BRANCH_CODE = sd.DEPT_CODE(+)) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_' +
        'BRANCH_CODE(+)) and'
      
        '      (ml.BND_PROCESS_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE(+)' +
        ') and'
      '      (sg.SALE_GROUP_BRANCH_CODE = sgd.DEPT_CODE(+)) and'
      '      (ml.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '      (ml.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      '  ) x')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'MODEL_OPERATIONS_STATUS[ml]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'MATERIAL_LISTS_FOR_EDIT'
    AfterProviderStartTransaction = qryXModelAfterProviderStartTransaction
    BeforeProviderEndTransaction = qryXModelBeforeProviderEndTransaction
    Left = 120
    Top = 56
    object qryXModelML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryXModelML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryXModelBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryXModelBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object qryXModelBND_PROCESS_OBJECT_CLASS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CLASS_CODE'
      ProviderFlags = []
    end
    object qryXModelBND_SALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BND_SALE_ORDER_TYPE_CODE'
      ProviderFlags = []
    end
    object qryXModelMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object qryXModelMAIN_DEPT_NAME: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryXModelMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryXModelMAIN_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAIN_DEPT_BEGIN_DATE'
      ProviderFlags = []
    end
    object qryXModelMAIN_DEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAIN_DEPT_END_DATE'
      ProviderFlags = []
    end
    object qryXModelRESULT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'RESULT_PRODUCT_CODE'
    end
    object qryXModelRESULT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'RESULT_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryXModelRESULT_PRODUCT_NO: TAbmesFloatField
      FieldName = 'RESULT_PRODUCT_NO'
      ProviderFlags = []
    end
    object qryXModelRES_PRODUCT_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'RES_PRODUCT_TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryXModelRES_PRODUCT_TECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'RES_PRODUCT_TECH_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryXModelTECH_QUANTITY: TAbmesFloatField
      FieldName = 'TECH_QUANTITY'
    end
    object qryXModelSPEC_VERSION_NO: TAbmesFloatField
      FieldName = 'SPEC_VERSION_NO'
    end
    object qryXModelSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qryXModelRESULT_STORE_CODE: TAbmesFloatField
      FieldName = 'RESULT_STORE_CODE'
    end
    object qryXModelENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_RESULT_STORE_BEGIN_DATE'
    end
    object qryXModelENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_RESULT_STORE_END_DATE'
    end
    object qryXModelOWNER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OWNER_EMPLOYEE_CODE'
    end
    object qryXModelIS_ARCHIVED: TAbmesFloatField
      FieldName = 'IS_ARCHIVED'
    end
    object qryXModelCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryXModelCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryXModelCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryXModelCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryXModelCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryXModelCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryXModelLIMITING_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'LIMITING_EMPLOYEE_CODE'
    end
    object qryXModelLIMITING_DATE: TAbmesSQLTimeStampField
      FieldName = 'LIMITING_DATE'
    end
    object qryXModelLIMITING_TIME: TAbmesSQLTimeStampField
      FieldName = 'LIMITING_TIME'
    end
    object qryXModelCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryXModelCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryXModelCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object qryXModelANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryXModelANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryXModelANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryXModelNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryXModelTRANSIENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'TRANSIENT_STATUS_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryXModelWORKDAYS_TO_EXIST: TAbmesFloatField
      FieldName = 'WORKDAYS_TO_EXIST'
      ProviderFlags = [pfInUpdate]
    end
    object qryXModelIS_OPERATIONS_MODEL: TAbmesFloatField
      FieldName = 'IS_OPERATIONS_MODEL'
      ProviderFlags = [pfInUpdate]
    end
    object qryXModelINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'INITIAL_TREATMENT_WORKDAYS'
    end
    object qryXModelSALE_BRANCH_NO: TAbmesFloatField
      FieldName = 'SALE_BRANCH_NO'
      ProviderFlags = []
    end
    object qryXModelSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
      ProviderFlags = []
    end
    object qryXModelSALE_GROUP_BRANCH_NO: TAbmesFloatField
      FieldName = 'SALE_GROUP_BRANCH_NO'
      ProviderFlags = []
    end
    object qryXModelSALE_GROUP_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_CODE'
      ProviderFlags = []
    end
    object qryXModelMAX_MLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MAX_MLMS_OBJECT_CODE'
      ProviderFlags = []
    end
    object qryXModelMAX_MLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MAX_MLMSO_OBJECT_CODE'
      ProviderFlags = []
    end
    object qryXModelQUANTITY_IN: TAbmesFloatField
      FieldName = 'QUANTITY_IN'
      ProviderFlags = []
    end
    object qryXModelMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField
      FieldName = 'MODEL_OPERATIONS_STATUS_CODE'
      ProviderFlags = []
    end
    object qryXModelMODEL_LEVEL_1_INVESTED_VALUE: TAbmesFloatField
      FieldName = 'MODEL_LEVEL_1_INVESTED_VALUE'
      ProviderFlags = []
    end
    object qryXModelMODEL_LEVEL_1_IV_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'MODEL_LEVEL_1_IV_IS_INCOMPLETE'
      ProviderFlags = []
    end
    object qryXModelLAST_SHIPMENT_STORE_IN_DATE: TAbmesSQLTimeStampField
      FieldName = 'LAST_SHIPMENT_STORE_IN_DATE'
    end
    object qryXModelSALE_REMAINING_QUANTITY: TAbmesFloatField
      FieldName = 'SALE_REMAINING_QUANTITY'
      ProviderFlags = []
    end
  end
  object dsXModel: TDataSource
    DataSet = qryXModel
    Left = 120
    Top = 104
  end
  object qryXModelLines: TAbmesSQLQuery
    DataSource = dsXModel
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  mll.MLL_OBJECT_BRANCH_CODE,'
      '  mll.MLL_OBJECT_CODE,'
      '  mll.ML_OBJECT_BRANCH_CODE,'
      '  mll.ML_OBJECT_CODE,'
      '  mll.PARENT_MLL_OBJECT_BRANCH_CODE,'
      '  mll.PARENT_MLL_OBJECT_CODE,'
      '  mll.FORK_0_MLL_OBJECT_BRANCH_CODE,'
      '  mll.FORK_0_MLL_OBJECT_CODE,'
      '  mll.NO_1,'
      '  mll.NO_2,'
      '  mll.NO_3,'
      '  mll.NO_4,'
      '  mll.NO_5,'
      '  mll.NO_6,'
      '  mll.NO_7,'
      '  mll.NO_8,'
      '  mll.NO_9,'
      '  mll.NO_10,'
      '  mll.NO_11,'
      '  mll.NO_12,'
      '  mll.NO_13,'
      '  mll.NO_14,'
      '  mll.NO_15,'
      '  mll.NO_16,'
      '  mll.NO_17,'
      '  mll.NO_18,'
      '  mll.NO_19,'
      '  mll.NO_20,'
      '  mll.NO_21,'
      '  mll.NO_22,'
      '  mll.NO_23,'
      '  mll.NO_24,'
      '  mll.NO_25,'
      '  mll.NO_AS_TEXT,'
      '  mll.NO_AS_FORMATED_TEXT,'
      '  mll.FORK_NO,'
      '  mll.IS_WASTE_FORK,'
      
        '  RPad(mll.NO_AS_FORMATED_TEXT, 100, Decode(mll.FORK_NO, 0, '#39' '#39',' +
        ' '#39'x'#39')) as NO_AS_FORMATED_TEXT_EX,'
      '  mll.DETAIL_CODE,'
      '  dp.NAME as DETAIL_NAME,'
      '  dp.CUSTOM_CODE as DETAIL_NO,'
      ''
      '  %HAS_DOC_ITEMS[dp] as DETAIL_HAS_DOCUMENTATION,'
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
      '  mll.DETAIL_TECH_QUANTITY,'
      '  mll.TOTAL_DETAIL_TECH_QUANTITY,'
      '  mll.LINE_DETAIL_TECH_QUANTITY,'
      
        '  Decode(mll.FORK_NO, 0, pmll.LINE_DETAIL_TECH_QUANTITY, null) a' +
        's PAR_LINE_DETAIL_TECH_QUANTITY,'
      '  dp.TECH_MEASURE_CODE as DETAIL_TECH_MEASURE_CODE,'
      '  mll.PRODUCT_CODE,'
      '  pp.NAME as PRODUCT_NAME,'
      '  pp.CUSTOM_CODE as PRODUCT_NO,'
      ''
      '  %HAS_DOC_ITEMS[pp] as PRODUCT_HAS_DOCUMENTATION,'
      '  pp.IS_INACTIVE as PRODUCT_IS_INACTIVE,'
      ''
      '  mll.PRODUCT_TECH_QUANTITY,'
      
        '  (mll.LINE_DETAIL_TECH_QUANTITY * mll.PRODUCT_TECH_QUANTITY) as' +
        ' TOTAL_PRODUCT_TECH_QUANTITY,'
      '  pp.TECH_MEASURE_CODE as PRODUCT_TECH_MEASURE_CODE,'
      '  pp.TECH_MEASURE_COEF as PRODUCT_TECH_MEASURE_COEF,'
      ''
      '  ( mll.LINE_DETAIL_TECH_QUANTITY *'
      '    (mll.PRODUCT_TECH_QUANTITY / pp.TECH_MEASURE_COEF) *'
      '    pp.ACCOUNT_MEASURE_COEF'
      '  ) as TOTAL_PRODUCT_ACCOUNT_QUANTITY,'
      ''
      '  pp.ACCOUNT_MEASURE_CODE as PRODUCT_ACCOUNT_MEASURE_CODE,'
      '  pp.ACCOUNT_MEASURE_COEF as PRODUCT_ACCOUNT_MEASURE_COEF,'
      ''
      
        '  (%PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[pp.PRODUCT_CODE ~ mll' +
        '.PRODUCT_NEED_BEGIN_DATE] / pp.ACCOUNT_MEASURE_COEF) as PRODUCT_' +
        'SECONDARY_SINGLE_PRICE,'
      ''
      
        '  (%PSD_SINGLE_PRICE_IN_BASE_CURRENCY[pp.PRODUCT_CODE ~ mll.PROD' +
        'UCT_NEED_BEGIN_DATE] / pp.ACCOUNT_MEASURE_COEF) as PRODUCT_SINGL' +
        'E_PRICE,'
      ''
      
        '  %PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[pp.PRODUCT_CODE ~ mll.PRO' +
        'DUCT_NEED_BEGIN_DATE] as PRODUCT_INVESTMENT_VALUE_2,'
      
        '  %PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[pp.PRODUCT_CODE ~ mll.PRO' +
        'DUCT_NEED_BEGIN_DATE] as PRODUCT_INVESTMENT_VALUE_3,'
      
        '  %PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[pp.PRODUCT_CODE ~ mll.PRO' +
        'DUCT_NEED_BEGIN_DATE] as PRODUCT_INVESTMENT_VALUE_4,'
      
        '  %PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[pp.PRODUCT_CODE ~ mll.PRO' +
        'DUCT_NEED_BEGIN_DATE] as PRODUCT_INVESTMENT_VALUE_5,'
      ''
      
        '  %PRODUCT_PRECISION_LEVEL_CODE[pp.PRODUCT_CODE ~ mll.PRODUCT_NE' +
        'ED_BEGIN_DATE] as PRODUCT_PRECISION_LEVEL_CODE,'
      ''
      '  ( mll.LINE_DETAIL_TECH_QUANTITY *'
      '    mll.PRODUCT_TECH_QUANTITY *'
      
        '    %PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[pp.PRODUCT_CODE ~ ml' +
        'l.PRODUCT_NEED_BEGIN_DATE] /'
      '    pp.TECH_MEASURE_COEF'
      '  ) as PRODUCT_SECONDARY_TOTAL_PRICE,'
      ''
      '  mll.IS_FOR_SINGLE_USE,'
      ''
      
        '  Nvl2(mll.PRODUCT_CODE, Decode(mll.PRODUCT_CODE, mll.DETAIL_COD' +
        'E, 0, 1), 0) as PRODUCT_IS_FOR_TREATMENT_USE,'
      
        '  Decode(mll.PRODUCT_CODE, mll.DETAIL_CODE, 1, 0) as PRODUCT_IS_' +
        'FOR_DIRECT_USE,'
      '  mll.STORE_CODE,'
      '  mll.PRODUCT_NEED_BEGIN_DATE,'
      '  mll.PRODUCT_NEED_END_DATE,'
      '  mll.NOTES,'
      '  mll.CONSTRUCTION_NOTES,'
      '  mll.ANNUL_EMPLOYEE_CODE,'
      '  mll.ANNUL_DATE,'
      '  mll.ANNUL_TIME,'
      '  Decode(mll.FORK_NO, 0, 0, 1) as IS_FORK,'
      '  Decode(mll.FORK_NO, 0, 1, 0) as IS_NOT_FORK,'
      '  mllc.MATERIAL_LIST_LINE_CHANGE_NO,'
      ''
      '  Nvl2(mllc.MLL_OBJECT_CODE,'
      '    Nvl2(mllc.REPLY_EMPLOYEE_CODE, 2, 1),'
      '    0'
      '  ) as MLL_CHANGE_STATUS,'
      ''
      '  ( select'
      
        '      /*+NO_USE_HASH(mlms msl mm) NO_USE_MERGE(mlms msl mm) USE_' +
        'NL(mlms msl mm)*/'
      '      Max(mlms.ML_MODEL_STAGE_NO)'
      '    from'
      '      ML_MODEL_STAGES mlms,'
      '      MODEL_STAGE_LINKS msl,'
      '      MODEL_MOVEMENTS mm'
      '    where'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      ''
      
        '      (mlms.MLMS_OBJECT_BRANCH_CODE = msl.TO_MLMS_OBJECT_BRANCH_' +
        'CODE) and'
      '      (mlms.MLMS_OBJECT_CODE = msl.TO_MLMS_OBJECT_CODE) and'
      ''
      
        '      (msl.FROM_MLMS_OBJECT_BRANCH_CODE = mm.FROM_MLMS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (msl.FROM_MLMS_OBJECT_CODE = mm.FROM_MLMS_OBJECT_CODE) and'
      ''
      '      (mm.STORNO_EMPLOYEE_CODE is null)'
      '  ) as LAST_MM_MLMS_MODEL_STAGE_NO,'
      ''
      '  ('
      
        '    %MAX_MLL_MOVED_TECH_QUANTITY[mll.MLL_OBJECT_BRANCH_CODE~ mll' +
        '.MLL_OBJECT_CODE] -'
      
        '    ModelUtils.MllAggregatedWasteTechQuantity(mll.MLL_OBJECT_BRA' +
        'NCH_CODE, mll.MLL_OBJECT_CODE)'
      '  ) as MAX_MOVED_TECH_QUANTITY,'
      ''
      '  ( select'
      '      Count(sd.STORE_DEAL_OBJECT_CODE)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as NOT_STORNO_STORE_DEAL_COUNT,'
      ''
      '  mll.APPROVE_CYCLE_NO,'
      '  mll.IS_COMPLETE,'
      ''
      '  %PRODUCT_COMMON_STATUS_CODE[dp] as DETAIL_COMMON_STATUS_CODE,'
      '  %PRODUCT_COMMON_STATUS_CODE[pp] as PRODUCT_COMMON_STATUS_CODE'
      ''
      'from'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LIST_LINES pmll,'
      '  PRODUCTS dp,'
      '  PRODUCTS pp,'
      '  MATERIAL_LIST_LINE_CHANGES mllc'
      ''
      'where'
      
        '  (mll.PARENT_MLL_OBJECT_BRANCH_CODE = pmll.MLL_OBJECT_BRANCH_CO' +
        'DE(+)) and'
      '  (mll.PARENT_MLL_OBJECT_CODE = pmll.MLL_OBJECT_CODE(+)) and'
      '  (mll.DETAIL_CODE = dp.PRODUCT_CODE) and'
      '  (mll.PRODUCT_CODE = pp.PRODUCT_CODE(+)) and'
      
        '  (mll.MLL_OBJECT_BRANCH_CODE = mllc.MLL_OBJECT_BRANCH_CODE(+)) ' +
        'and'
      '  (mll.MLL_OBJECT_CODE = mllc.MLL_OBJECT_CODE(+)) and'
      '  (mllc.REPLY_ACCEPT_EMPLOYEE_CODE(+) is null) and'
      '  (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
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
          'PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[pp.PRODUCT_CODE ~ mll.PRO' +
          'DUCT_NEED_BEGIN_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[pp.PRODUCT_CODE ~ mll.PRODUCT_' +
          'NEED_BEGIN_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[pp.PRODUCT_CODE ~ mll.PRODUC' +
          'T_NEED_BEGIN_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[pp.PRODUCT_CODE ~ mll.PRODUC' +
          'T_NEED_BEGIN_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[pp.PRODUCT_CODE ~ mll.PRODUC' +
          'T_NEED_BEGIN_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[pp.PRODUCT_CODE ~ mll.PRODUC' +
          'T_NEED_BEGIN_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_PRECISION_LEVEL_CODE[pp.PRODUCT_CODE ~ mll.PRODUCT_NEED_' +
          'BEGIN_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'MAX_MLL_MOVED_TECH_QUANTITY[mll.MLL_OBJECT_BRANCH_CODE~ mll.MLL_' +
          'OBJECT_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_COMMON_STATUS_CODE[dp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_COMMON_STATUS_CODE[pp]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'MATERIAL_LIST_LINES_FOR_EDIT'
    Left = 56
    Top = 152
    object qryXModelLinesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryXModelLinesMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryXModelLinesML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object qryXModelLinesML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object qryXModelLinesPARENT_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PARENT_MLL_OBJECT_BRANCH_CODE'
    end
    object qryXModelLinesPARENT_MLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PARENT_MLL_OBJECT_CODE'
    end
    object qryXModelLinesFORK_0_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FORK_0_MLL_OBJECT_BRANCH_CODE'
    end
    object qryXModelLinesFORK_0_MLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'FORK_0_MLL_OBJECT_CODE'
    end
    object qryXModelLinesNO_1: TAbmesFloatField
      FieldName = 'NO_1'
    end
    object qryXModelLinesNO_2: TAbmesFloatField
      FieldName = 'NO_2'
    end
    object qryXModelLinesNO_3: TAbmesFloatField
      FieldName = 'NO_3'
    end
    object qryXModelLinesNO_4: TAbmesFloatField
      FieldName = 'NO_4'
    end
    object qryXModelLinesNO_5: TAbmesFloatField
      FieldName = 'NO_5'
    end
    object qryXModelLinesNO_6: TAbmesFloatField
      FieldName = 'NO_6'
    end
    object qryXModelLinesNO_7: TAbmesFloatField
      FieldName = 'NO_7'
    end
    object qryXModelLinesNO_8: TAbmesFloatField
      FieldName = 'NO_8'
    end
    object qryXModelLinesNO_9: TAbmesFloatField
      FieldName = 'NO_9'
    end
    object qryXModelLinesNO_10: TAbmesFloatField
      FieldName = 'NO_10'
    end
    object qryXModelLinesNO_11: TAbmesFloatField
      FieldName = 'NO_11'
    end
    object qryXModelLinesNO_12: TAbmesFloatField
      FieldName = 'NO_12'
    end
    object qryXModelLinesNO_13: TAbmesFloatField
      FieldName = 'NO_13'
    end
    object qryXModelLinesNO_14: TAbmesFloatField
      FieldName = 'NO_14'
    end
    object qryXModelLinesNO_15: TAbmesFloatField
      FieldName = 'NO_15'
    end
    object qryXModelLinesNO_16: TAbmesFloatField
      FieldName = 'NO_16'
    end
    object qryXModelLinesNO_17: TAbmesFloatField
      FieldName = 'NO_17'
    end
    object qryXModelLinesNO_18: TAbmesFloatField
      FieldName = 'NO_18'
    end
    object qryXModelLinesNO_19: TAbmesFloatField
      FieldName = 'NO_19'
    end
    object qryXModelLinesNO_20: TAbmesFloatField
      FieldName = 'NO_20'
    end
    object qryXModelLinesNO_21: TAbmesFloatField
      FieldName = 'NO_21'
    end
    object qryXModelLinesNO_22: TAbmesFloatField
      FieldName = 'NO_22'
    end
    object qryXModelLinesNO_23: TAbmesFloatField
      FieldName = 'NO_23'
    end
    object qryXModelLinesNO_24: TAbmesFloatField
      FieldName = 'NO_24'
    end
    object qryXModelLinesNO_25: TAbmesFloatField
      FieldName = 'NO_25'
    end
    object qryXModelLinesNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qryXModelLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object qryXModelLinesFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object qryXModelLinesIS_WASTE_FORK: TAbmesFloatField
      FieldName = 'IS_WASTE_FORK'
    end
    object qryXModelLinesNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT_EX'
      ProviderFlags = []
      Size = 100
    end
    object qryXModelLinesDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qryXModelLinesDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryXModelLinesDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
      ProviderFlags = []
    end
    object qryXModelLinesDETAIL_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryXModelLinesDETAIL_IS_INACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_IS_INACTIVE'
      ProviderFlags = []
    end
    object qryXModelLinesDETAIL_PARENT_CODE: TAbmesFloatField
      FieldName = 'DETAIL_PARENT_CODE'
      ProviderFlags = []
    end
    object qryXModelLinesDETAIL_IS_SELF_APPROVED: TAbmesFloatField
      FieldName = 'DETAIL_IS_SELF_APPROVED'
      ProviderFlags = []
    end
    object qryXModelLinesDETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_QUANTITY'
    end
    object qryXModelLinesTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_DETAIL_TECH_QUANTITY'
    end
    object qryXModelLinesLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'LINE_DETAIL_TECH_QUANTITY'
    end
    object qryXModelLinesPAR_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PAR_LINE_DETAIL_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qryXModelLinesDETAIL_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'DETAIL_TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryXModelLinesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryXModelLinesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_IS_INACTIVE: TAbmesFloatField
      FieldName = 'PRODUCT_IS_INACTIVE'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object qryXModelLinesTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_TECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryXModelLinesTOTAL_PRODUCT_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_ACCOUNT_QUANTITY'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_SECONDARY_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SECONDARY_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_INVESTMENT_VALUE_2: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_2'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_INVESTMENT_VALUE_3: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_3'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_INVESTMENT_VALUE_4: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_4'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_INVESTMENT_VALUE_5: TAbmesFloatField
      FieldName = 'PRODUCT_INVESTMENT_VALUE_5'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_PRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PRECISION_LEVEL_CODE'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_SECONDARY_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SECONDARY_TOTAL_PRICE'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_IS_FOR_TREATMENT_USE: TAbmesFloatField
      FieldName = 'PRODUCT_IS_FOR_TREATMENT_USE'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_IS_FOR_DIRECT_USE: TAbmesFloatField
      FieldName = 'PRODUCT_IS_FOR_DIRECT_USE'
      ProviderFlags = []
    end
    object qryXModelLinesSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryXModelLinesPRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCT_NEED_BEGIN_DATE'
    end
    object qryXModelLinesPRODUCT_NEED_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCT_NEED_END_DATE'
    end
    object qryXModelLinesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryXModelLinesCONSTRUCTION_NOTES: TAbmesWideStringField
      FieldName = 'CONSTRUCTION_NOTES'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object qryXModelLinesANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryXModelLinesANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryXModelLinesANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryXModelLinesIS_FORK: TAbmesFloatField
      FieldName = 'IS_FORK'
      ProviderFlags = []
    end
    object qryXModelLinesIS_NOT_FORK: TAbmesFloatField
      FieldName = 'IS_NOT_FORK'
      ProviderFlags = []
    end
    object qryXModelLinesMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField
      FieldName = 'MATERIAL_LIST_LINE_CHANGE_NO'
      ProviderFlags = []
    end
    object qryXModelLinesMLL_CHANGE_STATUS: TAbmesFloatField
      FieldName = 'MLL_CHANGE_STATUS'
      ProviderFlags = []
    end
    object qryXModelLinesLAST_MM_MLMS_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'LAST_MM_MLMS_MODEL_STAGE_NO'
      ProviderFlags = []
    end
    object qryXModelLinesNOT_STORNO_STORE_DEAL_COUNT: TAbmesFloatField
      FieldName = 'NOT_STORNO_STORE_DEAL_COUNT'
      ProviderFlags = []
    end
    object qryXModelLinesIS_FOR_SINGLE_USE: TAbmesFloatField
      FieldName = 'IS_FOR_SINGLE_USE'
      ProviderFlags = [pfInUpdate]
    end
    object qryXModelLinesMAX_MOVED_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_MOVED_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qryXModelLinesAPPROVE_CYCLE_NO: TAbmesFloatField
      FieldName = 'APPROVE_CYCLE_NO'
    end
    object qryXModelLinesIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
    end
    object qryXModelLinesDETAIL_COMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'DETAIL_COMMON_STATUS_CODE'
      ProviderFlags = []
    end
    object qryXModelLinesPRODUCT_COMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_COMMON_STATUS_CODE'
      ProviderFlags = []
    end
  end
  object dsXModelLines: TDataSource
    DataSet = qryXModelLines
    Left = 56
    Top = 200
  end
  object qryXModelLineStages: TAbmesSQLQuery
    BeforeScroll = qryXModelLineStagesBeforeScroll
    DataSource = dsXModelLines
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  mlms.MLMS_OBJECT_BRANCH_CODE,'
      '  mlms.MLMS_OBJECT_CODE,'
      '  mlms.MLL_OBJECT_BRANCH_CODE,'
      '  mlms.MLL_OBJECT_CODE,'
      '  mlms.ML_MODEL_STAGE_NO,'
      '  mlms.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  Nvl2(s.STORE_CODE, 1, 0) as DEPT_IS_STORE,'
      '  d.BEGIN_DATE as DEPT_BEGIN_DATE,'
      '  d.END_DATE as DEPT_END_DATE,'
      '  mlms.TREATMENT_WORKDAYS,'
      '  mlms.TOTAL_TREATMENT_WORKDAYS,'
      '  mlms.OUTGOING_WORKDAYS,'
      '  mlms.IS_AUTO_MOVEMENT,'
      '  mlms.TREATMENT_BEGIN_DATE,'
      '  mlms.TREATMENT_END_DATE,'
      '  mlms.DOC_BRANCH_CODE,'
      '  mlms.DOC_CODE,'
      '  mlms.EXTERNAL_WORK_PRICE,'
      ''
      '  %HAS_DOC_ITEMS[mlms] as HAS_DOCUMENTATION,'
      ''
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = mlms.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = mlms.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = mlms.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = mlms.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = mlms.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = mlms.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      MLMS_OPERATIONS mlmso'
      '    where'
      
        '      (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_C' +
        'ODE) and'
      '      (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '      (mlmso.MLMS_OPERATION_VARIANT_NO = 0)'
      '  ) as OPERATION_COUNT,'
      ''
      '  mll.NO_1,'
      '  mll.NO_2,'
      '  mll.NO_3,'
      '  mll.NO_4,'
      '  mll.NO_5,'
      '  mll.NO_6,'
      '  mll.NO_7,'
      '  mll.NO_8,'
      '  mll.NO_9,'
      '  mll.NO_10,'
      '  mll.NO_11,'
      '  mll.NO_12,'
      '  mll.NO_13,'
      '  mll.NO_14,'
      '  mll.NO_15,'
      '  mll.NO_16,'
      '  mll.NO_17,'
      '  mll.NO_18,'
      '  mll.NO_19,'
      '  mll.NO_20,'
      '  mll.NO_21,'
      '  mll.NO_22,'
      '  mll.NO_23,'
      '  mll.NO_24,'
      '  mll.NO_25,'
      '  mll.FORK_NO,'
      ''
      '  ('
      '    select'
      '      Max(mlmso.MLMS_OPERATION_NO)'
      '    from'
      '      MLMS_OPERATIONS mlmso'
      '    where'
      
        '      (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_C' +
        'ODE) and'
      '      (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      ''
      '      exists('
      '        select'
      '          1'
      '        from'
      '          OPERATION_MOVEMENTS om'
      '        where'
      
        '          (om.TO_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_B' +
        'RANCH_CODE) and'
      
        '          (om.TO_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) an' +
        'd'
      '          (om.STORNO_EMPLOYEE_CODE is null)'
      '      )'
      '  ) as LAST_OM_MLMS_OPERATION_NO'
      ''
      'from'
      '  ML_MODEL_STAGES mlms,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  STORES s,'
      '  MATERIAL_LIST_LINES mll'
      ''
      'where'
      '  (mlms.DEPT_CODE = d.DEPT_CODE) and'
      ''
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      ''
      '  (d.DEPT_CODE = s.STORE_CODE(+)) and'
      ''
      '  (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '  (mlms.MLL_OBJECT_BRANCH_CODE = :MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = :MLL_OBJECT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[mlms]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'ML_MODEL_STAGES_FOR_EDIT'
    Left = 56
    Top = 248
    object qryXModelLineStagesMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryXModelLineStagesMLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryXModelLineStagesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryXModelLineStagesMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object qryXModelLineStagesML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
    object qryXModelLineStagesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryXModelLineStagesDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryXModelLineStagesDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryXModelLineStagesDEPT_IS_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_STORE'
      ProviderFlags = []
    end
    object qryXModelLineStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
      ProviderFlags = []
    end
    object qryXModelLineStagesDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
      ProviderFlags = []
    end
    object qryXModelLineStagesTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object qryXModelLineStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TOTAL_TREATMENT_WORKDAYS'
    end
    object qryXModelLineStagesOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object qryXModelLineStagesIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      FieldValueType = fvtBoolean
    end
    object qryXModelLineStagesTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_BEGIN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryXModelLineStagesTREATMENT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_END_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryXModelLineStagesNO_1: TAbmesFloatField
      FieldName = 'NO_1'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_2: TAbmesFloatField
      FieldName = 'NO_2'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_3: TAbmesFloatField
      FieldName = 'NO_3'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_4: TAbmesFloatField
      FieldName = 'NO_4'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_5: TAbmesFloatField
      FieldName = 'NO_5'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_6: TAbmesFloatField
      FieldName = 'NO_6'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_7: TAbmesFloatField
      FieldName = 'NO_7'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_8: TAbmesFloatField
      FieldName = 'NO_8'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_9: TAbmesFloatField
      FieldName = 'NO_9'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_10: TAbmesFloatField
      FieldName = 'NO_10'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_11: TAbmesFloatField
      FieldName = 'NO_11'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_12: TAbmesFloatField
      FieldName = 'NO_12'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_13: TAbmesFloatField
      FieldName = 'NO_13'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_14: TAbmesFloatField
      FieldName = 'NO_14'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_15: TAbmesFloatField
      FieldName = 'NO_15'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_16: TAbmesFloatField
      FieldName = 'NO_16'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_17: TAbmesFloatField
      FieldName = 'NO_17'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_18: TAbmesFloatField
      FieldName = 'NO_18'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_19: TAbmesFloatField
      FieldName = 'NO_19'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_20: TAbmesFloatField
      FieldName = 'NO_20'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_21: TAbmesFloatField
      FieldName = 'NO_21'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_22: TAbmesFloatField
      FieldName = 'NO_22'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_23: TAbmesFloatField
      FieldName = 'NO_23'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_24: TAbmesFloatField
      FieldName = 'NO_24'
      ProviderFlags = []
    end
    object qryXModelLineStagesNO_25: TAbmesFloatField
      FieldName = 'NO_25'
      ProviderFlags = []
    end
    object qryXModelLineStagesFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
      ProviderFlags = []
    end
    object qryXModelLineStagesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryXModelLineStagesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryXModelLineStagesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryXModelLineStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      ProviderFlags = []
    end
    object qryXModelLineStagesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      ProviderFlags = []
    end
    object qryXModelLineStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryXModelLineStagesOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
      ProviderFlags = []
    end
    object qryXModelLineStagesLAST_OM_MLMS_OPERATION_NO: TAbmesFloatField
      FieldName = 'LAST_OM_MLMS_OPERATION_NO'
      ProviderFlags = []
    end
    object qryXModelLineStagesEXTERNAL_WORK_PRICE: TAbmesFloatField
      FieldName = 'EXTERNAL_WORK_PRICE'
    end
  end
  object qrySaleID: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BND_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_OBJECT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  s.SALE_OBJECT_BRANCH_CODE as PROCESS_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE as PROCESS_OBJECT_CODE,'
      
        '  Nvl2(s.MANUFACTURE_QUANTITY * p.TECH_MEASURE_COEF, 1, 0) as HA' +
        'S_MANUFACTURE_TECH_QUANTITY'
      'from'
      '  SALES s,'
      '  PRODUCTS p'
      'where'
      '  (s.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (s.SALE_BRANCH_CODE = :BND_OBJECT_BRANCH_CODE) and'
      '  (s.SALE_NO = :BND_OBJECT_NO)'
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 536
    Top = 104
    object qrySaleIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object qrySaleIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
    object qrySaleIDHAS_MANUFACTURE_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'HAS_MANUFACTURE_TECH_QUANTITY'
      FieldValueType = fvtBoolean
    end
  end
  object qryXModelExists: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ml.ML_OBJECT_BRANCH_CODE,'
      '  ml.ML_OBJECT_CODE'
      '  '
      'from'
      '  MATERIAL_LISTS ml'
      '  '
      'where'
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANC' +
        'H_CODE) and'
      '  (ml.BND_PROCESS_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 536
    Top = 200
    object qryXModelExistsML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object qryXModelExistsML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
  end
  object cdsNewMLLKey: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idxOldKey'
        Fields = 'OLD_MLL_OBJECT_BRANCH_CODE; OLD_MLL_OBJECT_CODE'
      end>
    Params = <>
    StoreDefs = True
    Left = 592
    Top = 216
    object cdsNewMLLKeyOLD_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OLD_MLL_OBJECT_BRANCH_CODE'
    end
    object cdsNewMLLKeyOLD_MLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'OLD_MLL_OBJECT_CODE'
    end
    object cdsNewMLLKeyNEW_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'NEW_MLL_OBJECT_BRANCH_CODE'
    end
    object cdsNewMLLKeyNEW_MLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'NEW_MLL_OBJECT_CODE'
    end
  end
  object prvInsertSpecLines: TDataSetProvider
    DataSet = qryInsertSpecLines
    UpdateMode = upWhereKeyOnly
    OnGetData = prvInsertSpecLinesGetData
    AfterGetRecords = prvInsertSpecLinesAfterGetRecords
    Left = 304
    Top = 152
  end
  object qryInsertSpecLines: TAbmesSQLQuery
    BeforeScroll = qryInsertSpecLinesBeforeScroll
    MaxBlobSize = -1
    Params = <
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
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  spl.SPEC_PRODUCT_CODE,'
      '  spl.SPEC_LINE_CODE,'
      '  sp.SPEC_VERSION_NO,'
      '  To_Number(:SPEC_MODEL_VARIANT_NO) as SPEC_MODEL_VARIANT_NO,'
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
      '  spl.DETAIL_CODE,'
      '  Coalesce(spl.DETAIL_TECH_QUANTITY, 1) as DETAIL_TECH_QUANTITY,'
      '  spl.PRODUCT_CODE,'
      '  spl.PRODUCT_TECH_QUANTITY,'
      '  spl.NOTES,'
      '  spl.CONSTRUCTION_NOTES,'
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
      '  smv.MAIN_DEPT_CODE,'
      ''
      '  dp.NAME as DETAIL_NAME,'
      '  dp.CUSTOM_CODE as DETAIL_NO,'
      ''
      '  %HAS_DOC_ITEMS[dp] as DETAIL_HAS_DOCUMENTATION,'
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
      '  dp.TECH_MEASURE_CODE as DETAIL_TECH_MEASURE_CODE,'
      ''
      '  pp.NAME as PRODUCT_NAME,'
      '  pp.CUSTOM_CODE as PRODUCT_NO,'
      ''
      '  %HAS_DOC_ITEMS[pp] as PRODUCT_HAS_DOCUMENTATION,'
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
      '  pp.IS_INACTIVE as PRODUCT_IS_INACTIVE,'
      ''
      '  spl.IS_FOR_SINGLE_USE,'
      ''
      '  dp.IS_PRODUCTION_PRODUCT as DETAIL_IS_PRODUCTION_PRODUCT,'
      ''
      '  ('
      '    select'
      '      smvl.APPROVE_CYCLE_NO'
      '    from'
      '      SPEC_MODEL_VARIANT_LINES smvl'
      '    where'
      '      (smvl.SPEC_PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '      (smvl.SPEC_LINE_CODE = spl.SPEC_LINE_CODE) and'
      '      (smvl.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIANT_NO)'
      '  ) as APPROVE_CYCLE_NO,'
      ''
      '  spl.IS_COMPLETE,'
      ''
      '  %PRODUCT_COMMON_STATUS_CODE[dp] as DETAIL_COMMON_STATUS_CODE,'
      '  %PRODUCT_COMMON_STATUS_CODE[pp] as PRODUCT_COMMON_STATUS_CODE'
      '  '
      'from'
      '  SPECS sp,'
      '  SPEC_LINES spl,'
      '  SPEC_LINES pspl,'
      '  SPEC_MODEL_VARIANTS smv,'
      '  PRODUCTS dp,'
      '  PRODUCTS pp'
      ''
      'where'
      '  (sp.SPEC_PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '  (sp.SPEC_PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      '  (spl.SPEC_PRODUCT_CODE = pspl.SPEC_PRODUCT_CODE(+)) and'
      '  (spl.PARENT_SPEC_LINE_CODE = pspl.SPEC_LINE_CODE(+)) and'
      '  (spl.DETAIL_CODE = dp.PRODUCT_CODE) and'
      '  (spl.PRODUCT_CODE = pp.PRODUCT_CODE(+)) and'
      ''
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        SPEC_LINES spl2,'
      '        PRODUCTS dp2'
      '      where'
      '        (spl2.SPEC_PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      ''
      '        (spl2.DETAIL_CODE = dp2.PRODUCT_CODE) and'
      ''
      '        (spl2.NO_1 > 0) and'
      
        '        (spl.NO_AS_FORMATED_TEXT like (spl2.NO_AS_FORMATED_TEXT ' +
        '|| '#39'%'#39')) and'
      
        '        (spl2.NO_AS_FORMATED_TEXT <> spl.NO_AS_FORMATED_TEXT) an' +
        'd'
      '        (dp2.IS_PRODUCTION_PRODUCT = 1)'
      '    )'
      '  ) and'
      '  '
      '  (sp.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (spl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smv.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smv.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO)'
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
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[pp.PRODUCT_CODE ~ ContextDate]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[pp.PRODUCT_CODE ~ ContextDat' +
          'e]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[pp.PRODUCT_CODE ~ ContextDat' +
          'e]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[pp.PRODUCT_CODE ~ ContextDat' +
          'e]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[pp.PRODUCT_CODE ~ ContextDat' +
          'e]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'PRODUCT_PRECISION_LEVEL_CODE[pp.PRODUCT_CODE ~ ContextDate]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_COMMON_STATUS_CODE[dp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_COMMON_STATUS_CODE[pp]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 304
    Top = 200
    object qryInsertSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryInsertSpecLinesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qryInsertSpecLinesSPEC_VERSION_NO: TAbmesFloatField
      FieldName = 'SPEC_VERSION_NO'
    end
    object qryInsertSpecLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
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
    object qryInsertSpecLinesMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
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
    object qryInsertSpecLinesDETAIL_IS_INACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_IS_INACTIVE'
    end
    object qryInsertSpecLinesDETAIL_PARENT_CODE: TAbmesFloatField
      FieldName = 'DETAIL_PARENT_CODE'
    end
    object qryInsertSpecLinesDETAIL_IS_SELF_APPROVED: TAbmesFloatField
      FieldName = 'DETAIL_IS_SELF_APPROVED'
    end
    object qryInsertSpecLinesDETAIL_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'DETAIL_TECH_MEASURE_CODE'
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
    object qryInsertSpecLinesPRODUCT_IS_INACTIVE: TAbmesFloatField
      FieldName = 'PRODUCT_IS_INACTIVE'
    end
    object qryInsertSpecLinesDETAIL_IS_PRODUCTION_PRODUCT: TAbmesFloatField
      FieldName = 'DETAIL_IS_PRODUCTION_PRODUCT'
      FieldValueType = fvtBoolean
    end
    object qryInsertSpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField
      FieldName = 'IS_FOR_SINGLE_USE'
    end
    object qryInsertSpecLinesAPPROVE_CYCLE_NO: TAbmesFloatField
      FieldName = 'APPROVE_CYCLE_NO'
    end
    object qryInsertSpecLinesIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
    end
    object qryInsertSpecLinesDETAIL_COMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'DETAIL_COMMON_STATUS_CODE'
    end
    object qryInsertSpecLinesPRODUCT_COMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_COMMON_STATUS_CODE'
    end
  end
  object dsInsertSpecLines: TDataSource
    DataSet = qryInsertSpecLines
    Left = 304
    Top = 248
  end
  object qryInsertSpecStages: TAbmesSQLQuery
    BeforeScroll = qryInsertSpecStagesBeforeScroll
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
      '  smvs.SPEC_LINE_STAGE_NO'
      '')
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
    Left = 304
    Top = 296
    object qryInsertSpecStagesSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryInsertSpecStagesSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qryInsertSpecStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qryInsertSpecStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object qryInsertSpecStagesSPEC_LINE_STAGE_NO: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_NO'
    end
    object qryInsertSpecStagesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryInsertSpecStagesDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qryInsertSpecStagesDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryInsertSpecStagesDEPT_IS_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_STORE'
    end
    object qryInsertSpecStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object qryInsertSpecStagesDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object qryInsertSpecStagesTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object qryInsertSpecStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TOTAL_TREATMENT_WORKDAYS'
    end
    object qryInsertSpecStagesOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object qryInsertSpecStagesIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      FieldValueType = fvtBoolean
    end
    object qryInsertSpecStagesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryInsertSpecStagesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryInsertSpecStagesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryInsertSpecStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object qryInsertSpecStagesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object qryInsertSpecStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object qryInsertSpecStagesSMVS_TYPE_CODE: TAbmesFloatField
      FieldName = 'SMVS_TYPE_CODE'
    end
    object qryInsertSpecStagesOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
    object qryInsertSpecStagesEXTERNAL_WORK_PRICE: TAbmesFloatField
      FieldName = 'EXTERNAL_WORK_PRICE'
    end
  end
  object qryAuthorizedSpecModelVariants: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
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
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smv.SPEC_PRODUCT_CODE,'
      '  smv.SPEC_MODEL_VARIANT_NO,'
      '  smv.MAIN_DEPT_CODE,'
      '  d.NAME as MAIN_DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as M' +
        'AIN_DEPT_IDENTIFIER,'
      '  smv.RESULT_STORE_CODE,'
      '  smv.MIN_TECH_QUANTITY,'
      '  smv.MAX_TECH_QUANTITY,'
      '  smv.AUTHORIZATION_EMPLOYEE_CODE,'
      
        '  (e.FIRST_NAME || '#39' '#39' || e.LAST_NAME) as AUTHORIZATION_EMPLOYEE' +
        '_NAME,'
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      
        '  ) as AUTHORIZATION_EMPLOYEE_NO,                               ' +
        '      '
      '  smv.AUTHORIZATION_DATE,'
      '  smv.NOTES,'
      '  ppsmv.IS_EST_VARIANT'
      '  '
      'from'
      '  PRODUCT_PERIODS pp,'
      '  PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '  SPEC_MODEL_VARIANTS smv,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  EMPLOYEES e'
      '  '
      'where'
      '  (pp.PRODUCT_CODE = ppsmv.PRODUCT_CODE) and'
      '  (pp.PRODUCT_PERIOD_CODE = ppsmv.PRODUCT_PERIOD_CODE) and'
      '  '
      '  (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      '  (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIANT_NO) and'
      '  '
      '  (smv.MAIN_DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  '
      '  (smv.AUTHORIZATION_EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '  (smv.IS_INACTIVE = 0) and'
      '  '
      '  (pp.PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (:TO_DATE between pp.BEGIN_DATE and pp.END_DATE) and'
      ''
      '  ( (:MAIN_DEPT_CODE is null) or'
      '    (smv.MAIN_DEPT_CODE = :MAIN_DEPT_CODE) ) and'
      ''
      '  ( (:TECH_QUANTITY is null) or'
      '    ( (smv.MIN_TECH_QUANTITY < :TECH_QUANTITY) and'
      '      (:TECH_QUANTITY <= smv.MAX_TECH_QUANTITY) )'
      '  )'
      ''
      'order by'
      '  smv.SPEC_PRODUCT_CODE,'
      '  smv.SPEC_MODEL_VARIANT_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 408
    Top = 56
    object qryAuthorizedSpecModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryAuthorizedSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qryAuthorizedSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object qryAuthorizedSpecModelVariantsMAIN_DEPT_NAME: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_NAME'
      Size = 100
    end
    object qryAuthorizedSpecModelVariantsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      Size = 16
    end
    object qryAuthorizedSpecModelVariantsRESULT_STORE_CODE: TAbmesFloatField
      FieldName = 'RESULT_STORE_CODE'
    end
    object qryAuthorizedSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_TECH_QUANTITY'
    end
    object qryAuthorizedSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_TECH_QUANTITY'
    end
    object qryAuthorizedSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZATION_EMPLOYEE_CODE'
    end
    object qryAuthorizedSpecModelVariantsAUTHORIZATION_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'AUTHORIZATION_EMPLOYEE_NAME'
      Size = 41
    end
    object qryAuthorizedSpecModelVariantsAUTHORIZATION_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZATION_DATE'
    end
    object qryAuthorizedSpecModelVariantsAUTHORIZATION_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'AUTHORIZATION_EMPLOYEE_NO'
    end
    object qryAuthorizedSpecModelVariantsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryAuthorizedSpecModelVariantsIS_EST_VARIANT: TAbmesFloatField
      FieldName = 'IS_EST_VARIANT'
      Required = True
    end
  end
  object prvAuthorizedSpecModelVariants: TDataSetProvider
    DataSet = qryAuthorizedSpecModelVariants
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 408
    Top = 8
  end
  object qryUpdSale: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update SALES_FOR_EDIT s'
      'set'
      '  s.PRODUCTION_START_PLAN_DATE ='
      
        '    %ML_MIN_PRODUCT_NEED_DATE[:ML_OBJECT_BRANCH_CODE~ :ML_OBJECT' +
        '_CODE],'
      
        '  (s.ENTER_SH_STORE_PLAN_BEGIN_DATE, s.ENTER_SH_STORE_PLAN_END_D' +
        'ATE) ='
      '  ( select'
      '      ml.ENTER_RESULT_STORE_BEGIN_DATE,'
      '      ml.ENTER_RESULT_STORE_END_DATE'
      '    from'
      '      MATERIAL_LISTS ml'
      '    where'
      '      (ml.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '      (ml.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      '  )'
      'where'
      
        '  (s.SALE_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_CODE) ' +
        'and'
      '  (s.SALE_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'ML_MIN_PRODUCT_NEED_DATE[:ML_OBJECT_BRANCH_CODE~ :ML_OBJECT_CODE' +
          ']'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 704
    Top = 352
  end
  object qryInsModelStageLinks: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into MODEL_STAGE_LINKS'
      '('
      '  FROM_MLMS_OBJECT_BRANCH_CODE, '
      '  FROM_MLMS_OBJECT_CODE, '
      '  TO_MLMS_OBJECT_BRANCH_CODE, '
      '  TO_MLMS_OBJECT_CODE'
      ')'
      'select'
      '  mlms1.MLMS_OBJECT_BRANCH_CODE as FROM_MLMS_OBJECT_BRANCH_CODE,'
      '  mlms1.MLMS_OBJECT_CODE as FROM_MLMS_OBJECT_CODE,'
      '  mlms2.MLMS_OBJECT_BRANCH_CODE as TO_MLMS_OBJECT_BRANCH_CODE,'
      '  mlms2.MLMS_OBJECT_CODE as TO_MLMS_OBJECT_CODE'
      'from'
      '  MATERIAL_LIST_LINES mll,'
      '  ML_MODEL_STAGES mlms1,'
      '  ML_MODEL_STAGES mlms2'
      '  '
      'where'
      
        '  (mll.MLL_OBJECT_BRANCH_CODE = mlms1.MLL_OBJECT_BRANCH_CODE) an' +
        'd'
      '  (mll.MLL_OBJECT_CODE = mlms1.MLL_OBJECT_CODE) and'
      '  '
      
        '  (mlms1.MLL_OBJECT_BRANCH_CODE = mlms2.MLL_OBJECT_BRANCH_CODE) ' +
        'and'
      '  (mlms1.MLL_OBJECT_CODE = mlms2.MLL_OBJECT_CODE) and'
      '  (mlms1.ML_MODEL_STAGE_NO = mlms2.ML_MODEL_STAGE_NO - 1) and'
      '  '
      '  ('
      '    ('
      '      mlms1.MLMS_OBJECT_BRANCH_CODE,'
      '      mlms1.MLMS_OBJECT_CODE,'
      '      mlms2.MLMS_OBJECT_BRANCH_CODE,'
      '      mlms2.MLMS_OBJECT_CODE'
      '    )'
      '    not in'
      '    ('
      '      select'
      '        msli.FROM_MLMS_OBJECT_BRANCH_CODE,'
      '        msli.FROM_MLMS_OBJECT_CODE,'
      '        msli.TO_MLMS_OBJECT_BRANCH_CODE,'
      '        msli.TO_MLMS_OBJECT_CODE'
      '      from'
      '        MATERIAL_LIST_LINES mlli,'
      '        ML_MODEL_STAGES mlmsi,'
      '        MODEL_STAGE_LINKS msli'
      '      where'
      
        '        (mlli.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE)' +
        ' and'
      '        (mlli.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      ''
      
        '        (mlli.MLL_OBJECT_BRANCH_CODE = mlmsi.MLL_OBJECT_BRANCH_C' +
        'ODE) and'
      '        (mlli.MLL_OBJECT_CODE = mlmsi.MLL_OBJECT_CODE) and'
      ''
      
        '        (msli.FROM_MLMS_OBJECT_BRANCH_CODE = mlmsi.MLMS_OBJECT_B' +
        'RANCH_CODE) and'
      '        (msli.FROM_MLMS_OBJECT_CODE = mlmsi.MLMS_OBJECT_CODE)'
      '    )'
      '  ) and'
      ''
      '  (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 560
    Top = 376
  end
  object qryUpdModelStageLinks: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update MODEL_STAGE_LINKS msl'
      'set'
      '  ('
      '    TO_MLMS_OBJECT_BRANCH_CODE, '
      '    TO_MLMS_OBJECT_CODE'
      '  ) ='
      '  ('
      '    select'
      
        '      mlms2.MLMS_OBJECT_BRANCH_CODE as TO_MLMS_OBJECT_BRANCH_COD' +
        'E,'
      '      mlms2.MLMS_OBJECT_CODE as TO_MLMS_OBJECT_CODE'
      '    from'
      '      ML_MODEL_STAGES mlms1,'
      '      ML_MODEL_STAGES mlms2'
      '    where'
      
        '      (mlms1.MLMS_OBJECT_BRANCH_CODE = msl.FROM_MLMS_OBJECT_BRAN' +
        'CH_CODE) and'
      '      (mlms1.MLMS_OBJECT_CODE = msl.FROM_MLMS_OBJECT_CODE) and'
      '    '
      
        '      (mlms1.MLL_OBJECT_BRANCH_CODE = mlms2.MLL_OBJECT_BRANCH_CO' +
        'DE) and'
      '      (mlms1.MLL_OBJECT_CODE = mlms2.MLL_OBJECT_CODE) and'
      '      (mlms1.ML_MODEL_STAGE_NO = mlms2.ML_MODEL_STAGE_NO - 1)'
      '  )'
      '  '
      'where'
      '  ('
      '    msl.FROM_MLMS_OBJECT_BRANCH_CODE, '
      '    msl.FROM_MLMS_OBJECT_CODE'
      '  )'
      '  in'
      '  ('
      '    select'
      '      mlmsi.MLMS_OBJECT_BRANCH_CODE,'
      '      mlmsi.MLMS_OBJECT_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mlli,'
      '      ML_MODEL_STAGES mlmsi'
      '    where'
      '      (mlli.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '      (mlli.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      '      '
      
        '      (mlli.MLL_OBJECT_BRANCH_CODE = mlmsi.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '      (mlli.MLL_OBJECT_CODE = mlmsi.MLL_OBJECT_CODE)'
      '  )'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 560
    Top = 328
  end
  object qryXModelTasks: TAbmesSQLQuery
    DataSource = dsXModel
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mlt.ML_OBJECT_BRANCH_CODE,'
      '  mlt.ML_OBJECT_CODE,'
      '  mlt.MATERIAL_LIST_TASK_NO,'
      '  mlt.MATERIAL_LIST_TASK_NAME'
      'from'
      '  MATERIAL_LIST_TASKS mlt'
      'where'
      '  (mlt.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (mlt.ML_OBJECT_CODE = :ML_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 152
    object qryXModelTasksML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryXModelTasksML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryXModelTasksMATERIAL_LIST_TASK_NO: TAbmesFloatField
      FieldName = 'MATERIAL_LIST_TASK_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryXModelTasksMATERIAL_LIST_TASK_NAME: TAbmesWideStringField
      FieldName = 'MATERIAL_LIST_TASK_NAME'
      Size = 100
    end
  end
  object dsXModelTasks: TDataSource
    DataSet = qryXModelTasks
    Left = 176
    Top = 200
  end
  object qryXModelTaskDepts: TAbmesSQLQuery
    DataSource = dsXModelTasks
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_LIST_TASK_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mltd.ML_OBJECT_BRANCH_CODE,'
      '  mltd.ML_OBJECT_CODE,'
      '  mltd.MATERIAL_LIST_TASK_NO,'
      '  mltd.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER'
      'from'
      '  MATERIAL_LIST_TASK_DEPTS mltd,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      'where'
      '  (mltd.DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (mltd.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (mltd.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      '  (mltd.MATERIAL_LIST_TASK_NO = :MATERIAL_LIST_TASK_NO)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 248
    object qryXModelTaskDeptsML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryXModelTaskDeptsML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryXModelTaskDeptsMATERIAL_LIST_TASK_NO: TAbmesFloatField
      FieldName = 'MATERIAL_LIST_TASK_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryXModelTaskDeptsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryXModelTaskDeptsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryXModelTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
  end
  object prvInsertSpecTasks: TDataSetProvider
    DataSet = qryInsertSpecTasks
    Options = [poReadOnly]
    Left = 440
    Top = 152
  end
  object qryInsertSpecTasks: TAbmesSQLQuery
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
    Left = 440
    Top = 200
    object qryInsertSpecTasksSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInsertSpecTasksSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInsertSpecTasksSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInsertSpecTasksSPEC_MODEL_VARIANT_TASK_NAME: TAbmesWideStringField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NAME'
      Size = 100
    end
  end
  object dsInsertSpecTasks: TDataSource
    DataSet = qryInsertSpecTasks
    Left = 440
    Top = 248
  end
  object qryInsertSpecTaskDepts: TAbmesSQLQuery
    DataSource = dsInsertSpecTasks
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
    Left = 440
    Top = 296
    object qryInsertSpecTaskDeptsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInsertSpecTaskDeptsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInsertSpecTaskDeptsSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_TASK_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInsertSpecTaskDeptsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInsertSpecTaskDeptsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryInsertSpecTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
  end
  object qryUpdMaterialListLineNosToPositive: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  update'
      '    MATERIAL_LIST_LINES_FOR_EDIT mll'
      '  set'
      '    mll.NO_1 = Abs(mll.NO_1),'
      '    mll.NO_2 = Abs(mll.NO_2),'
      '    mll.NO_3 = Abs(mll.NO_3),'
      '    mll.NO_4 = Abs(mll.NO_4),'
      '    mll.NO_5 = Abs(mll.NO_5),'
      '    mll.NO_6 = Abs(mll.NO_6),'
      '    mll.NO_7 = Abs(mll.NO_7),'
      '    mll.NO_8 = Abs(mll.NO_8),'
      '    mll.NO_9 = Abs(mll.NO_9),'
      '    mll.NO_10 = Abs(mll.NO_10),'
      '    mll.NO_11 = Abs(mll.NO_11),'
      '    mll.NO_12 = Abs(mll.NO_12),'
      '    mll.NO_13 = Abs(mll.NO_13),'
      '    mll.NO_14 = Abs(mll.NO_14),'
      '    mll.NO_15 = Abs(mll.NO_15),'
      '    mll.NO_16 = Abs(mll.NO_16),'
      '    mll.NO_17 = Abs(mll.NO_17),'
      '    mll.NO_18 = Abs(mll.NO_18),'
      '    mll.NO_19 = Abs(mll.NO_19),'
      '    mll.NO_20 = Abs(mll.NO_20),'
      '    mll.NO_21 = Abs(mll.NO_21),'
      '    mll.NO_22 = Abs(mll.NO_22),'
      '    mll.NO_23 = Abs(mll.NO_23),'
      '    mll.NO_24 = Abs(mll.NO_24),'
      '    mll.NO_25 = Abs(mll.NO_25),'
      '    mll.NO_AS_TEXT = Replace(mll.NO_AS_TEXT, '#39'-'#39'),'
      
        '    mll.NO_AS_FORMATED_TEXT = Replace(mll.NO_AS_FORMATED_TEXT, '#39 +
        '-'#39'),'
      '    mll.FORK_NO = Abs(mll.FORK_NO)'
      '  where'
      '    (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '    (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE);'
      ''
      '  update'
      '    PROCESS_OBJECTS po'
      '  set'
      
        '    po.PROCESS_OBJECT_IDENTIFIER = Replace(po.PROCESS_OBJECT_IDE' +
        'NTIFIER, '#39'-'#39')'
      '  where'
      '    ( (po.PROCESS_OBJECT_BRANCH_CODE, po.PROCESS_OBJECT_CODE) in'
      '      ( select'
      '          mll.MLL_OBJECT_BRANCH_CODE,'
      '          mll.MLL_OBJECT_CODE'
      '        from'
      '          MATERIAL_LIST_LINES mll'
      '        where'
      
        '          (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '          (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      '      )'
      '    );'
      'end;'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 704
    Top = 400
  end
  object qryDelLinePSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete PLANNED_STORE_DEALS_FOR_EDIT psd'
      'where'
      
        '  (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (psd.BND_PROCESS_OBJECT_CODE = :MLL_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 592
    Top = 272
  end
  object qryUpdMaterialListLineStageNosToPositive: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      ''
      '  for x in'
      '    ( select'
      '        mll.MLL_OBJECT_BRANCH_CODE,'
      '        mll.MLL_OBJECT_CODE'
      '      from'
      '        MATERIAL_LIST_LINES mll'
      '      where'
      '        (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '        (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      '    )'
      '  loop'
      ''
      '    update'
      '      ML_MODEL_STAGES_FOR_EDIT mlms'
      '    set'
      '      mlms.ML_MODEL_STAGE_NO = -mlms.ML_MODEL_STAGE_NO - 2'
      '    where'
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = x.MLL_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (mlms.MLL_OBJECT_CODE = x.MLL_OBJECT_CODE) and'
      '      (mlms.ML_MODEL_STAGE_NO < -1);'
      ''
      '  end loop;'
      ''
      ''
      '  for y in'
      '    ( select'
      '        mlms.MLMS_OBJECT_BRANCH_CODE,'
      '        mlms.MLMS_OBJECT_CODE,'
      
        '        (po.PROCESS_OBJECT_IDENTIFIER || '#39' > '#39' || mlms.ML_MODEL_' +
        'STAGE_NO) as NEW_MLMS_IDENTIFIER'
      '      from'
      '        ML_MODEL_STAGES mlms,'
      '        MATERIAL_LIST_LINES mll,'
      '        PROCESS_OBJECTS po'
      '      where'
      
        '        (po.PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_C' +
        'ODE) and'
      '        (po.PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      
        '        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '        (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '        (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      '    )'
      '  loop'
      ''
      '    update'
      '      PROCESS_OBJECTS po'
      '    set'
      '      po.PROCESS_OBJECT_IDENTIFIER = y.NEW_MLMS_IDENTIFIER'
      '    where'
      
        '      (po.PROCESS_OBJECT_BRANCH_CODE = y.MLMS_OBJECT_BRANCH_CODE' +
        ') and'
      '      (po.PROCESS_OBJECT_CODE = y.MLMS_OBJECT_CODE) and'
      '      (po.PROCESS_OBJECT_IDENTIFIER <> y.NEW_MLMS_IDENTIFIER);'
      ''
      '  end loop;'
      ''
      ''
      '  for Mlms in'
      '    ('
      '      select'
      '        mlms.MLMS_OBJECT_BRANCH_CODE,'
      '        mlms.MLMS_OBJECT_CODE'
      '      from'
      '        ML_MODEL_STAGES mlms,'
      '        MATERIAL_LIST_LINES mll'
      '      where'
      
        '        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '        (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '        (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      '    )'
      '  loop'
      ''
      '    update'
      '      MLMS_OPERATIONS_FOR_EDIT mlmso'
      '    set'
      '      mlmso.MLMS_OPERATION_NO ='
      
        '        Decode(Sign(mlmso.MLMS_OPERATION_NO + 2), 1, mlmso.MLMS_' +
        'OPERATION_NO, -mlmso.MLMS_OPERATION_NO - 2),'
      '      mlmso.MLMS_OPERATION_VARIANT_NO ='
      
        '        Decode(Sign(mlmso.MLMS_OPERATION_VARIANT_NO + 2), 1, mlm' +
        'so.MLMS_OPERATION_VARIANT_NO, -mlmso.MLMS_OPERATION_VARIANT_NO -' +
        ' 2)'
      '    where'
      
        '      (mlmso.MLMS_OBJECT_BRANCH_CODE = Mlms.MLMS_OBJECT_BRANCH_C' +
        'ODE) and'
      '      (mlmso.MLMS_OBJECT_CODE = Mlms.MLMS_OBJECT_CODE) and'
      ''
      '      ( (mlmso.MLMS_OPERATION_NO < -1) or'
      '        (mlmso.MLMS_OPERATION_VARIANT_NO < -1) );'
      ''
      '  end loop;'
      ''
      ''
      '  for z in'
      '    ( select'
      '        mlmso.MLMSO_OBJECT_BRANCH_CODE,'
      '        mlmso.MLMSO_OBJECT_CODE,'
      
        '        (po.PROCESS_OBJECT_IDENTIFIER || '#39' > '#39' || mlmso.MLMS_OPE' +
        'RATION_NO || '#39'.'#39' || mlmso.MLMS_OPERATION_VARIANT_NO) as NEW_MLMS' +
        'O_IDENTIFIER'
      '      from'
      '        MLMS_OPERATIONS mlmso,'
      '        ML_MODEL_STAGES mlms,'
      '        MATERIAL_LIST_LINES mll,'
      '        PROCESS_OBJECTS po'
      '      where'
      
        '        (po.PROCESS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '        (po.PROCESS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      
        '        (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '        (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      
        '        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '        (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '        (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      '    )'
      '  loop'
      ''
      '    update'
      '      PROCESS_OBJECTS po'
      '    set'
      '      po.PROCESS_OBJECT_IDENTIFIER = z.NEW_MLMSO_IDENTIFIER'
      '    where'
      
        '      (po.PROCESS_OBJECT_BRANCH_CODE = z.MLMSO_OBJECT_BRANCH_COD' +
        'E) and'
      '      (po.PROCESS_OBJECT_CODE = z.MLMSO_OBJECT_CODE) and'
      '      (po.PROCESS_OBJECT_IDENTIFIER <> z.NEW_MLMSO_IDENTIFIER);'
      ''
      '  end loop;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 704
    Top = 448
  end
  object qryNeededSpecModelVariantNo: TAbmesSQLQuery
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
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smv.SPEC_MODEL_VARIANT_NO'
      'from'
      '  SPECS sp,'
      '  SPEC_MODEL_VARIANTS smv'
      'where'
      '  (sp.SPEC_PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      '  (sp.AUTHORIZATION_EMPLOYEE_CODE is not null) and'
      '  (smv.AUTHORIZATION_EMPLOYEE_CODE is not null) and'
      '  (sp.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smv.MAIN_DEPT_CODE = :MAIN_DEPT_CODE) and'
      '  (smv.MIN_TECH_QUANTITY < :QUANTITY) and'
      '  (:QUANTITY <= smv.MAX_TECH_QUANTITY) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '      PRODUCT_PERIODS pper'
      '    where'
      '      (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and'
      
        '      (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIANT_NO) ' +
        'and'
      ''
      '      (ppsmv.PRODUCT_CODE = pper.PRODUCT_CODE) and'
      '      (ppsmv.PRODUCT_PERIOD_CODE = pper.PRODUCT_PERIOD_CODE) and'
      '      (:TO_DATE between pper.BEGIN_DATE and pper.END_DATE)'
      '  )'
      ''
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 704
    Top = 304
    object qryNeededSpecModelVariantNoSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
  end
  object qrySaleGroupID: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BND_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_OBJECT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  sg.SALE_GROUP_OBJECT_BRANCH_CODE as PROCESS_OBJECT_BRANCH_CODE' +
        ','
      '  sg.SALE_GROUP_OBJECT_CODE as PROCESS_OBJECT_CODE'
      'from'
      '  SALE_GROUPS sg'
      'where'
      '  (sg.SALE_GROUP_BRANCH_CODE = :BND_OBJECT_BRANCH_CODE) and'
      '  (sg.SALE_GROUP_CODE = :BND_OBJECT_NO)'
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 536
    Top = 152
    object qrySaleGroupIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object qrySaleGroupIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
  end
  object qryDelPlannedStoreDeal: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete PLANNED_STORE_DEALS_FOR_EDIT psd'
      'where'
      
        '  (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (psd.BND_PROCESS_OBJECT_CODE = :MLL_OBJECT_CODE)'
      '  ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 560
    Top = 424
  end
  object dsInsertSpecStages: TDataSource
    DataSet = qryInsertSpecStages
    Left = 304
    Top = 344
  end
  object qryInsertSpecOperations: TAbmesSQLQuery
    DataSource = dsInsertSpecStages
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
      '  ('
      '    select'
      '      dp.HOUR_PRICE'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_HOUR_PRICE,'
      ''
      '  ('
      '    select'
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
      '  (smvso.SMVS_OPERATION_VARIANT_NO >= 0) and'
      ''
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
    Left = 304
    Top = 392
    object qryInsertSpecOperationsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qryInsertSpecOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qryInsertSpecOperationsSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qryInsertSpecOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object qryInsertSpecOperationsSMVS_OPERATION_CODE: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_CODE'
    end
    object qryInsertSpecOperationsSMVS_OPERATION_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_NO'
    end
    object qryInsertSpecOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_VARIANT_NO'
    end
    object qryInsertSpecOperationsOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryInsertSpecOperationsIS_NORMAL_OPERATION: TAbmesFloatField
      FieldName = 'IS_NORMAL_OPERATION'
    end
    object qryInsertSpecOperationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryInsertSpecOperationsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qryInsertSpecOperationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryInsertSpecOperationsDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
    object qryInsertSpecOperationsDEPT_PARENT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PARENT_CODE'
    end
    object qryInsertSpecOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object qryInsertSpecOperationsDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object qryInsertSpecOperationsSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
    end
    object qryInsertSpecOperationsSETUP_EFFORT_COEF: TAbmesFloatField
      FieldName = 'SETUP_EFFORT_COEF'
    end
    object qryInsertSpecOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
    end
    object qryInsertSpecOperationsSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
    end
    object qryInsertSpecOperationsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object qryInsertSpecOperationsEFFORT_COEF: TAbmesFloatField
      FieldName = 'EFFORT_COEF'
    end
    object qryInsertSpecOperationsHOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'HOUR_TECH_QUANTITY'
    end
    object qryInsertSpecOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object qryInsertSpecOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object qryInsertSpecOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NO'
    end
    object qryInsertSpecOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object qryInsertSpecOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object qryInsertSpecOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NO'
    end
    object qryInsertSpecOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object qryInsertSpecOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object qryInsertSpecOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NO'
    end
    object qryInsertSpecOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_DETAIL_TECH_QTY'
    end
    object qryInsertSpecOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_DETAIL_TECH_QTY'
    end
    object qryInsertSpecOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object qryInsertSpecOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object qryInsertSpecOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object qryInsertSpecOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
    end
    object qryInsertSpecOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
    end
    object qryInsertSpecOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
    end
    object qryInsertSpecOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
    end
    object qryInsertSpecOperationsTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object qryInsertSpecOperationsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryInsertSpecOperationsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryInsertSpecOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object qryInsertSpecOperationsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object qryInsertSpecOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object qryInsertSpecOperationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryInsertSpecOperationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryInsertSpecOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'HAS_SPECIAL_CONTROL'
    end
    object qryInsertSpecOperationsD_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_HOUR_PRICE'
    end
    object qryInsertSpecOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_MAINTAINANCE_HOUR_PRICE'
    end
    object qryInsertSpecOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_OPERATOR_COUNT'
    end
    object qryInsertSpecOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_PROCESS_COUNT'
    end
    object qryInsertSpecOperationsIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
    end
    object qryInsertSpecOperationsIS_AUTO_SETUP: TAbmesFloatField
      FieldName = 'IS_AUTO_SETUP'
    end
  end
  object dsXModelLineStages: TDataSource
    DataSet = qryXModelLineStages
    Left = 56
    Top = 296
  end
  object qryMLMSOperations: TAbmesSQLQuery
    DataSource = dsXModelLineStages
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  mlmso.MLMSO_OBJECT_BRANCH_CODE,'
      '  mlmso.MLMSO_OBJECT_CODE,'
      '  mlmso.MLMS_OBJECT_BRANCH_CODE,'
      '  mlmso.MLMS_OBJECT_CODE,'
      '  mlmso.MLMS_OPERATION_NO,'
      '  mlmso.MLMS_OPERATION_VARIANT_NO,'
      '  mlmso.OPERATION_TYPE_CODE,'
      
        '  Decode(mlmso.OPERATION_TYPE_CODE, 2, 1, 0) as IS_NORMAL_OPERAT' +
        'ION,'
      '  mlmso.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  d.PRODUCT_CODE as DEPT_PRODUCT_CODE,'
      '  d.PARENT_CODE as DEPT_PARENT_CODE,'
      '  d.BEGIN_DATE as DEPT_BEGIN_DATE,'
      '  d.END_DATE as DEPT_END_DATE,'
      '  mlmso.SETUP_PROFESSION_CODE,'
      '  mlmso.SETUP_EFFORT_COEF,'
      '  mlmso.SETUP_HOUR_TECH_QUANTITY,'
      '  mlmso.SETUP_COUNT,'
      '  mlmso.DONE_SETUP_COUNT,'
      '  mlmso.PROFESSION_CODE,'
      '  mlmso.EFFORT_COEF,'
      '  mlmso.HOUR_TECH_QUANTITY,'
      '  mlmso.PROGRAM_TOOL_PRODUCT_CODE,'
      '  ptp.NAME as PROGRAM_TOOL_PRODUCT_NAME,'
      '  ptp.CUSTOM_CODE as PROGRAM_TOOL_PRODUCT_NO,'
      '  mlmso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '  stp.NAME as SPECIFIC_TOOL_PRODUCT_NAME,'
      '  stp.CUSTOM_CODE as SPECIFIC_TOOL_PRODUCT_NO,'
      '  mlmso.TYPICAL_TOOL_PRODUCT_CODE,'
      '  ttp.NAME as TYPICAL_TOOL_PRODUCT_NAME,'
      '  ttp.CUSTOM_CODE as TYPICAL_TOOL_PRODUCT_NO,'
      '  mlmso.IS_ACTIVE,'
      '  mlmso.VARIANT_DETAIL_TECH_QUANTITY,'
      '  mlmso.NOTES,'
      '  mlmso.DOC_BRANCH_CODE,'
      '  mlmso.DOC_CODE,'
      '  mlmso.SPECIFIC_TOOL_DETAIL_TECH_QTY,'
      '  mlmso.TYPICAL_TOOL_DETAIL_TECH_QTY,'
      '  mlmso.PROGRAM_TOOL_REQUIREMENT_CODE,'
      '  mlmso.SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '  mlmso.TYPICAL_TOOL_REQUIREMENT_CODE,'
      '  mlmso.PROGRAM_TOOL_IS_COMPLETE,'
      '  mlmso.SPECIFIC_TOOL_IS_COMPLETE,'
      '  mlmso.TYPICAL_TOOL_IS_COMPLETE,'
      '  mlmso.TREATMENT_BEGIN_WORKDAY_NO,'
      '  mlmso.TREATMENT_WORKDAYS,'
      '  mlmso.TREATMENT_BEGIN_DATE,'
      '  mlmso.TREATMENT_END_DATE,'
      '  mlmso.HAS_SPECIAL_CONTROL,'
      '  mlmso.IS_AUTO_MOVEMENT,'
      '  mlmso.IS_AUTO_SETUP,'
      ''
      '  ( select'
      '      dp.HOUR_PRICE'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '      (mlmso.TREATMENT_BEGIN_DATE between dp.BEGIN_DATE and dp.E' +
        'ND_DATE)'
      '  ) as D_HOUR_PRICE,'
      ''
      '  ( select'
      '      dp.MAINTAINANCE_HOUR_PRICE'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '      (mlmso.TREATMENT_BEGIN_DATE between dp.BEGIN_DATE and dp.E' +
        'ND_DATE)'
      '  ) as D_MAINTAINANCE_HOUR_PRICE,'
      ''
      '  ( select'
      '      dp.PARALLEL_OPERATOR_COUNT'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '      (mlmso.TREATMENT_BEGIN_DATE between dp.BEGIN_DATE and dp.E' +
        'ND_DATE)'
      '  ) as D_PARALLEL_OPERATOR_COUNT,'
      ''
      '  ( select'
      '      dp.PARALLEL_PROCESS_COUNT'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '      (mlmso.TREATMENT_BEGIN_DATE between dp.BEGIN_DATE and dp.E' +
        'ND_DATE)'
      '  ) as D_PARALLEL_PROCESS_COUNT,'
      ''
      '  %HAS_DOC_ITEMS[mlmso] as HAS_DOCUMENTATION,'
      ''
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = mlmso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = mlmso.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = mlmso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = mlmso.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = mlmso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = mlmso.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  mll.NO_1,'
      '  mll.NO_2,'
      '  mll.NO_3,'
      '  mll.NO_4,'
      '  mll.NO_5,'
      '  mll.NO_6,'
      '  mll.NO_7,'
      '  mll.NO_8,'
      '  mll.NO_9,'
      '  mll.NO_10,'
      '  mll.NO_11,'
      '  mll.NO_12,'
      '  mll.NO_13,'
      '  mll.NO_14,'
      '  mll.NO_15,'
      '  mll.NO_16,'
      '  mll.NO_17,'
      '  mll.NO_18,'
      '  mll.NO_19,'
      '  mll.NO_20,'
      '  mll.NO_21,'
      '  mll.NO_22,'
      '  mll.NO_23,'
      '  mll.NO_24,'
      '  mll.NO_25,'
      '  mll.FORK_NO,'
      '  mlms.ML_MODEL_STAGE_NO,'
      ''
      '  ('
      '    select'
      '      Sign(Count(*))'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.TO_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANC' +
        'H_CODE) and'
      '      (om.TO_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ) as HAS_IN_MOVEMENTS,'
      ''
      '  ('
      '    select'
      '      Sign(Count(*))'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ) as HAS_OUT_MOVEMENTS,'
      ''
      '  ( select'
      '      pp.HOUR_PRICE'
      '    from'
      '      PROFESSION_PERIODS pp'
      '    where'
      '      (pp.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE) and'
      
        '      (mlmso.TREATMENT_BEGIN_DATE between pp.BEGIN_DATE and pp.E' +
        'ND_DATE)'
      '  ) as REAL_SETUP_HOUR_PRICE,'
      ''
      '  ( select'
      '      pp.HOUR_PRICE'
      '    from'
      '      PROFESSION_PERIODS pp'
      '    where'
      '      (pp.PROFESSION_CODE = mlmso.PROFESSION_CODE) and'
      
        '      (mlmso.TREATMENT_BEGIN_DATE between pp.BEGIN_DATE and pp.E' +
        'ND_DATE)'
      '  ) as REAL_HOUR_PRICE'
      ''
      'from'
      '  MLMS_OPERATIONS mlmso,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  PRODUCTS ptp,'
      '  PRODUCTS stp,'
      '  PRODUCTS ttp,'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll'
      ''
      'where'
      '  (mlmso.DEPT_CODE = d.DEPT_CODE(+)) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (mlmso.PROGRAM_TOOL_PRODUCT_CODE = ptp.PRODUCT_CODE(+)) and'
      '  (mlmso.SPECIFIC_TOOL_PRODUCT_CODE = stp.PRODUCT_CODE(+)) and'
      '  (mlmso.TYPICAL_TOOL_PRODUCT_CODE = ttp.PRODUCT_CODE(+)) and'
      ''
      
        '  (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      ''
      '  (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '  (mlmso.MLMS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANCH_CODE) and'
      '  (mlmso.MLMS_OBJECT_CODE = :MLMS_OBJECT_CODE) and'
      '  (mlmso.MLMS_OPERATION_VARIANT_NO >= 0)'
      ''
      'order by'
      '  mlmso.MLMS_OBJECT_BRANCH_CODE,'
      '  mlmso.MLMS_OBJECT_CODE,'
      '  mlmso.MLMS_OPERATION_NO,'
      '  mlmso.MLMS_OPERATION_VARIANT_NO'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[mlmso]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'MLMS_OPERATIONS_FOR_EDIT'
    Left = 56
    Top = 344
    object qryMLMSOperationsMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMLMSOperationsMLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMLMSOperationsMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsMLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsMLMS_OPERATION_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_VARIANT_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsIS_NORMAL_OPERATION: TAbmesFloatField
      FieldName = 'IS_NORMAL_OPERATION'
      ProviderFlags = []
    end
    object qryMLMSOperationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryMLMSOperationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryMLMSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationsDEPT_PARENT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PARENT_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
      ProviderFlags = []
    end
    object qryMLMSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
      ProviderFlags = []
    end
    object qryMLMSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsSETUP_EFFORT_COEF: TAbmesFloatField
      FieldName = 'SETUP_EFFORT_COEF'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
    end
    object qryMLMSOperationsDONE_SETUP_COUNT: TAbmesFloatField
      FieldName = 'DONE_SETUP_COUNT'
    end
    object qryMLMSOperationsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsEFFORT_COEF: TAbmesFloatField
      FieldName = 'EFFORT_COEF'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'HOUR_TECH_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryMLMSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NO'
      ProviderFlags = []
    end
    object qryMLMSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryMLMSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NO'
      ProviderFlags = []
    end
    object qryMLMSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryMLMSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NO'
      ProviderFlags = []
    end
    object qryMLMSOperationsIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'VARIANT_DETAIL_TECH_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object qryMLMSOperationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_DETAIL_TECH_QTY'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_DETAIL_TECH_QTY'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object qryMLMSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object qryMLMSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object qryMLMSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
    end
    object qryMLMSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
    end
    object qryMLMSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
    end
    object qryMLMSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_BEGIN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsTREATMENT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_END_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryMLMSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      ProviderFlags = []
    end
    object qryMLMSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_1: TAbmesFloatField
      FieldName = 'NO_1'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_2: TAbmesFloatField
      FieldName = 'NO_2'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_3: TAbmesFloatField
      FieldName = 'NO_3'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_4: TAbmesFloatField
      FieldName = 'NO_4'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_5: TAbmesFloatField
      FieldName = 'NO_5'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_6: TAbmesFloatField
      FieldName = 'NO_6'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_7: TAbmesFloatField
      FieldName = 'NO_7'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_8: TAbmesFloatField
      FieldName = 'NO_8'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_9: TAbmesFloatField
      FieldName = 'NO_9'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_10: TAbmesFloatField
      FieldName = 'NO_10'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_11: TAbmesFloatField
      FieldName = 'NO_11'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_12: TAbmesFloatField
      FieldName = 'NO_12'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_13: TAbmesFloatField
      FieldName = 'NO_13'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_14: TAbmesFloatField
      FieldName = 'NO_14'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_15: TAbmesFloatField
      FieldName = 'NO_15'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_16: TAbmesFloatField
      FieldName = 'NO_16'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_17: TAbmesFloatField
      FieldName = 'NO_17'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_18: TAbmesFloatField
      FieldName = 'NO_18'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_19: TAbmesFloatField
      FieldName = 'NO_19'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_20: TAbmesFloatField
      FieldName = 'NO_20'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_21: TAbmesFloatField
      FieldName = 'NO_21'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_22: TAbmesFloatField
      FieldName = 'NO_22'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_23: TAbmesFloatField
      FieldName = 'NO_23'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_24: TAbmesFloatField
      FieldName = 'NO_24'
      ProviderFlags = []
    end
    object qryMLMSOperationsNO_25: TAbmesFloatField
      FieldName = 'NO_25'
      ProviderFlags = []
    end
    object qryMLMSOperationsFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
      ProviderFlags = []
    end
    object qryMLMSOperationsML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
      ProviderFlags = []
    end
    object qryMLMSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'HAS_SPECIAL_CONTROL'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsHAS_IN_MOVEMENTS: TAbmesFloatField
      FieldName = 'HAS_IN_MOVEMENTS'
      ProviderFlags = []
    end
    object qryMLMSOperationsHAS_OUT_MOVEMENTS: TAbmesFloatField
      FieldName = 'HAS_OUT_MOVEMENTS'
      ProviderFlags = []
    end
    object qryMLMSOperationsD_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_HOUR_PRICE'
      ProviderFlags = []
    end
    object qryMLMSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_MAINTAINANCE_HOUR_PRICE'
      ProviderFlags = []
    end
    object qryMLMSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_OPERATOR_COUNT'
      ProviderFlags = []
    end
    object qryMLMSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_PROCESS_COUNT'
      ProviderFlags = []
    end
    object qryMLMSOperationsREAL_SETUP_HOUR_PRICE: TAbmesFloatField
      FieldName = 'REAL_SETUP_HOUR_PRICE'
      ProviderFlags = []
    end
    object qryMLMSOperationsREAL_HOUR_PRICE: TAbmesFloatField
      FieldName = 'REAL_HOUR_PRICE'
      ProviderFlags = []
    end
    object qryMLMSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationsIS_AUTO_SETUP: TAbmesFloatField
      FieldName = 'IS_AUTO_SETUP'
      ProviderFlags = [pfInUpdate]
    end
  end
  object prvAllMLMSOperations: TDataSetProvider
    DataSet = qryAllMLMSOperations
    Options = [poReadOnly]
    Left = 176
    Top = 328
  end
  object qryAllMLMSOperations: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mlmso.MLMSO_OBJECT_BRANCH_CODE,'
      '  mlmso.MLMSO_OBJECT_CODE,'
      '  mlmso.MLMS_OBJECT_BRANCH_CODE,'
      '  mlmso.MLMS_OBJECT_CODE,'
      '  mlmso.MLMS_OPERATION_NO,'
      '  mlmso.MLMS_OPERATION_VARIANT_NO,'
      '  mlmso.OPERATION_TYPE_CODE,'
      
        '  Decode(mlmso.OPERATION_TYPE_CODE, 2, 1, 0) as IS_NORMAL_OPERAT' +
        'ION,'
      '  mlmso.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  d.PRODUCT_CODE as DEPT_PRODUCT_CODE,'
      '  d.PARENT_CODE as DEPT_PARENT_CODE,'
      '  mlmso.SETUP_PROFESSION_CODE,'
      '  mlmso.SETUP_EFFORT_COEF,'
      '  mlmso.SETUP_HOUR_TECH_QUANTITY,'
      '  mlmso.SETUP_COUNT,'
      '  mlmso.DONE_SETUP_COUNT,'
      '  mlmso.PROFESSION_CODE,'
      '  mlmso.EFFORT_COEF,'
      '  mlmso.HOUR_TECH_QUANTITY,'
      '  mlmso.PROGRAM_TOOL_PRODUCT_CODE,'
      '  ptp.NAME as PROGRAM_TOOL_PRODUCT_NAME,'
      '  ptp.CUSTOM_CODE as PROGRAM_TOOL_PRODUCT_NO,'
      '  mlmso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '  stp.NAME as SPECIFIC_TOOL_PRODUCT_NAME,'
      '  stp.CUSTOM_CODE as SPECIFIC_TOOL_PRODUCT_NO,'
      '  mlmso.TYPICAL_TOOL_PRODUCT_CODE,'
      '  ttp.NAME as TYPICAL_TOOL_PRODUCT_NAME,'
      '  ttp.CUSTOM_CODE as TYPICAL_TOOL_PRODUCT_NO,'
      '  mlmso.IS_ACTIVE,'
      '  mlmso.VARIANT_DETAIL_TECH_QUANTITY,'
      '  mlmso.NOTES,'
      '  mlmso.DOC_BRANCH_CODE,'
      '  mlmso.DOC_CODE,'
      '  mlmso.SPECIFIC_TOOL_DETAIL_TECH_QTY,'
      '  mlmso.TYPICAL_TOOL_DETAIL_TECH_QTY,'
      '  mlmso.PROGRAM_TOOL_REQUIREMENT_CODE,'
      '  mlmso.SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '  mlmso.TYPICAL_TOOL_REQUIREMENT_CODE,'
      '  mlmso.PROGRAM_TOOL_IS_COMPLETE,'
      '  mlmso.SPECIFIC_TOOL_IS_COMPLETE,'
      '  mlmso.TYPICAL_TOOL_IS_COMPLETE,'
      '  mlmso.TREATMENT_BEGIN_WORKDAY_NO,'
      '  mlmso.TREATMENT_WORKDAYS,'
      '  mlmso.TREATMENT_BEGIN_DATE,'
      '  mlmso.TREATMENT_END_DATE,'
      '  mlmso.HAS_SPECIAL_CONTROL,'
      '  mlmso.IS_AUTO_MOVEMENT,'
      '  mlmso.IS_AUTO_SETUP,'
      ''
      '  ( select'
      '      dp.HOUR_PRICE'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '      (mlmso.TREATMENT_BEGIN_DATE between dp.BEGIN_DATE and dp.E' +
        'ND_DATE)'
      '  ) as D_HOUR_PRICE,'
      ''
      '  ( select'
      '      dp.MAINTAINANCE_HOUR_PRICE'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '      (mlmso.TREATMENT_BEGIN_DATE between dp.BEGIN_DATE and dp.E' +
        'ND_DATE)'
      '  ) as D_MAINTAINANCE_HOUR_PRICE,'
      ''
      '  ( select'
      '      dp.PARALLEL_OPERATOR_COUNT'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '      (mlmso.TREATMENT_BEGIN_DATE between dp.BEGIN_DATE and dp.E' +
        'ND_DATE)'
      '  ) as D_PARALLEL_OPERATOR_COUNT,'
      ''
      '  ( select'
      '      dp.PARALLEL_PROCESS_COUNT'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '      (mlmso.TREATMENT_BEGIN_DATE between dp.BEGIN_DATE and dp.E' +
        'ND_DATE)'
      '  ) as D_PARALLEL_PROCESS_COUNT,'
      ''
      '  %HAS_DOC_ITEMS[mlmso] as HAS_DOCUMENTATION,'
      ''
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = mlmso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = mlmso.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = mlmso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = mlmso.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = mlmso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = mlmso.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  mll.NO_1,'
      '  mll.NO_2,'
      '  mll.NO_3,'
      '  mll.NO_4,'
      '  mll.NO_5,'
      '  mll.NO_6,'
      '  mll.NO_7,'
      '  mll.NO_8,'
      '  mll.NO_9,'
      '  mll.NO_10,'
      '  mll.NO_11,'
      '  mll.NO_12,'
      '  mll.NO_13,'
      '  mll.NO_14,'
      '  mll.NO_15,'
      '  mll.NO_16,'
      '  mll.NO_17,'
      '  mll.NO_18,'
      '  mll.NO_19,'
      '  mll.NO_20,'
      '  mll.NO_21,'
      '  mll.NO_22,'
      '  mll.NO_23,'
      '  mll.NO_24,'
      '  mll.NO_25,'
      '  mll.FORK_NO,'
      '  mlms.ML_MODEL_STAGE_NO,'
      ''
      '  ('
      '    select'
      '      Sign(Count(*))'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.TO_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANC' +
        'H_CODE) and'
      '      (om.TO_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ) as HAS_IN_MOVEMENTS,'
      ''
      '  ('
      '    select'
      '      Sign(Count(*))'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ) as HAS_OUT_MOVEMENTS,'
      ''
      '  ( select'
      '      pp.HOUR_PRICE'
      '    from'
      '      PROFESSION_PERIODS pp'
      '    where'
      '      (pp.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE) and'
      
        '      (mlmso.TREATMENT_BEGIN_DATE between pp.BEGIN_DATE and pp.E' +
        'ND_DATE)'
      '  ) as REAL_SETUP_HOUR_PRICE,'
      ''
      '  ( select'
      '      pp.HOUR_PRICE'
      '    from'
      '      PROFESSION_PERIODS pp'
      '    where'
      '      (pp.PROFESSION_CODE = mlmso.PROFESSION_CODE) and'
      
        '      (mlmso.TREATMENT_BEGIN_DATE between pp.BEGIN_DATE and pp.E' +
        'ND_DATE)'
      '  ) as REAL_HOUR_PRICE'
      '  '
      'from'
      '  MLMS_OPERATIONS mlmso,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  PRODUCTS ptp,'
      '  PRODUCTS stp,'
      '  PRODUCTS ttp,'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll'
      ''
      'where'
      '  (mlmso.DEPT_CODE = d.DEPT_CODE(+)) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (mlmso.PROGRAM_TOOL_PRODUCT_CODE = ptp.PRODUCT_CODE(+)) and'
      '  (mlmso.SPECIFIC_TOOL_PRODUCT_CODE = stp.PRODUCT_CODE(+)) and'
      '  (mlmso.TYPICAL_TOOL_PRODUCT_CODE = ttp.PRODUCT_CODE(+)) and'
      ''
      
        '  (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '  (mlmso.MLMS_OPERATION_VARIANT_NO >= 0) and'
      ''
      '  (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '  (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      ''
      'order by'
      '  mlmso.MLMS_OBJECT_BRANCH_CODE,'
      '  mlmso.MLMS_OBJECT_CODE,'
      '  mlmso.MLMS_OPERATION_NO,'
      '  mlmso.MLMS_OPERATION_VARIANT_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[mlmso]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 376
    object qryAllMLMSOperationsMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
    end
    object qryAllMLMSOperationsMLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_CODE'
    end
    object qryAllMLMSOperationsMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
    end
    object qryAllMLMSOperationsMLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_CODE'
    end
    object qryAllMLMSOperationsMLMS_OPERATION_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_NO'
    end
    object qryAllMLMSOperationsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_VARIANT_NO'
    end
    object qryAllMLMSOperationsOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
    end
    object qryAllMLMSOperationsIS_NORMAL_OPERATION: TAbmesFloatField
      FieldName = 'IS_NORMAL_OPERATION'
    end
    object qryAllMLMSOperationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryAllMLMSOperationsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qryAllMLMSOperationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryAllMLMSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
    object qryAllMLMSOperationsDEPT_PARENT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PARENT_CODE'
    end
    object qryAllMLMSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
    end
    object qryAllMLMSOperationsSETUP_EFFORT_COEF: TAbmesFloatField
      FieldName = 'SETUP_EFFORT_COEF'
    end
    object qryAllMLMSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
    end
    object qryAllMLMSOperationsSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
    end
    object qryAllMLMSOperationsDONE_SETUP_COUNT: TAbmesFloatField
      FieldName = 'DONE_SETUP_COUNT'
    end
    object qryAllMLMSOperationsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object qryAllMLMSOperationsEFFORT_COEF: TAbmesFloatField
      FieldName = 'EFFORT_COEF'
    end
    object qryAllMLMSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'HOUR_TECH_QUANTITY'
    end
    object qryAllMLMSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object qryAllMLMSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object qryAllMLMSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NO'
    end
    object qryAllMLMSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object qryAllMLMSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object qryAllMLMSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NO'
    end
    object qryAllMLMSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object qryAllMLMSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object qryAllMLMSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NO'
    end
    object qryAllMLMSOperationsIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
    end
    object qryAllMLMSOperationsVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'VARIANT_DETAIL_TECH_QUANTITY'
    end
    object qryAllMLMSOperationsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryAllMLMSOperationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryAllMLMSOperationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryAllMLMSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_DETAIL_TECH_QTY'
    end
    object qryAllMLMSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_DETAIL_TECH_QTY'
    end
    object qryAllMLMSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object qryAllMLMSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object qryAllMLMSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object qryAllMLMSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
    end
    object qryAllMLMSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
    end
    object qryAllMLMSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
    end
    object qryAllMLMSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
    end
    object qryAllMLMSOperationsTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object qryAllMLMSOperationsTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_BEGIN_DATE'
    end
    object qryAllMLMSOperationsTREATMENT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_END_DATE'
    end
    object qryAllMLMSOperationsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryAllMLMSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object qryAllMLMSOperationsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object qryAllMLMSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object qryAllMLMSOperationsNO_1: TAbmesFloatField
      FieldName = 'NO_1'
    end
    object qryAllMLMSOperationsNO_2: TAbmesFloatField
      FieldName = 'NO_2'
    end
    object qryAllMLMSOperationsNO_3: TAbmesFloatField
      FieldName = 'NO_3'
    end
    object qryAllMLMSOperationsNO_4: TAbmesFloatField
      FieldName = 'NO_4'
    end
    object qryAllMLMSOperationsNO_5: TAbmesFloatField
      FieldName = 'NO_5'
    end
    object qryAllMLMSOperationsNO_6: TAbmesFloatField
      FieldName = 'NO_6'
    end
    object qryAllMLMSOperationsNO_7: TAbmesFloatField
      FieldName = 'NO_7'
    end
    object qryAllMLMSOperationsNO_8: TAbmesFloatField
      FieldName = 'NO_8'
    end
    object qryAllMLMSOperationsNO_9: TAbmesFloatField
      FieldName = 'NO_9'
    end
    object qryAllMLMSOperationsNO_10: TAbmesFloatField
      FieldName = 'NO_10'
    end
    object qryAllMLMSOperationsNO_11: TAbmesFloatField
      FieldName = 'NO_11'
    end
    object qryAllMLMSOperationsNO_12: TAbmesFloatField
      FieldName = 'NO_12'
    end
    object qryAllMLMSOperationsNO_13: TAbmesFloatField
      FieldName = 'NO_13'
    end
    object qryAllMLMSOperationsNO_14: TAbmesFloatField
      FieldName = 'NO_14'
    end
    object qryAllMLMSOperationsNO_15: TAbmesFloatField
      FieldName = 'NO_15'
    end
    object qryAllMLMSOperationsNO_16: TAbmesFloatField
      FieldName = 'NO_16'
    end
    object qryAllMLMSOperationsNO_17: TAbmesFloatField
      FieldName = 'NO_17'
    end
    object qryAllMLMSOperationsNO_18: TAbmesFloatField
      FieldName = 'NO_18'
    end
    object qryAllMLMSOperationsNO_19: TAbmesFloatField
      FieldName = 'NO_19'
    end
    object qryAllMLMSOperationsNO_20: TAbmesFloatField
      FieldName = 'NO_20'
    end
    object qryAllMLMSOperationsNO_21: TAbmesFloatField
      FieldName = 'NO_21'
    end
    object qryAllMLMSOperationsNO_22: TAbmesFloatField
      FieldName = 'NO_22'
    end
    object qryAllMLMSOperationsNO_23: TAbmesFloatField
      FieldName = 'NO_23'
    end
    object qryAllMLMSOperationsNO_24: TAbmesFloatField
      FieldName = 'NO_24'
    end
    object qryAllMLMSOperationsNO_25: TAbmesFloatField
      FieldName = 'NO_25'
    end
    object qryAllMLMSOperationsFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object qryAllMLMSOperationsML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
    object qryAllMLMSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'HAS_SPECIAL_CONTROL'
    end
    object qryAllMLMSOperationsHAS_IN_MOVEMENTS: TAbmesFloatField
      FieldName = 'HAS_IN_MOVEMENTS'
    end
    object qryAllMLMSOperationsHAS_OUT_MOVEMENTS: TAbmesFloatField
      FieldName = 'HAS_OUT_MOVEMENTS'
    end
    object qryAllMLMSOperationsD_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_HOUR_PRICE'
    end
    object qryAllMLMSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_MAINTAINANCE_HOUR_PRICE'
    end
    object qryAllMLMSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_OPERATOR_COUNT'
    end
    object qryAllMLMSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_PROCESS_COUNT'
    end
    object qryAllMLMSOperationsREAL_SETUP_HOUR_PRICE: TAbmesFloatField
      FieldName = 'REAL_SETUP_HOUR_PRICE'
    end
    object qryAllMLMSOperationsREAL_HOUR_PRICE: TAbmesFloatField
      FieldName = 'REAL_HOUR_PRICE'
    end
    object qryAllMLMSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      Required = True
    end
    object qryAllMLMSOperationsIS_AUTO_SETUP: TAbmesFloatField
      FieldName = 'IS_AUTO_SETUP'
      Required = True
    end
  end
  object cdsAllMLMSOperations: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvAllMLMSOperations'
    Left = 176
    Top = 424
    object cdsAllMLMSOperationsMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
    end
    object cdsAllMLMSOperationsMLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_CODE'
    end
    object cdsAllMLMSOperationsMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
    end
    object cdsAllMLMSOperationsMLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_CODE'
    end
    object cdsAllMLMSOperationsMLMS_OPERATION_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_NO'
    end
    object cdsAllMLMSOperationsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_VARIANT_NO'
    end
    object cdsAllMLMSOperationsOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
    end
    object cdsAllMLMSOperationsIS_NORMAL_OPERATION: TAbmesFloatField
      FieldName = 'IS_NORMAL_OPERATION'
    end
    object cdsAllMLMSOperationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsAllMLMSOperationsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsAllMLMSOperationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsAllMLMSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
    object cdsAllMLMSOperationsDEPT_PARENT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PARENT_CODE'
    end
    object cdsAllMLMSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
    end
    object cdsAllMLMSOperationsSETUP_EFFORT_COEF: TAbmesFloatField
      FieldName = 'SETUP_EFFORT_COEF'
    end
    object cdsAllMLMSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
    end
    object cdsAllMLMSOperationsSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
    end
    object cdsAllMLMSOperationsDONE_SETUP_COUNT: TAbmesFloatField
      FieldName = 'DONE_SETUP_COUNT'
    end
    object cdsAllMLMSOperationsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object cdsAllMLMSOperationsEFFORT_COEF: TAbmesFloatField
      FieldName = 'EFFORT_COEF'
    end
    object cdsAllMLMSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'HOUR_TECH_QUANTITY'
    end
    object cdsAllMLMSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object cdsAllMLMSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsAllMLMSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_NO'
    end
    object cdsAllMLMSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object cdsAllMLMSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsAllMLMSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_NO'
    end
    object cdsAllMLMSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object cdsAllMLMSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NAME'
      Size = 100
    end
    object cdsAllMLMSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_NO'
    end
    object cdsAllMLMSOperationsIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
    end
    object cdsAllMLMSOperationsVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'VARIANT_DETAIL_TECH_QUANTITY'
    end
    object cdsAllMLMSOperationsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsAllMLMSOperationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsAllMLMSOperationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsAllMLMSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_DETAIL_TECH_QTY'
    end
    object cdsAllMLMSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_DETAIL_TECH_QTY'
    end
    object cdsAllMLMSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object cdsAllMLMSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object cdsAllMLMSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object cdsAllMLMSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
    end
    object cdsAllMLMSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
    end
    object cdsAllMLMSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
    end
    object cdsAllMLMSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
    end
    object cdsAllMLMSOperationsTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object cdsAllMLMSOperationsTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_BEGIN_DATE'
    end
    object cdsAllMLMSOperationsTREATMENT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_END_DATE'
    end
    object cdsAllMLMSOperationsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object cdsAllMLMSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsAllMLMSOperationsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object cdsAllMLMSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsAllMLMSOperationsNO_1: TAbmesFloatField
      FieldName = 'NO_1'
    end
    object cdsAllMLMSOperationsNO_2: TAbmesFloatField
      FieldName = 'NO_2'
    end
    object cdsAllMLMSOperationsNO_3: TAbmesFloatField
      FieldName = 'NO_3'
    end
    object cdsAllMLMSOperationsNO_4: TAbmesFloatField
      FieldName = 'NO_4'
    end
    object cdsAllMLMSOperationsNO_5: TAbmesFloatField
      FieldName = 'NO_5'
    end
    object cdsAllMLMSOperationsNO_6: TAbmesFloatField
      FieldName = 'NO_6'
    end
    object cdsAllMLMSOperationsNO_7: TAbmesFloatField
      FieldName = 'NO_7'
    end
    object cdsAllMLMSOperationsNO_8: TAbmesFloatField
      FieldName = 'NO_8'
    end
    object cdsAllMLMSOperationsNO_9: TAbmesFloatField
      FieldName = 'NO_9'
    end
    object cdsAllMLMSOperationsNO_10: TAbmesFloatField
      FieldName = 'NO_10'
    end
    object cdsAllMLMSOperationsNO_11: TAbmesFloatField
      FieldName = 'NO_11'
    end
    object cdsAllMLMSOperationsNO_12: TAbmesFloatField
      FieldName = 'NO_12'
    end
    object cdsAllMLMSOperationsNO_13: TAbmesFloatField
      FieldName = 'NO_13'
    end
    object cdsAllMLMSOperationsNO_14: TAbmesFloatField
      FieldName = 'NO_14'
    end
    object cdsAllMLMSOperationsNO_15: TAbmesFloatField
      FieldName = 'NO_15'
    end
    object cdsAllMLMSOperationsNO_16: TAbmesFloatField
      FieldName = 'NO_16'
    end
    object cdsAllMLMSOperationsNO_17: TAbmesFloatField
      FieldName = 'NO_17'
    end
    object cdsAllMLMSOperationsNO_18: TAbmesFloatField
      FieldName = 'NO_18'
    end
    object cdsAllMLMSOperationsNO_19: TAbmesFloatField
      FieldName = 'NO_19'
    end
    object cdsAllMLMSOperationsNO_20: TAbmesFloatField
      FieldName = 'NO_20'
    end
    object cdsAllMLMSOperationsNO_21: TAbmesFloatField
      FieldName = 'NO_21'
    end
    object cdsAllMLMSOperationsNO_22: TAbmesFloatField
      FieldName = 'NO_22'
    end
    object cdsAllMLMSOperationsNO_23: TAbmesFloatField
      FieldName = 'NO_23'
    end
    object cdsAllMLMSOperationsNO_24: TAbmesFloatField
      FieldName = 'NO_24'
    end
    object cdsAllMLMSOperationsNO_25: TAbmesFloatField
      FieldName = 'NO_25'
    end
    object cdsAllMLMSOperationsFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object cdsAllMLMSOperationsML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
    object cdsAllMLMSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'HAS_SPECIAL_CONTROL'
    end
    object cdsAllMLMSOperationsHAS_IN_MOVEMENTS: TAbmesFloatField
      FieldName = 'HAS_IN_MOVEMENTS'
    end
    object cdsAllMLMSOperationsHAS_OUT_MOVEMENTS: TAbmesFloatField
      FieldName = 'HAS_OUT_MOVEMENTS'
    end
    object cdsAllMLMSOperationsD_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_HOUR_PRICE'
    end
    object cdsAllMLMSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      FieldName = 'D_MAINTAINANCE_HOUR_PRICE'
    end
    object cdsAllMLMSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_OPERATOR_COUNT'
    end
    object cdsAllMLMSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'D_PARALLEL_PROCESS_COUNT'
    end
    object cdsAllMLMSOperationsREAL_SETUP_HOUR_PRICE: TAbmesFloatField
      FieldName = 'REAL_SETUP_HOUR_PRICE'
    end
    object cdsAllMLMSOperationsREAL_HOUR_PRICE: TAbmesFloatField
      FieldName = 'REAL_HOUR_PRICE'
    end
    object cdsAllMLMSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      Required = True
    end
    object cdsAllMLMSOperationsIS_AUTO_SETUP: TAbmesFloatField
      FieldName = 'IS_AUTO_SETUP'
      Required = True
    end
  end
  object qryUpdateStageDates: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_RESULT_STORE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_RESULT_STORE_END_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  for x in'
      '    ( select'
      '        mll.MLL_OBJECT_BRANCH_CODE,'
      '        mll.MLL_OBJECT_CODE'
      '      from'
      '        MATERIAL_LIST_LINES mll'
      '      where'
      '        (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '        (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      '    )'
      '  loop'
      ''
      '    update'
      '      ML_MODEL_STAGES_FOR_EDIT mlms'
      '    set'
      '      mlms.TREATMENT_BEGIN_DATE ='
      
        '        %INC_DATE_BY_WORKDAYS[(:ENTER_RESULT_STORE_END_DATE + 1)' +
        '~(-mlms.TOTAL_TREATMENT_WORKDAYS)],'
      '      mlms.TREATMENT_END_DATE ='
      
        '        %INC_DATE_BY_WORKDAYS[(:ENTER_RESULT_STORE_END_DATE + 1)' +
        '~(-mlms.TOTAL_TREATMENT_WORKDAYS + Greatest(mlms.TREATMENT_WORKD' +
        'AYS, 1) - 1)]'
      '    where'
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = x.MLL_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (mlms.MLL_OBJECT_CODE = x.MLL_OBJECT_CODE);'
      ' '
      '  end loop;'
      'end;')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'INC_DATE_BY_WORKDAYS[(:ENTER_RESULT_STORE_END_DATE + 1)~(-mlms.T' +
          'OTAL_TREATMENT_WORKDAYS)]'
        ParamType = ptInput
        Value = ':ENTER_RESULT_STORE_END_DATE'
      end
      item
        DataType = ftWideString
        Name = 
          'INC_DATE_BY_WORKDAYS[(:ENTER_RESULT_STORE_END_DATE + 1)~(-mlms.T' +
          'OTAL_TREATMENT_WORKDAYS + Greatest(mlms.TREATMENT_WORKDAYS, 1) -' +
          ' 1)]'
        ParamType = ptInput
        Value = ':ENTER_RESULT_STORE_END_DATE'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 704
    Top = 208
  end
  object qryDelMLMSProcessObjects: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  PROCESS_OBJECTS po'
      ''
      'where'
      '  (po.PROCESS_OBJECT_BRANCH_CODE, po.PROCESS_OBJECT_CODE) in'
      '  ('
      '    select'
      '      mlms.MLMS_OBJECT_BRANCH_CODE,'
      '      mlms.MLMS_OBJECT_CODE'
      '    from'
      '      ML_MODEL_STAGES mlms'
      '    where'
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = :MLL_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (mlms.MLL_OBJECT_CODE = :MLL_OBJECT_CODE)'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 408
  end
  object prvAllStages: TDataSetProvider
    DataSet = qryAllStages
    Exported = False
    Options = [poReadOnly]
    Left = 392
    Top = 376
  end
  object qryAllStages: TAbmesSQLQuery
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
        Name = 'SPEC_MODEL_VARIANT_NO'
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
      '  '
      'from'
      '  SPEC_LINES spl,'
      '  SPEC_MODEL_VARIANT_STAGES smvs,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  STORES s'
      ''
      'where'
      '  (spl.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      '  (spl.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      '  (smvs.DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (d.DEPT_CODE = s.STORE_CODE(+)) and'
      ''
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        SPEC_LINES spl2,'
      '        PRODUCTS dp2'
      '      where'
      '        (spl2.SPEC_PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      ''
      '        (spl2.DETAIL_CODE = dp2.PRODUCT_CODE) and'
      ''
      '        (spl2.NO_1 > 0) and'
      
        '        (spl.NO_AS_FORMATED_TEXT like (spl2.NO_AS_FORMATED_TEXT ' +
        '|| '#39'%'#39')) and'
      
        '        (spl2.NO_AS_FORMATED_TEXT <> spl.NO_AS_FORMATED_TEXT) an' +
        'd'
      '        (dp2.IS_PRODUCTION_PRODUCT = 1)'
      '    )'
      '  ) and'
      ''
      '  (spl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvs.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvs.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO)'
      ''
      'order by'
      '  smvs.SPEC_PRODUCT_CODE,'
      '  smvs.SPEC_MODEL_VARIANT_NO,'
      '  smvs.SPEC_LINE_CODE,'
      '  smvs.SPEC_LINE_STAGE_NO'
      '')
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
    Left = 392
    Top = 424
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
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvAllStages'
    Left = 392
    Top = 472
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
      FieldValueType = fvtBoolean
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
    end
    object cdsAllStagesOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
    object cdsAllStagesEXTERNAL_WORK_PRICE: TAbmesFloatField
      FieldName = 'EXTERNAL_WORK_PRICE'
    end
  end
  object prvAllSMVSOperations: TDataSetProvider
    DataSet = qryAllSMVSOperations
    Exported = False
    Options = [poReadOnly]
    Left = 472
    Top = 392
  end
  object qryAllSMVSOperations: TAbmesSQLQuery
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
      '  smvso.SPECIFIC_TOOL_DETAIL_TECH_QTY,'
      '  smvso.TYPICAL_TOOL_DETAIL_TECH_QTY,'
      '  smvso.PROGRAM_TOOL_REQUIREMENT_CODE,'
      '  smvso.SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '  smvso.TYPICAL_TOOL_REQUIREMENT_CODE,'
      '  smvso.PROGRAM_TOOL_IS_COMPLETE,'
      '  smvso.SPECIFIC_TOOL_IS_COMPLETE,'
      '  smvso.TYPICAL_TOOL_IS_COMPLETE,'
      '  smvso.NOTES,'
      '  smvso.DOC_BRANCH_CODE,'
      '  smvso.DOC_CODE,'
      '  smvso.TREATMENT_BEGIN_WORKDAY_NO,'
      '  smvso.TREATMENT_WORKDAYS,'
      '  smvso.HAS_SPECIAL_CONTROL,'
      '  smvso.IS_AUTO_MOVEMENT,'
      '  smvso.IS_AUTO_SETUP,'
      ''
      '  ('
      '    select'
      '      dp.HOUR_PRICE'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as D_HOUR_PRICE,'
      ''
      '  ('
      '    select'
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
      '  (smvso.SMVS_OPERATION_VARIANT_NO >= 0) and'
      ''
      '  (smvso.DEPT_CODE = d.DEPT_CODE(+)) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (smvso.PROGRAM_TOOL_PRODUCT_CODE = ptp.PRODUCT_CODE(+)) and'
      '  (smvso.SPECIFIC_TOOL_PRODUCT_CODE = stp.PRODUCT_CODE(+)) and'
      '  (smvso.TYPICAL_TOOL_PRODUCT_CODE = ttp.PRODUCT_CODE(+)) and'
      ''
      '  (smvso.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvso.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO)'
      ''
      'order by'
      '  smvso.SPEC_PRODUCT_CODE,'
      '  smvso.SPEC_MODEL_VARIANT_NO,'
      '  smvso.SPEC_LINE_CODE,'
      '  smvso.SPEC_LINE_STAGE_CODE,'
      '  smvso.SMVS_OPERATION_NO,'
      '  smvso.SMVS_OPERATION_VARIANT_NO'
      ''
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
    Left = 472
    Top = 440
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
      Required = True
    end
    object qryAllSMVSOperationsIS_AUTO_SETUP: TAbmesFloatField
      FieldName = 'IS_AUTO_SETUP'
      Required = True
    end
  end
  object cdsAllSMVSOperations: TAbmesClientDataSet
    Aggregates = <>
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
    ProviderName = 'prvAllSMVSOperations'
    Left = 472
    Top = 488
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
    object cdsAllSMVSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
    end
    object cdsAllSMVSOperationsTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
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
      Required = True
    end
    object cdsAllSMVSOperationsIS_AUTO_SETUP: TAbmesFloatField
      FieldName = 'IS_AUTO_SETUP'
      Required = True
    end
  end
  object qryProductData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.ACCOUNT_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_COEF,'
      '  p.TECH_MEASURE_CODE,'
      '  p.TECH_MEASURE_COEF,'
      
        '  (%PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[p.PRODUCT_CODE ~ Cont' +
        'extDate] / p.ACCOUNT_MEASURE_COEF) as ESTIMATED_SECONDARY_PRICE'
      ''
      'from'
      '  PRODUCTS p'
      ''
      'where'
      '  (p.PRODUCT_CODE = :PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[p.PRODUCT_CODE ~ ContextD' +
          'ate]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 304
    Top = 440
    object qryProductDataACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryProductDataACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object qryProductDataTECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TECH_MEASURE_CODE'
    end
    object qryProductDataTECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'TECH_MEASURE_COEF'
    end
    object qryProductDataESTIMATED_SECONDARY_PRICE: TAbmesFloatField
      FieldName = 'ESTIMATED_SECONDARY_PRICE'
    end
  end
  object qryXModelInfo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ('
      '    select'
      '      Count(*) as FORK_COUNT'
      '    from'
      '      MATERIAL_LIST_LINES mll'
      '    where'
      '      (mll.FORK_NO > 0) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      '  ) as FORK_COUNT,'
      ''
      '  ('
      '    select'
      '      Count(*) as OUT_STORE_DEAL_COUNT'
      '    from'
      '      STORE_DEALS sd,'
      '      MATERIAL_LIST_LINES mll'
      '    where'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (sd.IN_OUT < 0) and'
      ''
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      '  ) as OUT_STORE_DEAL_COUNT,'
      ''
      '  ('
      '    select'
      '      Count(*) as WAITING_CHANGE_REQUEST_COUNT'
      '    from'
      '      MATERIAL_LIST_LINE_CHANGES mllc'
      '    where'
      '      (mllc.REPLY_ACCEPT_EMPLOYEE_CODE is null) and'
      '      exists('
      '        select'
      '          1'
      '        from'
      '          MATERIAL_LIST_LINES mll'
      '        where'
      
        '          (mllc.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_C' +
        'ODE) and'
      '          (mllc.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      
        '          (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '          (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      '      )'
      '  ) as WAITING_CHANGE_REQUEST_COUNT'
      ''
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 456
    object qryXModelInfoFORK_COUNT: TAbmesFloatField
      FieldName = 'FORK_COUNT'
    end
    object qryXModelInfoOUT_STORE_DEAL_COUNT: TAbmesFloatField
      FieldName = 'OUT_STORE_DEAL_COUNT'
    end
    object qryXModelInfoWAITING_CHANGE_REQUEST_COUNT: TAbmesFloatField
      FieldName = 'WAITING_CHANGE_REQUEST_COUNT'
    end
  end
  object qrySetActiveOperationVariants: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      ''
      '  for x in'
      '    ('
      '      select'
      '        mlmso.MLMSO_OBJECT_BRANCH_CODE,'
      '        mlmso.MLMSO_OBJECT_CODE,'
      '        mll.LINE_DETAIL_TECH_QUANTITY'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        ML_MODEL_STAGES mlms,'
      '        MLMS_OPERATIONS mlmso'
      '      where'
      '        (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '        (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      ''
      
        '        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '        (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '        (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      ''
      '        (mlmso.MLMS_OPERATION_VARIANT_NO = 0) and'
      ''
      '        not exists('
      '          select'
      '            1'
      '          from'
      '            MLMS_OPERATIONS mlmso2'
      '          where'
      
        '            (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '            (mlmso2.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) a' +
        'nd'
      
        '            (mlmso2.MLMS_OPERATION_NO = mlmso.MLMS_OPERATION_NO)' +
        ' and'
      '            (mlmso2.IS_ACTIVE = 1) and'
      '            (mlmso2.MLMS_OPERATION_VARIANT_NO >= 0)'
      '        )'
      '    )'
      '  loop'
      ''
      '    update'
      '      MLMS_OPERATIONS_FOR_EDIT mlmso'
      '    set'
      
        '      mlmso.VARIANT_DETAIL_TECH_QUANTITY = x.LINE_DETAIL_TECH_QU' +
        'ANTITY'
      '    where'
      
        '      (mlmso.MLMSO_OBJECT_BRANCH_CODE = x.MLMSO_OBJECT_BRANCH_CO' +
        'DE) and'
      '      (mlmso.MLMSO_OBJECT_CODE = x.MLMSO_OBJECT_CODE);'
      ''
      '  end loop;'
      ''
      ''
      '  for x in'
      '    ('
      '      select'
      '        mlmso.MLMSO_OBJECT_BRANCH_CODE,'
      '        mlmso.MLMSO_OBJECT_CODE,'
      '        ( mll.LINE_DETAIL_TECH_QUANTITY -'
      '          ( select'
      
        '              Coalesce(Sum(mlmso2.VARIANT_DETAIL_TECH_QUANTITY),' +
        ' 0)'
      '            from'
      '              MLMS_OPERATIONS mlmso2'
      '            where'
      
        '              (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '              (mlmso2.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE)' +
        ' and'
      
        '              (mlmso2.MLMS_OPERATION_NO = mlmso.MLMS_OPERATION_N' +
        'O) and'
      
        '              (mlmso2.MLMS_OPERATION_VARIANT_NO > mlmso.MLMS_OPE' +
        'RATION_VARIANT_NO) and'
      '              (mlmso2.IS_ACTIVE = 1)'
      '          )'
      '        ) as NEW_VARIANT_DETAIL_TECH_QTY'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        ML_MODEL_STAGES mlms,'
      '        MLMS_OPERATIONS mlmso'
      '      where'
      '        (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '        (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      ''
      
        '        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '        (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '        (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      ''
      '        (mlmso.IS_ACTIVE = 1) and'
      ''
      '        not exists('
      '          select'
      '            1'
      '          from'
      '            MLMS_OPERATIONS mlmso2'
      '          where'
      
        '            (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '            (mlmso2.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) a' +
        'nd'
      
        '            (mlmso2.MLMS_OPERATION_NO = mlmso.MLMS_OPERATION_NO)' +
        ' and'
      
        '            (mlmso2.MLMS_OPERATION_VARIANT_NO < mlmso.MLMS_OPERA' +
        'TION_VARIANT_NO) and'
      '            (mlmso2.IS_ACTIVE = 1) and'
      '            (mlmso2.MLMS_OPERATION_VARIANT_NO >= 0)'
      '        )'
      '    )'
      '  loop'
      ''
      '    update'
      '      MLMS_OPERATIONS_FOR_EDIT mlmso'
      '    set'
      
        '      mlmso.VARIANT_DETAIL_TECH_QUANTITY = x.NEW_VARIANT_DETAIL_' +
        'TECH_QTY'
      '    where'
      
        '      (mlmso.MLMSO_OBJECT_BRANCH_CODE = x.MLMSO_OBJECT_BRANCH_CO' +
        'DE) and'
      '      (mlmso.MLMSO_OBJECT_CODE = x.MLMSO_OBJECT_CODE);'
      ''
      '  end loop;'
      ''
      'end;'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 640
    Top = 496
  end
  object qryXModelDoc: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mll.MLL_OBJECT_BRANCH_CODE,'
      '  mll.MLL_OBJECT_CODE,'
      '  di.DOC_BRANCH_CODE,'
      '  di.DOC_CODE,'
      '  di.DOC_ITEM_CODE,'
      '  mll.PARENT_MLL_OBJECT_BRANCH_CODE,'
      '  mll.PARENT_MLL_OBJECT_CODE,'
      '  mll.NO_AS_TEXT,'
      '  mll.NO_AS_FORMATED_TEXT,'
      '  mll.FORK_NO,'
      
        '  RPad(mll.NO_AS_FORMATED_TEXT, 100, Decode(mll.FORK_NO, 0, '#39' '#39',' +
        ' '#39'x'#39')) as NO_AS_FORMATED_TEXT_EX,'
      '  mll.DETAIL_CODE,'
      '  p.NAME as DETAIL_NAME,'
      '  di.DOC_ITEM_NAME,'
      '  di.DOC_ITEM_TYPE_CODE,'
      '  dit.DOC_ITEM_TYPE_NAME,'
      '  di.FILE_NAME,'
      '  di.RELATIVE_PATH'
      '  '
      'from'
      '  MATERIAL_LIST_LINES mll,'
      '  PRODUCTS p,'
      '  DOC_ITEMS di,'
      '  DOC_ITEM_TYPES dit'
      ''
      'where'
      '  (mll.DETAIL_CODE = p.PRODUCT_CODE) and'
      '  (di.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '  (di.DOC_CODE = p.DOC_CODE) and'
      '  (di.DOC_ITEM_TYPE_CODE = dit.DOC_ITEM_TYPE_CODE) and'
      '  (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      ''
      'order by'
      '  NO_AS_FORMATED_TEXT_EX,'
      '  mll.FORK_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 600
    Top = 56
    object qryXModelDocMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryXModelDocMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object qryXModelDocDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryXModelDocDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryXModelDocDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
    end
    object qryXModelDocPARENT_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PARENT_MLL_OBJECT_BRANCH_CODE'
    end
    object qryXModelDocPARENT_MLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PARENT_MLL_OBJECT_CODE'
    end
    object qryXModelDocNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qryXModelDocNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object qryXModelDocFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object qryXModelDocNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT_EX'
      Size = 100
    end
    object qryXModelDocDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qryXModelDocDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryXModelDocDOC_ITEM_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_NAME'
      Size = 50
    end
    object qryXModelDocDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
    end
    object qryXModelDocDOC_ITEM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_NAME'
      Size = 50
    end
    object qryXModelDocFILE_NAME: TAbmesWideStringField
      FieldName = 'FILE_NAME'
      Size = 250
    end
    object qryXModelDocRELATIVE_PATH: TAbmesWideStringField
      FieldName = 'RELATIVE_PATH'
      Size = 250
    end
  end
  object prvXModelDoc: TDataSetProvider
    DataSet = qryXModelDoc
    Left = 600
    Top = 8
  end
  object qryUpdMlmsoDates: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  for Mlms in'
      '    ( select'
      '        mlms.MLMS_OBJECT_BRANCH_CODE,'
      '        mlms.MLMS_OBJECT_CODE'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        ML_MODEL_STAGES mlms'
      '      where'
      
        '        (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '        (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      ''
      '        (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '        (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      '    )'
      '  loop'
      ''
      '    update'
      '      MLMS_OPERATIONS_FOR_EDIT mlmso'
      '    set'
      
        '      -- trigera shte poznae nepravdata i shte gi izchisli pravi' +
        'lno datite'
      '      mlmso.TREATMENT_BEGIN_DATE = mlmso.TREATMENT_END_DATE + 1'
      '    where'
      
        '      (mlmso.MLMS_OBJECT_BRANCH_CODE = Mlms.MLMS_OBJECT_BRANCH_C' +
        'ODE) and'
      '      (mlmso.MLMS_OBJECT_CODE = Mlms.MLMS_OBJECT_CODE);'
      ''
      '  end loop;'
      'end;'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 704
    Top = 256
  end
  object qryGetMllHasMovements: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARENT_MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARENT_MLL_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mll.NO_AS_TEXT,'
      
        '  Nvl2(%MAX_MLL_MOVED_TECH_QUANTITY[:PARENT_MLL_OBJECT_BRANCH_CO' +
        'DE~ :PARENT_MLL_OBJECT_CODE], 1, 0) as HAS_MOVEMENTS'
      'from'
      '  MATERIAL_LIST_LINES mll'
      'where'
      
        '  (mll.MLL_OBJECT_BRANCH_CODE = :PARENT_MLL_OBJECT_BRANCH_CODE) ' +
        'and'
      '  (mll.MLL_OBJECT_CODE = :PARENT_MLL_OBJECT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'MAX_MLL_MOVED_TECH_QUANTITY[:PARENT_MLL_OBJECT_BRANCH_CODE~ :PAR' +
          'ENT_MLL_OBJECT_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 504
    object qryGetMllHasMovementsNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qryGetMllHasMovementsHAS_MOVEMENTS: TAbmesFloatField
      FieldName = 'HAS_MOVEMENTS'
      FieldValueType = fvtBoolean
    end
  end
  object qryMaxMllDetailTechQuantity: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  %MAX_MLL_MOVED_TECH_QUANTITY[:MLL_OBJECT_BRANCH_CODE~ :MLL_OBJ' +
        'ECT_CODE] as MAX_MOVED_DEATAIL_TECH_QTY'
      'from'
      '  DUAL'
      'where'
      '  -- za da se pokazwat w Params na query-to'
      '  ( (1 = 1) or'
      '    (:MLL_OBJECT_BRANCH_CODE = :MLL_OBJECT_BRANCH_CODE) or'
      '    (:MLL_OBJECT_CODE = :MLL_OBJECT_CODE)'
      '  )')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'MAX_MLL_MOVED_TECH_QUANTITY[:MLL_OBJECT_BRANCH_CODE~ :MLL_OBJECT' +
          '_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 192
    Top = 496
    object qryMaxMllDetailTechQuantityMAX_MOVED_DEATAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'MAX_MOVED_DEATAIL_TECH_QTY'
    end
  end
  object qryMllInvestedValues: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.MLL_OBJECT_BRANCH_CODE,'
      '  x.MLL_OBJECT_CODE,'
      ''
      '  Sum(PLAN_INVESTED_VALUE_1) as PLAN_INVESTED_VALUE_1,'
      '  Sum(PLAN_IV_1_IS_INCOMPLETE) as PLAN_IV_1_IS_INCOMPLETE,'
      '  Sum(PLAN_INVESTED_VALUE_2) as PLAN_INVESTED_VALUE_2,'
      '  Sum(PLAN_IV_2_IS_INCOMPLETE) as PLAN_IV_2_IS_INCOMPLETE,'
      '  Sum(PLAN_INVESTED_VALUE_3) as PLAN_INVESTED_VALUE_3,'
      '  Sum(PLAN_IV_3_IS_INCOMPLETE) as PLAN_IV_3_IS_INCOMPLETE,'
      '  Sum(PLAN_INVESTED_VALUE_4) as PLAN_INVESTED_VALUE_4,'
      '  Sum(PLAN_IV_4_IS_INCOMPLETE) as PLAN_IV_4_IS_INCOMPLETE,'
      '  Sum(PLAN_INVESTED_VALUE_5) as PLAN_INVESTED_VALUE_5,'
      '  Sum(PLAN_IV_5_IS_INCOMPLETE) as PLAN_IV_5_IS_INCOMPLETE,'
      ''
      '  Sum(REAL_INVESTED_VALUE_1) as REAL_INVESTED_VALUE_1,'
      '  Sum(REAL_IV_1_IS_INCOMPLETE) as REAL_IV_1_IS_INCOMPLETE,'
      '  Sum(REAL_INVESTED_VALUE_2) as REAL_INVESTED_VALUE_2,'
      '  Sum(REAL_IV_2_IS_INCOMPLETE) as REAL_IV_2_IS_INCOMPLETE,'
      '  Sum(REAL_INVESTED_VALUE_3) as REAL_INVESTED_VALUE_3,'
      '  Sum(REAL_IV_3_IS_INCOMPLETE) as REAL_IV_3_IS_INCOMPLETE,'
      '  Sum(REAL_INVESTED_VALUE_4) as REAL_INVESTED_VALUE_4,'
      '  Sum(REAL_IV_4_IS_INCOMPLETE) as REAL_IV_4_IS_INCOMPLETE,'
      '  Sum(REAL_INVESTED_VALUE_5) as REAL_INVESTED_VALUE_5,'
      '  Sum(REAL_IV_5_IS_INCOMPLETE) as REAL_IV_5_IS_INCOMPLETE,'
      ''
      '  Sum(WASTE_INVESTED_VALUE_1) as WASTE_INVESTED_VALUE_1,'
      '  Sum(WASTE_IV_1_IS_INCOMPLETE) as WASTE_IV_1_IS_INCOMPLETE,'
      '  Sum(WASTE_INVESTED_VALUE_2) as WASTE_INVESTED_VALUE_2,'
      '  Sum(WASTE_IV_2_IS_INCOMPLETE) as WASTE_IV_2_IS_INCOMPLETE,'
      '  Sum(WASTE_INVESTED_VALUE_3) as WASTE_INVESTED_VALUE_3,'
      '  Sum(WASTE_IV_3_IS_INCOMPLETE) as WASTE_IV_3_IS_INCOMPLETE,'
      '  Sum(WASTE_INVESTED_VALUE_4) as WASTE_INVESTED_VALUE_4,'
      '  Sum(WASTE_IV_4_IS_INCOMPLETE) as WASTE_IV_4_IS_INCOMPLETE,'
      '  Sum(WASTE_INVESTED_VALUE_5) as WASTE_INVESTED_VALUE_5,'
      '  Sum(WASTE_IV_5_IS_INCOMPLETE) as WASTE_IV_5_IS_INCOMPLETE'
      ''
      'from'
      '  ( select'
      '      mll.MLL_OBJECT_BRANCH_CODE,'
      '      mll.MLL_OBJECT_CODE,'
      ''
      '      To_Number(null) as PLAN_INVESTED_VALUE_1,'
      '      To_Number(null) as PLAN_IV_1_IS_INCOMPLETE,'
      '      To_Number(null) as PLAN_INVESTED_VALUE_2,'
      '      To_Number(null) as PLAN_IV_2_IS_INCOMPLETE,'
      '      To_Number(null) as PLAN_INVESTED_VALUE_3,'
      '      To_Number(null) as PLAN_IV_3_IS_INCOMPLETE,'
      '      To_Number(null) as PLAN_INVESTED_VALUE_4,'
      '      To_Number(null) as PLAN_IV_4_IS_INCOMPLETE,'
      '      To_Number(null) as PLAN_INVESTED_VALUE_5,'
      '      To_Number(null) as PLAN_IV_5_IS_INCOMPLETE,'
      ''
      '      To_Number(null) as REAL_INVESTED_VALUE_1,'
      '      To_Number(null) as REAL_IV_1_IS_INCOMPLETE,'
      '      To_Number(null) as REAL_INVESTED_VALUE_2,'
      '      To_Number(null) as REAL_IV_2_IS_INCOMPLETE,'
      '      To_Number(null) as REAL_INVESTED_VALUE_3,'
      '      To_Number(null) as REAL_IV_3_IS_INCOMPLETE,'
      '      To_Number(null) as REAL_INVESTED_VALUE_4,'
      '      To_Number(null) as REAL_IV_4_IS_INCOMPLETE,'
      '      To_Number(null) as REAL_INVESTED_VALUE_5,'
      '      To_Number(null) as REAL_IV_5_IS_INCOMPLETE,'
      ''
      '      To_Number(null) as WASTE_INVESTED_VALUE_1,'
      '      To_Number(null) as WASTE_IV_1_IS_INCOMPLETE,'
      '      To_Number(null) as WASTE_INVESTED_VALUE_2,'
      '      To_Number(null) as WASTE_IV_2_IS_INCOMPLETE,'
      '      To_Number(null) as WASTE_INVESTED_VALUE_3,'
      '      To_Number(null) as WASTE_IV_3_IS_INCOMPLETE,'
      '      To_Number(null) as WASTE_INVESTED_VALUE_4,'
      '      To_Number(null) as WASTE_IV_4_IS_INCOMPLETE,'
      '      To_Number(null) as WASTE_INVESTED_VALUE_5,'
      '      To_Number(null) as WASTE_IV_5_IS_INCOMPLETE'
      ''
      '    from'
      '      MATERIAL_LIST_LINES mll'
      ''
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      '      (mll.ANNUL_EMPLOYEE_CODE is null)'
      ''
      ''
      '    union all'
      ''
      ''
      '    select'
      '      mll.MLL_OBJECT_BRANCH_CODE,'
      '      mll.MLL_OBJECT_CODE,'
      ''
      '      Sum('
      '        psd.QUANTITY *'
      
        '        %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[psd.PRODUCT_CODE ~ ps' +
        'd.STORE_DEAL_BEGIN_DATE] /'
      '        cr.FIXING'
      '      ) as PLAN_INVESTED_VALUE_1,'
      ''
      '      Sign('
      '        Count('
      '          Nvl2('
      '            psd.QUANTITY *'
      
        '            %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[psd.PRODUCT_CODE ' +
        '~ psd.STORE_DEAL_BEGIN_DATE] /'
      '            cr.FIXING,'
      '            null,'
      '            1'
      '          )'
      '        )'
      '      ) as PLAN_IV_1_IS_INCOMPLETE,'
      ''
      '      Sum('
      '        psd.QUANTITY *'
      
        '        %PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[psd.PRODUCT_CODE ~ ' +
        'psd.STORE_DEAL_BEGIN_DATE] /'
      '        cr.FIXING'
      '      ) as PLAN_INVESTED_VALUE_2,'
      ''
      '      Sign('
      '        Count('
      '          Nvl2('
      '            psd.QUANTITY *'
      
        '            %PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[psd.PRODUCT_COD' +
        'E ~ psd.STORE_DEAL_BEGIN_DATE] /'
      '            cr.FIXING,'
      '            null,'
      '            1'
      '          )'
      '        )'
      '      ) as PLAN_IV_2_IS_INCOMPLETE,'
      ''
      '      Sum('
      '        psd.QUANTITY *'
      
        '        %PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[psd.PRODUCT_CODE ~ ' +
        'psd.STORE_DEAL_BEGIN_DATE] /'
      '        cr.FIXING'
      '      ) as PLAN_INVESTED_VALUE_3,'
      ''
      '      Sign('
      '        Count('
      '          Nvl2('
      '            psd.QUANTITY *'
      
        '            %PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[psd.PRODUCT_COD' +
        'E ~ psd.STORE_DEAL_BEGIN_DATE] /'
      '            cr.FIXING,'
      '            null,'
      '            1'
      '          )'
      '        )'
      '      ) as PLAN_IV_3_IS_INCOMPLETE,'
      ''
      '      Sum('
      '        psd.QUANTITY *'
      
        '        %PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[psd.PRODUCT_CODE ~ ' +
        'psd.STORE_DEAL_BEGIN_DATE] /'
      '        cr.FIXING'
      '      ) as PLAN_INVESTED_VALUE_4,'
      ''
      '      Sign('
      '        Count('
      '          Nvl2('
      '            psd.QUANTITY *'
      
        '            %PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[psd.PRODUCT_COD' +
        'E ~ psd.STORE_DEAL_BEGIN_DATE] /'
      '            cr.FIXING,'
      '            null,'
      '            1'
      '          )'
      '        )'
      '      ) as PLAN_IV_4_IS_INCOMPLETE,'
      ''
      '      Sum('
      '        psd.QUANTITY *'
      
        '        %PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[psd.PRODUCT_CODE ~ ' +
        'psd.STORE_DEAL_BEGIN_DATE] /'
      '        cr.FIXING'
      '      ) as PLAN_INVESTED_VALUE_5,'
      ''
      '      Sign('
      '        Count('
      '          Nvl2('
      '            psd.QUANTITY *'
      
        '            %PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[psd.PRODUCT_COD' +
        'E ~ psd.STORE_DEAL_BEGIN_DATE] /'
      '            cr.FIXING,'
      '            null,'
      '            1'
      '          )'
      '        )'
      '      ) as PLAN_IV_5_IS_INCOMPLETE,'
      ''
      '      To_Number(null) as REAL_INVESTED_VALUE_1,'
      '      To_Number(null) as REAL_IV_1_IS_INCOMPLETE,'
      '      To_Number(null) as REAL_INVESTED_VALUE_2,'
      '      To_Number(null) as REAL_IV_2_IS_INCOMPLETE,'
      '      To_Number(null) as REAL_INVESTED_VALUE_3,'
      '      To_Number(null) as REAL_IV_3_IS_INCOMPLETE,'
      '      To_Number(null) as REAL_INVESTED_VALUE_4,'
      '      To_Number(null) as REAL_IV_4_IS_INCOMPLETE,'
      '      To_Number(null) as REAL_INVESTED_VALUE_5,'
      '      To_Number(null) as REAL_IV_5_IS_INCOMPLETE,'
      ''
      '      To_Number(null) as WASTE_INVESTED_VALUE_1,'
      '      To_Number(null) as WASTE_IV_1_IS_INCOMPLETE,'
      '      To_Number(null) as WASTE_INVESTED_VALUE_2,'
      '      To_Number(null) as WASTE_IV_2_IS_INCOMPLETE,'
      '      To_Number(null) as WASTE_INVESTED_VALUE_3,'
      '      To_Number(null) as WASTE_IV_3_IS_INCOMPLETE,'
      '      To_Number(null) as WASTE_INVESTED_VALUE_4,'
      '      To_Number(null) as WASTE_IV_4_IS_INCOMPLETE,'
      '      To_Number(null) as WASTE_INVESTED_VALUE_5,'
      '      To_Number(null) as WASTE_IV_5_IS_INCOMPLETE'
      ''
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      PLANNED_STORE_DEALS psd,'
      '      CURRENCY_RATES cr'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      '      (mll.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANC' +
        'H_CODE) and'
      '      (mll.MLL_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      '      (mll.ANNUL_EMPLOYEE_CODE is null) and'
      '      (psd.IN_OUT = -1) and'
      '      (psd.BND_PROCESS_CODE <> 110) and'
      '      (psd.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '      (cr.CURRENCY_CODE(+) = :CURRENCY_CODE) and'
      
        '      (cr.RATE_DATE(+) = Least(psd.STORE_DEAL_BEGIN_DATE, Contex' +
        'tDate))'
      '    group by'
      '      mll.MLL_OBJECT_BRANCH_CODE,'
      '      mll.MLL_OBJECT_CODE'
      ''
      ''
      '    union all'
      ''
      ''
      '    select'
      '      mll.MLL_OBJECT_BRANCH_CODE,'
      '      mll.MLL_OBJECT_CODE,'
      ''
      '      To_Number(null) as PLAN_INVESTED_VALUE_1,'
      '      To_Number(null) as PLAN_IV_1_IS_INCOMPLETE,'
      '      To_Number(null) as PLAN_INVESTED_VALUE_2,'
      '      To_Number(null) as PLAN_IV_2_IS_INCOMPLETE,'
      '      To_Number(null) as PLAN_INVESTED_VALUE_3,'
      '      To_Number(null) as PLAN_IV_3_IS_INCOMPLETE,'
      '      To_Number(null) as PLAN_INVESTED_VALUE_4,'
      '      To_Number(null) as PLAN_IV_4_IS_INCOMPLETE,'
      '      To_Number(null) as PLAN_INVESTED_VALUE_5,'
      '      To_Number(null) as PLAN_IV_5_IS_INCOMPLETE,'
      ''
      '      Sum('
      '        (sd.TOTAL_PRICE * sdcr.FIXING / cr.FIXING) -'
      '        (  -- returned price'
      '          select'
      '            Decode(Count(*),'
      '              0, 0,'
      
        '              Coalesce(Sum(sd2.TOTAL_PRICE * crx.FIXING / crx2.F' +
        'IXING), 0)'
      '            )'
      '          from'
      '            STORE_DEALS sd2,'
      '            CURRENCY_RATES crx,'
      '            CURRENCY_RATES crx2'
      '          where'
      
        '            (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_' +
        'OBJECT_BRANCH_CODE) and'
      
        '            (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_' +
        'CODE) and'
      '            (sd2.BND_PROCESS_CODE = 50) and'
      '            (sd2.IN_OUT = 1) and'
      '            (sd2.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '            (crx.CURRENCY_CODE(+) = sd2.CURRENCY_CODE) and'
      '            (crx.RATE_DATE(+) = sd2.STORE_DEAL_DATE) and'
      ''
      '            (crx2.CURRENCY_CODE(+) = :CURRENCY_CODE) and'
      '            (crx2.RATE_DATE(+) = sd2.STORE_DEAL_DATE)'
      '        )'
      '      ) as REAL_INVESTED_VALUE_1,'
      ''
      '      Sign('
      '        Count('
      '          Nvl2('
      '            (sd.TOTAL_PRICE * sdcr.FIXING / cr.FIXING) -'
      '            (  -- returned price'
      '              select'
      '                Decode(Count(*),'
      '                  0, 0,'
      
        '                  Decode(Min(Nvl2(sd2.TOTAL_PRICE * crx.FIXING /' +
        ' crx2.FIXING, 1, 0)), 0, null, 0)'
      '                )'
      '              from'
      '                STORE_DEALS sd2,'
      '                CURRENCY_RATES crx,'
      '                CURRENCY_RATES crx2'
      '              where'
      
        '                (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_D' +
        'EAL_OBJECT_BRANCH_CODE) and'
      
        '                (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJ' +
        'ECT_CODE) and'
      '                (sd2.BND_PROCESS_CODE = 50) and'
      '                (sd2.IN_OUT = 1) and'
      '                (sd2.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '                (crx.CURRENCY_CODE(+) = sd2.CURRENCY_CODE) and'
      '                (crx.RATE_DATE(+) = sd2.STORE_DEAL_DATE) and'
      ''
      '                (crx2.CURRENCY_CODE(+) = :CURRENCY_CODE) and'
      '                (crx2.RATE_DATE(+) = sd2.STORE_DEAL_DATE)'
      '            ),'
      '            null,'
      '            1'
      '          )'
      '        )'
      '      ) as REAL_IV_1_IS_INCOMPLETE,'
      ''
      '      Sum('
      '        ( sd.QUANTITY -'
      '          (  -- returned quantity'
      '            select'
      '              Coalesce(Sum(sd2.QUANTITY), 0)'
      '            from'
      '              STORE_DEALS sd2'
      '            where'
      
        '              (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEA' +
        'L_OBJECT_BRANCH_CODE) and'
      
        '              (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJEC' +
        'T_CODE) and'
      '              (sd2.BND_PROCESS_CODE = 50) and'
      '              (sd2.IN_OUT = 1) and'
      '              (sd2.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '        ) *'
      
        '        %PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[sd.PRODUCT_CODE ~ s' +
        'd.STORE_DEAL_DATE] /'
      '        cr.FIXING'
      '      ) as REAL_INVESTED_VALUE_2,'
      ''
      '      Sign('
      '        Count('
      '          Nvl2('
      '            sd.QUANTITY *'
      
        '            %PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[sd.PRODUCT_CODE' +
        ' ~ sd.STORE_DEAL_DATE] /'
      '            cr.FIXING,'
      '            null,'
      '            1'
      '          )'
      '        )'
      '      ) as REAL_IV_2_IS_INCOMPLETE,'
      ''
      '      Sum('
      '        ( sd.QUANTITY -'
      '          (  -- returned quantity'
      '            select'
      '              Coalesce(Sum(sd2.QUANTITY), 0)'
      '            from'
      '              STORE_DEALS sd2'
      '            where'
      
        '              (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEA' +
        'L_OBJECT_BRANCH_CODE) and'
      
        '              (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJEC' +
        'T_CODE) and'
      '              (sd2.BND_PROCESS_CODE = 50) and'
      '              (sd2.IN_OUT = 1) and'
      '              (sd2.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '        ) *'
      
        '        %PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[sd.PRODUCT_CODE ~ s' +
        'd.STORE_DEAL_DATE] /'
      '        cr.FIXING'
      '      ) as REAL_INVESTED_VALUE_3,'
      ''
      '      Sign('
      '        Count('
      '          Nvl2('
      '            sd.QUANTITY *'
      
        '            %PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[sd.PRODUCT_CODE' +
        ' ~ sd.STORE_DEAL_DATE] /'
      '            cr.FIXING,'
      '            null,'
      '            1'
      '          )'
      '        )'
      '      ) as REAL_IV_3_IS_INCOMPLETE,'
      ''
      '      Sum('
      '        ( sd.QUANTITY -'
      '          (  -- returned quantity'
      '            select'
      '              Coalesce(Sum(sd2.QUANTITY), 0)'
      '            from'
      '              STORE_DEALS sd2'
      '            where'
      
        '              (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEA' +
        'L_OBJECT_BRANCH_CODE) and'
      
        '              (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJEC' +
        'T_CODE) and'
      '              (sd2.BND_PROCESS_CODE = 50) and'
      '              (sd2.IN_OUT = 1) and'
      '              (sd2.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '        ) *'
      
        '        %PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[sd.PRODUCT_CODE ~ s' +
        'd.STORE_DEAL_DATE] /'
      '        cr.FIXING'
      '      ) as REAL_INVESTED_VALUE_4,'
      ''
      '      Sign('
      '        Count('
      '          Nvl2('
      '            sd.QUANTITY *'
      
        '            %PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[sd.PRODUCT_CODE' +
        ' ~ sd.STORE_DEAL_DATE] /'
      '            cr.FIXING,'
      '            null,'
      '            1'
      '          )'
      '        )'
      '      ) as REAL_IV_4_IS_INCOMPLETE,'
      ''
      '      Sum('
      '        ( sd.QUANTITY -'
      '          (  -- returned quantity'
      '            select'
      '              Coalesce(Sum(sd2.QUANTITY), 0)'
      '            from'
      '              STORE_DEALS sd2'
      '            where'
      
        '              (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEA' +
        'L_OBJECT_BRANCH_CODE) and'
      
        '              (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJEC' +
        'T_CODE) and'
      '              (sd2.BND_PROCESS_CODE = 50) and'
      '              (sd2.IN_OUT = 1) and'
      '              (sd2.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '        ) *'
      
        '        %PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[sd.PRODUCT_CODE ~ s' +
        'd.STORE_DEAL_DATE] /'
      '        cr.FIXING'
      '      ) as REAL_INVESTED_VALUE_5,'
      ''
      '      Sign('
      '        Count('
      '          Nvl2('
      '            sd.QUANTITY *'
      
        '            %PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[sd.PRODUCT_CODE' +
        ' ~ sd.STORE_DEAL_DATE] /'
      '            cr.FIXING,'
      '            null,'
      '            1'
      '          )'
      '        )'
      '      ) as REAL_IV_5_IS_INCOMPLETE,'
      ''
      '      To_Number(null) as WASTE_INVESTED_VALUE_1,'
      '      To_Number(null) as WASTE_IV_1_IS_INCOMPLETE,'
      '      To_Number(null) as WASTE_INVESTED_VALUE_2,'
      '      To_Number(null) as WASTE_IV_2_IS_INCOMPLETE,'
      '      To_Number(null) as WASTE_INVESTED_VALUE_3,'
      '      To_Number(null) as WASTE_IV_3_IS_INCOMPLETE,'
      '      To_Number(null) as WASTE_INVESTED_VALUE_4,'
      '      To_Number(null) as WASTE_IV_4_IS_INCOMPLETE,'
      '      To_Number(null) as WASTE_INVESTED_VALUE_5,'
      '      To_Number(null) as WASTE_IV_5_IS_INCOMPLETE'
      ''
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      STORE_DEALS sd,'
      '      CURRENCY_RATES sdcr,'
      '      CURRENCY_RATES cr'
      ''
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      '      (mll.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (sd.IN_OUT = -1) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '      (sdcr.CURRENCY_CODE(+) = sd.CURRENCY_CODE) and'
      '      (sdcr.RATE_DATE(+) = sd.STORE_DEAL_DATE) and'
      ''
      '      (cr.CURRENCY_CODE(+) = :CURRENCY_CODE) and'
      '      (cr.RATE_DATE(+) = sd.STORE_DEAL_DATE)'
      '    group by'
      '      mll.MLL_OBJECT_BRANCH_CODE,'
      '      mll.MLL_OBJECT_CODE'
      ''
      ''
      '    union all'
      ''
      ''
      '    select'
      '--      mm.MM_BRANCH_CODE,'
      '--      mm.MM_CODE,'
      '      mll.MLL_OBJECT_BRANCH_CODE,'
      '      mll.MLL_OBJECT_CODE,'
      ''
      '      To_Number(null) as PLAN_INVESTED_VALUE_1,'
      '      To_Number(null) as PLAN_IV_1_IS_INCOMPLETE,'
      '      To_Number(null) as PLAN_INVESTED_VALUE_2,'
      '      To_Number(null) as PLAN_IV_2_IS_INCOMPLETE,'
      '      To_Number(null) as PLAN_INVESTED_VALUE_3,'
      '      To_Number(null) as PLAN_IV_3_IS_INCOMPLETE,'
      '      To_Number(null) as PLAN_INVESTED_VALUE_4,'
      '      To_Number(null) as PLAN_IV_4_IS_INCOMPLETE,'
      '      To_Number(null) as PLAN_INVESTED_VALUE_5,'
      '      To_Number(null) as PLAN_IV_5_IS_INCOMPLETE,'
      ''
      '      To_Number(null) as REAL_INVESTED_VALUE_1,'
      '      To_Number(null) as REAL_IV_1_IS_INCOMPLETE,'
      '      To_Number(null) as REAL_INVESTED_VALUE_2,'
      '      To_Number(null) as REAL_IV_2_IS_INCOMPLETE,'
      '      To_Number(null) as REAL_INVESTED_VALUE_3,'
      '      To_Number(null) as REAL_IV_3_IS_INCOMPLETE,'
      '      To_Number(null) as REAL_INVESTED_VALUE_4,'
      '      To_Number(null) as REAL_IV_4_IS_INCOMPLETE,'
      '      To_Number(null) as REAL_INVESTED_VALUE_5,'
      '      To_Number(null) as REAL_IV_5_IS_INCOMPLETE,'
      ''
      '      ('
      '        ( -- waste quantity part'
      '          mm.DETAIL_TECH_QUANTITY /'
      '          mll.LINE_DETAIL_TECH_QUANTITY'
      '        ) *'
      '        fork0.TOTAL_DETAIL_TECH_QUANTITY *'
      '        ( -- out single price'
      '          Sum('
      '            ( sd.TOTAL_PRICE *'
      '              sdcr.FIXING /'
      '              cr.FIXING'
      '            ) -'
      '            (  -- returned price'
      '              select'
      
        '                Coalesce(Sum(sd2.TOTAL_PRICE * crx.FIXING / crx2' +
        '.FIXING), 0)'
      '              from'
      '                STORE_DEALS sd2,'
      '                CURRENCY_RATES crx,'
      '                CURRENCY_RATES crx2'
      '              where'
      
        '                (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_D' +
        'EAL_OBJECT_BRANCH_CODE) and'
      
        '                (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJ' +
        'ECT_CODE) and'
      '                (sd2.BND_PROCESS_CODE = 50) and'
      '                (sd2.IN_OUT = 1) and'
      '                (sd2.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '                (crx.CURRENCY_CODE(+) = sd2.CURRENCY_CODE) and'
      '                (crx.RATE_DATE(+) = sd2.STORE_DEAL_DATE) and'
      ''
      '                (crx2.CURRENCY_CODE(+) = :CURRENCY_CODE) and'
      '                (crx2.RATE_DATE(+) = sd2.STORE_DEAL_DATE)'
      '            )'
      '          ) /'
      '          Sum('
      '            ( ( sd.QUANTITY -'
      '                (  -- returned quantity'
      '                  select'
      '                    Coalesce(Sum(sd2.QUANTITY), 0)'
      '                  from'
      '                    STORE_DEALS sd2'
      '                  where'
      
        '                    (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STO' +
        'RE_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                    (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL' +
        '_OBJECT_CODE) and'
      '                    (sd2.BND_PROCESS_CODE = 50) and'
      '                    (sd2.IN_OUT = 1) and'
      '                    (sd2.STORNO_EMPLOYEE_CODE is null)'
      '                )'
      '              ) *'
      '              p2.TECH_MEASURE_COEF /'
      '              mll2.PRODUCT_TECH_QUANTITY )'
      '          )'
      '        )'
      '      ) as WASTE_INVESTED_VALUE_1,'
      ''
      '      Nvl2('
      '        ( -- waste quantity part'
      '          mm.DETAIL_TECH_QUANTITY /'
      '          mll.LINE_DETAIL_TECH_QUANTITY'
      '        ) *'
      '        fork0.TOTAL_DETAIL_TECH_QUANTITY *'
      '        ( -- out single price'
      '          Decode(Count(*),'
      '            0, 0,'
      '            Decode('
      '              Min('
      '                Nvl2('
      '                  ( sd.TOTAL_PRICE *'
      '                    sdcr.FIXING /'
      '                    cr.FIXING'
      '                  ) -'
      '                  (  -- returned price'
      '                    select'
      '                      Decode(Count(*),'
      '                        0, 0,'
      
        '                        Decode(Min(Nvl2(sd2.TOTAL_PRICE * crx.FI' +
        'XING / crx2.FIXING, 1, 0)), 0, null, 0)'
      '                      )'
      '                    from'
      '                      STORE_DEALS sd2,'
      '                      CURRENCY_RATES crx,'
      '                      CURRENCY_RATES crx2'
      '                    where'
      
        '                      (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.S' +
        'TORE_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                      (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DE' +
        'AL_OBJECT_CODE) and'
      '                      (sd2.BND_PROCESS_CODE = 50) and'
      '                      (sd2.IN_OUT = 1) and'
      '                      (sd2.STORNO_EMPLOYEE_CODE is null) and'
      '                  '
      
        '                      (crx.CURRENCY_CODE(+) = sd2.CURRENCY_CODE)' +
        ' and'
      
        '                      (crx.RATE_DATE(+) = sd2.STORE_DEAL_DATE) a' +
        'nd'
      '                  '
      
        '                      (crx2.CURRENCY_CODE(+) = :CURRENCY_CODE) a' +
        'nd'
      '                      (crx2.RATE_DATE(+) = sd2.STORE_DEAL_DATE)'
      '                  ),'
      '                  1,'
      '                  0'
      '                )'
      '              ),'
      '              0,'
      '              null,'
      '              0'
      '            ) / '
      '            Decode('
      '              Min('
      '                Nvl2('
      '                  ( sd.QUANTITY -'
      '                    (  -- returned quantity'
      '                      select'
      '                        Coalesce(Sum(sd2.QUANTITY), 0)'
      '                      from'
      '                        STORE_DEALS sd2'
      '                      where'
      
        '                        (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd' +
        '.STORE_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                        (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_' +
        'DEAL_OBJECT_CODE) and'
      '                        (sd2.BND_PROCESS_CODE = 50) and'
      '                        (sd2.IN_OUT = 1) and'
      '                        (sd2.STORNO_EMPLOYEE_CODE is null)'
      '                    )'
      '                  ) *'
      '                  p2.TECH_MEASURE_COEF /'
      '                  mll2.PRODUCT_TECH_QUANTITY,'
      '                  1,'
      '                  0'
      '                )'
      '              ),'
      '              0,'
      '              null,'
      '              1'
      '            )'
      '          )'
      '        ),'
      '        null,'
      '        1'
      '      ) as WASTE_IV_1_IS_INCOMPLETE,'
      ''
      '      ('
      '        ( -- waste quantity part'
      '          mm.DETAIL_TECH_QUANTITY /'
      '          mll.LINE_DETAIL_TECH_QUANTITY'
      '        ) *'
      '        fork0.TOTAL_DETAIL_TECH_QUANTITY *'
      '        ( -- out single price'
      '          Sum('
      '            ( sd.QUANTITY -'
      '              (  -- returned quantity'
      '                select'
      '                  Coalesce(Sum(sd2.QUANTITY), 0)'
      '                from'
      '                  STORE_DEALS sd2'
      '                where'
      
        '                  (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE' +
        '_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                  (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_O' +
        'BJECT_CODE) and'
      '                  (sd2.BND_PROCESS_CODE = 50) and'
      '                  (sd2.IN_OUT = 1) and'
      '                  (sd2.STORNO_EMPLOYEE_CODE is null)'
      '              )'
      '            ) *'
      
        '            %PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[sd.PRODUCT_CODE' +
        ' ~ sd.STORE_DEAL_DATE] /'
      '            cr.FIXING'
      '          ) /'
      '          Sum('
      '            ( sd.QUANTITY -'
      '              (  -- returned quantity'
      '                select'
      '                  Coalesce(Sum(sd2.QUANTITY), 0)'
      '                from'
      '                  STORE_DEALS sd2'
      '                where'
      
        '                  (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE' +
        '_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                  (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_O' +
        'BJECT_CODE) and'
      '                  (sd2.BND_PROCESS_CODE = 50) and'
      '                  (sd2.IN_OUT = 1) and'
      '                  (sd2.STORNO_EMPLOYEE_CODE is null)'
      '              )'
      '            ) *'
      '            p2.TECH_MEASURE_COEF /'
      '            mll2.PRODUCT_TECH_QUANTITY'
      '          )'
      '        )'
      '      ) as WASTE_INVESTED_VALUE_2,'
      ''
      '      Nvl2('
      '        ( -- waste quantity part'
      '          mm.DETAIL_TECH_QUANTITY /'
      '          mll.LINE_DETAIL_TECH_QUANTITY'
      '        ) *'
      '        fork0.TOTAL_DETAIL_TECH_QUANTITY *'
      '        ( -- out single price'
      '          Decode(Count(*),'
      '            0, 0,'
      '            Decode('
      '              Min('
      '                Nvl2('
      '                  ( sd.QUANTITY -'
      '                    (  -- returned quantity'
      '                      select'
      '                        Coalesce(Sum(sd2.QUANTITY), 0)'
      '                      from'
      '                        STORE_DEALS sd2'
      '                      where'
      
        '                        (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd' +
        '.STORE_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                        (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_' +
        'DEAL_OBJECT_CODE) and'
      '                        (sd2.BND_PROCESS_CODE = 50) and'
      '                        (sd2.IN_OUT = 1) and'
      '                        (sd2.STORNO_EMPLOYEE_CODE is null)'
      '                    )'
      '                  ) * '
      
        '                  %PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[sd.PRODUC' +
        'T_CODE ~ sd.STORE_DEAL_DATE] /'
      '                  cr.FIXING,'
      '                  1,'
      '                  0'
      '                )'
      '              ),'
      '              0,'
      '              null,'
      '              0'
      '            ) / '
      '            Decode('
      '              Min('
      '                Nvl2('
      '                  ( sd.QUANTITY -'
      '                    (  -- returned quantity'
      '                      select'
      '                        Coalesce(Sum(sd2.QUANTITY), 0)'
      '                      from'
      '                        STORE_DEALS sd2'
      '                      where'
      
        '                        (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd' +
        '.STORE_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                        (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_' +
        'DEAL_OBJECT_CODE) and'
      '                        (sd2.BND_PROCESS_CODE = 50) and'
      '                        (sd2.IN_OUT = 1) and'
      '                        (sd2.STORNO_EMPLOYEE_CODE is null)'
      '                    )'
      '                  ) *'
      '                  p2.TECH_MEASURE_COEF /'
      '                  mll2.PRODUCT_TECH_QUANTITY,'
      '                  1,'
      '                  0'
      '                )'
      '              ),'
      '              0,'
      '              null,'
      '              1'
      '            )'
      '          )'
      '        ),'
      '        null,'
      '        1'
      '      ) as WASTE_IV_2_IS_INCOMPLETE,'
      ''
      '      ('
      '        ( -- waste quantity part'
      '          mm.DETAIL_TECH_QUANTITY /'
      '          mll.LINE_DETAIL_TECH_QUANTITY'
      '        ) *'
      '        fork0.TOTAL_DETAIL_TECH_QUANTITY *'
      '        ( -- out single price'
      '          Sum('
      '            ( sd.QUANTITY -'
      '              (  -- returned quantity'
      '                select'
      '                  Coalesce(Sum(sd2.QUANTITY), 0)'
      '                from'
      '                  STORE_DEALS sd2'
      '                where'
      
        '                  (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE' +
        '_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                  (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_O' +
        'BJECT_CODE) and'
      '                  (sd2.BND_PROCESS_CODE = 50) and'
      '                  (sd2.IN_OUT = 1) and'
      '                  (sd2.STORNO_EMPLOYEE_CODE is null)'
      '              )'
      '            ) *'
      
        '            %PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[sd.PRODUCT_CODE' +
        ' ~ sd.STORE_DEAL_DATE] /'
      '            cr.FIXING'
      '          ) /'
      '          Sum('
      '            ( sd.QUANTITY -'
      '              (  -- returned quantity'
      '                select'
      '                  Coalesce(Sum(sd2.QUANTITY), 0)'
      '                from'
      '                  STORE_DEALS sd2'
      '                where'
      
        '                  (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE' +
        '_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                  (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_O' +
        'BJECT_CODE) and'
      '                  (sd2.BND_PROCESS_CODE = 50) and'
      '                  (sd2.IN_OUT = 1) and'
      '                  (sd2.STORNO_EMPLOYEE_CODE is null)'
      '              )'
      '            ) *'
      '            p2.TECH_MEASURE_COEF /'
      '            mll2.PRODUCT_TECH_QUANTITY'
      '          )'
      '        )'
      '      ) as WASTE_INVESTED_VALUE_3,'
      ''
      '      Nvl2('
      '        ( -- waste quantity part'
      '          mm.DETAIL_TECH_QUANTITY /'
      '          mll.LINE_DETAIL_TECH_QUANTITY'
      '        ) *'
      '        fork0.TOTAL_DETAIL_TECH_QUANTITY *'
      '        ( -- out single price'
      '          Decode(Count(*),'
      '            0, 0,'
      '            Decode('
      '              Min('
      '                Nvl2('
      '                  ( sd.QUANTITY -'
      '                    (  -- returned quantity'
      '                      select'
      '                        Coalesce(Sum(sd2.QUANTITY), 0)'
      '                      from'
      '                        STORE_DEALS sd2'
      '                      where'
      
        '                        (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd' +
        '.STORE_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                        (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_' +
        'DEAL_OBJECT_CODE) and'
      '                        (sd2.BND_PROCESS_CODE = 50) and'
      '                        (sd2.IN_OUT = 1) and'
      '                        (sd2.STORNO_EMPLOYEE_CODE is null)'
      '                    )'
      '                  ) * '
      
        '                  %PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[sd.PRODUC' +
        'T_CODE ~ sd.STORE_DEAL_DATE] /'
      '                  cr.FIXING,'
      '                  1,'
      '                  0'
      '                )'
      '              ),'
      '              0,'
      '              null,'
      '              0'
      '            ) /'
      '            Decode('
      '              Min('
      '                Nvl2('
      '                  ( sd.QUANTITY -'
      '                    (  -- returned quantity'
      '                      select'
      '                        Coalesce(Sum(sd2.QUANTITY), 0)'
      '                      from'
      '                        STORE_DEALS sd2'
      '                      where'
      
        '                        (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd' +
        '.STORE_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                        (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_' +
        'DEAL_OBJECT_CODE) and'
      '                        (sd2.BND_PROCESS_CODE = 50) and'
      '                        (sd2.IN_OUT = 1) and'
      '                        (sd2.STORNO_EMPLOYEE_CODE is null)'
      '                    )'
      '                  ) *'
      '                  p2.TECH_MEASURE_COEF /'
      '                  mll2.PRODUCT_TECH_QUANTITY,'
      '                  1,'
      '                  0'
      '                )'
      '              ),'
      '              0,'
      '              null,'
      '              1'
      '            )'
      '          )'
      '        ),'
      '        null,'
      '        1'
      '      ) as WASTE_IV_3_IS_INCOMPLETE,'
      ''
      '      ('
      '        ( -- waste quantity part'
      '          mm.DETAIL_TECH_QUANTITY /'
      '          mll.LINE_DETAIL_TECH_QUANTITY'
      '        ) *'
      '        fork0.TOTAL_DETAIL_TECH_QUANTITY *'
      '        ( -- out single price'
      '          Sum('
      '            ( sd.QUANTITY -'
      '              (  -- returned quantity'
      '                select'
      '                  Coalesce(Sum(sd2.QUANTITY), 0)'
      '                from'
      '                  STORE_DEALS sd2'
      '                where'
      
        '                  (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE' +
        '_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                  (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_O' +
        'BJECT_CODE) and'
      '                  (sd2.BND_PROCESS_CODE = 50) and'
      '                  (sd2.IN_OUT = 1) and'
      '                  (sd2.STORNO_EMPLOYEE_CODE is null)'
      '              )'
      '            ) *'
      
        '            %PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[sd.PRODUCT_CODE' +
        ' ~ sd.STORE_DEAL_DATE] /'
      '            cr.FIXING'
      '          ) /'
      '          Sum('
      '            ( sd.QUANTITY -'
      '              (  -- returned quantity'
      '                select'
      '                  Coalesce(Sum(sd2.QUANTITY), 0)'
      '                from'
      '                  STORE_DEALS sd2'
      '                where'
      
        '                  (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE' +
        '_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                  (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_O' +
        'BJECT_CODE) and'
      '                  (sd2.BND_PROCESS_CODE = 50) and'
      '                  (sd2.IN_OUT = 1) and'
      '                  (sd2.STORNO_EMPLOYEE_CODE is null)'
      '              )'
      '            ) *'
      '            p2.TECH_MEASURE_COEF /'
      '            mll2.PRODUCT_TECH_QUANTITY'
      '          )'
      '        )'
      '      ) as WASTE_INVESTED_VALUE_4,'
      ''
      '      Nvl2('
      '        ( -- waste quantity part'
      '          mm.DETAIL_TECH_QUANTITY /'
      '          mll.LINE_DETAIL_TECH_QUANTITY'
      '        ) *'
      '        fork0.TOTAL_DETAIL_TECH_QUANTITY *'
      '        ( -- out single price'
      '          Decode(Count(*),'
      '            0, 0,'
      '            Decode('
      '              Min('
      '                Nvl2('
      '                  ( sd.QUANTITY -'
      '                    (  -- returned quantity'
      '                      select'
      '                        Coalesce(Sum(sd2.QUANTITY), 0)'
      '                      from'
      '                        STORE_DEALS sd2'
      '                      where'
      
        '                        (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd' +
        '.STORE_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                        (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_' +
        'DEAL_OBJECT_CODE) and'
      '                        (sd2.BND_PROCESS_CODE = 50) and'
      '                        (sd2.IN_OUT = 1) and'
      '                        (sd2.STORNO_EMPLOYEE_CODE is null)'
      '                    )'
      '                  ) * '
      
        '                  %PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[sd.PRODUC' +
        'T_CODE ~ sd.STORE_DEAL_DATE] /'
      '                  cr.FIXING,'
      '                  1,'
      '                  0'
      '                )'
      '              ),'
      '              0,'
      '              null,'
      '              0'
      '            ) /'
      '            Decode('
      '              Min('
      '                Nvl2('
      '                  ( sd.QUANTITY -'
      '                    (  -- returned quantity'
      '                      select'
      '                        Coalesce(Sum(sd2.QUANTITY), 0)'
      '                      from'
      '                        STORE_DEALS sd2'
      '                      where'
      
        '                        (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd' +
        '.STORE_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                        (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_' +
        'DEAL_OBJECT_CODE) and'
      '                        (sd2.BND_PROCESS_CODE = 50) and'
      '                        (sd2.IN_OUT = 1) and'
      '                        (sd2.STORNO_EMPLOYEE_CODE is null)'
      '                    )'
      '                  ) *'
      '                  p2.TECH_MEASURE_COEF /'
      '                  mll2.PRODUCT_TECH_QUANTITY,'
      '                  1,'
      '                  0'
      '                )'
      '              ),'
      '              0,'
      '              null,'
      '              1'
      '            )'
      '          )'
      '        ),'
      '        null,'
      '        1'
      '      ) as WASTE_IV_4_IS_INCOMPLETE,'
      ''
      '      ('
      '        ( -- waste quantity part'
      '          mm.DETAIL_TECH_QUANTITY /'
      '          mll.LINE_DETAIL_TECH_QUANTITY'
      '        ) *'
      '        fork0.TOTAL_DETAIL_TECH_QUANTITY *'
      '        ( -- out single price'
      '          Sum('
      '            ( sd.QUANTITY -'
      '              (  -- returned quantity'
      '                select'
      '                  Coalesce(Sum(sd2.QUANTITY), 0)'
      '                from'
      '                  STORE_DEALS sd2'
      '                where'
      
        '                  (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE' +
        '_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                  (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_O' +
        'BJECT_CODE) and'
      '                  (sd2.BND_PROCESS_CODE = 50) and'
      '                  (sd2.IN_OUT = 1) and'
      '                  (sd2.STORNO_EMPLOYEE_CODE is null)'
      '              )'
      '            ) *'
      
        '            %PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[sd.PRODUCT_CODE' +
        ' ~ sd.STORE_DEAL_DATE] /'
      '            cr.FIXING'
      '          ) /'
      '          Sum('
      '            ( sd.QUANTITY -'
      '              (  -- returned quantity'
      '                select'
      '                  Coalesce(Sum(sd2.QUANTITY), 0)'
      '                from'
      '                  STORE_DEALS sd2'
      '                where'
      
        '                  (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE' +
        '_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                  (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_O' +
        'BJECT_CODE) and'
      '                  (sd2.BND_PROCESS_CODE = 50) and'
      '                  (sd2.IN_OUT = 1) and'
      '                  (sd2.STORNO_EMPLOYEE_CODE is null)'
      '              )'
      '            ) *'
      '            p2.TECH_MEASURE_COEF /'
      '            mll2.PRODUCT_TECH_QUANTITY'
      '          )'
      '        )'
      '      ) as WASTE_INVESTED_VALUE_5,'
      ''
      '      Nvl2('
      '        ( -- waste quantity part'
      '          mm.DETAIL_TECH_QUANTITY /'
      '          mll.LINE_DETAIL_TECH_QUANTITY'
      '        ) *'
      '        fork0.TOTAL_DETAIL_TECH_QUANTITY *'
      '        ( -- out single price'
      '          Decode(Count(*),'
      '            0, 0,'
      '            Decode('
      '              Min('
      '                Nvl2('
      '                  ( sd.QUANTITY -'
      '                    (  -- returned quantity'
      '                      select'
      '                        Coalesce(Sum(sd2.QUANTITY), 0)'
      '                      from'
      '                        STORE_DEALS sd2'
      '                      where'
      
        '                        (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd' +
        '.STORE_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                        (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_' +
        'DEAL_OBJECT_CODE) and'
      '                        (sd2.BND_PROCESS_CODE = 50) and'
      '                        (sd2.IN_OUT = 1) and'
      '                        (sd2.STORNO_EMPLOYEE_CODE is null)'
      '                    )'
      '                  ) *'
      
        '                  %PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[sd.PRODUC' +
        'T_CODE ~ sd.STORE_DEAL_DATE] /'
      '                  cr.FIXING,'
      '                  1,'
      '                  0'
      '                )'
      '              ),'
      '              0,'
      '              null,'
      '              0'
      '            ) /'
      '            Decode('
      '              Min('
      '                Nvl2('
      '                  ( sd.QUANTITY -'
      '                    (  -- returned quantity'
      '                      select'
      '                        Coalesce(Sum(sd2.QUANTITY), 0)'
      '                      from'
      '                        STORE_DEALS sd2'
      '                      where'
      
        '                        (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd' +
        '.STORE_DEAL_OBJECT_BRANCH_CODE) and'
      
        '                        (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_' +
        'DEAL_OBJECT_CODE) and'
      '                        (sd2.BND_PROCESS_CODE = 50) and'
      '                        (sd2.IN_OUT = 1) and'
      '                        (sd2.STORNO_EMPLOYEE_CODE is null)'
      '                    )'
      '                  ) *'
      '                  p2.TECH_MEASURE_COEF /'
      '                  mll2.PRODUCT_TECH_QUANTITY,'
      '                  1,'
      '                  0'
      '                )'
      '              ),'
      '              0,'
      '              null,'
      '              1'
      '            )'
      '          )'
      '        ),'
      '        null,'
      '        1'
      '      ) as WASTE_IV_5_IS_INCOMPLETE'
      ''
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms,'
      '      MODEL_MOVEMENTS mm,'
      '      MATERIAL_LIST_LINES mll2,'
      '      MATERIAL_LIST_LINES fork0,'
      '      PRODUCTS p2,'
      '      STORE_DEALS sd,'
      '      CURRENCY_RATES sdcr,'
      '      CURRENCY_RATES cr'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      '      (mll.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '      (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '      (mm.TO_DEPT_CODE is not null) and'
      '      (mm.STORNO_EMPLOYEE_CODE is null) and'
      ''
      
        '      (mll2.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (mll2.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      
        '      (mll2.NO_AS_FORMATED_TEXT like (Decode(mll.NO_1, 0, '#39#39', ml' +
        'l.NO_AS_FORMATED_TEXT) || '#39'%'#39')) and'
      
        '      ( ( (mll2.NO_AS_FORMATED_TEXT = mll.NO_AS_FORMATED_TEXT) a' +
        'nd'
      '          (mll2.FORK_NO = mll.FORK_NO) ) or'
      
        '        ( (mll2.NO_AS_FORMATED_TEXT <> mll.NO_AS_FORMATED_TEXT) ' +
        'and'
      '          (mll.FORK_NO = 0) )'
      '      ) and'
      '      (mll2.PRODUCT_CODE is not null) and'
      '      (mll2.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '      (fork0.MLL_OBJECT_BRANCH_CODE = Coalesce(mll2.FORK_0_MLL_O' +
        'BJECT_BRANCH_CODE, mll2.MLL_OBJECT_BRANCH_CODE)) and'
      
        '      (fork0.MLL_OBJECT_CODE = Coalesce(mll2.FORK_0_MLL_OBJECT_C' +
        'ODE, mll2.MLL_OBJECT_CODE)) and'
      ''
      '      (p2.PRODUCT_CODE = mll2.PRODUCT_CODE) and'
      ''
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll2.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll2.MLL_OBJECT_CODE) and'
      '      (sd.IN_OUT = -1) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '      (sd.CURRENCY_CODE = sdcr.CURRENCY_CODE(+)) and'
      '      (sd.STORE_DEAL_DATE = sdcr.RATE_DATE(+)) and'
      ''
      '      (:CURRENCY_CODE = cr.CURRENCY_CODE(+)) and'
      '      (sd.STORE_DEAL_DATE = cr.RATE_DATE(+))'
      ''
      '    group by'
      '      mm.MM_BRANCH_CODE,'
      '      mm.MM_CODE,'
      '      mm.DETAIL_TECH_QUANTITY,'
      '      mll.MLL_OBJECT_BRANCH_CODE,'
      '      mll.MLL_OBJECT_CODE,'
      '      mll.LINE_DETAIL_TECH_QUANTITY,'
      '      fork0.MLL_OBJECT_BRANCH_CODE,'
      '      fork0.MLL_OBJECT_CODE,'
      '      fork0.TOTAL_DETAIL_TECH_QUANTITY'
      '  ) x'
      ''
      'group by'
      '  x.MLL_OBJECT_BRANCH_CODE,'
      '  x.MLL_OBJECT_CODE'
      ''
      'order by'
      '  x.MLL_OBJECT_BRANCH_CODE,'
      '  x.MLL_OBJECT_CODE'
      ''
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[psd.PRODUCT_CODE ~ psd.STORE_D' +
          'EAL_BEGIN_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[psd.PRODUCT_CODE ~ psd.STORE' +
          '_DEAL_BEGIN_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[psd.PRODUCT_CODE ~ psd.STORE' +
          '_DEAL_BEGIN_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[psd.PRODUCT_CODE ~ psd.STORE' +
          '_DEAL_BEGIN_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[psd.PRODUCT_CODE ~ psd.STORE' +
          '_DEAL_BEGIN_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_2_VALUE_EX[sd.PRODUCT_CODE ~ sd.STORE_D' +
          'EAL_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_3_VALUE_EX[sd.PRODUCT_CODE ~ sd.STORE_D' +
          'EAL_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_4_VALUE_EX[sd.PRODUCT_CODE ~ sd.STORE_D' +
          'EAL_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_INVESTMENT_LEVEL_5_VALUE_EX[sd.PRODUCT_CODE ~ sd.STORE_D' +
          'EAL_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 640
    Top = 152
    object qryMllInvestedValuesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryMllInvestedValuesMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object qryMllInvestedValuesPLAN_INVESTED_VALUE_1: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_1'
    end
    object qryMllInvestedValuesPLAN_IV_1_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_1_IS_INCOMPLETE'
    end
    object qryMllInvestedValuesPLAN_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_2'
    end
    object qryMllInvestedValuesPLAN_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_2_IS_INCOMPLETE'
    end
    object qryMllInvestedValuesPLAN_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_3'
    end
    object qryMllInvestedValuesPLAN_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_3_IS_INCOMPLETE'
    end
    object qryMllInvestedValuesPLAN_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_4'
    end
    object qryMllInvestedValuesPLAN_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_4_IS_INCOMPLETE'
    end
    object qryMllInvestedValuesPLAN_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_5'
    end
    object qryMllInvestedValuesPLAN_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_5_IS_INCOMPLETE'
    end
    object qryMllInvestedValuesREAL_INVESTED_VALUE_1: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_1'
    end
    object qryMllInvestedValuesREAL_IV_1_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_1_IS_INCOMPLETE'
    end
    object qryMllInvestedValuesREAL_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_2'
    end
    object qryMllInvestedValuesREAL_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_2_IS_INCOMPLETE'
    end
    object qryMllInvestedValuesREAL_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_3'
    end
    object qryMllInvestedValuesREAL_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_3_IS_INCOMPLETE'
    end
    object qryMllInvestedValuesREAL_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_4'
    end
    object qryMllInvestedValuesREAL_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_4_IS_INCOMPLETE'
    end
    object qryMllInvestedValuesREAL_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_5'
    end
    object qryMllInvestedValuesREAL_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_5_IS_INCOMPLETE'
    end
    object qryMllInvestedValuesWASTE_INVESTED_VALUE_1: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_1'
    end
    object qryMllInvestedValuesWASTE_IV_1_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_1_IS_INCOMPLETE'
    end
    object qryMllInvestedValuesWASTE_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_2'
    end
    object qryMllInvestedValuesWASTE_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_2_IS_INCOMPLETE'
    end
    object qryMllInvestedValuesWASTE_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_3'
    end
    object qryMllInvestedValuesWASTE_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_3_IS_INCOMPLETE'
    end
    object qryMllInvestedValuesWASTE_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_4'
    end
    object qryMllInvestedValuesWASTE_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_4_IS_INCOMPLETE'
    end
    object qryMllInvestedValuesWASTE_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_5'
    end
    object qryMllInvestedValuesWASTE_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_5_IS_INCOMPLETE'
    end
  end
  object qryMlmsInvestedValues: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mlms.MLMS_OBJECT_BRANCH_CODE,'
      '  mlms.MLMS_OBJECT_CODE,'
      ''
      '  Sum('
      '    ( Nvl2(mlmso.SETUP_PROFESSION_CODE,'
      '        Coalesce(  -- nastroika'
      '          (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *'
      '          mlmso.SETUP_EFFORT_COEF *'
      '          ( select'
      '              pper.HOUR_PRICE'
      '            from'
      '              PROFESSION_PERIODS pper'
      '            where'
      
        '              (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_COD' +
        'E) and'
      
        '              (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) be' +
        'tween pper.BEGIN_DATE and pper.END_DATE)'
      '          ),'
      '          0'
      '        ),'
      '        0'
      '      ) +'
      '      Coalesce(  -- rabota'
      
        '        (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QU' +
        'ANTITY) *'
      '        mlmso.EFFORT_COEF *'
      '        ( select'
      '            pper.HOUR_PRICE'
      '          from'
      '            PROFESSION_PERIODS pper'
      '          where'
      '            (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and'
      
        '            (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betw' +
        'een pper.BEGIN_DATE and pper.END_DATE)'
      '        ),'
      '        0'
      '      )'
      '    ) *'
      '    Coalesce('
      '      ( select'
      '          em.LABOUR_COST_COEF'
      '        from'
      '          EARNING_MODIFIERS em'
      '        where'
      
        '          (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betwee' +
        'n em.BEGIN_DATE and em.END_DATE)'
      '      ),'
      '      1'
      '    ) /'
      '    ( select'
      '        cr.FIXING'
      '      from'
      '        CURRENCY_RATES cr'
      '      where'
      '        (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '        (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Contex' +
        'tDate))'
      '    )'
      '  ) as PLAN_INVESTED_VALUE_2,'
      ''
      '  Sign('
      '    Count('
      '      Nvl2('
      '        ( Nvl2(mlmso.SETUP_PROFESSION_CODE,'
      '            (  -- nastroika'
      
        '              (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTIT' +
        'Y) *'
      '              mlmso.SETUP_EFFORT_COEF *'
      '              ( select'
      '                  pper.HOUR_PRICE'
      '                from'
      '                  PROFESSION_PERIODS pper'
      '                where'
      
        '                  (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION' +
        '_CODE) and'
      
        '                  (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate' +
        ') between pper.BEGIN_DATE and pper.END_DATE)'
      '              )'
      '            ),'
      '            0'
      '          ) +'
      '          (  -- rabota'
      
        '            (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TEC' +
        'H_QUANTITY) *'
      '            mlmso.EFFORT_COEF *'
      '            ( select'
      '                pper.HOUR_PRICE'
      '              from'
      '                PROFESSION_PERIODS pper'
      '              where'
      
        '                (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) a' +
        'nd'
      
        '                (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) ' +
        'between pper.BEGIN_DATE and pper.END_DATE)'
      '            )'
      '          )'
      '        ) *'
      '        ( select'
      '            em.LABOUR_COST_COEF'
      '          from'
      '            EARNING_MODIFIERS em'
      '          where'
      
        '            (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betw' +
        'een em.BEGIN_DATE and em.END_DATE)'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '            (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Co' +
        'ntextDate))'
      '        ),'
      '        null,'
      '        1'
      '      )'
      '    )'
      '  ) as PLAN_IV_2_IS_INCOMPLETE,'
      ''
      '  Sum('
      '    Nvl2(mlmso.SETUP_DATE,'
      '      Coalesce(  -- nastroika'
      
        '        (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY' +
        ') *'
      '        mlmso.SETUP_EFFORT_COEF *'
      '        ( select'
      '            pper.HOUR_PRICE'
      '          from'
      '            PROFESSION_PERIODS pper'
      '          where'
      
        '            (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE)' +
        ' and'
      
        '            (mlmso.SETUP_DATE between pper.BEGIN_DATE and pper.E' +
        'ND_DATE)'
      '        ) *'
      '        Coalesce('
      '          ( select'
      '              Max(em.LABOUR_COST_COEF)'
      '            from'
      '              EARNING_MODIFIERS em'
      '            where'
      
        '              (mlmso.SETUP_DATE between em.BEGIN_DATE and em.END' +
        '_DATE)'
      '          ),'
      '          1'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '            (cr.RATE_DATE = mlmso.SETUP_DATE)'
      '        ),'
      '        0'
      '      ),'
      '      0'
      '    ) +'
      ''
      '    Coalesce(  -- preminavania'
      '      ( select'
      '          Sum('
      
        '            (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUAN' +
        'TITY) *'
      '            mlmso.EFFORT_COEF *'
      '            ( select'
      '                pper.HOUR_PRICE'
      '              from'
      '                PROFESSION_PERIODS pper'
      '              where'
      
        '                (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) a' +
        'nd'
      
        '                (om.OM_DATE between pper.BEGIN_DATE and pper.END' +
        '_DATE)'
      '            ) *'
      '            Coalesce('
      '              ( select'
      '                  Max(em.LABOUR_COST_COEF)'
      '                from'
      '                  EARNING_MODIFIERS em'
      '                where'
      
        '                  (om.OM_DATE between em.BEGIN_DATE and em.END_D' +
        'ATE)'
      '              ),'
      '              1'
      '            ) /'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCY_RATES cr'
      '              where'
      '                (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '                (cr.RATE_DATE = om.OM_DATE)'
      '            )'
      '          )'
      '        from'
      '          OPERATION_MOVEMENTS om'
      '        where'
      
        '          (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) ' +
        'and'
      '          (om.STORNO_EMPLOYEE_CODE is null)'
      '      ),'
      '      0'
      '    )'
      '  ) as REAL_INVESTED_VALUE_2,'
      ''
      '  Sign('
      '    Count('
      '      Nvl2('
      '        Nvl2(mlmso.SETUP_DATE,'
      '          (  -- nastroika'
      
        '            (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUAN' +
        'TITY) *'
      '            mlmso.SETUP_EFFORT_COEF *'
      '            ( select'
      '                pper.HOUR_PRICE'
      '              from'
      '                PROFESSION_PERIODS pper'
      '              where'
      
        '                (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_C' +
        'ODE) and'
      
        '                (mlmso.SETUP_DATE between pper.BEGIN_DATE and pp' +
        'er.END_DATE)'
      '            ) *'
      '            ( select'
      '                Max(em.LABOUR_COST_COEF)'
      '              from'
      '                EARNING_MODIFIERS em'
      '              where'
      
        '                (mlmso.SETUP_DATE between em.BEGIN_DATE and em.E' +
        'ND_DATE)'
      '            ) /'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCY_RATES cr'
      '              where'
      '                (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '                (cr.RATE_DATE = mlmso.SETUP_DATE)'
      '            )'
      '          ),'
      '          0'
      '        ) +'
      '                '
      '        (  -- preminavania'
      '          ( select'
      '              Decode(Count(*),'
      '                0, 0,'
      '                Decode('
      '                  Min('
      '                    Nvl2('
      
        '                      (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR' +
        '_TECH_QUANTITY) *'
      '                      mlmso.EFFORT_COEF *'
      '                      ( select'
      '                          pper.HOUR_PRICE'
      '                        from'
      '                          PROFESSION_PERIODS pper'
      '                        where'
      
        '                          (pper.PROFESSION_CODE = mlmso.PROFESSI' +
        'ON_CODE) and'
      
        '                          (om.OM_DATE between pper.BEGIN_DATE an' +
        'd pper.END_DATE)'
      '                      ) *'
      '                      Coalesce('
      '                        ( select  '
      '                            Max(em.LABOUR_COST_COEF)'
      '                          from'
      '                            EARNING_MODIFIERS em'
      '                          where'
      
        '                            (om.OM_DATE between em.BEGIN_DATE an' +
        'd em.END_DATE)'
      '                        ),'
      '                        1'
      '                      ) /'
      '                      ( select'
      '                          cr.FIXING'
      '                        from'
      '                          CURRENCY_RATES cr'
      '                        where'
      
        '                          (cr.CURRENCY_CODE = :CURRENCY_CODE) an' +
        'd'
      '                          (cr.RATE_DATE = om.OM_DATE)'
      '                      ),'
      '                      1,'
      '                      0'
      '                    ) '
      '                  ),'
      '                  0, null,'
      '                  0'
      '                )'
      '              )'
      '            from'
      '              OPERATION_MOVEMENTS om'
      '            where'
      
        '              (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OB' +
        'JECT_BRANCH_CODE) and'
      
        '              (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CO' +
        'DE) and'
      '              (om.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '        ),'
      '        null,'
      '        1'
      '      )'
      '    )'
      '  ) as REAL_IV_2_IS_INCOMPLETE,'
      ''
      '  Sum('
      '    (  -- preminavania'
      '      select'
      '        Sum('
      
        '          (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTI' +
        'TY) *'
      '          mlmso.EFFORT_COEF *'
      '          ( select'
      '              pper.HOUR_PRICE'
      '            from'
      '              PROFESSION_PERIODS pper'
      '            where'
      '              (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and'
      
        '              (om.OM_DATE between pper.BEGIN_DATE and pper.END_D' +
        'ATE)'
      '          ) *'
      '          Coalesce('
      '            ( select'
      '                Max(em.LABOUR_COST_COEF)'
      '              from'
      '                EARNING_MODIFIERS em'
      '              where'
      
        '                (om.OM_DATE between em.BEGIN_DATE and em.END_DAT' +
        'E)'
      '            ),'
      '            1'
      '          ) /'
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '              (cr.RATE_DATE = om.OM_DATE)'
      '          )'
      '        )'
      ''
      '      from'
      '        OPERATION_MOVEMENTS om'
      '      where'
      
        '        (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_B' +
        'RANCH_CODE) and'
      
        '        (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) an' +
        'd'
      '        (om.TO_DEPT_CODE is not null) and'
      '        (om.STORNO_EMPLOYEE_CODE is null)'
      '    )'
      '  ) as WASTE_INVESTED_VALUE_2,'
      ''
      '  Sign('
      '    Count('
      '      Nvl2('
      '        (  -- preminavania'
      '          select'
      '            Decode(Count(*),'
      '              0, 0,'
      '              Decode('
      '                Min('
      '                  Nvl2('
      
        '                    (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_T' +
        'ECH_QUANTITY) *'
      '                    mlmso.EFFORT_COEF *'
      '                    ( select'
      '                        pper.HOUR_PRICE'
      '                      from'
      '                        PROFESSION_PERIODS pper'
      '                      where'
      
        '                        (pper.PROFESSION_CODE = mlmso.PROFESSION' +
        '_CODE) and'
      
        '                        (om.OM_DATE between pper.BEGIN_DATE and ' +
        'pper.END_DATE)'
      '                    ) *'
      '                    ( select'
      '                        Max(em.LABOUR_COST_COEF)'
      '                      from'
      '                        EARNING_MODIFIERS em'
      '                      where'
      
        '                        (om.OM_DATE between em.BEGIN_DATE and em' +
        '.END_DATE)'
      '                    ) /'
      '                    ( select'
      '                        cr.FIXING'
      '                      from'
      '                        CURRENCY_RATES cr'
      '                      where'
      '                        (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '                        (cr.RATE_DATE = om.OM_DATE)'
      '                    ),'
      '                    1,'
      '                    0'
      '                  )'
      '                ),'
      '                0,'
      '                null,'
      '                0'
      '              )'
      '            )'
      '          '
      '          from'
      '            OPERATION_MOVEMENTS om'
      '          where'
      
        '            (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '            (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE' +
        ') and'
      '            (om.TO_DEPT_CODE is not null) and'
      '            (om.STORNO_EMPLOYEE_CODE is null)          '
      '        ),'
      '        null,'
      '        1'
      '      )'
      '    )'
      '  ) as WASTE_IV_2_IS_INCOMPLETE,'
      ''
      '  Sum('
      '    ( Nvl2(mlmso.SETUP_PROFESSION_CODE,  -- nastroika'
      '        (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY),'
      '        0'
      '      ) +'
      '      (  -- rabota'
      
        '        (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QU' +
        'ANTITY)'
      '      )'
      '    ) *'
      '    ( select'
      '        (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /'
      '        dp.PARALLEL_PROCESS_COUNT'
      '      from'
      '        DEPT_PERIODS dp'
      '      where'
      '        (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '        (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) between ' +
        'dp.BEGIN_DATE and dp.END_DATE)'
      '    ) /'
      '    ( select'
      '        cr.FIXING'
      '      from'
      '        CURRENCY_RATES cr'
      '      where'
      '        (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '        (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Contex' +
        'tDate))'
      '    )'
      '  ) as PLAN_INVESTED_VALUE_3,'
      ''
      '  Sign('
      '    Count('
      '      Nvl2('
      '        ( Nvl2(mlmso.SETUP_PROFESSION_CODE,  -- nastroika'
      
        '            (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY)' +
        ','
      '            0'
      '          ) +'
      '          (  -- rabota'
      
        '            (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TEC' +
        'H_QUANTITY)'
      '          )'
      '        ) *'
      '        ( select'
      '            (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /'
      '            dp.PARALLEL_PROCESS_COUNT'
      '          from'
      '            DEPT_PERIODS dp'
      '          where'
      '            (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '            (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betw' +
        'een dp.BEGIN_DATE and dp.END_DATE)'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '            (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Co' +
        'ntextDate))'
      '        ),'
      '        null,'
      '        1'
      '      )'
      '    )'
      '  ) as PLAN_IV_3_IS_INCOMPLETE,'
      ''
      '  Sum('
      '    Nvl2(mlmso.SETUP_DATE,'
      '      Coalesce(  -- nastroika'
      
        '        (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY' +
        ') *'
      '        ( select'
      '            (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /'
      '            dp.PARALLEL_PROCESS_COUNT'
      '          from'
      '            DEPT_PERIODS dp'
      '          where'
      '            (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '            (mlmso.SETUP_DATE between dp.BEGIN_DATE and dp.END_D' +
        'ATE)'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '            (cr.RATE_DATE = mlmso.SETUP_DATE)'
      '        ),'
      '        0'
      '      ),'
      '      0'
      '    ) +'
      ''
      '    Coalesce(  -- preminavania'
      '      ( select'
      '          Sum('
      
        '            (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUAN' +
        'TITY) *'
      '            ( select'
      '                (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /'
      '                dp.PARALLEL_PROCESS_COUNT'
      '              from'
      '                DEPT_PERIODS dp'
      '              where'
      '                (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '                (om.OM_DATE between dp.BEGIN_DATE and dp.END_DAT' +
        'E)'
      '            ) /'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCY_RATES cr'
      '              where'
      '                (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '                (cr.RATE_DATE = om.OM_DATE)'
      '            )'
      '          )'
      '        from'
      '          OPERATION_MOVEMENTS om'
      '        where'
      
        '          (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) ' +
        'and'
      '          (om.STORNO_EMPLOYEE_CODE is null)'
      '      ),'
      '      0'
      '    )'
      '  ) as REAL_INVESTED_VALUE_3,'
      ''
      '  Sign('
      '    Count('
      '      Nvl2('
      '        Nvl2(mlmso.SETUP_DATE,'
      '          (  -- nastroika'
      
        '            (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUAN' +
        'TITY) *'
      '            ( select'
      '                (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /'
      '                dp.PARALLEL_PROCESS_COUNT'
      '              from'
      '                DEPT_PERIODS dp'
      '              where'
      '                (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '                (mlmso.SETUP_DATE between dp.BEGIN_DATE and dp.E' +
        'ND_DATE)'
      '            ) /'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCY_RATES cr'
      '              where'
      '                (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '                (cr.RATE_DATE = mlmso.SETUP_DATE)'
      '            )'
      '          ),'
      '          0'
      '        ) +'
      '                '
      '        (  -- preminavania'
      '          ( select'
      '              Decode(Count(*),'
      '                0, 0,'
      '                Decode('
      '                  Min('
      '                    Nvl2('
      
        '                      (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR' +
        '_TECH_QUANTITY) *'
      '                      ( select'
      
        '                          (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_' +
        'PRICE) /'
      
        '                          dp.PARALLEL_PROCESS_COUNT             ' +
        '       '
      '                        from'
      '                          DEPT_PERIODS dp'
      '                        where'
      '                          (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '                          (om.OM_DATE between dp.BEGIN_DATE and ' +
        'dp.END_DATE)'
      '                      ) /'
      '                      ( select'
      '                          cr.FIXING'
      '                        from'
      '                          CURRENCY_RATES cr'
      '                        where'
      
        '                          (cr.CURRENCY_CODE = :CURRENCY_CODE) an' +
        'd'
      '                          (cr.RATE_DATE = om.OM_DATE)'
      '                      ),'
      '                      1,'
      '                      0'
      '                    )'
      '                  ),'
      '                  0, null,'
      '                  0'
      '                )'
      '              )'
      '            from'
      '              OPERATION_MOVEMENTS om'
      '            where'
      
        '              (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OB' +
        'JECT_BRANCH_CODE) and'
      
        '              (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CO' +
        'DE) and'
      '              (om.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '        ),'
      '        null,'
      '        1'
      '      )'
      '    )'
      '  ) as REAL_IV_3_IS_INCOMPLETE,'
      ''
      '  Sum('
      '    (  -- preminavania'
      '      select'
      '        Sum('
      
        '          (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTI' +
        'TY) *'
      '          ( select'
      '              (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /'
      '              dp.PARALLEL_PROCESS_COUNT'
      '            from'
      '              DEPT_PERIODS dp'
      '            where'
      '              (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      '              (om.OM_DATE between dp.BEGIN_DATE and dp.END_DATE)'
      '          ) /'
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '              (cr.RATE_DATE = om.OM_DATE)'
      '          )'
      '        )'
      '      from'
      '        OPERATION_MOVEMENTS om'
      '      where'
      
        '        (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_B' +
        'RANCH_CODE) and'
      
        '        (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) an' +
        'd'
      '        (om.TO_DEPT_CODE is not null) and'
      '        (om.STORNO_EMPLOYEE_CODE is null)'
      '    )'
      '  ) as WASTE_INVESTED_VALUE_3,'
      ''
      '  Sign('
      '    Count('
      '      Nvl2('
      '        (  -- preminavania'
      '          select'
      '            Decode(Count(*),'
      '              0, 0,'
      '              Decode('
      '                Min('
      '                  Nvl2('
      
        '                    (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_T' +
        'ECH_QUANTITY) *'
      '                    ( select'
      
        '                        (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PR' +
        'ICE) /'
      
        '                        dp.PARALLEL_PROCESS_COUNT               ' +
        '     '
      '                      from'
      '                        DEPT_PERIODS dp'
      '                      where'
      '                        (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '                        (om.OM_DATE between dp.BEGIN_DATE and dp' +
        '.END_DATE)'
      '                    ) /'
      '                    ( select'
      '                        cr.FIXING'
      '                      from'
      '                        CURRENCY_RATES cr'
      '                      where'
      '                        (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '                        (cr.RATE_DATE = om.OM_DATE)'
      '                    ),'
      '                    1,'
      '                    0'
      '                  )'
      '                ),'
      '                0,'
      '                null,'
      '                0'
      '              )'
      '            )'
      '          from'
      '            OPERATION_MOVEMENTS om'
      '          where'
      
        '            (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '            (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE' +
        ') and'
      '            (om.TO_DEPT_CODE is not null) and'
      '            (om.STORNO_EMPLOYEE_CODE is null)'
      '        ),'
      '        null,'
      '        1'
      '      )'
      '    )'
      '  ) as WASTE_IV_3_IS_INCOMPLETE,'
      ''
      '  ( mll.LINE_DETAIL_TECH_QUANTITY *'
      '    mlms.EXTERNAL_WORK_PRICE /'
      '    ( select'
      '        cr.FIXING'
      '      from'
      '        CURRENCY_RATES cr'
      '      where'
      '        (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '        (cr.RATE_DATE = Least(mlms.TREATMENT_BEGIN_DATE, Context' +
        'Date))'
      '    )'
      '  ) as PLAN_INVESTED_VALUE_4,'
      ''
      '  Nvl2('
      '    mlms.EXTERNAL_WORK_PRICE,'
      '    Nvl2('
      '      mll.LINE_DETAIL_TECH_QUANTITY *'
      '      mlms.EXTERNAL_WORK_PRICE /'
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '          (cr.RATE_DATE = Least(mlms.TREATMENT_BEGIN_DATE, Conte' +
        'xtDate))'
      '      ),'
      '      0,'
      '      1'
      '    ),'
      '    0'
      '  ) as PLAN_IV_4_IS_INCOMPLETE,'
      ''
      '  ( select'
      '      Coalesce('
      '        Sum('
      '          mm.DETAIL_TECH_QUANTITY *'
      '          mlms.EXTERNAL_WORK_PRICE /'
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '              (cr.RATE_DATE = mm.MM_DATE)'
      '          )'
      '        ),'
      '        0'
      '      )'
      '    from'
      '      MODEL_MOVEMENTS mm'
      '    where'
      
        '      (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '      (mm.STORNO_EMPLOYEE_CODE is null) and'
      '      (mlms.EXTERNAL_WORK_PRICE is not null)'
      '  ) as REAL_INVESTED_VALUE_4,'
      ''
      '  Nvl2('
      '    mlms.EXTERNAL_WORK_PRICE,'
      '    ( select'
      '        Count('
      '          Nvl2('
      '            mm.DETAIL_TECH_QUANTITY *'
      '            mlms.EXTERNAL_WORK_PRICE /'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCY_RATES cr'
      '              where'
      '                (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '                (cr.RATE_DATE = mm.MM_DATE)'
      '            ),'
      '            null,'
      '            1'
      '          )'
      '        )'
      '      from'
      '        MODEL_MOVEMENTS mm'
      '      where'
      
        '        (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '        (mm.STORNO_EMPLOYEE_CODE is null) and'
      '        (mlms.EXTERNAL_WORK_PRICE is not null)'
      '    ),'
      '    0'
      '  ) as REAL_IV_4_IS_INCOMPLETE,'
      ''
      '  ( select'
      '      Coalesce('
      '        Sum('
      '          mm.DETAIL_TECH_QUANTITY *'
      '          mlms.EXTERNAL_WORK_PRICE /'
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '              (cr.RATE_DATE = mm.MM_DATE)'
      '          )'
      '        ),'
      '        0'
      '      )'
      '    from'
      '      MODEL_MOVEMENTS mm'
      '    where'
      
        '      (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '      (mm.TO_DEPT_CODE is not null) and'
      '      (mm.STORNO_EMPLOYEE_CODE is null)'
      '  ) as WASTE_INVESTED_VALUE_4,'
      ''
      '  Nvl2('
      '    mlms.EXTERNAL_WORK_PRICE,'
      '    ( select'
      '        Sign('
      '          Count('
      '            Nvl2('
      '              mm.DETAIL_TECH_QUANTITY *'
      '              mlms.EXTERNAL_WORK_PRICE /'
      '              ('
      '                select'
      '                  cr.FIXING'
      '                from'
      '                  CURRENCY_RATES cr'
      '                where'
      '                  (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '                  (cr.RATE_DATE = mm.MM_DATE)'
      '              ),'
      '              null,'
      '              1'
      '            )'
      '          )'
      '        )'
      '      from'
      '        MODEL_MOVEMENTS mm'
      '      where'
      
        '        (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '        (mm.TO_DEPT_CODE is not null) and'
      '        (mm.STORNO_EMPLOYEE_CODE is null)'
      '    ),'
      '    0'
      '  ) as WASTE_IV_4_IS_INCOMPLETE,'
      ''
      '  Sum('
      '    ( Nvl2(mlmso.SETUP_PROFESSION_CODE,'
      '        Coalesce(  -- nastroika'
      '          (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *'
      '          mlmso.SETUP_EFFORT_COEF *'
      '          ( select'
      '              pper.HOUR_PRICE'
      '            from'
      '              PROFESSION_PERIODS pper'
      '            where'
      
        '              (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_COD' +
        'E) and'
      
        '              (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) be' +
        'tween pper.BEGIN_DATE and pper.END_DATE)'
      '          ),'
      '          0'
      '        ),'
      '        0'
      '      ) +'
      '      Coalesce(  -- rabota'
      
        '        (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QU' +
        'ANTITY) *'
      '        mlmso.EFFORT_COEF *'
      '        ( select'
      '            pper.HOUR_PRICE'
      '          from'
      '            PROFESSION_PERIODS pper'
      '          where'
      '            (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and'
      
        '            (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betw' +
        'een pper.BEGIN_DATE and pper.END_DATE)'
      '        ),'
      '        0'
      '      )'
      '    ) *'
      '    Coalesce('
      '      ( select'
      '          em.LABOUR_COST_COEF *'
      '          em.ORGANIZATION_COST_COEF'
      '        from'
      '          EARNING_MODIFIERS em'
      '        where'
      
        '          (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betwee' +
        'n em.BEGIN_DATE and em.END_DATE)'
      '      ),'
      '      0'
      '    ) /'
      '    ( select'
      '        cr.FIXING'
      '      from'
      '        CURRENCY_RATES cr'
      '      where'
      '        (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '        (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Contex' +
        'tDate))'
      '    )'
      '  ) as PLAN_INVESTED_VALUE_5,'
      ''
      '  Sign('
      '    Count('
      '      Nvl2('
      '        ( Nvl2(mlmso.SETUP_PROFESSION_CODE,'
      '            (  -- nastroika'
      
        '              (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTIT' +
        'Y) *'
      '              mlmso.SETUP_EFFORT_COEF *'
      '              ( select'
      '                  pper.HOUR_PRICE'
      '                from'
      '                  PROFESSION_PERIODS pper'
      '                where'
      
        '                  (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION' +
        '_CODE) and'
      
        '                  (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate' +
        ') between pper.BEGIN_DATE and pper.END_DATE)'
      '              )'
      '            ),'
      '            0'
      '          ) +'
      '          (  -- rabota'
      
        '            (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TEC' +
        'H_QUANTITY) *'
      '            mlmso.EFFORT_COEF *'
      '            ( select'
      '                pper.HOUR_PRICE'
      '              from'
      '                PROFESSION_PERIODS pper'
      '              where'
      
        '                (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) a' +
        'nd'
      
        '                (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) ' +
        'between pper.BEGIN_DATE and pper.END_DATE)'
      '            )'
      '          )'
      '        ) *'
      '        ( select'
      '            em.LABOUR_COST_COEF'
      '          from'
      '            EARNING_MODIFIERS em'
      '          where'
      
        '            (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betw' +
        'een em.BEGIN_DATE and em.END_DATE)'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '            (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Co' +
        'ntextDate))'
      '        ),'
      '        null,'
      '        1'
      '      )'
      '    )'
      '  ) as PLAN_IV_5_IS_INCOMPLETE,'
      ''
      '  Sum('
      '    Nvl2(mlmso.SETUP_DATE,'
      '      Coalesce(  -- nastroika'
      
        '        (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY' +
        ') *'
      '         mlmso.SETUP_EFFORT_COEF *'
      '        ( select'
      '            pper.HOUR_PRICE'
      '          from'
      '            PROFESSION_PERIODS pper'
      '          where'
      
        '            (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE)' +
        ' and'
      
        '            (mlmso.SETUP_DATE between pper.BEGIN_DATE and pper.E' +
        'ND_DATE)'
      '        ) *'
      '        Coalesce('
      '          ( select'
      '              Max('
      '                em.LABOUR_COST_COEF *'
      '                em.ORGANIZATION_COST_COEF'
      '              )'
      '            from'
      '              EARNING_MODIFIERS em'
      '            where'
      
        '              (mlmso.SETUP_DATE between em.BEGIN_DATE and em.END' +
        '_DATE)'
      '          ),'
      '          0'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '            (cr.RATE_DATE = mlmso.SETUP_DATE)'
      '        ),'
      '        0'
      '      ),'
      '      0'
      '    ) +'
      ''
      '    Coalesce(  -- preminavania'
      '      ( select'
      '          Sum('
      
        '            (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUAN' +
        'TITY) *'
      '            mlmso.EFFORT_COEF *'
      '            ( select'
      '                pper.HOUR_PRICE'
      '              from'
      '                PROFESSION_PERIODS pper'
      '              where'
      
        '                (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) a' +
        'nd'
      
        '                (om.OM_DATE between pper.BEGIN_DATE and pper.END' +
        '_DATE)'
      '            ) *'
      '            Coalesce('
      '              ( select'
      '                  Max('
      '                    em.LABOUR_COST_COEF *'
      '                    em.ORGANIZATION_COST_COEF'
      '                  )'
      '                from'
      '                  EARNING_MODIFIERS em'
      '                where'
      
        '                  (om.OM_DATE between em.BEGIN_DATE and em.END_D' +
        'ATE)'
      '              ),'
      '              0'
      '            ) /'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCY_RATES cr'
      '              where'
      '                (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '                (cr.RATE_DATE = om.OM_DATE)'
      '            )'
      '          )'
      '        from'
      '          OPERATION_MOVEMENTS om'
      '        where'
      
        '          (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) ' +
        'and'
      '          (om.STORNO_EMPLOYEE_CODE is null)'
      '      ),'
      '      0'
      '    )'
      '  ) as REAL_INVESTED_VALUE_5,'
      ''
      '  Sign('
      '    Count('
      '      Nvl2('
      '        Nvl2(mlmso.SETUP_DATE,'
      '          (  -- nastroika'
      
        '            (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUAN' +
        'TITY) *'
      '            mlmso.SETUP_EFFORT_COEF *'
      '            ( select'
      '                pper.HOUR_PRICE'
      '              from'
      '                PROFESSION_PERIODS pper'
      '              where'
      
        '                (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_C' +
        'ODE) and'
      
        '                (mlmso.SETUP_DATE between pper.BEGIN_DATE and pp' +
        'er.END_DATE)'
      '            ) *'
      '            ( select'
      '                Max('
      '                  em.LABOUR_COST_COEF *'
      '                  em.ORGANIZATION_COST_COEF'
      '                )'
      '              from'
      '                EARNING_MODIFIERS em'
      '              where'
      
        '                (mlmso.SETUP_DATE between em.BEGIN_DATE and em.E' +
        'ND_DATE)'
      '            ) /'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCY_RATES cr'
      '              where'
      '                (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '                (cr.RATE_DATE = mlmso.SETUP_DATE)'
      '            )'
      '          ),'
      '          0'
      '        ) +'
      ''
      '        (  -- preminavania'
      '          ( select'
      '              Decode(Count(*),'
      '                0, 0,'
      '                Decode('
      '                  Min('
      '                    Nvl2('
      
        '                      (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR' +
        '_TECH_QUANTITY) *'
      '                      mlmso.EFFORT_COEF *'
      '                      ( select'
      '                          pper.HOUR_PRICE'
      '                        from'
      '                          PROFESSION_PERIODS pper'
      '                        where'
      
        '                          (pper.PROFESSION_CODE = mlmso.PROFESSI' +
        'ON_CODE) and'
      
        '                          (om.OM_DATE between pper.BEGIN_DATE an' +
        'd pper.END_DATE)'
      '                      ) *'
      '                      Coalesce('
      '                        ( select'
      '                            Max('
      '                              em.LABOUR_COST_COEF *'
      '                              em.ORGANIZATION_COST_COEF'
      '                            )'
      '                          from'
      '                            EARNING_MODIFIERS em'
      '                          where'
      
        '                            (om.OM_DATE between em.BEGIN_DATE an' +
        'd em.END_DATE)'
      '                        ),'
      '                        0'
      '                      ) /'
      '                      ( select'
      '                          cr.FIXING'
      '                        from'
      '                          CURRENCY_RATES cr'
      '                        where'
      
        '                          (cr.CURRENCY_CODE = :CURRENCY_CODE) an' +
        'd'
      '                          (cr.RATE_DATE = om.OM_DATE)'
      '                      ),'
      '                      1,'
      '                      0'
      '                    )'
      '                  ),'
      '                  0, null,'
      '                  0'
      '                )'
      '              )'
      '            from'
      '              OPERATION_MOVEMENTS om'
      '            where'
      
        '              (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OB' +
        'JECT_BRANCH_CODE) and'
      
        '              (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CO' +
        'DE) and'
      '              (om.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '        ),'
      '        null,'
      '        1'
      '      )'
      '    )'
      '  ) as REAL_IV_5_IS_INCOMPLETE,'
      ''
      '  Sum('
      '    (  -- preminavania'
      '      select'
      '        Sum('
      
        '          (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTI' +
        'TY) *'
      '          mlmso.EFFORT_COEF *'
      '          ( select'
      '              pper.HOUR_PRICE'
      '            from'
      '              PROFESSION_PERIODS pper'
      '            where'
      '              (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and'
      
        '              (om.OM_DATE between pper.BEGIN_DATE and pper.END_D' +
        'ATE)'
      '          ) *'
      '          Coalesce('
      '            ( select'
      '                Max('
      '                  em.LABOUR_COST_COEF *'
      '                  em.ORGANIZATION_COST_COEF'
      '                )'
      '              from'
      '                EARNING_MODIFIERS em'
      '              where'
      
        '                (om.OM_DATE between em.BEGIN_DATE and em.END_DAT' +
        'E)'
      '            ),'
      '            0'
      '          ) /'
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '              (cr.RATE_DATE = om.OM_DATE)'
      '          )'
      '        )'
      ''
      '      from'
      '        OPERATION_MOVEMENTS om'
      '      where'
      
        '        (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_B' +
        'RANCH_CODE) and'
      
        '        (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) an' +
        'd'
      '        (om.TO_DEPT_CODE is not null) and'
      '        (om.STORNO_EMPLOYEE_CODE is null)'
      '    )'
      '  ) as WASTE_INVESTED_VALUE_5,'
      ''
      '  Sign('
      '    Count('
      '      Nvl2('
      '        (  -- preminavania'
      '          select'
      '            Decode(Count(*),'
      '              0, 0,'
      '              Decode('
      '                Min('
      '                  Nvl2('
      
        '                    (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_T' +
        'ECH_QUANTITY) *'
      '                    mlmso.EFFORT_COEF *'
      '                    ( select'
      '                        pper.HOUR_PRICE'
      '                      from'
      '                        PROFESSION_PERIODS pper'
      '                      where'
      
        '                        (pper.PROFESSION_CODE = mlmso.PROFESSION' +
        '_CODE) and'
      
        '                        (om.OM_DATE between pper.BEGIN_DATE and ' +
        'pper.END_DATE)'
      '                    ) *'
      '                    ( select'
      '                        Max('
      '                          em.LABOUR_COST_COEF *'
      '                          em.ORGANIZATION_COST_COEF'
      '                        )'
      '                      from'
      '                        EARNING_MODIFIERS em'
      '                      where'
      
        '                        (om.OM_DATE between em.BEGIN_DATE and em' +
        '.END_DATE)'
      '                    ) /'
      '                    ( select'
      '                        cr.FIXING'
      '                      from'
      '                        CURRENCY_RATES cr'
      '                      where'
      '                        (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '                        (cr.RATE_DATE = om.OM_DATE)'
      '                    ),'
      '                    1,'
      '                    0'
      '                  )'
      '                ),'
      '                0,'
      '                null,'
      '                0'
      '              )'
      '            )'
      '          '
      '          from'
      '            OPERATION_MOVEMENTS om'
      '          where'
      
        '            (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '            (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE' +
        ') and'
      '            (om.TO_DEPT_CODE is not null) and'
      '            (om.STORNO_EMPLOYEE_CODE is null)          '
      '        ),'
      '        null,'
      '        1'
      '      )'
      '    )'
      '  ) as WASTE_IV_5_IS_INCOMPLETE'
      ''
      'from'
      '  MATERIAL_LIST_LINES mll,'
      '  ML_MODEL_STAGES mlms,'
      '  MLMS_OPERATIONS mlmso'
      ''
      'where'
      '  (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      '  (mll.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '  (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '  (mlms.ML_MODEL_STAGE_NO > 0) and'
      '  (mlms.TREATMENT_WORKDAYS > 0) and'
      '  (mlms.OUTGOING_WORKDAYS > 0) and'
      ''
      
        '  (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '  (mlmso.OPERATION_TYPE_CODE = 2) and'
      '  (mlmso.MLMS_OPERATION_VARIANT_NO >= 0) and'
      '  (mlmso.IS_ACTIVE = 1)'
      ''
      'group by'
      '  mlms.MLMS_OBJECT_BRANCH_CODE,'
      '  mlms.MLMS_OBJECT_CODE,'
      '  mlms.DEPT_CODE,'
      '  mll.LINE_DETAIL_TECH_QUANTITY,'
      '  mlms.EXTERNAL_WORK_PRICE,'
      '  mlms.TREATMENT_BEGIN_DATE'
      ''
      'order by'
      '  mlms.MLMS_OBJECT_BRANCH_CODE,'
      '  mlms.MLMS_OBJECT_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 752
    Top = 152
    object qryMlmsInvestedValuesMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
    end
    object qryMlmsInvestedValuesMLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_CODE'
    end
    object qryMlmsInvestedValuesPLAN_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_2'
    end
    object qryMlmsInvestedValuesPLAN_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_2_IS_INCOMPLETE'
    end
    object qryMlmsInvestedValuesREAL_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_2'
    end
    object qryMlmsInvestedValuesREAL_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_2_IS_INCOMPLETE'
    end
    object qryMlmsInvestedValuesWASTE_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_2'
    end
    object qryMlmsInvestedValuesWASTE_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_2_IS_INCOMPLETE'
    end
    object qryMlmsInvestedValuesPLAN_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_3'
    end
    object qryMlmsInvestedValuesPLAN_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_3_IS_INCOMPLETE'
    end
    object qryMlmsInvestedValuesREAL_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_3'
    end
    object qryMlmsInvestedValuesREAL_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_3_IS_INCOMPLETE'
    end
    object qryMlmsInvestedValuesWASTE_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_3'
    end
    object qryMlmsInvestedValuesWASTE_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_3_IS_INCOMPLETE'
    end
    object qryMlmsInvestedValuesPLAN_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_4'
    end
    object qryMlmsInvestedValuesPLAN_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_4_IS_INCOMPLETE'
    end
    object qryMlmsInvestedValuesREAL_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_4'
    end
    object qryMlmsInvestedValuesREAL_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_4_IS_INCOMPLETE'
    end
    object qryMlmsInvestedValuesWASTE_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_4'
    end
    object qryMlmsInvestedValuesWASTE_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_4_IS_INCOMPLETE'
    end
    object qryMlmsInvestedValuesPLAN_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_5'
    end
    object qryMlmsInvestedValuesPLAN_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_5_IS_INCOMPLETE'
    end
    object qryMlmsInvestedValuesREAL_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_5'
    end
    object qryMlmsInvestedValuesREAL_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_5_IS_INCOMPLETE'
    end
    object qryMlmsInvestedValuesWASTE_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_5'
    end
    object qryMlmsInvestedValuesWASTE_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_5_IS_INCOMPLETE'
    end
  end
  object prvMllInvestedValues: TDataSetProvider
    DataSet = qryMllInvestedValues
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 640
    Top = 104
  end
  object prvMlmsInvestedValues: TDataSetProvider
    DataSet = qryMlmsInvestedValues
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 752
    Top = 104
  end
  object prvDSXModel: TDataSetProvider
    DataSet = qryDSXModel
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvDSXModelBeforeUpdateRecord
    BeforeApplyUpdates = prvDSXModelBeforeApplyUpdates
    AfterApplyUpdates = prvDSXModelAfterApplyUpdates
    Left = 872
    Top = 64
  end
  object qryDSXModel: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ml.ML_OBJECT_BRANCH_CODE,'
      '  ml.ML_OBJECT_CODE,'
      ''
      '  ('
      '    select'
      '      po.PROCESS_OBJECT_IDENTIFIER'
      '    from'
      '      PROCESS_OBJECTS po'
      '    where'
      
        '      (po.PROCESS_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (po.PROCESS_OBJECT_CODE = ml.ML_OBJECT_CODE)'
      '  ) as MODEL_IDENTIFIER,'
      ''
      '  ml.ANNUL_EMPLOYEE_CODE,'
      '  ml.CLOSE_EMPLOYEE_CODE,'
      '  ml.LIMITING_EMPLOYEE_CODE,'
      '  ml.OWNER_EMPLOYEE_CODE'
      ''
      'from'
      '  MATERIAL_LISTS ml'
      ''
      'where'
      '  (ml.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (ml.ML_OBJECT_CODE = :ML_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    AfterProviderStartTransaction = qryDSXModelAfterProviderStartTransaction
    Left = 872
    Top = 112
    object qryDSXModelML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object qryDSXModelML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object qryDSXModelMODEL_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MODEL_IDENTIFIER'
      Size = 100
    end
    object qryDSXModelANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryDSXModelCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryDSXModelLIMITING_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'LIMITING_EMPLOYEE_CODE'
    end
    object qryDSXModelOWNER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OWNER_EMPLOYEE_CODE'
    end
  end
  object dsDSXModel: TDataSource
    DataSet = qryDSXModel
    Left = 872
    Top = 160
  end
  object qryDSXModelLines: TAbmesSQLQuery
    DataSource = dsDSXModel
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  mll.MLL_OBJECT_BRANCH_CODE,'
      '  mll.MLL_OBJECT_CODE,'
      ''
      
        '  (mll.MLL_OBJECT_BRANCH_CODE || '#39';'#39' || mll.MLL_OBJECT_CODE) as ' +
        'LINE_IDENTIFIER,'
      ''
      '  mll.ML_OBJECT_BRANCH_CODE,'
      '  mll.ML_OBJECT_CODE,'
      ''
      '  mll.PARENT_MLL_OBJECT_BRANCH_CODE,'
      '  mll.PARENT_MLL_OBJECT_CODE,'
      ''
      '  Nvl2(mll.PARENT_MLL_OBJECT_CODE,'
      
        '       (mll.PARENT_MLL_OBJECT_BRANCH_CODE || '#39';'#39' || mll.PARENT_M' +
        'LL_OBJECT_CODE),'
      '       null'
      '  ) as PARENT_LINE_IDENTIFIER,'
      ''
      '  mll.NO_AS_TEXT,'
      '  mll.NO_AS_FORMATED_TEXT,'
      
        '  RPad(mll.NO_AS_FORMATED_TEXT, 100, Decode(mll.FORK_NO, 0, '#39' '#39',' +
        ' '#39'x'#39')) as NO_AS_FORMATED_TEXT_EX,'
      '  mll.FORK_NO,'
      ''
      '  mll.DETAIL_CODE,'
      '  dp.NAME as DETAIL_NAME,'
      '  dp.CUSTOM_CODE as DETAIL_NO,'
      '  dp.PARENT_CODE as DETAIL_PARENT_CODE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_HAS_SPECIFICATION,'
      ''
      '  mll.PRODUCT_CODE,'
      '  pp.NAME as PRODUCT_NAME,'
      '  pp.CUSTOM_CODE as PRODUCT_NO,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = mll.PRODUCT_CODE)'
      '  ) as PRODUCT_HAS_SPECIFICATION,'
      ''
      
        '  Decode(mll.NO_1, 0, 0, Coalesce(Length(Translate(mll.NO_AS_TEX' +
        'T, '#39'.0123456789'#39', '#39'.'#39')), 0) + 1) as LEVEL_NO,'
      ''
      '  mll.IS_COMPLETE,'
      ''
      '  mll.APPROVE_CYCLE_NO,'
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
      '      MATERIAL_LIST_LINES mll2'
      '    where'
      
        '      (mll2.PARENT_MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (mll2.PARENT_MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '  ) as HAS_CHILDREN,'
      ''
      '  ('
      '    select'
      '      1 - Sign(Count(*))'
      '    from'
      '      MATERIAL_LIST_LINES mll2'
      '    where'
      
        '      (mll2.PARENT_MLL_OBJECT_BRANCH_CODE = mll.PARENT_MLL_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '      (mll2.PARENT_MLL_OBJECT_CODE = mll.PARENT_MLL_OBJECT_CODE)' +
        ' and'
      '      (mll2.NO_AS_FORMATED_TEXT > mll.NO_AS_FORMATED_TEXT)'
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
      '  mll.NOTES,'
      '  mll.CONSTRUCTION_NOTES'
      ''
      'from'
      '  MATERIAL_LIST_LINES mll,'
      '  PRODUCTS dp,'
      '  PRODUCTS pp'
      ''
      'where'
      '  (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      '  '
      '  (mll.DETAIL_CODE = dp.PRODUCT_CODE) and'
      ''
      '  (mll.PRODUCT_CODE = pp.PRODUCT_CODE(+))'
      ''
      'order by'
      '  NO_AS_FORMATED_TEXT_EX,'
      '  FORK_NO'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'MATERIAL_LIST_LINES'
    Left = 872
    Top = 208
    object qryDSXModelLinesLINE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'LINE_IDENTIFIER'
      ProviderFlags = []
      Size = 81
    end
    object qryDSXModelLinesPARENT_LINE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PARENT_LINE_IDENTIFIER'
      ProviderFlags = []
      Size = 81
    end
    object qryDSXModelLinesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryDSXModelLinesMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryDSXModelLinesML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryDSXModelLinesML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
      ProviderFlags = []
    end
    object qryDSXModelLinesPARENT_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PARENT_MLL_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryDSXModelLinesPARENT_MLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PARENT_MLL_OBJECT_CODE'
      ProviderFlags = []
    end
    object qryDSXModelLinesNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      ProviderFlags = []
      Size = 100
    end
    object qryDSXModelLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      ProviderFlags = []
      Size = 100
    end
    object qryDSXModelLinesNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT_EX'
      ProviderFlags = []
      Size = 100
    end
    object qryDSXModelLinesFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
      ProviderFlags = []
    end
    object qryDSXModelLinesDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
      ProviderFlags = []
    end
    object qryDSXModelLinesDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryDSXModelLinesDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
      ProviderFlags = []
    end
    object qryDSXModelLinesDETAIL_PARENT_CODE: TAbmesFloatField
      FieldName = 'DETAIL_PARENT_CODE'
    end
    object qryDSXModelLinesDETAIL_HAS_SPECIFICATION: TAbmesFloatField
      FieldName = 'DETAIL_HAS_SPECIFICATION'
      ProviderFlags = []
    end
    object qryDSXModelLinesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryDSXModelLinesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryDSXModelLinesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryDSXModelLinesPRODUCT_HAS_SPECIFICATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_SPECIFICATION'
      ProviderFlags = []
    end
    object qryDSXModelLinesLEVEL_NO: TAbmesFloatField
      FieldName = 'LEVEL_NO'
      ProviderFlags = []
    end
    object qryDSXModelLinesIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
    end
    object qryDSXModelLinesAPPROVE_CYCLE_NO: TAbmesFloatField
      FieldName = 'APPROVE_CYCLE_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qryDSXModelLinesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryDSXModelLinesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object qryDSXModelLinesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      ProviderFlags = []
    end
    object qryDSXModelLinesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      ProviderFlags = []
    end
    object qryDSXModelLinesACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryDSXModelLinesUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryDSXModelLinesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryDSXModelLinesHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
    end
    object qryDSXModelLinesIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
    end
    object qryDSXModelLinesIS_DETAIL_DOC_AUTHORIZED: TAbmesFloatField
      FieldName = 'IS_DETAIL_DOC_AUTHORIZED'
      ProviderFlags = []
    end
    object qryDSXModelLinesPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryDSXModelLinesPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryDSXModelLinesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryDSXModelLinesCONSTRUCTION_NOTES: TAbmesWideStringField
      FieldName = 'CONSTRUCTION_NOTES'
      Size = 250
    end
  end
  object dsDSXModelLines: TDataSource
    DataSet = qryDSXModelLines
    Left = 872
    Top = 256
  end
  object qryDSXModelModel: TAbmesSQLQuery
    DataSource = dsDSXModelLines
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
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
      '  ml.MAIN_DEPT_CODE as DEPT_CODE,'
      '  ('
      '    select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        'as DEPT_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = ml.MAIN_DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.PRODUCT_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = ml.MAIN_DEPT_CODE)'
      '  ) as DEPT_PRODUCT_CODE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DEPTS d,'
      '      SPECS sp'
      '    where'
      '      (d.DEPT_CODE = ml.MAIN_DEPT_CODE) and'
      '      (sp.SPEC_PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      DEPTS d,'
      '      PRODUCTS p'
      '    where'
      '      (d.DEPT_CODE = ml.MAIN_DEPT_CODE) and'
      '      (p.PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_DOC_ITEMS,'
      ''
      
        '  ('#39'('#39' || RTrim(To_Char(ml.TECH_QUANTITY, '#39'FM999G999G999D999'#39'), ' +
        'To_Char(0, '#39'FMD'#39')) || '#39')'#39') as MODEL_VARIANT_QUANTITIES,'
      '  '
      '  To_Number(null) as STAGE_NO,'
      
        '  Cast(ModelUtils.MllModelWorkdays(:MLL_OBJECT_BRANCH_CODE, :MLL' +
        '_OBJECT_CODE) as Varchar2(20 char)) as WORKDAYS,'
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
      '  0 as HAS_MOVEMENTS,'
      ''
      '  0 as LEVEL_NO,'
      '  ('
      '    select'
      '      Sign(Count(*))'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      ''
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
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
      '  ml.NOTES'
      ''
      'from'
      '  MATERIAL_LISTS ml'
      ''
      'where'
      '  (ml.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (ml.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      ''
      ''
      'union all'
      ''
      ''
      'select'
      '  mlms.ML_MODEL_STAGE_NO as ITEM_CODE,'
      '  -1 as PARENT_ITEM_CODE,'
      '  2 as ITEM_TYPE_CODE,'
      ''
      '  (mlms.ML_MODEL_STAGE_NO*100000000000) as ORDER_NO,'
      ''
      '  mlms.DEPT_CODE as DEPT_CODE,'
      '  ('
      '    select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        'as DEPT_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = mlms.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.PRODUCT_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = mlms.DEPT_CODE)'
      '  ) as DEPT_PRODUCT_CODE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DEPTS d,'
      '      SPECS sp'
      '    where'
      '      (d.DEPT_CODE = mlms.DEPT_CODE) and'
      '      (sp.SPEC_PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      DEPTS d,'
      '      PRODUCTS p'
      '    where'
      '      (d.DEPT_CODE = mlms.DEPT_CODE) and'
      '      (p.PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  Cast(null as Varchar2(20 char)) as MODEL_VARIANT_QUANTITIES,'
      ''
      '  mlms.ML_MODEL_STAGE_NO as STAGE_NO,'
      '  Decode(mlms.TREATMENT_WORKDAYS,'
      '         0, null,'
      
        '         ('#39'['#39' || mlms.TREATMENT_WORKDAYS || '#39'/'#39' || mlms.OUTGOING' +
        '_WORKDAYS || '#39']'#39')'
      '  ) as WORKDAYS,'
      ''
      '  To_Number(null) as OPERATION_NO,'
      '  To_Number(null) as OPERATION_TYPE_CODE,'
      '  To_Number(null) as OPERATION_HAS_SPECIAL_CONTROL,'
      
        '  Cast(null as Varchar2(20 char)) as OPERATION_HOUR_TECH_QUANTIT' +
        'IES,'
      ''
      '  mlms.DOC_BRANCH_CODE,'
      '  mlms.DOC_CODE,'
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = mlms.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = mlms.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = mlms.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = mlms.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = mlms.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = mlms.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = mlms.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = mlms.DOC_CODE) and'
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
      '      (di.DOC_BRANCH_CODE = mlms.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = mlms.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = mlms.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = mlms.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is not null)'
      '  ) as APPROVED_DI_COUNT,'
      ''
      '  Sign('
      '    ('
      '      select'
      '        Count(*)'
      '      from'
      '        MODEL_STAGE_LINKS msl,'
      '        MODEL_MOVEMENTS mm'
      '      where'
      
        '        (mlms.MLMS_OBJECT_BRANCH_CODE = msl.TO_MLMS_OBJECT_BRANC' +
        'H_CODE) and'
      '        (mlms.MLMS_OBJECT_CODE = msl.TO_MLMS_OBJECT_CODE) and'
      ''
      
        '        (msl.FROM_MLMS_OBJECT_BRANCH_CODE = mm.FROM_MLMS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (msl.FROM_MLMS_OBJECT_CODE = mm.FROM_MLMS_OBJECT_CODE) a' +
        'nd'
      ''
      '        (mm.STORNO_EMPLOYEE_CODE is null)'
      '    ) +'
      '    ('
      '      select'
      '        Count(*)'
      '      from'
      '        MODEL_MOVEMENTS mm'
      '      where'
      
        '        (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '        (mm.STORNO_EMPLOYEE_CODE is null)'
      '    )'
      '  ) as HAS_MOVEMENTS,'
      ''
      '  1 as LEVEL_NO,'
      '  ('
      '    select'
      '      Sign(Count(*))'
      '    from'
      '      MLMS_OPERATIONS mlmso'
      '    where'
      
        '      (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_C' +
        'ODE) and'
      '      (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '      (mlmso.MLMS_OPERATION_VARIANT_NO = 0)'
      '  ) as HAS_CHILDREN,'
      '  ('
      '    select'
      '      1 - Sign(Count(*))'
      '    from'
      '      ML_MODEL_STAGES mlms2'
      '    where'
      
        '      (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '      (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      '      (mlms2.ML_MODEL_STAGE_NO > mlms.ML_MODEL_STAGE_NO)'
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
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll'
      ''
      'where'
      '  (mlms.MLL_OBJECT_BRANCH_CODE = :MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = :MLL_OBJECT_CODE) and'
      ''
      '  (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      ''
      ''
      'union all'
      ''
      ''
      'select'
      
        '  ((mlms.ML_MODEL_STAGE_NO+1)*1000000 + mlmso.MLMS_OPERATION_NO)' +
        ' as ITEM_CODE,'
      '  mlms.ML_MODEL_STAGE_NO as PARENT_ITEM_CODE,'
      '  3 as ITEM_TYPE_CODE,'
      ''
      
        '  ((mlms.ML_MODEL_STAGE_NO*100000000000) + ((mlms.ML_MODEL_STAGE' +
        '_NO+1)*1000000 + mlmso.MLMS_OPERATION_NO)) as ORDER_NO,'
      ''
      '  mlmso.DEPT_CODE as DEPT_CODE,'
      '  ('
      '    select'
      '      d.NAME as DEPT_IDENTIFIER'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = mlmso.DEPT_CODE)'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.PRODUCT_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = mlmso.DEPT_CODE)'
      '  ) as DEPT_PRODUCT_CODE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DEPTS d,'
      '      SPECS sp'
      '    where'
      '      (d.DEPT_CODE = mlmso.DEPT_CODE) and'
      '      (sp.SPEC_PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      DEPTS d,'
      '      PRODUCTS p'
      '    where'
      '      (d.DEPT_CODE = mlmso.DEPT_CODE) and'
      '      (p.PRODUCT_CODE = d.PRODUCT_CODE)'
      '  ) as DEPT_PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  Cast(null as Varchar2(20 char)) as MODEL_VARIANT_QUANTITIES,'
      ''
      '  mlms.ML_MODEL_STAGE_NO as STAGE_NO,'
      
        '  ('#39'<'#39' || mlmso.TREATMENT_BEGIN_WORKDAY_NO || '#39'/'#39' || mlms.TREATM' +
        'ENT_WORKDAYS || '#39'>'#39') as WORKDAYS,'
      ''
      '  mlmso.MLMS_OPERATION_NO as OPERATION_NO,'
      '  mlmso.OPERATION_TYPE_CODE,'
      '  mlmso.HAS_SPECIAL_CONTROL as OPERATION_HAS_SPECIAL_CONTROL,'
      
        '  (Nvl2(mlmso.SETUP_HOUR_TECH_QUANTITY, RTrim(To_Char(mlmso.SETU' +
        'P_HOUR_TECH_QUANTITY, '#39'FM999G999G999D999'#39'), To_Char(0, '#39'FMD'#39')) |' +
        '| '#39';'#39', null) ||'
      
        '   RTrim(To_Char(mlmso.HOUR_TECH_QUANTITY, '#39'FM999G999G999D999'#39'),' +
        ' To_Char(0, '#39'FMD'#39'))) as OPERATION_HOUR_TECH_QUANTITIES,'
      ''
      '  mlmso.DOC_BRANCH_CODE,'
      '  mlmso.DOC_CODE,'
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = mlmso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = mlmso.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = mlmso.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = mlmso.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = mlmso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = mlmso.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = mlmso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = mlmso.DOC_CODE) and'
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
      '      (di.DOC_BRANCH_CODE = mlmso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = mlmso.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = mlmso.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = mlmso.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is not null)'
      '  ) as APPROVED_DI_COUNT,'
      ''
      '  Sign('
      '    ('
      '      select'
      '        Count(*)'
      '      from'
      '        MLMS_OPERATIONS mlmso2,'
      '        OPERATION_MOVEMENTS om'
      '      where'
      
        '        (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (mlmso2.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and'
      '        (mlmso2.MLMS_OPERATION_NO = mlmso.MLMS_OPERATION_NO) and'
      '        (mlmso2.MLMS_OPERATION_VARIANT_NO >= 0) and'
      ''
      
        '        (om.TO_MLMSO_OBJECT_BRANCH_CODE = mlmso2.MLMSO_OBJECT_BR' +
        'ANCH_CODE) and'
      '        (om.TO_MLMSO_OBJECT_CODE = mlmso2.MLMSO_OBJECT_CODE) and'
      '        (om.STORNO_EMPLOYEE_CODE is null)'
      '    ) +'
      '    ('
      '      select'
      '        Count(*)'
      '      from'
      '        MLMS_OPERATIONS mlmso2,'
      '        OPERATION_MOVEMENTS om'
      '      where'
      
        '        (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (mlmso2.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and'
      '        (mlmso2.MLMS_OPERATION_NO = mlmso.MLMS_OPERATION_NO) and'
      '        (mlmso2.MLMS_OPERATION_VARIANT_NO >= 0) and'
      ''
      
        '        (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso2.MLMSO_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (om.FROM_MLMSO_OBJECT_CODE = mlmso2.MLMSO_OBJECT_CODE) a' +
        'nd'
      '        (om.STORNO_EMPLOYEE_CODE is null)'
      '    )'
      '  ) as HAS_MOVEMENTS,'
      ''
      '  2 as LEVEL_NO,'
      '  0 as HAS_CHILDREN,'
      '  ('
      '    select'
      '      1 - Sign(Count(*))'
      '    from'
      '      MLMS_OPERATIONS mlmso2'
      '    where'
      
        '      (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mlmso2.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and'
      '      (mlmso2.MLMS_OPERATION_NO > mlmso.MLMS_OPERATION_NO)'
      '  ) as IS_LAST_CHILD,'
      ''
      '  mlmso.PROGRAM_TOOL_PRODUCT_CODE,'
      '  mlmso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '  mlmso.TYPICAL_TOOL_PRODUCT_CODE,'
      ''
      '  mlmso.PROGRAM_TOOL_REQUIREMENT_CODE,'
      '  mlmso.SPECIFIC_TOOL_REQUIREMENT_CODE,'
      '  mlmso.TYPICAL_TOOL_REQUIREMENT_CODE,'
      ''
      '  mlmso.PROGRAM_TOOL_IS_COMPLETE,'
      '  mlmso.SPECIFIC_TOOL_IS_COMPLETE,'
      '  mlmso.TYPICAL_TOOL_IS_COMPLETE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = mlmso.PROGRAM_TOOL_PRODUCT_CODE)'
      '  ) as PROGRAM_TOOL_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = mlmso.SPECIFIC_TOOL_PRODUCT_CODE)'
      '  ) as SPECIFIC_TOOL_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = mlmso.TYPICAL_TOOL_PRODUCT_CODE)'
      '  ) as TYPICAL_TOOL_PRODUCT_HAS_SPEC,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mlmso.PROGRAM_TOOL_PRODUCT_CODE)'
      '  ) as PROGRAM_TOOL_PRODUCT_HAS_DI,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mlmso.SPECIFIC_TOOL_PRODUCT_CODE)'
      '  ) as SPECIFIC_TOOL_PRODUCT_HAS_DI,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mlmso.TYPICAL_TOOL_PRODUCT_CODE)'
      '  ) as TYPICAL_TOOL_PRODUCT_HAS_DI,'
      ''
      '  To_Number(null) as BASE_GROUP_CODE,'
      '  To_Number(null) as BASE_GROUP_DOC_BRANCH_CODE,'
      '  To_Number(null) as BASE_GROUP_DOC_CODE,'
      '  To_Number(null) as BASE_GROUP_HAS_DOC_ITEMS,'
      ''
      '  mlmso.NOTES'
      ''
      'from'
      '  MLMS_OPERATIONS mlmso,'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll'
      ''
      'where'
      '  (mlms.MLL_OBJECT_BRANCH_CODE = :MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = :MLL_OBJECT_CODE) and'
      ''
      
        '  (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '  (mlmso.MLMS_OPERATION_VARIANT_NO = 0) and'
      ''
      '  (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
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
    Left = 872
    Top = 304
    object qryDSXModelModelITEM_CODE: TAbmesFloatField
      FieldName = 'ITEM_CODE'
    end
    object qryDSXModelModelPARENT_ITEM_CODE: TAbmesFloatField
      FieldName = 'PARENT_ITEM_CODE'
    end
    object qryDSXModelModelITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'ITEM_TYPE_CODE'
    end
    object qryDSXModelModelORDER_NO: TAbmesFloatField
      FieldName = 'ORDER_NO'
    end
    object qryDSXModelModelDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryDSXModelModelDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 100
    end
    object qryDSXModelModelMODEL_VARIANT_QUANTITIES: TAbmesWideStringField
      FieldName = 'MODEL_VARIANT_QUANTITIES'
      Size = 18
    end
    object qryDSXModelModelSTAGE_NO: TAbmesFloatField
      FieldName = 'STAGE_NO'
    end
    object qryDSXModelModelWORKDAYS: TAbmesWideStringField
      FieldName = 'WORKDAYS'
      Size = 83
    end
    object qryDSXModelModelOPERATION_NO: TAbmesFloatField
      FieldName = 'OPERATION_NO'
    end
    object qryDSXModelModelOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
    end
    object qryDSXModelModelOPERATION_HAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'OPERATION_HAS_SPECIAL_CONTROL'
    end
    object qryDSXModelModelOPERATION_HOUR_TECH_QUANTITIES: TAbmesWideStringField
      FieldName = 'OPERATION_HOUR_TECH_QUANTITIES'
      Size = 33
    end
    object qryDSXModelModelDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDSXModelModelDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDSXModelModelDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object qryDSXModelModelDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object qryDSXModelModelACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object qryDSXModelModelUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
    end
    object qryDSXModelModelUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object qryDSXModelModelAPPROVED_DI_COUNT: TAbmesFloatField
      FieldName = 'APPROVED_DI_COUNT'
    end
    object qryDSXModelModelHAS_MOVEMENTS: TAbmesFloatField
      FieldName = 'HAS_MOVEMENTS'
    end
    object qryDSXModelModelLEVEL_NO: TAbmesFloatField
      FieldName = 'LEVEL_NO'
    end
    object qryDSXModelModelHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
    end
    object qryDSXModelModelIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
    end
    object qryDSXModelModelDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
    object qryDSXModelModelPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object qryDSXModelModelSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object qryDSXModelModelTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object qryDSXModelModelPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
    end
    object qryDSXModelModelSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
    end
    object qryDSXModelModelTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
    end
    object qryDSXModelModelPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
    end
    object qryDSXModelModelSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
    end
    object qryDSXModelModelTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
    end
    object qryDSXModelModelDEPT_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_HAS_SPEC'
    end
    object qryDSXModelModelPROGRAM_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_HAS_SPEC'
    end
    object qryDSXModelModelSPECIFIC_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_HAS_SPEC'
    end
    object qryDSXModelModelTYPICAL_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_HAS_SPEC'
    end
    object qryDSXModelModelDEPT_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_HAS_DOC_ITEMS'
    end
    object qryDSXModelModelPROGRAM_TOOL_PRODUCT_HAS_DI: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_HAS_DI'
    end
    object qryDSXModelModelSPECIFIC_TOOL_PRODUCT_HAS_DI: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_HAS_DI'
    end
    object qryDSXModelModelTYPICAL_TOOL_PRODUCT_HAS_DI: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_HAS_DI'
    end
    object qryDSXModelModelBASE_GROUP_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_CODE'
    end
    object qryDSXModelModelBASE_GROUP_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_DOC_BRANCH_CODE'
    end
    object qryDSXModelModelBASE_GROUP_DOC_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_DOC_CODE'
    end
    object qryDSXModelModelBASE_GROUP_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'BASE_GROUP_HAS_DOC_ITEMS'
    end
    object qryDSXModelModelNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
  end
  object qryCheckOperationDocs: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Sign(Count(*)) as WRONG_OPERATION_DOC_EXISTS'
      ''
      'from'
      '  MLMS_OPERATIONS mlmso1,'
      '  ML_MODEL_STAGES mlms1,'
      '  MATERIAL_LIST_LINES mll1'
      ''
      'where'
      '  (mll1.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (mll1.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      ''
      
        '  (mlmso1.MLMS_OBJECT_BRANCH_CODE = mlms1.MLMS_OBJECT_BRANCH_COD' +
        'E) and'
      '  (mlmso1.MLMS_OBJECT_CODE = mlms1.MLMS_OBJECT_CODE) and'
      ''
      
        '  (mlms1.MLL_OBJECT_BRANCH_CODE = mll1.MLL_OBJECT_BRANCH_CODE) a' +
        'nd'
      '  (mlms1.MLL_OBJECT_CODE = mll1.MLL_OBJECT_CODE) and'
      ''
      '  exists('
      '    select'
      '      1'
      '      '
      '    from'
      '      MLMS_OPERATIONS mlmso2,'
      '      ML_MODEL_STAGES mlms2,'
      '      MATERIAL_LIST_LINES mll2'
      '      '
      '    where'
      
        '      (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mlmso2.MLMS_OBJECT_CODE = mlms2.MLMS_OBJECT_CODE) and'
      '      '
      
        '      (mlms2.MLL_OBJECT_BRANCH_CODE = mll2.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '      (mlms2.MLL_OBJECT_CODE = mll2.MLL_OBJECT_CODE) and'
      '    '
      
        '      (mll2.ML_OBJECT_BRANCH_CODE = mll1.ML_OBJECT_BRANCH_CODE) ' +
        'and'
      '      (mll2.ML_OBJECT_CODE = mll1.ML_OBJECT_CODE) and'
      '      '
      '      (mlmso2.DOC_BRANCH_CODE = mlmso1.DOC_BRANCH_CODE) and'
      '      (mlmso2.DOC_CODE = mlmso1.DOC_CODE) and'
      '      '
      
        '      not ( (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlmso1.MLMS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '            (mlmso2.MLMS_OBJECT_CODE = mlmso1.MLMS_OBJECT_CODE) ' +
        'and'
      
        '            (mlmso2.MLMS_OPERATION_NO = mlmso1.MLMS_OPERATION_NO' +
        ') ) and'
      '            '
      '      (mlmso2.MLMSO_OBJECT_CODE > mlmso1.MLMSO_OBJECT_CODE)'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 856
    Top = 376
    object qryCheckOperationDocsWRONG_OPERATION_DOC_EXISTS: TAbmesFloatField
      FieldName = 'WRONG_OPERATION_DOC_EXISTS'
    end
  end
  object prvXModelStructStatus: TDataSetProvider
    DataSet = qryXModelStructStatus
    Left = 872
    Top = 448
  end
  object qryXModelStructStatus: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
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
      '  ( select'
      '      y.LEVEL_NO,'
      '      ('
      '        select'
      
        '          Decode(y.LEVEL_NO, -1, lev.LEVEL_IS_SELF_APPROVED, lev' +
        '.LEVEL_IS_COMPLETE)'
      '        from'
      '          ( select'
      
        '              Decode(mll.NO_1, 0, 0, Coalesce(Length(Translate(m' +
        'll.NO_AS_TEXT, '#39'.0123456789'#39', '#39'.'#39')), 0) + 1) as LEVEL_NO,'
      ''
      
        '              (Max(Decode(mll.NO_1, 0, 0, Coalesce(Length(Transl' +
        'ate(mll.NO_AS_TEXT, '#39'.0123456789'#39', '#39'.'#39')), 0) + 1)) over ()) as M' +
        'AX_LEVEL_NO,'
      ''
      '              Min('
      '                ('
      '                  select'
      '                    Sign(Count(*))'
      '                  from'
      '                    PRODUCTS p,'
      '                    DOCS d'
      '                  where'
      '                    (p.PRODUCT_CODE = mll.DETAIL_CODE) and'
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
      '                    MATERIAL_LIST_LINES mllp,'
      '                    MATERIAL_LIST_LINES mll3'
      '                  where'
      
        '                    (mllp.MLL_OBJECT_BRANCH_CODE = mll.PARENT_ML' +
        'L_OBJECT_BRANCH_CODE) and'
      
        '                    (mllp.MLL_OBJECT_CODE = mll.PARENT_MLL_OBJEC' +
        'T_CODE) and'
      ''
      
        '                    (mll3.MLL_OBJECT_BRANCH_CODE = mllp.PARENT_M' +
        'LL_OBJECT_BRANCH_CODE) and'
      
        '                    (mll3.MLL_OBJECT_CODE = mllp.PARENT_MLL_OBJE' +
        'CT_CODE) and'
      '                    (mll3.PRODUCT_CODE is null) and'
      ''
      '                    not exists('
      '                      select'
      '                        1'
      '                      from'
      '                        MATERIAL_LIST_LINES mll4'
      '                      where'
      
        '                        (mll4.PARENT_MLL_OBJECT_BRANCH_CODE = ml' +
        'l3.MLL_OBJECT_BRANCH_CODE) and'
      
        '                        (mll4.PARENT_MLL_OBJECT_CODE = mll3.MLL_' +
        'OBJECT_CODE)'
      '                    )'
      '                )'
      '              ) as LEVEL_IS_SELF_APPROVED,'
      ''
      '              Min(mll.IS_COMPLETE) as LEVEL_IS_COMPLETE,'
      ''
      '              Max('
      '                Nvl2(mll.PRODUCT_CODE,'
      '                  0,'
      '                  1 - mll.IS_COMPLETE'
      '                )'
      '              ) as LEVEL_HAS_MISSING_CHILDREN'
      ''
      '            from'
      '              MATERIAL_LIST_LINES mll'
      ''
      '            where'
      
        '              (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_COD' +
        'E) and'
      '              (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      ''
      '            group by'
      
        '              Decode(mll.NO_1, 0, 0, Coalesce(Length(Translate(m' +
        'll.NO_AS_TEXT, '#39'.0123456789'#39', '#39'.'#39')), 0) + 1)'
      '          ) lev'
      '        where'
      '          (lev.LEVEL_NO = Greatest(y.LEVEL_NO, 0))'
      '      ) as LEVEL_IS_COMPLETE,'
      '      y.MAX_LEVEL_NO,'
      '      y.HAS_MISSING_CHILDREN'
      ''
      '    from'
      '      ( select'
      
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
      
        '                  Decode(mll.NO_1, 0, 0, Coalesce(Length(Transla' +
        'te(mll.NO_AS_TEXT, '#39'.0123456789'#39', '#39'.'#39')), 0) + 1) as LEVEL_NO,'
      ''
      
        '                  (Max(Decode(mll.NO_1, 0, 0, Coalesce(Length(Tr' +
        'anslate(mll.NO_AS_TEXT, '#39'.0123456789'#39', '#39'.'#39')), 0) + 1)) over ()) ' +
        'as MAX_LEVEL_NO,'
      ''
      '                  Min('
      '                    ('
      '                      select'
      '                        Sign(Count(*))'
      '                      from'
      '                        PRODUCTS p,'
      '                        DOCS d'
      '                      where'
      '                        (p.PRODUCT_CODE = mll.DETAIL_CODE) and'
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
      '                        MATERIAL_LIST_LINES mllp,'
      '                        MATERIAL_LIST_LINES mll3'
      '                      where'
      
        '                        (mllp.MLL_OBJECT_BRANCH_CODE = mll.PAREN' +
        'T_MLL_OBJECT_BRANCH_CODE) and'
      
        '                        (mllp.MLL_OBJECT_CODE = mll.PARENT_MLL_O' +
        'BJECT_CODE) and'
      ''
      
        '                        (mll3.MLL_OBJECT_BRANCH_CODE = mllp.PARE' +
        'NT_MLL_OBJECT_BRANCH_CODE) and'
      
        '                        (mll3.MLL_OBJECT_CODE = mllp.PARENT_MLL_' +
        'OBJECT_CODE) and'
      '                        (mll3.PRODUCT_CODE is null) and'
      ''
      '                        not exists('
      '                          select'
      '                            1'
      '                          from'
      '                            MATERIAL_LIST_LINES mll4'
      '                          where'
      
        '                            (mll4.PARENT_MLL_OBJECT_BRANCH_CODE ' +
        '= mll3.MLL_OBJECT_BRANCH_CODE) and'
      
        '                            (mll4.PARENT_MLL_OBJECT_CODE = mll3.' +
        'MLL_OBJECT_CODE)'
      '                        )'
      '                    )'
      '                  ) as LEVEL_IS_SELF_APPROVED,'
      ''
      '                  Min(mll.IS_COMPLETE) as LEVEL_IS_COMPLETE,'
      ''
      '                  Max('
      '                    Nvl2(mll.PRODUCT_CODE,'
      '                      0,'
      '                      1 - mll.IS_COMPLETE'
      '                    )'
      '                  ) as LEVEL_HAS_MISSING_CHILDREN'
      ''
      '                from'
      '                  MATERIAL_LIST_LINES mll'
      ''
      '                where'
      
        '                  (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH' +
        '_CODE) and'
      '                  (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      ''
      '                group by'
      
        '                  Decode(mll.NO_1, 0, 0, Coalesce(Length(Transla' +
        'te(mll.NO_AS_TEXT, '#39'.0123456789'#39', '#39'.'#39')), 0) + 1)'
      '              ) lev'
      '          ) x'
      '      ) y'
      '  ) z')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 872
    Top = 496
    object qryXModelStructStatusLEVEL_NO: TAbmesFloatField
      FieldName = 'LEVEL_NO'
    end
    object qryXModelStructStatusLEVEL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'LEVEL_IS_COMPLETE'
    end
    object qryXModelStructStatusMAX_LEVEL_NO: TAbmesFloatField
      FieldName = 'MAX_LEVEL_NO'
    end
    object qryXModelStructStatusHAS_MISSING_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_MISSING_CHILDREN'
    end
  end
  object qryCheckWasteForks: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mll.NO_AS_FORMATED_TEXT'
      ''
      'from'
      '  MATERIAL_LIST_LINES mll'
      ''
      'where'
      '  (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      ''
      '  (mll.FORK_0_MLL_OBJECT_CODE is null) and'
      ''
      '  ( MiscUtils.LargeZero('
      '      ( select'
      '          Sum(mllw.LINE_DETAIL_TECH_QUANTITY)'
      '        from'
      '          MATERIAL_LIST_LINES mllw'
      '        where'
      
        '          (mllw.FORK_0_MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_B' +
        'RANCH_CODE) and'
      
        '          (mllw.FORK_0_MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) an' +
        'd'
      '          (mllw.FORK_NO > 0) and'
      '          (mllw.IS_WASTE_FORK = 1)'
      '      ) -'
      '      ( ( select'
      '            Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)'
      '          from'
      '            MATERIAL_LIST_LINES mllw,'
      '            ML_MODEL_STAGES mlms,'
      '            MODEL_MOVEMENTS mm'
      '          where'
      
        '            (mllw.FORK_0_MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT' +
        '_BRANCH_CODE) and'
      
        '            (mllw.FORK_0_MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) ' +
        'and'
      '            (mllw.FORK_NO > 0) and'
      ''
      
        '            (mlms.MLL_OBJECT_BRANCH_CODE = mllw.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '            (mlms.MLL_OBJECT_CODE = mllw.MLL_OBJECT_CODE) and'
      ''
      
        '            (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '            (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) a' +
        'nd'
      '            (mm.TO_DEPT_CODE is not null) and'
      '            (mm.STORNO_EMPLOYEE_CODE is null) '
      '        ) +'
      '        ( select'
      '            Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)'
      '          from'
      '            ML_MODEL_STAGES mlms,'
      '            MODEL_MOVEMENTS mm'
      '          where'
      
        '            (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '            (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '    '
      
        '            (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '            (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) a' +
        'nd'
      '            (mm.TO_DEPT_CODE is not null) and'
      '            (mm.STORNO_EMPLOYEE_CODE is null)'
      '        )'
      '      )'
      '    ) > 0'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 320
    Top = 496
    object qryCheckWasteForksNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
  end
  object mshLocalMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'MAX_MLL_MOVED_TECH_QUANTITY'
        Strings.Strings = (
          '( select'
          '    Max(Sum(library_om.TOTAL_DETAIL_TECH_QUANTITY))'
          '  from'
          '    ML_MODEL_STAGES library_mlms,'
          '    MLMS_OPERATIONS library_mlmso,'
          '    OPERATION_MOVEMENTS library_om'
          '  where'
          '    (library_mlms.MLL_OBJECT_BRANCH_CODE = %1) and'
          '    (library_mlms.MLL_OBJECT_CODE = %2) and'
          ''
          
            '    (library_mlms.MLMS_OBJECT_BRANCH_CODE = library_mlmso.MLMS_O' +
            'BJECT_BRANCH_CODE) and'
          
            '    (library_mlms.MLMS_OBJECT_CODE = library_mlmso.MLMS_OBJECT_C' +
            'ODE) and'
          ''
          
            '    (library_mlmso.MLMSO_OBJECT_BRANCH_CODE = library_om.FROM_ML' +
            'MSO_OBJECT_BRANCH_CODE) and'
          
            '    (library_mlmso.MLMSO_OBJECT_CODE = library_om.FROM_MLMSO_OBJ' +
            'ECT_CODE) and'
          ''
          '    ( (library_om.TO_MLMSO_OBJECT_CODE is null) or'
          
            '      (library_om.TO_MLMSO_OBJECT_BRANCH_CODE <> library_om.FROM' +
            '_MLMSO_OBJECT_BRANCH_CODE) or'
          
            '      (library_om.TO_MLMSO_OBJECT_CODE <> library_om.FROM_MLMSO_' +
            'OBJECT_CODE) ) and'
          ''
          '    (library_om.STORNO_EMPLOYEE_CODE is null)'
          '  group by'
          '    library_om.FROM_MLMSO_OBJECT_BRANCH_CODE,'
          '    library_om.FROM_MLMSO_OBJECT_CODE'
          ')')
      end>
    Left = 760
    Top = 512
  end
  object qryMlmsoInvestedValues: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mlmso.MLMSO_OBJECT_BRANCH_CODE,'
      '  mlmso.MLMSO_OBJECT_CODE,'
      ''
      '  ------------ INVESTED VALUE 2 ------------'
      '  Nvl2(mlmso.SETUP_PROFESSION_CODE,'
      '    ( ( (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *'
      '        mlmso.SETUP_EFFORT_COEF *'
      '        ( select'
      '            pper.HOUR_PRICE'
      '          from'
      '            PROFESSION_PERIODS pper'
      '          where'
      
        '            (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE)' +
        ' and'
      
        '            (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betw' +
        'een pper.BEGIN_DATE and pper.END_DATE)'
      '        )'
      '      ) *'
      '      Coalesce('
      '        ( select'
      '            em.LABOUR_COST_COEF'
      '          from'
      '            EARNING_MODIFIERS em'
      '          where'
      
        '            (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betw' +
        'een em.BEGIN_DATE and em.END_DATE)'
      '        ),'
      '        1'
      '      ) /'
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '          (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Cont' +
        'extDate))'
      '      )'
      '    ),'
      '    null'
      '  ) as PLAN_SETUP_INVESTED_VALUE_2,'
      ''
      '  Nvl2(mlmso.SETUP_PROFESSION_CODE,'
      '    Nvl2('
      '      ( (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *'
      '        mlmso.SETUP_EFFORT_COEF *'
      '        ( select'
      '            pper.HOUR_PRICE'
      '          from'
      '            PROFESSION_PERIODS pper'
      '          where'
      
        '            (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE)' +
        ' and'
      
        '            (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betw' +
        'een pper.BEGIN_DATE and pper.END_DATE)'
      '        ) *'
      '        Coalesce('
      '          ( select'
      '              em.LABOUR_COST_COEF'
      '            from'
      '              EARNING_MODIFIERS em'
      '            where'
      
        '              (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) be' +
        'tween em.BEGIN_DATE and em.END_DATE)'
      '          ),'
      '          1'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '            (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Co' +
        'ntextDate))'
      '        )'
      '      ),'
      '      0,'
      '      1'
      '    ),'
      '    0'
      '  ) as PLAN_SETUP_IV_2_IS_INCOMPLETE,'
      ''
      
        '  ( (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTI' +
        'TY) *'
      '    mlmso.EFFORT_COEF *'
      '    ( select'
      '        pper.HOUR_PRICE'
      '      from'
      '        PROFESSION_PERIODS pper'
      '      where'
      '        (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and'
      
        '        (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) between ' +
        'pper.BEGIN_DATE and pper.END_DATE)'
      '    ) *'
      '    Coalesce('
      '      ( select'
      '          em.LABOUR_COST_COEF'
      '        from'
      '          EARNING_MODIFIERS em'
      '        where'
      
        '          (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betwee' +
        'n em.BEGIN_DATE and em.END_DATE)'
      '      ),'
      '      1'
      '    ) /'
      '    ( select'
      '        cr.FIXING'
      '      from'
      '        CURRENCY_RATES cr'
      '      where'
      '        (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '        (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Contex' +
        'tDate))'
      '    ) '
      '  ) as PLAN_INVESTED_VALUE_2,'
      ''
      '  Nvl2('
      
        '    ( (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUAN' +
        'TITY) *'
      '      mlmso.EFFORT_COEF *'
      '      ( select'
      '          pper.HOUR_PRICE'
      '        from'
      '          PROFESSION_PERIODS pper'
      '        where'
      '          (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and'
      
        '          (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betwee' +
        'n pper.BEGIN_DATE and pper.END_DATE)'
      '      ) *'
      '      ( select'
      '          em.LABOUR_COST_COEF'
      '        from'
      '          EARNING_MODIFIERS em'
      '        where'
      
        '          (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betwee' +
        'n em.BEGIN_DATE and em.END_DATE)'
      '      ) /'
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '          (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Cont' +
        'extDate))'
      '      )'
      '    ),'
      '    0,'
      '    1'
      '  ) as PLAN_IV_2_IS_INCOMPLETE,'
      ''
      '  Nvl2(mlmso.SETUP_DATE,'
      
        '    ( (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) ' +
        '*'
      '      mlmso.SETUP_EFFORT_COEF *'
      '      ( select'
      '          pper.HOUR_PRICE'
      '        from'
      '          PROFESSION_PERIODS pper'
      '        where'
      
        '          (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE) a' +
        'nd'
      
        '          (mlmso.SETUP_DATE between pper.BEGIN_DATE and pper.END' +
        '_DATE)'
      '      ) *'
      '      Coalesce('
      '        ( select'
      '            Max(em.LABOUR_COST_COEF)'
      '          from'
      '            EARNING_MODIFIERS em'
      '          where'
      
        '            (mlmso.SETUP_DATE between em.BEGIN_DATE and em.END_D' +
        'ATE)'
      '        ),'
      '        1'
      '      ) /'
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '          (cr.RATE_DATE = mlmso.SETUP_DATE)'
      '      )'
      '    ),'
      '    null'
      '  ) as REAL_SETUP_INVESTED_VALUE_2,'
      ''
      '  Nvl2(mlmso.SETUP_DATE,'
      '    Nvl2('
      
        '      ( (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY' +
        ') *'
      '        mlmso.SETUP_EFFORT_COEF *'
      '        ( select'
      '            pper.HOUR_PRICE'
      '          from'
      '            PROFESSION_PERIODS pper'
      '          where'
      
        '            (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE)' +
        ' and'
      
        '            (mlmso.SETUP_DATE between pper.BEGIN_DATE and pper.E' +
        'ND_DATE)'
      '        ) *'
      '        Coalesce('
      '          ( select'
      '              Max(em.LABOUR_COST_COEF)'
      '            from'
      '              EARNING_MODIFIERS em'
      '            where'
      
        '              (mlmso.SETUP_DATE between em.BEGIN_DATE and em.END' +
        '_DATE)'
      '          ),'
      '          1'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '            (cr.RATE_DATE = mlmso.SETUP_DATE)'
      '        )'
      '      ),'
      '      0,'
      '      1'
      '    ),'
      '    0'
      '  ) as REAL_SETUP_IV_2_IS_INCOMPLETE,'
      ''
      '  ( select'
      '      Sum('
      
        '        (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY' +
        ') *'
      '        mlmso.EFFORT_COEF *'
      '        ( select'
      '            pper.HOUR_PRICE'
      '          from'
      '            PROFESSION_PERIODS pper'
      '          where'
      '            (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and'
      
        '            (om.OM_DATE between pper.BEGIN_DATE and pper.END_DAT' +
        'E)'
      '        ) *'
      '        Coalesce('
      '          ( select'
      '              Max(em.LABOUR_COST_COEF)'
      '            from'
      '              EARNING_MODIFIERS em'
      '            where'
      '              (om.OM_DATE between em.BEGIN_DATE and em.END_DATE)'
      '          ),'
      '          1'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '            (cr.RATE_DATE = om.OM_DATE)'
      '        )'
      '      )'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_INVESTED_VALUE_2,'
      ''
      '  ( select'
      '      Decode(Count(*),'
      '        0, 0,'
      '        Max('
      '          Nvl2('
      
        '            ( (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QU' +
        'ANTITY) *'
      '              mlmso.EFFORT_COEF *'
      '              ( select'
      '                  pper.HOUR_PRICE'
      '                from'
      '                  PROFESSION_PERIODS pper'
      '                where'
      
        '                  (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE)' +
        ' and'
      
        '                  (om.OM_DATE between pper.BEGIN_DATE and pper.E' +
        'ND_DATE)'
      '              ) *'
      '              Coalesce('
      '                ( select'
      '                    Max(em.LABOUR_COST_COEF)'
      '                  from'
      '                    EARNING_MODIFIERS em'
      '                  where'
      
        '                    (om.OM_DATE between em.BEGIN_DATE and em.END' +
        '_DATE)'
      '                ),'
      '                1'
      '              ) /'
      '              ( select'
      '                  cr.FIXING'
      '                from'
      '                  CURRENCY_RATES cr'
      '                where'
      '                  (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '                  (cr.RATE_DATE = om.OM_DATE)'
      '              )'
      '            ),'
      '            0,'
      '            1'
      '          )'
      '        )'
      '      )'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_IV_2_IS_INCOMPLETE,'
      ''
      '  To_Number(null) as WASTE_SETUP_INVESTED_VALUE_2,'
      '  0 as WASTE_SETUP_IV_2_IS_INCOMPLETE,'
      ''
      '  ( select'
      '      Sum('
      
        '        (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY' +
        ') *'
      '        mlmso.EFFORT_COEF *'
      '        ( select'
      '            pper.HOUR_PRICE'
      '          from'
      '            PROFESSION_PERIODS pper'
      '          where'
      '            (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and'
      
        '            (om.OM_DATE between pper.BEGIN_DATE and pper.END_DAT' +
        'E)'
      '        ) *'
      '        Coalesce('
      '          ( select'
      '              Max(em.LABOUR_COST_COEF)'
      '            from'
      '              EARNING_MODIFIERS em'
      '            where'
      '              (om.OM_DATE between em.BEGIN_DATE and em.END_DATE)'
      '          ),'
      '          1'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '            (cr.RATE_DATE = om.OM_DATE)'
      '        )'
      '      )'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.TO_DEPT_CODE is not null) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ) as WASTE_INVESTED_VALUE_2,'
      ''
      '  ( select'
      '      Decode(Count(*),'
      '        0, 0,'
      '        Max('
      '          Nvl2('
      
        '            ( (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QU' +
        'ANTITY) *'
      '              mlmso.EFFORT_COEF *'
      '              ( select'
      '                  pper.HOUR_PRICE'
      '                from'
      '                  PROFESSION_PERIODS pper'
      '                where'
      
        '                  (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE)' +
        ' and'
      
        '                  (om.OM_DATE between pper.BEGIN_DATE and pper.E' +
        'ND_DATE)'
      '              ) *'
      '              Coalesce('
      '                ( select'
      '                    Max(em.LABOUR_COST_COEF)'
      '                  from'
      '                    EARNING_MODIFIERS em'
      '                  where'
      
        '                    (om.OM_DATE between em.BEGIN_DATE and em.END' +
        '_DATE)'
      '                ),'
      '                1'
      '              ) /'
      '              ( select'
      '                  cr.FIXING'
      '                from'
      '                  CURRENCY_RATES cr'
      '                where'
      '                  (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '                  (cr.RATE_DATE = om.OM_DATE)'
      '              )'
      '            ),'
      '            0,'
      '            1'
      '          )'
      '        )'
      '      )'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.TO_DEPT_CODE is not null) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ) as WASTE_IV_2_IS_INCOMPLETE,'
      ''
      '  ------------ INVESTED VALUE 3 ------------'
      '  Nvl2(mlmso.SETUP_PROFESSION_CODE,'
      '    ( (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *'
      '      ( select'
      '          (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /'
      '          dp.PARALLEL_PROCESS_COUNT'
      '        from'
      '          DEPT_PERIODS dp'
      '        where'
      '          (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '          (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betwee' +
        'n dp.BEGIN_DATE and dp.END_DATE)'
      '      ) /'
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '          (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Cont' +
        'extDate))'
      '      )'
      '    ),'
      '    null'
      '  ) as PLAN_SETUP_INVESTED_VALUE_3,'
      ''
      '  Nvl2(mlmso.SETUP_PROFESSION_CODE,'
      '    Nvl2('
      '      (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *'
      '      ( select'
      '          (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /'
      '          dp.PARALLEL_PROCESS_COUNT'
      '        from'
      '          DEPT_PERIODS dp'
      '        where'
      '          (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '          (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betwee' +
        'n dp.BEGIN_DATE and dp.END_DATE)'
      '      ) /'
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '          (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Cont' +
        'extDate))'
      '      ),'
      '      0,'
      '      1'
      '    ),'
      '    0'
      '  ) as PLAN_SETUP_IV_3_IS_INCOMPLETE,'
      ''
      
        '  ( (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTI' +
        'TY) *'
      '    ( select'
      '        (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /'
      '        dp.PARALLEL_PROCESS_COUNT'
      '      from'
      '        DEPT_PERIODS dp'
      '      where'
      '        (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '        (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) between ' +
        'dp.BEGIN_DATE and dp.END_DATE)'
      '    ) /'
      '    ( select'
      '        cr.FIXING'
      '      from'
      '        CURRENCY_RATES cr'
      '      where'
      '        (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '        (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Contex' +
        'tDate))'
      '    )'
      '  ) as PLAN_INVESTED_VALUE_3,'
      ''
      '  Nvl2('
      
        '    (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTI' +
        'TY) *'
      '    ( select'
      '        (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /'
      '        dp.PARALLEL_PROCESS_COUNT'
      '      from'
      '        DEPT_PERIODS dp'
      '      where'
      '        (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '        (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) between ' +
        'dp.BEGIN_DATE and dp.END_DATE)'
      '    ) /'
      '    ( select'
      '        cr.FIXING'
      '      from'
      '        CURRENCY_RATES cr'
      '      where'
      '        (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '        (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Contex' +
        'tDate))'
      '    ),'
      '    0,'
      '    1'
      '  ) as PLAN_IV_3_IS_INCOMPLETE,'
      ''
      '  Nvl2(mlmso.SETUP_DATE,'
      
        '    ( (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) ' +
        '*'
      '      ( select'
      '          (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /'
      '          dp.PARALLEL_PROCESS_COUNT'
      '        from'
      '          DEPT_PERIODS dp'
      '        where'
      '          (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '          (mlmso.SETUP_DATE between dp.BEGIN_DATE and dp.END_DAT' +
        'E)'
      '      ) /'
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '          (cr.RATE_DATE = mlmso.SETUP_DATE)'
      '      )'
      '    ),'
      '    null'
      '  ) as REAL_SETUP_INVESTED_VALUE_3,'
      ''
      '  Nvl2(mlmso.SETUP_DATE,'
      '    Nvl2('
      
        '      ( (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY' +
        ') *'
      '        ( select'
      '            (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /'
      '            dp.PARALLEL_PROCESS_COUNT'
      '          from'
      '            DEPT_PERIODS dp'
      '          where'
      '            (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '            (mlmso.SETUP_DATE between dp.BEGIN_DATE and dp.END_D' +
        'ATE)'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '            (cr.RATE_DATE = mlmso.SETUP_DATE)'
      '        )'
      '      ),'
      '      0,'
      '      1'
      '    ),'
      '    0'
      '  ) as REAL_SETUP_IV_3_IS_INCOMPLETE,'
      ''
      '  ( select'
      '      Sum('
      
        '        (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY' +
        ') *'
      '        ( select'
      '            (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /'
      '            dp.PARALLEL_PROCESS_COUNT'
      '          from'
      '            DEPT_PERIODS dp'
      '          where'
      '            (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      '            (om.OM_DATE between dp.BEGIN_DATE and dp.END_DATE)'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '            (cr.RATE_DATE = om.OM_DATE)'
      '        )'
      '      )'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_INVESTED_VALUE_3,'
      ''
      '  ( select'
      '      Decode(Count(*),'
      '        0, 0,'
      '        Max('
      '          Nvl2('
      
        '            ( (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QU' +
        'ANTITY) *'
      '              ( select'
      '                  (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /'
      '                  dp.PARALLEL_PROCESS_COUNT'
      '                from'
      '                  DEPT_PERIODS dp'
      '                where'
      '                  (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '                  (om.OM_DATE between dp.BEGIN_DATE and dp.END_D' +
        'ATE)'
      '              ) /'
      '              ( select'
      '                  cr.FIXING'
      '                from'
      '                  CURRENCY_RATES cr'
      '                where'
      '                  (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '                  (cr.RATE_DATE = om.OM_DATE)'
      '              )'
      '            ),'
      '            0,'
      '            1'
      '          )'
      '        )'
      '      )'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_IV_3_IS_INCOMPLETE,'
      ''
      '  To_Number(null) as WASTE_SETUP_INVESTED_VALUE_3,'
      '  0 as WASTE_SETUP_IV_3_IS_INCOMPLETE,'
      ''
      '  ( select'
      '      Sum('
      
        '        (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY' +
        ') *'
      '        ( select'
      '            (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /'
      '            dp.PARALLEL_PROCESS_COUNT'
      '          from'
      '            DEPT_PERIODS dp'
      '          where'
      '            (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      '            (om.OM_DATE between dp.BEGIN_DATE and dp.END_DATE)'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '            (cr.RATE_DATE = om.OM_DATE)'
      '        )'
      '      )'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.TO_DEPT_CODE is not null) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ) as WASTE_INVESTED_VALUE_3,'
      ''
      '  ( select'
      '      Decode(Count(*),'
      '        0, 0,'
      '        Max('
      '          Nvl2('
      
        '            ( (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QU' +
        'ANTITY) *'
      '              mlmso.EFFORT_COEF *'
      '              ( select'
      '                  (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /'
      '                  dp.PARALLEL_PROCESS_COUNT'
      '                from'
      '                  DEPT_PERIODS dp'
      '                where'
      '                  (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '                  (om.OM_DATE between dp.BEGIN_DATE and dp.END_D' +
        'ATE)'
      '              ) /'
      '              ( select'
      '                  cr.FIXING'
      '                from'
      '                  CURRENCY_RATES cr'
      '                where'
      '                  (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '                  (cr.RATE_DATE = om.OM_DATE)'
      '              )'
      '            ),'
      '            0,'
      '            1'
      '          )'
      '        )'
      '      )'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.TO_DEPT_CODE is not null) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ) as WASTE_IV_3_IS_INCOMPLETE,'
      ''
      '  ------------ INVESTED VALUE 4 ------------'
      '  To_Number(null) as PLAN_SETUP_INVESTED_VALUE_4,'
      '  0 as PLAN_SETUP_IV_4_IS_INCOMPLETE,'
      '  To_Number(null) as PLAN_INVESTED_VALUE_4,'
      '  0 as PLAN_IV_4_IS_INCOMPLETE,'
      '  To_Number(null) as REAL_SETUP_INVESTED_VALUE_4,'
      '  0 as REAL_SETUP_IV_4_IS_INCOMPLETE,'
      '  To_Number(null) as REAL_INVESTED_VALUE_4,'
      '  0 as REAL_IV_4_IS_INCOMPLETE,'
      '  To_Number(null) as WASTE_SETUP_INVESTED_VALUE_4,'
      '  0 as WASTE_SETUP_IV_4_IS_INCOMPLETE,'
      '  To_Number(null) as WASTE_INVESTED_VALUE_4,'
      '  0 as WASTE_IV_4_IS_INCOMPLETE,'
      '  '
      '  ------------ INVESTED VALUE 5 ------------'
      '  Nvl2(mlmso.SETUP_PROFESSION_CODE,'
      '    ( ( (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *'
      '        mlmso.SETUP_EFFORT_COEF *'
      '        ( select'
      '            pper.HOUR_PRICE'
      '          from'
      '            PROFESSION_PERIODS pper'
      '          where'
      
        '            (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE)' +
        ' and'
      
        '            (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betw' +
        'een pper.BEGIN_DATE and pper.END_DATE)'
      '        )'
      '      ) *'
      '      Coalesce('
      '        ( select'
      '            em.LABOUR_COST_COEF *'
      '            em.ORGANIZATION_COST_COEF'
      '          from'
      '            EARNING_MODIFIERS em'
      '          where'
      
        '            (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betw' +
        'een em.BEGIN_DATE and em.END_DATE)'
      '        ),'
      '        1'
      '      ) /'
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '          (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Cont' +
        'extDate))'
      '      )'
      '    ),'
      '    null'
      '  ) as PLAN_SETUP_INVESTED_VALUE_5,'
      ''
      '  Nvl2(mlmso.SETUP_PROFESSION_CODE,'
      '    Nvl2('
      '      ( (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *'
      '        mlmso.SETUP_EFFORT_COEF *'
      '        ( select'
      '            pper.HOUR_PRICE'
      '          from'
      '            PROFESSION_PERIODS pper'
      '          where'
      
        '            (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE)' +
        ' and'
      
        '            (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betw' +
        'een pper.BEGIN_DATE and pper.END_DATE)'
      '        ) *'
      '        Coalesce('
      '          ( select'
      '              em.LABOUR_COST_COEF *'
      '              em.ORGANIZATION_COST_COEF'
      '            from'
      '              EARNING_MODIFIERS em'
      '            where'
      
        '              (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) be' +
        'tween em.BEGIN_DATE and em.END_DATE)'
      '          ),'
      '          1'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '            (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Co' +
        'ntextDate))'
      '        )'
      '      ),'
      '      0,'
      '      1'
      '    ),'
      '    0'
      '  ) as PLAN_SETUP_IV_5_IS_INCOMPLETE,'
      ''
      
        '  ( (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTI' +
        'TY) *'
      '    mlmso.EFFORT_COEF *'
      '    ( select'
      '        pper.HOUR_PRICE'
      '      from'
      '        PROFESSION_PERIODS pper'
      '      where'
      '        (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and'
      
        '        (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) between ' +
        'pper.BEGIN_DATE and pper.END_DATE)'
      '    ) *'
      '    Coalesce('
      '      ( select'
      '          em.LABOUR_COST_COEF *'
      '          em.ORGANIZATION_COST_COEF'
      '        from'
      '          EARNING_MODIFIERS em'
      '        where'
      
        '          (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betwee' +
        'n em.BEGIN_DATE and em.END_DATE)'
      '      ),'
      '      1'
      '    ) /'
      '    ( select'
      '        cr.FIXING'
      '      from'
      '        CURRENCY_RATES cr'
      '      where'
      '        (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '        (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Contex' +
        'tDate))'
      '    ) '
      '  ) as PLAN_INVESTED_VALUE_5,'
      ''
      '  Nvl2('
      
        '    ( (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUAN' +
        'TITY) *'
      '      mlmso.EFFORT_COEF *'
      '      ( select'
      '          pper.HOUR_PRICE'
      '        from'
      '          PROFESSION_PERIODS pper'
      '        where'
      '          (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and'
      
        '          (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betwee' +
        'n pper.BEGIN_DATE and pper.END_DATE)'
      '      ) *'
      '      ( select'
      '          em.LABOUR_COST_COEF *'
      '          em.ORGANIZATION_COST_COEF'
      '        from'
      '          EARNING_MODIFIERS em'
      '        where'
      
        '          (Least(mlmso.TREATMENT_BEGIN_DATE, ContextDate) betwee' +
        'n em.BEGIN_DATE and em.END_DATE)'
      '      ) /'
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      
        '          (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, Cont' +
        'extDate))'
      '      )'
      '    ),'
      '    0,'
      '    1'
      '  ) as PLAN_IV_5_IS_INCOMPLETE,'
      ''
      '  Nvl2(mlmso.SETUP_DATE,'
      
        '    ( (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) ' +
        '*'
      '      mlmso.SETUP_EFFORT_COEF *'
      '      ( select'
      '          pper.HOUR_PRICE'
      '        from'
      '          PROFESSION_PERIODS pper'
      '        where'
      
        '          (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE) a' +
        'nd'
      
        '          (mlmso.SETUP_DATE between pper.BEGIN_DATE and pper.END' +
        '_DATE)'
      '      ) *'
      '      Coalesce('
      '        ( select'
      '            Max('
      '              em.LABOUR_COST_COEF *'
      '              em.ORGANIZATION_COST_COEF'
      '            )'
      '          from'
      '            EARNING_MODIFIERS em'
      '          where'
      
        '            (mlmso.SETUP_DATE between em.BEGIN_DATE and em.END_D' +
        'ATE)'
      '        ),'
      '        1'
      '      ) /'
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '          (cr.RATE_DATE = mlmso.SETUP_DATE)'
      '      )'
      '    ),'
      '    null'
      '  ) as REAL_SETUP_INVESTED_VALUE_5,'
      ''
      '  Nvl2(mlmso.SETUP_DATE,'
      '    Nvl2('
      
        '      ( (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY' +
        ') *'
      '        mlmso.SETUP_EFFORT_COEF *'
      '        ( select'
      '            pper.HOUR_PRICE'
      '          from'
      '            PROFESSION_PERIODS pper'
      '          where'
      
        '            (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE)' +
        ' and'
      
        '            (mlmso.SETUP_DATE between pper.BEGIN_DATE and pper.E' +
        'ND_DATE)'
      '        ) *'
      '        Coalesce('
      '          ( select'
      '              Max('
      '                em.LABOUR_COST_COEF *'
      '                em.ORGANIZATION_COST_COEF'
      '              )'
      '            from'
      '              EARNING_MODIFIERS em'
      '            where'
      
        '              (mlmso.SETUP_DATE between em.BEGIN_DATE and em.END' +
        '_DATE)'
      '          ),'
      '          1'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '            (cr.RATE_DATE = mlmso.SETUP_DATE)'
      '        )'
      '      ),'
      '      0,'
      '      1'
      '    ),'
      '    0'
      '  ) as REAL_SETUP_IV_5_IS_INCOMPLETE,'
      ''
      '  ( select'
      '      Sum('
      
        '        (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY' +
        ') *'
      '        mlmso.EFFORT_COEF *'
      '        ( select'
      '            pper.HOUR_PRICE'
      '          from'
      '            PROFESSION_PERIODS pper'
      '          where'
      '            (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and'
      
        '            (om.OM_DATE between pper.BEGIN_DATE and pper.END_DAT' +
        'E)'
      '        ) *'
      '        Coalesce('
      '          ( select'
      '              Max('
      '                em.LABOUR_COST_COEF *'
      '                em.ORGANIZATION_COST_COEF'
      '              )'
      '            from'
      '              EARNING_MODIFIERS em'
      '            where'
      '              (om.OM_DATE between em.BEGIN_DATE and em.END_DATE)'
      '          ),'
      '          1'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '            (cr.RATE_DATE = om.OM_DATE)'
      '        )'
      '      )'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_INVESTED_VALUE_5,'
      ''
      '  ( select'
      '      Decode(Count(*),'
      '        0, 0,'
      '        Max('
      '          Nvl2('
      
        '            ( (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QU' +
        'ANTITY) *'
      '              mlmso.EFFORT_COEF *'
      '              ( select'
      '                  pper.HOUR_PRICE'
      '                from'
      '                  PROFESSION_PERIODS pper'
      '                where'
      
        '                  (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE)' +
        ' and'
      
        '                  (om.OM_DATE between pper.BEGIN_DATE and pper.E' +
        'ND_DATE)'
      '              ) *'
      '              Coalesce('
      '                ( select'
      '                    Max('
      '                      em.LABOUR_COST_COEF *'
      '                      em.ORGANIZATION_COST_COEF'
      '                    )'
      '                  from'
      '                    EARNING_MODIFIERS em'
      '                  where'
      
        '                    (om.OM_DATE between em.BEGIN_DATE and em.END' +
        '_DATE)'
      '                ),'
      '                1'
      '              ) /'
      '              ( select'
      '                  cr.FIXING'
      '                from'
      '                  CURRENCY_RATES cr'
      '                where'
      '                  (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '                  (cr.RATE_DATE = om.OM_DATE)'
      '              )'
      '            ),'
      '            0,'
      '            1'
      '          )'
      '        )'
      '      )'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_IV_5_IS_INCOMPLETE,'
      ''
      '  To_Number(null) as WASTE_SETUP_INVESTED_VALUE_5,'
      '  0 as WASTE_SETUP_IV_5_IS_INCOMPLETE,'
      ''
      '  ( select'
      '      Sum('
      
        '        (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY' +
        ') *'
      '        mlmso.EFFORT_COEF *'
      '        ( select'
      '            pper.HOUR_PRICE'
      '          from'
      '            PROFESSION_PERIODS pper'
      '          where'
      '            (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and'
      
        '            (om.OM_DATE between pper.BEGIN_DATE and pper.END_DAT' +
        'E)'
      '        ) *'
      '        Coalesce('
      '          ( select'
      '              Max('
      '                em.LABOUR_COST_COEF *'
      '                em.ORGANIZATION_COST_COEF'
      '              )'
      '            from'
      '              EARNING_MODIFIERS em'
      '            where'
      '              (om.OM_DATE between em.BEGIN_DATE and em.END_DATE)'
      '          ),'
      '          1'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '            (cr.RATE_DATE = om.OM_DATE)'
      '        )'
      '      )'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.TO_DEPT_CODE is not null) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ) as WASTE_INVESTED_VALUE_5,'
      ''
      '  ( select'
      '      Decode(Count(*),'
      '        0, 0,'
      '        Max('
      '          Nvl2('
      
        '            ( (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QU' +
        'ANTITY) *'
      '              mlmso.EFFORT_COEF *'
      '              ( select'
      '                  pper.HOUR_PRICE'
      '                from'
      '                  PROFESSION_PERIODS pper'
      '                where'
      
        '                  (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE)' +
        ' and'
      
        '                  (om.OM_DATE between pper.BEGIN_DATE and pper.E' +
        'ND_DATE)'
      '              ) *'
      '              Coalesce('
      '                ( select'
      '                    Max('
      '                      em.LABOUR_COST_COEF *'
      '                      em.ORGANIZATION_COST_COEF'
      '                    )'
      '                  from'
      '                    EARNING_MODIFIERS em'
      '                  where'
      
        '                    (om.OM_DATE between em.BEGIN_DATE and em.END' +
        '_DATE)'
      '                ),'
      '                1'
      '              ) /'
      '              ( select'
      '                  cr.FIXING'
      '                from'
      '                  CURRENCY_RATES cr'
      '                where'
      '                  (cr.CURRENCY_CODE = :CURRENCY_CODE) and'
      '                  (cr.RATE_DATE = om.OM_DATE)'
      '              )'
      '            ),'
      '            0,'
      '            1'
      '          )'
      '        )'
      '      )'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.TO_DEPT_CODE is not null) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ) as WASTE_IV_5_IS_INCOMPLETE'
      ''
      'from'
      '  MLMS_OPERATIONS mlmso'
      ''
      'where'
      '  (mlmso.MLMS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANCH_CODE) and'
      '  (mlmso.MLMS_OBJECT_CODE = :MLMS_OBJECT_CODE) and'
      '  (mlmso.OPERATION_TYPE_CODE = 2) and'
      '  (mlmso.MLMS_OPERATION_VARIANT_NO >= 0)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 744
    Top = 56
    object qryMlmsoInvestedValuesMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
    end
    object qryMlmsoInvestedValuesMLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_CODE'
    end
    object qryMlmsoInvestedValuesPLAN_SETUP_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'PLAN_SETUP_INVESTED_VALUE_2'
    end
    object qryMlmsoInvestedValuesPLAN_SETUP_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_SETUP_IV_2_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesPLAN_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_2'
    end
    object qryMlmsoInvestedValuesPLAN_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_2_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesREAL_SETUP_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'REAL_SETUP_INVESTED_VALUE_2'
    end
    object qryMlmsoInvestedValuesREAL_SETUP_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_SETUP_IV_2_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesREAL_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_2'
    end
    object qryMlmsoInvestedValuesREAL_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_2_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesWASTE_SETUP_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'WASTE_SETUP_INVESTED_VALUE_2'
    end
    object qryMlmsoInvestedValuesWASTE_SETUP_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_SETUP_IV_2_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesWASTE_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_2'
    end
    object qryMlmsoInvestedValuesWASTE_IV_2_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_2_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesPLAN_SETUP_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'PLAN_SETUP_INVESTED_VALUE_3'
    end
    object qryMlmsoInvestedValuesPLAN_SETUP_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_SETUP_IV_3_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesPLAN_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_3'
    end
    object qryMlmsoInvestedValuesPLAN_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_3_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesREAL_SETUP_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'REAL_SETUP_INVESTED_VALUE_3'
    end
    object qryMlmsoInvestedValuesREAL_SETUP_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_SETUP_IV_3_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesREAL_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_3'
    end
    object qryMlmsoInvestedValuesREAL_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_3_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesWASTE_SETUP_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'WASTE_SETUP_INVESTED_VALUE_3'
    end
    object qryMlmsoInvestedValuesWASTE_SETUP_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_SETUP_IV_3_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesWASTE_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_3'
    end
    object qryMlmsoInvestedValuesWASTE_IV_3_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_3_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesPLAN_SETUP_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'PLAN_SETUP_INVESTED_VALUE_4'
    end
    object qryMlmsoInvestedValuesPLAN_SETUP_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_SETUP_IV_4_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesPLAN_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_4'
    end
    object qryMlmsoInvestedValuesPLAN_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_4_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesREAL_SETUP_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'REAL_SETUP_INVESTED_VALUE_4'
    end
    object qryMlmsoInvestedValuesREAL_SETUP_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_SETUP_IV_4_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesREAL_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_4'
    end
    object qryMlmsoInvestedValuesREAL_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_4_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesWASTE_SETUP_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'WASTE_SETUP_INVESTED_VALUE_4'
    end
    object qryMlmsoInvestedValuesWASTE_SETUP_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_SETUP_IV_4_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesWASTE_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_4'
    end
    object qryMlmsoInvestedValuesWASTE_IV_4_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_4_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesPLAN_SETUP_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'PLAN_SETUP_INVESTED_VALUE_5'
    end
    object qryMlmsoInvestedValuesPLAN_SETUP_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_SETUP_IV_5_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesPLAN_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'PLAN_INVESTED_VALUE_5'
    end
    object qryMlmsoInvestedValuesPLAN_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'PLAN_IV_5_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesREAL_SETUP_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'REAL_SETUP_INVESTED_VALUE_5'
    end
    object qryMlmsoInvestedValuesREAL_SETUP_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_SETUP_IV_5_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesREAL_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'REAL_INVESTED_VALUE_5'
    end
    object qryMlmsoInvestedValuesREAL_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'REAL_IV_5_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesWASTE_SETUP_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'WASTE_SETUP_INVESTED_VALUE_5'
    end
    object qryMlmsoInvestedValuesWASTE_SETUP_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_SETUP_IV_5_IS_INCOMPLETE'
    end
    object qryMlmsoInvestedValuesWASTE_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'WASTE_INVESTED_VALUE_5'
    end
    object qryMlmsoInvestedValuesWASTE_IV_5_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'WASTE_IV_5_IS_INCOMPLETE'
    end
  end
  object prvMlmsoInvestedValues: TDataSetProvider
    DataSet = qryMlmsoInvestedValues
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 744
    Top = 8
  end
  object qryUpdSaleInStoreDeal: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      
        '  ModelUtils.CalcSaleInStoreDealsTotalPrice(:BND_PROCESS_OBJECT_' +
        'BRANCH_CODE, :BND_PROCESS_OBJECT_CODE);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 544
    Top = 520
  end
  object qryUpdateModelPsdDepts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      
        '  ModelUtils.UpdateModelPsdDepts(:ML_OBJECT_BRANCH_CODE, :ML_OBJ' +
        'ECT_CODE);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 392
    Top = 528
  end
end
