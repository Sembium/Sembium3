create or replace trigger tr_CRFE_II
  instead of insert on CURRENCY_RATES_FOR_EDIT
  for each row
begin

  if not StateUtils.InCrfeUpdate then
    StateUtils.BeginCrfeUpdate;
    begin
    
      insert into CURRENCY_RATES (
        CURRENCY_CODE,
        RATE_DATE,
        FIXING
      )
      values (
        :new.CURRENCY_CODE,
        :new.RATE_DATE,
        :new.FIXING
      );
      
      
      insert into SECONDARY_CURRENCY_RATES (
        CURRENCY_CODE,
        RATE_DATE,
        FIXING
      )
      select
        cr.CURRENCY_CODE,
        cr.RATE_DATE,
        (cr.FIXING / :new.FIXING) as FIXING
      from
        CURRENCY_RATES cr,
        INTERNAL_VALUES iv
      where
        (iv.CODE = 1) and
        (cr.RATE_DATE = :new.RATE_DATE) and
        (iv.SECONDARY_CURRENCY_CODE = :new.CURRENCY_CODE);
    
        
      insert into SECONDARY_CURRENCY_RATES (
        CURRENCY_CODE,
        RATE_DATE,
        FIXING
      )
      select
        :new.CURRENCY_CODE,
        :new.RATE_DATE,
        (:new.FIXING / cr.FIXING) as FIXING
      from
        CURRENCY_RATES cr,
        INTERNAL_VALUES iv
      where
        (iv.CODE = 1) and
        (cr.RATE_DATE = :new.RATE_DATE) and
        (cr.CURRENCY_CODE = iv.SECONDARY_CURRENCY_CODE) and
        (iv.SECONDARY_CURRENCY_CODE <> :new.CURRENCY_CODE);
     
      if (:new.RATE_DATE = ContextDate) then
        FinanceUtils.UpdateRFMLPlannedStoreDeals(null, null, :new.CURRENCY_CODE, True);
      end if;
      
    exception
      when others then
        StateUtils.EndCrfeUpdate;
        raise;
    end;
    StateUtils.EndCrfeUpdate;
  end if;
    
end tr_CRFE_II;
/
