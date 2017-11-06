create or replace trigger tr_OM_BD_CHECK_STORNO
  before delete on OPERATION_MOVEMENTS  
  for each row
begin
  if (:old.STORNO_EMPLOYEE_CODE is null) then
    raise_application_error(-20000, ServerMessages.SCannotDeleteOMNotStorno);
  end if;
end tr_OM_BD_CHECK_STORNO;
/
