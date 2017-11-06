create or replace trigger tr_ML_BDIU_CHECK_IN_MLFE
  before delete or insert or update on MATERIAL_LISTS
  for each row
begin

  if not StateUtils.InMlfeUpdate then
    raise_application_error(-20000, 'Internal error: MATERIAL_LISTS should not be edited directly');
  end if;
    
end tr_ML_BDIU_CHECK_IN_MLFE;
/
