create or replace trigger tr_S_BIU_FIX_PO_TYPE
  before insert or update on SALES
  for each row
begin
  if (:new.SALE_ORDER_TYPE_CODE = 1 /* pp */) then 
    if (:new.MANUFACTURE_QUANTITY is null) or (:new.MANUFACTURE_QUANTITY <= 0) then
      :new.PRODUCTION_ORDER_TYPE_CODE:= null;
    else
      select
        iv.SALE_PROD_ORDER_TYPE_CODE
      into
        :new.PRODUCTION_ORDER_TYPE_CODE
      from
        INTERNAL_VALUES iv
      where
        (iv.CODE = 1);
    end if;
  end if;
end tr_S_BIU_CHECK_SG_SRG;
/
