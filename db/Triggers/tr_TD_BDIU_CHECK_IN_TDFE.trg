create or replace trigger tr_TD_BDIU_CHECK_IN_TDFE
  before delete or insert or update on THE_DATES
  for each row
begin

  if not StateUtils.InTdfeUpdate then
    raise_application_error(-20000, 'Internal error: THE_DATES should not be edited directly');
  end if;

end tr_TD_BDIU_CHECK_IN_TDFE;
/
