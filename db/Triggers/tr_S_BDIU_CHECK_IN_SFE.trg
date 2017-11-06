create or replace trigger tr_S_BDIU_CHECK_IN_SFE
  before delete or insert or update on SALES
  for each row
begin

  if (not StateUtils.InSfeUpdate) then
    raise_application_error(-20000, 'Internal error: SALES should not be edited directly');
  end if;
    
end tr_S_BDIU_CHECK_IN_SFE;
/
