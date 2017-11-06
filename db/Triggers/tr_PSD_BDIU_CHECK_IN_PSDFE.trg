create or replace trigger tr_PSD_BDIU_CHECK_IN_PSDFE
  before delete or insert or update on PLANNED_STORE_DEALS
  for each row
begin

  if not StateUtils.InPsdfeUpdate then
    raise_application_error(-20000, 'Internal error: PLANNED_STORE_DEALS should not be edited directly');
  end if;
    
end tr_PSD_BDIU_CHECK_IN_PSDFE;
/
