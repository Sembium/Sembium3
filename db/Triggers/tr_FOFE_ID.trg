create or replace trigger tr_FOFE_ID
  instead of delete on FIN_ORDERS_FOR_EDIT  
  for each row
begin

  if not StateUtils.InFofeUpdate then
    StateUtils.BeginFofeUpdate;
    begin
    
      if (:old.ANNUL_EMPLOYEE_CODE is null) then
        raise_application_error(-20002, ServerMessages.SCantDeleteFinOrderId);
      end if;
    
      delete
        RFML_FOR_EDIT rfml
      where
        (rfml.FIN_ORDER_CODE = :old.FIN_ORDER_CODE);
        
      delete
        FIN_ORDERS fo
      where
        (fo.FIN_ORDER_CODE = :old.FIN_ORDER_CODE);
        
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) then
        
        delete
          DOCS_FOR_EDIT dfe
        where
          (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
          (dfe.DOC_CODE = :old.DOC_CODE);
         
      end if;
      
    exception
      when others then
        StateUtils.EndFofeUpdate;
        raise;
    end;
    StateUtils.EndFofeUpdate;
  end if;
  
end tr_FOFE_ID;
/
