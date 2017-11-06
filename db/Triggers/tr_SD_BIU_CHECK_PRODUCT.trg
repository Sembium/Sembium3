create or replace trigger tr_SD_BIU_CHECK_PRODUCT
  before insert or update on STORE_DEALS  
  for each row
declare
  ProductCode Integer;
begin
  if (:new.STORNO_EMPLOYEE_CODE is null) and
     (:new.PLANNED_STORE_DEAL_CODE is not null) and
     ( (:old.PRODUCT_CODE is null) or
       (:new.PRODUCT_CODE <> :old.PRODUCT_CODE) ) then
     
    select
      psd.PRODUCT_CODE
    into
      ProductCode
    from
      PLANNED_STORE_DEALS psd
    where
      (psd.PLANNED_STORE_DEAL_BRANCH_CODE = :new.PLANNED_STORE_DEAL_BRANCH_CODE) and
      (psd.PLANNED_STORE_DEAL_CODE = :new.PLANNED_STORE_DEAL_CODE)
    ;
    
    if (:new.PRODUCT_CODE <> ProductCode) then
      raise_application_error(-20002, ServerMessages.SCannotReportProductId);
    end if;
    
  end if;
end tr_SD_BIU_CHECK_PRODUCT;
/
