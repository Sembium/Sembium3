create or replace trigger tr_P_BIU_CHECK_MEASURES
  before insert or update on PRODUCTS  
  for each row
begin
  if (:new.IS_GROUP = 0) and
     ( (:new.MEASURE_CODE is null) or
       (:new.ACCOUNT_MEASURE_CODE is null) or
       (:new.ACCOUNT_MEASURE_COEF is null) or
       (:new.TECH_MEASURE_CODE is null) or
       (:new.TECH_MEASURE_COEF is null) or
       (:new.TRANSPORT_MEASURE_CODE is null) or
       (:new.TRANSPORT_MEASURE_COEF is null) ) then 

    raise_application_error(-20002, 
      ServerMessages.SMeasureOrCoefNotFoundId || '(' ||
      'ProductIdentifier:i= ' || MessageUtils.InternalIntToStr(:new.CUSTOM_CODE) || ')'
    ); 
    
  end if;
end tr_P_BIU_CHECK_MEASURES;
/
