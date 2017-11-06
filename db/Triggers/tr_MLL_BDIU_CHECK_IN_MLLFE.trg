create or replace trigger tr_MLL_BDIU_CHECK_IN_MLLFE
  before delete or insert or update on MATERIAL_LIST_LINES
  for each row
begin

  if not StateUtils.InMllfeUpdate then
    raise_application_error(-20000, 'Internal error: MATERIAL_LIST_LINES should not be edited directly');
  end if;
    
end tr_MLL_BDIU_CHECK_IN_MLLFE;
/
