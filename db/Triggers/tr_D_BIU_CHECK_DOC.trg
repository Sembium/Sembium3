create or replace trigger tr_D_BIU_CHECK_DOC
  before insert or update on DEPTS
  for each row
begin
  if (:new.DOC_CODE is null) then
    raise_application_error(-20000, 'Dept doc can not be null!');
  end if;
end tr_D_BIU_CHECK_DOC;
/
