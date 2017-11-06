create or replace trigger tr_SMV_BDIU_CHECK_IN_SMVFE
  before delete or insert or update on SPEC_MODEL_VARIANTS
  for each row
begin

  if not StateUtils.InSmvfeUpdate then
    raise_application_error(-20000, 'Internal error: SPEC_MODEL_VARIANTS should not be edited directly');
  end if;

end tr_SMV_BDIU_CHECK_IN_SMVFE;
/
