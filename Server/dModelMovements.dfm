inherited dmModelMovements: TdmModelMovements
  Height = 530
  Width = 832
  object qryGetSaleObject: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  s.SALE_OBJECT_BRANCH_CODE as OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE as OBJECT_CODE'
      'from'
      '  SALES s'
      'where'
      '  (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE) and'
      '  (s.SALE_NO = :SALE_NO)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 264
    object qryGetSaleObjectOBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OBJECT_BRANCH_CODE'
    end
    object qryGetSaleObjectOBJECT_CODE: TAbmesFloatField
      FieldName = 'OBJECT_CODE'
    end
  end
  object qryGetSaleGroupObject: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sg.SALE_GROUP_OBJECT_BRANCH_CODE as OBJECT_BRANCH_CODE,'
      '  sg.SALE_GROUP_OBJECT_CODE as OBJECT_CODE'
      'from'
      '  SALE_GROUPS sg'
      'where'
      
        '  (sg.SALE_GROUP_OBJECT_BRANCH_CODE = :SALE_GROUP_OBJECT_BRANCH_' +
        'CODE) and'
      '  (sg.SALE_GROUP_OBJECT_CODE = :SALE_GROUP_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 304
    Top = 56
    object qryGetSaleGroupObjectOBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OBJECT_BRANCH_CODE'
    end
    object qryGetSaleGroupObjectOBJECT_CODE: TAbmesFloatField
      FieldName = 'OBJECT_CODE'
    end
  end
  object qryGetBndMLObject: TAbmesSQLQuery
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
      '  ml.ML_OBJECT_CODE,'
      '  ml.IS_ARCHIVED,'
      '  Nvl2(ml.CLOSE_EMPLOYEE_CODE, 1, 0) as IS_CLOSED,'
      '  Nvl2(ml.ANNUL_EMPLOYEE_CODE, 1, 0) as IS_ANNULED,'
      '  ml.IS_OPERATIONS_MODEL'
      'from'
      '  MATERIAL_LISTS ml'
      'where'
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANC' +
        'H_CODE) and'
      '  (ml.BND_PROCESS_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE) and'
      '  (not (ml.LIMITING_EMPLOYEE_CODE is null))'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 312
    object qryGetBndMLObjectML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object qryGetBndMLObjectML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object qryGetBndMLObjectIS_ARCHIVED: TAbmesFloatField
      FieldName = 'IS_ARCHIVED'
    end
    object qryGetBndMLObjectIS_CLOSED: TAbmesFloatField
      FieldName = 'IS_CLOSED'
    end
    object qryGetBndMLObjectIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
    end
    object qryGetBndMLObjectIS_OPERATIONS_MODEL: TAbmesFloatField
      FieldName = 'IS_OPERATIONS_MODEL'
      FieldValueType = fvtBoolean
    end
  end
  object qryGetMMCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_MODEL_MOVEMENTS.NextVal as NEW_MM_CODE'
      'from'
      '  DUAL'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 304
    Top = 8
    object qryGetMMCodeNEW_MM_CODE: TAbmesFloatField
      FieldName = 'NEW_MM_CODE'
    end
  end
  object qryGetBoundMLLObject: TAbmesSQLQuery
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
        DataType = ftWideString
        Name = 'NO_AS_TEXT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FORK_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mll.MLL_OBJECT_BRANCH_CODE,'
      '  mll.MLL_OBJECT_CODE'
      'from'
      '  MATERIAL_LIST_LINES mll'
      'where'
      '  (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      '  (mll.NO_AS_TEXT = :NO_AS_TEXT) and'
      '  (mll.FORK_NO = :FORK_NO)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 304
    Top = 104
    object qryGetBoundMLLObjectMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryGetBoundMLLObjectMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
  end
  object qryModelMovementTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  mmt.*,'
      
        '  mmt.MODEL_MOVEMENT_TYPE_ABBREV || '#39' - '#39' || mmt.MODEL_MOVEMENT_' +
        'TYPE_NAME'
      '    as MODEL_MOVEMENT_TYPE_IDENTIFIER'
      'from'
      '  MODEL_MOVEMENT_TYPES mmt'
      'order by'
      '  MODEL_MOVEMENT_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 181
    Top = 56
    object qryModelMovementTypesMODEL_MOVEMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'MODEL_MOVEMENT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryModelMovementTypesMODEL_MOVEMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'MODEL_MOVEMENT_TYPE_ABBREV'
      Size = 100
    end
    object qryModelMovementTypesMODEL_MOVEMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'MODEL_MOVEMENT_TYPE_NAME'
      Size = 100
    end
    object qryModelMovementTypesMODEL_MOVEMENT_TYPE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MODEL_MOVEMENT_TYPE_IDENTIFIER'
      ProviderFlags = []
      Size = 203
    end
  end
  object prvModelMovementTypes: TDataSetProvider
    DataSet = qryModelMovementTypes
    UpdateMode = upWhereKeyOnly
    Left = 181
    Top = 8
  end
  object qryModelMovements: TAbmesSQLQuery
    BeforeOpen = qryModelMovementsBeforeOpen
    AfterClose = qryModelMovementsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_NO'
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
        Name = 'IS_STORNO'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_STORNO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_STORNO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MLL_NO_AS_TEXT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_FORK_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_FORK_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_STAGE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_STAGE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_STAGE_OR_WASTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_STAGE_OR_WASTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_STAGE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_STAGE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_STAGE_OR_WASTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_3'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRIORITY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  /*+ NO_USE_HASH(mm mlmsf mll ml s pot pm p msl mlmst) NO_USE_M' +
        'ERGE(mm mlmsf mll ml s pot pm p msl mlmst) USE_NL(mm mlmsf mll m' +
        'l s pot pm p msl mlmst) ORDERED INDEX(mm idxMM__MM_DATE) */'
      '  mm.MM_BRANCH_CODE,'
      '  mm.MM_CODE,'
      '  mm.OM_BRANCH_CODE,'
      '  mm.OM_CODE,'
      ''
      '  ( ( select'
      '        (d.CUSTOM_CODE || '#39'/'#39')'
      '      from'
      '        DEPTS d'
      '      where'
      '        (mm.OM_BRANCH_CODE = d.DEPT_CODE)'
      '    ) ||'
      '    ( select'
      '        om.OM_NO'
      '      from'
      '        OPERATION_MOVEMENTS om'
      '      where'
      '        (om.OM_BRANCH_CODE = mm.OM_BRANCH_CODE) and'
      '        (om.OM_CODE = mm.OM_CODE)'
      '    )'
      '  ) as MM_IDENTIFIER,'
      ''
      '  ( select'
      '      om.DOC_BRANCH_CODE'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      '      (om.OM_BRANCH_CODE = mm.OM_BRANCH_CODE) and'
      '      (om.OM_CODE = mm.OM_CODE)'
      '  ) as DOC_BRANCH_CODE,'
      ''
      '  ( select'
      '      om.DOC_CODE'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      '      (om.OM_BRANCH_CODE = mm.OM_BRANCH_CODE) and'
      '      (om.OM_CODE = mm.OM_CODE)'
      '  ) as DOC_CODE,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[om]'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      '      (om.OM_BRANCH_CODE = mm.OM_BRANCH_CODE) and'
      '      (om.OM_CODE = mm.OM_CODE)'
      '  ) as HAS_DOC,'
      ''
      '  mm.MM_DATE,'
      ''
      '  mll.ML_OBJECT_BRANCH_CODE,'
      '  mll.ML_OBJECT_CODE,'
      ''
      '  mll.MLL_OBJECT_BRANCH_CODE,'
      '  mll.MLL_OBJECT_CODE,'
      ''
      '  ( ( select'
      '        pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '      from'
      '        PRODUCTION_ORDER_TYPES pot'
      '      where'
      
        '        (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER_TYP' +
        'E_CODE)'
      '    ) ||'
      '    '#39'/'#39' ||'
      '    ( select'
      '        d.CUSTOM_CODE'
      '      from'
      '        DEPTS d'
      '      where'
      '        (d.DEPT_CODE = s.SALE_BRANCH_CODE)'
      '    ) ||'
      '    '#39'/'#39' ||'
      '    s.SALE_NO ||'
      '    '#39'/'#39' ||'
      '    ( select'
      '        st.SALE_TYPE_ABBREV'
      '      from'
      '        SALE_TYPES st'
      '      where'
      '        (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '    ) ||'
      '    '#39' / '#39' ||'
      '    mll.NO_AS_TEXT ||'
      '    '#39'/'#39' ||'
      '    mll.FORK_NO'
      '  ) as MLL_OBJECT_IDENTIFIER,'
      ''
      '  ( select'
      '      (p.PRIORITY_NO || '#39'   '#39' || p.PRIORITY_NAME)'
      '    from'
      '      SALE_GROUPS sg,'
      '      PRIORITIES p'
      '    where'
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      '      (sg.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as PRIORITY_FULL_NAME,'
      ''
      '  ( select'
      '      p.PRIORITY_COLOR'
      '    from'
      '      SALE_GROUPS sg,'
      '      PRIORITIES p'
      '    where'
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      '      (sg.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as PRIORITY_COLOR,'
      ''
      '  ( select'
      '      p.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      SALE_GROUPS sg,'
      '      PRIORITIES p'
      '    where'
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      '      (sg.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as PRIORITY_BACKGROUND_COLOR,'
      ''
      '  s.WORK_PRIORITY_CODE,'
      ''
      '  ( select'
      '      wprt.WORK_PRIORITY_NO'
      '    from'
      '      WORK_PRIORITIES wprt'
      '    where'
      '      (s.WORK_PRIORITY_CODE = wprt.WORK_PRIORITY_CODE)'
      '  ) as WORK_PRIORITY_NO,'
      ''
      '  p.NAME as DETAIL_NAME,'
      '  p.CUSTOM_CODE as DETAIL_CUSTOM_CODE,'
      '  p.DOC_BRANCH_CODE as DETAIL_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as DETAIL_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as DETAIL_HAS_DOC,'
      ''
      
        '  Nvl2(mm.STORE_DEAL_OBJECT_BRANCH_CODE, pm.NAME, null) as PRODU' +
        'CT_NAME,'
      
        '  Nvl2(mm.STORE_DEAL_OBJECT_BRANCH_CODE, pm.CUSTOM_CODE, null) a' +
        's PRODUCT_CUSTOM_CODE,'
      
        '  Nvl2(mm.STORE_DEAL_OBJECT_BRANCH_CODE, pm.DOC_BRANCH_CODE, nul' +
        'l) as PRODUCT_DOC_BRANCH_CODE,'
      
        '  Nvl2(mm.STORE_DEAL_OBJECT_BRANCH_CODE, pm.DOC_CODE, null) as P' +
        'RODUCT_DOC_CODE,'
      
        '  Nvl2(mm.STORE_DEAL_OBJECT_BRANCH_CODE, %HAS_DOC_ITEMS[pm], 0) ' +
        'as PRODUCT_HAS_DOC,'
      ''
      '  ( select'
      '      ma.MEASURE_ABBREV'
      '    from'
      '      MEASURES ma'
      '    where'
      '      (pm.ACCOUNT_MEASURE_CODE = ma.MEASURE_CODE) and'
      '      (mm.STORE_DEAL_OBJECT_BRANCH_CODE is not null)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      ''
      '  ( select'
      '      sd.ACCOUNT_QUANTITY'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.STORE_DEAL_OBJECT_BRANCH_CODE = mm.STORE_DEAL_OBJECT_B' +
        'RANCH_CODE) and'
      '      (sd.STORE_DEAL_OBJECT_CODE = mm.STORE_DEAL_OBJECT_CODE)'
      '  ) as ACCOUNT_PRODUCT_QUANTITY,'
      ''
      '  ( select'
      
        '      (mlmsf.ML_MODEL_STAGE_NO || '#39':'#39' || dt.DEPT_TYPE_ABBREV || ' +
        'd.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (d.DEPT_CODE = mlmsf.DEPT_CODE)'
      '  ) as FROM_STAGE_IDENTIFIER,'
      ''
      '  Nvl2(mm.TO_DEPT_CODE,'
      '    null,'
      '    ( select'
      
        '        (mlmst.ML_MODEL_STAGE_NO || '#39':'#39' || dt.DEPT_TYPE_ABBREV |' +
        '| d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '      from'
      '        DEPTS d,'
      '        DEPT_TYPES dt'
      '      where'
      '        (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '        (d.DEPT_CODE = mlmst.DEPT_CODE)'
      '    )'
      '  ) as TO_STAGE_IDENTIFIER,'
      ''
      '  ( select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER |' +
        '| '#39' / '#39' ||'
      
        '       Nvl2(mm.WASTE_DOC_NO, (mm.WASTE_DOC_NO || '#39' / '#39'), '#39#39') || ' +
        'To_Char(mm.WASTE_DOC_DATE, '#39'dd.mm.yyyy'#39')) as WASTE_INFO'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (d.DEPT_CODE = mm.TO_DEPT_CODE)'
      '  ) as WASTE_INFO,'
      ''
      '  mm.DETAIL_TECH_QUANTITY,'
      '  p.TECH_MEASURE_CODE as MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      
        '  ModelUtils.GetOperationMovementTotalPrice(mm.OM_BRANCH_CODE, m' +
        'm.OM_CODE) as TOTAL_PRICE,'
      ''
      '  Nvl2(mm.STORNO_EMPLOYEE_CODE, 1, 0) as IS_STORNO,'
      ''
      
        '  %PRODUCT_COMPANY_PRODUCT_NAMES[s.PRODUCT_CODE~s.CLIENT_COMPANY' +
        '_CODE] as CLIENT_PRODUCT_NAME,'
      ''
      '  mm.CREATE_EMPLOYEE_CODE,'
      '  ( select'
      '      (e.ABBREV || '#39'   '#39' || e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = mm.CREATE_EMPLOYEE_CODE)'
      '  ) as CREATE_EMPLOYEE_ABBREV,'
      ''
      '  mm.CREATE_DATE,'
      '  mm.CREATE_TIME,'
      ''
      '  mm.STORNO_EMPLOYEE_CODE,'
      '  ( select'
      '      (e.ABBREV || '#39'   '#39' || e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = mm.STORNO_EMPLOYEE_CODE)'
      '  ) as STORNO_EMPLOYEE_ABBREV,'
      '  mm.STORNO_DATE,'
      '  mm.STORNO_TIME'
      ''
      'from'
      '  MODEL_MOVEMENTS mm,'
      '  ML_MODEL_STAGES mlmsf,'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml,'
      '  SALES s,'
      '  PRODUCTION_ORDER_TYPES pot,'
      '  PRODUCTS pm,'
      '  PRODUCTS p,'
      '  MODEL_STAGE_LINKS msl,'
      '  ML_MODEL_STAGES mlmst'
      ''
      'where'
      
        '  (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlmsf.MLMS_OBJECT_BRANCH_CO' +
        'DE) and'
      '  (mm.FROM_MLMS_OBJECT_CODE = mlmsf.MLMS_OBJECT_CODE) and'
      ''
      
        '  (mm.FROM_MLMS_OBJECT_BRANCH_CODE = msl.FROM_MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '  (mm.FROM_MLMS_OBJECT_CODE = msl.FROM_MLMS_OBJECT_CODE) and'
      ''
      
        '  (msl.TO_MLMS_OBJECT_BRANCH_CODE = mlmst.MLMS_OBJECT_BRANCH_COD' +
        'E) and'
      '  (msl.TO_MLMS_OBJECT_CODE = mlmst.MLMS_OBJECT_CODE) and'
      ''
      
        '  (mlmsf.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) an' +
        'd'
      '  (mlmsf.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '  (mll.DETAIL_CODE = p.PRODUCT_CODE) and'
      ''
      '  (mll.PRODUCT_CODE = pm.PRODUCT_CODE(+)) and'
      ''
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '  (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '  (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_TYPE_CODE' +
        ') and'
      ''
      '  ( (:OM_BRANCH_CODE is null) or'
      '    (mm.OM_BRANCH_CODE = :OM_BRANCH_CODE)'
      '  ) and'
      ''
      '  ( (:OM_NO is null) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        OPERATION_MOVEMENTS om'
      '      where'
      '        (om.OM_BRANCH_CODE = mm.OM_BRANCH_CODE) and'
      '        (om.OM_CODE = mm.OM_CODE) and'
      '        (om.OM_NO = :OM_NO)'
      '    )'
      '  ) and'
      ''
      
        '  (mm.MM_DATE between :START_PERIOD_DATE and :END_PERIOD_DATE) a' +
        'nd'
      ''
      '  ( (:IS_STORNO = 3) or'
      '    ((:IS_STORNO = 1) and (mm.STORNO_EMPLOYEE_CODE is null)) or'
      '    ((:IS_STORNO = 2) and (mm.STORNO_EMPLOYEE_CODE is not null))'
      '  ) and'
      ''
      '  ( (:PRODUCTION_ORDER_BASE_TYPE_CODE is null) or'
      '    (:PRODUCTION_ORDER_BASE_TYPE_CODE = 0) or'
      
        '    (pot.PROD_ORDER_BASE_TYPE_CODE = :PRODUCTION_ORDER_BASE_TYPE' +
        '_CODE)'
      '  ) and'
      ''
      '  ( (:PRODUCTION_ORDER_TYPE_CODE is null) or'
      '    (s.PRODUCTION_ORDER_TYPE_CODE = :PRODUCTION_ORDER_TYPE_CODE)'
      '  ) and'
      ''
      '  ( (:SALE_BRANCH_CODE is null) or'
      '    (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE)'
      '  ) and'
      ''
      '  ( (:SALE_NO is null) or'
      '    (s.SALE_NO = :SALE_NO)'
      '  ) and'
      ''
      '  ( (:SALE_TYPE_CODE is null) or'
      '    (s.SALE_TYPE_CODE = :SALE_TYPE_CODE)'
      '  ) and'
      ''
      '  (mll.NO_AS_TEXT like :MLL_NO_AS_TEXT) and'
      ''
      '  ( (:MLL_FORK_NO is null) or'
      '    (mll.FORK_NO = :MLL_FORK_NO)'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = ml.RESULT_PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS_2 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS_2 tfp2'
      '        where'
      '          (tfp2.PRODUCT_CODE = mll.DETAIL_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:FROM_STAGE_NO is null) or'
      '    (mlmsf.ML_MODEL_STAGE_NO = :FROM_STAGE_NO)'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_DEPTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS tfd'
      '        where'
      '          (tfd.DEPT_CODE = mlmsf.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:TO_STAGE_OR_WASTE is null) or'
      '    ( (:TO_STAGE_OR_WASTE = 1) and'
      '      (mm.TO_DEPT_CODE is null) and'
      ''
      '      ( (:TO_STAGE_NO is null) or'
      '        (mlmst.ML_MODEL_STAGE_NO = :TO_STAGE_NO)'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_DEPTS_2 = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_DEPTS_2 tfd2'
      '            where'
      '              (tfd2.DEPT_CODE = mlmst.DEPT_CODE)'
      '          )'
      '        )'
      '      )'
      '    ) or'
      ''
      '    ( (:TO_STAGE_OR_WASTE = 2) and'
      '      (mm.TO_DEPT_CODE is not null) and'
      ''
      '      ( (:ALL_FILTERED_DEPTS_3 = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_DEPTS_3 tfd3'
      '            where'
      '              (tfd3.DEPT_CODE = mm.TO_DEPT_CODE)'
      '          )'
      '        )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( ( select'
      '        p.PRIORITY_NO'
      '      from'
      '        SALE_GROUPS sg,'
      '        PRIORITIES p'
      '      where'
      
        '        (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) a' +
        'nd'
      '        (p.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '    ) between'
      '      Coalesce('
      '        ( select'
      '            Max(p.PRIORITY_NO)'
      '          from'
      '            PRIORITIES p'
      '          where'
      '            (p.PRIORITY_CODE = :BEGIN_PRIORITY_CODE)'
      '        ), 0) and'
      '      Coalesce('
      '        ( select'
      '            Max(p.PRIORITY_NO)'
      '          from'
      '            PRIORITIES p'
      '          where'
      '            (p.PRIORITY_CODE = :END_PRIORITY_CODE)'
      '        ), 1000000)'
      '  )'
      ''
      'order by'
      '  mm.MM_DATE,'
      '  MM_IDENTIFIER,'
      '  mm.STORNO_DATE,'
      '  mm.STORNO_TIME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[om]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pm]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 
          'PRODUCT_COMPANY_PRODUCT_NAMES[s.PRODUCT_CODE~s.CLIENT_COMPANY_CO' +
          'DE]'
        ParamType = ptInput
        Value = #39#39
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'RESULT_PRODUCT_CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'DETAIL_CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'FROM_STAGE_CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'TO_STAGE_CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'TO_WASTE_CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 40
    Top = 56
    object qryModelMovementsMM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MM_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryModelMovementsMM_CODE: TAbmesFloatField
      FieldName = 'MM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryModelMovementsMM_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MM_IDENTIFIER'
      Size = 81
    end
    object qryModelMovementsMM_DATE: TAbmesSQLTimeStampField
      FieldName = 'MM_DATE'
    end
    object qryModelMovementsML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object qryModelMovementsML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object qryModelMovementsMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryModelMovementsMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object qryModelMovementsMLL_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MLL_OBJECT_IDENTIFIER'
      Size = 237
    end
    object qryModelMovementsDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryModelMovementsDETAIL_CUSTOM_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CUSTOM_CODE'
    end
    object qryModelMovementsFROM_STAGE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FROM_STAGE_IDENTIFIER'
      Size = 87
    end
    object qryModelMovementsTO_STAGE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'TO_STAGE_IDENTIFIER'
      Size = 87
    end
    object qryModelMovementsWASTE_INFO: TAbmesWideStringField
      FieldName = 'WASTE_INFO'
      Size = 82
    end
    object qryModelMovementsDETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_QUANTITY'
    end
    object qryModelMovementsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryModelMovementsTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryModelMovementsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryModelMovementsPRODUCT_CUSTOM_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CUSTOM_CODE'
    end
    object qryModelMovementsACCOUNT_PRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_PRODUCT_QUANTITY'
    end
    object qryModelMovementsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryModelMovementsIS_STORNO: TAbmesFloatField
      FieldName = 'IS_STORNO'
    end
    object qryModelMovementsCLIENT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_PRODUCT_NAME'
      Size = 250
    end
    object qryModelMovementsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryModelMovementsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryModelMovementsCREATE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_ABBREV'
      Size = 49
    end
    object qryModelMovementsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryModelMovementsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryModelMovementsSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object qryModelMovementsSTORNO_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'STORNO_EMPLOYEE_ABBREV'
      Size = 49
    end
    object qryModelMovementsSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object qryModelMovementsSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
    object qryModelMovementsOM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OM_BRANCH_CODE'
    end
    object qryModelMovementsOM_CODE: TAbmesFloatField
      FieldName = 'OM_CODE'
    end
    object qryModelMovementsPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 93
    end
    object qryModelMovementsPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qryModelMovementsPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object qryModelMovementsWORK_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_CODE'
    end
    object qryModelMovementsWORK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_NO'
    end
    object qryModelMovementsDETAIL_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DETAIL_DOC_BRANCH_CODE'
    end
    object qryModelMovementsDETAIL_DOC_CODE: TAbmesFloatField
      FieldName = 'DETAIL_DOC_CODE'
    end
    object qryModelMovementsDETAIL_HAS_DOC: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOC'
      FieldValueType = fvtBoolean
    end
    object qryModelMovementsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryModelMovementsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryModelMovementsPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
      FieldValueType = fvtBoolean
    end
    object qryModelMovementsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryModelMovementsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryModelMovementsHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
      FieldValueType = fvtBoolean
    end
  end
  object prvModelMovements: TDataSetProvider
    DataSet = qryModelMovements
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 8
  end
  object qryGetMMData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Decode(po.PROCESS_OBJECT_CLASS_CODE, 30, 0, 1) as BOUND_TYPE, '
      
        '  Decode(po.PROCESS_OBJECT_CLASS_CODE, 30, s.SALE_BRANCH_CODE, p' +
        'o.PROCESS_OBJECT_BRANCH_CODE) as BOUND_BRANCH_CODE,'
      
        '  Decode(po.PROCESS_OBJECT_CLASS_CODE, 30, s.SALE_NO, po.PROCESS' +
        '_OBJECT_CODE) as BOUND_NUMBER,'
      '  mll.NO_AS_TEXT,'
      '  mll.FORK_NO,'
      '  mlms.ML_MODEL_STAGE_NO as FROM_STAGE_NO'
      'from'
      '  MODEL_MOVEMENTS mm,'
      '  MATERIAL_LIST_LINES mll,'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LISTS ml,'
      '  PROCESS_OBJECTS po,'
      '  SALES s'
      'where'
      '  (mm.MM_BRANCH_CODE = :MM_BRANCH_CODE) and'
      '  (mm.MM_CODE = :MM_CODE) and'
      '  '
      
        '  (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_COD' +
        'E) and'
      '  (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '  '
      '  (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '  '
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '  '
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BRANCH_' +
        'CODE) and'
      '  (ml.BND_PROCESS_OBJECT_CODE = po.PROCESS_OBJECT_CODE) and'
      '  '
      
        '  (po.PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE(+))' +
        ' and'
      '  (po.PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE(+))'
      '  ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 272
    object qryGetMMDataBOUND_TYPE: TAbmesFloatField
      FieldName = 'BOUND_TYPE'
    end
    object qryGetMMDataBOUND_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BOUND_BRANCH_CODE'
    end
    object qryGetMMDataBOUND_NUMBER: TAbmesFloatField
      FieldName = 'BOUND_NUMBER'
    end
    object qryGetMMDataNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qryGetMMDataFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object qryGetMMDataFROM_STAGE_NO: TAbmesFloatField
      FieldName = 'FROM_STAGE_NO'
    end
  end
  object qryGetStageNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
      '  mlms.MLL_OBJECT_BRANCH_CODE,'
      '  mlms.MLL_OBJECT_CODE,'
      '  mlms.ML_MODEL_STAGE_NO  '
      'from'
      '  ML_MODEL_STAGES mlms  '
      'where'
      '  (mlms.MLMS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLMS_OBJECT_CODE = :MLMS_OBJECT_CODE)'
      '  '
      '  ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 224
    object qryGetStageNoMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryGetStageNoMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object qryGetStageNoML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
  end
  object qryGetDataByMLMS: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
      '  s.SALE_BRANCH_CODE,'
      '  s.SALE_NO,'
      '  mlms.MLL_OBJECT_BRANCH_CODE,'
      '  mlms.MLL_OBJECT_CODE,'
      '  mlms.ML_MODEL_STAGE_NO'
      'from'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml,'
      '  SALES s'
      'where'
      '  (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '  (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      '  (mlms.MLMS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLMS_OBJECT_CODE = :MLMS_OBJECT_CODE)'
      '  '
      '  ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 328
    object qryGetDataByMLMSSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object qryGetDataByMLMSSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object qryGetDataByMLMSMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryGetDataByMLMSMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object qryGetDataByMLMSML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
  end
  object qryGetMlmsRealSinglePrice: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
      
        '  ModelUtils.GetMllRealSinglePrice(mlms.MLL_OBJECT_BRANCH_CODE, ' +
        'mlms.MLL_OBJECT_CODE) as SINGLE_PRICE'
      'from'
      '  ML_MODEL_STAGES mlms'
      'where'
      '  (mlms.MLMS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLMS_OBJECT_CODE = :MLMS_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 168
    object qryGetMlmsRealSinglePriceSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
  end
  object prvOperationMovement: TDataSetProvider
    DataSet = qryOperationMovement
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = prvOperationMovementBeforeApplyUpdates
    AfterApplyUpdates = prvOperationMovementAfterApplyUpdates
    Left = 456
    Top = 8
  end
  object qryOperationMovement: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  om.OM_BRANCH_CODE,'
      '  om.OM_CODE,'
      '  om.OM_NO,'
      '  om.OPERATION_MOVEMENT_TYPE_CODE,'
      '  om.OM_DATE,'
      '  om.OM_TIME,'
      '  om.FROM_MLMSO_OBJECT_BRANCH_CODE,'
      '  om.FROM_MLMSO_OBJECT_CODE,'
      '  om.TO_MLMSO_OBJECT_BRANCH_CODE,'
      '  om.TO_MLMSO_OBJECT_CODE,'
      
        '  (To_Char(om.TO_MLMSO_OBJECT_BRANCH_CODE) || '#39','#39' || To_Char(om.' +
        'TO_MLMSO_OBJECT_CODE)) as TO_MLMSO_BRANCH_AND_CODE,'
      '  om.FROM_EMPLOYEE_CODE,'
      '  om.FROM_TEAM_CODE,'
      '  om.TO_EMPLOYEE_CODE,'
      '  om.TO_TEAM_CODE,'
      '  om.TO_DEPT_CODE,'
      '  d.NAME as TO_DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as T' +
        'O_DEPT_IDENTIFIER,'
      '  d.BEGIN_DATE as TO_DEPT_BEGIN_DATE,'
      '  d.END_DATE as TO_DEPT_END_DATE,'
      '  om.WASTE_DOC_NO,'
      '  om.WASTE_DOC_DATE,'
      '  mll.PRODUCT_TECH_QUANTITY,'
      '  om.WORK_DETAIL_TECH_QUANTITY,'
      
        '  (om.WORK_DETAIL_TECH_QUANTITY * mll.PRODUCT_TECH_QUANTITY) as ' +
        'WORK_PRODUCT_TECH_QUANTITY,'
      '  om.TOTAL_DETAIL_TECH_QUANTITY,'
      
        '  (om.TOTAL_DETAIL_TECH_QUANTITY * mll.PRODUCT_TECH_QUANTITY) as' +
        ' TOTAL_PRODUCT_TECH_QUANTITY,'
      '  om.QA_DETAIL_TECH_QUANTITY,'
      
        '  (om.QA_DETAIL_TECH_QUANTITY * mll.PRODUCT_TECH_QUANTITY) as QA' +
        '_PRODUCT_TECH_QUANTITY,'
      '  om.QA_EMPLOYEE_CODE,'
      '  om.CREATE_EMPLOYEE_CODE,'
      '  om.CREATE_DATE,'
      '  om.CREATE_TIME,'
      '  om.STORNO_EMPLOYEE_CODE,'
      '  om.STORNO_DATE,'
      '  om.STORNO_TIME,'
      '  om.BND_OM_BRANCH_CODE,'
      '  om.BND_OM_CODE,'
      '  om.STORE_DEAL_OBJECT_BRANCH_CODE,'
      '  om.STORE_DEAL_OBJECT_CODE,'
      '  om.REPLACED_OM_BRANCH_CODE,'
      '  om.REPLACED_OM_CODE,'
      ''
      '  ('
      '    select'
      '      t.TEAM_NAME'
      '    from'
      '      TEAMS t'
      '    where'
      '      (t.TEAM_CODE = om.FROM_TEAM_CODE)'
      '  ) as FROM_TEAM_NAME,'
      ''
      '  ('
      '    select'
      '      t.TEAM_NAME'
      '    from'
      '      TEAMS t'
      '    where'
      '      (t.TEAM_CODE = om.TO_TEAM_CODE)'
      '  ) as TO_TEAM_NAME,'
      ''
      '  om.DOC_BRANCH_CODE,'
      '  om.DOC_CODE,'
      '  %HAS_DOC_ITEMS[om] as HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      pot.PROD_ORDER_BASE_TYPE_CODE'
      '    from'
      '      MATERIAL_LISTS ml,'
      '      SALES s,'
      '      PRODUCTION_ORDER_TYPES pot'
      '    where'
      '      (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and'
      '      (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      ''
      
        '      (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_' +
        'CODE) and'
      '      (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and'
      ''
      
        '      (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER_TYPE_' +
        'CODE)'
      '  ) as PROD_ORDER_BASE_TYPE_CODE,'
      ''
      '  om.TO_DEPT_ZONE_NO'
      ''
      'from'
      '  OPERATION_MOVEMENTS om,'
      '  MLMS_OPERATIONS mlmso,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll'
      ''
      'where'
      '  (om.TO_DEPT_CODE = d.DEPT_CODE(+)) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      ''
      
        '  (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_' +
        'CODE) and'
      '  (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      ''
      
        '  (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      ''
      '  (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '  (om.OM_BRANCH_CODE = :OM_BRANCH_CODE) and'
      '  (om.OM_CODE = :OM_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[om]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'OPERATION_MOVEMENTS_FOR_EDIT'
    AfterProviderStartTransaction = qryOperationMovementAfterProviderStartTransaction
    Left = 456
    Top = 56
    object qryOperationMovementOM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OM_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOperationMovementOM_CODE: TAbmesFloatField
      FieldName = 'OM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOperationMovementOM_NO: TAbmesFloatField
      FieldName = 'OM_NO'
    end
    object qryOperationMovementOPERATION_MOVEMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_MOVEMENT_TYPE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementOM_DATE: TAbmesSQLTimeStampField
      FieldName = 'OM_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementOM_TIME: TAbmesSQLTimeStampField
      FieldName = 'OM_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementFROM_MLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_OBJECT_BRANCH_CODE'
    end
    object qryOperationMovementFROM_MLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_OBJECT_CODE'
    end
    object qryOperationMovementTO_MLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'TO_MLMSO_OBJECT_BRANCH_CODE'
    end
    object qryOperationMovementTO_MLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'TO_MLMSO_OBJECT_CODE'
    end
    object qryOperationMovementTO_MLMSO_BRANCH_AND_CODE: TAbmesWideStringField
      FieldName = 'TO_MLMSO_BRANCH_AND_CODE'
      ProviderFlags = []
      Size = 81
    end
    object qryOperationMovementFROM_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FROM_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementFROM_TEAM_CODE: TAbmesFloatField
      FieldName = 'FROM_TEAM_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementTO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'TO_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementTO_TEAM_CODE: TAbmesFloatField
      FieldName = 'TO_TEAM_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementTO_DEPT_CODE: TAbmesFloatField
      FieldName = 'TO_DEPT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementTO_DEPT_NAME: TAbmesWideStringField
      FieldName = 'TO_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryOperationMovementTO_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'TO_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryOperationMovementTO_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'TO_DEPT_BEGIN_DATE'
      ProviderFlags = []
    end
    object qryOperationMovementTO_DEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'TO_DEPT_END_DATE'
      ProviderFlags = []
    end
    object qryOperationMovementWASTE_DOC_NO: TAbmesWideStringField
      FieldName = 'WASTE_DOC_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementWASTE_DOC_DATE: TAbmesSQLTimeStampField
      FieldName = 'WASTE_DOC_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qryOperationMovementWORK_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_DETAIL_TECH_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementWORK_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_PRODUCT_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qryOperationMovementTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_DETAIL_TECH_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qryOperationMovementQA_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'QA_DETAIL_TECH_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementQA_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'QA_PRODUCT_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qryOperationMovementQA_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'QA_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementBND_OM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_OM_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementBND_OM_CODE: TAbmesFloatField
      FieldName = 'BND_OM_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementSTORE_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementREPLACED_OM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REPLACED_OM_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementREPLACED_OM_CODE: TAbmesFloatField
      FieldName = 'REPLACED_OM_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOperationMovementFROM_TEAM_NAME: TAbmesWideStringField
      FieldName = 'FROM_TEAM_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryOperationMovementTO_TEAM_NAME: TAbmesWideStringField
      FieldName = 'TO_TEAM_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryOperationMovementDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryOperationMovementDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryOperationMovementHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryOperationMovementPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
      ProviderFlags = []
    end
    object qryOperationMovementTO_DEPT_ZONE_NO: TAbmesFloatField
      FieldName = 'TO_DEPT_ZONE_NO'
    end
  end
  object prvOperationMovementHeader: TDataSetProvider
    DataSet = qryOperationMovementHeader
    Options = [poReadOnly]
    Left = 728
    Top = 8
  end
  object qryOperationMovementHeader: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OVERRIDING_FROM_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OVERRIDING_FROM_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OVERRIDING_FROM_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OVERRIDING_FROM_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ( ( select'
      '        pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '      from'
      '        PRODUCTION_ORDER_TYPES pot'
      '      where'
      
        '        (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER_TYP' +
        'E_CODE)'
      '    ) ||'
      '    '#39'/'#39' ||'
      '    ( select'
      '        d.CUSTOM_CODE'
      '      from'
      '        DEPTS d'
      '      where'
      '        (d.DEPT_CODE = s.SALE_BRANCH_CODE)'
      '    ) ||'
      '    '#39'/'#39' ||'
      '    s.SALE_NO ||'
      '    '#39'/'#39' ||'
      '    ( select'
      '        st.SALE_TYPE_ABBREV'
      '      from'
      '        SALE_TYPES st'
      '      where'
      '        (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '    )'
      '  ) as PRODUCTION_ORDER_IDENTIFIER,'
      ''
      '  ( select'
      '      pr.PRIORITY_NO'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as SALE_PRIORITY_NO,'
      ''
      '  ( select'
      '      pr.PRIORITY_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as SALE_PRIORITY_COLOR,'
      ''
      '  ( select'
      '      pr.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as SALE_PRIORITY_BACKGROUND_COLOR,'
      ''
      '  ( select'
      '      wp.WORK_PRIORITY_NO'
      '    from'
      '      WORK_PRIORITIES wp'
      '    where'
      '      (wp.WORK_PRIORITY_CODE = s.WORK_PRIORITY_CODE)'
      '  ) as SALE_WORK_PRIORITY_NO,'
      ''
      '  from_mll.NO_AS_TEXT as FROM_MLL_NO_AS_TEXT,'
      '  from_mll.FORK_NO as FROM_MLL_FORK_NO,'
      
        '  from_mlms.MLMS_OBJECT_BRANCH_CODE as FROM_MLMS_OBJECT_BRANCH_C' +
        'ODE,'
      '  from_mlms.MLMS_OBJECT_CODE as FROM_MLMS_OBJECT_CODE,'
      '  from_mlms.IS_AUTO_MOVEMENT as FROM_MLMS_IS_AUTO_MOVEMENT,'
      ''
      '  ('
      '    select'
      
        '      (from_mlms.ML_MODEL_STAGE_NO || '#39':'#39' || dt.DEPT_TYPE_ABBREV' +
        ' || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (d.DEPT_CODE = from_mlms.DEPT_CODE)'
      '  ) as FROM_STAGE_IDENTIFIER,'
      ''
      '  from_mlms.DOC_BRANCH_CODE as FROM_MLMS_DOC_BRANCH_CODE,'
      '  from_mlms.DOC_CODE as FROM_MLMS_DOC_CODE,'
      '  %HAS_DOC_ITEMS[from_mlms] as FROM_MLMS_HAS_DOC_ITEMS,'
      ''
      
        '  %COUNT_WORKDAYS[ContextDate~from_mlms.TREATMENT_END_DATE] as F' +
        'ROM_MLMS_REMAINING_WORKDAYS,'
      ''
      '  from_mll.DETAIL_CODE as FROM_DETAIL_CODE,'
      ''
      '  ('
      '    select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = from_mll.DETAIL_CODE)'
      '  ) as FROM_DETAIL_NAME,'
      ''
      
        '  from_mll.LINE_DETAIL_TECH_QUANTITY as FROM_LINE_DETAIL_TECH_QU' +
        'ANTITY,'
      ''
      '  ('
      '    select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.TECH_MEASURE_CODE) and'
      '      (p.PRODUCT_CODE = from_mll.DETAIL_CODE)'
      '  ) as FROM_DETAIL_TECH_MEASURE_ABB,'
      ''
      '  from_mll.PRODUCT_CODE as FROM_PRODUCT_CODE,'
      '  from_mll.PRODUCT_TECH_QUANTITY as FROM_PRODUCT_TECH_QUANTITY,'
      ''
      '  ('
      '    select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = from_mll.PRODUCT_CODE)'
      '  ) as FROM_PRODUCT_NAME,'
      ''
      
        '  (from_mll.LINE_DETAIL_TECH_QUANTITY * from_mll.PRODUCT_TECH_QU' +
        'ANTITY) as FROM_TOTAL_PRODUCT_TECH_QTY,'
      ''
      '  ('
      '    select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.TECH_MEASURE_CODE) and'
      '      (p.PRODUCT_CODE = from_mll.PRODUCT_CODE)'
      '  ) as FROM_PRODUCT_TECH_MEASURE_ABB,'
      ''
      '  ('
      '    from_mlmso.MLMS_OPERATION_NO || '#39'.'#39' ||'
      '    from_mlmso.MLMS_OPERATION_VARIANT_NO || '#39' - '#39' ||'
      '    ('
      '      select'
      '        d.NAME'
      '      from'
      '        DEPTS d'
      '      where'
      '        (d.DEPT_CODE = from_mlmso.DEPT_CODE)'
      '    )'
      '  ) as FROM_MLMS_OPERATION_IDENTIFIER,'
      ''
      
        '  from_mlmso.MLMS_OPERATION_VARIANT_NO as FROM_MLMS_OPERATION_VA' +
        'RIANT_NO,'
      ''
      '  Decode(from_mlmso.MLMS_OPERATION_NO,'
      '    ( select'
      '        Max(mlmso2.MLMS_OPERATION_NO)'
      '      from'
      '        MLMS_OPERATIONS mlmso2'
      '      where'
      
        '        (mlmso2.MLMS_OBJECT_BRANCH_CODE = from_mlms.MLMS_OBJECT_' +
        'BRANCH_CODE) and'
      '        (mlmso2.MLMS_OBJECT_CODE = from_mlms.MLMS_OBJECT_CODE)'
      '    ),'
      '    1,'
      '    0'
      '  ) as FROM_MLMSO_IS_LAST_IN_STAGE,'
      ''
      '  from_mlmso.DOC_BRANCH_CODE as FROM_MLMSO_DOC_BRANCH_CODE,'
      '  from_mlmso.DOC_CODE as FROM_MLMSO_DOC_CODE,'
      '  %HAS_DOC_ITEMS[from_mlmso] as FROM_MLMSO_HAS_DOC_ITEMS,'
      ''
      
        '  Coalesce(:OVERRIDING_FROM_PROFESSION_CODE, from_mlmso.PROFESSI' +
        'ON_CODE) as FROM_PROFESSION_CODE,'
      ''
      '  ( select'
      '      p.PROFESSION_NAME'
      '    from'
      '      PROFESSIONS p'
      '    where'
      
        '      (p.PROFESSION_CODE = Coalesce(:OVERRIDING_FROM_PROFESSION_' +
        'CODE, from_mlmso.PROFESSION_CODE))'
      '  ) as FROM_PROFESSION_NAME,'
      ''
      '  ( select'
      '      pp.USED_BY_EMPLOYEES'
      '    from'
      '      PROFESSION_PERIODS pp'
      '    where'
      
        '      (pp.PROFESSION_CODE = Coalesce(:OVERRIDING_FROM_PROFESSION' +
        '_CODE, from_mlmso.PROFESSION_CODE)) and'
      '      (ContextDate between pp.BEGIN_DATE and pp.END_DATE)'
      '  ) as FROM_PROF_USED_BY_EMPLOYEES,'
      ''
      '  ( select'
      '      pp.USED_BY_TEAMS'
      '    from'
      '      PROFESSION_PERIODS pp'
      '    where'
      
        '      (pp.PROFESSION_CODE = Coalesce(:OVERRIDING_FROM_PROFESSION' +
        '_CODE, from_mlmso.PROFESSION_CODE)) and'
      '      (ContextDate between pp.BEGIN_DATE and pp.END_DATE)'
      '  ) as FROM_PROF_USED_BY_TEAMS,'
      ''
      '  from_mlmso.OPERATION_TYPE_CODE as FROM_OPERATION_TYPE_CODE,'
      ''
      
        '  Replace(from_mlmso.NOTES, Chr(13)||Chr(10), '#39' '#39') as FROM_NOTES' +
        ','
      ''
      
        '  Nvl2(from_mlmso.SETUP_PROFESSION_CODE, Nvl2(from_mlmso.SETUP_D' +
        'ATE, 1, 0), 1) as FROM_SETUP_IS_DONE,'
      ''
      '  d.BEGIN_DATE as FROM_DEPT_BEGIN_DATE,'
      '  d.END_DATE as FROM_DEPT_END_DATE,'
      ''
      '  tox.TO_MLL_NO_AS_TEXT,'
      '  tox.TO_MLL_FORK_NO,'
      '  tox.TO_MLMS_OBJECT_BRANCH_CODE,'
      '  tox.TO_MLMS_OBJECT_CODE,'
      '  tox.TO_STAGE_IDENTIFIER,'
      '  tox.TO_MLMS_DOC_BRANCH_CODE,'
      '  tox.TO_MLMS_DOC_CODE,'
      '  tox.TO_MLMS_HAS_DOC_ITEMS,'
      '  tox.TO_MLMS_REMAINING_WORKDAYS,'
      '  tox.TO_DETAIL_CODE,'
      '  tox.TO_DETAIL_NAME,'
      '  tox.TO_LINE_DETAIL_TECH_QUANTITY,'
      '  tox.TO_DETAIL_TECH_MEASURE_ABBREV,'
      '  tox.TO_PRODUCT_CODE,'
      '  tox.TO_PRODUCT_TECH_QUANTITY,'
      '  tox.TO_PRODUCT_NAME,'
      '  tox.TO_TOTAL_PRODUCT_TECH_QTY,'
      '  tox.TO_PRODUCT_TECH_MEASURE_ABBREV,'
      '  tox.TO_PROFESSION_CODE,'
      '  tox.TO_PROFESSION_NAME,'
      '  tox.TO_OPERATION_TYPE_CODE,'
      '  tox.TO_NOTES,'
      '  (1-Sign(tox.OUTGOING_WORKDAYS)) as IS_TO_LAST_STAGE,'
      '  tox.DEPT_BEGIN_DATE as TO_DEPT_BEGIN_DATE,'
      '  tox.DEPT_END_DATE as TO_DEPT_END_DATE,'
      '  tox.TO_DEPT_ZONE_COUNT,'
      ''
      '  ml.IS_OPERATIONS_MODEL,'
      '  %MODEL_OPERATIONS_STATUS[ml] as MODEL_OPERATIONS_STATUS_CODE,'
      ''
      '  from_mlmso.DEPT_CODE as FROM_MLMSO_DEPT_CODE,'
      ''
      '  ml.NOTES as PRINT_NOTES,'
      ''
      '  ( select'
      '      Cast('
      '        ListAgg('
      '          ( select'
      
        '              (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_' +
        'LETTER)'
      '            from'
      '              DEPTS d,'
      '              DEPT_TYPES dt'
      '            where'
      '              (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '              (d.DEPT_CODE = to_mlmso.DEPT_CODE)'
      '          ),'
      '          '#39'; '#39
      
        '        ) within group (order by to_mlmso.MLMS_OPERATION_VARIANT' +
        '_NO)'
      '        as VarChar2(250 char)'
      '     )'
      '    from'
      '      MLMS_OPERATIONS to_mlmso'
      '    where'
      
        '      (to_mlmso.MLMS_OBJECT_BRANCH_CODE = tox.TO_MLMS_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (to_mlmso.MLMS_OBJECT_CODE = tox.TO_MLMS_OBJECT_CODE) and'
      
        '      (to_mlmso.MLMS_OPERATION_NO = tox.TO_MLMS_OPERATION_NO) an' +
        'd'
      '      (to_mlmso.MLMS_OPERATION_VARIANT_NO >= 0)'
      '  ) as TO_MLMSO_VARIANTS_DEPTS'
      ''
      'from'
      '  MLMS_OPERATIONS from_mlmso,'
      '  ML_MODEL_STAGES from_mlms,'
      '  MATERIAL_LIST_LINES from_mll,'
      '  MATERIAL_LISTS ml,'
      '  SALES s,'
      '  SALE_GROUPS sg,'
      '  DEPTS d,'
      '  ('
      '    select'
      '      to_mll.ML_OBJECT_CODE,'
      '      to_mll.NO_AS_TEXT as TO_MLL_NO_AS_TEXT,'
      '      to_mll.FORK_NO as TO_MLL_FORK_NO,'
      
        '      to_mlms.MLMS_OBJECT_BRANCH_CODE as TO_MLMS_OBJECT_BRANCH_C' +
        'ODE,'
      '      to_mlms.MLMS_OBJECT_CODE as TO_MLMS_OBJECT_CODE,'
      '      to_mlms.OUTGOING_WORKDAYS,'
      ''
      '      ('
      '        select'
      
        '          (to_mlms.ML_MODEL_STAGE_NO || '#39':'#39' || dt.DEPT_TYPE_ABBR' +
        'EV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '        from'
      '          DEPTS d,'
      '          DEPT_TYPES dt'
      '        where'
      '          (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '          (d.DEPT_CODE = to_mlms.DEPT_CODE)'
      '      ) as TO_STAGE_IDENTIFIER,'
      ''
      '      to_mlms.DOC_BRANCH_CODE as TO_MLMS_DOC_BRANCH_CODE,'
      '      to_mlms.DOC_CODE as TO_MLMS_DOC_CODE,'
      '      %HAS_DOC_ITEMS[to_mlms] as TO_MLMS_HAS_DOC_ITEMS,'
      ''
      
        '      %COUNT_WORKDAYS[ContextDate~to_mlms.TREATMENT_END_DATE] as' +
        ' TO_MLMS_REMAINING_WORKDAYS,'
      ''
      '      to_mll.DETAIL_CODE as TO_DETAIL_CODE,'
      ''
      '      ('
      '        select'
      '          p.NAME'
      '        from'
      '          PRODUCTS p'
      '        where'
      '          (p.PRODUCT_CODE = to_mll.DETAIL_CODE)'
      '      ) as TO_DETAIL_NAME,'
      ''
      
        '      to_mll.LINE_DETAIL_TECH_QUANTITY as TO_LINE_DETAIL_TECH_QU' +
        'ANTITY,'
      ''
      '      ('
      '        select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          PRODUCTS p,'
      '          MEASURES m'
      '        where'
      ''
      '          (m.MEASURE_CODE = p.TECH_MEASURE_CODE) and'
      '          (p.PRODUCT_CODE = to_mll.DETAIL_CODE)'
      '      ) as TO_DETAIL_TECH_MEASURE_ABBREV,'
      ''
      '      to_mll.PRODUCT_CODE as TO_PRODUCT_CODE,'
      '      to_mll.PRODUCT_TECH_QUANTITY as TO_PRODUCT_TECH_QUANTITY,'
      ''
      '      ('
      '        select'
      '          p.NAME'
      '        from'
      '          PRODUCTS p'
      '        where'
      '          (p.PRODUCT_CODE = to_mll.PRODUCT_CODE)'
      '      ) as TO_PRODUCT_NAME,'
      ''
      
        '      (to_mll.LINE_DETAIL_TECH_QUANTITY * to_mll.PRODUCT_TECH_QU' +
        'ANTITY) as TO_TOTAL_PRODUCT_TECH_QTY,'
      ''
      '      ('
      '        select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          PRODUCTS p,'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.TECH_MEASURE_CODE) and'
      '          (p.PRODUCT_CODE = to_mll.PRODUCT_CODE)'
      '      ) as TO_PRODUCT_TECH_MEASURE_ABBREV,'
      ''
      '      to_mlmso.PROFESSION_CODE as TO_PROFESSION_CODE,'
      ''
      '      ('
      '        select'
      '          p.PROFESSION_NAME'
      '        from'
      '          PROFESSIONS p'
      '        where'
      '          (p.PROFESSION_CODE = to_mlmso.PROFESSION_CODE)'
      '      ) as TO_PROFESSION_NAME,'
      ''
      '      to_mlmso.OPERATION_TYPE_CODE as TO_OPERATION_TYPE_CODE,'
      '      to_mlmso.MLMS_OPERATION_NO as TO_MLMS_OPERATION_NO,'
      
        '      Replace(to_mlmso.NOTES, Chr(13)||Chr(10), '#39' '#39') as TO_NOTES' +
        ','
      ''
      '      d.BEGIN_DATE as DEPT_BEGIN_DATE,'
      '      d.END_DATE as DEPT_END_DATE,'
      ''
      '      ( select'
      '          dp.PARALLEL_PROCESS_COUNT'
      '        from'
      '          DEPT_PERIODS dp'
      '        where'
      '          (dp.DEPT_CODE = to_mlmso.DEPT_CODE) and'
      '          (ContextDate between dp.BEGIN_DATE and dp.END_DATE)'
      '      ) as TO_DEPT_ZONE_COUNT'
      ''
      '    from'
      '      MLMS_OPERATIONS to_mlmso,'
      '      ML_MODEL_STAGES to_mlms,'
      '      MATERIAL_LIST_LINES to_mll,'
      '      DEPTS d'
      '    where'
      
        '      (to_mlmso.MLMSO_OBJECT_BRANCH_CODE = :TO_MLMSO_OBJECT_BRAN' +
        'CH_CODE) and'
      '      (to_mlmso.MLMSO_OBJECT_CODE = :TO_MLMSO_OBJECT_CODE) and'
      ''
      
        '      (to_mlmso.MLMS_OBJECT_BRANCH_CODE = to_mlms.MLMS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (to_mlmso.MLMS_OBJECT_CODE = to_mlms.MLMS_OBJECT_CODE) and'
      ''
      
        '      (to_mlms.MLL_OBJECT_BRANCH_CODE = to_mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (to_mlms.MLL_OBJECT_CODE = to_mll.MLL_OBJECT_CODE) and'
      ''
      '      (to_mlmso.DEPT_CODE = d.DEPT_CODE)'
      '  ) tox'
      ''
      'where'
      
        '  (from_mlmso.MLMSO_OBJECT_BRANCH_CODE = :FROM_MLMSO_OBJECT_BRAN' +
        'CH_CODE) and'
      '  (from_mlmso.MLMSO_OBJECT_CODE = :FROM_MLMSO_OBJECT_CODE) and'
      ''
      
        '  (from_mlmso.MLMS_OBJECT_BRANCH_CODE = from_mlms.MLMS_OBJECT_BR' +
        'ANCH_CODE) and'
      '  (from_mlmso.MLMS_OBJECT_CODE = from_mlms.MLMS_OBJECT_CODE) and'
      ''
      
        '  (from_mlms.MLL_OBJECT_BRANCH_CODE = from_mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '  (from_mlms.MLL_OBJECT_CODE = from_mll.MLL_OBJECT_CODE) and'
      ''
      
        '  (from_mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) an' +
        'd'
      '  (from_mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '  (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '  (s.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRANCH' +
        '_CODE(+)) and'
      '  (s.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE(+)) and'
      ''
      '  (ml.ML_OBJECT_CODE = tox.ML_OBJECT_CODE(+)) and'
      ''
      '  (from_mlmso.DEPT_CODE = d.DEPT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[from_mlms]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[ContextDate~from_mlms.TREATMENT_END_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[from_mlmso]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'MODEL_OPERATIONS_STATUS[ml]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[to_mlms]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[ContextDate~to_mlms.TREATMENT_END_DATE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 728
    Top = 56
    object qryOperationMovementHeaderPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_IDENTIFIER'
      Size = 188
    end
    object qryOperationMovementHeaderSALE_PRIORITY_NO: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_NO'
    end
    object qryOperationMovementHeaderSALE_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_COLOR'
    end
    object qryOperationMovementHeaderSALE_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_BACKGROUND_COLOR'
    end
    object qryOperationMovementHeaderSALE_WORK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'SALE_WORK_PRIORITY_NO'
    end
    object qryOperationMovementHeaderFROM_MLL_NO_AS_TEXT: TAbmesWideStringField
      FieldName = 'FROM_MLL_NO_AS_TEXT'
      Size = 100
    end
    object qryOperationMovementHeaderFROM_MLL_FORK_NO: TAbmesFloatField
      FieldName = 'FROM_MLL_FORK_NO'
    end
    object qryOperationMovementHeaderFROM_MLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMS_OBJECT_BRANCH_CODE'
    end
    object qryOperationMovementHeaderFROM_MLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMS_OBJECT_CODE'
    end
    object qryOperationMovementHeaderFROM_MLMS_IS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'FROM_MLMS_IS_AUTO_MOVEMENT'
    end
    object qryOperationMovementHeaderFROM_STAGE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FROM_STAGE_IDENTIFIER'
      Size = 87
    end
    object qryOperationMovementHeaderFROM_MLMS_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMS_DOC_BRANCH_CODE'
    end
    object qryOperationMovementHeaderFROM_MLMS_DOC_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMS_DOC_CODE'
    end
    object qryOperationMovementHeaderFROM_MLMS_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'FROM_MLMS_HAS_DOC_ITEMS'
    end
    object qryOperationMovementHeaderFROM_MLMS_REMAINING_WORKDAYS: TAbmesFloatField
      FieldName = 'FROM_MLMS_REMAINING_WORKDAYS'
    end
    object qryOperationMovementHeaderFROM_DETAIL_CODE: TAbmesFloatField
      FieldName = 'FROM_DETAIL_CODE'
    end
    object qryOperationMovementHeaderFROM_DETAIL_NAME: TAbmesWideStringField
      FieldName = 'FROM_DETAIL_NAME'
      Size = 100
    end
    object qryOperationMovementHeaderFROM_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'FROM_LINE_DETAIL_TECH_QUANTITY'
    end
    object qryOperationMovementHeaderFROM_DETAIL_TECH_MEASURE_ABB: TAbmesWideStringField
      FieldName = 'FROM_DETAIL_TECH_MEASURE_ABB'
      Size = 5
    end
    object qryOperationMovementHeaderFROM_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'FROM_PRODUCT_CODE'
    end
    object qryOperationMovementHeaderFROM_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'FROM_PRODUCT_TECH_QUANTITY'
    end
    object qryOperationMovementHeaderFROM_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'FROM_PRODUCT_NAME'
      Size = 100
    end
    object qryOperationMovementHeaderFROM_TOTAL_PRODUCT_TECH_QTY: TAbmesFloatField
      FieldName = 'FROM_TOTAL_PRODUCT_TECH_QTY'
    end
    object qryOperationMovementHeaderFROM_PRODUCT_TECH_MEASURE_ABB: TAbmesWideStringField
      FieldName = 'FROM_PRODUCT_TECH_MEASURE_ABB'
      Size = 5
    end
    object qryOperationMovementHeaderFROM_MLMS_OPERATION_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FROM_MLMS_OPERATION_IDENTIFIER'
      Size = 184
    end
    object qryOperationMovementHeaderFROM_MLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'FROM_MLMS_OPERATION_VARIANT_NO'
      Required = True
    end
    object qryOperationMovementHeaderFROM_MLMSO_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_DOC_BRANCH_CODE'
    end
    object qryOperationMovementHeaderFROM_MLMSO_DOC_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_DOC_CODE'
    end
    object qryOperationMovementHeaderFROM_MLMSO_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'FROM_MLMSO_HAS_DOC_ITEMS'
    end
    object qryOperationMovementHeaderFROM_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'FROM_PROFESSION_CODE'
    end
    object qryOperationMovementHeaderFROM_PROFESSION_NAME: TAbmesWideStringField
      FieldName = 'FROM_PROFESSION_NAME'
      Size = 100
    end
    object qryOperationMovementHeaderFROM_PROF_USED_BY_EMPLOYEES: TAbmesFloatField
      FieldName = 'FROM_PROF_USED_BY_EMPLOYEES'
    end
    object qryOperationMovementHeaderFROM_PROF_USED_BY_TEAMS: TAbmesFloatField
      FieldName = 'FROM_PROF_USED_BY_TEAMS'
    end
    object qryOperationMovementHeaderFROM_OPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'FROM_OPERATION_TYPE_CODE'
    end
    object qryOperationMovementHeaderFROM_NOTES: TAbmesWideStringField
      FieldName = 'FROM_NOTES'
      Size = 250
    end
    object qryOperationMovementHeaderFROM_SETUP_IS_DONE: TAbmesFloatField
      FieldName = 'FROM_SETUP_IS_DONE'
    end
    object qryOperationMovementHeaderFROM_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'FROM_DEPT_BEGIN_DATE'
    end
    object qryOperationMovementHeaderFROM_DEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'FROM_DEPT_END_DATE'
    end
    object qryOperationMovementHeaderTO_MLL_NO_AS_TEXT: TAbmesWideStringField
      FieldName = 'TO_MLL_NO_AS_TEXT'
      Size = 100
    end
    object qryOperationMovementHeaderTO_MLL_FORK_NO: TAbmesFloatField
      FieldName = 'TO_MLL_FORK_NO'
    end
    object qryOperationMovementHeaderTO_MLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'TO_MLMS_OBJECT_BRANCH_CODE'
    end
    object qryOperationMovementHeaderTO_MLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'TO_MLMS_OBJECT_CODE'
    end
    object qryOperationMovementHeaderTO_STAGE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'TO_STAGE_IDENTIFIER'
      Size = 87
    end
    object qryOperationMovementHeaderTO_MLMS_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'TO_MLMS_DOC_BRANCH_CODE'
    end
    object qryOperationMovementHeaderTO_MLMS_DOC_CODE: TAbmesFloatField
      FieldName = 'TO_MLMS_DOC_CODE'
    end
    object qryOperationMovementHeaderTO_MLMS_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'TO_MLMS_HAS_DOC_ITEMS'
    end
    object qryOperationMovementHeaderTO_MLMS_REMAINING_WORKDAYS: TAbmesFloatField
      FieldName = 'TO_MLMS_REMAINING_WORKDAYS'
    end
    object qryOperationMovementHeaderTO_DETAIL_CODE: TAbmesFloatField
      FieldName = 'TO_DETAIL_CODE'
    end
    object qryOperationMovementHeaderTO_DETAIL_NAME: TAbmesWideStringField
      FieldName = 'TO_DETAIL_NAME'
      Size = 100
    end
    object qryOperationMovementHeaderTO_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TO_LINE_DETAIL_TECH_QUANTITY'
    end
    object qryOperationMovementHeaderTO_DETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TO_DETAIL_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qryOperationMovementHeaderTO_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TO_PRODUCT_CODE'
    end
    object qryOperationMovementHeaderTO_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TO_PRODUCT_TECH_QUANTITY'
    end
    object qryOperationMovementHeaderTO_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'TO_PRODUCT_NAME'
      Size = 100
    end
    object qryOperationMovementHeaderTO_TOTAL_PRODUCT_TECH_QTY: TAbmesFloatField
      FieldName = 'TO_TOTAL_PRODUCT_TECH_QTY'
    end
    object qryOperationMovementHeaderTO_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TO_PRODUCT_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qryOperationMovementHeaderTO_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'TO_PROFESSION_CODE'
    end
    object qryOperationMovementHeaderTO_PROFESSION_NAME: TAbmesWideStringField
      FieldName = 'TO_PROFESSION_NAME'
      Size = 100
    end
    object qryOperationMovementHeaderTO_OPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'TO_OPERATION_TYPE_CODE'
    end
    object qryOperationMovementHeaderTO_NOTES: TAbmesWideStringField
      FieldName = 'TO_NOTES'
      Size = 250
    end
    object qryOperationMovementHeaderIS_OPERATIONS_MODEL: TAbmesFloatField
      FieldName = 'IS_OPERATIONS_MODEL'
    end
    object qryOperationMovementHeaderIS_TO_LAST_STAGE: TAbmesFloatField
      FieldName = 'IS_TO_LAST_STAGE'
    end
    object qryOperationMovementHeaderMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField
      FieldName = 'MODEL_OPERATIONS_STATUS_CODE'
    end
    object qryOperationMovementHeaderTO_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'TO_DEPT_BEGIN_DATE'
    end
    object qryOperationMovementHeaderTO_DEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'TO_DEPT_END_DATE'
    end
    object qryOperationMovementHeaderFROM_MLMSO_DEPT_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_DEPT_CODE'
      Required = True
    end
    object qryOperationMovementHeaderPRINT_NOTES: TAbmesWideStringField
      FieldName = 'PRINT_NOTES'
      Size = 250
    end
    object qryOperationMovementHeaderFROM_MLMSO_IS_LAST_IN_STAGE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_IS_LAST_IN_STAGE'
    end
    object qryOperationMovementHeaderTO_MLMSO_VARIANTS_DEPTS: TAbmesWideStringField
      FieldName = 'TO_MLMSO_VARIANTS_DEPTS'
      Size = 250
    end
    object qryOperationMovementHeaderTO_DEPT_ZONE_COUNT: TAbmesFloatField
      FieldName = 'TO_DEPT_ZONE_COUNT'
    end
  end
  object prvMLMSOperationVariantsHeader: TDataSetProvider
    DataSet = qryMLMSOperationVariantsHeader
    UpdateMode = upWhereKeyOnly
    Left = 448
    Top = 264
  end
  object qryMLMSOperationVariants: TAbmesSQLQuery
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
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OPERATION_NO'
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
      '  mlmso.IS_ACTIVE,'
      '  mlmso.VARIANT_DETAIL_TECH_QUANTITY,'
      '  mlmso.TREATMENT_BEGIN_WORKDAY_NO,'
      '  mlmso.TREATMENT_WORKDAYS,'
      '  mlmso.TREATMENT_BEGIN_DATE,'
      '  mlmso.TREATMENT_END_DATE,'
      ''
      
        '  (mlmso.MLMS_OPERATION_NO || '#39'.'#39' || mlmso.MLMS_OPERATION_VARIAN' +
        'T_NO) as SHOW_NO,'
      '  Nvl2(mlmso.DOC_CODE, 1, 0) as HAS_DOCUMENTATION,'
      ''
      '  mlmso.DEPT_CODE,'
      ''
      '  ('
      '    select'
      '      d.NAME'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = mlmso.DEPT_CODE)'
      '  ) as DEPT_NAME,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = mlmso.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  mlmso.SETUP_PROFESSION_CODE,'
      ''
      '  ('
      '    select'
      '      p.PROFESSION_NAME'
      '    from'
      '      PROFESSIONS p'
      '    where'
      '      (p.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE)'
      '  ) as SETUP_PROFESSION_NAME,'
      ''
      '  ('
      '    select'
      '      p.PROFESSION_NAME'
      '    from'
      '      PROFESSIONS p'
      '    where'
      '      (p.PROFESSION_CODE = mlmso.PROFESSION_CODE)'
      '  ) as PROFESSION_NAME,'
      ''
      '  mlmso.SETUP_EFFORT_COEF,'
      ''
      '  Coalesce('
      '    ( select'
      '        pper.HOUR_PRICE'
      '      from'
      '        PROFESSION_PERIODS pper'
      '      where'
      '        (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE) and'
      
        '        (Coalesce(mlmso.SETUP_DATE, Greatest(mlmso.TREATMENT_BEG' +
        'IN_DATE, ContextDate)) between pper.BEGIN_DATE and pper.END_DATE' +
        ')'
      '    ),'
      '    0'
      '  ) as SETUP_HOUR_PRICE,'
      ''
      '  mlmso.SETUP_HOUR_TECH_QUANTITY,'
      ''
      '  mlmso.EFFORT_COEF,'
      ''
      '  Coalesce('
      '    ( select'
      '        pper.HOUR_PRICE'
      '      from'
      '        PROFESSION_PERIODS pper'
      '      where'
      '        (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and'
      '        ( Decode('
      '            Sign('
      '              mlmso.VARIANT_DETAIL_TECH_QUANTITY'
      '              -'
      '              MiscUtils.LargeZero('
      
        '                Greatest( -- ostavasht za razpredeliane brak ot ' +
        'predhodni operacii sled kato e razpredelen po sledvashtite varia' +
        'nti na nashata operacia'
      '                  0,'
      '                  ('
      
        '                    ( -- brak po predhodinte operacii i etapi ot' +
        ' toia red'
      '                      select'
      
        '                        Coalesce(Sum(om.TOTAL_DETAIL_TECH_QUANTI' +
        'TY), 0)'
      '                      from'
      '                        ML_MODEL_STAGES mlms2,'
      '                        MLMS_OPERATIONS mlmso2,'
      '                        OPERATION_MOVEMENTS om'
      '                      where'
      
        '                        (mlms2.MLL_OBJECT_BRANCH_CODE = mll.MLL_' +
        'OBJECT_BRANCH_CODE) and'
      
        '                        (mlms2.MLL_OBJECT_CODE = mll.MLL_OBJECT_' +
        'CODE) and'
      ''
      
        '                        (mlms2.MLMS_OBJECT_BRANCH_CODE = mlmso2.' +
        'MLMS_OBJECT_BRANCH_CODE) and'
      
        '                        (mlms2.MLMS_OBJECT_CODE = mlmso2.MLMS_OB' +
        'JECT_CODE) and'
      ''
      
        '                        (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlms' +
        'o2.MLMSO_OBJECT_BRANCH_CODE) and'
      
        '                        (om.FROM_MLMSO_OBJECT_CODE = mlmso2.MLMS' +
        'O_OBJECT_CODE) and'
      ''
      '                        (om.STORNO_EMPLOYEE_CODE is null) and'
      '                        (om.TO_DEPT_CODE is not null) and'
      ''
      
        '                        ( (mlms2.ML_MODEL_STAGE_NO < mlms.ML_MOD' +
        'EL_STAGE_NO) or'
      
        '                          ( (mlms2.ML_MODEL_STAGE_NO = mlms.ML_M' +
        'ODEL_STAGE_NO) and'
      
        '                            (mlmso2.MLMS_OPERATION_NO < mlmso.ML' +
        'MS_OPERATION_NO)'
      '                          )'
      '                        )'
      '                    )'
      '                    -'
      
        '                    ( -- ostavashto za vlizane po sledvashtite v' +
        'ariatni na nashata operacia'
      '                      select'
      '                        Coalesce('
      '                          Sum('
      '                            mlmso2.VARIANT_DETAIL_TECH_QUANTITY'
      '                            -'
      
        '                            ( -- vliazlo v operaciata mlmso2 ot ' +
        'drugi operacii'
      '                              select'
      
        '                                Coalesce(Sum(om.TOTAL_DETAIL_TEC' +
        'H_QUANTITY), 0)'
      '                              from'
      '                                OPERATION_MOVEMENTS om'
      '                              where'
      
        '                                (om.TO_MLMSO_OBJECT_BRANCH_CODE ' +
        '= mlmso2.MLMSO_OBJECT_BRANCH_CODE) and'
      
        '                                (om.TO_MLMSO_OBJECT_CODE = mlmso' +
        '2.MLMSO_OBJECT_CODE) and'
      
        '                                (om.STORNO_EMPLOYEE_CODE is null' +
        ') and'
      '                                (om.TO_DEPT_CODE is null) and'
      '                                (not'
      
        '                                  ( (om.FROM_MLMSO_OBJECT_BRANCH' +
        '_CODE = mlmso2.MLMSO_OBJECT_BRANCH_CODE) and'
      
        '                                    (om.FROM_MLMSO_OBJECT_CODE =' +
        ' mlmso2.MLMSO_OBJECT_CODE)'
      '                                  )'
      '                                )'
      '                            )'
      '                          ),'
      '                          0'
      '                        )'
      '                      from'
      '                        MLMS_OPERATIONS mlmso2'
      '                      where'
      
        '                        (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlmso.' +
        'MLMS_OBJECT_BRANCH_CODE) and'
      
        '                        (mlmso2.MLMS_OBJECT_CODE = mlmso.MLMS_OB' +
        'JECT_CODE) and'
      
        '                        (mlmso2.MLMS_OPERATION_NO = mlmso.MLMS_O' +
        'PERATION_NO) and'
      
        '                        (mlmso2.MLMS_OPERATION_VARIANT_NO > mlms' +
        'o.MLMS_OPERATION_VARIANT_NO)'
      '                    )'
      '                  )'
      '                )'
      '              )'
      '              -'
      '              MiscUtils.LargeZero('
      
        '                ( -- izliazlo ot nashata operacia za drugi opera' +
        'cii ili brak'
      '                  select'
      
        '                    Coalesce(Sum(om.TOTAL_DETAIL_TECH_QUANTITY),' +
        ' 0)'
      '                  from'
      '                    OPERATION_MOVEMENTS om'
      '                  where'
      
        '                    (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.ML' +
        'MSO_OBJECT_BRANCH_CODE) and'
      
        '                    (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJ' +
        'ECT_CODE) and'
      '                    (om.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '                    ( (om.TO_DEPT_CODE is not null) or'
      '                      (not'
      
        '                        ( (om.TO_MLMSO_OBJECT_BRANCH_CODE = mlms' +
        'o.MLMSO_OBJECT_BRANCH_CODE) and'
      
        '                          (om.TO_MLMSO_OBJECT_CODE = mlmso.MLMSO' +
        '_OBJECT_CODE)'
      '                        )'
      '                      )'
      '                    )'
      '                )'
      '              )'
      '            ),'
      
        '            1, Greatest(mlmso.TREATMENT_BEGIN_DATE, ContextDate)' +
        ',   -- ostava oshte za predavane'
      '            ( select'
      '                Max(om.OM_DATE)'
      '              from'
      '                OPERATION_MOVEMENTS om'
      '              where'
      
        '                (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_' +
        'OBJECT_BRANCH_CODE) and'
      
        '                (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_' +
        'CODE) and'
      '                (om.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '                ( (om.TO_DEPT_CODE is not null) or'
      '                  (not'
      
        '                    ( (om.TO_MLMSO_OBJECT_BRANCH_CODE = mlmso.ML' +
        'MSO_OBJECT_BRANCH_CODE) and'
      
        '                      (om.TO_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJ' +
        'ECT_CODE)'
      '                    )'
      '                  )'
      '                )'
      '            )                 '
      '          ) between pper.BEGIN_DATE and pper.END_DATE'
      '        )'
      '    ),'
      '    0'
      '  ) as HOUR_PRICE,'
      ''
      '  mlmso.HOUR_TECH_QUANTITY,'
      ''
      '  mlmso.NOTES,'
      '  mlmso.HAS_SPECIAL_CONTROL,'
      ''
      '  mlmso.DOC_BRANCH_CODE,'
      '  mlmso.DOC_CODE,'
      ''
      '  Sign('
      '    ( select'
      '        Count(*)'
      '      from'
      '        OPERATION_MOVEMENTS om'
      '      where'
      
        '        (om.TO_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '        (om.TO_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '        (om.STORNO_EMPLOYEE_CODE is null)'
      '    )'
      '  ) as HAS_OPERATION_MOVEMENTS,'
      ''
      '  Decode(mlmso.OPERATION_TYPE_CODE,'
      
        '    2, CapacityUtils.HasMlmsoPlanExcess(mlmso.MLMSO_OBJECT_BRANC' +
        'H_CODE, mlmso.MLMSO_OBJECT_CODE),'
      '    0'
      '  ) as HAS_CAPACITY_DEFICIT,'
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
      '  mlmso.IS_AUTO_SETUP,'
      '  mlmso.IS_AUTO_MOVEMENT'
      ''
      'from'
      '  MLMS_OPERATIONS mlmso,'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll'
      ''
      'where'
      
        '  (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      ''
      '  (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '  (mlmso.MLMS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANCH_CODE) and'
      '  (mlmso.MLMS_OBJECT_CODE = :MLMS_OBJECT_CODE) and'
      '  (mlmso.MLMS_OPERATION_NO = :MLMS_OPERATION_NO) and'
      '  (mlmso.MLMS_OPERATION_VARIANT_NO >= 0)'
      ''
      'order by'
      '  mlmso.MLMS_OPERATION_VARIANT_NO'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'MLMS_OPERATIONS_FOR_EDIT'
    Left = 448
    Top = 408
    object qryMLMSOperationVariantsMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryMLMSOperationVariantsMLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_CODE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryMLMSOperationVariantsMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsMLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsMLMS_OPERATION_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_NO'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_VARIANT_NO'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationVariantsVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'VARIANT_DETAIL_TECH_QUANTITY'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationVariantsSHOW_NO: TAbmesWideStringField
      FieldName = 'SHOW_NO'
      ProviderFlags = []
      Size = 81
    end
    object qryMLMSOperationVariantsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryMLMSOperationVariantsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 16
    end
    object qryMLMSOperationVariantsSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsSETUP_PROFESSION_NAME: TAbmesWideStringField
      FieldName = 'SETUP_PROFESSION_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryMLMSOperationVariantsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryMLMSOperationVariantsSETUP_EFFORT_COEF: TAbmesFloatField
      FieldName = 'SETUP_EFFORT_COEF'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsSETUP_HOUR_PRICE: TAbmesFloatField
      FieldName = 'SETUP_HOUR_PRICE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsEFFORT_COEF: TAbmesFloatField
      FieldName = 'EFFORT_COEF'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsHOUR_PRICE: TAbmesFloatField
      FieldName = 'HOUR_PRICE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsHOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'HOUR_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      ProviderFlags = []
      Size = 250
    end
    object qryMLMSOperationVariantsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationVariantsTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationVariantsTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_BEGIN_DATE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsTREATMENT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_END_DATE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsHAS_OPERATION_MOVEMENTS: TAbmesFloatField
      FieldName = 'HAS_OPERATION_MOVEMENTS'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsHAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'HAS_SPECIAL_CONTROL'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsHAS_CAPACITY_DEFICIT: TAbmesFloatField
      FieldName = 'HAS_CAPACITY_DEFICIT'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsIS_AUTO_SETUP: TAbmesFloatField
      FieldName = 'IS_AUTO_SETUP'
      ProviderFlags = []
    end
    object qryMLMSOperationVariantsIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      ProviderFlags = []
    end
  end
  object prvMLMSOperationSetup: TDataSetProvider
    DataSet = qryMLMSOperationSetup
    UpdateMode = upWhereKeyOnly
    Left = 592
    Top = 264
  end
  object qryMLMSOperationSetup: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mlmso.MLMSO_OBJECT_BRANCH_CODE,'
      '  mlmso.MLMSO_OBJECT_CODE,'
      '  mlmso.SETUP_EMPLOYEE_CODE,'
      '  mlmso.SETUP_TEAM_CODE,'
      '  mlmso.SETUP_PROFESSION_CODE,'
      '  mlmso.SETUP_DATE,'
      '  mlmso.SETUP_TIME,'
      '  mlmso.SETUP_COUNT,'
      '  mlmso.DONE_SETUP_COUNT,'
      ''
      '  ( ( select'
      '        pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '      from'
      '        PRODUCTION_ORDER_TYPES pot'
      '      where'
      
        '        (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER_TYP' +
        'E_CODE)'
      '    ) ||'
      '    '#39'/'#39' ||'
      '    ( select'
      '        d.CUSTOM_CODE'
      '      from'
      '        DEPTS d'
      '      where'
      '        (d.DEPT_CODE = s.SALE_BRANCH_CODE)'
      '    ) ||'
      '    '#39'/'#39' ||'
      '    s.SALE_NO ||'
      '    '#39'/'#39' ||'
      '    ( select'
      '        st.SALE_TYPE_ABBREV'
      '      from'
      '        SALE_TYPES st'
      '      where'
      '        (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '    )'
      '  ) as PRODUCTION_ORDER_IDENTIFIER,'
      ''
      '  ( select'
      '      pr.PRIORITY_NO'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as SALE_PRIORITY_NO,'
      ''
      '  ( select'
      '      pr.PRIORITY_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as SALE_PRIORITY_COLOR,'
      ''
      '  ( select'
      '      pr.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as SALE_PRIORITY_BACKGROUND_COLOR,'
      ''
      '  ( select'
      '      wp.WORK_PRIORITY_NO'
      '    from'
      '      WORK_PRIORITIES wp'
      '    where'
      '      (wp.WORK_PRIORITY_CODE = s.WORK_PRIORITY_CODE)'
      '  ) as SALE_WORK_PRIORITY_NO,'
      '  '
      '  mll.NO_AS_TEXT,'
      '  mll.FORK_NO,'
      ''
      '  ('
      '    select'
      
        '      (mlms.ML_MODEL_STAGE_NO || '#39':'#39' || dt.DEPT_TYPE_ABBREV || d' +
        '.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (d.DEPT_CODE = mlms.DEPT_CODE)'
      '  ) as MLMS_IDENTIFIER,'
      ''
      '  mlms.DOC_BRANCH_CODE as MLMS_DOC_BRANCH_CODE,'
      '  mlms.DOC_CODE as MLMS_DOC_CODE,'
      '  %HAS_DOC_ITEMS[mlms] as MLMS_HAS_DOC_ITEMS,'
      ''
      
        '  %COUNT_WORKDAYS[ContextDate~ mlms.TREATMENT_END_DATE] as MLMS_' +
        'REMAINING_WORKDAYS,'
      ''
      '  mll.DETAIL_CODE as DETAIL_CODE,'
      ''
      '  ('
      '    select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_NAME,'
      ''
      '  mll.LINE_DETAIL_TECH_QUANTITY as LINE_DETAIL_TECH_QUANTITY,'
      ''
      '  ('
      '    select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.TECH_MEASURE_CODE) and'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_TECH_MEASURE_ABBREV,'
      ''
      '  mll.PRODUCT_CODE as PRODUCT_CODE,'
      '  mll.PRODUCT_TECH_QUANTITY as PRODUCT_TECH_QUANTITY,'
      ''
      '  ('
      '    select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.PRODUCT_CODE)'
      '  ) as PRODUCT_NAME,'
      ''
      
        '  (mll.LINE_DETAIL_TECH_QUANTITY * mll.PRODUCT_TECH_QUANTITY) as' +
        ' TOTAL_PRODUCT_TECH_QUANTITY,'
      ''
      '  ('
      '    select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.TECH_MEASURE_CODE) and'
      '      (p.PRODUCT_CODE = mll.PRODUCT_CODE)'
      '  ) as PRODUCT_TECH_MEASURE_ABBREV,'
      ''
      '  ('
      '    mlmso.MLMS_OPERATION_NO || '#39'.'#39' ||'
      '    mlmso.MLMS_OPERATION_VARIANT_NO || '#39' - '#39' ||'
      '    d.NAME'
      '  ) as MLMSO_IDENTIFIER,'
      ''
      '  mlmso.MLMS_OPERATION_VARIANT_NO,'
      ''
      '  mlmso.DOC_BRANCH_CODE as MLMSO_DOC_BRANCH_CODE,'
      '  mlmso.DOC_CODE as MLMSO_DOC_CODE,'
      '  %HAS_DOC_ITEMS[mlmso] as MLMSO_HAS_DOC_ITEMS,'
      ''
      '  ('
      '    select'
      '      p.PROFESSION_NAME'
      '    from'
      '      PROFESSIONS p'
      '    where'
      '      (p.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE)'
      '  ) as SETUP_PROFESSION_NAME,'
      ''
      '  ( select'
      '      pp.USED_BY_EMPLOYEES'
      '    from'
      '      PROFESSION_PERIODS pp'
      '    where'
      '      (pp.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE) and'
      '      (ContextDate between pp.BEGIN_DATE and pp.END_DATE)'
      '  ) as SETUP_PROF_USED_BY_EMPLOYEES,'
      ''
      '  ( select'
      '      pp.USED_BY_TEAMS'
      '    from'
      '      PROFESSION_PERIODS pp'
      '    where'
      '      (pp.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE) and'
      '      (ContextDate between pp.BEGIN_DATE and pp.END_DATE)'
      '  ) as SETUP_PROF_USED_BY_TEAMS,'
      ''
      '  Replace(mlmso.NOTES, Chr(13)||Chr(10), '#39' '#39') as NOTES,'
      ''
      '  ('
      '    select'
      '      (e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = mlmso.SETUP_EMPLOYEE_CODE)'
      '  ) as SETUP_EMPLOYEE_NAME,'
      ''
      '  ('
      '    select'
      '      t.TEAM_NAME'
      '    from'
      '      TEAMS t'
      '    where'
      '      (t.TEAM_CODE = mlmso.SETUP_TEAM_CODE)'
      '  ) as SETUP_TEAM_NAME,'
      ''
      '  d.BEGIN_DATE as DEPT_BEGIN_DATE,'
      '  d.END_DATE as DEPT_END_DATE,'
      '  mlmso.DEPT_CODE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ) as HAS_MOVEMENTS'
      ''
      'from'
      '  MLMS_OPERATIONS mlmso,'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml,'
      '  SALES s,'
      '  SALE_GROUPS sg,'
      '  DEPTS d'
      ''
      'where'
      
        '  (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      ''
      '  (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '  (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '  (s.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRANCH' +
        '_CODE(+)) and'
      '  (s.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE(+)) and'
      ''
      '  (mlmso.DEPT_CODE = d.DEPT_CODE) and'
      ''
      
        '  (mlmso.MLMSO_OBJECT_BRANCH_CODE = :MLMSO_OBJECT_BRANCH_CODE) a' +
        'nd'
      '  (mlmso.MLMSO_OBJECT_CODE = :MLMSO_OBJECT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[mlms]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[ContextDate~ mlms.TREATMENT_END_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[mlmso]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'MLMS_OPERATIONS_FOR_EDIT'
    Left = 592
    Top = 312
    object qryMLMSOperationSetupMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryMLMSOperationSetupMLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_CODE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryMLMSOperationSetupSETUP_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'SETUP_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationSetupSETUP_TEAM_CODE: TAbmesFloatField
      FieldName = 'SETUP_TEAM_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationSetupSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationSetupSETUP_DATE: TAbmesSQLTimeStampField
      FieldName = 'SETUP_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationSetupSETUP_TIME: TAbmesSQLTimeStampField
      FieldName = 'SETUP_TIME'
      ProviderFlags = [pfInUpdate]
    end
    object qryMLMSOperationSetupSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupDONE_SETUP_COUNT: TAbmesFloatField
      FieldName = 'DONE_SETUP_COUNT'
    end
    object qryMLMSOperationSetupPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_IDENTIFIER'
      ProviderFlags = []
      Size = 188
    end
    object qryMLMSOperationSetupSALE_PRIORITY_NO: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_NO'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupSALE_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_COLOR'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupSALE_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_BACKGROUND_COLOR'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupSALE_WORK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'SALE_WORK_PRIORITY_NO'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      ProviderFlags = []
      Size = 100
    end
    object qryMLMSOperationSetupFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupMLMS_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MLMS_IDENTIFIER'
      ProviderFlags = []
      Size = 87
    end
    object qryMLMSOperationSetupMLMS_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupMLMS_DOC_CODE: TAbmesFloatField
      FieldName = 'MLMS_DOC_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupMLMS_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'MLMS_HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupMLMS_REMAINING_WORKDAYS: TAbmesFloatField
      FieldName = 'MLMS_REMAINING_WORKDAYS'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryMLMSOperationSetupLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'LINE_DETAIL_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'DETAIL_TECH_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryMLMSOperationSetupPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryMLMSOperationSetupTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupPRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_TECH_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryMLMSOperationSetupMLMSO_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MLMSO_IDENTIFIER'
      ProviderFlags = []
      Size = 184
    end
    object qryMLMSOperationSetupMLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_VARIANT_NO'
      ProviderFlags = []
      Required = True
    end
    object qryMLMSOperationSetupMLMSO_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupMLMSO_DOC_CODE: TAbmesFloatField
      FieldName = 'MLMSO_DOC_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupMLMSO_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'MLMSO_HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupSETUP_PROFESSION_NAME: TAbmesWideStringField
      FieldName = 'SETUP_PROFESSION_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryMLMSOperationSetupSETUP_PROF_USED_BY_EMPLOYEES: TAbmesFloatField
      FieldName = 'SETUP_PROF_USED_BY_EMPLOYEES'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupSETUP_PROF_USED_BY_TEAMS: TAbmesFloatField
      FieldName = 'SETUP_PROF_USED_BY_TEAMS'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      ProviderFlags = []
      Size = 250
    end
    object qryMLMSOperationSetupSETUP_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'SETUP_EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 41
    end
    object qryMLMSOperationSetupSETUP_TEAM_NAME: TAbmesWideStringField
      FieldName = 'SETUP_TEAM_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryMLMSOperationSetupDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = []
    end
    object qryMLMSOperationSetupHAS_MOVEMENTS: TAbmesFloatField
      FieldName = 'HAS_MOVEMENTS'
      ProviderFlags = []
    end
  end
  object prvOperationMovementTypes: TDataSetProvider
    DataSet = qryOperationMovementTypes
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 312
    Top = 384
  end
  object qryOperationMovementTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  omt.OPERATION_MOVEMENT_TYPE_CODE,'
      '  omt.OPERATION_MOVEMENT_TYPE_ABBREV,'
      '  omt.OPERATION_MOVEMENT_TYPE_NAME'
      ''
      'from'
      '  OPERATION_MOVEMENT_TYPES omt'
      ''
      'order by'
      '  omt.OPERATION_MOVEMENT_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 312
    Top = 432
    object qryOperationMovementTypesOPERATION_MOVEMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_MOVEMENT_TYPE_CODE'
    end
    object qryOperationMovementTypesOPERATION_MOVEMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'OPERATION_MOVEMENT_TYPE_ABBREV'
      Size = 100
    end
    object qryOperationMovementTypesOPERATION_MOVEMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'OPERATION_MOVEMENT_TYPE_NAME'
      Size = 100
    end
  end
  object prvProfessionTeams: TDataSetProvider
    DataSet = qryProfessionTeams
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 582
    Top = 8
  end
  object qryProfessionTeams: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  t.TEAM_CODE,'
      '  t.TEAM_NAME,'
      '  Coalesce('
      '    ('
      '      select'
      '        1'
      '      from'
      '        TEAM_PROFESSIONS tp'
      '      where'
      '        (tp.TEAM_CODE = t.TEAM_CODE) and'
      '        (tp.PROFESSION_CODE = :PROFESSION_CODE)'
      '    ),'
      '    0'
      '  ) as HAS_THE_PROFESSION'
      ''
      'from'
      '  TEAMS t'
      ''
      'order by'
      '  t.TEAM_NAME,'
      '  t.TEAM_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 582
    Top = 56
    object qryProfessionTeamsTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
    end
    object qryProfessionTeamsTEAM_NAME: TAbmesWideStringField
      FieldName = 'TEAM_NAME'
      Size = 50
    end
    object qryProfessionTeamsHAS_THE_PROFESSION: TAbmesFloatField
      FieldName = 'HAS_THE_PROFESSION'
    end
  end
  object prvToMLMSOperations: TDataSetProvider
    DataSet = qryToMLMSOperations
    UpdateMode = upWhereKeyOnly
    OnGetData = prvToMLMSOperationsGetData
    Left = 592
    Top = 384
  end
  object qryToMLMSOperations: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OPERATION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OPERATION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OPERATION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OPERATION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OPERATION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ONLY_CURRENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mlmso2.MLMSO_OBJECT_BRANCH_CODE,'
      '  mlmso2.MLMSO_OBJECT_CODE,'
      '  mlmso2.MLMS_OPERATION_NO,'
      '  mlmso2.MLMS_OPERATION_VARIANT_NO,'
      ''
      
        '  (To_Char(mlmso2.MLMSO_OBJECT_BRANCH_CODE) || '#39','#39' || To_Char(ml' +
        'mso2.MLMSO_OBJECT_CODE)) as MLMSO_BRANCH_AND_CODE,'
      ''
      '  ('
      '    mlmso2.MLMS_OPERATION_NO || '#39'.'#39' ||'
      '    mlmso2.MLMS_OPERATION_VARIANT_NO || '#39' - '#39' ||'
      '    ('
      '      select'
      '        d.NAME'
      '      from'
      '        DEPTS d'
      '      where'
      '        (d.DEPT_CODE = mlmso2.DEPT_CODE)'
      '    )'
      '  ) as MLMSO_IDENTIFIER,'
      ''
      '  mlmso2.DOC_BRANCH_CODE as MLMSO_DOC_BRANCH_CODE,'
      '  mlmso2.DOC_CODE as MLMSO_DOC_CODE,'
      '  %HAS_DOC_ITEMS[mlmso2] as MLMSO_HAS_DOC_ITEMS'
      ''
      'from'
      '  MLMS_OPERATIONS mlmso,'
      '  MLMS_OPERATIONS mlmso2'
      ''
      'where'
      
        '  (mlmso.MLMS_OBJECT_BRANCH_CODE = mlmso2.MLMS_OBJECT_BRANCH_COD' +
        'E) and'
      '  (mlmso.MLMS_OBJECT_CODE = mlmso2.MLMS_OBJECT_CODE) and'
      '  (mlmso.MLMS_OPERATION_NO + 1 = mlmso2.MLMS_OPERATION_NO) and'
      '  ( (:OPERATION_TYPE_CODE is null) or'
      '    (mlmso2.OPERATION_TYPE_CODE = :OPERATION_TYPE_CODE) ) and'
      ''
      
        '  (mlmso.MLMSO_OBJECT_BRANCH_CODE = :FROM_MLMSO_OBJECT_BRANCH_CO' +
        'DE) and'
      '  (mlmso.MLMSO_OBJECT_CODE = :FROM_MLMSO_OBJECT_CODE)'
      ''
      ''
      'union all'
      ''
      ''
      'select'
      '  ex.MLMSO_OBJECT_BRANCH_CODE,'
      '  ex.MLMSO_OBJECT_CODE,'
      '  ex.MLMS_OPERATION_NO,'
      '  ex.MLMS_OPERATION_VARIANT_NO,'
      ''
      
        '  (To_Char(ex.MLMSO_OBJECT_BRANCH_CODE) || '#39','#39' || To_Char(ex.MLM' +
        'SO_OBJECT_CODE)) as MLMSO_BRANCH_AND_CODE,'
      ''
      '  ('
      '    ex.MLMS_OPERATION_NO || '#39'.'#39' ||'
      '    ex.MLMS_OPERATION_VARIANT_NO || '#39' - '#39' ||'
      '    ('
      '      select'
      '        d.NAME'
      '      from'
      '        DEPTS d'
      '      where'
      '        (d.DEPT_CODE = ex.DEPT_CODE)'
      '    )'
      '  ) as MLMSO_IDENTIFIER,'
      ''
      '  ex.DOC_BRANCH_CODE as MLMSO_DOC_BRANCH_CODE,'
      '  ex.DOC_CODE as MLMSO_DOC_CODE,'
      '  %HAS_DOC_ITEMS[ex] as MLMSO_HAS_DOC_ITEMS'
      ''
      'from'
      '  ('
      '    select'
      '      mlmso2.MLMSO_OBJECT_BRANCH_CODE,'
      '      mlmso2.MLMSO_OBJECT_CODE,'
      '      mlmso2.MLMS_OPERATION_NO,'
      '      mlmso2.MLMS_OPERATION_VARIANT_NO,'
      '      mlmso2.DEPT_CODE,'
      '      mlmso2.DOC_BRANCH_CODE,'
      '      mlmso2.DOC_CODE,'
      
        '      Min(mlmso2.MLMS_OPERATION_NO) over () as MIN_MLMS_OPERATIO' +
        'N_NO'
      ''
      '    from'
      '      MLMS_OPERATIONS mlmso,'
      '      ML_MODEL_STAGES mlms,'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES next_mlms,'
      '      ML_MODEL_STAGES mlms2,'
      '      MLMS_OPERATIONS mlmso2'
      ''
      '    where'
      
        '      (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_C' +
        'ODE) and'
      '      (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      ''
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = next_mlms.MLL_OBJECT_BRANCH_' +
        'CODE) and'
      '      (mll.MLL_OBJECT_CODE = next_mlms.MLL_OBJECT_CODE) and'
      
        '      (mlms.ML_MODEL_STAGE_NO + 1 = next_mlms.ML_MODEL_STAGE_NO)' +
        ' and'
      ''
      '      (mlms2.MLL_OBJECT_BRANCH_CODE ='
      
        '        Decode(next_mlms.TREATMENT_WORKDAYS, 0, mll.PARENT_MLL_O' +
        'BJECT_BRANCH_CODE, mll.MLL_OBJECT_BRANCH_CODE)) and'
      '      (mlms2.MLL_OBJECT_CODE ='
      
        '        Decode(next_mlms.TREATMENT_WORKDAYS, 0, mll.PARENT_MLL_O' +
        'BJECT_CODE, mll.MLL_OBJECT_CODE)) and'
      '      (mlms2.ML_MODEL_STAGE_NO ='
      
        '        Decode(next_mlms.TREATMENT_WORKDAYS, 0, 1, mlms.ML_MODEL' +
        '_STAGE_NO + 1)) and'
      ''
      
        '      (mlms2.MLMS_OBJECT_BRANCH_CODE = mlmso2.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mlms2.MLMS_OBJECT_CODE = mlmso2.MLMS_OBJECT_CODE) and'
      '      ( (:OPERATION_TYPE_CODE is null) or'
      
        '        (Decode(mlmso2.OPERATION_TYPE_CODE, 2, 2, 3) = :OPERATIO' +
        'N_TYPE_CODE) ) and'
      ''
      
        '      (mlmso.MLMSO_OBJECT_BRANCH_CODE = :FROM_MLMSO_OBJECT_BRANC' +
        'H_CODE) and'
      '      (mlmso.MLMSO_OBJECT_CODE = :FROM_MLMSO_OBJECT_CODE)'
      '  ) ex'
      ''
      'where'
      '  (ex.MIN_MLMS_OPERATION_NO = ex.MLMS_OPERATION_NO) and'
      ''
      '  not exists('
      '    select'
      '      mlmso2.MLMSO_OBJECT_BRANCH_CODE,'
      '      mlmso2.MLMSO_OBJECT_CODE'
      ''
      '    from'
      '      MLMS_OPERATIONS mlmso,'
      '      MLMS_OPERATIONS mlmso2'
      ''
      '    where'
      
        '      (mlmso.MLMS_OBJECT_BRANCH_CODE = mlmso2.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mlmso.MLMS_OBJECT_CODE = mlmso2.MLMS_OBJECT_CODE) and'
      
        '      (mlmso.MLMS_OPERATION_NO + 1 = mlmso2.MLMS_OPERATION_NO) a' +
        'nd'
      ''
      
        '      (mlmso.MLMSO_OBJECT_BRANCH_CODE = :FROM_MLMSO_OBJECT_BRANC' +
        'H_CODE) and'
      '      (mlmso.MLMSO_OBJECT_CODE = :FROM_MLMSO_OBJECT_CODE)'
      '  )'
      ''
      ''
      'union all'
      ''
      ''
      'select'
      '  mlmso2.MLMSO_OBJECT_BRANCH_CODE,'
      '  mlmso2.MLMSO_OBJECT_CODE,'
      '  mlmso2.MLMS_OPERATION_NO,'
      '  mlmso2.MLMS_OPERATION_VARIANT_NO,'
      ''
      
        '  (To_Char(mlmso2.MLMSO_OBJECT_BRANCH_CODE) || '#39','#39' || To_Char(ml' +
        'mso2.MLMSO_OBJECT_CODE)) as MLMSO_BRANCH_AND_CODE,'
      ''
      '  ('
      '    mlmso2.MLMS_OPERATION_NO || '#39'.'#39' ||'
      '    mlmso2.MLMS_OPERATION_VARIANT_NO || '#39' - '#39' ||'
      '    ('
      '      select'
      '        d.NAME'
      '      from'
      '        DEPTS d'
      '      where'
      '        (d.DEPT_CODE = mlmso2.DEPT_CODE)'
      '    )'
      '  ) as MLMSO_IDENTIFIER,'
      ''
      '  mlmso2.DOC_BRANCH_CODE as MLMSO_DOC_BRANCH_CODE,'
      '  mlmso2.DOC_CODE as MLMSO_DOC_CODE,'
      '  %HAS_DOC_ITEMS[mlmso2] as MLMSO_HAS_DOC_ITEMS'
      ''
      'from'
      '  MLMS_OPERATIONS mlmso,'
      '  MLMS_OPERATIONS mlmso2'
      ''
      'where'
      
        '  (mlmso.MLMS_OBJECT_BRANCH_CODE = mlmso2.MLMS_OBJECT_BRANCH_COD' +
        'E) and'
      '  (mlmso.MLMS_OBJECT_CODE = mlmso2.MLMS_OBJECT_CODE) and'
      '  (mlmso.MLMS_OPERATION_NO = mlmso2.MLMS_OPERATION_NO) and'
      ''
      '  (:OPERATION_TYPE_CODE = -1) and'
      ''
      '  ( (:ONLY_CURRENT = 0) or'
      
        '    (mlmso.MLMS_OPERATION_VARIANT_NO = mlmso2.MLMS_OPERATION_VAR' +
        'IANT_NO)'
      '  ) and'
      ''
      
        '  (mlmso.MLMSO_OBJECT_BRANCH_CODE = :FROM_MLMSO_OBJECT_BRANCH_CO' +
        'DE) and'
      '  (mlmso.MLMSO_OBJECT_CODE = :FROM_MLMSO_OBJECT_CODE)'
      ''
      ''
      'order by'
      '  MLMS_OPERATION_NO,'
      '  MLMS_OPERATION_VARIANT_NO'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[mlmso2]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[ex]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 592
    Top = 432
    object qryToMLMSOperationsMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
    end
    object qryToMLMSOperationsMLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_CODE'
    end
    object qryToMLMSOperationsMLMS_OPERATION_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_NO'
    end
    object qryToMLMSOperationsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_VARIANT_NO'
    end
    object qryToMLMSOperationsMLMSO_BRANCH_AND_CODE: TAbmesWideStringField
      FieldName = 'MLMSO_BRANCH_AND_CODE'
      Size = 81
    end
    object qryToMLMSOperationsMLMSO_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MLMSO_IDENTIFIER'
      Size = 184
    end
    object qryToMLMSOperationsMLMSO_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_DOC_BRANCH_CODE'
    end
    object qryToMLMSOperationsMLMSO_DOC_CODE: TAbmesFloatField
      FieldName = 'MLMSO_DOC_CODE'
    end
    object qryToMLMSOperationsMLMSO_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'MLMSO_HAS_DOC_ITEMS'
    end
  end
  object qryGetOMCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_OPERATION_MOVEMENTS.NextVal as NEW_OM_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 376
    object qryGetOMCodeNEW_OM_CODE: TAbmesFloatField
      FieldName = 'NEW_OM_CODE'
    end
  end
  object prvOperationMovementQuantities: TDataSetProvider
    DataSet = qryOperationMovementQuantities
    UpdateMode = upWhereKeyOnly
    OnGetData = prvOperationMovementQuantitiesGetData
    Left = 720
    Top = 176
  end
  object qryOperationMovementQuantities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mlmso.MLMSO_OBJECT_BRANCH_CODE,'
      '  mlmso.MLMSO_OBJECT_CODE,'
      '  mll.PRODUCT_TECH_QUANTITY,'
      ''
      '  ModelUtils.GetMlmsoRcvdForDetailTechQty('
      '    mlmso.MLMSO_OBJECT_BRANCH_CODE,'
      '    mlmso.MLMSO_OBJECT_CODE,'
      '    ( select'
      '        iv.FEATURE_FLAG_OPERATION_LOADING'
      '      from'
      '        INTERNAL_VALUES iv'
      '      where'
      '        (iv.CODE = 1)'
      '    )'
      '  ) as DETAIL_TOTAL_IN_TECH_QUANTITY,'
      ''
      '  Coalesce(('
      '    select'
      '      Sum(om.TOTAL_DETAIL_TECH_QUANTITY)'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      ''
      
        '      ( (om.TO_MLMSO_OBJECT_BRANCH_CODE <> mlmso.MLMSO_OBJECT_BR' +
        'ANCH_CODE) or'
      
        '        (om.TO_MLMSO_OBJECT_CODE <> mlmso.MLMSO_OBJECT_CODE) ) a' +
        'nd'
      ''
      '      (om.TO_DEPT_CODE is null) and'
      ''
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ), 0) as DETAIL_TOTAL_OUT_TECH_QUANTITY,'
      ''
      '  Coalesce(('
      '    select'
      '      Sum(om.TOTAL_DETAIL_TECH_QUANTITY)'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      ''
      '      (om.TO_DEPT_CODE is not null) and'
      ''
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ), 0) as DETAIL_TOTAL_WASTE_TECH_QTY,'
      ''
      '  Coalesce(('
      '    select'
      '      Sum(om.WORK_DETAIL_TECH_QUANTITY)'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      ''
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  ), 0) as DETAIL_TOTAL_WORK_TECH_QTY,'
      ''
      '  0 as DETAIL_REMAINING_TECH_QUANTITY,'
      '  0 as PRODUCT_TOTAL_IN_TECH_QUANTITY,'
      '  0 as PRODUCT_TOTAL_OUT_TECH_QTY,'
      '  0 as PRODUCT_TOTAL_WASTE_TECH_QTY,'
      '  0 as PRODUCT_REMAINING_TECH_QTY'
      ''
      'from'
      '  MLMS_OPERATIONS mlmso,'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll'
      ''
      'where'
      
        '  (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '  '
      '  (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '  (mlmso.MLMSO_OBJECT_BRANCH_CODE = :FROM_MLMSO_OBJECT_BRANCH_CO' +
        'DE) and'
      '  (mlmso.MLMSO_OBJECT_CODE = :FROM_MLMSO_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 224
    object qryOperationMovementQuantitiesMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
    end
    object qryOperationMovementQuantitiesMLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_CODE'
    end
    object qryOperationMovementQuantitiesPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object qryOperationMovementQuantitiesDETAIL_TOTAL_IN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TOTAL_IN_TECH_QUANTITY'
    end
    object qryOperationMovementQuantitiesDETAIL_TOTAL_OUT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TOTAL_OUT_TECH_QUANTITY'
    end
    object qryOperationMovementQuantitiesDETAIL_TOTAL_WASTE_TECH_QTY: TAbmesFloatField
      FieldName = 'DETAIL_TOTAL_WASTE_TECH_QTY'
    end
    object qryOperationMovementQuantitiesDETAIL_REMAINING_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_REMAINING_TECH_QUANTITY'
    end
    object qryOperationMovementQuantitiesDETAIL_TOTAL_WORK_TECH_QTY: TAbmesFloatField
      FieldName = 'DETAIL_TOTAL_WORK_TECH_QTY'
    end
    object qryOperationMovementQuantitiesPRODUCT_TOTAL_IN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TOTAL_IN_TECH_QUANTITY'
    end
    object qryOperationMovementQuantitiesPRODUCT_TOTAL_OUT_TECH_QTY: TAbmesFloatField
      FieldName = 'PRODUCT_TOTAL_OUT_TECH_QTY'
    end
    object qryOperationMovementQuantitiesPRODUCT_TOTAL_WASTE_TECH_QTY: TAbmesFloatField
      FieldName = 'PRODUCT_TOTAL_WASTE_TECH_QTY'
    end
    object qryOperationMovementQuantitiesPRODUCT_REMAINING_TECH_QTY: TAbmesFloatField
      FieldName = 'PRODUCT_REMAINING_TECH_QTY'
    end
  end
  object prvOperationMovements: TDataSetProvider
    DataSet = qryOperationMovements
    UpdateMode = upWhereKeyOnly
    Left = 720
    Top = 280
  end
  object qryOperationMovements: TAbmesSQLQuery
    BeforeOpen = qryOperationMovementsBeforeOpen
    AfterClose = qryOperationMovementsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OM_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OM_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_STORNO'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_STORNO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_STORNO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MLL_NO_AS_TEXT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_FORK_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_FORK_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RESULT_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_ML_MODEL_STAGE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_ML_MODEL_STAGE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMS_OPERATION_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMS_OPERATION_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMS_OPERATION_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMS_OPERATION_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_OPERATION_OR_WASTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_OPERATION_OR_WASTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_ML_MODEL_STAGE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_ML_MODEL_STAGE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_MLMS_OPERATION_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_MLMS_OPERATION_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_MLMS_OPERATION_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_MLMS_OPERATION_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_OPERATION_OR_WASTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_3'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OPERATION_MOVEMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OPERATION_MOVEMENT_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  /*+ NO_USE_HASH(om f_mlmso f_mlms f_mll ml dp pp t_mlmso t_mlm' +
        's) NO_USE_MERGE(om f_mlmso f_mlms f_mll ml dp pp t_mlmso t_mlms)' +
        ' USE_NL(om f_mlmso f_mlms f_mll ml dp pp t_mlmso t_mlms) ORDERED' +
        ' INDEX(om idxOM__OM_DATE) */'
      '  om.OM_BRANCH_CODE,'
      '  om.OM_CODE,'
      ''
      '  ( select'
      '      (d.CUSTOM_CODE || '#39'/'#39' || om.OM_NO)'
      '    from'
      '      DEPTS d'
      '    where'
      '      (om.OM_BRANCH_CODE = d.DEPT_CODE)'
      '  ) as OM_IDENTIFIER,'
      ''
      '  om.OM_DATE,'
      ''
      '  om.OPERATION_MOVEMENT_TYPE_CODE,'
      ''
      '  ( select'
      '      omt.OPERATION_MOVEMENT_TYPE_ABBREV'
      '    from'
      '      OPERATION_MOVEMENT_TYPES omt'
      '    where'
      
        '      (omt.OPERATION_MOVEMENT_TYPE_CODE = om.OPERATION_MOVEMENT_' +
        'TYPE_CODE)'
      '  ) as OPERATION_MOVEMENT_TYPE_ABBREV,'
      ''
      '  om.DOC_BRANCH_CODE,'
      '  om.DOC_CODE,'
      '  %HAS_DOC_ITEMS[om] as HAS_DOC,'
      ''
      '  f_mll.ML_OBJECT_BRANCH_CODE,'
      '  f_mll.ML_OBJECT_CODE,'
      ''
      '  f_mll.MLL_OBJECT_BRANCH_CODE,'
      '  f_mll.MLL_OBJECT_CODE,'
      ''
      '  ( select'
      '      ( ( select'
      '            pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '          from'
      '            PRODUCTION_ORDER_TYPES pot'
      '          where'
      
        '            (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER' +
        '_TYPE_CODE)'
      '        ) ||'
      '        '#39'/'#39' ||'
      '        ( select'
      '            d.CUSTOM_CODE'
      '          from'
      '            DEPTS d'
      '          where'
      '            (d.DEPT_CODE = s.SALE_BRANCH_CODE)'
      '        ) ||'
      '        '#39'/'#39' ||'
      '        s.SALE_NO ||'
      '        '#39'/'#39' ||'
      '        ( select'
      '            st.SALE_TYPE_ABBREV'
      '          from'
      '            SALE_TYPES st'
      '          where'
      '            (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '        ) ||'
      '        '#39' / '#39' ||'
      '        f_mll.NO_AS_TEXT ||'
      '        '#39'/'#39' ||'
      '        f_mll.FORK_NO'
      '      )'
      '    from'
      '      SALES s'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)'
      '  ) as MLL_OBJECT_IDENTIFIER,'
      ''
      '  ( select'
      '      (p.PRIORITY_NO || '#39'   '#39' || p.PRIORITY_NAME)'
      '    from'
      '      SALES s,'
      '      SALE_GROUPS sg,'
      '      PRIORITIES p'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      ''
      '      (sg.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as PRIORITY_FULL_NAME,'
      ''
      '  ( select'
      '      p.PRIORITY_COLOR'
      '    from'
      '      SALES s,'
      '      SALE_GROUPS sg,'
      '      PRIORITIES p'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      ''
      '      (sg.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as PRIORITY_COLOR,'
      ''
      '  ( select'
      '      p.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      SALES s,'
      '      SALE_GROUPS sg,'
      '      PRIORITIES p'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      ''
      '      (sg.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as PRIORITY_BACKGROUND_COLOR,'
      ''
      '  ( select'
      '      wprt.WORK_PRIORITY_NO'
      '    from'
      '      SALES s,'
      '      WORK_PRIORITIES wprt'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      '      (s.WORK_PRIORITY_CODE = wprt.WORK_PRIORITY_CODE)'
      '  ) as WORK_PRIORITY_NO,'
      ''
      '  ( select'
      
        '      (f_mlms.ML_MODEL_STAGE_NO || '#39':'#39' || dt.DEPT_TYPE_ABBREV ||' +
        ' d.CUSTOM_CODE || d.SUFFIX_LETTER) as FROM_ML_MODEL_STAGE_IDENTI' +
        'FIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (d.DEPT_CODE = f_mlms.DEPT_CODE)'
      '  ) as FROM_ML_MODEL_STAGE_IDENTIFIER,'
      ''
      '  ( f_mlmso.MLMS_OPERATION_NO || '#39'.'#39' ||'
      '    f_mlmso.MLMS_OPERATION_VARIANT_NO || '#39' - '#39' ||'
      '    ( select'
      '        d.NAME'
      '      from'
      '        DEPTS d'
      '      where'
      '        (d.DEPT_CODE = f_mlmso.DEPT_CODE)'
      '    )'
      '  ) as FROM_MLMSO_IDENTIFIER,'
      ''
      
        '  f_mlmso.MLMS_OPERATION_VARIANT_NO as FROM_MLMS_OPERATION_VARIA' +
        'NT_NO,'
      ''
      '  ( select'
      
        '      (t_mlms.ML_MODEL_STAGE_NO || '#39':'#39' || dt.DEPT_TYPE_ABBREV ||' +
        ' d.CUSTOM_CODE || d.SUFFIX_LETTER) as TO_ML_MODEL_STAGE_IDENTIFI' +
        'ER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (d.DEPT_CODE = t_mlms.DEPT_CODE)'
      '  ) as TO_ML_MODEL_STAGE_IDENTIFIER,'
      ''
      '  Nvl2('
      '    om.TO_MLMSO_OBJECT_CODE,'
      '    ( t_mlmso.MLMS_OPERATION_NO || '#39'.'#39' ||'
      '      t_mlmso.MLMS_OPERATION_VARIANT_NO || '#39' - '#39' ||'
      '      ('
      '        select'
      '          d.NAME'
      '        from'
      '          DEPTS d'
      '        where'
      '          (d.DEPT_CODE = t_mlmso.DEPT_CODE)'
      '      )'
      '    ),'
      '    null'
      '  ) as TO_MLMSO_IDENTIFIER,'
      ''
      '  ( select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER |' +
        '| '#39' / '#39' ||'
      
        '       Nvl2(om.WASTE_DOC_NO, (om.WASTE_DOC_NO || '#39' / '#39'), '#39#39') || ' +
        'To_Char(om.WASTE_DOC_DATE, '#39'dd.mm.yyyy'#39')) as WASTE_INFO'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (d.DEPT_CODE = om.TO_DEPT_CODE)'
      '  ) as WASTE_INFO,'
      ''
      '  dp.NAME as DETAIL_NAME,'
      '  dp.CUSTOM_CODE as DETAIL_NO,'
      '  dp.DOC_BRANCH_CODE as DETAIL_DOC_BRANCH_CODE,'
      '  dp.DOC_CODE as DETAIL_DOC_CODE,'
      '  %HAS_DOC_ITEMS[dp] as DETAIL_HAS_DOC,'
      ''
      '  pp.NAME as PRODUCT_NAME,'
      '  pp.CUSTOM_CODE as PRODUCT_NO,'
      '  pp.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  pp.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[pp] as PRODUCT_HAS_DOC,'
      ''
      
        '  ModelUtils.GetOperationMovementTotalPrice(om.OM_BRANCH_CODE, o' +
        'm.OM_CODE) as TOTAL_PRICE,'
      ''
      '  om.TOTAL_DETAIL_TECH_QUANTITY,'
      '  om.WORK_DETAIL_TECH_QUANTITY,'
      '  om.QA_DETAIL_TECH_QUANTITY,'
      ''
      
        '  (om.TOTAL_DETAIL_TECH_QUANTITY * f_mll.PRODUCT_TECH_QUANTITY) ' +
        'as TOTAL_PRODUCT_TECH_QUANTITY,'
      
        '  (om.WORK_DETAIL_TECH_QUANTITY * f_mll.PRODUCT_TECH_QUANTITY) a' +
        's WORK_PRODUCT_TECH_QUANTITY,'
      
        '  (om.QA_DETAIL_TECH_QUANTITY * f_mll.PRODUCT_TECH_QUANTITY) as ' +
        'QA_PRODUCT_TECH_QUANTITY,'
      ''
      '  dp.TECH_MEASURE_CODE as DETAIL_TECH_MEASURE_CODE,'
      '  '
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = dp.TECH_MEASURE_CODE)'
      '  ) as DETAIL_TECH_MEASURE_ABBREV,'
      ''
      '  pp.TECH_MEASURE_CODE as PRODUCT_TECH_MEASURE_CODE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = pp.TECH_MEASURE_CODE)'
      '  ) as PRODUCT_TECH_MEASURE_ABBREV,'
      ''
      '  Nvl2(om.STORNO_EMPLOYEE_CODE, 1, 0) as IS_STORNO,'
      ''
      '  om.CREATE_EMPLOYEE_CODE,'
      ''
      '  ( select'
      '      (e.ABBREV || '#39'   '#39' || e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = om.CREATE_EMPLOYEE_CODE)'
      '  ) as CREATE_EMPLOYEE_ABBREV,'
      ''
      '  om.CREATE_DATE,'
      '  om.CREATE_TIME,'
      ''
      '  om.STORNO_EMPLOYEE_CODE,'
      ''
      '  ( select'
      '      (e.ABBREV || '#39'   '#39' || e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = om.STORNO_EMPLOYEE_CODE)'
      '  ) as STORNO_EMPLOYEE_ABBREV,'
      ''
      '  om.STORNO_DATE,'
      '  om.STORNO_TIME,'
      ''
      
        '  f_mlmso.SETUP_HOUR_TECH_QUANTITY as FROM_SETUP_HOUR_TECH_QUANT' +
        'ITY,'
      '  f_mlmso.HOUR_TECH_QUANTITY as FROM_HOUR_TECH_QUANTITY,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      EMPLOYEES e,'
      '      COMPANIES c'
      '    where'
      '      (e.EMPLOYEE_CODE = om.FROM_EMPLOYEE_CODE) and'
      '      (e.COMPANY_CODE = c.COMPANY_CODE)'
      '  ) as FROM_EMPLOYEE_NO,'
      ''
      '  ( select'
      '      (e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = om.FROM_EMPLOYEE_CODE)'
      '  ) as FROM_EMPLOYEE_NAME,'
      ''
      '  ( select'
      '      t.TEAM_NO'
      '    from'
      '      TEAMS t'
      '    where'
      '      (t.TEAM_CODE = om.FROM_TEAM_CODE)'
      '  ) as FROM_TEAM_NO,'
      ''
      '  ( select'
      '      t.TEAM_NAME'
      '    from'
      '      TEAMS t'
      '    where'
      '      (t.TEAM_CODE = om.FROM_TEAM_CODE)'
      '  ) as FROM_TEAM_NAME,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      EMPLOYEES e,'
      '      COMPANIES c'
      '    where'
      '      (e.EMPLOYEE_CODE = om.QA_EMPLOYEE_CODE) and'
      '      (e.COMPANY_CODE = c.COMPANY_CODE)'
      '  ) as QA_EMPLOYEE_NO,'
      ''
      '  ( select'
      '      (e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = om.QA_EMPLOYEE_CODE)'
      '  ) as QA_EMPLOYEE_NAME,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      EMPLOYEES e,'
      '      COMPANIES c'
      '    where'
      '      (e.EMPLOYEE_CODE = om.TO_EMPLOYEE_CODE) and'
      '      (e.COMPANY_CODE = c.COMPANY_CODE)'
      '  ) as TO_EMPLOYEE_NO,'
      ''
      '  ( select'
      '      (e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = om.TO_EMPLOYEE_CODE)'
      '  ) as TO_EMPLOYEE_NAME,'
      ''
      '  ( select'
      '      t.TEAM_NO'
      '    from'
      '      TEAMS t'
      '    where'
      '      (t.TEAM_CODE = om.TO_TEAM_CODE)'
      '  ) as TO_TEAM_NO,'
      ''
      '  ( select'
      '      t.TEAM_NAME'
      '    from'
      '      TEAMS t'
      '    where'
      '      (t.TEAM_CODE = om.TO_TEAM_CODE)'
      '  ) as TO_TEAM_NAME,'
      ''
      '  f_mlmso.DOC_BRANCH_CODE as FROM_MLMSO_DOC_BRANCH_CODE,'
      '  f_mlmso.DOC_CODE as FROM_MLMSO_DOC_CODE,'
      '  %HAS_DOC_ITEMS[f_mlmso] as FROM_MLMSO_HAS_DOC'
      ''
      'from'
      '  OPERATION_MOVEMENTS om,'
      '  MLMS_OPERATIONS f_mlmso,'
      '  ML_MODEL_STAGES f_mlms,'
      '  MATERIAL_LIST_LINES f_mll,'
      '  MATERIAL_LISTS ml,'
      '  PRODUCTS dp,'
      '  PRODUCTS pp,'
      '  MLMS_OPERATIONS t_mlmso,'
      '  ML_MODEL_STAGES t_mlms'
      ''
      'where'
      
        '  (om.FROM_MLMSO_OBJECT_BRANCH_CODE = f_mlmso.MLMSO_OBJECT_BRANC' +
        'H_CODE) and'
      '  (om.FROM_MLMSO_OBJECT_CODE = f_mlmso.MLMSO_OBJECT_CODE) and'
      ''
      
        '  (f_mlmso.MLMS_OBJECT_BRANCH_CODE = f_mlms.MLMS_OBJECT_BRANCH_C' +
        'ODE) and'
      '  (f_mlmso.MLMS_OBJECT_CODE = f_mlms.MLMS_OBJECT_CODE) and'
      ''
      
        '  (om.TO_MLMSO_OBJECT_BRANCH_CODE = t_mlmso.MLMSO_OBJECT_BRANCH_' +
        'CODE(+)) and'
      '  (om.TO_MLMSO_OBJECT_CODE = t_mlmso.MLMSO_OBJECT_CODE(+)) and'
      ''
      
        '  (t_mlmso.MLMS_OBJECT_BRANCH_CODE = t_mlms.MLMS_OBJECT_BRANCH_C' +
        'ODE(+)) and'
      '  (t_mlmso.MLMS_OBJECT_CODE = t_mlms.MLMS_OBJECT_CODE(+)) and'
      ''
      
        '  (f_mlms.MLL_OBJECT_BRANCH_CODE = f_mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (f_mlms.MLL_OBJECT_CODE = f_mll.MLL_OBJECT_CODE) and'
      ''
      '  (f_mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '  (f_mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      '  (f_mll.DETAIL_CODE = dp.PRODUCT_CODE) and'
      ''
      '  (f_mll.PRODUCT_CODE = pp.PRODUCT_CODE(+)) and'
      ''
      '  ( (:OM_BRANCH_CODE is null) or'
      '    (om.OM_BRANCH_CODE = :OM_BRANCH_CODE)'
      '  ) and'
      ''
      '  ( (:OM_NO is null) or'
      '    (om.OM_NO = :OM_NO)'
      '  ) and'
      ''
      '  (om.OM_DATE between :OM_BEGIN_DATE and :OM_END_DATE) and'
      ''
      '  ( (:IS_STORNO = 3) or'
      '    ((:IS_STORNO = 1) and (om.STORNO_EMPLOYEE_CODE is null)) or'
      '    ((:IS_STORNO = 2) and (om.STORNO_EMPLOYEE_CODE is not null))'
      '  ) and'
      ''
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        SALES s,'
      '        PRODUCTION_ORDER_TYPES pot'
      '      where'
      
        '        (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_TYP' +
        'E_CODE) and'
      ''
      
        '        (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      '        ( (:PRODUCTION_ORDER_BASE_TYPE_CODE is null) or'
      '          (:PRODUCTION_ORDER_BASE_TYPE_CODE = 0) or'
      
        '          (pot.PROD_ORDER_BASE_TYPE_CODE = :PRODUCTION_ORDER_BAS' +
        'E_TYPE_CODE)'
      '        ) and'
      ''
      '        ( (:PRODUCTION_ORDER_TYPE_CODE is null) or'
      
        '          (s.PRODUCTION_ORDER_TYPE_CODE = :PRODUCTION_ORDER_TYPE' +
        '_CODE)'
      '        ) and'
      ''
      '        ( (:SALE_BRANCH_CODE is null) or'
      '          (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE)'
      '        ) and'
      ''
      '        ( (:SALE_NO is null) or'
      '          (s.SALE_NO = :SALE_NO)'
      '        ) and'
      ''
      '        ( (:SALE_TYPE_CODE is null) or'
      '          (:SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '        )'
      '    )'
      '  ) and'
      ''
      '  (f_mll.NO_AS_TEXT like :MLL_NO_AS_TEXT) and'
      ''
      '  ( (:MLL_FORK_NO is null) or'
      '    (f_mll.FORK_NO = :MLL_FORK_NO)'
      '  ) and'
      ''
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        PRODUCT_RELATIONS pr'
      '      where'
      '        (pr.ANCESTOR_PRODUCT_CODE = :RESULT_PRODUCT_CODE) and'
      '        (pr.DESCENDANT_PRODUCT_CODE = ml.RESULT_PRODUCT_CODE)'
      '    )'
      '  ) and'
      ''
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        PRODUCT_RELATIONS pr'
      '      where'
      '        (pr.ANCESTOR_PRODUCT_CODE = :DETAIL_CODE) and'
      '        (pr.DESCENDANT_PRODUCT_CODE = f_mll.DETAIL_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( (:FROM_ML_MODEL_STAGE_NO is null) or'
      '    (f_mlms.ML_MODEL_STAGE_NO = :FROM_ML_MODEL_STAGE_NO)'
      '  ) and'
      ''
      '  ( (:FROM_MLMS_OPERATION_NO is null) or'
      '    (f_mlmso.MLMS_OPERATION_NO = :FROM_MLMS_OPERATION_NO)'
      '  ) and'
      ''
      '  ( (:FROM_MLMS_OPERATION_VARIANT_NO is null) or'
      
        '    (f_mlmso.MLMS_OPERATION_VARIANT_NO = :FROM_MLMS_OPERATION_VA' +
        'RIANT_NO)'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_DEPTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS tfd'
      '        where'
      '          (tfd.DEPT_CODE = f_mlmso.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:TO_OPERATION_OR_WASTE is null) or'
      '    ( (:TO_OPERATION_OR_WASTE = 1) and'
      '      (om.TO_MLMSO_OBJECT_CODE is not null) and'
      ''
      '      ( (:TO_ML_MODEL_STAGE_NO is null) or'
      '        (t_mlms.ML_MODEL_STAGE_NO = :TO_ML_MODEL_STAGE_NO)'
      '      ) and'
      ''
      '      ( (:TO_MLMS_OPERATION_NO is null) or'
      '        (t_mlmso.MLMS_OPERATION_NO = :TO_MLMS_OPERATION_NO)'
      '      ) and'
      ''
      '      ( (:TO_MLMS_OPERATION_VARIANT_NO is null) or'
      
        '        (t_mlmso.MLMS_OPERATION_VARIANT_NO = :TO_MLMS_OPERATION_' +
        'VARIANT_NO)'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_DEPTS_2 = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_DEPTS_2 tfd2'
      '            where'
      '              (tfd2.DEPT_CODE = t_mlmso.DEPT_CODE)'
      '          )'
      '        )'
      '      )'
      '    ) or'
      ''
      '    ( (:TO_OPERATION_OR_WASTE = 2) and'
      '      (om.TO_DEPT_CODE is not null) and'
      ''
      '      ( (:ALL_FILTERED_DEPTS_3 = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_DEPTS_3 tfd3'
      '            where'
      '              (tfd3.DEPT_CODE = om.TO_DEPT_CODE)'
      '          )'
      '        )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( ( select'
      '        p.PRIORITY_NO'
      '      from'
      '        SALES s,'
      '        SALE_GROUPS sg,'
      '        PRIORITIES p'
      '      where'
      
        '        (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '        (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) a' +
        'nd'
      ''
      '        (p.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '    ) between'
      '      Coalesce('
      '        ( select'
      '            Max(p.PRIORITY_NO)'
      '          from'
      '            PRIORITIES p'
      '          where'
      '            (p.PRIORITY_CODE = :BEGIN_PRIORITY_CODE)'
      '        ), 0) and'
      '      Coalesce('
      '        ( select'
      '            Max(p.PRIORITY_NO)'
      '          from'
      '            PRIORITIES p'
      '          where'
      '            (p.PRIORITY_CODE = :END_PRIORITY_CODE)'
      '        ), 1000000)'
      '  ) and'
      ''
      '  ( (:OPERATION_MOVEMENT_TYPE_CODE is null) or'
      
        '    (om.OPERATION_MOVEMENT_TYPE_CODE = :OPERATION_MOVEMENT_TYPE_' +
        'CODE) )'
      ''
      'order by'
      '  om.OM_DATE,'
      '  om.OM_BRANCH_CODE,'
      '  OM_IDENTIFIER,'
      '  om.STORNO_DATE,'
      '  om.STORNO_TIME'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[om]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[dp]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pp]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[f_mlmso]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'FROM_MLMSO_CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'TO_MLMSO_CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'TO_WASTE_CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 720
    Top = 328
    object qryOperationMovementsOM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OM_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOperationMovementsOM_CODE: TAbmesFloatField
      FieldName = 'OM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOperationMovementsOM_IDENTIFIER: TAbmesWideStringField
      FieldName = 'OM_IDENTIFIER'
      Size = 81
    end
    object qryOperationMovementsOM_DATE: TAbmesSQLTimeStampField
      FieldName = 'OM_DATE'
    end
    object qryOperationMovementsOPERATION_MOVEMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_MOVEMENT_TYPE_CODE'
    end
    object qryOperationMovementsOPERATION_MOVEMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'OPERATION_MOVEMENT_TYPE_ABBREV'
      Size = 100
    end
    object qryOperationMovementsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryOperationMovementsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryOperationMovementsHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryOperationMovementsML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object qryOperationMovementsML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object qryOperationMovementsMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryOperationMovementsMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object qryOperationMovementsMLL_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MLL_OBJECT_IDENTIFIER'
      Size = 195
    end
    object qryOperationMovementsFROM_ML_MODEL_STAGE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FROM_ML_MODEL_STAGE_IDENTIFIER'
      Size = 87
    end
    object qryOperationMovementsFROM_MLMSO_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FROM_MLMSO_IDENTIFIER'
      Size = 184
    end
    object qryOperationMovementsFROM_MLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'FROM_MLMS_OPERATION_VARIANT_NO'
      Required = True
    end
    object qryOperationMovementsTO_ML_MODEL_STAGE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'TO_ML_MODEL_STAGE_IDENTIFIER'
      Size = 87
    end
    object qryOperationMovementsTO_MLMSO_IDENTIFIER: TAbmesWideStringField
      FieldName = 'TO_MLMSO_IDENTIFIER'
      Size = 184
    end
    object qryOperationMovementsWASTE_INFO: TAbmesWideStringField
      FieldName = 'WASTE_INFO'
      Size = 82
    end
    object qryOperationMovementsDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryOperationMovementsDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qryOperationMovementsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryOperationMovementsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryOperationMovementsTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_DETAIL_TECH_QUANTITY'
    end
    object qryOperationMovementsWORK_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_DETAIL_TECH_QUANTITY'
    end
    object qryOperationMovementsTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
    end
    object qryOperationMovementsWORK_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_PRODUCT_TECH_QUANTITY'
    end
    object qryOperationMovementsDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'DETAIL_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qryOperationMovementsPRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qryOperationMovementsIS_STORNO: TAbmesFloatField
      FieldName = 'IS_STORNO'
    end
    object qryOperationMovementsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryOperationMovementsCREATE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_ABBREV'
      Size = 49
    end
    object qryOperationMovementsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryOperationMovementsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryOperationMovementsSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object qryOperationMovementsSTORNO_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'STORNO_EMPLOYEE_ABBREV'
      Size = 49
    end
    object qryOperationMovementsSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object qryOperationMovementsSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
    object qryOperationMovementsDETAIL_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'DETAIL_TECH_MEASURE_CODE'
    end
    object qryOperationMovementsPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_MEASURE_CODE'
    end
    object qryOperationMovementsTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryOperationMovementsPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 93
    end
    object qryOperationMovementsPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qryOperationMovementsPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object qryOperationMovementsWORK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_NO'
    end
    object qryOperationMovementsDETAIL_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DETAIL_DOC_BRANCH_CODE'
    end
    object qryOperationMovementsDETAIL_DOC_CODE: TAbmesFloatField
      FieldName = 'DETAIL_DOC_CODE'
    end
    object qryOperationMovementsDETAIL_HAS_DOC: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOC'
      FieldValueType = fvtBoolean
    end
    object qryOperationMovementsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryOperationMovementsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryOperationMovementsPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
      FieldValueType = fvtBoolean
    end
    object qryOperationMovementsFROM_SETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'FROM_SETUP_HOUR_TECH_QUANTITY'
    end
    object qryOperationMovementsFROM_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'FROM_HOUR_TECH_QUANTITY'
    end
    object qryOperationMovementsFROM_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'FROM_EMPLOYEE_NO'
    end
    object qryOperationMovementsFROM_TEAM_NO: TAbmesFloatField
      FieldName = 'FROM_TEAM_NO'
    end
    object qryOperationMovementsFROM_TEAM_NAME: TAbmesWideStringField
      FieldName = 'FROM_TEAM_NAME'
      Size = 50
    end
    object qryOperationMovementsQA_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'QA_EMPLOYEE_NO'
    end
    object qryOperationMovementsTO_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'TO_EMPLOYEE_NO'
    end
    object qryOperationMovementsTO_TEAM_NO: TAbmesFloatField
      FieldName = 'TO_TEAM_NO'
    end
    object qryOperationMovementsTO_TEAM_NAME: TAbmesWideStringField
      FieldName = 'TO_TEAM_NAME'
      Size = 50
    end
    object qryOperationMovementsFROM_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'FROM_EMPLOYEE_NAME'
      Size = 101
    end
    object qryOperationMovementsQA_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'QA_EMPLOYEE_NAME'
      Size = 101
    end
    object qryOperationMovementsTO_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'TO_EMPLOYEE_NAME'
      Size = 101
    end
    object qryOperationMovementsFROM_MLMSO_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_DOC_BRANCH_CODE'
    end
    object qryOperationMovementsFROM_MLMSO_DOC_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_DOC_CODE'
    end
    object qryOperationMovementsFROM_MLMSO_HAS_DOC: TAbmesFloatField
      FieldName = 'FROM_MLMSO_HAS_DOC'
    end
    object qryOperationMovementsQA_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'QA_DETAIL_TECH_QUANTITY'
      Required = True
    end
    object qryOperationMovementsQA_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'QA_PRODUCT_TECH_QUANTITY'
    end
  end
  object qryOmData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  om.FROM_MLMSO_OBJECT_BRANCH_CODE,'
      '  om.FROM_MLMSO_OBJECT_CODE,'
      '  om.OPERATION_MOVEMENT_TYPE_CODE'
      'from'
      '  OPERATION_MOVEMENTS om'
      'where'
      '  (om.OM_BRANCH_CODE = :OM_BRANCH_CODE) and'
      '  (om.OM_CODE = :OM_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 520
    Top = 232
    object qryOmDataFROM_MLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_OBJECT_BRANCH_CODE'
    end
    object qryOmDataFROM_MLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_OBJECT_CODE'
    end
    object qryOmDataOPERATION_MOVEMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_MOVEMENT_TYPE_CODE'
    end
  end
  object prvMlmsOperationInfo: TDataSetProvider
    DataSet = qryMlmsOperationInfo
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 720
    Top = 384
  end
  object qryMlmsOperationInfo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mlmso.MLMSO_OBJECT_BRANCH_CODE,'
      '  mlmso.MLMSO_OBJECT_CODE,'
      '  s.SALE_BRANCH_CODE,'
      '  s.SALE_NO,'
      '  ml.IS_ARCHIVED as IS_MODEL_ARCHIVED,'
      '  Nvl2(ml.CLOSE_EMPLOYEE_CODE, 1, 0) as IS_MODEL_CLOSED,'
      '  Nvl2(ml.ANNUL_EMPLOYEE_CODE, 1, 0) as IS_MODEL_ANNULED,'
      '  ml.LIMITING_DATE as MODEL_LIMITING_DATE,'
      '  mll.NO_AS_TEXT as MLL_NO_AS_TEXT,'
      '  mll.FORK_NO,'
      '  mlms.ML_MODEL_STAGE_NO,'
      '  mlmso.MLMS_OPERATION_NO,'
      '  mlmso.MLMS_OPERATION_VARIANT_NO'
      ''
      'from'
      '  MLMS_OPERATIONS mlmso,'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml,'
      '  SALES s'
      ''
      'where'
      
        '  (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      ''
      '  (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '  (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '  (mlmso.MLMSO_OBJECT_BRANCH_CODE = :MLMSO_OBJECT_BRANCH_CODE) a' +
        'nd'
      '  (mlmso.MLMSO_OBJECT_CODE = :MLMSO_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 432
    object qryMlmsOperationInfoMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMlmsOperationInfoMLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMlmsOperationInfoSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object qryMlmsOperationInfoSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object qryMlmsOperationInfoIS_MODEL_ARCHIVED: TAbmesFloatField
      FieldName = 'IS_MODEL_ARCHIVED'
    end
    object qryMlmsOperationInfoIS_MODEL_CLOSED: TAbmesFloatField
      FieldName = 'IS_MODEL_CLOSED'
    end
    object qryMlmsOperationInfoIS_MODEL_ANNULED: TAbmesFloatField
      FieldName = 'IS_MODEL_ANNULED'
    end
    object qryMlmsOperationInfoMODEL_LIMITING_DATE: TAbmesSQLTimeStampField
      FieldName = 'MODEL_LIMITING_DATE'
    end
    object qryMlmsOperationInfoMLL_NO_AS_TEXT: TAbmesWideStringField
      FieldName = 'MLL_NO_AS_TEXT'
      Size = 100
    end
    object qryMlmsOperationInfoFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object qryMlmsOperationInfoML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
    object qryMlmsOperationInfoMLMS_OPERATION_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_NO'
    end
    object qryMlmsOperationInfoMLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_VARIANT_NO'
    end
  end
  object qryMaxOperationWorkdayNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OPERATION_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  Max(mlmso.TREATMENT_BEGIN_WORKDAY_NO + mlmso.TREATMENT_WORKDAY' +
        'S - 1) as MAX_OPERATION_WORKDAY_NO'
      'from'
      '  MLMS_OPERATIONS mlmso'
      'where'
      '  (mlmso.MLMS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANCH_CODE) and'
      '  (mlmso.MLMS_OBJECT_CODE = :MLMS_OBJECT_CODE) and'
      '  (mlmso.MLMS_OPERATION_NO = :MLMS_OPERATION_NO) and'
      '  (mlmso.IS_ACTIVE = 1)'
      '  ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 288
    Top = 328
    object qryMaxOperationWorkdayNoMAX_OPERATION_WORKDAY_NO: TAbmesFloatField
      FieldName = 'MAX_OPERATION_WORKDAY_NO'
    end
  end
  object qryMLMSOperationVariantsHeader: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLMS_OPERATION_NO'
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
      '  mlms.MLMS_OBJECT_BRANCH_CODE,'
      '  mlms.MLMS_OBJECT_CODE,'
      '  To_Number(:MLMS_OPERATION_NO) as MLMS_OPERATION_NO,'
      ''
      '  ( select'
      '      ( ( select'
      '            pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '          from'
      '            PRODUCTION_ORDER_TYPES pot'
      '          where'
      
        '            (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER' +
        '_TYPE_CODE)'
      '        ) ||'
      '        '#39'/'#39' ||'
      '        ( select'
      '            d.CUSTOM_CODE'
      '          from'
      '            DEPTS d'
      '          where'
      '            (d.DEPT_CODE = s.SALE_BRANCH_CODE)'
      '        ) ||'
      '        '#39'/'#39' ||'
      '        s.SALE_NO ||'
      '        '#39'/'#39' ||'
      '        ( select'
      '            st.SALE_TYPE_ABBREV'
      '          from'
      '            SALE_TYPES st'
      '          where'
      '            (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '        )'
      '      )'
      '    from'
      '      SALES s'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)'
      '  ) as SALE_IDENTIFIER,'
      ''
      '  ( select'
      '      prt.PRIORITY_NO'
      '    from'
      '      SALES s,'
      '      SALE_GROUPS sg,'
      '      PRIORITIES prt'
      '    where'
      
        '      (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_' +
        'CODE) and'
      '      (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and'
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      '      (prt.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as PRIORITY_NO,'
      ''
      '  ( select'
      '      prt.PRIORITY_COLOR'
      '    from'
      '      SALES s,'
      '      SALE_GROUPS sg,'
      '      PRIORITIES prt'
      '    where'
      
        '      (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_' +
        'CODE) and'
      '      (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and'
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      '      (prt.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as PRIORITY_COLOR,'
      ''
      '  ( select'
      '      prt.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      SALES s,'
      '      SALE_GROUPS sg,'
      '      PRIORITIES prt'
      '    where'
      
        '      (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_' +
        'CODE) and'
      '      (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and'
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      '      (prt.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as PRIORITY_BACKGROUND_COLOR,'
      ''
      '  ( select'
      '      wp.WORK_PRIORITY_NO'
      '    from'
      '      SALES s,'
      '      WORK_PRIORITIES wp'
      '    where'
      
        '      (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_' +
        'CODE) and'
      '      (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and'
      '      (wp.WORK_PRIORITY_CODE = s.WORK_PRIORITY_CODE)'
      '  ) as WORK_PRIORITY_NO,'
      ''
      '  mll.NO_AS_TEXT,'
      '  mll.FORK_NO,'
      ''
      '  mll.DETAIL_CODE,'
      ''
      '  ('
      '    select'
      '      p.NAME as DETAIL_NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_NAME,'
      ''
      '  ('
      '    select'
      '      m.MEASURE_ABBREV as DETAIL_MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE) and'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE)'
      '  ) as DETAIL_TECH_MEASURE_ABBREV,'
      ''
      '  mll.LINE_DETAIL_TECH_QUANTITY,'
      ''
      '  mlms.ML_MODEL_STAGE_NO,'
      ''
      '  ('
      '    select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        'as DEPT_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (d.DEPT_CODE = mlms.DEPT_CODE)'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  mlms.TREATMENT_WORKDAYS,'
      '  mlms.OUTGOING_WORKDAYS,'
      ''
      
        '  Decode(mlms.TREATMENT_WORKDAYS, 0, par_mlms.TREATMENT_BEGIN_DA' +
        'TE, mlms.TREATMENT_BEGIN_DATE) as TREATMENT_BEGIN_DATE,'
      
        '  Decode(mlms.TREATMENT_WORKDAYS, 0, par_mlms.TREATMENT_END_DATE' +
        ', mlms.TREATMENT_END_DATE) as TREATMENT_END_DATE,'
      ''
      '  mlms.DOC_BRANCH_CODE,'
      '  mlms.DOC_CODE'
      ''
      'from'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml,'
      '  MATERIAL_LIST_LINES pmll,'
      '  ML_MODEL_STAGES par_mlms'
      ''
      'where'
      '  (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '  (mll.PARENT_MLL_OBJECT_BRANCH_CODE = pmll.MLL_OBJECT_BRANCH_CO' +
        'DE(+)) and'
      '  (mll.PARENT_MLL_OBJECT_CODE = pmll.MLL_OBJECT_CODE(+)) and'
      ''
      
        '  (pmll.MLL_OBJECT_BRANCH_CODE = par_mlms.MLL_OBJECT_BRANCH_CODE' +
        '(+)) and'
      '  (pmll.MLL_OBJECT_CODE = par_mlms.MLL_OBJECT_CODE(+)) and'
      '  (1 = par_mlms.ML_MODEL_STAGE_NO(+)) and'
      ''
      '  (mlms.MLMS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLMS_OBJECT_CODE = :MLMS_OBJECT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 448
    Top = 312
    object qryMLMSOperationVariantsHeaderMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMLMSOperationVariantsHeaderMLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMLMSOperationVariantsHeaderSALE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SALE_IDENTIFIER'
      Size = 87
    end
    object qryMLMSOperationVariantsHeaderPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qryMLMSOperationVariantsHeaderPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qryMLMSOperationVariantsHeaderPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object qryMLMSOperationVariantsHeaderWORK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_NO'
    end
    object qryMLMSOperationVariantsHeaderDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qryMLMSOperationVariantsHeaderDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryMLMSOperationVariantsHeaderDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'DETAIL_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qryMLMSOperationVariantsHeaderLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'LINE_DETAIL_TECH_QUANTITY'
    end
    object qryMLMSOperationVariantsHeaderML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
    object qryMLMSOperationVariantsHeaderDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryMLMSOperationVariantsHeaderTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object qryMLMSOperationVariantsHeaderOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object qryMLMSOperationVariantsHeaderTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_BEGIN_DATE'
    end
    object qryMLMSOperationVariantsHeaderTREATMENT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_END_DATE'
    end
    object qryMLMSOperationVariantsHeaderDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryMLMSOperationVariantsHeaderDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryMLMSOperationVariantsHeaderMLMS_OPERATION_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_NO'
    end
    object qryMLMSOperationVariantsHeaderNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qryMLMSOperationVariantsHeaderFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
  end
  object prvProfessionEmployeeMonthTeams: TDataSetProvider
    DataSet = qryProfessionEmployeeMonthTeams
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 582
    Top = 112
  end
  object qryProfessionEmployeeMonthTeams: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_OCC_WORK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  t.TEAM_CODE,'
      '  t.TEAM_NAME,'
      ''
      '  Coalesce('
      '    ('
      '      select'
      '        1'
      '      from'
      '        TEAM_PROFESSIONS tp'
      '      where'
      '        (tp.TEAM_CODE = t.TEAM_CODE) and'
      '        (tp.PROFESSION_CODE = :PROFESSION_CODE)'
      '    ),'
      '    0'
      '  ) as HAS_THE_PROFESSION,'
      ''
      '  ('
      '    select'
      '      Sign(Count(*))'
      '    from'
      '      MONTH_TEAM_EMPLOYEES mte'
      '    where'
      '      (mte.TEAM_CODE = t.TEAM_CODE) and'
      '      (mte.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      ''
      '      exists('
      '        select'
      '          1'
      '        from'
      '          THE_MONTH_DATES tmd'
      '        where'
      '          (tmd.THE_MONTH_DATE = mte.THE_MONTH_DATE) and'
      
        '          (:THE_DATE between tmd.THE_FIRST_DATE and tmd.THE_LAST' +
        '_DATE)'
      '      )'
      '  ) as HAS_THE_EMPLOYEE,'
      ''
      '  ('
      '    select'
      '      Sign(Count(*))'
      '    from'
      '      MONTH_TEAM_EMPLOYEES mte,'
      '      OCCUPATION_EMPLOYEES oe,'
      '      OCCUPATION_WORK_DEPTS owd,'
      '      OCC_WORK_DEPT_PRIORITIES owdp,'
      '      DEPT_RELATIONS dr'
      '    where'
      '      (mte.TEAM_CODE = t.TEAM_CODE) and'
      '      (oe.EMPLOYEE_CODE = mte.EMPLOYEE_CODE) and'
      '      (owd.OCCUPATION_CODE = owd.OCCUPATION_CODE) and'
      
        '      (owdp.OCC_WORK_DEPT_PRIORITY_CODE = owd.OCC_WORK_DEPT_PRIO' +
        'RITY_CODE) and'
      ''
      '      (dr.ANCESTOR_DEPT_CODE = owd.DEPT_CODE) and'
      
        '      (dr.DESCENDANT_DEPT_CODE = :REQUIRED_OCC_WORK_DEPT_CODE) a' +
        'nd'
      ''
      
        '      (:THE_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNM' +
        'ENT_END_DATE) and'
      '      (owdp.ORG_WORK_MODE_CODE = %owm_EXPLOITATION) and'
      ''
      '      exists('
      '        select'
      '          1'
      '        from'
      '          THE_MONTH_DATES tmd'
      '        where'
      '          (tmd.THE_MONTH_DATE = mte.THE_MONTH_DATE) and'
      
        '          (:THE_DATE between tmd.THE_FIRST_DATE and tmd.THE_LAST' +
        '_DATE)'
      '      )'
      '  ) as HAS_THE_OCC_WORK_DEPT'
      ''
      'from'
      '  TEAMS t'
      ''
      'order by'
      '  t.TEAM_NAME,'
      '  t.TEAM_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'owm_EXPLOITATION'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 582
    Top = 160
    object qryProfessionEmployeeMonthTeamsTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
    end
    object qryProfessionEmployeeMonthTeamsTEAM_NAME: TAbmesWideStringField
      FieldName = 'TEAM_NAME'
      Size = 50
    end
    object qryProfessionEmployeeMonthTeamsHAS_THE_PROFESSION: TAbmesFloatField
      FieldName = 'HAS_THE_PROFESSION'
    end
    object qryProfessionEmployeeMonthTeamsHAS_THE_EMPLOYEE: TAbmesFloatField
      FieldName = 'HAS_THE_EMPLOYEE'
    end
    object qryProfessionEmployeeMonthTeamsHAS_THE_OCC_WORK_DEPT: TAbmesFloatField
      FieldName = 'HAS_THE_OCC_WORK_DEPT'
    end
  end
  object prvMLMSOperationVariants: TDataSetProvider
    DataSet = qryMLMSOperationVariants
    UpdateMode = upWhereKeyOnly
    Left = 448
    Top = 360
  end
  object qryStageInfo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
      '  mlms.MLMS_OBJECT_BRANCH_CODE,'
      '  mlms.MLMS_OBJECT_CODE,'
      '  s.SALE_BRANCH_CODE,'
      '  s.SALE_NO,'
      '  ml.IS_ARCHIVED as IS_MODEL_ARCHIVED,'
      '  Nvl2(ml.CLOSE_EMPLOYEE_CODE, 1, 0) as IS_MODEL_CLOSED,'
      '  Nvl2(ml.ANNUL_EMPLOYEE_CODE, 1, 0) as IS_MODEL_ANNULED,'
      '  ml.LIMITING_DATE as MODEL_LIMITING_DATE,'
      '  mll.NO_AS_TEXT as MLL_NO_AS_TEXT,'
      '  mll.FORK_NO,'
      '  mlms.ML_MODEL_STAGE_NO'
      ''
      'from'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml,'
      '  SALES s'
      ''
      'where'
      '  (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '  (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      '  (mlms.MLMS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLMS_OBJECT_CODE = :MLMS_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 168
    object qryStageInfoMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryStageInfoMLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryStageInfoSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object qryStageInfoSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object qryStageInfoIS_MODEL_ARCHIVED: TAbmesFloatField
      FieldName = 'IS_MODEL_ARCHIVED'
    end
    object qryStageInfoIS_MODEL_CLOSED: TAbmesFloatField
      FieldName = 'IS_MODEL_CLOSED'
    end
    object qryStageInfoIS_MODEL_ANNULED: TAbmesFloatField
      FieldName = 'IS_MODEL_ANNULED'
    end
    object qryStageInfoMODEL_LIMITING_DATE: TAbmesSQLTimeStampField
      FieldName = 'MODEL_LIMITING_DATE'
    end
    object qryStageInfoMLL_NO_AS_TEXT: TAbmesWideStringField
      FieldName = 'MLL_NO_AS_TEXT'
      Size = 100
    end
    object qryStageInfoFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object qryStageInfoML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
  end
  object prvStageInfo: TDataSetProvider
    DataSet = qryStageInfo
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 112
  end
  object qryGetOMNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_OPERATION_MOVEMENT_NO.NextVal as NEW_OM_NO'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 424
    object qryGetOMNoNEW_OM_NO: TAbmesFloatField
      FieldName = 'NEW_OM_NO'
    end
  end
  object qryGetSpecialControlNeeded: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Count(*) as SPECIAL_CONTROL_NEEDED'
      ''
      'from'
      '  MLMS_OPERATIONS mlmso'
      ''
      'where'
      
        '  (mlmso.MLMSO_OBJECT_BRANCH_CODE = :MLMSO_OBJECT_BRANCH_CODE) a' +
        'nd'
      '  (mlmso.MLMSO_OBJECT_CODE = :MLMSO_OBJECT_CODE) and'
      ''
      '  (mlmso.HAS_SPECIAL_CONTROL = 1) and'
      ''
      '  not exists('
      '    select'
      '      1'
      '    from'
      '      OPERATION_MOVEMENTS om'
      '    where'
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      '      (om.OPERATION_MOVEMENT_TYPE_CODE = 9) and'
      '      (om.STORNO_EMPLOYEE_CODE is null)'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 344
    Top = 208
    object qryGetSpecialControlNeededSPECIAL_CONTROL_NEEDED: TAbmesFloatField
      FieldName = 'SPECIAL_CONTROL_NEEDED'
      FieldValueType = fvtBoolean
    end
  end
end
