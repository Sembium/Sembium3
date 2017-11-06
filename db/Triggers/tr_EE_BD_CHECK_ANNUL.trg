create or replace trigger tr_EE_BD_CHECK_ANNUL
  before delete on EXCEPT_EVENTS  
  for each row
begin

  if (:old.ANNUL_EMPLOYEE_CODE is null) then
    raise_application_error(-20000, ServerMessages.SCannotDeleteEENotAnnul);
  end if;

end tr_EE_BD_CHECK_ANNUL;
/
