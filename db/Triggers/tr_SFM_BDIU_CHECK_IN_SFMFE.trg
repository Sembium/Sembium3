create or replace trigger tr_SFM_BDIU_CHECK_IN_SFMFE
  before delete or insert or update on SPEC_FIN_MODELS
  for each row
begin

  if not StateUtils.InSfmfeUpdate then
    raise_application_error(-20000, 'Internal error: SPEC_FIN_MODELS should not be edited directly');
  end if;

end tr_SFM_BDIU_CHECK_IN_SFMFE;
/
