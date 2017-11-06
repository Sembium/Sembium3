create or replace trigger tr_EMFE_IU
  instead of update on EARNING_MODIFIERS_FOR_EDIT
  for each row
declare
  IntersectCount Number;
begin
  if not StateUtils.InEmfeUpdate then
    StateUtils.BeginEmfeUpdate;
    begin

      if (:new.EARNING_MODIFIER_CODE <> :old.EARNING_MODIFIER_CODE) then
        raise_application_error(-20000, 'Internal error: EARNING_MODIFIERS key should not be changed');
      end if;
    
      if (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
         (:new.END_DATE <> :old.END_DATE) then
         
        select
          Count(*)
        into
          IntersectCount
        from
          EARNING_MODIFIERS em
        where
          (em.EARNING_MODIFIER_CODE <> :old.EARNING_MODIFIER_CODE) and
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

      end if;
    
      update
        EARNING_MODIFIERS em
      set
        em.BEGIN_DATE = :new.BEGIN_DATE,
        em.END_DATE = :new.END_DATE,
        em.LABOUR_COST_COEF = :new.LABOUR_COST_COEF,
        em.ORGANIZATION_COST_COEF = :new.ORGANIZATION_COST_COEF
      where
        (em.EARNING_MODIFIER_CODE = :old.EARNING_MODIFIER_CODE);
        
    exception
      when others then
        StateUtils.EndEmfeUpdate;
        raise;
    end;
    StateUtils.EndEmfeUpdate;
  end if;    
end tr_EMFE_IU;
/
