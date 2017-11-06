create or replace trigger tr_PPERFE_II
  instead of insert on PROFESSION_PERIODS_FOR_EDIT
  for each row
declare
  IntersectCount Number;
begin

  if not StateUtils.InPperfeUpdate then
    StateUtils.BeginPperfeUpdate;
    begin
    
      select
        Count(*)
      into
        IntersectCount
      from
        PROFESSION_PERIODS pper
      where
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

      insert into PROFESSION_PERIODS
      (
        PROFESSION_PERIOD_CODE, 
        PROFESSION_CODE, 
        BEGIN_DATE, 
        END_DATE, 
        HOUR_PRICE,
        USED_BY_EMPLOYEES,
        USED_BY_TEAMS      
      )
      values
      (
        :new.PROFESSION_PERIOD_CODE, 
        :new.PROFESSION_CODE, 
        :new.BEGIN_DATE, 
        :new.END_DATE, 
        :new.HOUR_PRICE,
        :new.USED_BY_EMPLOYEES,
        :new.USED_BY_TEAMS      
      );
    
    exception
      when others then
        StateUtils.EndPperfeUpdate;
        raise;
    end;
    StateUtils.EndPperfeUpdate;
  end if;

end tr_PPERFE_II;
/
