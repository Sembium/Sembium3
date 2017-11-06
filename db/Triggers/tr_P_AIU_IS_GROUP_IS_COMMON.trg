create or replace trigger tr_P_AIU_IS_GROUP_IS_COMMON
  after insert or update on PRODUCTS
  for each row
begin
  if (:old.IS_GROUP is not null) and 
     (:old.IS_GROUP <> :new.IS_GROUP) then
     
    if (:old.IS_GROUP = 1) then
      delete
        GROUP_PRODUCTS
      where
        (PRODUCT_CODE = :new.PRODUCT_CODE)
      ;
    else
      delete
        DEFINITE_PRODUCTS_FOR_EDIT
      where
        (PRODUCT_CODE = :new.PRODUCT_CODE)
      ;
    end if;
        
  end if;
  
  
  if (:old.IS_GROUP is null) or
     (:old.IS_GROUP <> :new.IS_GROUP) then

    if (:new.IS_GROUP = 1) then
      insert into GROUP_PRODUCTS
        (PRODUCT_CODE)
      values
        (:new.PRODUCT_CODE)
      ;
    else
      insert into DEFINITE_PRODUCTS_FOR_EDIT
        (PRODUCT_CODE)
      values
        (:new.PRODUCT_CODE)
      ;
    end if;
     
  end if;


  if (:old.IS_COMMON is not null) and 
     (:old.IS_COMMON <> :new.IS_COMMON) then
     
    if (:old.IS_COMMON = 1) then
      delete
        COMMON_PRODUCTS
      where
        (PRODUCT_CODE = :new.PRODUCT_CODE)
      ;
    else
      delete
        CONCRETE_PRODUCTS
      where
        (PRODUCT_CODE = :new.PRODUCT_CODE)
      ;
    end if;
        
  end if;
  
  
  if ( (:old.IS_COMMON is null) or
       (:old.IS_COMMON <> :new.IS_COMMON) ) and
     (:new.IS_GROUP = 0) then

    if (:new.IS_COMMON = 1) then
      insert into COMMON_PRODUCTS
        (PRODUCT_CODE)
      values
        (:new.PRODUCT_CODE)
      ;
    else
      insert into CONCRETE_PRODUCTS
        (PRODUCT_CODE)
      values
        (:new.PRODUCT_CODE)
      ;
    end if;
     
  end if;
end tr_P_AIU_IS_GROUP_IS_COMMON;
/
