create or replace trigger tr_SMVSO_BDIU_CHECK_IN_SMVSOFE
  before delete or insert or update on SMVS_OPERATIONS
  for each row
begin

  if not StateUtils.InSmvsofeUpdate then
    raise_application_error(-20000, 'Internal error: SMVS_OPERATIONS should not be edited directly');
  end if;

end tr_SMVSO_BDIU_CHECK_IN_SMVSOFE;
/
