create or replace trigger tr_VPFE_ID
  instead of delete on VAT_PERIODS_FOR_EDIT
  for each row
begin

  if not StateUtils.InVpfeUpdate then
    StateUtils.BeginVpfeUpdate;
    begin
    
      delete
        VAT_PERIODS vp
      where
        (vp.VAT_PERIOD_CODE = :old.VAT_PERIOD_CODE);

    exception
      when others then
        StateUtils.EndVpfeUpdate;
        raise;
    end;
    StateUtils.EndVpfeUpdate;
  end if;
    
end tr_VPFE_ID;
/
