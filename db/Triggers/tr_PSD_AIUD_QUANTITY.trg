create or replace trigger tr_PSD_AIUD_QUANTITY
  after insert
     or update of
       IS_ACTIVE,
       PRODUCT_CODE,
       STORE_CODE,
       STORE_DEAL_BEGIN_DATE,
       STORE_DEAL_END_DATE,
       IN_OUT,
       QUANTITY,
       REMAINING_QUANTITY,
       PLANNED_STORE_DEAL_TYPE_CODE
     or delete on PLANNED_STORE_DEALS
  for each row
begin
  if (not inserting) then
    if (:old.IS_ACTIVE = 1) then
      StoreUtils.DistributePlannedStoreDeal(
        :old.PRODUCT_CODE,
        :old.STORE_CODE,
        :old.IN_OUT,
        -1,
        :old.STORE_DEAL_BEGIN_DATE,
        :old.STORE_DEAL_END_DATE,
        :old.QUANTITY,
        :old.REMAINING_QUANTITY,
        :old.PLANNED_STORE_DEAL_TYPE_CODE
      );
    end if;
  end if;
  
  if (not deleting) then
    if (:new.IS_ACTIVE = 1) then
      StoreUtils.DistributePlannedStoreDeal(
        :new.PRODUCT_CODE,
        :new.STORE_CODE,
        :new.IN_OUT,
        1,
        :new.STORE_DEAL_BEGIN_DATE,
        :new.STORE_DEAL_END_DATE,
        :new.QUANTITY,
        :new.REMAINING_QUANTITY,
        :new.PLANNED_STORE_DEAL_TYPE_CODE
      );
    end if;
  end if;
end;
/
