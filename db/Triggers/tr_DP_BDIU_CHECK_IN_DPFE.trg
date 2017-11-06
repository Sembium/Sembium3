create or replace trigger tr_DP_BDIU_CHECK_IN_DPFE
  before delete or insert or update on DEPT_PERIODS
  for each row
begin

  if not StateUtils.InDpfeUpdate then
    raise_application_error(-20000, 'Internal error: DEPT_PERIODS should not be edited directly');
  end if;
    
end tr_DP_BDIU_CHECK_IN_DPFE;
/
