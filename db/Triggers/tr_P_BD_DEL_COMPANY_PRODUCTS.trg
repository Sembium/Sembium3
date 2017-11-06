create or replace trigger tr_P_BD_DEL_COMPANY_PRODUCTS
  before delete on PRODUCTS  
  for each row
begin

  delete
    COMPANY_PRODUCTS_FOR_EDIT cpfe
  where
    (cpfe.PRODUCT_CODE = :old.PRODUCT_CODE);
  
end tr_P_BD_DEL_COMPANY_PRODUCTS;
/
