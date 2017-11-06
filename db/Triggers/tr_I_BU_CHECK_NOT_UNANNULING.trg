create or replace trigger tr_I_BU_CHECK_NOT_UNANNULING
  before update of STORNO_EMPLOYEE_CODE, STORNO_DATE, STORNO_TIME on INVOICES
  for each row
begin

  if (:old.STORNO_EMPLOYEE_CODE is not null) and (:new.STORNO_EMPLOYEE_CODE is null) then
    raise_application_error(-20001, 'Internal assertion: Invoice cannot be unannuled');
  end if;

end tr_I_BU_CHECK_NOT_UNANNULING;
/
