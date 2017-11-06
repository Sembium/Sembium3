create or replace trigger tr_SDFE_ID
  instead of delete on STORE_DEALS_FOR_EDIT
  for each row
begin
  StateUtils.BeginSdfeUpdate;
  begin
    -- cascade
    delete
      OPERATION_MOVEMENTS_FOR_EDIT om
    where
      (om.STORE_DEAL_OBJECT_BRANCH_CODE = :old.STORE_DEAL_OBJECT_BRANCH_CODE) and
      (om.STORE_DEAL_OBJECT_CODE = :old.STORE_DEAL_OBJECT_CODE);
    
    
    -- delete associated store deals
    for x in
      ( select
          sd2.STORE_DEAL_OBJECT_BRANCH_CODE,
          sd2.STORE_DEAL_OBJECT_CODE
        from
          STORE_DEALS sd2
        where
          (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = :old.STORE_DEAL_OBJECT_BRANCH_CODE) and
          (sd2.BND_PROCESS_OBJECT_CODE = :old.STORE_DEAL_OBJECT_CODE)
      )
    loop
          
      delete
        STORE_DEALS_FOR_EDIT sd
      where
        (sd.STORE_DEAL_OBJECT_BRANCH_CODE = x.STORE_DEAL_OBJECT_BRANCH_CODE) and
        (sd.STORE_DEAL_OBJECT_CODE = x.STORE_DEAL_OBJECT_CODE);
                
      delete
        PROCESS_OBJECTS po
      where
        (po.PROCESS_OBJECT_BRANCH_CODE = x.STORE_DEAL_OBJECT_BRANCH_CODE) and
        (po.PROCESS_OBJECT_CODE = x.STORE_DEAL_OBJECT_CODE);
        
    end loop;
    
    
    -- delete STORE_DEALS
    delete
      STORE_DEALS sd
    where
      (sd.STORE_DEAL_OBJECT_BRANCH_CODE = :old.STORE_DEAL_OBJECT_BRANCH_CODE) and
      (sd.STORE_DEAL_OBJECT_CODE = :old.STORE_DEAL_OBJECT_CODE);

        
    -- delete DOC
    if (:old.DOC_BRANCH_CODE is not null) and
       (:old.DOC_CODE is not null) then
         
      delete
        DOCS_FOR_EDIT dfe
      where
       (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
       (dfe.DOC_CODE = :old.DOC_CODE) and
         
       not exists(
         select
           1
         from
           STORE_DEALS sd
         where
           (sd.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
           (sd.DOC_CODE = :old.DOC_CODE)
       );
         
    end if;

      
    -- ReCalc And ReAggr Store Deals
    if (:old.STORNO_EMPLOYEE_CODE is null) then
      StoreUtils.ReCalcAndReAggrStoreDeals(
        :old.PRODUCT_CODE,
        :old.STORE_CODE,
        :old.STORE_DEAL_DATE
      );
    end if;
  exception
    when others then
      StateUtils.EndSdfeUpdate;
      raise;
  end;
  StateUtils.EndSdfeUpdate;

end tr_SDFE_ID;
/
