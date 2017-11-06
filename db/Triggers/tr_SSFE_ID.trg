create or replace trigger tr_SSFE_ID
  instead of delete on SALE_SHIPMENTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSsfeUpdate then
    StateUtils.BeginSsfeUpdate;
    begin
    
      delete
        FIN_ORDERS_FOR_EDIT fo
      where
        (fo.BND_PROCESS_OBJECT_BRANCH_CODE = :old.SHIPMENT_OBJECT_BRANCH_CODE) and
        (fo.BND_PROCESS_OBJECT_CODE = :old.SHIPMENT_OBJECT_CODE);
        
      delete
        SALE_SHIPMENTS ss
      where
        (ss.SHIPMENT_OBJECT_BRANCH_CODE = :old.SHIPMENT_OBJECT_BRANCH_CODE) and
        (ss.SHIPMENT_OBJECT_CODE = :old.SHIPMENT_OBJECT_CODE);
        
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) then
        
        delete
          DOCS_FOR_EDIT dfe
        where
          (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
          (dfe.DOC_CODE = :old.DOC_CODE);
         
      end if;
      
      update
        FIN_ORDERS_FOR_EDIT fo
      set
        fo.BASE_QUANTITY =
          ( select
              Sum(Coalesce(ss2.QUANTITY, ss2.PLAN_QUANTITY) * s2.SINGLE_PRICE)
            from
              SALES s,
              SALES s2,
              SALE_SHIPMENTS ss2
            where
              (s.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
              (s.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE) and              
                
              (s.SALE_GROUP_OBJECT_BRANCH_CODE = s2.SALE_GROUP_OBJECT_BRANCH_CODE) and
              (s.SALE_GROUP_OBJECT_CODE = s2.SALE_GROUP_OBJECT_CODE) and

              (s2.SALE_OBJECT_BRANCH_CODE = ss2.SALE_OBJECT_BRANCH_CODE) and
              (s2.SALE_OBJECT_CODE = ss2.SALE_OBJECT_CODE) and              
                
              (s2.ANNUL_EMPLOYEE_CODE is null)
          )
        
      where
        ( (fo.BND_PROCESS_OBJECT_BRANCH_CODE, fo.BND_PROCESS_OBJECT_CODE) =
          ( select
              s.SALE_GROUP_OBJECT_BRANCH_CODE,
              s.SALE_GROUP_OBJECT_CODE
            from
              SALES s
            where
              (s.SALE_OBJECT_BRANCH_CODE = :old.SALE_OBJECT_BRANCH_CODE) and
              (s.SALE_OBJECT_CODE = :old.SALE_OBJECT_CODE)
          )
        ) and
        (fo.ANNUL_EMPLOYEE_CODE is null)
      ;

    exception
      when others then
        StateUtils.EndSsfeUpdate;
        raise;
    end;
    StateUtils.EndSsfeUpdate;
  end if;
  
end tr_SSFE_ID;
/
