create or replace trigger tr_DCD_BDIU_CHECK_IN_DCDFE
  before delete or insert or update on DEFICIT_COVER_DECISIONS
  for each row
begin

  if not StateUtils.InDcdfeUpdate then
    raise_application_error(-20000, 'Internal error: DEFICIT_COVER_DECISIONS should not be edited directly');
  end if;

end tr_DCD_BDIU_CHECK_IN_DCDFE;
/
