create or replace trigger tr_MLMS_BDIU_CHECK_IN_MLMSFE
  before delete or insert or update on ML_MODEL_STAGES
  for each row
begin

  if not StateUtils.InMlmsfeUpdate then
    raise_application_error(-20000, 'Internal error: ML_MODEL_STAGES should not be edited directly');
  end if;

end tr_MLMS_BDIU_CHECK_IN_MLMSFE;
/
