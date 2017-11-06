create or replace trigger tr_DPFE_IU
  instead of update on DEPT_PERIODS_FOR_EDIT
  for each row
declare
  IncorrectPeriods Number;
  IntersectCount Number;
begin
  if not StateUtils.InDpfeUpdate then
    StateUtils.BeginDpfeUpdate;
    begin

      if (:new.DEPT_PERIOD_CODE <> :old.DEPT_PERIOD_CODE) then
        raise_application_error(-20000, 'Internal error: DEPT_PERIODS key should not be changed');
      end if;
    
    
      if (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
         (:new.END_DATE <> :old.END_DATE) or
         (:new.DEPT_CODE <> :old.DEPT_CODE) then

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

      end if;

      
      if (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
         (:new.END_DATE <> :old.END_DATE) then
         
        select
          Count(*)
        into
          IntersectCount
        from
          DEPT_PERIODS dp
        where
          (dp.DEPT_PERIOD_CODE <> :old.DEPT_PERIOD_CODE) and
          (dp.DEPT_CODE = :new.DEPT_CODE) and
          ( (:new.BEGIN_DATE between dp.BEGIN_DATE and dp.END_DATE) or
            (:new.END_DATE between dp.BEGIN_DATE and dp.END_DATE) or
            (dp.BEGIN_DATE between :new.BEGIN_DATE and :new.END_DATE) or
            (dp.END_DATE between :new.BEGIN_DATE and :new.END_DATE) )
        ;
      
        if (IntersectCount > 0) then
          raise_application_error(-20002,
            ServerMessages.SCrossedDeptPricesPeriodId || '(' ||
            'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
            'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
          );
        end if;

      end if;

    
      update
        DEPT_PERIODS dp
      set
        dp.DEPT_CODE = :new.DEPT_CODE,
        dp.BEGIN_DATE = :new.BEGIN_DATE,
        dp.END_DATE = :new.END_DATE,
        dp.HOUR_PRICE = :new.HOUR_PRICE,
        dp.MAINTAINANCE_HOUR_PRICE = :new.MAINTAINANCE_HOUR_PRICE,
        dp.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
        dp.CHANGE_DATE = :new.CHANGE_DATE,
        dp.CHANGE_TIME = :new.CHANGE_TIME,
        dp.EST_CAPACITY_DAY_LIMIT_HOURS = :new.EST_CAPACITY_DAY_LIMIT_HOURS,
        dp.PARALLEL_PROCESS_COUNT = :new.PARALLEL_PROCESS_COUNT,
        dp.PARALLEL_OPERATOR_COUNT = :new.PARALLEL_OPERATOR_COUNT,
        dp.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        dp.DOC_CODE = :new.DOC_CODE
      where
        (dp.DEPT_PERIOD_CODE = :old.DEPT_PERIOD_CODE);
        
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) and
         ( (:old.DOC_BRANCH_CODE <> Coalesce(:new.DOC_BRANCH_CODE, 0)) or
           (:old.DOC_CODE <> Coalesce(:new.DOC_CODE, 0)) ) then
         
         delete
           DOCS_FOR_EDIT dfe
         where
           (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
           (dfe.DOC_CODE = :old.DOC_CODE);
         
      end if;
    
    exception
      when others then
        StateUtils.EndDpfeUpdate;
        raise;
    end;
    StateUtils.EndDpfeUpdate;
  end if;    
end tr_DPFE_IU;
/
