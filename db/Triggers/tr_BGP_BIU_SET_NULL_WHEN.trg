create or replace trigger tr_BGP_BIU_SET_NULL_WHEN
  before insert or update on BASE_GROUP_PRODUCTS
  for each row
begin
  if (:new.IS_BASE_PRODUCT = 1) then
    :new.NULL_WHEN_BASE_PRODUCT:= null;
  else
    :new.NULL_WHEN_BASE_PRODUCT:= :new.PRODUCT_CODE;
  end if;
end tr_BGP_BIU_SET_NULL_WHEN;
/
