create or replace trigger tr_RFMLFE_IU
  instead of update on RFML_FOR_EDIT
  for each row
declare
  NewDocumentIdentifier Varchar2(50 char);
  NewDocumentDate Date;
begin

  if not StateUtils.InRfmlfeUpdate then
    StateUtils.BeginRfmlfeUpdate;
    begin
    
      if (:new.RFML_OBJECT_BRANCH_CODE <> :old.RFML_OBJECT_BRANCH_CODE) or
         (:new.RFML_OBJECT_CODE <> :old.RFML_OBJECT_CODE) then
        raise_application_error(-20000, 'Internal error: REAL_FIN_MODEL_LINES key should not be changed');
      end if;
      
      if (:new.OVERRIDE_DOCUMENT = 1) then
        NewDocumentIdentifier:= :new.DOCUMENT_IDENTIFIER;
        NewDocumentDate:= :new.DOCUMENT_DATE;
      else
        select
          fo.DOCUMENT_IDENTIFIER,
          fo.DOCUMENT_DATE
        into
          NewDocumentIdentifier,
          NewDocumentDate
        from
          FIN_ORDERS fo
        where
          (fo.FIN_ORDER_CODE = :new.FIN_ORDER_CODE);
      end if;
    
      update
        REAL_FIN_MODEL_LINES rfml
      set
        rfml.FIN_ORDER_CODE = :new.FIN_ORDER_CODE,
        rfml.PARTNER_CODE = :new.PARTNER_CODE,
        rfml.FIN_MODEL_LINE_TYPE_CODE = :new.FIN_MODEL_LINE_TYPE_CODE,
        rfml.FIN_MODEL_LINE_NO = :new.FIN_MODEL_LINE_NO,
        rfml.LINE_QUANTITY_PERCENT = :new.LINE_QUANTITY_PERCENT,
        rfml.MOVEMENT_OFFSET_DAYS = :new.MOVEMENT_OFFSET_DAYS,
        rfml.MOVEMENT_DURATION_DAYS = :new.MOVEMENT_DURATION_DAYS,
        rfml.IN_OUT = :new.IN_OUT,
        rfml.FIN_STORE_CODE = :new.FIN_STORE_CODE,
        rfml.PARTNER_ACCOUNT_CODE = :new.PARTNER_ACCOUNT_CODE,
        rfml.FIN_MODEL_LINE_REASON_CODE = :new.FIN_MODEL_LINE_REASON_CODE,
        rfml.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE,
        rfml.ANNUL_DATE = :new.ANNUL_DATE,
        rfml.ANNUL_TIME = :new.ANNUL_TIME,
        rfml.OVERRIDE_DOCUMENT = :new.OVERRIDE_DOCUMENT,
        rfml.DOCUMENT_IDENTIFIER = NewDocumentIdentifier,
        rfml.DOCUMENT_DATE = NewDocumentDate
      where
        (rfml.RFML_OBJECT_BRANCH_CODE = :old.RFML_OBJECT_BRANCH_CODE) and  
        (rfml.RFML_OBJECT_CODE = :old.RFML_OBJECT_CODE)
      ;
        
      FinanceUtils.UpdateRFMLPlannedStoreDeals(:old.RFML_OBJECT_BRANCH_CODE, :old.RFML_OBJECT_CODE);
  
    exception
      when others then
        StateUtils.EndRfmlfeUpdate;
        raise;
    end;
    StateUtils.EndRfmlfeUpdate;
  end if;

end tr_RFMLFE_IU;
/
