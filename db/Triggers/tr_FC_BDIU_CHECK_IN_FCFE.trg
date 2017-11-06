create or replace trigger tr_FC_BDIU_CHECK_IN_FCFE
  before delete or insert or update on FIN_CLASSES
  for each row
begin

  if not StateUtils.InFcfeUpdate then
    raise_application_error(-20000, 'Internal error: FIN_CLASSES should not be edited directly');
  end if;

end tr_FC_BDIU_CHECK_IN_FCFE;
/
