create or replace trigger tr_C_BD_DEL_COMPANY_PRODUCTS
  before delete on COMPANIES
  for each row
begin

  delete
    COMPANY_PRODUCTS_FOR_EDIT cpfe
  where
    (cpfe.COMPANY_CODE = :old.COMPANY_CODE);

end tr_C_BD_DEL_COMPANY_PRODUCTS;
/
