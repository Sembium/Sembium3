create or replace trigger tr_N_BDIU_CHECK_IN_NFE
  before delete or insert or update on NOMS
  for each row
begin

  if not StateUtils.InNfeUpdate then
    raise_application_error(-20000, 'Internal error: NOMS should not be edited directly');
  end if;

end;
/
