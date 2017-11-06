create or replace trigger tr_PFE_II
  instead of insert on PRODUCTS_FOR_EDIT
  for each row
declare
  IsOperatedBy MiscUtils.TBooleanArray;
  BorderRelTypePriorities MiscUtils.TNumberArray;
  BorderRelType Number;
begin

  if not StateUtils.InPfeUpdate then
    StateUtils.BeginPfeUpdate;
    begin
    
      insert into PRODUCTS
      (
        PRODUCT_CODE, 
        PARENT_CODE, 
        NAME, 
        CUSTOM_CODE, 
        MEASURE_CODE, 
        ACCOUNT_MEASURE_COEF, 
        ACCOUNT_MEASURE_CODE, 
        TECH_MEASURE_CODE, 
        TECH_MEASURE_COEF, 
        IS_VAT_FREE, 
        NAME_PREFIX, 
        NAME_SUFFIX, 
        NOTES, 
        IS_INACTIVE, 
        TRANSPORT_MEASURE_CODE, 
        TRANSPORT_MEASURE_COEF, 
        IS_GROUP, 
        SELF_EXISTENT_STATUS_CODE, 
        IS_PRODUCTION_PRODUCT, 
        DOC_BRANCH_CODE, 
        DOC_CODE, 
        TRANSIENT_STATUS_CODE, 
        WORKDAYS_TO_EXIST, 
        IS_COMMON, 
        IS_USED_BY_SALES, 
        IS_USED_BY_SALE_PRODUCTION, 
        IS_USED_BY_ENV_PRODUCTION, 
        IS_PROVIDED_BY_DELIVERIES, 
        IS_PROVIDED_BY_SALE_PRODUCTION, 
        IS_PROVIDED_BY_ENV_PRODUCTION, 
        USED_BY_SALES_PR_CODE, 
        USED_BY_SALE_PROD_PR_CODE, 
        USED_BY_ENV_PROD_PR_CODE, 
        PROV_BY_DELIVERIES_PR_CODE, 
        PROV_BY_SALE_PROD_PR_CODE, 
        PROV_BY_ENV_PROD_PR_CODE, 
        IS_THOROUGHLY_ENGINEERED, 
        PRODUCT_ORIGIN_CODE,
        PRODUCT_CLASS_CODE,
        BOI_ORDER_TYPE_CODE,
        BND_NORMAL_GROUP_PRODUCT_CODE,
        PRODUCT_SPEC_REQUIREMENT_CODE,
        IS_STRATEGIC,
        PARAMS_EXPORT_DATA
      )
      values
      (
        :new.PRODUCT_CODE, 
        :new.PARENT_CODE, 
        :new.NAME, 
        :new.CUSTOM_CODE, 
        :new.MEASURE_CODE, 
        :new.ACCOUNT_MEASURE_COEF, 
        :new.ACCOUNT_MEASURE_CODE, 
        :new.TECH_MEASURE_CODE, 
        :new.TECH_MEASURE_COEF, 
        Coalesce(:new.IS_VAT_FREE, 0),
        :new.NAME_PREFIX, 
        :new.NAME_SUFFIX, 
        :new.NOTES, 
        Coalesce(:new.IS_INACTIVE, 0),
        :new.TRANSPORT_MEASURE_CODE, 
        :new.TRANSPORT_MEASURE_COEF, 
        Coalesce(:new.IS_GROUP, 0),
        :new.SELF_EXISTENT_STATUS_CODE, 
        Coalesce(:new.IS_PRODUCTION_PRODUCT, 0),
        :new.DOC_BRANCH_CODE, 
        :new.DOC_CODE, 
        :new.TRANSIENT_STATUS_CODE, 
        :new.WORKDAYS_TO_EXIST, 
        Coalesce(:new.IS_COMMON, 0),
        Coalesce(:new.IS_USED_BY_SALES, 0),
        Coalesce(:new.IS_USED_BY_SALE_PRODUCTION, 0),
        Coalesce(:new.IS_USED_BY_ENV_PRODUCTION, 0),
        Coalesce(:new.IS_PROVIDED_BY_DELIVERIES, 0),
        Coalesce(:new.IS_PROVIDED_BY_SALE_PRODUCTION, 0),
        Coalesce(:new.IS_PROVIDED_BY_ENV_PRODUCTION, 0),
        :new.USED_BY_SALES_PR_CODE, 
        :new.USED_BY_SALE_PROD_PR_CODE, 
        :new.USED_BY_ENV_PROD_PR_CODE, 
        :new.PROV_BY_DELIVERIES_PR_CODE, 
        :new.PROV_BY_SALE_PROD_PR_CODE, 
        :new.PROV_BY_ENV_PROD_PR_CODE, 
        Coalesce(:new.IS_THOROUGHLY_ENGINEERED, 0),
        :new.PRODUCT_ORIGIN_CODE,
        Coalesce(:new.PRODUCT_CLASS_CODE, 1),
        :new.BOI_ORDER_TYPE_CODE,
        :new.BND_NORMAL_GROUP_PRODUCT_CODE,
        :new.PRODUCT_SPEC_REQUIREMENT_CODE,
        :new.IS_STRATEGIC,
        :new.PARAMS_EXPORT_DATA
      );
      

      -- product border rels    
      MiscUtils.InitializeBooleanArray(IsOperatedBy, 2);
      MiscUtils.InitializeNumberArray(BorderRelTypePriorities, 2);

      IsOperatedBy(CommonConsts.brtClient):= (:new.IS_USED_BY_SALES = 1);
      IsOperatedBy(CommonConsts.brtVendor):= (:new.IS_PROVIDED_BY_DELIVERIES = 1);

      BorderRelTypePriorities(CommonConsts.brtClient):= :new.USED_BY_SALES_PR_CODE;
      BorderRelTypePriorities(CommonConsts.brtVendor):= :new.PROV_BY_DELIVERIES_PR_CODE;
     
      -- process arrays
      for BorderRelType in CommonConsts.brtClient..CommonConsts.brtVendor loop
      
        if IsOperatedBy(BorderRelType) then
          
          insert into PRODUCT_BORDER_RELS
          (
            PRODUCT_CODE,
            BORDER_REL_TYPE_CODE,
            PRIORITY_CODE
          )
          values
          (
            :new.PRODUCT_CODE,
            BorderRelType,
            BorderRelTypePriorities(BorderRelType)
          );
          
        end if;
      
      end loop;
      
    exception
      when others then
        StateUtils.EndPfeUpdate;
        raise;
    end;
    StateUtils.EndPfeUpdate;
  end if;
    
end tr_PFE_II;
/
