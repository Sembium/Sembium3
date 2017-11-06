create or replace package LoginContext is

  -- Author  : VENCY
  -- Created : 04.12.2000 13:30:10
  -- Purpose : Hold server state

  -- Public function and procedure declarations
  function UserCode return Number;
  function CurrentDeptCode return Number;
  procedure SetUserCode(AUserCode Number);
  procedure SetContext(AUserCode Number, ACurrentDeptCode Number, AContextDateTime Date, AIsReadOnly Number, ADbId Varchar2:= null);
  function UserHasActivity(AActivityCode Number) return Boolean;
  function ContextDate return Date deterministic;
  function ContextTime return Date deterministic;
  function ContextNow return Date deterministic;
  function DbId return Varchar2 deterministic;
  procedure GetDbId(ADbId out Varchar2) deterministic;
  
  PRAGMA RESTRICT_REFERENCES (UserCode, WNDS, RNDS);
  PRAGMA RESTRICT_REFERENCES (ContextDate, WNDS, WNPS);
  PRAGMA RESTRICT_REFERENCES (ContextTime, WNDS, WNPS);
  PRAGMA RESTRICT_REFERENCES (ContextNow, WNDS, WNPS);

end LoginContext;
/
create or replace package body LoginContext is
  
  -- Public variable declarations
  FUserCode Number := 0;
  FCurrentDeptCode Number := 0;
  FLastExecutionMoment Date;
  FDBExpireDate Date;

  FCheckIntervalMinutes constant Number := 5;
  FCheckInterval constant Number := FCheckIntervalMinutes / (24 * 60);
  
  FContextDateTime Date;
  FIsReadOnly Boolean := False;
  
  FDbId Varchar2(50 char);

  function ContextDate return Date deterministic is
  begin
    -- narochno ne e svedeno do Trunc(ContextNow) zaradi eventualno burzodeistvie
    if (FUserCode > 0) then
      return Trunc(FContextDateTime);
    else
      return Trunc(SysDate);
    end if;
  end;

  function ContextTime return Date deterministic is
  begin
    -- narochno ne e svedeno do TimeOf(ContextNow) zaradi eventualno burzodeistvie
    if (FUserCode > 0) then
      return TimeOf(FContextDateTime);
    else
      return TimeOf(SysDate);
    end if;
  end;

  function ContextNow return Date deterministic is
  begin
    if (FUserCode > 0) then
      return FContextDateTime;
    else
      return SysDate;
    end if;
  end;

  -- Function and procedure implementations
  function UserCode return Number is
  begin
    return FUserCode;
  end;

  function CurrentDeptCode return Number is
  begin
    return FCurrentDeptCode;
  end;

  procedure CheckOptimizerStats is
    CurrentNow Date;
  begin
    CurrentNow:= ContextNow;
    
    if (FLastExecutionMoment is null) then
      select
        NumberToDate(oss.OPTIMIZER_JOIN_COHESION),
        NumberToDate(oss.OPTIMIZER_UNION_COHESION)
      into
        FLastExecutionMoment,
        FDBExpireDate
      from
        OPTIMIZER_SECONDARY_STATS oss
      where
        (oss.CODE = 1);
    end if;   
    
    if not FIsReadOnly and
       (Trunc(CurrentNow) < Trunc(FLastExecutionMoment)) then
      raise_application_error(-20002, ServerMessages.SIncorrectSystemTimeId);
    end if;
    
    -- tuk narochno e SysDate, za da expire-wa chrez istinskata data
    if (FDBExpireDate is not null) and (SysDate > FDBExpireDate) then
      raise_application_error(-20002, ServerMessages.SInvalidLoginContextId);
    end if;

    if (Trunc(CurrentNow) > Trunc(FLastExecutionMoment)) then
      FinanceUtils.UpdateRFMLPlannedStoreDeals;
    end if;

    if (CurrentNow > FLastExecutionMoment) then
    
      if not FIsReadOnly and
         ((CurrentNow - FLastExecutionMoment) > FCheckInterval) then
         
        update
          OPTIMIZER_SECONDARY_STATS oss
        set
          oss.OPTIMIZER_JOIN_COHESION = DateToNumber(CurrentNow)
        where
          (oss.CODE = 1)
        returning
          NumberToDate(oss.OPTIMIZER_UNION_COHESION)
        into
          FDBExpireDate;
      end if;

      FLastExecutionMoment:= CurrentNow;

    end if;
  end;

  procedure SetUserCode(AUserCode Number) is
  begin
    FUserCode:= AUserCode;
  end;
  
  procedure SetCurrentDeptCode(ACurrentDeptCode Number) is
  begin
    FCurrentDeptCode:= ACurrentDeptCode;
  end;
  
  function DbId return Varchar2 is
  begin
    if (FDbId is null) then
      select
        dbv.DB_ID
      into
        FDbId
      from
        DB_VALUES dbv
      where
        (dbv.CODE = 1);
        
      if (FDbId is null) then
        update
          DB_VALUES dbv
        set
          dbv.DB_ID = sys_guid()
        where
          (dbv.CODE = 1)
        returning
          dbv.DB_ID
        into
          FDbId;
      end if;
    end if;
    
    return FDbId;
  end;

  procedure GetDbId(ADbId out Varchar2) is
  begin
    ADbId:= DbId;
  end;

  procedure SetContext(AUserCode Number, ACurrentDeptCode Number, AContextDateTime Date, AIsReadOnly Number, ADbId Varchar2:= null) is
  begin
    FContextDateTime:= AContextDateTime;
    FIsReadOnly:= (AIsReadOnly = 1);

    SetUserCode(AUserCode);
    SetCurrentDeptCode(ACurrentDeptCode);

    if (AUserCode <> 0) then
      CheckOptimizerStats;
      
      if (DbId is not null) and (ADbId is not null) and (ADbId <> DbId) then
        raise_application_error(-20002, 'DB is not the same');
      end if;
    end if;
  end;
  
  function UserHasActivity(AActivityCode Number) return Boolean is
    HasUserActivity Number;
  begin

    select
      Count(*)
    into
      HasUserActivity
    from
      DUAL
    where
      ( (exists
          ( select
              1
            from
              USER_ACTIVITIES ua
            where
              (ua.EMPLOYEE_CODE = FUserCode) and
              (ua.ACTIVITY_CODE = AActivityCode)
          )
        ) or
        
        (exists
          ( select
              1
            from
              USER_GROUP_ACTIVITIES uga,
              USER_GROUP_USERS ugu
            where
              (uga.USER_GROUP_CODE = ugu.USER_GROUP_CODE) and
              (uga.ACTIVITY_CODE = AActivityCode) and
              (ugu.EMPLOYEE_CODE = FUserCode)
          )
        ) or
        
        (exists
          ( select
              1
            from
              SYS_ROLE_ACTIVITIES sra,
              OCCUPATION_SYS_ROLES osr,
              OCCUPATION_EMPLOYEES oe
            where
              (sra.ACTIVITY_CODE = AActivityCode) and
              (sra.SYS_ROLE_CODE = osr.SYS_ROLE_CODE) and
              (osr.OCCUPATION_CODE = oe.OCCUPATION_CODE) and
              (oe.EMPLOYEE_CODE = FUserCode) and
              (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNMENT_END_DATE)
          )
        )
      );
    
    return (HasUserActivity = 1);
  end;
  
end LoginContext;
/
