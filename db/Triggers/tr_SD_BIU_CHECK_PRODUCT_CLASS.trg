create or replace trigger tr_SD_BIU_CHECK_PRODUCT_CLASS
  before insert or update on STORE_DEALS  
  for each row
declare
  ProductClassCode Number;
  IsFinStore Number;
begin

  select
    p.PRODUCT_CLASS_CODE
  into
    ProductClassCode
  from
    PRODUCTS p
  where
    (p.PRODUCT_CODE = :new.PRODUCT_CODE);
    
  if (ProductClassCode = 2) then  -- financial
  
    select
      Count(*)
    into
      IsFinStore
    from
      FIN_STORES fs
    where
      (fs.STORE_CODE = :new.STORE_CODE);
      
    if (IsFinStore = 0) then
      raise_application_error(-20000, 'Financial store is required for financial product store deals');
    end if;
  
  end if;  
  
end tr_SD_BIU_CHECK_PRODUCT_CLASS;
/
