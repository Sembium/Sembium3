create or replace trigger tr_EDE_BD_CHECK_STORNO
  before delete on EMPLOYEE_DISCIPLINE_EVENTS
  for each row
begin
  if (:old.STORNO_EMPLOYEE_CODE is null) then
    raise_application_error(-20000, ServerMessages.SCannotDeleteEDENotStorno);
  end if;
end tr_EDE_BD_CHECK_STORNO;
/
