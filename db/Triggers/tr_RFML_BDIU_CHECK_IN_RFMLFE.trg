create or replace trigger tr_RFML_BDIU_CHECK_IN_RFMLFE
  before delete or insert or update on REAL_FIN_MODEL_LINES
  for each row
begin

  if not StateUtils.InRfmlfeUpdate then
    raise_application_error(-20000, 'Internal error: REAL_FIN_MODEL_LINES should not be edited directly');
  end if;

end tr_RFML_BDIU_CHECK_IN_RFMLFE;
/
