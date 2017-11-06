create or replace trigger tr_O_BDIU_CHECK_IN_OFE
  before delete or insert or update on OCCUPATIONS
  for each row
begin

  if not StateUtils.InOfeUpdate then
    raise_application_error(-20000, 'Internal error: OCCUPATIONS should not be edited directly');
  end if;

end tr_O_BDIU_CHECK_IN_OFE;
/
