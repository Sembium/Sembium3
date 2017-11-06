create or replace trigger tr_SFM_BIU_IS_EST_MODEL
  before insert or update on SPEC_FIN_MODELS  
  for each row
begin
  if (:new.IS_EST_MODEL = 1) then
    :new.EST_MODEL_PARTNER_CODE:= :new.PARTNER_CODE;
    :new.EST_MODEL_BORDER_REL_TYPE_CODE:= :new.BORDER_REL_TYPE_CODE;
    :new.EST_MODEL_PAR_REL_PERIOD_CODE:= :new.PAR_REL_PERIOD_CODE;
  else
    :new.EST_MODEL_PARTNER_CODE:= null;
    :new.EST_MODEL_BORDER_REL_TYPE_CODE:= null;
    :new.EST_MODEL_PAR_REL_PERIOD_CODE:= null;
  end if;  
end tr_SFM_BIU_IS_EST_MODEL;
/
