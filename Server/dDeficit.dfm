inherited dmDeficit: TdmDeficit
  Height = 262
  Width = 415
  object qryUncoveredPSDSingle: TAbmesSQLQuery
    BeforeOpen = qryUncoveredPSDSingleBeforeOpen
    AfterClose = qryUncoveredPSDSingleAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  psd.PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  psd.PLANNED_STORE_DEAL_CODE,'
      '  ( select'
      '      (d.CUSTOM_CODE || '#39'/'#39' || psd.PLANNED_STORE_DEAL_CODE)'
      '    from'
      '      DEPTS d'
      '    where'
      '      (psd.PLANNED_STORE_DEAL_BRANCH_CODE = d.DEPT_CODE)'
      '  ) as PSD_ID,'
      ''
      '  psd.COMPLETED_QUANTITY,'
      '  psd.COMPLETED_ACCOUNT_QUANTITY,'
      '  psd.REMAINING_QUANTITY as INCOMPLETED_QUANTITY,'
      
        '  psd.REMAINING_ACCOUNT_QUANTITY as INCOMPLETED_ACCOUNT_QUANTITY' +
        ','
      ''
      '  ( select'
      '      tupsd.UNCOVERED_QUANTITY'
      '    from'
      '      TEMP_UNCOVERED_PSD tupsd'
      '    where'
      
        '      (tupsd.PLANNED_STORE_DEAL_BRANCH_CODE = psd.PLANNED_STORE_' +
        'DEAL_BRANCH_CODE) and'
      
        '      (tupsd.PLANNED_STORE_DEAL_CODE = psd.PLANNED_STORE_DEAL_CO' +
        'DE)'
      '  ) as UNCOVERED_QUANTITY,'
      ''
      '  ('
      '    ( select'
      '        tupsd.UNCOVERED_QUANTITY'
      '      from'
      '        TEMP_UNCOVERED_PSD tupsd'
      '      where'
      
        '        (tupsd.PLANNED_STORE_DEAL_BRANCH_CODE = psd.PLANNED_STOR' +
        'E_DEAL_BRANCH_CODE) and'
      
        '        (tupsd.PLANNED_STORE_DEAL_CODE = psd.PLANNED_STORE_DEAL_' +
        'CODE)'
      '    ) *'
      '    p.ACCOUNT_MEASURE_COEF'
      '  ) as UNCOVERED_ACCOUNT_QUANTITY,'
      ''
      '  psd.PLANNED_STORE_DEAL_TYPE_CODE,'
      '  ( select'
      '      psdt.PLANNED_STORE_DEAL_TYPE_ABBREV'
      '    from'
      '      PLANNED_STORE_DEAL_TYPES psdt'
      '    where'
      
        '      (psd.PLANNED_STORE_DEAL_TYPE_CODE = psdt.PLANNED_STORE_DEA' +
        'L_TYPE_CODE)'
      '  ) as PLANNED_STORE_DEAL_TYPE_ABBREV,'
      '  psd.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  psd.BND_PROCESS_OBJECT_CODE,'
      '  psd.BND_PROCESS_CODE,'
      '  ( select'
      '      po.PROCESS_OBJECT_CLASS_CODE'
      '    from'
      '      PROCESS_OBJECTS po'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = po.PROCESS_OBJECT_CODE)'
      '  ) as BND_PROCESS_OBJECT_CLASS_CODE,'
      '  ( select'
      '      proc.PROCESS_ABBREV'
      '    from'
      '      PROCESSES proc'
      '    where'
      '      (psd.BND_PROCESS_CODE = proc.PROCESS_CODE) '
      '  ) as BND_PROCESS_ABBREV,'
      '  ('
      '    select'
      '      po.PROCESS_OBJECT_IDENTIFIER'
      '    from'
      '      PROCESS_OBJECTS po'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = po.PROCESS_OBJECT_CODE)'
      '  ) as PROCESS_OBJECT_IDENTIFIER,'
      ''
      '  psd.IN_OUT,'
      '  psd.STORE_DEAL_BEGIN_DATE,'
      '  psd.STORE_DEAL_END_DATE,'
      ''
      '  psd.PRIORITY_CODE,'
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      PRIORITIES p'
      '    where'
      '      (p.PRIORITY_CODE = psd.PRIORITY_CODE)'
      '  ) as PRIORITY_NO,'
      '  ( select'
      '      p.PRIORITY_NO || '#39'    '#39' || p.PRIORITY_NAME'
      '    from'
      '      PRIORITIES p'
      '    where'
      '      (p.PRIORITY_CODE = psd.PRIORITY_CODE)'
      '  ) as PRIORITY_FULL_NAME,'
      ''
      '  psd.STORE_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = psd.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as STORE_NAME,'
      ''
      '  psd.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (p.MEASURE_CODE = m.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (p.ACCOUNT_MEASURE_CODE = m.MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      ''
      
        '  (psd.QUANTITY * %PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[psd.PR' +
        'ODUCT_CODE ~ ContextDate]) as TOTAL_PRICE_SC,'
      '  '
      '  Nvl2(psd.CLOSE_EMPLOYEE_CODE, 1, 0) as IS_DONE,'
      '  Nvl2(psd.ANNUL_EMPLOYEE_CODE, 1, 0) as IS_ANNULED,'
      ''
      '  ( select'
      '      mll.DETAIL_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE)'
      '  ) as DETAIL_CODE,'
      '  ( select'
      '      p.NAME'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE)'
      '  ) as DETAIL_NAME,'
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE)'
      '  ) as DETAIL_NO,'
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE)'
      '  ) as DETAIL_HAS_DOCUMENTATION,'
      '  ( select'
      '      p.DOC_BRANCH_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE)'
      '  ) as DETAIL_DOC_BRANCH_CODE,'
      '  ( select'
      '      p.DOC_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE)'
      '  ) as DETAIL_DOC_CODE,'
      ''
      '  ( select'
      '      s.PRODUCT_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)'
      '  ) as SALE_PRODUCT_CODE,'
      '  ( select'
      '      p.NAME'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SALE_PRODUCT_NAME,'
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SALE_PRODUCT_NO,'
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SALE_PRODUCT_HAS_DOCUMENTATION,'
      '  ( select'
      '      p.DOC_BRANCH_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SALE_PRODUCT_DOC_BRANCH_CODE,'
      '  ( select'
      '      p.DOC_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SALE_PRODUCT_DOC_CODE,'
      ''
      '  ( select'
      '      ml.ENTER_RESULT_STORE_BEGIN_DATE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE)'
      '  ) as ENTER_RESULT_STORE_BEGIN_DATE,'
      '  ( select'
      '      ml.ENTER_RESULT_STORE_END_DATE'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE)'
      '  ) as ENTER_RESULT_STORE_END_DATE,'
      '  ( select'
      '      Nvl2(ml.LIMITING_EMPLOYEE_CODE, 1, 0)'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE)'
      '  ) as IS_MODEL_LIMITING,'
      '  ( select'
      '      mll.MLL_OBJECT_BRANCH_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '  ) as MLL_OBJECT_BRANCH_CODE,'
      '  ( select'
      '      mll.MLL_OBJECT_CODE'
      '    from'
      '      MATERIAL_LIST_LINES mll'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '  ) as MLL_OBJECT_CODE,'
      '  ( select'
      '      mllc.MATERIAL_LIST_LINE_CHANGE_NO'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      MATERIAL_LIST_LINE_CHANGES mllc'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = mllc.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mll.MLL_OBJECT_CODE = mllc.MLL_OBJECT_CODE) and'
      '      (mllc.REPLY_ACCEPT_EMPLOYEE_CODE is null)'
      '  ) as MATERIAL_LIST_LINE_CHANGE_NO,'
      '  ( select'
      '      Nvl2(mllc.MLL_OBJECT_CODE,'
      '        Nvl2(mllc.REPLY_EMPLOYEE_CODE, 2, 1),'
      '        0'
      '      )'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      MATERIAL_LIST_LINE_CHANGES mllc'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = mllc.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mll.MLL_OBJECT_CODE = mllc.MLL_OBJECT_CODE) and'
      '      (mllc.REPLY_ACCEPT_EMPLOYEE_CODE is null)'
      '  ) as MLL_CHANGE_STATUS,'
      ''
      '  psd.CREATE_DATE,'
      '  psd.CREATE_TIME,'
      '  psd.CREATE_EMPLOYEE_CODE,'
      '  ('
      '    select'
      '      (e.ABBREV || '#39' - '#39' || e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = psd.CREATE_EMPLOYEE_CODE)'
      '  ) as CREATE_EMPLOYEE_NAME,'
      '  psd.CHANGE_DATE,'
      '  psd.CHANGE_TIME,'
      '  psd.CHANGE_EMPLOYEE_CODE,'
      '  ('
      '    select'
      '      (e.ABBREV || '#39' - '#39' || e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = psd.CHANGE_EMPLOYEE_CODE)'
      '  ) as CHANGE_EMPLOYEE_NAME,'
      '  psd.CLOSE_DATE,'
      '  psd.CLOSE_TIME,'
      '  psd.CLOSE_EMPLOYEE_CODE,'
      '  ('
      '    select'
      '      (e.ABBREV || '#39' - '#39' || e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = psd.CLOSE_EMPLOYEE_CODE)'
      '  ) as CLOSE_EMPLOYEE_NAME,'
      '  psd.ANNUL_DATE,'
      '  psd.ANNUL_TIME,'
      '  psd.ANNUL_EMPLOYEE_CODE,'
      '  ('
      '    select'
      '      (e.ABBREV || '#39' - '#39' || e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = psd.ANNUL_EMPLOYEE_CODE)'
      '  ) as ANNUL_EMPLOYEE_NAME,'
      ''
      '  Coalesce(('
      '    select'
      '      Sum(ps.MIN_QUANTITY)'
      '    from'
      '      PRODUCT_STORES ps'
      '    where'
      '      (ps.PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '      (ps.STORE_CODE = psd.STORE_CODE) and'
      
        '      (psd.STORE_DEAL_END_DATE between ps.BEGIN_DATE and Coalesc' +
        'e(ps.END_DATE, psd.STORE_DEAL_END_DATE)) '
      '    )'
      '    ,'
      '    0'
      '  ) as MIN_QUANTITY,'
      ''
      '  ( p.ACCOUNT_MEASURE_COEF *'
      '    Coalesce(('
      '      select'
      '        Sum(ps.MIN_QUANTITY)'
      '      from'
      '        PRODUCT_STORES ps'
      '      where'
      '        (ps.PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '        (ps.STORE_CODE = psd.STORE_CODE) and'
      
        '        (psd.STORE_DEAL_END_DATE between ps.BEGIN_DATE and Coale' +
        'sce(ps.END_DATE, psd.STORE_DEAL_END_DATE))'
      '      )'
      '      ,'
      '      0'
      '    )'
      '  ) as MIN_ACCOUNT_QUANTITY,'
      ''
      '  ( select'
      '      Nvl2(srg.SALE_GROUP_OBJECT_CODE,'
      '        ( select'
      '            d.CUSTOM_CODE || '#39' / '#39' || srg.REQUEST_NO'
      '          from'
      '            DEPTS d'
      '          where'
      '            (d.DEPT_CODE = srg.REQUEST_BRANCH_CODE)'
      '        ),'
      '        ( select'
      '            po.PROCESS_OBJECT_IDENTIFIER'
      '          from'
      '            PROCESS_OBJECTS po'
      '          where'
      
        '            (po.PROCESS_OBJECT_BRANCH_CODE = fo.BND_PROCESS_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '            (po.PROCESS_OBJECT_CODE = fo.BND_PROCESS_OBJECT_CODE' +
        ')'
      '        )'
      '      )'
      '      '
      '    from'
      '      REAL_FIN_MODEL_LINES rfml,'
      '      FIN_ORDERS fo,'
      '      SALE_REQUEST_GROUPS srg'
      ''
      '    where'
      
        '      (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      '      (fo.FIN_ORDER_CODE = rfml.FIN_ORDER_CODE) and'
      '      (fo.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '      (fo.BND_PROCESS_OBJECT_BRANCH_CODE = srg.SALE_GROUP_OBJECT' +
        '_BRANCH_CODE(+)) and'
      
        '      (fo.BND_PROCESS_OBJECT_CODE = srg.SALE_GROUP_OBJECT_CODE(+' +
        ')) '
      '  ) as RFML_BND_OBJECT_ID,'
      ''
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      REAL_FIN_MODEL_LINES rfml,'
      '      FIN_ORDERS fo,'
      '      COMPANIES c'
      '    where'
      
        '      (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      '      (fo.FIN_ORDER_CODE = rfml.FIN_ORDER_CODE) and'
      '      (fo.ANNUL_EMPLOYEE_CODE is null) and'
      '      (c.COMPANY_CODE = fo.PARTNER_CODE)'
      '  ) as RFML_PARTNER_SHORT_NAME,'
      ''
      '  ( select'
      '      fo.BASE_QUANTITY * rfml.LINE_QUANTITY_PERCENT'
      '    from'
      '      REAL_FIN_MODEL_LINES rfml,'
      '      FIN_ORDERS fo'
      '    where'
      
        '      (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      '      (fo.FIN_ORDER_CODE = rfml.FIN_ORDER_CODE) and'
      '      (fo.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as RFML_QUANTITY,'
      ''
      
        '  Cast(%RFML_DOCUMENT_IDENTIFIER[psd.BND_PROCESS_OBJECT_BRANCH_C' +
        'ODE ~ psd.BND_PROCESS_OBJECT_CODE] as VarChar2(50 char)) as RFML' +
        '_DOCUMENT_IDENTIFIER,'
      
        '  %RFML_DOCUMENT_DATE[psd.BND_PROCESS_OBJECT_BRANCH_CODE ~ psd.B' +
        'ND_PROCESS_OBJECT_CODE] as RFML_DOCUMENT_DATE'
      ''
      'from'
      '  PLANNED_STORE_DEALS psd,'
      '  PRODUCTS p'
      ''
      'where'
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        TEMP_UNCOVERED_PSD tupsd'
      '      where'
      
        '        (psd.PLANNED_STORE_DEAL_BRANCH_CODE = tupsd.PLANNED_STOR' +
        'E_DEAL_BRANCH_CODE) and'
      
        '        (psd.PLANNED_STORE_DEAL_CODE = tupsd.PLANNED_STORE_DEAL_' +
        'CODE)'
      '    )'
      '  ) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      '  '
      '  (psd.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (psd.IS_ACTIVE = 1) and'
      
        '  (psd.PLANNED_STORE_DEAL_TYPE_CODE <= MiscUtils.LargeZero(2)) a' +
        'nd  -- da izlujem orakala da izpolzva indexa po IS_ACTIVE'
      ''
      '  %STORE_DEALS_BND_PROCESS_CONDITION[psd]'
      ''
      'order by'
      '  PSD_ID')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[psd.PRODUCT_CODE ~ ContextD' +
          'ate]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'RFML_DOCUMENT_IDENTIFIER[psd.BND_PROCESS_OBJECT_BRANCH_CODE ~ ps' +
          'd.BND_PROCESS_OBJECT_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftString
        Name = 
          'RFML_DOCUMENT_DATE[psd.BND_PROCESS_OBJECT_BRANCH_CODE ~ psd.BND_' +
          'PROCESS_OBJECT_CODE]'
        ParamType = ptInput
        Value = 'Trunc(SysDate)'
      end
      item
        DataType = ftWideString
        Name = 'STORE_DEALS_BND_PROCESS_CONDITION[psd]'
        ParamType = ptInput
        Value = '(0=0)'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'MAX_PSD_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_COUNT'
        ParamType = ptInput
        Value = '5'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_PL_SECOND_LEVEL'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_TOWARDS_RESERVE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BND_PROCESS'
        ParamType = ptInput
      end>
    Left = 160
    Top = 64
    object qryUncoveredPSDSinglePLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
    end
    object qryUncoveredPSDSinglePLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
    end
    object qryUncoveredPSDSinglePSD_ID: TAbmesWideStringField
      FieldName = 'PSD_ID'
      Size = 81
    end
    object qryUncoveredPSDSingleCOMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_QUANTITY'
    end
    object qryUncoveredPSDSingleCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_ACCOUNT_QUANTITY'
    end
    object qryUncoveredPSDSingleINCOMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'INCOMPLETED_QUANTITY'
    end
    object qryUncoveredPSDSingleINCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'INCOMPLETED_ACCOUNT_QUANTITY'
    end
    object qryUncoveredPSDSinglePLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_TYPE_CODE'
    end
    object qryUncoveredPSDSinglePLANNED_STORE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PLANNED_STORE_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object qryUncoveredPSDSingleBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryUncoveredPSDSingleBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object qryUncoveredPSDSingleBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object qryUncoveredPSDSingleBND_PROCESS_OBJECT_CLASS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CLASS_CODE'
    end
    object qryUncoveredPSDSingleBND_PROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PROCESS_ABBREV'
      Size = 100
    end
    object qryUncoveredPSDSinglePROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 100
    end
    object qryUncoveredPSDSingleIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object qryUncoveredPSDSingleSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_BEGIN_DATE'
    end
    object qryUncoveredPSDSingleSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_END_DATE'
    end
    object qryUncoveredPSDSingleSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryUncoveredPSDSingleSTORE_NAME: TAbmesWideStringField
      FieldName = 'STORE_NAME'
      Size = 46
    end
    object qryUncoveredPSDSinglePRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryUncoveredPSDSinglePRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryUncoveredPSDSinglePRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryUncoveredPSDSinglePRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryUncoveredPSDSingleMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryUncoveredPSDSingleACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryUncoveredPSDSingleHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryUncoveredPSDSingleDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryUncoveredPSDSingleDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryUncoveredPSDSingleMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryUncoveredPSDSingleACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryUncoveredPSDSingleTOTAL_PRICE_SC: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_SC'
    end
    object qryUncoveredPSDSingleIS_DONE: TAbmesFloatField
      FieldName = 'IS_DONE'
    end
    object qryUncoveredPSDSingleIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
    end
    object qryUncoveredPSDSingleDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qryUncoveredPSDSingleDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryUncoveredPSDSingleDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qryUncoveredPSDSingleDETAIL_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOCUMENTATION'
    end
    object qryUncoveredPSDSingleDETAIL_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DETAIL_DOC_BRANCH_CODE'
    end
    object qryUncoveredPSDSingleDETAIL_DOC_CODE: TAbmesFloatField
      FieldName = 'DETAIL_DOC_CODE'
    end
    object qryUncoveredPSDSingleSALE_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_CODE'
    end
    object qryUncoveredPSDSingleSALE_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SALE_PRODUCT_NAME'
      Size = 100
    end
    object qryUncoveredPSDSingleSALE_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_NO'
    end
    object qryUncoveredPSDSingleSALE_PRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_HAS_DOCUMENTATION'
    end
    object qryUncoveredPSDSingleSALE_PRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_DOC_BRANCH_CODE'
    end
    object qryUncoveredPSDSingleSALE_PRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_DOC_CODE'
    end
    object qryUncoveredPSDSingleENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_RESULT_STORE_BEGIN_DATE'
    end
    object qryUncoveredPSDSingleENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_RESULT_STORE_END_DATE'
    end
    object qryUncoveredPSDSingleIS_MODEL_LIMITING: TAbmesFloatField
      FieldName = 'IS_MODEL_LIMITING'
    end
    object qryUncoveredPSDSingleMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryUncoveredPSDSingleMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object qryUncoveredPSDSingleMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField
      FieldName = 'MATERIAL_LIST_LINE_CHANGE_NO'
    end
    object qryUncoveredPSDSingleMLL_CHANGE_STATUS: TAbmesFloatField
      FieldName = 'MLL_CHANGE_STATUS'
    end
    object qryUncoveredPSDSingleCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryUncoveredPSDSingleCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryUncoveredPSDSingleCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryUncoveredPSDSingleCREATE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_NAME'
      Size = 49
    end
    object qryUncoveredPSDSingleCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryUncoveredPSDSingleCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryUncoveredPSDSingleCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryUncoveredPSDSingleCHANGE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'CHANGE_EMPLOYEE_NAME'
      Size = 49
    end
    object qryUncoveredPSDSingleCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryUncoveredPSDSingleCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object qryUncoveredPSDSingleCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryUncoveredPSDSingleCLOSE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'CLOSE_EMPLOYEE_NAME'
      Size = 49
    end
    object qryUncoveredPSDSingleANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryUncoveredPSDSingleANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryUncoveredPSDSingleANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryUncoveredPSDSingleANNUL_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'ANNUL_EMPLOYEE_NAME'
      Size = 49
    end
    object qryUncoveredPSDSingleMIN_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_QUANTITY'
    end
    object qryUncoveredPSDSingleMIN_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_ACCOUNT_QUANTITY'
    end
    object qryUncoveredPSDSinglePRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object qryUncoveredPSDSinglePRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 94
    end
    object qryUncoveredPSDSinglePRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qryUncoveredPSDSingleRFML_BND_OBJECT_ID: TAbmesWideStringField
      FieldName = 'RFML_BND_OBJECT_ID'
      Size = 128
    end
    object qryUncoveredPSDSingleRFML_PARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'RFML_PARTNER_SHORT_NAME'
    end
    object qryUncoveredPSDSingleRFML_QUANTITY: TAbmesFloatField
      FieldName = 'RFML_QUANTITY'
    end
    object qryUncoveredPSDSingleRFML_DOCUMENT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'RFML_DOCUMENT_IDENTIFIER'
      Size = 50
    end
    object qryUncoveredPSDSingleRFML_DOCUMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'RFML_DOCUMENT_DATE'
    end
    object qryUncoveredPSDSingleUNCOVERED_QUANTITY: TAbmesFloatField
      FieldName = 'UNCOVERED_QUANTITY'
    end
    object qryUncoveredPSDSingleUNCOVERED_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'UNCOVERED_ACCOUNT_QUANTITY'
    end
  end
  object prvUncoveredPSDSingle: TDataSetProvider
    DataSet = qryUncoveredPSDSingle
    Options = [poIncFieldProps]
    Left = 160
    Top = 16
  end
  object qryGetLastPSDDate: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  Max(psd.STORE_DEAL_END_DATE) as MAX_PSD_DATE'
      'from'
      '  PLANNED_STORE_DEALS psd')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 160
    Top = 128
    object qryGetLastPSDDateMAX_PSD_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAX_PSD_DATE'
    end
  end
  object qryQuantityDeficit: TAbmesSQLQuery
    BeforeOpen = qryQuantityDeficitBeforeOpen
    AfterClose = qryQuantityDeficitAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_COUNT'
        ParamType = ptInput
        Value = '7'
      end
      item
        DataType = ftFloat
        Name = 'HAS_DEFICIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DEFICIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DEFICIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DEFICIT_RSV_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DEFICIT_RSV_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DEFICIT_RSV_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DEALS_IN_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DEALS_IN_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DEALS_IN_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DEALS_OUT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DEALS_OUT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DEALS_OUT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  /*+ INDEX(p) */'
      '  p.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_CUSTOM_CODE,'
      '  p.PARTNER_PRODUCT_NAMES as PRODUCT_OTHER_NAME,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOCUMENTATION,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      ''
      '  p.ACCOUNT_MEASURE_COEF,'
      ''
      '  ( select'
      '      pp.MIN_ORDER_QUANTITY'
      '    from'
      '      PRODUCT_PERIODS pp'
      '    where'
      '      (pp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (ContextDate between pp.BEGIN_DATE and pp.END_DATE)'
      '  ) as MIN_ORDER_QUANTITY,'
      ''
      '  ( select'
      '      pp.MAX_ORDER_QUANTITY'
      '    from'
      '      PRODUCT_PERIODS pp'
      '    where'
      '      (pp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (ContextDate between pp.BEGIN_DATE and pp.END_DATE)'
      '  ) as MAX_ORDER_QUANTITY,'
      ''
      '  Min(Decode(t.THE_NO, 0, t.QUANTITY)) as INITIAL_QUANTITY,'
      
        '  Min(Decode(t.THE_NO, 0, t.ACC_QUANTITY)) as INITIAL_ACCOUNT_QU' +
        'ANTITY,'
      
        '  Min(Decode(t.THE_NO, 0, t.QUANTITY_RSV)) as INITIAL_QUANTITY_R' +
        'SV,'
      
        '  Min(Decode(t.THE_NO, 0, t.ACC_QUANTITY_RSV)) as INITIAL_ACCOUN' +
        'T_QUANTITY_RSV,'
      ''
      '  %FIELDS_BY_DATE_UNITS_SQL'
      ''
      'from'
      '  PRODUCTS p,'
      '  ( select'
      '      t.THE_DATE,'
      '      t.PRODUCT_CODE,'
      '      Mod(rownum-1, :TIME_UNIT_COUNT + 2) as THE_NO,'
      '      t.QUANTITY,'
      '      t.ACC_QUANTITY,'
      '      t.QUANTITY_IN,'
      '      t.QUANTITY_OUT,'
      '      t.ACC_QUANTITY_IN,'
      '      t.ACC_QUANTITY_OUT,'
      '      t.PRICE,'
      '      t.PRICE_IN,'
      '      t.PRICE_OUT,'
      '      t.QUANTITY_RSV,'
      '      t.ACC_QUANTITY_RSV,'
      '      t.PRICE_RSV,'
      '      t.DEFICIT_QUANTITY,'
      '      t.ACC_DEFICIT_QUANTITY,'
      '      t.DEFICIT_PRICE,'
      '      t.DEFICIT_QUANTITY_RSV,'
      '      t.ACC_DEFICIT_QUANTITY_RSV,'
      '      t.DEFICIT_PRICE_RSV,'
      '      t.MIN_QUANTITY,'
      '      t.ACC_MIN_QUANTITY,'
      '      t.MIN_PRICE'
      '    from'
      '      ( select'
      '          t.THE_DATE,'
      '          t.PRODUCT_CODE,'
      
        '          (t.PLAN_QUANTITY + t.NEGATIVE_PLAN_QUANTITY) as QUANTI' +
        'TY,'
      
        '          (t.ACC_PLAN_QUANTITY + t.ACC_NEGATIVE_PLAN_QUANTITY) a' +
        's ACC_QUANTITY,'
      '          t.PLAN_QUANTITY_IN as QUANTITY_IN,'
      '          t.PLAN_QUANTITY_OUT as QUANTITY_OUT,'
      '          t.ACC_PLAN_QUANTITY_IN as ACC_QUANTITY_IN,'
      '          t.ACC_PLAN_QUANTITY_OUT as ACC_QUANTITY_OUT,'
      '          (t.PLAN_PRICE + t.NEGATIVE_PLAN_PRICE) as PRICE,'
      '          t.PLAN_PRICE_IN as PRICE_IN,'
      '          t.PLAN_PRICE_OUT as PRICE_OUT,'
      
        '          (t.PLAN_QUANTITY_RSV + t.NEGATIVE_PLAN_QUANTITY_RSV) a' +
        's QUANTITY_RSV,'
      
        '          (t.ACC_PLAN_QUANTITY_RSV + t.ACC_NEGATIVE_PLAN_QUANTIT' +
        'Y_RSV) as ACC_QUANTITY_RSV,'
      
        '          (t.PLAN_PRICE_RSV + t.NEGATIVE_PLAN_PRICE_RSV) as PRIC' +
        'E_RSV,'
      '          t.DEFICIT_QUANTITY as DEFICIT_QUANTITY,'
      '          t.ACC_DEFICIT_QUANTITY as ACC_DEFICIT_QUANTITY,'
      '          t.DEFICIT_PRICE as DEFICIT_PRICE,'
      '          t.DEFICIT_QUANTITY_RSV as DEFICIT_QUANTITY_RSV,'
      
        '          t.ACC_DEFICIT_QUANTITY_RSV as ACC_DEFICIT_QUANTITY_RSV' +
        ','
      '          t.DEFICIT_PRICE_RSV as DEFICIT_PRICE_RSV,'
      '          t.MIN_QUANTITY as MIN_QUANTITY,'
      '          t.ACC_MIN_QUANTITY as ACC_MIN_QUANTITY,'
      '          t.MIN_PRICE as MIN_PRICE'
      '        from'
      '          TEMP_PRODUCT_HISTORY t'
      '        order by'
      '          t.PRODUCT_CODE,'
      '          t.THE_DATE,'
      '          t.IS_TODAY_SECOND_RECORD'
      '      ) t'
      '  ) t'
      ''
      'where'
      '  (p.PRODUCT_CODE = t.PRODUCT_CODE(+)) and'
      '  (p.IS_GROUP = 0) and'
      '  (p.IS_COMMON = 0) and'
      ''
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        TEMP_FILTERED_PRODUCTS tfp'
      '      where'
      '        (p.PRODUCT_CODE = tfp.PRODUCT_CODE)'
      '    )'
      '  )'
      ''
      'group by'
      '  p.PRODUCT_CODE,'
      '  p.NAME,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_CODE,'
      '  p.PARTNER_PRODUCT_NAMES,'
      '  p.ACCOUNT_MEASURE_COEF'
      ''
      'having'
      '  ( (:HAS_DEFICIT_CODE = 0) or'
      
        '    ( (:HAS_DEFICIT_CODE = 1) and (Max(Abs(t.DEFICIT_QUANTITY)) ' +
        '> 0) ) or'
      
        '    ( (:HAS_DEFICIT_CODE = 2) and (MiscUtils.LargeZero(Max(Abs(t' +
        '.DEFICIT_QUANTITY))) = 0) )'
      '  ) and'
      ''
      '  ( (:HAS_DEFICIT_RSV_CODE = 0) or'
      '    ( (:HAS_DEFICIT_RSV_CODE = 1) and'
      '      ( (Max(Abs(t.DEFICIT_QUANTITY_RSV)) > 0) or'
      '        (Min(Decode(t.THE_NO, 0, t.QUANTITY_RSV)) < 0)'
      '      )'
      '    ) or'
      
        '    ( (:HAS_DEFICIT_RSV_CODE = 2) and (MiscUtils.LargeZero(Max(A' +
        'bs(t.DEFICIT_QUANTITY_RSV))) = 0) )'
      '  ) and'
      ''
      '  ( (:HAS_DEALS_IN_CODE = 0) or'
      
        '    ( (:HAS_DEALS_IN_CODE = 1) and (Max(Abs(t.QUANTITY_IN)) > 0)' +
        ' ) or'
      
        '    ( (:HAS_DEALS_IN_CODE = 2) and (MiscUtils.LargeZero(Max(Abs(' +
        't.QUANTITY_IN))) = 0) )'
      '  ) and'
      ''
      '  ( (:HAS_DEALS_OUT_CODE = 0) or'
      
        '    ( (:HAS_DEALS_OUT_CODE = 1) and (Max(Abs(t.QUANTITY_OUT)) > ' +
        '0) ) or'
      
        '    ( (:HAS_DEALS_OUT_CODE = 2) and (MiscUtils.LargeZero(Max(Abs' +
        '(t.QUANTITY_OUT))) = 0) )'
      '  )'
      ''
      'order by'
      '  p.CUSTOM_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'FIELDS_BY_DATE_UNITS_SQL'
        ParamType = ptInput
        Value = '  Min(Decode(t.THE_NO, 1, t.QUANTITY)) as QUANTITY_1'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftFloat
        Name = 'MAX_PSD_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end>
    Left = 48
    Top = 80
  end
  object prvQuantityDeficit: TDataSetProvider
    DataSet = qryQuantityDeficit
    Options = [poIncFieldProps]
    OnGetData = prvQuantityDeficitGetData
    Left = 48
    Top = 16
  end
  object qryPrepareUncoveredPSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MAX_PSD_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'START_PERIOD_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PERIOD_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_TOWARDS_RESERVE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      
        '  StoreUtils.PrepareUncoveredPSD(:MAX_PSD_TYPE_CODE, :START_PERI' +
        'OD_DATE, :END_PERIOD_DATE, :DATE_UNIT_CODE, :IS_TOWARDS_RESERVE)' +
        ';'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 312
    Top = 24
  end
  object qryUnprepareUncoveredPSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'begin'
      '  StoreUtils.UnprepareUncoveredPSD;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 312
    Top = 72
  end
  object qryPrepareProductHistory: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_COUNT'
        ParamType = ptInput
        Value = '7'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PSD_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'begin'
      '  StoreUtils.PrepareProductHistory('
      '    :BEGIN_DATE,'
      
        '    DateTimeUtils.IncDateByTimeUnits(:BEGIN_DATE, :TIME_UNIT_COD' +
        'E, :TIME_UNIT_COUNT),'
      '    :TIME_UNIT_CODE,'
      '    :MAX_PSD_TYPE_CODE,'
      '    1,'
      '    0);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 312
    Top = 128
  end
  object qryUnprepareProductHistory: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'begin'
      '  StoreUtils.UnprepareProductHistory;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 312
    Top = 184
  end
end
