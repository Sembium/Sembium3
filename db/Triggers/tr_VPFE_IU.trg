create or replace trigger tr_VPFE_IU
  instead of update on VAT_PERIODS_FOR_EDIT
  for each row
declare
  IntersectCount Number;
begin
  if not StateUtils.InVpfeUpdate then
    StateUtils.BeginVpfeUpdate;
    begin

      if (:new.VAT_PERIOD_CODE <> :old.VAT_PERIOD_CODE) then
        raise_application_error(-20000, 'Internal error: VAT_PERIODS key should not be changed');
      end if;
    
      if (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
         (:new.END_DATE <> :old.END_DATE) then
         
        select
          Count(*)
        into
          IntersectCount
        from
          VAT_PERIODS vp
        where
          (vp.VAT_PERIOD_CODE <> :old.VAT_PERIOD_CODE) and
          (:new.BEGIN_DATE <= vp.END_DATE) and
          (:new.END_DATE >= vp.BEGIN_DATE)
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
        VAT_PERIODS vp
      set
        vp.BEGIN_DATE = :new.BEGIN_DATE,
        vp.END_DATE = :new.END_DATE,
        vp.VAT_PERCENT = :new.VAT_PERCENT
      where
        (vp.VAT_PERIOD_CODE = :old.VAT_PERIOD_CODE);
        
    exception
      when others then
        StateUtils.EndVpfeUpdate;
        raise;
    end;
    StateUtils.EndVpfeUpdate;
  end if;    
end tr_VPFE_IU;
/
