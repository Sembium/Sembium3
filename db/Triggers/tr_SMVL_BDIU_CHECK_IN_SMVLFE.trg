create or replace trigger tr_SMVL_BDIU_CHECK_IN_SMVLFE
  before delete or insert or update on SPEC_MODEL_VARIANT_LINES
  for each row
begin

  if not StateUtils.InSmvlfeUpdate then
    raise_application_error(-20000, 'Internal error: SPEC_MODEL_VARIANT_LINES should not be edited directly');
  end if;

end tr_SMVL_BDIU_CHECK_IN_SMVLFE;
/
