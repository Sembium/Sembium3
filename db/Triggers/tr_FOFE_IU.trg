create or replace trigger tr_FOFE_IU
  instead of update on FIN_ORDERS_FOR_EDIT
  for each row
declare
  HasStoreDeals Number;
  BaseDataChangedNow Number;
  FinProcessIsManuallyUsable Number;
begin

  if not StateUtils.InFofeUpdate then
    StateUtils.BeginFofeUpdate;
    begin
    
      if (:new.FIN_ORDER_CODE <> :old.FIN_ORDER_CODE) then
        raise_application_error(-20000, 'Internal error: FIN_ORDERS key should not be changed');
      end if;
      
      
      if (:old.ANNUL_EMPLOYEE_CODE is null) and (:new.ANNUL_EMPLOYEE_CODE is not null) then
      
        select
          Sign(Count(*))
        into
          HasStoreDeals
        from
          REAL_FIN_MODEL_LINES rfml,
          STORE_DEALS sd
        where
          (rfml.FIN_ORDER_CODE = :old.FIN_ORDER_CODE) and
          
          (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_BRANCH_CODE) and
          (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) and
          (sd.STORNO_EMPLOYEE_CODE is null);
      
        if (HasStoreDeals = 1) then
          raise_application_error(-20002, ServerMessages.SCantAnnulFinOrderId);
        end if;
      
      end if;
      
      select
        fp.IS_MANUALLY_USABLE
      into
        FinProcessIsManuallyUsable
      from
        FIN_PROCESSES fp
      where
        (fp.PROCESS_CODE = :old.FIN_PROCESS_CODE);      
      
      if (:old.ACTIVATE_EMPLOYEE_CODE is not null) and
         (FinProcessIsManuallyUsable = 0) and
         ( (:new.BASE_DATE <> :old.BASE_DATE) or
           (:new.BASE_FINANCIAL_PRODUCT_CODE <> :old.BASE_FINANCIAL_PRODUCT_CODE) or
           (:new.BASE_QUANTITY <> :old.BASE_QUANTITY) or
           (Coalesce(:new.DOCUMENT_IDENTIFIER, '') <> Coalesce(:old.DOCUMENT_IDENTIFIER, '')) or
           (Coalesce(:new.DOCUMENT_DATE, CommonConsts.MinDate) <> Coalesce(:old.DOCUMENT_DATE, CommonConsts.MinDate)) or
           ( (:old.BASE_DATA_CHANGED = 0) and (:new.BASE_DATA_CHANGED = 1) ) ) then
        BaseDataChangedNow:= 1;
      else
        BaseDataChangedNow:= 0;
      end if;      
      
      update
        FIN_ORDERS fo
      set
        fo.FIN_ORDER_BRANCH_CODE = :new.FIN_ORDER_BRANCH_CODE, 
        fo.FIN_ORDER_NO = :new.FIN_ORDER_NO, 
        fo.EXEC_DEPT_CODE = :new.EXEC_DEPT_CODE, 
        fo.PRIORITY_CODE = :new.PRIORITY_CODE, 
        fo.FIN_PROCESS_CODE = :new.FIN_PROCESS_CODE, 
        fo.BND_PROCESS_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE, 
        fo.BND_PROCESS_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE, 
        fo.PARTNER_CODE = :new.PARTNER_CODE, 
        fo.IN_OUT = :new.IN_OUT, 
        fo.BASE_DATE = :new.BASE_DATE, 
        fo.BASE_FINANCIAL_PRODUCT_CODE = :new.BASE_FINANCIAL_PRODUCT_CODE, 
        fo.BASE_QUANTITY = :new.BASE_QUANTITY, 
        fo.WORK_FINANCIAL_PRODUCT_CODE = :new.WORK_FINANCIAL_PRODUCT_CODE, 
        fo.FIN_CLASS_CODE = :new.FIN_CLASS_CODE, 
        fo.DOCUMENT_IDENTIFIER = :new.DOCUMENT_IDENTIFIER, 
        fo.DOCUMENT_DATE = :new.DOCUMENT_DATE, 
        fo.NOTES = :new.NOTES, 
        fo.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE, 
        fo.DOC_CODE = :new.DOC_CODE, 
        fo.ACTIVATE_EMPLOYEE_CODE = :new.ACTIVATE_EMPLOYEE_CODE, 
        fo.ACTIVATE_DATE = :new.ACTIVATE_DATE, 
        fo.ACTIVATE_TIME = :new.ACTIVATE_TIME, 
        fo.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE, 
        fo.CREATE_DATE = :new.CREATE_DATE, 
        fo.CREATE_TIME = :new.CREATE_TIME, 
        fo.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE, 
        fo.CHANGE_DATE = :new.CHANGE_DATE, 
        fo.CHANGE_TIME = :new.CHANGE_TIME,
        fo.CLOSE_EMPLOYEE_CODE = :new.CLOSE_EMPLOYEE_CODE, 
        fo.CLOSE_DATE = :new.CLOSE_DATE, 
        fo.CLOSE_TIME = :new.CLOSE_TIME, 
        fo.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE, 
        fo.ANNUL_DATE = :new.ANNUL_DATE, 
        fo.ANNUL_TIME = :new.ANNUL_TIME,
        fo.BASE_DATA_CHANGED = Decode(BaseDataChangedNow, 0, :new.BASE_DATA_CHANGED, 1),
        fo.BASE_DATA_CHANGE_EMPLOYEE_CODE = Decode(BaseDataChangedNow, 0, fo.BASE_DATA_CHANGE_EMPLOYEE_CODE, LoginContext.UserCode),
        fo.BASE_DATA_CHANGE_DATE = Decode(BaseDataChangedNow, 0, fo.BASE_DATA_CHANGE_DATE, ContextDate),
        fo.BASE_DATA_CHANGE_TIME = Decode(BaseDataChangedNow, 0, fo.BASE_DATA_CHANGE_TIME, ContextTime),
        fo.BDC_CONFIRM_EMPLOYEE_CODE = Decode(BaseDataChangedNow, 0, :new.BDC_CONFIRM_EMPLOYEE_CODE, null),
        fo.BDC_CONFIRM_DATE = Decode(BaseDataChangedNow, 0, :new.BDC_CONFIRM_DATE, null),
        fo.BDC_CONFIRM_TIME = Decode(BaseDataChangedNow, 0, :new.BDC_CONFIRM_TIME, null),
        fo.FM_MOVEMENT_OFFSET_TYPE_CODE = :new.FM_MOVEMENT_OFFSET_TYPE_CODE
      where
        (fo.FIN_ORDER_CODE = :old.FIN_ORDER_CODE);
        
      FinanceUtils.UpdateFinOrderIsComplete(:old.FIN_ORDER_CODE);
      

      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) and
         ( (:old.DOC_BRANCH_CODE <> Coalesce(:new.DOC_BRANCH_CODE, 0)) or
           (:old.DOC_CODE <> Coalesce(:new.DOC_CODE, 0)) ) then
         
         delete
           DOCS_FOR_EDIT dfe
         where
           (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
           (dfe.DOC_CODE = :old.DOC_CODE);
         
      end if;
    
      -- update line related fields
      if (:old.ANNUL_EMPLOYEE_CODE is null) and (:new.ANNUL_EMPLOYEE_CODE is not null) then

        update
          PLANNED_STORE_DEALS_FOR_EDIT psd
        set
          psd.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE,
          psd.ANNUL_DATE = :new.ANNUL_DATE,
          psd.ANNUL_TIME = :new.ANNUL_TIME
        where
          ( (psd.BND_PROCESS_OBJECT_BRANCH_CODE, psd.BND_PROCESS_OBJECT_CODE) in
            ( select
                rfml.RFML_OBJECT_BRANCH_CODE,
                rfml.RFML_OBJECT_CODE
              from
                REAL_FIN_MODEL_LINES rfml
              where
                (rfml.FIN_ORDER_CODE = :old.FIN_ORDER_CODE)
            )
          );

      else

        update
          RFML_FOR_EDIT rfml
        set
          rfml.FIN_MODEL_LINE_NO = rfml.FIN_MODEL_LINE_NO
        where
          (rfml.FIN_ORDER_CODE = :old.FIN_ORDER_CODE);

      end if;
        
    exception
      when others then
        StateUtils.EndFofeUpdate;
        raise;
    end;
    StateUtils.EndFofeUpdate;
  end if;

end tr_FOFE_IU;
/
