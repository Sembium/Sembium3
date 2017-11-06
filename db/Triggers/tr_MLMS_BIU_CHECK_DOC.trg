create or replace trigger tr_MLMS_BIU_CHECK_DOC
  before insert or update on ML_MODEL_STAGES
  for each row
begin
  if (:new.DOC_CODE is null) then
    raise_application_error(-20000, 'Model stage doc can not be null!');
  end if;
end tr_MLMS_BIU_CHECK_DOC;
/
