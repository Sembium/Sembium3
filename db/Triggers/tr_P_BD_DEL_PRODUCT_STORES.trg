create or replace trigger tr_P_BD_DEL_PRODUCT_STORES
  before delete on PRODUCTS  
  for each row
begin

  delete
    PRODUCT_STORES_FOR_EDIT ps
  where
    (ps.PRODUCT_CODE = :old.PRODUCT_CODE);
  
end tr_P_BD_DEL_PRODUCT_STORES;
/
