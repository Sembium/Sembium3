create or replace trigger tr_EMOV_BD_CHECK_STORNO
  before delete on EMP_MOVEMENTS  
  for each row
begin
  if (:old.STORNO_EMPLOYEE_CODE is null) then
    raise_application_error(-20000, ServerMessages.SCannotDeleteEMNotStorno);
  end if;
end tr_EMOV_BD_CHECK_STORNO;
/
