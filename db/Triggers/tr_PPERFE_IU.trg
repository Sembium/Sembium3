create or replace trigger tr_PPERFE_IU
  instead of update on PROFESSION_PERIODS_FOR_EDIT
  for each row
declare
  IntersectCount Number;
begin

  if not StateUtils.InPperfeUpdate then
    StateUtils.BeginPperfeUpdate;
    begin
    
      if (:new.PROFESSION_PERIOD_CODE <> :old.PROFESSION_PERIOD_CODE) then
        raise_application_error(-20000, 'Internal error: PROFESSION_PERIODS key should not be changed');
      end if;    
      
      if (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
         (:new.END_DATE <> :old.END_DATE) or
         (:new.PROFESSION_CODE <> :old.PROFESSION_CODE) then
         
        select
          Count(*)
        into
          IntersectCount
        from
          PROFESSION_PERIODS pper
        where
          (pper.PROFESSION_PERIOD_CODE <> :old.PROFESSION_PERIOD_CODE) and
          (pper.PROFESSION_CODE = :new.PROFESSION_CODE) and
          ( DateTimeUtils.DatePeriodIntersectLength(
              pper.BEGIN_DATE, pper.END_DATE,
              :new.BEGIN_DATE, :new.END_DATE
            ) > 0
          )
        ;
      
        if (IntersectCount > 0) then
          raise_application_error(-20002,
            ServerMessages.SCrossedProfessionPeriodId || '(' ||
            'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
            'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
          );
        end if;

      end if;
    
      update
        PROFESSION_PERIODS pper
      set
        pper.PROFESSION_CODE = :new.PROFESSION_CODE, 
        pper.BEGIN_DATE = :new.BEGIN_DATE, 
        pper.END_DATE = :new.END_DATE, 
        pper.HOUR_PRICE = :new.HOUR_PRICE,
        pper.USED_BY_EMPLOYEES = :new.USED_BY_EMPLOYEES,
        pper.USED_BY_TEAMS = :new.USED_BY_TEAMS
      where
        (pper.PROFESSION_PERIOD_CODE = :old.PROFESSION_PERIOD_CODE);        
        
    exception
      when others then
        StateUtils.EndPperfeUpdate;
        raise;
    end;
    StateUtils.EndPperfeUpdate;
  end if;
    
end tr_PPERFE_IU;
/
