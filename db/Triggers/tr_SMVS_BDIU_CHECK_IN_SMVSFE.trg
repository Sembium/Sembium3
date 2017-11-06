create or replace trigger tr_SMVS_BDIU_CHECK_IN_SMVSFE
  before delete or insert or update on SPEC_MODEL_VARIANT_STAGES
  for each row
begin

  if not StateUtils.InSmvsfeUpdate then
    raise_application_error(-20000, 'Internal error: SPEC_MODEL_VARIANT_STAGES should not be edited directly');
  end if;

end tr_SMVS_BDIU_CHECK_IN_SMVSFE;
/
