create or replace trigger tr_MLLC_BI_CHECK
  before insert on MATERIAL_LIST_LINE_CHANGES
  for each row
begin
  if (:new.REPLY_ACCEPT_EMPLOYEE_CODE is not null) then
    raise_application_error(-20000, 'Internal error: cannot request mllc, reply and accept the reply at once');
  end if;
end tr_MLLC_BI_CHECK;
/
