create or replace trigger tr_SD_BD_CHECK_STORNO
  before delete on STORE_DEALS
  for each row
begin
  if (:old.STORNO_EMPLOYEE_CODE is null) then
    raise_application_error(-20000, ServerMessages.SCannotDeleteSDNotStorno);
  end if;
end tr_SD_BD_CHECK_STORNO;
/
