create or replace trigger tr_MM_BD_CHECK_STORNO
  before delete on MODEL_MOVEMENTS  
  for each row
begin
  if (:old.STORNO_EMPLOYEE_CODE is null) then
    raise_application_error(-20000, 'Internal error: Cannot delete a MODEL_MOVEMENT with STORNO_EMPLOYEE_CODE=null');
  end if;
end tr_MM_BD_CHECK_STORNO;
/
