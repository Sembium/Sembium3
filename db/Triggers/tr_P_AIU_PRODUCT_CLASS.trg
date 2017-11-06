create or replace trigger tr_P_AIU_PRODUCT_CLASS
  after insert or update of PRODUCT_CLASS_CODE on PRODUCTS  
  for each row
begin
  -- delete old value categories
  if updating and
     (:old.PRODUCT_CLASS_CODE = CommonConsts.pcNormal) and
     (Coalesce(:new.PRODUCT_CLASS_CODE, 0) <> :old.PRODUCT_CLASS_CODE) then
     
   delete
     NORMAL_PRODUCTS np
   where
     (np.PRODUCT_CODE = :old.PRODUCT_CODE);
     
   delete
     NORMAL_OR_FINANCIAL_PRODUCTS nfp
   where
     (nfp.PRODUCT_CODE = :old.PRODUCT_CODE);
     
  end if;
  
  if updating and
     (:old.PRODUCT_CLASS_CODE = CommonConsts.pcFinancial) and
     (Coalesce(:new.PRODUCT_CLASS_CODE, 0) <> :old.PRODUCT_CLASS_CODE) then
     
   delete
     FINANCIAL_PRODUCTS fp
   where
     (fp.PRODUCT_CODE = :old.PRODUCT_CODE);
     
   delete
     NORMAL_OR_FINANCIAL_PRODUCTS nfp
   where
     (nfp.PRODUCT_CODE = :old.PRODUCT_CODE);
     
  end if;
  
  if updating and
     (:old.PRODUCT_CLASS_CODE = CommonConsts.pcBudget) and
     (Coalesce(:new.PRODUCT_CLASS_CODE, 0) <> :old.PRODUCT_CLASS_CODE) then
     
   delete
     BUDGET_PRODUCTS bp
   where
     (bp.PRODUCT_CODE = :old.PRODUCT_CODE);
     
  end if;

  -- insert new value categories
  if (:new.PRODUCT_CLASS_CODE = CommonConsts.pcNormal) and
     ( inserting or
       (:new.PRODUCT_CLASS_CODE <> Coalesce(:old.PRODUCT_CLASS_CODE, 0)) ) then
       
    insert into NORMAL_PRODUCTS 
    (PRODUCT_CODE) values (:new.PRODUCT_CODE);
       
    insert into NORMAL_OR_FINANCIAL_PRODUCTS 
    (PRODUCT_CODE) values (:new.PRODUCT_CODE);
       
  end if;
  
  if (:new.PRODUCT_CLASS_CODE = CommonConsts.pcFinancial) and
     ( inserting or
       (:new.PRODUCT_CLASS_CODE <> Coalesce(:old.PRODUCT_CLASS_CODE, 0)) ) then
       
    insert into FINANCIAL_PRODUCTS 
    (PRODUCT_CODE) values (:new.PRODUCT_CODE);
       
    insert into NORMAL_OR_FINANCIAL_PRODUCTS 
    (PRODUCT_CODE) values (:new.PRODUCT_CODE);
       
  end if;
  
  if (:new.PRODUCT_CLASS_CODE = CommonConsts.pcBudget) and
     ( inserting or
       (:new.PRODUCT_CLASS_CODE <> Coalesce(:old.PRODUCT_CLASS_CODE, 0)) ) then
       
    insert into BUDGET_PRODUCTS 
    (PRODUCT_CODE) values (:new.PRODUCT_CODE);

  end if;
  
end tr_P_AIU_PRODUCT_CLASS;
/
