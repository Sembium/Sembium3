create or replace trigger tr_EETP_BDIU_CHECK_IN_EETPFE
  before delete or insert or update on EXCEPT_EVENT_TYPES
  for each row
begin

  if not StateUtils.InEetpfeUpdate then
    raise_application_error(-20000, 'Internal error: EXCEPT_EVENT_TYPES should not be edited directly');
  end if;

end;
/
