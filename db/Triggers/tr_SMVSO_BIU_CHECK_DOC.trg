create or replace trigger tr_SMVSO_BIU_CHECK_DOC
  before insert or update on SMVS_OPERATIONS
  for each row
begin
  if (:new.DOC_CODE is null) then
    raise_application_error(-20000, 'Spec operation doc can not be null!');
  end if;
end tr_SMVSO_BIU_CHECK_DOC;
/
