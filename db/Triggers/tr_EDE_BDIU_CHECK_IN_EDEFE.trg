create or replace trigger tr_EDE_BDIU_CHECK_IN_EDEFE
  before delete or insert or update on EMPLOYEE_DISCIPLINE_EVENTS
  for each row
begin

  if not StateUtils.InEdefeUpdate then
    raise_application_error(-20000, 'Internal error: EMPLOYEE_DISCIPLINE_EVENTS should not be edited directly');
  end if;

end tr_EDE_BDIU_CHECK_IN_EDEFE;
/
