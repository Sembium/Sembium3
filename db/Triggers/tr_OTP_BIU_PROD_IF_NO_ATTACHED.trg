create or replace trigger tr_OTP_BIU_PROD_IF_NO_ATTACHED
  before insert or update on ORG_TASK_PROPOSALS
  for each row
begin

  if (:new.ORG_TASK_PROP_RESULT_TYPE_CODE <> CommonConsts.otprtAttached) then
    :new.PRODUCT_CODE_IF_NOT_ATTACHED:= :new.PRODUCT_CODE;
  else
    :new.PRODUCT_CODE_IF_NOT_ATTACHED:= null;
  end if;

end;
/
