create or replace trigger tr_PSD_BU_CHECK_PRODUCT
  before update on PLANNED_STORE_DEALS  
  for each row
declare
  StoreDealExists Integer;
begin
  if (:new.PRODUCT_CODE <> :old.PRODUCT_CODE) then
     select
       Max(1)
     into
       StoreDealExists
     from
       STORE_DEALS sd
     where
       (sd.PLANNED_STORE_DEAL_BRANCH_CODE = :old.PLANNED_STORE_DEAL_BRANCH_CODE) and
       (sd.PLANNED_STORE_DEAL_CODE = :old.PLANNED_STORE_DEAL_CODE) and
       (sd.STORNO_EMPLOYEE_CODE is null)
    ;

    if (StoreDealExists = 1) then
      raise_application_error(-20002, ServerMessages.SCannotChangeProductId);
    end if;
  end if;
end tr_PSD_BU_CHECK_PRODUCT;
/
