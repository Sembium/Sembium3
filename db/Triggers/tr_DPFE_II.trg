create or replace trigger tr_DPFE_II
  instead of insert on DEPT_PERIODS_FOR_EDIT
  for each row
declare
  IncorrectPeriods Number;
  IntersectCount Number;
begin

  if not StateUtils.InDpfeUpdate then
    StateUtils.BeginDpfeUpdate;
    begin

      select
        Count(*)
      into
        IncorrectPeriods
      from
        DEPTS d
      where
        (d.DEPT_CODE = :new.DEPT_CODE) and
        ( (:new.BEGIN_DATE < d.BEGIN_DATE) or
          (:new.END_DATE > d.END_DATE) );
        
      if (IncorrectPeriods > 0) then
        raise_application_error(-20002,
          ServerMessages.SIncorrectDeptPerDeptPeriodId || '(' ||
          'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
          'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
        );
      end if;


      select
        Count(*)
      into
        IntersectCount
      from
        DEPT_PERIODS dp
      where
        (dp.DEPT_CODE = :new.DEPT_CODE) and
        ( (:new.END_DATE between dp.BEGIN_DATE and dp.END_DATE) or
          (:new.BEGIN_DATE between dp.BEGIN_DATE and dp.END_DATE) or
          (dp.END_DATE between :new.BEGIN_DATE and :new.END_DATE) or
          (dp.BEGIN_DATE between :new.BEGIN_DATE and :new.END_DATE) )
      ;
    
      if (IntersectCount > 0) then
        raise_application_error(-20002,
          ServerMessages.SCrossedDeptPricesPeriodId || '(' ||
          'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
          'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
        );
      end if;
    
      insert into DEPT_PERIODS
      (
        DEPT_PERIOD_CODE, 
        DEPT_CODE, 
        BEGIN_DATE, 
        END_DATE, 
        HOUR_PRICE, 
        MAINTAINANCE_HOUR_PRICE, 
        CHANGE_EMPLOYEE_CODE,
        CHANGE_DATE,
        CHANGE_TIME,
        EST_CAPACITY_DAY_LIMIT_HOURS,
        PARALLEL_PROCESS_COUNT,
        PARALLEL_OPERATOR_COUNT,
        DOC_BRANCH_CODE,
        DOC_CODE
      )
      values 
      (
        :new.DEPT_PERIOD_CODE, 
        :new.DEPT_CODE, 
        :new.BEGIN_DATE, 
        :new.END_DATE, 
        :new.HOUR_PRICE, 
        :new.MAINTAINANCE_HOUR_PRICE, 
        :new.CHANGE_EMPLOYEE_CODE,
        :new.CHANGE_DATE,
        :new.CHANGE_TIME,
        :new.EST_CAPACITY_DAY_LIMIT_HOURS,
        :new.PARALLEL_PROCESS_COUNT,
        :new.PARALLEL_OPERATOR_COUNT,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE
      );
     
    exception
      when others then
        StateUtils.EndDpfeUpdate;
        raise;
    end;
    StateUtils.EndDpfeUpdate;
  end if;    
end tr_DPFE_II;
/
