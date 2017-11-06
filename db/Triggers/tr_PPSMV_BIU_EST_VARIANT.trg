create or replace trigger tr_PPSMV_BIU_EST_VARIANT
  before insert or update on PROD_PER_SPEC_MODEL_VARIANTS  
  for each row
begin

  if (:new.IS_EST_VARIANT = 1) then
    :new.EST_VAR_PRODUCT_CODE:= :new.PRODUCT_CODE;
    :new.EST_VAR_PRODUCT_PERIOD_CODE:= :new.PRODUCT_PERIOD_CODE;
  else
    :new.EST_VAR_PRODUCT_CODE:= null;
    :new.EST_VAR_PRODUCT_PERIOD_CODE:= null;
  end if;
  
end tr_PPSMV_BIU_EST_VARIANT;
/
