create or replace trigger tr_VPFE_II
  instead of insert on VAT_PERIODS_FOR_EDIT
  for each row
declare
  IntersectCount Number;
begin

  if not StateUtils.InVpfeUpdate then
    StateUtils.BeginVpfeUpdate;
    begin
      select
        Count(*)
      into
        IntersectCount
      from
        VAT_PERIODS vp
      where
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
    
      insert into VAT_PERIODS
      (
        VAT_PERIOD_CODE, 
        BEGIN_DATE,
        END_DATE,
        VAT_PERCENT
      )
      values 
      (
        :new.VAT_PERIOD_CODE, 
        :new.BEGIN_DATE,
        :new.END_DATE,
        :new.VAT_PERCENT
      );
     
    exception
      when others then
        StateUtils.EndVpfeUpdate;
        raise;
    end;
    StateUtils.EndVpfeUpdate;
  end if;    
end tr_VPFE_II;
/
