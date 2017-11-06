inherited dmCapacity: TdmCapacity
  Width = 432
  object qryCapacityGraph: TAbmesSQLQuery
    BeforeOpen = qryCapacityGraphBeforeOpen
    AfterClose = qryCapacityGraphAfterClose
    OnCalcFields = qryCapacityGraphCalcFields
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CAPACITY_LIMIT_LEVEL'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'CALC_ALL_LIMIT_LEVELS'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '4'
      end
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
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_COUNT'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  t.THE_X_DATE as THE_DATE,'
      '  t.WORKDAYS,'
      ''
      '  case'
      '    when (MiscUtils.LargeZero(Min(t.LIMIT_HOURS)) > 0)'
      '    then Min(t.LIMIT_HOURS)'
      '  end as LIMIT_HOURS,'
      ''
      '  case'
      '    when (MiscUtils.LargeZero(Min(t.REAL_LOGISTICS_HOURS)) > 0)'
      '    then Min(t.REAL_LOGISTICS_HOURS)'
      '  end as REAL_LOGISTICS_HOURS,'
      ''
      '  case'
      
        '    when (MiscUtils.LargeZero(Min(t.REAL_EXPLOITATION_HOURS)) > ' +
        '0)'
      '    then Min(t.REAL_EXPLOITATION_HOURS)'
      '  end as REAL_EXPLOITATION_HOURS,'
      ''
      '  case'
      '    when (MiscUtils.LargeZero(Min(t.REAL_FREE_HOURS)) > 0)'
      '    then Min(t.REAL_FREE_HOURS)'
      '  end as REAL_FREE_HOURS,'
      ''
      '  case'
      '    when (MiscUtils.LargeZero(Min(t.REAL_EXCESS_HOURS)) > 0)'
      '    then Min(t.REAL_EXCESS_HOURS)'
      '  end as REAL_EXCESS_HOURS,'
      ''
      '  case'
      '    when (MiscUtils.LargeZero(Min(t.PLAN_LOGISTICS_HOURS)) > 0)'
      '    then Min(t.PLAN_LOGISTICS_HOURS)'
      '  end as PLAN_LOGISTICS_HOURS,'
      ''
      '  case'
      
        '    when (MiscUtils.LargeZero(Min(t.PLAN_EXPLOITATION_HOURS)) > ' +
        '0)'
      '    then Min(t.PLAN_EXPLOITATION_HOURS)'
      '  end as PLAN_EXPLOITATION_HOURS,'
      ''
      '  case'
      '    when (MiscUtils.LargeZero(Min(t.PLAN_FREE_HOURS)) > 0)'
      '    then Min(t.PLAN_FREE_HOURS)'
      '  end as PLAN_FREE_HOURS,'
      ''
      '  case'
      '    when (MiscUtils.LargeZero(Min(t.PLAN_EXCESS_HOURS)) > 0)'
      '    then Min(t.PLAN_EXCESS_HOURS)'
      '  end as PLAN_EXCESS_HOURS,'
      ''
      '  case'
      '    when'
      '      (MiscUtils.LargeZero(Min(t.DEPT_LVL_LIMIT_HOURS)) > 0) and'
      '      ( ( (To_number(:ASPECT_TYPE) = 1) and'
      
        '          (t.THE_X_DATE >= DateTimeUtils.IncDateByTimeUnits(Cont' +
        'extDate, :TIME_UNIT_CODE, -1)) ) or'
      '        (To_number(:ASPECT_TYPE) = 2)'
      '      )'
      '    then Min(t.DEPT_LVL_LIMIT_HOURS)'
      '  end as DEPT_LVL_LIMIT_HOURS,'
      ''
      '  case'
      
        '    when (MiscUtils.LargeZero(Min(Abs(t.OCC_LVL_LIMIT_HOURS_DIFF' +
        '))) > 0) and'
      '      ( ( (To_number(:ASPECT_TYPE) = 1) and'
      
        '          (t.THE_X_DATE >= DateTimeUtils.IncDateByTimeUnits(Cont' +
        'extDate, :TIME_UNIT_CODE, -1)) ) or'
      '        (To_number(:ASPECT_TYPE) = 2)'
      '      )'
      '    then Min(t.OCC_LVL_LIMIT_HOURS_DIFF)'
      '  end as OCC_LVL_LIMIT_HOURS_DIFF,'
      ''
      '  case'
      
        '    when (MiscUtils.LargeZero(Min(t.OCC_LVL_LIMIT_HOURS)) > 0) a' +
        'nd'
      '      ( ( (To_number(:ASPECT_TYPE) = 1) and'
      
        '          (t.THE_X_DATE >= DateTimeUtils.IncDateByTimeUnits(Cont' +
        'extDate, :TIME_UNIT_CODE, -1)) ) or'
      '        (To_number(:ASPECT_TYPE) = 2)'
      '      )'
      '    then Min(t.OCC_LVL_LIMIT_HOURS)'
      '  end as OCC_LVL_LIMIT_HOURS,'
      ''
      '  case'
      
        '    when (MiscUtils.LargeZero(Min(Abs(t.OCC_ASS_LVL_LIMIT_HOURS_' +
        'DIFF))) > 0) and'
      '      ( ( (To_number(:ASPECT_TYPE) = 1) and'
      
        '          (t.THE_X_DATE >= DateTimeUtils.IncDateByTimeUnits(Cont' +
        'extDate, :TIME_UNIT_CODE, -1)) ) or'
      '        (To_number(:ASPECT_TYPE) = 2)'
      '      )'
      '    then Min(t.OCC_ASS_LVL_LIMIT_HOURS_DIFF)'
      '  end as OCC_ASS_LVL_LIMIT_HOURS_DIFF,'
      ''
      '  case'
      
        '    when (MiscUtils.LargeZero(Min(t.OCC_ASS_LVL_LIMIT_HOURS)) > ' +
        '0) and'
      '      ( ( (To_number(:ASPECT_TYPE) = 1) and'
      
        '          (t.THE_X_DATE >= DateTimeUtils.IncDateByTimeUnits(Cont' +
        'extDate, :TIME_UNIT_CODE, -1)) ) or'
      '        (To_number(:ASPECT_TYPE) = 2)'
      '      )'
      '    then Min(t.OCC_ASS_LVL_LIMIT_HOURS)'
      '  end as OCC_ASS_LVL_LIMIT_HOURS,'
      ''
      '  case'
      
        '    when (MiscUtils.LargeZero(Min(Abs(t.EMP_AVAIL_LVL_LIMIT_HOUR' +
        'S_DIFF))) > 0) and'
      '      ( ( (To_number(:ASPECT_TYPE) = 1) and'
      
        '          (t.THE_X_DATE >= DateTimeUtils.IncDateByTimeUnits(Cont' +
        'extDate, :TIME_UNIT_CODE, -1)) ) or'
      '        (To_number(:ASPECT_TYPE) = 2)'
      '      )'
      '    then Min(t.EMP_AVAIL_LVL_LIMIT_HOURS_DIFF)'
      '  end as EMP_AVAIL_LVL_LIMIT_HOURS_DIFF,'
      ''
      '  case'
      
        '    when (MiscUtils.LargeZero(Min(t.EMP_AVAIL_LVL_LIMIT_HOURS)) ' +
        '> 0) and'
      '      ( ( (To_number(:ASPECT_TYPE) = 1) and'
      
        '          (t.THE_X_DATE >= DateTimeUtils.IncDateByTimeUnits(Cont' +
        'extDate, :TIME_UNIT_CODE, -1)) ) or'
      '        (To_number(:ASPECT_TYPE) = 2)'
      '      )'
      '    then Min(t.EMP_AVAIL_LVL_LIMIT_HOURS)'
      '  end as EMP_AVAIL_LVL_LIMIT_HOURS'
      ''
      'from'
      '  ( select'
      '      t.WORKDAYS,'
      
        '      NumberToDate(MiscUtils.GetNamedValue(t.X, '#39'THE_X_DATE'#39')) a' +
        's THE_X_DATE,'
      '      MiscUtils.GetNamedValue(t.X, '#39'DEPT_CODE'#39') as DEPT_CODE,'
      
        '      MiscUtils.GetNamedValue(t.X, '#39'DEPT_LVL_LIMIT_HOURS'#39') as DE' +
        'PT_LVL_LIMIT_HOURS,'
      
        '      MiscUtils.GetNamedValue(t.X, '#39'OCC_LVL_LIMIT_HOURS_DIFF'#39') a' +
        's OCC_LVL_LIMIT_HOURS_DIFF,'
      
        '      MiscUtils.GetNamedValue(t.X, '#39'OCC_LVL_LIMIT_HOURS'#39') as OCC' +
        '_LVL_LIMIT_HOURS,'
      
        '      MiscUtils.GetNamedValue(t.X, '#39'OCC_ASS_LVL_LIMIT_HOURS_DIFF' +
        #39') as OCC_ASS_LVL_LIMIT_HOURS_DIFF,'
      
        '      MiscUtils.GetNamedValue(t.X, '#39'OCC_ASS_LVL_LIMIT_HOURS'#39') as' +
        ' OCC_ASS_LVL_LIMIT_HOURS,'
      
        '      MiscUtils.GetNamedValue(t.X, '#39'EMP_AVAIL_LVL_LIMIT_HOURS_DI' +
        'FF'#39') as EMP_AVAIL_LVL_LIMIT_HOURS_DIFF,'
      
        '      MiscUtils.GetNamedValue(t.X, '#39'EMP_AVAIL_LVL_LIMIT_HOURS'#39') ' +
        'as EMP_AVAIL_LVL_LIMIT_HOURS,'
      
        '      MiscUtils.GetNamedValue(t.X, '#39'LIMIT_HOURS'#39') as LIMIT_HOURS' +
        ','
      
        '      MiscUtils.GetNamedValue(t.X, '#39'REAL_LOGISTICS_HOURS'#39') as RE' +
        'AL_LOGISTICS_HOURS,'
      
        '      MiscUtils.GetNamedValue(t.X, '#39'REAL_EXPLOITATION_HOURS'#39') as' +
        ' REAL_EXPLOITATION_HOURS,'
      
        '      MiscUtils.GetNamedValue(t.X, '#39'REAL_FREE_HOURS'#39') as REAL_FR' +
        'EE_HOURS,'
      
        '      MiscUtils.GetNamedValue(t.X, '#39'REAL_EXCESS_HOURS'#39') as REAL_' +
        'EXCESS_HOURS,'
      
        '      MiscUtils.GetNamedValue(t.X, '#39'PLAN_LOGISTICS_HOURS'#39') as PL' +
        'AN_LOGISTICS_HOURS,'
      
        '      MiscUtils.GetNamedValue(t.X, '#39'PLAN_EXPLOITATION_HOURS'#39') as' +
        ' PLAN_EXPLOITATION_HOURS,'
      
        '      MiscUtils.GetNamedValue(t.X, '#39'PLAN_FREE_HOURS'#39') as PLAN_FR' +
        'EE_HOURS,'
      
        '      MiscUtils.GetNamedValue(t.X, '#39'PLAN_EXCESS_HOURS'#39') as PLAN_' +
        'EXCESS_HOURS'
      '    from'
      '      ('
      '        select'
      '          td.WORKDAYS,'
      '          ( select'
      '              CapacityUtils.GetCapacityAccumulatedRow2('
      '                td.%THE_X_DATE,'
      '                :TIME_UNIT_CODE,'
      '                :CAPACITY_LIMIT_LEVEL,'
      '                :CALC_ALL_LIMIT_LEVELS,'
      '                :ASPECT_TYPE,'
      '                :PRODUCT_COMMON_LEVEL,'
      '                :PARTNER_COMMON_LEVEL,'
      '                :MIN_PRP_STATUS_CODE,'
      '                :MAX_PRP_STATUS_CODE'
      '              )'
      '            from'
      '              DUAL'
      '          ) as X'
      '        from'
      '          %THE_X_DATES td'
      '        where'
      '          (td.%THE_X_DATE between'
      '            :BEGIN_DATE and'
      
        '            DateTimeUtils.IncDateByTimeUnits(:BEGIN_DATE, :TIME_' +
        'UNIT_CODE, :TIME_UNIT_COUNT - 1)'
      '          )'
      '      ) t'
      '  ) t'
      ''
      'group by'
      '  t.THE_X_DATE,'
      '  WORKDAYS'
      ''
      'order by'
      '  THE_DATE'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'THE_X_DATE'
        ParamType = ptInput
        Value = 'THE_DATE'
      end
      item
        DataType = ftWideString
        Name = 'THE_X_DATES'
        ParamType = ptInput
        Value = 'THE_DATES'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPT_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 32
    Top = 56
    object qryCapacityGraphTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object qryCapacityGraphWORKDAYS: TAbmesFloatField
      FieldName = 'WORKDAYS'
    end
    object qryCapacityGraphLIMIT_HOURS: TAbmesFloatField
      FieldName = 'LIMIT_HOURS'
    end
    object qryCapacityGraphREAL_LOGISTICS_HOURS: TAbmesFloatField
      FieldName = 'REAL_LOGISTICS_HOURS'
    end
    object qryCapacityGraphREAL_EXPLOITATION_HOURS: TAbmesFloatField
      FieldName = 'REAL_EXPLOITATION_HOURS'
    end
    object qryCapacityGraphREAL_FREE_HOURS: TAbmesFloatField
      FieldName = 'REAL_FREE_HOURS'
    end
    object qryCapacityGraphREAL_EXCESS_HOURS: TAbmesFloatField
      FieldName = 'REAL_EXCESS_HOURS'
    end
    object qryCapacityGraphPLAN_LOGISTICS_HOURS: TAbmesFloatField
      FieldName = 'PLAN_LOGISTICS_HOURS'
    end
    object qryCapacityGraphPLAN_EXPLOITATION_HOURS: TAbmesFloatField
      FieldName = 'PLAN_EXPLOITATION_HOURS'
    end
    object qryCapacityGraphPLAN_FREE_HOURS: TAbmesFloatField
      FieldName = 'PLAN_FREE_HOURS'
    end
    object qryCapacityGraphPLAN_EXCESS_HOURS: TAbmesFloatField
      FieldName = 'PLAN_EXCESS_HOURS'
    end
    object qryCapacityGraph_PLAN_LIMIT_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PLAN_LIMIT_PERCENT'
      Calculated = True
    end
    object qryCapacityGraph_REAL_LIMIT_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_LIMIT_PERCENT'
      Calculated = True
    end
    object qryCapacityGraphOCC_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField
      FieldName = 'OCC_LVL_LIMIT_HOURS_DIFF'
    end
    object qryCapacityGraphOCC_ASS_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField
      FieldName = 'OCC_ASS_LVL_LIMIT_HOURS_DIFF'
    end
    object qryCapacityGraphEMP_AVAIL_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField
      FieldName = 'EMP_AVAIL_LVL_LIMIT_HOURS_DIFF'
    end
    object qryCapacityGraphDEPT_LVL_LIMIT_HOURS: TAbmesFloatField
      FieldName = 'DEPT_LVL_LIMIT_HOURS'
    end
    object qryCapacityGraphOCC_LVL_LIMIT_HOURS: TAbmesFloatField
      FieldName = 'OCC_LVL_LIMIT_HOURS'
    end
    object qryCapacityGraphOCC_ASS_LVL_LIMIT_HOURS: TAbmesFloatField
      FieldName = 'OCC_ASS_LVL_LIMIT_HOURS'
    end
    object qryCapacityGraphEMP_AVAIL_LVL_LIMIT_HOURS: TAbmesFloatField
      FieldName = 'EMP_AVAIL_LVL_LIMIT_HOURS'
    end
  end
  object prvCapacityGraph: TDataSetProvider
    DataSet = qryCapacityGraph
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 8
  end
  object qryCapacityTable: TAbmesSQLQuery
    BeforeOpen = qryCapacityTableBeforeOpen
    AfterOpen = qryCapacityTableAfterOpen
    AfterClose = qryCapacityTableAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
      end
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
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_COUNT'
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
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  d.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      '  ( ( select'
      '        dt.DEPT_TYPE_ABBREV'
      '      from'
      '        DEPT_TYPES dt'
      '      where'
      '        (dt.DEPT_TYPE_CODE = d.DEPT_TYPE_CODE)'
      '    )'
      '    ||'
      '    d.CUSTOM_CODE'
      '    ||'
      '    d.SUFFIX_LETTER'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  %CAPACITY_FIELDS_SQL'
      ''
      'from'
      '  DEPTS d,'
      '  ('
      '    select'
      
        '      (DateTimeUtils.TimeUnitsBetween(:BEGIN_DATE, c.THE_X_DATE,' +
        ' :TIME_UNIT_CODE) + 1) as DATE_NO,'
      ''
      '      Decode('
      '        :ASPECT_TYPE,'
      '        1,'
      '        0,'
      
        '        Sign(Sign(ContextDate - txd.THE_FIRST_DATE) + 1) -- (txd.T' +
        'HE_FIRST_DATE <= ContextDate)'
      '      ) as IS_R,'
      ''
      '      -- (txd.THE_LAST_DATE >= ContextDate)'
      '      Decode('
      '        :ASPECT_TYPE,'
      '        1,'
      '        1,'
      '        Sign(Sign(txd.THE_LAST_DATE - ContextDate) + 1)'
      '      ) as IS_P,'
      ''
      '      c.THE_X_DATE,'
      '      c.DEPT_CODE,'
      ''
      '      c.DEPT_LVL_LIMIT_HOURS as R_DEPT_LIMIT_HOURS,'
      '      c.OCC_LVL_LIMIT_HOURS_DIFF as R_OCC_LIMIT_HOURS_D,'
      '      c.OCC_LVL_LIMIT_HOURS as R_OCC_LIMIT_HOURS,'
      '      c.OCC_ASS_LVL_LIMIT_HOURS_DIFF as R_OCC_ASS_LIMIT_HOURS_D,'
      '      c.OCC_ASS_LVL_LIMIT_HOURS as R_OCC_ASS_LIMIT_HOURS,'
      
        '      c.EMP_AVAIL_LVL_LIMIT_HOURS_DIFF as R_EMP_AVAIL_LIMIT_HOUR' +
        'S_D,'
      '      c.EMP_AVAIL_LVL_LIMIT_HOURS as R_EMP_AVAIL_LIMIT_HOURS,'
      ''
      '      c.LIMIT_HOURS as R_LIMIT_HOURS,'
      '      c.REAL_EXPLOITATION_HOURS as R_EXPLOITATION_HOURS,'
      '      c.REAL_LOGISTICS_HOURS as R_LOGISTICS_HOURS,'
      '      c.REAL_FREE_HOURS as R_FREE_HOURS,'
      '      c.REAL_EXCESS_HOURS as R_EXCESS_HOURS,'
      ''
      '      c.DEPT_LVL_LIMIT_HOURS as P_DEPT_LIMIT_HOURS,'
      '      c.OCC_LVL_LIMIT_HOURS_DIFF as P_OCC_LIMIT_HOURS_D,'
      '      c.OCC_LVL_LIMIT_HOURS as P_OCC_LIMIT_HOURS,'
      '      c.OCC_ASS_LVL_LIMIT_HOURS_DIFF as P_OCC_ASS_LIMIT_HOURS_D,'
      '      c.OCC_ASS_LVL_LIMIT_HOURS as P_OCC_ASS_LIMIT_HOURS,'
      
        '      c.EMP_AVAIL_LVL_LIMIT_HOURS_DIFF as P_EMP_AVAIL_LIMIT_HOUR' +
        'S_D,'
      '      c.EMP_AVAIL_LVL_LIMIT_HOURS as P_EMP_AVAIL_LIMIT_HOURS,'
      ''
      '      c.LIMIT_HOURS as P_LIMIT_HOURS,'
      '      c.PLAN_EXPLOITATION_HOURS as P_EXPLOITATION_HOURS,'
      '      c.PLAN_LOGISTICS_HOURS as P_LOGISTICS_HOURS,'
      '      c.PLAN_FREE_HOURS as P_FREE_HOURS,'
      '      c.PLAN_EXCESS_HOURS as P_EXCESS_HOURS'
      ''
      '    from'
      '      %THE_X_DATES txd,'
      '      TEMP_CAPACITY c'
      ''
      '    where'
      '      (txd.%THE_X_DATE = c.THE_X_DATE) and'
      '      (txd.%THE_X_DATE between'
      '        :BEGIN_DATE and'
      
        '        DateTimeUtils.IncDateByTimeUnits(:BEGIN_DATE, :TIME_UNIT' +
        '_CODE, :TIME_UNIT_COUNT - 1)'
      '      )'
      '  ) t'
      ''
      'where'
      '  (d.DEPT_CODE = t.DEPT_CODE(+)) and'
      ''
      '  (d.IS_GROUP = 0) and'
      ''
      
        '  (Greatest(d.BEGIN_DATE, :BEGIN_DATE) <= Least(Coalesce(d.END_D' +
        'ATE, Cast(:END_DATE as Date)), :END_DATE)) and'
      ''
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        TEMP_FILTERED_DEPTS tfd'
      '      where'
      '        (tfd.DEPT_CODE = d.DEPT_CODE)'
      '    )'
      '  ) and'
      ''
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        TEMP_FILTERED_DEPTS_2 tfd'
      '      where'
      '        (tfd.DEPT_CODE = d.DEPT_CODE)'
      '    )'
      '  )'
      ''
      'group by'
      '  d.DEPT_CODE,'
      '  d.NAME,'
      '  d.DEPT_TYPE_CODE,'
      '  d.CUSTOM_CODE,'
      '  d.SUFFIX_LETTER'
      ''
      'order by'
      '  DEPT_IDENTIFIER')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'CAPACITY_FIELDS_SQL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'THE_X_DATES'
        ParamType = ptInput
        Value = 'THE_DATES'
      end
      item
        DataType = ftWideString
        Name = 'THE_X_DATE'
        ParamType = ptInput
        Value = 'THE_DATE'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPT_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftFloat
        Name = 'LOGISTICS_HOURS_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXPLOITATION_HOURS_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FREE_HOURS_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCESS_HOURS_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CAPACITY_LIMIT_LEVEL'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'CALC_ALL_LIMIT_LEVELS'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end>
    Left = 160
    Top = 56
  end
  object prvCapacityTable: TDataSetProvider
    DataSet = qryCapacityTable
    UpdateMode = upWhereKeyOnly
    OnGetData = prvCapacityTableGetData
    Left = 160
    Top = 8
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
      '  KEY_FIELD_NAME'
      'from'
      '  THE_DATE_UNITS'
      'where'
      '  THE_DATE_UNIT_CODE = :THE_DATE_UNIT_CODE'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 296
    Top = 8
    object qryGetPeriodFieldNamesTABLE_NAME: TAbmesWideStringField
      FieldName = 'TABLE_NAME'
      Size = 50
    end
    object qryGetPeriodFieldNamesKEY_FIELD_NAME: TAbmesWideStringField
      FieldName = 'KEY_FIELD_NAME'
      Size = 50
    end
  end
  object qryPrepareCapacityTable: TAbmesSQLQuery
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
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_COUNT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CAPACITY_LIMIT_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ALL_LIMIT_LEVELS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'declare'
      '  cursor crDates is'
      '     select'
      '       txd.%THE_X_DATE as THE_DATE'
      '     from'
      '       %THE_X_DATES txd'
      '     where'
      '       (txd.%THE_X_DATE between'
      '         :BEGIN_DATE and'
      
        '         DateTimeUtils.IncDateByTimeUnits(:BEGIN_DATE, :TIME_UNI' +
        'T_CODE, :TIME_UNIT_COUNT - 1)'
      '       )'
      '     order by'
      '       THE_DATE'
      '   ;'
      'begin'
      '  CapacityUtils.UnprepareCapacityTable;'
      ''
      '  for Date in crDates loop'
      '    CapacityUtils.PrepareCapacityTable('
      '      Date.THE_DATE,'
      '      :TIME_UNIT_CODE,'
      '      :CAPACITY_LIMIT_LEVEL,'
      '      :CALC_ALL_LIMIT_LEVELS,'
      '      :ASPECT_TYPE,'
      '      :PRODUCT_COMMON_LEVEL,'
      '      :PARTNER_COMMON_LEVEL,'
      '      :MIN_PRP_STATUS_CODE,'
      '      :MAX_PRP_STATUS_CODE'
      '    );'
      '  end loop;'
      'end;'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'THE_X_DATE'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'THE_X_DATES'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 288
    Top = 104
  end
  object qryUnprepareCapacityTable: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'begin'
      '  CapacityUtils.UnprepareCapacityTable;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 288
    Top = 160
  end
end
