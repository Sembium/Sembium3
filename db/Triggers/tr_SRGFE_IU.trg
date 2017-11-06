create or replace trigger tr_SRGFE_IU
  instead of update on SALE_REQUEST_GROUPS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSrgfeUpdate then
    StateUtils.BeginSrgfeUpdate;
    begin
    
      if ( (:new.REQUEST_BRANCH_CODE <> :old.REQUEST_BRANCH_CODE) or 
           (:new.REQUEST_NO <> :old.REQUEST_NO) ) then
        raise_application_error(-20000, 'Internal error: SALE_REQUEST_GROUPS key should not be changed');
      end if;
      
      update
        SALE_REQUEST_GROUPS srg
      set
        srg.ANNUL_DATE = :new.ANNUL_DATE,
        srg.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE,
        srg.ANNUL_TIME = :new.ANNUL_TIME,
        srg.CHANGE_DATE = :new.CHANGE_DATE,
        srg.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
        srg.CHANGE_TIME = :new.CHANGE_TIME,
        srg.CREATE_DATE = :new.CREATE_DATE,
        srg.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
        srg.CREATE_TIME = :new.CREATE_TIME,
        srg.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        srg.DOC_CODE = :new.DOC_CODE,
        srg.FINISH_DATE = :new.FINISH_DATE,
        srg.FINISH_EMPLOYEE_CODE = :new.FINISH_EMPLOYEE_CODE,
        srg.FINISH_TIME = :new.FINISH_TIME,
        srg.SALE_GROUP_OBJECT_BRANCH_CODE = :new.SALE_GROUP_OBJECT_BRANCH_CODE,
        srg.SALE_GROUP_OBJECT_CODE = :new.SALE_GROUP_OBJECT_CODE,
        srg.SALE_ORDER_TYPE_CODE = :new.SALE_ORDER_TYPE_CODE,
        srg.SALE_DEAL_TYPE_CODE = :new.SALE_DEAL_TYPE_CODE,
        srg.IS_ACTIVATED_BY_CLIENT = :new.IS_ACTIVATED_BY_CLIENT,
        srg.REQUEST_SEND_DATE = :new.REQUEST_SEND_DATE,
        srg.REQUEST_REGISTER_DATE = :new.REQUEST_REGISTER_DATE,
        srg.CLIENT_COMPANY_CODE = :new.CLIENT_COMPANY_CODE,
        srg.MEDIATOR_COMPANY_CODE = :new.MEDIATOR_COMPANY_CODE,
        srg.SRG_EMPLOYEE_CODE = :new.SRG_EMPLOYEE_CODE,
        srg.CLIENT_REQUEST_GROUP_NO = :new.CLIENT_REQUEST_GROUP_NO,
        srg.STREAM_TYPE_CODE = :new.STREAM_TYPE_CODE,
        srg.PRODUCT_CLASS_CODE = :new.PRODUCT_CLASS_CODE,
        srg.NOTES = :new.NOTES
      where
        (srg.REQUEST_BRANCH_CODE = :old.REQUEST_BRANCH_CODE) and
        (srg.REQUEST_NO = :old.REQUEST_NO);
        
       
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
      
      if (:new.ANNUL_EMPLOYEE_CODE is not null) then

        update
          FIN_ORDERS_FOR_EDIT fo
        set
          fo.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE,
          fo.ANNUL_DATE = :new.ANNUL_DATE,
          fo.ANNUL_TIME = :new.ANNUL_TIME
        where
          (fo.BND_PROCESS_OBJECT_BRANCH_CODE = :new.SALE_GROUP_OBJECT_BRANCH_CODE) and
          (fo.BND_PROCESS_OBJECT_CODE = :new.SALE_GROUP_OBJECT_CODE) and
          (fo.ANNUL_EMPLOYEE_CODE is null);
          
      end if;
    
    exception
      when others then
        StateUtils.EndSrgfeUpdate;
        raise;
    end;
    StateUtils.EndSrgfeUpdate;
  end if;

end tr_SRGFE_IU;
/
