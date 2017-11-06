create or replace trigger tr_MLMSO_BIU_CHECK_DOC
  before insert or update on MLMS_OPERATIONS
  for each row
begin
  if (:new.DOC_CODE is null) then
    raise_application_error(-20000, 'Model operation doc can not be null!');
  end if;
end tr_MLMSO_BIU_CHECK_DOC;
/
