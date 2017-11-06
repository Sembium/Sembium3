create or replace trigger tr_RFMLFE_II
  instead of insert on RFML_FOR_EDIT
  for each row
declare
  NewDocumentIdentifier Varchar2(50 char);
  NewDocumentDate Date;
begin

  if not StateUtils.InRfmlfeUpdate then
    StateUtils.BeginRfmlfeUpdate;
    begin
    
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
    
      insert into REAL_FIN_MODEL_LINES
      (
        RFML_OBJECT_BRANCH_CODE, 
        RFML_OBJECT_CODE, 
        FIN_ORDER_CODE, 
        PARTNER_CODE, 
        FIN_MODEL_LINE_TYPE_CODE, 
        FIN_MODEL_LINE_NO, 
        LINE_QUANTITY_PERCENT, 
        MOVEMENT_OFFSET_DAYS, 
        MOVEMENT_DURATION_DAYS, 
        IN_OUT, 
        FIN_STORE_CODE, 
        PARTNER_ACCOUNT_CODE, 
        FIN_MODEL_LINE_REASON_CODE, 
        ANNUL_EMPLOYEE_CODE, 
        ANNUL_DATE, 
        ANNUL_TIME,
        OVERRIDE_DOCUMENT,
        DOCUMENT_IDENTIFIER,
        DOCUMENT_DATE
      )
      values
      (
        :new.RFML_OBJECT_BRANCH_CODE, 
        :new.RFML_OBJECT_CODE, 
        :new.FIN_ORDER_CODE, 
        :new.PARTNER_CODE, 
        :new.FIN_MODEL_LINE_TYPE_CODE, 
        :new.FIN_MODEL_LINE_NO, 
        :new.LINE_QUANTITY_PERCENT, 
        :new.MOVEMENT_OFFSET_DAYS, 
        :new.MOVEMENT_DURATION_DAYS, 
        :new.IN_OUT, 
        :new.FIN_STORE_CODE, 
        :new.PARTNER_ACCOUNT_CODE, 
        :new.FIN_MODEL_LINE_REASON_CODE, 
        :new.ANNUL_EMPLOYEE_CODE, 
        :new.ANNUL_DATE, 
        :new.ANNUL_TIME,
        :new.OVERRIDE_DOCUMENT,
        NewDocumentIdentifier,
        NewDocumentDate
      );
    
    exception
      when others then
        StateUtils.EndRfmlfeUpdate;
        raise;
    end;
    StateUtils.EndRfmlfeUpdate;
  end if;

end tr_RFMLFE_II;
/
