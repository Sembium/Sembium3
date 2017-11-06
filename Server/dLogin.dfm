inherited dmLogin: TdmLogin
  Height = 362
  Width = 829
  object qryUserData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  e.EMPLOYEE_CODE,'
      ''
      '  e.FIRST_NAME,'
      '  e.MIDDLE_NAME,'
      '  e.LAST_NAME,'
      ''
      '  ( e.FIRST_NAME ||'
      '    Nvl2(e.MIDDLE_NAME,'
      '      '#39' '#39' || Substr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39','
      '      '#39' '#39') ||'
      '    e.LAST_NAME'
      '  ) as EMPLOYEE_NAME,'
      ''
      '  e.ABBREV,'
      '  e.CURRENT_DEPT_CODE,'
      ''
      '  Nvl2('
      '    e.CURRENT_DEPT_CODE,'
      '    ( select'
      
        '        (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER' +
        ' || '#39' - '#39' || d.NAME)'
      '      from'
      '        DEPTS d,'
      '        DEPT_TYPES dt'
      '      where'
      '        (d.DEPT_CODE = e.CURRENT_DEPT_CODE) and'
      '        (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '    ),'
      '    null'
      '  ) as CURRENT_DEPT_FULL_NAME,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      FIN_STORES fs'
      '    where'
      '      (fs.STORE_CODE = e.CURRENT_DEPT_CODE)'
      '  ) as CURRENT_DEPT_IS_FIN_STORE,'
      ''
      '  u.PRODUCTS_TREE_EXPAND_LEVELS,'
      '  u.DEPTS_TREE_EXPAND_LEVELS,'
      '  u.PRODUCTS_TREE_SHOW_DETAIL,'
      '  u.DEPTS_TREE_SHOW_DETAIL,'
      '  u.DEFAULT_SHOW_UNCOVERED_LINES,'
      '  u.PSD_COMPLETE_IN_ADVANCE_WDAYS,'
      '  u.PSD_REQUEST_IN_ADVANCE_WDAYS,'
      '  u.DEFAULT_DELIVERIES_ACTIVE_PAGE,'
      '  u.DEFAULT_SALES_EXP_ACTIVE_PAGE,'
      ''
      '  ( select'
      '      sc.WORKDAY_BEGIN_TIME'
      '    from'
      '      OCCUPATION_SHIFTS os,'
      '      DATE_SHIFT_CYCLES dsc,'
      '      SHIFT_CYCLES sc'
      '    where'
      '      (os.SHIFT_CODE = dsc.SHIFT_CODE) and'
      '      (dsc.SHIFT_CYCLE_CODE = sc.SHIFT_CYCLE_CODE) and'
      '      (dsc.THE_DATE = ContextDate) and'
      '      (os.OCCUPATION_CODE ='
      '        ( select'
      '            o.OCCUPATION_CODE'
      '          from'
      '            OCCUPATIONS o,'
      '            OCCUPATION_EMPLOYEES oe'
      '          where'
      '            (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '            (oe.EMPLOYEE_CODE = :USER_CODE) and'
      
        '            (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe' +
        '.ASSIGNMENT_END_DATE) and'
      '            (o.IS_MAIN = 1)'
      '        )'
      '      ) and'
      '      (ContextDate between os.BEGIN_DATE and os.END_DATE)'
      '  ) as BEGIN_TIME,'
      ''
      '  ( select'
      '      sc.WORKDAY_END_TIME'
      '    from'
      '      OCCUPATION_SHIFTS os,'
      '      DATE_SHIFT_CYCLES dsc,'
      '      SHIFT_CYCLES sc'
      '    where'
      '      (os.SHIFT_CODE = dsc.SHIFT_CODE) and'
      '      (dsc.SHIFT_CYCLE_CODE = sc.SHIFT_CYCLE_CODE) and'
      '      (dsc.THE_DATE = ContextDate) and'
      '      (os.OCCUPATION_CODE ='
      '        ( select'
      '            o.OCCUPATION_CODE'
      '          from'
      '            OCCUPATIONS o,'
      '            OCCUPATION_EMPLOYEES oe'
      '          where'
      '            (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '            (oe.EMPLOYEE_CODE = :USER_CODE) and'
      
        '            (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe' +
        '.ASSIGNMENT_END_DATE) and'
      '            (o.IS_MAIN = 1)'
      '        )'
      '      ) and'
      '      (ContextDate between os.BEGIN_DATE and os.END_DATE)'
      '  ) as END_TIME,'
      ''
      '  NullIf('
      '    ( select'
      '        /*+ INDEX(ede) INDEX(det) INDEX(detp) */'
      '        Sum(det.DISC_EVENT_TYPE_SIGN * detp.RATING)'
      '      from'
      '        EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '        DISC_EVENT_TYPES det,'
      '        DISC_EVENT_TYPE_PERIODS detp'
      '      where'
      '        (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '        (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CODE) an' +
        'd'
      
        '        (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_CODE) a' +
        'nd'
      '        (ede.STORNO_EMPLOYEE_CODE is null) and'
      '        (ede.DISCIPLINE_EVENT_STATE_CODE = 1) and'
      '        (det.DISC_EVENT_TYPE_SIGN < 0) and'
      
        '        (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_DATE and d' +
        'etp.END_DATE) and'
      
        '        (DateTimeUtils.IncDateByTimeUnits(ede.DISCIPLINE_EVENT_D' +
        'ATE-1, detp.ACTIVE_DATE_UNIT_CODE, detp.ACTIVE_DATE_UNIT_COUNT) ' +
        '>= ContextDate)'
      '    ),'
      '    0'
      '  ) as NEGATIVE_DISCIPLINE_RATING,'
      ''
      '  NullIf('
      '    ( select'
      '        /*+ INDEX(ede) INDEX(det) INDEX(detp) */'
      '        Sum(det.DISC_EVENT_TYPE_SIGN * detp.RATING)'
      '      from'
      '        EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '        DISC_EVENT_TYPES det,'
      '        DISC_EVENT_TYPE_PERIODS detp'
      '      where'
      '        (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '        (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CODE) an' +
        'd'
      
        '        (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_CODE) a' +
        'nd'
      '        (ede.STORNO_EMPLOYEE_CODE is null) and'
      '        (ede.DISCIPLINE_EVENT_STATE_CODE = 1) and'
      '        (det.DISC_EVENT_TYPE_SIGN > 0) and'
      
        '        (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_DATE and d' +
        'etp.END_DATE) and'
      
        '        (DateTimeUtils.IncDateByTimeUnits(ede.DISCIPLINE_EVENT_D' +
        'ATE-1, detp.ACTIVE_DATE_UNIT_CODE, detp.ACTIVE_DATE_UNIT_COUNT) ' +
        '>= ContextDate)'
      '    ),'
      '    0'
      '  ) as POSITIVE_DISCIPLINE_RATING,'
      ''
      '  u.FIN_PROD_TREE_EXPAND_LEVELS,'
      '  u.BUDGET_PROD_TREE_EXPAND_LEVELS,'
      '  u.FIN_PROD_TREE_SHOW_DETAIL,'
      '  u.BUDGET_PROD_TREE_SHOW_DETAIL,'
      '  u.DOS_PRINT,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as EMPLOYEE_NO,'
      ''
      '  u.DEFAULT_MODEL_STATUS_EXPAND_ST,'
      '  u.DEFAULT_SHOW_PRODUCT_QTY_TREE'
      '  '
      'from'
      '  USERS u,'
      '  EMPLOYEES e'
      ''
      'where'
      '  (u.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '  (e.EMPLOYEE_CODE = :USER_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 8
    object qryUserDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserDataEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object qryUserDataABBREV: TAbmesWideStringField
      FieldName = 'ABBREV'
      Size = 5
    end
    object qryUserDataCURRENT_DEPT_CODE: TAbmesFloatField
      FieldName = 'CURRENT_DEPT_CODE'
    end
    object qryUserDataCURRENT_DEPT_FULL_NAME: TAbmesWideStringField
      FieldName = 'CURRENT_DEPT_FULL_NAME'
      Size = 149
    end
    object qryUserDataCURRENT_DEPT_IS_FIN_STORE: TAbmesFloatField
      FieldName = 'CURRENT_DEPT_IS_FIN_STORE'
      FieldValueType = fvtBoolean
    end
    object qryUserDataPRODUCTS_TREE_EXPAND_LEVELS: TAbmesFloatField
      FieldName = 'PRODUCTS_TREE_EXPAND_LEVELS'
    end
    object qryUserDataDEPTS_TREE_EXPAND_LEVELS: TAbmesFloatField
      FieldName = 'DEPTS_TREE_EXPAND_LEVELS'
    end
    object qryUserDataPRODUCTS_TREE_SHOW_DETAIL: TAbmesFloatField
      FieldName = 'PRODUCTS_TREE_SHOW_DETAIL'
    end
    object qryUserDataDEPTS_TREE_SHOW_DETAIL: TAbmesFloatField
      FieldName = 'DEPTS_TREE_SHOW_DETAIL'
    end
    object qryUserDataDEFAULT_SHOW_UNCOVERED_LINES: TAbmesFloatField
      FieldName = 'DEFAULT_SHOW_UNCOVERED_LINES'
      FieldValueType = fvtBoolean
    end
    object qryUserDataPSD_COMPLETE_IN_ADVANCE_WDAYS: TAbmesFloatField
      FieldName = 'PSD_COMPLETE_IN_ADVANCE_WDAYS'
    end
    object qryUserDataPSD_REQUEST_IN_ADVANCE_WDAYS: TAbmesFloatField
      FieldName = 'PSD_REQUEST_IN_ADVANCE_WDAYS'
    end
    object qryUserDataDEFAULT_DELIVERIES_ACTIVE_PAGE: TAbmesFloatField
      FieldName = 'DEFAULT_DELIVERIES_ACTIVE_PAGE'
    end
    object qryUserDataDEFAULT_SALES_EXP_ACTIVE_PAGE: TAbmesFloatField
      FieldName = 'DEFAULT_SALES_EXP_ACTIVE_PAGE'
    end
    object qryUserDataBEGIN_TIME: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_TIME'
    end
    object qryUserDataEND_TIME: TAbmesSQLTimeStampField
      FieldName = 'END_TIME'
    end
    object qryUserDataNEGATIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'NEGATIVE_DISCIPLINE_RATING'
    end
    object qryUserDataPOSITIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'POSITIVE_DISCIPLINE_RATING'
    end
    object qryUserDataFIN_PROD_TREE_EXPAND_LEVELS: TAbmesFloatField
      FieldName = 'FIN_PROD_TREE_EXPAND_LEVELS'
    end
    object qryUserDataBUDGET_PROD_TREE_EXPAND_LEVELS: TAbmesFloatField
      FieldName = 'BUDGET_PROD_TREE_EXPAND_LEVELS'
    end
    object qryUserDataFIN_PROD_TREE_SHOW_DETAIL: TAbmesFloatField
      FieldName = 'FIN_PROD_TREE_SHOW_DETAIL'
    end
    object qryUserDataBUDGET_PROD_TREE_SHOW_DETAIL: TAbmesFloatField
      FieldName = 'BUDGET_PROD_TREE_SHOW_DETAIL'
    end
    object qryUserDataDOS_PRINT: TAbmesFloatField
      FieldName = 'DOS_PRINT'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryUserDataEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object qryUserDataDEFAULT_MODEL_STATUS_EXPAND_ST: TAbmesFloatField
      FieldName = 'DEFAULT_MODEL_STATUS_EXPAND_ST'
      Required = True
    end
    object qryUserDataDEFAULT_SHOW_PRODUCT_QTY_TREE: TAbmesFloatField
      FieldName = 'DEFAULT_SHOW_PRODUCT_QTY_TREE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryUserDataFIRST_NAME: TAbmesWideStringField
      FieldName = 'FIRST_NAME'
      Required = True
      Size = 50
    end
    object qryUserDataMIDDLE_NAME: TAbmesWideStringField
      FieldName = 'MIDDLE_NAME'
      Size = 50
    end
    object qryUserDataLAST_NAME: TAbmesWideStringField
      FieldName = 'LAST_NAME'
      Required = True
      Size = 50
    end
  end
  object qryUserActivities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ua.ACTIVITY_CODE'
      '  '
      'from'
      '  USER_ACTIVITIES ua'
      ''
      'where'
      '  (ua.EMPLOYEE_CODE = :USER_CODE)'
      ''
      '  '
      'union'
      '  '
      '  '
      'select'
      '  uga.ACTIVITY_CODE'
      ''
      'from'
      '  USER_GROUP_USERS ugu,'
      '  USER_GROUP_ACTIVITIES uga'
      '  '
      'where'
      '  (ugu.USER_GROUP_CODE = uga.USER_GROUP_CODE) and'
      '  '
      '  (ugu.EMPLOYEE_CODE = :USER_CODE)'
      ''
      ''
      'union'
      ''
      ''
      'select'
      '  sra.ACTIVITY_CODE'
      ''
      'from'
      '  OCCUPATION_EMPLOYEES oe,'
      '  OCCUPATION_SYS_ROLES osr,'
      '  SYS_ROLE_ACTIVITIES sra'
      ''
      'where'
      '  (oe.EMPLOYEE_CODE = :USER_CODE) and'
      
        '  (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNMEN' +
        'T_END_DATE) and'
      '  (oe.OCCUPATION_CODE = osr.OCCUPATION_CODE) and'
      '  (osr.SYS_ROLE_CODE = sra.SYS_ROLE_CODE)'
      '  '
      'order by'
      '  1')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 8
    object qryUserActivitiesACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
    end
  end
  object qryCompanyData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  c.SHORT_NAME,'
      ''
      '  case'
      '    when (ct.ABBREV_BEFORE = 1) then'
      '      ct.COMPANY_TYPE_ABBREV || '#39' "'#39' || c.COMPANY_NAME || '#39'"'#39
      '  else'
      '    '#39'"'#39' || c.COMPANY_NAME || '#39'" '#39' || ct.COMPANY_TYPE_ABBREV'
      '  end as LONG_NAME'
      ''
      'from'
      '  COMPANIES c, '
      '  COMPANY_TYPES ct'
      ''
      'where'
      '  (c.COMPANY_CODE = 0) and'
      '  (c.COMPANY_TYPE_CODE = ct.COMPANY_TYPE_CODE(+))')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 64
    object qryCompanyDataSHORT_NAME: TAbmesWideStringField
      FieldName = 'SHORT_NAME'
    end
    object qryCompanyDataLONG_NAME: TAbmesWideStringField
      FieldName = 'LONG_NAME'
      Size = 153
    end
  end
  object qryInternalValues: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  iv.BASE_CURRENCY_CODE,'
      '  cb.CURRENCY_ABBREV as BASE_CURRENCY_ABBREV,'
      '  iv.SECONDARY_CURRENCY_CODE,'
      '  cs.CURRENCY_ABBREV as SECONDARY_CURRENCY_ABBREV,'
      '  iv.LOCAL_BRANCH_CODE,'
      
        '  dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER || '#39' -' +
        ' '#39' || d.NAME as LOCAL_BRANCH_NAME,'
      '  d.CUSTOM_CODE as LOCAL_BRANCH_NO,'
      '  NumberToDate(oss.OPTIMIZER_UNION_COHESION) as EXPIRE_DATE,'
      '  iv.IS_OLD_ACTIVITY_SYSTEM_VISIBLE,'
      '  iv.IS_INVOICE_SYSTEM_VISIBLE,'
      '  iv.IS_AUTO_COMPLETE_FO_VISIBLE,'
      '  iv.IS_AUTO_COMPLETE_SR_VISIBLE,'
      ''
      '  iv.FEATURE_FLAG_OPERATION_LOADING'
      ''
      'from'
      '  INTERNAL_VALUES iv,'
      '  OPTIMIZER_SECONDARY_STATS oss,'
      '  CURRENCIES cb,'
      '  CURRENCIES cs,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      ''
      'where'
      '  (oss.CODE = 1) and'
      '  (iv.CODE = 1) and'
      '  (iv.BASE_CURRENCY_CODE = cb.CURRENCY_CODE) and'
      '  (iv.SECONDARY_CURRENCY_CODE = cs.CURRENCY_CODE) and'
      '  (iv.LOCAL_BRANCH_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 64
    object qryInternalValuesBASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'BASE_CURRENCY_CODE'
    end
    object qryInternalValuesBASE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'BASE_CURRENCY_ABBREV'
      Size = 5
    end
    object qryInternalValuesSECONDARY_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'SECONDARY_CURRENCY_CODE'
    end
    object qryInternalValuesSECONDARY_CURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'SECONDARY_CURRENCY_ABBREV'
      Size = 5
    end
    object qryInternalValuesLOCAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'LOCAL_BRANCH_CODE'
    end
    object qryInternalValuesLOCAL_BRANCH_NAME: TAbmesWideStringField
      FieldName = 'LOCAL_BRANCH_NAME'
      Size = 149
    end
    object qryInternalValuesLOCAL_BRANCH_NO: TAbmesFloatField
      FieldName = 'LOCAL_BRANCH_NO'
    end
    object qryInternalValuesEXPIRE_DATE: TAbmesSQLTimeStampField
      FieldName = 'EXPIRE_DATE'
    end
    object qryInternalValuesIS_OLD_ACTIVITY_SYSTEM_VISIBLE: TAbmesFloatField
      FieldName = 'IS_OLD_ACTIVITY_SYSTEM_VISIBLE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryInternalValuesIS_INVOICE_SYSTEM_VISIBLE: TAbmesFloatField
      FieldName = 'IS_INVOICE_SYSTEM_VISIBLE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryInternalValuesIS_AUTO_COMPLETE_FO_VISIBLE: TAbmesFloatField
      FieldName = 'IS_AUTO_COMPLETE_FO_VISIBLE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryInternalValuesIS_AUTO_COMPLETE_SR_VISIBLE: TAbmesFloatField
      FieldName = 'IS_AUTO_COMPLETE_SR_VISIBLE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryInternalValuesFEATURE_FLAG_OPERATION_LOADING: TAbmesFloatField
      FieldName = 'FEATURE_FLAG_OPERATION_LOADING'
      FieldValueType = fvtBoolean
    end
  end
  object prvCommonOptions: TDataSetProvider
    DataSet = qryCommonOptions
    UpdateMode = upWhereKeyOnly
    AfterApplyUpdates = prvCommonOptionsAfterApplyUpdates
    Left = 48
    Top = 144
  end
  object qryCommonOptions: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  co.CODE,'
      '  co.DEFAULT_TREE_CUSTOM_CODE,'
      '  co.DEFAULT_PRIORITY_CODE,'
      '  co.DEFAULT_MGR_SALE_PRIORITY_CODE,'
      '  co.MIN_RANGE_INVOICE_NO,'
      '  co.MAX_RANGE_INVOICE_NO,'
      '  co.DEFAULT_DATE_UNIT_CODE,'
      '  co.MLLC_IND_REFRESH_INTERVAL,'
      '  co.AUTO_LIMITED_DEFAULT_MODELS,'
      '  co.ML_LIMITING_WORKDAYS,'
      '  co.WEEK_DATE_FORMATTING,'
      '  co.DATE_INTERVAL_FORMAT_CODE,'
      '  co.MAX_DCD_OVERHEAD_PERCENT,'
      '  co.IS_SALE_MFG_QTY_AUTO_LOADED,'
      '  co.PROD_ORGANIZER_PROFESSION_CODE,'
      '  co.MANAGER_OKIDU_PROFESSION_CODE,'
      '  co.OKIDU_PROFESSION_CODE,'
      '  co.IS_DISCOUNT_PERCENT_SHOWN,'
      '  co.MAX_SALE_INV_VAL_DIFF_PERCENT,'
      '  co.PRODUCTION_ORDER_LATE_DAYS,'
      '  co.PRODUCTION_LEVEL_CODE,'
      '  co.DOCS_REMOTE_ROOT_PATH,'
      '  co.DOCS_LOCAL_ROOT_PATH,'
      '  co.DNC_DOCS_RELATIVE_ROOT_PATH,'
      '  co.DNC_SERVER_NAME,'
      '  co.OPERATION_WORKDAYS_DEV_PERCENT,'
      '  co.ALLOW_LATE_ML_LIMITING,'
      '  co.IS_SR_SD_DEPT_COPIED_FROM_PSD,'
      '  co.COUNT_APPROVE_CYCLES,'
      '  co.DOC_ITEMS_UNAPPROVE_PROMPT,'
      '  co.ALLOW_INTERNALLY_STORED_DOC,'
      '  co.DOC_ITEM_VIEW_CACHE_SIZE,'
      '  co.CHECK_SPEC_DOCS,'
      '  co.CHECK_MODEL_DOCS,'
      '  co.OCCUPATION_ROOT_PRODUCT_CODE,'
      '  co.OCC_ASSIGNMENT_DAYS_DIFF,'
      '  co.COMMON_GROUPS_PROD_ORD_MONTHS,'
      '  co.EO_ACTIVATING_WORKDAYS,'
      '  co.DEFAULT_WORK_PRIORITY_CODE,'
      '  co.MAX_EMP_AVAIL_HOURS,'
      '  co.MIN_INTEGRAL_OVERTIME_HOURS,'
      '  co.MAX_EMP_MOVEMENT_REG_HOURS,'
      '  co.EAM_AUTHORIZE_PROFESSION_CODE,'
      '  co.MAX_EAM_REG_DAYS,'
      '  co.DOC_ITEM_MIRRORS_ROOT_PATH,'
      '  co.MINIMAL_EXCEPT_EVENT_HOURS,'
      '  co.MAX_UNFINISHED_MFG_PAST_DAYS,'
      '  co.DATE_PERIODS_YEAR_PART_CODE,'
      '  co.EE_IND_REFRESH_INTERVAL,'
      '  co.FIN_ORDER_REQUIREMENT_CODE,'
      '  co.SLOW_CONN_SF_WARNING_SIZE,'
      '  co.TIME_ZONE_ID,'
      '  co.DEFAULT_FO_BRANCH_CODE,'
      '  co.DEFAULT_FO_EXEC_DEPT_CODE,'
      '  co.ALLOW_NON_MAIN_ONLY_OE,'
      '  co.DEFAULT_DCD_MODE_CODE,'
      '  co.DEFAULT_INCLUDE_VAT,'
      '  co.DEFAULT_PRODUCT_SPEC_REQ_CODE,'
      '  co.OPEN_NEW_FIN_ORDER,'
      '  co.IS_DISCOUNT_PERCENT_SHOWN_PRN,'
      '  co.DEFAULT_RELOAD_GROUP_SALE_INS,'
      '  co.DEFAULT_RELOAD_GROUP_SALE_EDT,'
      '  co.OM_REQUIRES_OCC_DEPT,'
      '  co.SPEC_CONTROL_PROFESSION_CODE,'
      '  co.OM_REQUIRES_SPEC_CONTROL_FIRST,'
      '  co.EE_CTRL_MAIN_PROFESSION_CODE,'
      '  co.DATABASE_ICON_INDEX'
      ''
      'from'
      '  COMMON_OPTIONS co'
      ''
      'where'
      '  (co.CODE = 1)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 192
    object qryCommonOptionsCODE: TAbmesFloatField
      FieldName = 'CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCommonOptionsDEFAULT_TREE_CUSTOM_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_TREE_CUSTOM_CODE'
    end
    object qryCommonOptionsDEFAULT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_PRIORITY_CODE'
    end
    object qryCommonOptionsDEFAULT_MGR_SALE_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_MGR_SALE_PRIORITY_CODE'
    end
    object qryCommonOptionsMIN_RANGE_INVOICE_NO: TAbmesFloatField
      FieldName = 'MIN_RANGE_INVOICE_NO'
    end
    object qryCommonOptionsMAX_RANGE_INVOICE_NO: TAbmesFloatField
      FieldName = 'MAX_RANGE_INVOICE_NO'
    end
    object qryCommonOptionsDEFAULT_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_DATE_UNIT_CODE'
    end
    object qryCommonOptionsMLLC_IND_REFRESH_INTERVAL: TAbmesFloatField
      FieldName = 'MLLC_IND_REFRESH_INTERVAL'
    end
    object qryCommonOptionsAUTO_LIMITED_DEFAULT_MODELS: TAbmesFloatField
      FieldName = 'AUTO_LIMITED_DEFAULT_MODELS'
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsML_LIMITING_WORKDAYS: TAbmesFloatField
      FieldName = 'ML_LIMITING_WORKDAYS'
    end
    object qryCommonOptionsWEEK_DATE_FORMATTING: TAbmesFloatField
      FieldName = 'WEEK_DATE_FORMATTING'
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsDATE_INTERVAL_FORMAT_CODE: TAbmesFloatField
      FieldName = 'DATE_INTERVAL_FORMAT_CODE'
    end
    object qryCommonOptionsMAX_DCD_OVERHEAD_PERCENT: TAbmesFloatField
      FieldName = 'MAX_DCD_OVERHEAD_PERCENT'
    end
    object qryCommonOptionsIS_SALE_MFG_QTY_AUTO_LOADED: TAbmesFloatField
      FieldName = 'IS_SALE_MFG_QTY_AUTO_LOADED'
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsPROD_ORGANIZER_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROD_ORGANIZER_PROFESSION_CODE'
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsIS_DISCOUNT_PERCENT_SHOWN: TAbmesFloatField
      FieldName = 'IS_DISCOUNT_PERCENT_SHOWN'
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsMAX_SALE_INV_VAL_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'MAX_SALE_INV_VAL_DIFF_PERCENT'
    end
    object qryCommonOptionsPRODUCTION_ORDER_LATE_DAYS: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_LATE_DAYS'
      FieldValueType = fvtInteger
    end
    object qryCommonOptionsPRODUCTION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_LEVEL_CODE'
    end
    object qryCommonOptionsDOCS_REMOTE_ROOT_PATH: TAbmesWideStringField
      FieldName = 'DOCS_REMOTE_ROOT_PATH'
      Size = 250
    end
    object qryCommonOptionsDOCS_LOCAL_ROOT_PATH: TAbmesWideStringField
      FieldName = 'DOCS_LOCAL_ROOT_PATH'
      Size = 250
    end
    object qryCommonOptionsDNC_DOCS_RELATIVE_ROOT_PATH: TAbmesWideStringField
      FieldName = 'DNC_DOCS_RELATIVE_ROOT_PATH'
      Size = 250
    end
    object qryCommonOptionsDNC_SERVER_NAME: TAbmesWideStringField
      FieldName = 'DNC_SERVER_NAME'
      Size = 50
    end
    object qryCommonOptionsMANAGER_OKIDU_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'MANAGER_OKIDU_PROFESSION_CODE'
    end
    object qryCommonOptionsOKIDU_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'OKIDU_PROFESSION_CODE'
    end
    object qryCommonOptionsOPERATION_WORKDAYS_DEV_PERCENT: TAbmesFloatField
      FieldName = 'OPERATION_WORKDAYS_DEV_PERCENT'
    end
    object qryCommonOptionsALLOW_LATE_ML_LIMITING: TAbmesFloatField
      FieldName = 'ALLOW_LATE_ML_LIMITING'
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsIS_SR_SD_DEPT_COPIED_FROM_PSD: TAbmesFloatField
      FieldName = 'IS_SR_SD_DEPT_COPIED_FROM_PSD'
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsCOUNT_APPROVE_CYCLES: TAbmesFloatField
      FieldName = 'COUNT_APPROVE_CYCLES'
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsDOC_ITEMS_UNAPPROVE_PROMPT: TAbmesFloatField
      FieldName = 'DOC_ITEMS_UNAPPROVE_PROMPT'
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsALLOW_INTERNALLY_STORED_DOC: TAbmesFloatField
      FieldName = 'ALLOW_INTERNALLY_STORED_DOC'
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsDOC_ITEM_VIEW_CACHE_SIZE: TAbmesFloatField
      FieldName = 'DOC_ITEM_VIEW_CACHE_SIZE'
    end
    object qryCommonOptionsCHECK_SPEC_DOCS: TAbmesFloatField
      FieldName = 'CHECK_SPEC_DOCS'
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsCHECK_MODEL_DOCS: TAbmesFloatField
      FieldName = 'CHECK_MODEL_DOCS'
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsOCCUPATION_ROOT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_ROOT_PRODUCT_CODE'
    end
    object qryCommonOptionsOCC_ASSIGNMENT_DAYS_DIFF: TAbmesFloatField
      FieldName = 'OCC_ASSIGNMENT_DAYS_DIFF'
    end
    object qryCommonOptionsCOMMON_GROUPS_PROD_ORD_MONTHS: TAbmesFloatField
      FieldName = 'COMMON_GROUPS_PROD_ORD_MONTHS'
    end
    object qryCommonOptionsEO_ACTIVATING_WORKDAYS: TAbmesFloatField
      FieldName = 'EO_ACTIVATING_WORKDAYS'
    end
    object qryCommonOptionsDEFAULT_WORK_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_WORK_PRIORITY_CODE'
    end
    object qryCommonOptionsMAX_EMP_AVAIL_HOURS: TAbmesFloatField
      FieldName = 'MAX_EMP_AVAIL_HOURS'
    end
    object qryCommonOptionsMIN_INTEGRAL_OVERTIME_HOURS: TAbmesFloatField
      FieldName = 'MIN_INTEGRAL_OVERTIME_HOURS'
    end
    object qryCommonOptionsMAX_EMP_MOVEMENT_REG_HOURS: TAbmesFloatField
      FieldName = 'MAX_EMP_MOVEMENT_REG_HOURS'
    end
    object qryCommonOptionsEAM_AUTHORIZE_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'EAM_AUTHORIZE_PROFESSION_CODE'
    end
    object qryCommonOptionsMAX_EAM_REG_DAYS: TAbmesFloatField
      FieldName = 'MAX_EAM_REG_DAYS'
    end
    object qryCommonOptionsDOC_ITEM_MIRRORS_ROOT_PATH: TAbmesWideStringField
      FieldName = 'DOC_ITEM_MIRRORS_ROOT_PATH'
      Size = 250
    end
    object qryCommonOptionsMINIMAL_EXCEPT_EVENT_HOURS: TAbmesFloatField
      FieldName = 'MINIMAL_EXCEPT_EVENT_HOURS'
    end
    object qryCommonOptionsMAX_UNFINISHED_MFG_PAST_DAYS: TAbmesFloatField
      FieldName = 'MAX_UNFINISHED_MFG_PAST_DAYS'
    end
    object qryCommonOptionsDATE_PERIODS_YEAR_PART_CODE: TAbmesFloatField
      FieldName = 'DATE_PERIODS_YEAR_PART_CODE'
    end
    object qryCommonOptionsEE_IND_REFRESH_INTERVAL: TAbmesFloatField
      FieldName = 'EE_IND_REFRESH_INTERVAL'
    end
    object qryCommonOptionsFIN_ORDER_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_REQUIREMENT_CODE'
    end
    object qryCommonOptionsSLOW_CONN_SF_WARNING_SIZE: TAbmesFloatField
      FieldName = 'SLOW_CONN_SF_WARNING_SIZE'
    end
    object qryCommonOptionsTIME_ZONE_ID: TAbmesWideStringField
      FieldName = 'TIME_ZONE_ID'
      Size = 250
    end
    object qryCommonOptionsDEFAULT_FO_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_FO_BRANCH_CODE'
    end
    object qryCommonOptionsDEFAULT_FO_EXEC_DEPT_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_FO_EXEC_DEPT_CODE'
    end
    object qryCommonOptionsALLOW_NON_MAIN_ONLY_OE: TAbmesFloatField
      FieldName = 'ALLOW_NON_MAIN_ONLY_OE'
      Required = True
    end
    object qryCommonOptionsDEFAULT_DCD_MODE_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_DCD_MODE_CODE'
      Required = True
    end
    object qryCommonOptionsDEFAULT_INCLUDE_VAT: TAbmesFloatField
      FieldName = 'DEFAULT_INCLUDE_VAT'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsDEFAULT_PRODUCT_SPEC_REQ_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_PRODUCT_SPEC_REQ_CODE'
    end
    object qryCommonOptionsOPEN_NEW_FIN_ORDER: TAbmesFloatField
      FieldName = 'OPEN_NEW_FIN_ORDER'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsIS_DISCOUNT_PERCENT_SHOWN_PRN: TAbmesFloatField
      FieldName = 'IS_DISCOUNT_PERCENT_SHOWN_PRN'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsDEFAULT_RELOAD_GROUP_SALE_INS: TAbmesFloatField
      FieldName = 'DEFAULT_RELOAD_GROUP_SALE_INS'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsDEFAULT_RELOAD_GROUP_SALE_EDT: TAbmesFloatField
      FieldName = 'DEFAULT_RELOAD_GROUP_SALE_EDT'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsOM_REQUIRES_OCC_DEPT: TAbmesFloatField
      FieldName = 'OM_REQUIRES_OCC_DEPT'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsSPEC_CONTROL_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SPEC_CONTROL_PROFESSION_CODE'
    end
    object qryCommonOptionsOM_REQUIRES_SPEC_CONTROL_FIRST: TAbmesFloatField
      FieldName = 'OM_REQUIRES_SPEC_CONTROL_FIRST'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryCommonOptionsEE_CTRL_MAIN_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'EE_CTRL_MAIN_PROFESSION_CODE'
    end
    object qryCommonOptionsDATABASE_ICON_INDEX: TAbmesFloatField
      FieldName = 'DATABASE_ICON_INDEX'
    end
  end
  object qryDateUnits: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  THE_DATE_UNIT_CODE,'
      '  THE_DATE_UNIT_NAME'
      'from'
      '  THE_DATE_UNITS'
      'order by'
      '  THE_DATE_UNIT_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 280
    Top = 192
    object qryDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
  end
  object prvDateUnits: TDataSetProvider
    DataSet = qryDateUnits
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 280
    Top = 144
  end
  object prvUserOptions: TDataSetProvider
    DataSet = qryUserOptions
    Options = [poDisableInserts, poDisableDeletes]
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 144
  end
  object qryUserOptions: TAbmesSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  u.EMPLOYEE_CODE,'
      '  u.PRODUCTS_TREE_EXPAND_LEVELS,'
      '  u.DEPTS_TREE_EXPAND_LEVELS,'
      '  u.PRODUCTS_TREE_SHOW_DETAIL,'
      '  u.DEPTS_TREE_SHOW_DETAIL,'
      '  u.DEFAULT_SHOW_UNCOVERED_LINES,'
      '  u.PSD_COMPLETE_IN_ADVANCE_WDAYS,'
      '  u.PSD_REQUEST_IN_ADVANCE_WDAYS,'
      '  u.DEFAULT_DELIVERIES_ACTIVE_PAGE,'
      '  u.DEFAULT_SALES_EXP_ACTIVE_PAGE,'
      '  u.FIN_PROD_TREE_EXPAND_LEVELS,'
      '  u.BUDGET_PROD_TREE_EXPAND_LEVELS,'
      '  u.FIN_PROD_TREE_SHOW_DETAIL,'
      '  u.BUDGET_PROD_TREE_SHOW_DETAIL,'
      '  u.DOS_PRINT,'
      '  u.DEFAULT_MODEL_STATUS_EXPAND_ST,'
      '  u.DEFAULT_SHOW_PRODUCT_QTY_TREE,'
      '  u.PICTURE'
      ''
      'from'
      '  USERS u'
      ''
      'where'
      '  (u.EMPLOYEE_CODE = :USER_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 192
    object qryUserOptionsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserOptionsPRODUCTS_TREE_EXPAND_LEVELS: TAbmesFloatField
      FieldName = 'PRODUCTS_TREE_EXPAND_LEVELS'
    end
    object qryUserOptionsDEPTS_TREE_EXPAND_LEVELS: TAbmesFloatField
      FieldName = 'DEPTS_TREE_EXPAND_LEVELS'
    end
    object qryUserOptionsPRODUCTS_TREE_SHOW_DETAIL: TAbmesFloatField
      FieldName = 'PRODUCTS_TREE_SHOW_DETAIL'
    end
    object qryUserOptionsDEPTS_TREE_SHOW_DETAIL: TAbmesFloatField
      FieldName = 'DEPTS_TREE_SHOW_DETAIL'
    end
    object qryUserOptionsDEFAULT_SHOW_UNCOVERED_LINES: TAbmesFloatField
      FieldName = 'DEFAULT_SHOW_UNCOVERED_LINES'
      FieldValueType = fvtBoolean
    end
    object qryUserOptionsPSD_COMPLETE_IN_ADVANCE_WDAYS: TAbmesFloatField
      FieldName = 'PSD_COMPLETE_IN_ADVANCE_WDAYS'
    end
    object qryUserOptionsPSD_REQUEST_IN_ADVANCE_WDAYS: TAbmesFloatField
      FieldName = 'PSD_REQUEST_IN_ADVANCE_WDAYS'
    end
    object qryUserOptionsDEFAULT_DELIVERIES_ACTIVE_PAGE: TAbmesFloatField
      FieldName = 'DEFAULT_DELIVERIES_ACTIVE_PAGE'
    end
    object qryUserOptionsDEFAULT_SALES_EXP_ACTIVE_PAGE: TAbmesFloatField
      FieldName = 'DEFAULT_SALES_EXP_ACTIVE_PAGE'
    end
    object qryUserOptionsFIN_PROD_TREE_EXPAND_LEVELS: TAbmesFloatField
      FieldName = 'FIN_PROD_TREE_EXPAND_LEVELS'
    end
    object qryUserOptionsBUDGET_PROD_TREE_EXPAND_LEVELS: TAbmesFloatField
      FieldName = 'BUDGET_PROD_TREE_EXPAND_LEVELS'
    end
    object qryUserOptionsFIN_PROD_TREE_SHOW_DETAIL: TAbmesFloatField
      FieldName = 'FIN_PROD_TREE_SHOW_DETAIL'
    end
    object qryUserOptionsBUDGET_PROD_TREE_SHOW_DETAIL: TAbmesFloatField
      FieldName = 'BUDGET_PROD_TREE_SHOW_DETAIL'
    end
    object qryUserOptionsDOS_PRINT: TAbmesFloatField
      FieldName = 'DOS_PRINT'
      Required = True
    end
    object qryUserOptionsDEFAULT_MODEL_STATUS_EXPAND_ST: TAbmesFloatField
      FieldName = 'DEFAULT_MODEL_STATUS_EXPAND_ST'
      Required = True
    end
    object qryUserOptionsDEFAULT_SHOW_PRODUCT_QTY_TREE: TAbmesFloatField
      FieldName = 'DEFAULT_SHOW_PRODUCT_QTY_TREE'
      Required = True
    end
    object qryUserOptionsPICTURE: TBlobField
      FieldName = 'PICTURE'
      BlobType = ftOraBlob
      Size = 1
    end
  end
  object qryUpdateLastLoginMoment: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'LAST_LOGIN_COMPUTER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LAST_LOGIN_WINDOWS_SESSION_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LAST_LOGIN_WINDOWS_VERSION'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LAST_LOGIN_HARDWARE_INFO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  USERS'
      'set'
      '  LAST_LOGIN_DATE = ContextDate,'
      '  LAST_LOGIN_TIME = ContextTime,'
      '  LAST_LOGIN_COMPUTER_NAME = :LAST_LOGIN_COMPUTER_NAME,'
      
        '  LAST_LOGIN_WINDOWS_SESSION_ID = :LAST_LOGIN_WINDOWS_SESSION_ID' +
        ','
      '  LAST_LOGIN_WINDOWS_VERSION = :LAST_LOGIN_WINDOWS_VERSION,'
      '  LAST_LOGIN_HARDWARE_INFO = :LAST_LOGIN_HARDWARE_INFO'
      'where'
      '  (EMPLOYEE_CODE = :EMPLOYEE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 464
    Top = 8
  end
  object qryUserGroups: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ugu.USER_GROUP_CODE'
      'from'
      '  USER_GROUP_USERS ugu'
      'where'
      '  (ugu.EMPLOYEE_CODE = :USER_CODE)'
      'order by'
      '  ugu.USER_GROUP_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 320
    Top = 8
    object qryUserGroupsUSER_GROUP_CODE: TAbmesFloatField
      FieldName = 'USER_GROUP_CODE'
    end
  end
  object qryUserWorkDepts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  owd.DEPT_CODE'
      ''
      'from'
      '  OCCUPATION_EMPLOYEES oe,'
      '  OCCUPATION_WORK_DEPTS owd,'
      '  OCC_WORK_DEPT_PRIORITIES owdp'
      ''
      'where'
      '  (oe.OCCUPATION_CODE = owd.OCCUPATION_CODE) and'
      
        '  (owd.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WORK_DEPT_PRIORITY' +
        '_CODE) and'
      ''
      '  (owdp.ORG_WORK_LEVEL_CODE = %owl_EXECUTING) and'
      '  (owdp.ORG_WORK_MODE_CODE = %owm_EXPLOITATION) and'
      ''
      '  (oe.EMPLOYEE_CODE = :USER_CODE) and'
      
        '  (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNMEN' +
        'T_END_DATE)'
      ''
      'group by'
      '  owd.DEPT_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'owl_EXECUTING'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'owm_EXPLOITATION'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 320
    Top = 64
    object qryUserWorkDeptsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
  end
  object prvToolbars: TDataSetProvider
    DataSet = qryToolbars
    Options = [poReadOnly, poUseQuoteChar]
    Left = 384
    Top = 144
  end
  object prvUserToolbars: TDataSetProvider
    DataSet = qryUserToolbars
    UpdateMode = upWhereKeyOnly
    OnUpdateError = prvUserToolbarsUpdateError
    Left = 480
    Top = 144
  end
  object qryToolbars: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  cstc.CROSS_STATE_CODE,'
      '  t.TOOLBAR_CODE,'
      '  t.TOOLBAR_NAME,'
      '  t.TOOLBAR_NO,'
      '  t.TOOLBAR_CATEGORY_CODE,'
      ''
      '  ( select'
      '      tc.ACTIVITY_CODE'
      '    from'
      '      TOOLBAR_CATEGORIES tc'
      '    where'
      '      (tc.TOOLBAR_CATEGORY_CODE = t.TOOLBAR_CATEGORY_CODE)'
      '  ) as TOOLBAR_CATEGORY_ACTIVITY_CODE'
      ''
      'from'
      '  CROSS_STATE_TLB_CATEGORIES cstc,'
      '  TOOLBARS t'
      ''
      'where'
      '  (cstc.TOOLBAR_CATEGORY_CODE = t.TOOLBAR_CATEGORY_CODE) and'
      ''
      '  ( ( ( select'
      '          iv.IS_INVOICE_SYSTEM_VISIBLE'
      '        from'
      '          INTERNAL_VALUES iv'
      '        where'
      '          (iv.CODE = 1)'
      '      ) = 1'
      '    ) or'
      ''
      
        '    (not t.TOOLBAR_CODE in (15, 20)) -- whodqshti/izhodqshti fak' +
        'turi'
      '  )'
      ''
      'order by'
      '  cstc.CROSS_STATE_CODE,'
      '  t.TOOLBAR_CATEGORY_CODE,'
      '  t.TOOLBAR_NO,'
      '  t.TOOLBAR_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 192
    object qryToolbarsCROSS_STATE_CODE: TAbmesFloatField
      FieldName = 'CROSS_STATE_CODE'
    end
    object qryToolbarsTOOLBAR_CODE: TAbmesFloatField
      FieldName = 'TOOLBAR_CODE'
    end
    object qryToolbarsTOOLBAR_NAME: TAbmesWideStringField
      FieldName = 'TOOLBAR_NAME'
      Size = 100
    end
    object qryToolbarsTOOLBAR_NO: TAbmesFloatField
      FieldName = 'TOOLBAR_NO'
    end
    object qryToolbarsTOOLBAR_CATEGORY_CODE: TAbmesFloatField
      FieldName = 'TOOLBAR_CATEGORY_CODE'
    end
    object qryToolbarsTOOLBAR_CATEGORY_ACTIVITY_CODE: TAbmesFloatField
      FieldName = 'TOOLBAR_CATEGORY_ACTIVITY_CODE'
    end
  end
  object qryUserToolbars: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ucst.EMPLOYEE_CODE,'
      '  ucst.CROSS_STATE_CODE,'
      '  ucst.TOOLBAR_CODE'
      ''
      'from'
      '  USER_CROSS_STATE_TOOLBARS ucst'
      ''
      'where'
      '  (ucst.EMPLOYEE_CODE = :USER_CODE)'
      '  '
      'order by'
      '  ucst.EMPLOYEE_CODE,'
      '  ucst.CROSS_STATE_CODE,'
      '  ucst.TOOLBAR_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 480
    Top = 192
    object qryUserToolbarsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserToolbarsCROSS_STATE_CODE: TAbmesFloatField
      FieldName = 'CROSS_STATE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserToolbarsTOOLBAR_CODE: TAbmesFloatField
      FieldName = 'TOOLBAR_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object qryResetUserToolbars: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CROSS_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CROSS_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CROSS_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CROSS_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CROSS_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CROSS_STATE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  delete  /*+ INDEX(ucst) */'
      '    USER_CROSS_STATE_TOOLBARS ucst'
      '  where'
      '    (ucst.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '    ( (:CROSS_STATE_CODE is null) or'
      '      (:CROSS_STATE_CODE = 0) or'
      '      (ucst.CROSS_STATE_CODE = :CROSS_STATE_CODE) );'
      ''
      '  insert into USER_CROSS_STATE_TOOLBARS'
      '  ('
      '    EMPLOYEE_CODE,'
      '    CROSS_STATE_CODE,'
      '    TOOLBAR_CODE'
      '  )'
      '  select'
      '    :EMPLOYEE_CODE,'
      '    dcst.CROSS_STATE_CODE,'
      '    dcst.TOOLBAR_CODE'
      '  from'
      '    DEFAULT_CROSS_STATE_TOOLBARS dcst'
      '  where'
      '    ( (:CROSS_STATE_CODE is null) or'
      '      (:CROSS_STATE_CODE = 0) or'
      '      (dcst.CROSS_STATE_CODE = :CROSS_STATE_CODE) );'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 464
    Top = 64
  end
  object qryUserSysRoles: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  osr.SYS_ROLE_CODE'
      ''
      'from'
      '  OCCUPATION_SYS_ROLES osr'
      ''
      'where'
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        OCCUPATION_EMPLOYEES oe'
      '      where'
      '        (oe.OCCUPATION_CODE = osr.OCCUPATION_CODE) and'
      
        '        (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe.ASS' +
        'IGNMENT_END_DATE) and'
      '        (oe.EMPLOYEE_CODE = :USER_CODE)'
      '    )'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 248
    Top = 24
    object qryUserSysRolesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
    end
  end
  object qryGetLastExecutionDate: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  oss.CODE,'
      
        '  Trunc(NumberToDate(oss.OPTIMIZER_JOIN_COHESION)) as LAST_EXECU' +
        'TION_DATE'
      'from'
      '  OPTIMIZER_SECONDARY_STATS oss'
      'where'
      '  (oss.CODE = 1)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 264
    Top = 248
    object qryGetLastExecutionDateLAST_EXECUTION_DATE: TAbmesSQLTimeStampField
      FieldName = 'LAST_EXECUTION_DATE'
    end
  end
  object qryDBValues: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  dbv.IS_PRODUCTION_DB'
      'from'
      '  DB_VALUES dbv'
      'where'
      '  (dbv.CODE = 1)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 240
    Top = 88
    object qryDBValuesIS_PRODUCTION_DB: TAbmesFloatField
      FieldName = 'IS_PRODUCTION_DB'
      Required = True
      FieldValueType = fvtBoolean
    end
  end
  object qryGetDbId: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  Cast(LoginContext.DbId as VarChar2(250)) as DB_ID'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 248
    object qryGetDbIdDB_ID: TAbmesWideStringField
      FieldName = 'DB_ID'
      Size = 250
    end
  end
  object qryUserAccessRules: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ar.IP_ADDRESS_PATTERN,'
      '  ar.ACCESS_TYPE_CODE'
      ''
      'from'
      '  OCCUPATION_EMPLOYEES oe,'
      '  OCCUPATION_WORK_DEPTS owd,'
      '  DEPT_RELATIONS dr,'
      '  ACCESS_RULES ar'
      ''
      'where'
      '  (oe.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      
        '  (Trunc(SysDate) between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGN' +
        'MENT_END_DATE) and'
      ''
      '  (oe.OCCUPATION_CODE = owd.OCCUPATION_CODE) and'
      ''
      '  (dr.DESCENDANT_DEPT_CODE = owd.DEPT_CODE) and'
      ''
      '  ( (ar.INCLUDE_DEPT_DESCENDANTS = 1) or'
      '    (dr.DESCENDANT_DEPT_CODE = dr.ANCESTOR_DEPT_CODE)'
      '  ) and'
      ''
      '  (ar.DEPT_CODE = dr.ANCESTOR_DEPT_CODE) and'
      ''
      '  (ar.IS_ACTIVE = 1)'
      ''
      ''
      'union'
      ''
      ''
      'select'
      '  ar.IP_ADDRESS_PATTERN,'
      '  ar.ACCESS_TYPE_CODE'
      ''
      'from'
      '  ACCESS_RULES ar'
      ''
      'where'
      '  (ar.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '  (ar.IS_ACTIVE = 1)'
      ''
      ''
      'union'
      ''
      ''
      'select'
      '  ar.IP_ADDRESS_PATTERN,'
      '  ar.ACCESS_TYPE_CODE'
      ''
      'from'
      '  ACCESS_RULES ar'
      ''
      'where'
      '  (ar.DEPT_CODE is null) and'
      '  (ar.EMPLOYEE_CODE is null) and'
      '  (ar.IS_ACTIVE = 1)'
      ''
      ''
      'order by'
      '  IP_ADDRESS_PATTERN,'
      '  ACCESS_TYPE_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 624
    Top = 216
    object qryUserAccessRulesIP_ADDRESS_PATTERN: TAbmesWideStringField
      FieldName = 'IP_ADDRESS_PATTERN'
      Size = 100
    end
    object qryUserAccessRulesACCESS_TYPE_CODE: TAbmesFloatField
      FieldName = 'ACCESS_TYPE_CODE'
    end
  end
  object qryAccessRuleCount: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  Count(*) as COUNT'
      ''
      'from'
      '  ACCESS_RULES ar')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 624
    Top = 168
    object qryAccessRuleCountCOUNT: TAbmesFloatField
      FieldName = 'COUNT'
    end
  end
  object prvAccessRules: TDataSetProvider
    DataSet = qryAccessRules
    UpdateMode = upWhereKeyOnly
    Left = 624
    Top = 8
  end
  object qryAccessRules: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  ar.ACCESS_RULE_CODE, '
      '  ar.ACCESS_RULE_NAME,'
      ''
      '  ( select'
      '      at.ACCESS_TYPE_NAME'
      '    from'
      '      ACCESS_TYPES at'
      '    where'
      '      (at.ACCESS_TYPE_CODE = ar.ACCESS_TYPE_CODE)'
      '  ) as ACCESS_TYPE_NAME,'
      ''
      '  ar.IS_ACTIVE'
      '  '
      'from'
      '  ACCESS_RULES ar'
      '  '
      'order by'
      '  ar.ACCESS_RULE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'ACCESS_RULES'
    Left = 624
    Top = 56
    object qryAccessRulesACCESS_RULE_CODE: TAbmesFloatField
      FieldName = 'ACCESS_RULE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryAccessRulesACCESS_RULE_NAME: TAbmesWideStringField
      FieldName = 'ACCESS_RULE_NAME'
      Required = True
      Size = 100
    end
    object qryAccessRulesACCESS_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ACCESS_TYPE_NAME'
      Size = 100
    end
    object qryAccessRulesIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
      Required = True
    end
  end
  object qryNewAccessRuleCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(ar.ACCESS_RULE_CODE), 0) + 1) as NEW_ACCESS_RULE' +
        '_CODE'
      ''
      'from'
      '  ACCESS_RULES ar')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 736
    Top = 104
    object qryNewAccessRuleCodeNEW_ACCESS_RULE_CODE: TAbmesFloatField
      FieldName = 'NEW_ACCESS_RULE_CODE'
    end
  end
  object prvAccessRule: TDataSetProvider
    DataSet = qryAccessRule
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvAccessRuleBeforeUpdateRecord
    Left = 736
    Top = 8
  end
  object qryAccessRule: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ACCESS_RULE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ar.ACCESS_RULE_CODE, '
      '  ar.ACCESS_RULE_NAME, '
      '  ar.EMPLOYEE_CODE, '
      '  ar.DEPT_CODE, '
      '  ar.INCLUDE_DEPT_DESCENDANTS, '
      '  ar.IP_ADDRESS_PATTERN, '
      '  ar.ACCESS_TYPE_CODE, '
      '  ar.IS_ACTIVE'
      '  '
      'from'
      '  ACCESS_RULES ar'
      '  '
      'where'
      '  (ar.ACCESS_RULE_CODE = :ACCESS_RULE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'ACCESS_RULES'
    Left = 736
    Top = 56
    object qryAccessRuleACCESS_RULE_CODE: TAbmesFloatField
      FieldName = 'ACCESS_RULE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryAccessRuleACCESS_RULE_NAME: TAbmesWideStringField
      FieldName = 'ACCESS_RULE_NAME'
      Required = True
      Size = 100
    end
    object qryAccessRuleEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryAccessRuleDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryAccessRuleINCLUDE_DEPT_DESCENDANTS: TAbmesFloatField
      FieldName = 'INCLUDE_DEPT_DESCENDANTS'
      Required = True
    end
    object qryAccessRuleIP_ADDRESS_PATTERN: TAbmesWideStringField
      FieldName = 'IP_ADDRESS_PATTERN'
      Size = 100
    end
    object qryAccessRuleACCESS_TYPE_CODE: TAbmesFloatField
      FieldName = 'ACCESS_TYPE_CODE'
      Required = True
    end
    object qryAccessRuleIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
      Required = True
    end
  end
  object prvAccessTypes: TDataSetProvider
    DataSet = qryAccessTypes
    Options = [poReadOnly, poUseQuoteChar]
    Left = 736
    Top = 168
  end
  object qryAccessTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  at.ACCESS_TYPE_CODE,'
      '  at.ACCESS_TYPE_NAME'
      ''
      'from'
      '  ACCESS_TYPES at'
      ''
      'order by'
      '  at.ACCESS_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 736
    Top = 216
    object qryAccessTypesACCESS_TYPE_CODE: TAbmesFloatField
      FieldName = 'ACCESS_TYPE_CODE'
      Required = True
    end
    object qryAccessTypesACCESS_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ACCESS_TYPE_NAME'
      Required = True
      Size = 100
    end
  end
  object qryUserLastLoginInfo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  (u.LAST_LOGIN_DATE + (u.LAST_LOGIN_TIME - Trunc(u.LAST_LOGIN_T' +
        'IME))) as LAST_LOGIN_DATE_TIME,'
      '  u.LAST_LOGIN_COMPUTER_NAME,'
      '  u.LAST_LOGIN_WINDOWS_SESSION_ID'
      'from'
      '  USERS u'
      'where'
      '  (u.EMPLOYEE_CODE = :USER_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 112
    Top = 128
    object qryUserLastLoginInfoLAST_LOGIN_DATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'LAST_LOGIN_DATE_TIME'
    end
    object qryUserLastLoginInfoLAST_LOGIN_COMPUTER_NAME: TAbmesWideStringField
      FieldName = 'LAST_LOGIN_COMPUTER_NAME'
      Size = 100
    end
    object qryUserLastLoginInfoLAST_LOGIN_WINDOWS_SESSION_ID: TAbmesFloatField
      FieldName = 'LAST_LOGIN_WINDOWS_SESSION_ID'
    end
  end
  object qryGetUserCodeByExternalIdentifier: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'EXTERNAL_IDENTIFIER'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  u.EMPLOYEE_CODE as USER_CODE'
      'from'
      '  USERS u'
      'where'
      '  (u.EXTERNAL_IDENTIFIER = :EXTERNAL_IDENTIFIER) and'
      '  (u.IS_DISABLED = 0)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 400
    Top = 296
    object qryGetUserCodeByExternalIdentifierUSER_CODE: TAbmesFloatField
      FieldName = 'USER_CODE'
      Required = True
    end
  end
  object qryGetUserCodeByUserCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  u.EMPLOYEE_CODE as USER_CODE'
      'from'
      '  USERS u'
      'where'
      '  (u.EMPLOYEE_CODE = :USER_CODE) and'
      '  (u.IS_DISABLED = 0)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 568
    Top = 296
    object qryGetUserCodeByUserCodeUSER_CODE: TAbmesFloatField
      FieldName = 'USER_CODE'
      Required = True
    end
  end
end
