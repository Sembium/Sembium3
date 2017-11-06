create or replace trigger tr_OWDP_BDIU_CHECK_IN_OWDPFE
  before delete or insert or update on OCC_WORK_DEPT_PRIORITIES
  for each row
begin

  if not StateUtils.InOwdpfeUpdate then
    raise_application_error(-20000, 'Internal error: OCC_WORK_DEPT_PRIORITIES should not be edited directly');
  end if;

end;
/
