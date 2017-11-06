create or replace trigger tr_EAM_BD_CHECK_STORNO
  before delete on EMP_AVAIL_MODIFIERS
  for each row
begin
  if (:old.STORNO_EMPLOYEE_CODE is null) then
    raise_application_error(-20000, ServerMessages.SCannotDeleteEMNotStorno);
  end if;
end tr_EAM_BD_CHECK_STORNO;
/
