create or replace trigger tr_D_PR_BDIU_CHECK_IN_D_PROFFE
  before delete or insert or update on DOC_PROFILES
  for each row
begin

  if not StateUtils.InD_proffeUpdate then
    raise_application_error(-20000, 'Internal error: DOC_PROFILES should not be edited directly');
  end if;

end;
/
