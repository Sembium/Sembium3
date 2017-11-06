create or replace package DateTimeUtils is

  type TPeriodRec is record (
    BeginDate Date,
    EndDate Date
  );
  
  function IncDateByTimeUnits(
    ADate in Date, 
    ATimeUnitCode in Number, 
    ATimeUnitCount in Number
  ) return Date;
    
  function TimeUnitsBetween(
    ABeginDate in Date,
    AEndDate in Date,
    ATimeUnitCode in Number
  ) return Number;
  
  function ExactTimeUnitsBetween(
    ABeginDate in Date,
    AEndDate in Date,
    ATimeUnitCode in Number
  ) return Number;
  
  function GetXDatePeriod(
    AXDate in Date, 
    ATimeUnitCode in Number
  ) return TPeriodRec;
  
  function GetDatePeriodBeginDate(
    ADate in Date,
    ATimeUnitCode in Number
  ) return Date;

  function GetDatePeriodEndDate(
    ADate in Date,
    ATimeUnitCode in Number
  ) return Date;
  
  function CountIntersectWorkdays(
    ABeginDate1 in Date,
    AEndDate1 in Date,
    ABeginDate2 in Date,
    AEndDate2 in Date
  ) return Number;

  function DatePeriodIntersectLength(
    ABeginDate1 in Date,
    AEndDate1 in Date,
    ABeginDate2 in Date,
    AEndDate2 in Date
  ) return Number;

  function TimePeriodIntersectLength(
    ABeginTime1 in Date,
    AEndTime1 in Date,
    ABeginTime2 in Date,
    AEndTime2 in Date
  ) return Number;
  
  function NormalizePeriodEndTime(
    ABeginTime in Date,
    AEndTime in Date
  ) return Date;

  function IncTime(
    ABeginTime in Date,
    AIncTime in Date
  ) return Date;
  
  PRAGMA RESTRICT_REFERENCES (GetXDatePeriod, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (GetDatePeriodBeginDate, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (GetDatePeriodEndDate, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (CountIntersectWorkdays, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (DatePeriodIntersectLength, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (TimePeriodIntersectLength, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (NormalizePeriodEndTime, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (IncTime, WNDS, WNPS, RNPS);
  
end DateTimeUtils;
/
create or replace package body DateTimeUtils is

  function IncDateByTimeUnits(
    ADate in Date, 
    ATimeUnitCode in Number, 
    ATimeUnitCount in Number
  ) return Date is
  
    Result Date;
    
  begin
    
    if (ADate is not null) and
       (ATimeUnitCode is not null) and
       (ATimeUnitCount is not null) then
      case ATimeUnitCode
        when DateTimeConsts.tuDay then
          Result:= ADate + ATimeUnitCount;
          
        when DateTimeConsts.tuWeek then
          Result:= ADate + (7 * ATimeUnitCount);
    
        when DateTimeConsts.tuMonth then
          Result:= Add_Months(ADate, ATimeUnitCount);
  
        when DateTimeConsts.tuQuarter then
          Result:= Add_Months(ADate, 3 * ATimeUnitCount);
  
        when DateTimeConsts.tuYear then
          Result:= Add_Months(ADate, 12 * ATimeUnitCount);
  
        else
          raise_application_error(-20000, 'Internal error: IncDateByTimeUnits: Unknown time unit!');
      end case;
    end if;
  
    return Result;
    
  end;

  
  function TimeUnitsBetween(
    ABeginDate in Date,
    AEndDate in Date,
    ATimeUnitCode in Number
  ) return Number is
  
    Result Number;
    
  begin
    
    case ATimeUnitCode
      when DateTimeConsts.tuDay then
        Result:= AEndDate - ABeginDate;
        
      when DateTimeConsts.tuWeek then
        Result:= Trunc((AEndDate - ABeginDate) / 7);
  
      when DateTimeConsts.tuMonth then
        Result:= Trunc(Months_Between(AEndDate, ABeginDate));

      when DateTimeConsts.tuQuarter then
        Result:= Trunc(Months_Between(AEndDate, ABeginDate) / 3);

      when DateTimeConsts.tuYear then
        Result:= Trunc(Months_Between(AEndDate, ABeginDate) / 12);

      else
        raise_application_error(-20000, 'Internal error: TimeUnitsBetween: Unknown time unit!');
    end case;
  
    return Result;
    
  end;
  
  
  function ExactTimeUnitsBetween(
    ABeginDate in Date,
    AEndDate in Date,
    ATimeUnitCode in Number
  ) return Number is
  
    Result Number;
    
    ExtBeginDate Date;
    ExtEndDate Date;
  begin

    ExtBeginDate:= GetDatePeriodBeginDate(ABeginDate, ATimeUnitCode);
    ExtEndDate:= GetDatePeriodEndDate(AEndDate, ATimeUnitCode);
    
    Result:=
      TimeUnitsBetween(ExtBeginDate, ExtEndDate + 1, ATimeUnitCode) -
      ( (ABeginDate - ExtBeginDate) / (GetDatePeriodEndDate(ABeginDate, ATimeUnitCode) - ExtBeginDate + 1) ) -
      ( (ExtEndDate - AEndDate) / (ExtEndDate - GetDatePeriodBeginDate(AEndDate, ATimeUnitCode) + 1) );
  
    return Result;
    
  end;

  
  function GetXDatePeriod(
    AXDate in Date, 
    ATimeUnitCode in Number
  ) return TPeriodRec is
  
    Result TPeriodRec;

    DateUnitTableName Varchar2(50 char);
    DateUnitKeyFieldName Varchar2(50 char);
    
  begin

    select
      tdu.TABLE_NAME,
      tdu.KEY_FIELD_NAME
    into
      DateUnitTableName,
      DateUnitKeyFieldName
    from
      THE_DATE_UNITS tdu
    where
      (tdu.THE_DATE_UNIT_CODE = ATimeUnitCode)
    ;

      
    execute immediate
      ' select
          d.THE_FIRST_DATE,
          d.THE_LAST_DATE
        from ' ||
          DateUnitTableName || ' d
        where
          (d.' || DateUnitKeyFieldName || ' = :THE_X_DATE)
      '
    into
      Result.BeginDate,
      Result.EndDate
    using
      AXDate
    ;
    

    return Result;

  end;
  
  
  function GetDatePeriodBeginDate(
    ADate in Date,
    ATimeUnitCode in Number
  ) return Date is
  
    ResultDate Date;
    DateUnitTableName Varchar2(50 char);
    DateUnitKeyFieldName Varchar2(50 char);
  begin
  
    select
      tdu.TABLE_NAME,
      tdu.KEY_FIELD_NAME
    into
      DateUnitTableName,
      DateUnitKeyFieldName
    from
      THE_DATE_UNITS tdu
    where
      (tdu.THE_DATE_UNIT_CODE = ATimeUnitCode)
    ;
    
    execute immediate
      ' select
          d.THE_FIRST_DATE
        from ' ||
          DateUnitTableName || ' d
        where
          (:THE_DATE between d.THE_FIRST_DATE and d.THE_LAST_DATE)
      '
    into
      ResultDate
    using
      ADate
    ;

    return ResultDate;
  end;
  
  
  function GetDatePeriodEndDate(
    ADate in Date,
    ATimeUnitCode in Number
  ) return Date is
  
    ResultDate Date;
    DateUnitTableName Varchar2(50 char);
    DateUnitKeyFieldName Varchar2(50 char);
  begin
  
    select
      tdu.TABLE_NAME,
      tdu.KEY_FIELD_NAME
    into
      DateUnitTableName,
      DateUnitKeyFieldName
    from
      THE_DATE_UNITS tdu
    where
      (tdu.THE_DATE_UNIT_CODE = ATimeUnitCode)
    ;
    
    execute immediate
      ' select
          d.THE_LAST_DATE
        from ' ||
          DateUnitTableName || ' d
        where
          (:THE_DATE between d.THE_FIRST_DATE and d.THE_LAST_DATE)
      '
    into
      ResultDate
    using
      ADate
    ;

    return ResultDate;
  end;
  
  
  function CountIntersectWorkdays(
    ABeginDate1 in Date,
    AEndDate1 in Date,
    ABeginDate2 in Date,
    AEndDate2 in Date
  ) return Number is

    Result Number;
    bd Date;
    ed Date;
    
  begin
    bd:= Greatest(ABeginDate1, ABeginDate2);
    ed:= Least(AEndDate1, AEndDate2);
    
    if (bd <= ed) then
      Result:= CountWorkdays(bd, ed);
    else
      Result:= 0;
    end if;
    
    return Result;
  end;
  
  
  function DatePeriodIntersectLength(
    ABeginDate1 in Date,
    AEndDate1 in Date,
    ABeginDate2 in Date,
    AEndDate2 in Date
  ) return Number is
  
  begin
    return
      Greatest(
        (Least(AEndDate1, AEndDate2) - Greatest(ABeginDate1, ABeginDate2) + 1),
        0
      );
  end;

  
  function TimePeriodIntersectLength(
    ABeginTime1 in Date,
    AEndTime1 in Date,
    ABeginTime2 in Date,
    AEndTime2 in Date
  ) return Number is
  
  begin
    return
      Greatest(
        (Least(AEndTime1, AEndTime2) - Greatest(ABeginTime1, ABeginTime2)),
        0
      );
  end;
  
  
  function NormalizePeriodEndTime(
    ABeginTime in Date,
    AEndTime in Date
  ) return Date is
  
  begin
    if (ABeginTime < AEndTime) then
      return AEndTime;
    else
      return AEndTime + 1;
    end if;
  end;


  function IncTime(
    ABeginTime in Date,
    AIncTime in Date
  ) return Date is

  begin
    return 
      ABeginTime + (AIncTime - CommonConsts.MinTime);
  end;

  
end DateTimeUtils;
/
