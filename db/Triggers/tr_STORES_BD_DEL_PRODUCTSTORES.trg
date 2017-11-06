create or replace trigger tr_STORES_BD_DEL_PRODUCTSTORES
  before delete on STORES  
  for each row
begin
  
  delete
    PRODUCT_STORES_FOR_EDIT ps
  where
    (ps.STORE_CODE = :old.STORE_CODE);
    
end tr_STORES_BD_DEL_PRODUCTSTORES;
/
