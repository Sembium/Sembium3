create or replace package ShiftUtils is
  
  function DoShiftsIntersect(
    ShiftCode in Number,
    ShiftRegimeCode in Number,
    BeginDate in Date,
    EndDate in Date
  ) return Number;
  function DoShiftsIntersect(ShiftCode in Number, ShiftTimedRegimeCode in Number) return Number;
  
  function RegimeShifts(ShiftRegimeCode in Number) return VarChar2;
  function TimedRegimeShifts(ShiftTimedRegimeCode in Number) return VarChar2;
  
  function GetShiftCycle(ShiftCode in Number, ForDate in Date) return Number;

  procedure InsertDateShiftCyclesFor(ShiftTimedRegimeCode in Number);
  procedure DeleteDateShiftCyclesFor(ShiftTimedRegimeCode in Number);
  procedure UpdateDateShiftCyclesFor(ShiftTimedRegimeCode in Number);
  
  PRAGMA RESTRICT_REFERENCES (RegimeShifts, WNDS, WNPS);
  PRAGMA RESTRICT_REFERENCES (TimedRegimeShifts, WNDS, RNPS, WNPS);
  
  PRAGMA RESTRICT_REFERENCES (GetShiftCycle, WNDS, RNPS, WNPS);

  PRAGMA RESTRICT_REFERENCES (InsertDateShiftCyclesFor, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (DeleteDateShiftCyclesFor, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (UpdateDateShiftCyclesFor, RNPS, WNPS);
end;
/
create or replace package body ShiftUtils is
  
  function DoShiftsIntersect(
    ShiftCode in Number,
    ShiftRegimeCode in Number,
    BeginDate in Date,
    EndDate in Date
  ) return Number is
    Result Number;
  begin
    select
      Sign(Count(*))
    into
      Result
    from
      SHIFT_TIMED_REGIMES str,
      SHIFT_CYCLES sc
    where
      (str.SHIFT_REGIME_CODE <> ShiftRegimeCode) and
      (sc.SHIFT_CODE = ShiftCode) and
      
      (str.SHIFT_TIMED_REGIME_CODE = sc.SHIFT_TIMED_REGIME_CODE) and
      
      (DateTimeUtils.DatePeriodIntersectLength(BeginDate, EndDate, str.BEGIN_DATE, str.END_DATE) > 0);
    
    return Result;
  end;
  
  
  function DoShiftsIntersect(ShiftCode in Number, ShiftTimedRegimeCode in Number) return Number is
    ShiftRegimeCode Number;
    BeginDate Date;
    EndDate Date;
  begin
    select
      str.SHIFT_REGIME_CODE,
      str.BEGIN_DATE,
      str.END_DATE
    into
      ShiftRegimeCode,
      BeginDate,
      EndDate
    from
      SHIFT_TIMED_REGIMES str
    where
      (str.SHIFT_TIMED_REGIME_CODE = ShiftTimedRegimeCode);
    
    return DoShiftsIntersect(ShiftCode, ShiftRegimeCode, BeginDate, EndDate);
  end;
  
  
  function RegimeShifts(ShiftRegimeCode in Number) return VarChar2 is
    Strings MiscUtils.TStringArray;
  begin
    select
      s.SHIFT_ABBREV
    bulk collect into
      Strings
    from
      SHIFT_TIMED_REGIMES str,
      SHIFT_CYCLES sc,
      SHIFTS s
    where
      (str.SHIFT_REGIME_CODE = ShiftRegimeCode) and
      (ContextDate between str.BEGIN_DATE and str.END_DATE) and
      
      (str.SHIFT_TIMED_REGIME_CODE = sc.SHIFT_TIMED_REGIME_CODE) and
      (sc.SHIFT_CODE = s.SHIFT_CODE)
    order by
      s.SHIFT_ABBREV;

    return MiscUtils.ConcatStrings(Strings, ', ');
  end;
  
  
  function TimedRegimeShifts(ShiftTimedRegimeCode in Number) return VarChar2 is
    Strings MiscUtils.TStringArray;
  begin
    select
      s.SHIFT_ABBREV
    bulk collect into
      Strings
    from
      SHIFT_CYCLES sc,
      SHIFTS s
    where
      (sc.SHIFT_TIMED_REGIME_CODE = ShiftTimedRegimeCode) and
      (sc.SHIFT_CODE = s.SHIFT_CODE)
    order by
      s.SHIFT_ABBREV;

    return MiscUtils.ConcatStrings(Strings, ', ');
  end;
  
  
  function GetShiftCycle(ShiftCode in Number, ForDate in Date) return Number is

    BeginDate Date;
    ShiftTimedRegimeCode Number;
    FollowsCalendarOffdays Number;
    CycleDurationDays Number;
    CyclesCount Number;
    PreviousShiftsCount Number;
    DaysInCycle Number;
    CycleStartDate Number;
    IsWorkDay Number;
    ResultShiftCycleCode Number;
    ShiftCycleCodes MiscUtils.TNumberArray;
    IsCycleOnWorkdaysOnly Number;
    ForDateOffset Number;
    
  begin
    begin
      select
        str.BEGIN_DATE,
        str.SHIFT_TIMED_REGIME_CODE,
        str.FOLLOWS_CALENDAR_OFFDAYS,
        str.CYCLE_DURATION_DAYS,

        ( select
            Count(*)
          from
            SHIFT_CYCLES sc2            
          where
            (sc2.SHIFT_TIMED_REGIME_CODE = str.SHIFT_TIMED_REGIME_CODE)          
        ) as CYCLES_COUNT,

        str.IS_CYCLE_ON_WORKDAYS_ONLY
        
      into
        BeginDate,
        ShiftTimedRegimeCode,
        FollowsCalendarOffdays,
        CycleDurationDays,
        CyclesCount,
        IsCycleOnWorkdaysOnly
        
      from
        SHIFT_TIMED_REGIMES str,
        SHIFT_CYCLES sc
        
      where
        (Trunc(ForDate) between str.BEGIN_DATE and str.END_DATE) and
        (str.SHIFT_TIMED_REGIME_CODE = sc.SHIFT_TIMED_REGIME_CODE) and
        (sc.SHIFT_CODE = ShiftCode);
        
    exception
      -- invalid params
      when no_data_found then
        return null;
    end;
    
    
    if (FollowsCalendarOffdays = 1) then
      select
        td.WORKDAYS
      into
        IsWorkDay
      from
        THE_DATES td
      where
        (td.THE_DATE = Trunc(ForDate));
      
      if (IsWorkDay = 0) then
        return null;
      end if;
    end if;
    

    select
      Count(*)
    into
      PreviousShiftsCount
    from
      SHIFT_CYCLES sc
    where
      (sc.SHIFT_TIMED_REGIME_CODE = ShiftTimedRegimeCode) and
      (sc.SHIFT_CYCLE_NO <
        ( select
            sci.SHIFT_CYCLE_NO
          from
            SHIFT_CYCLES sci
          where
            (sci.SHIFT_TIMED_REGIME_CODE = ShiftTimedRegimeCode) and
            (sci.SHIFT_CODE = ShiftCode)
        )
      );
    
    if (IsCycleOnWorkdaysOnly = 1) then
      ForDateOffset:= Greatest(0, CountWorkdays(BeginDate, Trunc(ForDate)) - 1);
    else
      ForDateOffset:= Trunc(ForDate) - BeginDate;
    end if;
    
    -- zero based
    DaysInCycle:= (ForDateOffset + PreviousShiftsCount*CycleDurationDays) mod (CycleDurationDays*CyclesCount);
    
    ResultShiftCycleCode:= null;
    CycleStartDate:= 0;
    
    select
      sc.SHIFT_CYCLE_CODE
    bulk collect into
      ShiftCycleCodes
    from
      SHIFT_CYCLES sc
    where
      (sc.SHIFT_TIMED_REGIME_CODE = ShiftTimedRegimeCode)
    order by
      sc.SHIFT_CYCLE_NO;
    
    for i in 1..ShiftCycleCodes.Count loop
      if (CycleStartDate <= DaysInCycle) and (DaysInCycle < CycleStartDate + CycleDurationDays) then
        ResultShiftCycleCode:= ShiftCycleCodes(i);
        exit;
      end if;
      
      CycleStartDate:= CycleStartDate + CycleDurationDays;
    end loop;
    
    return ResultShiftCycleCode;
  end;
  
  
  procedure InsertDateShiftCyclesFor(ShiftTimedRegimeCode in Number) is
  begin
    insert into DATE_SHIFT_CYCLES
    (
      THE_DATE,
      SHIFT_CODE,
      SHIFT_CYCLE_CODE
    )
    select
      td.THE_DATE,
      sc.SHIFT_CODE,
      ShiftUtils.GetShiftCycle(sc.SHIFT_CODE, td.THE_DATE) as SHIFT_CYCLE_CODE
    from
      SHIFT_CYCLES sc,
      SHIFT_TIMED_REGIMES str,
      THE_DATES td
    where
      (sc.SHIFT_TIMED_REGIME_CODE = ShiftTimedRegimeCode) and
      (str.SHIFT_TIMED_REGIME_CODE = ShiftTimedRegimeCode) and
      (str.SHIFT_TIMED_REGIME_CODE = sc.SHIFT_TIMED_REGIME_CODE) and
      (td.THE_DATE between str.BEGIN_DATE and str.END_DATE) and
      (sc.SHIFT_CODE is not null) and
      (ShiftUtils.GetShiftCycle(sc.SHIFT_CODE, td.THE_DATE) is not null);
  end;
  
  procedure DeleteDateShiftCyclesFor(ShiftTimedRegimeCode in Number) is
  begin
    delete
      DATE_SHIFT_CYCLES dscd
    where
      exists (
        select
          1
        from
          DATE_SHIFT_CYCLES dsc,
          SHIFT_TIMED_REGIMES str,
          SHIFT_CYCLES sc
        where
          (str.SHIFT_TIMED_REGIME_CODE = ShiftTimedRegimeCode) and
          (sc.SHIFT_TIMED_REGIME_CODE = str.SHIFT_TIMED_REGIME_CODE) and
          (dsc.THE_DATE between str.BEGIN_DATE and str.END_DATE) and
          (dsc.SHIFT_CODE = sc.SHIFT_CODE) and
          
          (dscd.THE_DATE = dsc.THE_DATE) and
          (dscd.SHIFT_CODE = dsc.SHIFT_CODE)
      );
  end;
  
  procedure UpdateDateShiftCyclesFor(ShiftTimedRegimeCode in Number) is
  begin
    DeleteDateShiftCyclesFor(ShiftTimedRegimeCode);
    InsertDateShiftCyclesFor(ShiftTimedRegimeCode);
  end;
  
end;
/
