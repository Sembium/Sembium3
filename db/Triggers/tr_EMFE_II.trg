create or replace trigger tr_EMFE_II
  instead of insert on EARNING_MODIFIERS_FOR_EDIT
  for each row
declare
  IntersectCount Number;
begin

  if not StateUtils.InEmfeUpdate then
    StateUtils.BeginEmfeUpdate;
    begin
      select
        Count(*)
      into
        IntersectCount
      from
        EARNING_MODIFIERS em
      where
        ( DateTimeUtils.DatePeriodIntersectLength(
            em.BEGIN_DATE, em.END_DATE,
            :new.BEGIN_DATE, :new.END_DATE
          ) > 0
        )
      ;
    
      if (IntersectCount > 0) then
        raise_application_error(-20002,
          ServerMessages.SCrossedPeriodId || '(' ||
          'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
          'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
        );
      end if;
    
      insert into EARNING_MODIFIERS
      (
        EARNING_MODIFIER_CODE, 
        BEGIN_DATE, 
        END_DATE, 
        LABOUR_COST_COEF,
        ORGANIZATION_COST_COEF
      )
      values 
      (
        :new.EARNING_MODIFIER_CODE, 
        :new.BEGIN_DATE, 
        :new.END_DATE, 
        :new.LABOUR_COST_COEF,
        :new.ORGANIZATION_COST_COEF
      );
     
    exception
      when others then
        StateUtils.EndEmfeUpdate;
        raise;
    end;
    StateUtils.EndEmfeUpdate;
  end if;    
end tr_EMFE_II;
/
