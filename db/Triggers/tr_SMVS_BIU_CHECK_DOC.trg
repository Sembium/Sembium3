create or replace trigger tr_SMVS_BIU_CHECK_DOC
  before insert or update on SPEC_MODEL_VARIANT_STAGES
  for each row
begin
  if (:new.DOC_CODE is null) then
    raise_application_error(-20000, 'Spec stage doc can not be null!');
  end if;
end tr_SMVS_BIU_CHECK_DOC;
/
