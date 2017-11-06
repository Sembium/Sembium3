create or replace trigger tr_CRFE_ID
  instead of delete on CURRENCY_RATES_FOR_EDIT
  for each row
begin

  if not StateUtils.InCrfeUpdate then
    StateUtils.BeginCrfeUpdate;
    begin
    
      delete
      from
        CURRENCY_RATES cr
      where
        (cr.CURRENCY_CODE = :old.CURRENCY_CODE) and
        (cr.RATE_DATE = :old.RATE_DATE);
        
        
      delete
      from
        SECONDARY_CURRENCY_RATES scr
      where
        (scr.RATE_DATE = :old.RATE_DATE) and
        ((select SECONDARY_CURRENCY_CODE from INTERNAL_VALUES where (CODE = 1)) = :old.CURRENCY_CODE);
        
        
      delete
      from
        SECONDARY_CURRENCY_RATES scr
      where
        (scr.CURRENCY_CODE = :old.CURRENCY_CODE) and
        (scr.RATE_DATE = :old.RATE_DATE);
     
      if (:old.RATE_DATE = ContextDate) then
        FinanceUtils.UpdateRFMLPlannedStoreDeals(null, null, :old.CURRENCY_CODE, True);
      end if;
      
    exception
      when others then
        StateUtils.EndCrfeUpdate;
        raise;
    end;
    StateUtils.EndCrfeUpdate;
  end if;
    
end tr_CRFE_ID;
/
