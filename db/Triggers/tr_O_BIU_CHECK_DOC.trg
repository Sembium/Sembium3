create or replace trigger tr_O_BIU_CHECK_DOC
  before insert or update on OCCUPATIONS
  for each row
begin
  if (:new.DOC_CODE is null) then
    raise_application_error(-20000, 'Occupation stage doc can not be null!');
  end if;
end tr_O_BIU_CHECK_DOC;
/
