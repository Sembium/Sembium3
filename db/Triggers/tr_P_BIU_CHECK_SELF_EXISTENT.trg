  create or replace trigger tr_P_BIU_CHECK_SELF_EXISTENT
  before insert or update on PRODUCTS  
  for each row
begin
  if (:new.IS_GROUP = 0) and
     (:new.SELF_EXISTENT_STATUS_CODE is null) then 

    raise_application_error(-20002,
      ServerMessages.SProductNotSelfExistingId || '(' ||
      'ProductIdentifier:i=' || MessageUtils.InternalIntToStr(:new.CUSTOM_CODE) || ')'
    );
    
  end if;
end tr_P_BIU_CHECK_SELF_EXISTENT;
/
