create or replace trigger tr_RFMLFE_ID
  instead of delete on RFML_FOR_EDIT  
  for each row
begin

  if not StateUtils.InRfmlfeUpdate then
    StateUtils.BeginRfmlfeUpdate;
    begin
    
      delete
        PLANNED_STORE_DEALS_FOR_EDIT psd
      where
        (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :old.RFML_OBJECT_BRANCH_CODE) and  
        (psd.BND_PROCESS_OBJECT_CODE = :old.RFML_OBJECT_CODE)
      ;
      
      delete
        REAL_FIN_MODEL_LINES rfml
      where
        (rfml.RFML_OBJECT_BRANCH_CODE = :old.RFML_OBJECT_BRANCH_CODE) and  
        (rfml.RFML_OBJECT_CODE = :old.RFML_OBJECT_CODE)
      ;
        
      delete
        PROCESS_OBJECTS po
      where
        (po.PROCESS_OBJECT_BRANCH_CODE = :old.RFML_OBJECT_BRANCH_CODE) and  
        (po.PROCESS_OBJECT_CODE = :old.RFML_OBJECT_CODE)
      ;

      FinanceUtils.UpdateFinOrderIsComplete(:old.FIN_ORDER_CODE);

    exception
      when others then
        StateUtils.EndRfmlfeUpdate;
        raise;
    end;
    StateUtils.EndRfmlfeUpdate;
  end if;
  
end tr_RFMLFE_ID;
/
