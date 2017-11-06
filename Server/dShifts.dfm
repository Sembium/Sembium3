inherited dmShifts: TdmShifts
  Height = 439
  Width = 717
  object prvShiftRegimes: TDataSetProvider
    DataSet = qryShiftRegimes
    Options = [poCascadeDeletes, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 8
  end
  object qryShiftRegimes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
        Name = 'BEGIN_DATE'
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
      '  sr.SHIFT_REGIME_CODE,'
      '  sr.SHIFT_REGIME_NO,'
      '  sr.SHIFT_REGIME_NAME,'
      ''
      
        '  Cast(ShiftUtils.RegimeShifts(sr.SHIFT_REGIME_CODE) as Varchar2' +
        '(250 char)) as REGIME_SHIFTS,'
      ''
      '  ( select'
      '      Max(str.END_DATE) - ContextDate'
      '    from'
      '      SHIFT_TIMED_REGIMES str'
      '    where'
      '      (str.SHIFT_REGIME_CODE = sr.SHIFT_REGIME_CODE)'
      '  ) as RESERVE_DAYS'
      ''
      'from'
      '  SHIFT_REGIMES sr'
      ''
      'where'
      '  ( ( (:BEGIN_DATE is null) and'
      '      (:END_DATE is null)'
      '    ) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          SHIFT_TIMED_REGIMES str'
      '        where'
      '          (str.SHIFT_REGIME_CODE = sr.SHIFT_REGIME_CODE) and'
      '          ( (:BEGIN_DATE is null) or'
      '            (:BEGIN_DATE <= str.END_DATE)'
      '          ) and'
      '          ( (:END_DATE is null) or'
      '            (str.BEGIN_DATE <= :END_DATE)'
      '          )'
      '      )'
      '    )'
      '  )'
      ''
      'order by'
      '  sr.SHIFT_REGIME_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SHIFT_REGIMES'
    Left = 48
    Top = 56
    object qryShiftRegimesSHIFT_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_REGIME_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryShiftRegimesSHIFT_REGIME_NO: TAbmesFloatField
      FieldName = 'SHIFT_REGIME_NO'
    end
    object qryShiftRegimesSHIFT_REGIME_NAME: TAbmesWideStringField
      FieldName = 'SHIFT_REGIME_NAME'
      Size = 50
    end
    object qryShiftRegimesREGIME_SHIFTS: TAbmesWideStringField
      FieldName = 'REGIME_SHIFTS'
      ProviderFlags = []
      Size = 250
    end
    object qryShiftRegimesRESERVE_DAYS: TAbmesFloatField
      FieldName = 'RESERVE_DAYS'
      ProviderFlags = []
    end
  end
  object qryShiftTimedRegimes: TAbmesSQLQuery
    DataSource = dsShiftRegimes
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIFT_REGIME_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  str.SHIFT_TIMED_REGIME_CODE,'
      '  str.SHIFT_REGIME_CODE,'
      '  str.BEGIN_DATE,'
      '  str.END_DATE,'
      '  str.FOLLOWS_CALENDAR_OFFDAYS,'
      '  str.IS_OVERTIME,'
      '  str.CYCLE_DURATION_DAYS,'
      '  (str.END_DATE - str.BEGIN_DATE + 1) as CALENDAR_DAYS,'
      '  %COUNT_WORKDAYS[str.BEGIN_DATE~str.END_DATE] as WORK_DAYS,'
      
        '  Cast(ShiftUtils.TimedRegimeShifts(str.SHIFT_TIMED_REGIME_CODE)' +
        ' as Varchar2(250 char)) as TIMED_REGIME_SHIFTS,'
      '  str.IS_CYCLE_ON_WORKDAYS_ONLY'
      ''
      'from'
      '  SHIFT_TIMED_REGIMES str'
      ''
      'where'
      '  (str.SHIFT_REGIME_CODE = :SHIFT_REGIME_CODE)'
      ''
      'order by'
      '  str.BEGIN_DATE'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[str.BEGIN_DATE~str.END_DATE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SHIFT_TIMED_REGIMES_FOR_EDIT'
    Left = 48
    Top = 152
    object qryShiftTimedRegimesSHIFT_TIMED_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_TIMED_REGIME_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryShiftTimedRegimesSHIFT_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_REGIME_CODE'
    end
    object qryShiftTimedRegimesBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryShiftTimedRegimesEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryShiftTimedRegimesFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField
      FieldName = 'FOLLOWS_CALENDAR_OFFDAYS'
    end
    object qryShiftTimedRegimesIS_OVERTIME: TAbmesFloatField
      FieldName = 'IS_OVERTIME'
    end
    object qryShiftTimedRegimesCYCLE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'CYCLE_DURATION_DAYS'
    end
    object qryShiftTimedRegimesCALENDAR_DAYS: TAbmesFloatField
      FieldName = 'CALENDAR_DAYS'
      ProviderFlags = []
    end
    object qryShiftTimedRegimesWORK_DAYS: TAbmesFloatField
      FieldName = 'WORK_DAYS'
      ProviderFlags = []
    end
    object qryShiftTimedRegimesTIMED_REGIME_SHIFTS: TAbmesWideStringField
      FieldName = 'TIMED_REGIME_SHIFTS'
      ProviderFlags = []
      Size = 250
    end
    object qryShiftTimedRegimesIS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField
      FieldName = 'IS_CYCLE_ON_WORKDAYS_ONLY'
      Required = True
    end
  end
  object dsShiftRegimes: TDataSource
    DataSet = qryShiftRegimes
    Left = 48
    Top = 104
  end
  object qryGetNewShiftRegimeCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_SHIFT_REGIMES.NextVal as NEW_SHIFT_REGIME_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 304
    Top = 8
    object qryGetNewShiftRegimeCodeNEW_SHIFT_REGIME_CODE: TAbmesFloatField
      FieldName = 'NEW_SHIFT_REGIME_CODE'
    end
  end
  object qryGetNewShiftTimedRegime: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_SHIFT_TIMED_REGIMES.NextVal as NEW_SHIFT_TIMED_REGIME_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 304
    Top = 64
    object qryGetNewShiftTimedRegimeNEW_SHIFT_TIMED_REGIME_CODE: TAbmesFloatField
      FieldName = 'NEW_SHIFT_TIMED_REGIME_CODE'
    end
  end
  object prvShiftRegime: TDataSetProvider
    DataSet = qryShiftRegime
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvShiftRegimeBeforeUpdateRecord
    Left = 168
    Top = 8
  end
  object qryShiftRegime: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIFT_REGIME_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sr.SHIFT_REGIME_CODE,'
      '  sr.SHIFT_REGIME_NO,'
      '  sr.SHIFT_REGIME_NAME'
      ''
      'from'
      '  SHIFT_REGIMES sr'
      ''
      'where'
      '  (sr.SHIFT_REGIME_CODE = :SHIFT_REGIME_CODE)'
      ''
      'order by'
      '  sr.SHIFT_REGIME_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    BeforeProviderEndTransaction = qryShiftRegimeBeforeProviderEndTransaction
    Left = 168
    Top = 56
    object qryShiftRegimeSHIFT_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_REGIME_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryShiftRegimeSHIFT_REGIME_NO: TAbmesFloatField
      FieldName = 'SHIFT_REGIME_NO'
    end
    object qryShiftRegimeSHIFT_REGIME_NAME: TAbmesWideStringField
      FieldName = 'SHIFT_REGIME_NAME'
      Size = 50
    end
  end
  object dsShiftRegime: TDataSource
    DataSet = qryShiftRegime
    Left = 168
    Top = 104
  end
  object qryShiftTimedRegime: TAbmesSQLQuery
    DataSource = dsShiftRegime
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIFT_REGIME_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  str.SHIFT_TIMED_REGIME_CODE,'
      '  str.SHIFT_REGIME_CODE,'
      '  str.BEGIN_DATE,'
      '  str.END_DATE,'
      '  str.FOLLOWS_CALENDAR_OFFDAYS,'
      '  str.IS_OVERTIME,'
      '  str.CYCLE_DURATION_DAYS,'
      '  str.IS_CYCLE_ON_WORKDAYS_ONLY'
      'from'
      '  SHIFT_TIMED_REGIMES str'
      'where'
      '  (str.SHIFT_REGIME_CODE = :SHIFT_REGIME_CODE)'
      'order by'
      '  str.BEGIN_DATE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SHIFT_TIMED_REGIMES_FOR_EDIT'
    Left = 168
    Top = 152
    object qryShiftTimedRegimeSHIFT_TIMED_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_TIMED_REGIME_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryShiftTimedRegimeSHIFT_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_REGIME_CODE'
    end
    object qryShiftTimedRegimeBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryShiftTimedRegimeEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryShiftTimedRegimeFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField
      FieldName = 'FOLLOWS_CALENDAR_OFFDAYS'
    end
    object qryShiftTimedRegimeIS_OVERTIME: TAbmesFloatField
      FieldName = 'IS_OVERTIME'
    end
    object qryShiftTimedRegimeCYCLE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'CYCLE_DURATION_DAYS'
    end
    object qryShiftTimedRegimeIS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField
      FieldName = 'IS_CYCLE_ON_WORKDAYS_ONLY'
      Required = True
    end
  end
  object dsShiftTimedRegime: TDataSource
    DataSet = qryShiftTimedRegime
    Left = 168
    Top = 200
  end
  object qryShiftCycle: TAbmesSQLQuery
    DataSource = dsShiftTimedRegime
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIFT_TIMED_REGIME_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  sc.SHIFT_CYCLE_CODE,'
      '  sc.SHIFT_TIMED_REGIME_CODE,'
      '  sc.SHIFT_CYCLE_NO,'
      '  sc.SHIFT_CODE,'
      '  sc.IS_WORK_CYCLE,'
      '  sc.WORKDAY_BEGIN_TIME,'
      '  sc.WORKDAY_END_TIME,'
      '  sc.WORKDAY_DURATION_HOURS,'
      '  sc.WORKDAY_DENSITY_PERCENT,'
      ''
      '  ( select'
      '      Sum(scb.IS_WORKTIME * scb.BREAK_DURATION_HOURS)'
      '    from'
      '      SHIFT_CYCLE_BREAKS scb'
      '    where'
      '      (scb.SHIFT_CYCLE_CODE = sc.SHIFT_CYCLE_CODE)'
      '  ) as WORKTIME_BREAK_DURATION_HOURS'
      ''
      'from'
      '  SHIFT_CYCLES sc'
      ''
      'where'
      '  (sc.SHIFT_TIMED_REGIME_CODE = :SHIFT_TIMED_REGIME_CODE)'
      ''
      'order by'
      '  sc.SHIFT_CYCLE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SHIFT_CYCLES_FOR_EDIT'
    Left = 168
    Top = 248
    object qryShiftCycleSHIFT_CYCLE_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CYCLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryShiftCycleSHIFT_TIMED_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_TIMED_REGIME_CODE'
    end
    object qryShiftCycleSHIFT_CYCLE_NO: TAbmesFloatField
      FieldName = 'SHIFT_CYCLE_NO'
    end
    object qryShiftCycleSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
    end
    object qryShiftCycleIS_WORK_CYCLE: TAbmesFloatField
      FieldName = 'IS_WORK_CYCLE'
    end
    object qryShiftCycleWORKDAY_BEGIN_TIME: TAbmesSQLTimeStampField
      FieldName = 'WORKDAY_BEGIN_TIME'
    end
    object qryShiftCycleWORKDAY_END_TIME: TAbmesSQLTimeStampField
      FieldName = 'WORKDAY_END_TIME'
    end
    object qryShiftCycleWORKDAY_DURATION_HOURS: TAbmesFloatField
      FieldName = 'WORKDAY_DURATION_HOURS'
    end
    object qryShiftCycleWORKDAY_DENSITY_PERCENT: TAbmesFloatField
      FieldName = 'WORKDAY_DENSITY_PERCENT'
    end
    object qryShiftCycleWORKTIME_BREAK_DURATION_HOURS: TAbmesFloatField
      FieldName = 'WORKTIME_BREAK_DURATION_HOURS'
      ProviderFlags = []
    end
  end
  object prvShifts: TDataSetProvider
    DataSet = qryShifts
    Options = [poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvShiftsBeforeUpdateRecord
    Left = 440
    Top = 136
  end
  object qryShifts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  s.SHIFT_CODE,'
      '  s.SHIFT_NAME,'
      '  s.SHIFT_ABBREV,'
      '  s.SHIFT_ABBREV as SHIFT_IDENTIFIER'
      'from'
      '  SHIFTS s'
      'order by'
      '  s.SHIFT_ABBREV')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 440
    Top = 184
    object qryShiftsSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryShiftsSHIFT_NAME: TAbmesWideStringField
      FieldName = 'SHIFT_NAME'
      Size = 50
    end
    object qryShiftsSHIFT_ABBREV: TAbmesWideStringField
      FieldName = 'SHIFT_ABBREV'
      Size = 5
    end
    object qryShiftsSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      ProviderFlags = []
      Size = 5
    end
  end
  object qryGetNewShiftCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_SHIFTS.NextVal as NEW_SHIFT_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 440
    Top = 240
    object qryGetNewShiftCodeNEW_SHIFT_CODE: TAbmesFloatField
      FieldName = 'NEW_SHIFT_CODE'
    end
  end
  object qryGetNewShiftCycleCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_SHIFT_CYCLES.NextVal as NEW_SHIFT_CYCLE_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 304
    Top = 128
    object qryGetNewShiftCycleCodeNEW_SHIFT_CYCLE_CODE: TAbmesFloatField
      FieldName = 'NEW_SHIFT_CYCLE_CODE'
    end
  end
  object qryUpdNegativeShiftCycleNos: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'update'
      '  SHIFT_CYCLES_FOR_EDIT sc'
      'set'
      '  sc.SHIFT_CYCLE_NO = -sc.SHIFT_CYCLE_NO'
      'where'
      '  (sc.SHIFT_CYCLE_NO < 0)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 304
    Top = 256
  end
  object qryUpdBigShiftTimedRegimeDates: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'update'
      '  SHIFT_TIMED_REGIMES_FOR_EDIT str'
      'set'
      '  str.BEGIN_DATE = str.BEGIN_DATE - 2000*365,'
      '  str.END_DATE = str.END_DATE - 2000*365'
      'where'
      '  (str.END_DATE > %MAX_DATE)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'MAX_DATE'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 304
    Top = 200
  end
  object dsShiftCycle: TDataSource
    DataSet = qryShiftCycle
    Left = 168
    Top = 296
  end
  object qryShiftCycleBreak: TAbmesSQLQuery
    DataSource = dsShiftCycle
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIFT_CYCLE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  scb.SHIFT_CYCLE_BREAK_CODE,'
      '  scb.SHIFT_CYCLE_CODE,'
      '  scb.BREAK_BEGIN_TIME,'
      '  scb.BREAK_END_TIME,'
      '  scb.BREAK_DURATION_HOURS,'
      '  scb.IS_WORKTIME'
      ''
      'from'
      '  SHIFT_CYCLE_BREAKS scb'
      ''
      'where'
      '  (scb.SHIFT_CYCLE_CODE = :SHIFT_CYCLE_CODE)'
      ''
      'order by'
      '  scb.BREAK_BEGIN_TIME,'
      '  scb.BREAK_END_TIME,'
      '  scb.SHIFT_CYCLE_BREAK_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SHIFT_CYCLE_BREAKS_FOR_EDIT'
    Left = 168
    Top = 344
    object qryShiftCycleBreakSHIFT_CYCLE_BREAK_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CYCLE_BREAK_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryShiftCycleBreakSHIFT_CYCLE_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CYCLE_CODE'
    end
    object qryShiftCycleBreakBREAK_BEGIN_TIME: TAbmesSQLTimeStampField
      FieldName = 'BREAK_BEGIN_TIME'
    end
    object qryShiftCycleBreakBREAK_END_TIME: TAbmesSQLTimeStampField
      FieldName = 'BREAK_END_TIME'
    end
    object qryShiftCycleBreakBREAK_DURATION_HOURS: TAbmesFloatField
      FieldName = 'BREAK_DURATION_HOURS'
    end
    object qryShiftCycleBreakIS_WORKTIME: TAbmesFloatField
      FieldName = 'IS_WORKTIME'
    end
  end
  object qryGetNewShiftCycleBreakCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_SHIFT_CYCLE_BREAKS.NextVal as NEW_SHIFT_CYCLE_BREAK_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 440
    Top = 288
    object qryGetNewShiftCycleBreakCodeNEW_SHIFT_CYCLE_BREAK_CODE: TAbmesFloatField
      FieldName = 'NEW_SHIFT_CYCLE_BREAK_CODE'
    end
  end
  object qryShiftRegimeCalendar: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'MONTH_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'MONTH_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_REGIME_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dt.THE_DATE,'
      '  Sign(dt.DAYS_OFF) as IS_DAY_OFF,'
      '  Sign(dt.OFFICIAL_DAYS_OFF) as IS_OFFICIAL_DAY_OFF,'
      '  sc.SHIFT_CYCLE_NO,'
      '  str.SHIFT_TIMED_REGIME_CODE,'
      '  str.FOLLOWS_CALENDAR_OFFDAYS,'
      '  str.CYCLE_DURATION_DAYS,'
      '  sc.IS_WORK_CYCLE,'
      '  sc.WORKDAY_BEGIN_TIME,'
      '  sc.WORKDAY_END_TIME,'
      '  sc.WORKDAY_DURATION_HOURS,'
      '  sc.WORKDAY_DENSITY_PERCENT,'
      '  ( select'
      '      s.SHIFT_ABBREV'
      '    from'
      '      DATE_SHIFT_CYCLES dsc,'
      '      SHIFTS s'
      '    where'
      '      (dsc.THE_DATE = dt.THE_DATE) and'
      '      (dsc.SHIFT_CYCLE_CODE = sc.SHIFT_CYCLE_CODE) and'
      '      (s.SHIFT_CODE = dsc.SHIFT_CODE)'
      '  ) as SHIFT_ABBREV,'
      '  str.IS_CYCLE_ON_WORKDAYS_ONLY'
      'from'
      '  THE_DATES dt,'
      '  SHIFT_TIMED_REGIMES str,'
      '  SHIFT_CYCLES sc'
      'where'
      '  (dt.THE_DATE between'
      '    ( select'
      '        dt.THE_WEEK_DATE'
      '      from'
      '        THE_DATES dt'
      '      where'
      '        (dt.THE_DATE = :MONTH_BEGIN_DATE)'
      '    ) and'
      '    ( select'
      '        dt.THE_WEEK_DATE + 41'
      '      from'
      '        THE_DATES dt'
      '      where'
      '        (dt.THE_DATE = :MONTH_BEGIN_DATE)'
      '    )'
      '  ) and'
      
        '  (dt.THE_DATE between str.BEGIN_DATE(+) and str.END_DATE(+)) an' +
        'd'
      '  (str.SHIFT_REGIME_CODE(+) = :SHIFT_REGIME_CODE) and'
      '  (str.SHIFT_TIMED_REGIME_CODE = sc.SHIFT_TIMED_REGIME_CODE(+))'
      'order by'
      '  THE_DATE,'
      '  SHIFT_CYCLE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 576
    Top = 72
    object qryShiftRegimeCalendarTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryShiftRegimeCalendarIS_DAY_OFF: TAbmesFloatField
      FieldName = 'IS_DAY_OFF'
      FieldValueType = fvtBoolean
    end
    object qryShiftRegimeCalendarFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField
      FieldName = 'FOLLOWS_CALENDAR_OFFDAYS'
      FieldValueType = fvtBoolean
    end
    object qryShiftRegimeCalendarSHIFT_CYCLE_NO: TAbmesFloatField
      FieldName = 'SHIFT_CYCLE_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryShiftRegimeCalendarSHIFT_TIMED_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_TIMED_REGIME_CODE'
    end
    object qryShiftRegimeCalendarCYCLE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'CYCLE_DURATION_DAYS'
    end
    object qryShiftRegimeCalendarIS_WORK_CYCLE: TAbmesFloatField
      FieldName = 'IS_WORK_CYCLE'
      FieldValueType = fvtBoolean
    end
    object qryShiftRegimeCalendarWORKDAY_BEGIN_TIME: TAbmesSQLTimeStampField
      FieldName = 'WORKDAY_BEGIN_TIME'
    end
    object qryShiftRegimeCalendarWORKDAY_END_TIME: TAbmesSQLTimeStampField
      FieldName = 'WORKDAY_END_TIME'
    end
    object qryShiftRegimeCalendarWORKDAY_DURATION_HOURS: TAbmesFloatField
      FieldName = 'WORKDAY_DURATION_HOURS'
    end
    object qryShiftRegimeCalendarWORKDAY_DENSITY_PERCENT: TAbmesFloatField
      FieldName = 'WORKDAY_DENSITY_PERCENT'
    end
    object qryShiftRegimeCalendarSHIFT_ABBREV: TAbmesWideStringField
      FieldName = 'SHIFT_ABBREV'
      Size = 5
    end
    object qryShiftRegimeCalendarIS_OFFICIAL_DAY_OFF: TAbmesFloatField
      FieldName = 'IS_OFFICIAL_DAY_OFF'
      FieldValueType = fvtBoolean
    end
    object qryShiftRegimeCalendarIS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField
      FieldName = 'IS_CYCLE_ON_WORKDAYS_ONLY'
    end
  end
  object qryMonthShiftTimedRegimes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIFT_REGIME_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'MONTH_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'MONTH_BEGIN_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  str.SHIFT_TIMED_REGIME_CODE,'
      '  str.BEGIN_DATE,'
      '  str.END_DATE,'
      '  (str.END_DATE - str.BEGIN_DATE + 1) as CALENDAR_DAYS,'
      '  %COUNT_WORKDAYS[str.BEGIN_DATE~str.END_DATE] as WORKDAYS,'
      '  str.CYCLE_DURATION_DAYS,'
      '  str.FOLLOWS_CALENDAR_OFFDAYS,'
      '  str.IS_OVERTIME,'
      '  str.IS_CYCLE_ON_WORKDAYS_ONLY'
      ''
      'from'
      '  SHIFT_TIMED_REGIMES str'
      ''
      'where'
      '  (str.SHIFT_REGIME_CODE = :SHIFT_REGIME_CODE) and'
      '  '
      '  (str.BEGIN_DATE <='
      '    ( select'
      '        td.THE_WEEK_DATE + 41'
      '      from'
      '        THE_DATES td'
      '      where'
      '        (td.THE_DATE = :MONTH_BEGIN_DATE)'
      '    )'
      '  ) and'
      '  (str.END_DATE >='
      '    ( select'
      '        td.THE_WEEK_DATE'
      '      from'
      '        THE_DATES td'
      '      where'
      '        (td.THE_DATE = :MONTH_BEGIN_DATE)'
      '    )'
      '  )')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[str.BEGIN_DATE~str.END_DATE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 576
    Top = 168
    object qryMonthShiftTimedRegimesSHIFT_TIMED_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_TIMED_REGIME_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMonthShiftTimedRegimesBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryMonthShiftTimedRegimesEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryMonthShiftTimedRegimesCALENDAR_DAYS: TAbmesFloatField
      FieldName = 'CALENDAR_DAYS'
    end
    object qryMonthShiftTimedRegimesWORKDAYS: TAbmesFloatField
      FieldName = 'WORKDAYS'
    end
    object qryMonthShiftTimedRegimesCYCLE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'CYCLE_DURATION_DAYS'
    end
    object qryMonthShiftTimedRegimesFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField
      FieldName = 'FOLLOWS_CALENDAR_OFFDAYS'
    end
    object qryMonthShiftTimedRegimesIS_OVERTIME: TAbmesFloatField
      FieldName = 'IS_OVERTIME'
    end
    object qryMonthShiftTimedRegimesIS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField
      FieldName = 'IS_CYCLE_ON_WORKDAYS_ONLY'
      Required = True
    end
  end
  object prvShiftRegimeCalendar: TDataSetProvider
    DataSet = qryShiftRegimeCalendar
    UpdateMode = upWhereKeyOnly
    Left = 576
    Top = 24
  end
  object prvMonthShiftTimedRegimes: TDataSetProvider
    DataSet = qryMonthShiftTimedRegimes
    UpdateMode = upWhereKeyOnly
    Left = 576
    Top = 120
  end
end
