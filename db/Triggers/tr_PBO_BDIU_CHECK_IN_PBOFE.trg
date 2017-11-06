create or replace trigger tr_PBO_BDIU_CHECK_IN_PBOFE
  before delete or insert or update on PRC_BASE_OPS
  for each row
begin

  if not StateUtils.InPbofeUpdate then
    raise_application_error(-20000, 'Internal error: PRC_BASE_OPS should not be edited directly');
  end if;

end tr_PBO_BDIU_CHECK_IN_PBOFE;
/
