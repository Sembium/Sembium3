create or replace trigger tr_SD_BIU_CHECK_IN_SDFE
  before insert or update on STORE_DEALS
  for each row
begin

  if not StateUtils.InSdfeUpdate then
    raise_application_error(-20000, 'Internal error: STORE_DEALS should not be edited directly');
  end if;
    
end tr_SD_BIU_CHECK_IN_SDFE;
/
