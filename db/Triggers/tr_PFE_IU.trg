create or replace trigger tr_PFE_IU
  instead of update on PRODUCTS_FOR_EDIT
  for each row
declare
  HasInvalidProcessPosition Number;
  FirstInvalidProductNo Number;
  GroupThoroughlyEngineeredCount Number;
  OldIsOperatedBy MiscUtils.TBooleanArray;
  NewIsOperatedBy MiscUtils.TBooleanArray;
  BorderRelTypePriorities MiscUtils.TNumberArray;
  BorderRelType Number;
  IsCommonProductStrategic Number;
begin
  -- check process positions
  if (:new.IS_USED_BY_SALES <> :old.IS_USED_BY_SALES) or
     (:new.IS_USED_BY_SALE_PRODUCTION <> :old.IS_USED_BY_SALE_PRODUCTION) or
     (:new.IS_USED_BY_ENV_PRODUCTION <> :old.IS_USED_BY_ENV_PRODUCTION) or
     (:new.IS_PROVIDED_BY_DELIVERIES <> :old.IS_PROVIDED_BY_DELIVERIES) or
     (:new.IS_PROVIDED_BY_SALE_PRODUCTION <> :old.IS_PROVIDED_BY_SALE_PRODUCTION) or
     (:new.IS_PROVIDED_BY_ENV_PRODUCTION <> :old.IS_PROVIDED_BY_ENV_PRODUCTION) then
     
    select
      Count(*)
    into
      HasInvalidProcessPosition
    from
      DEFINITE_PRODUCTS dp,
      PRODUCTS cp
    where
      (dp.PRODUCT_CODE = :new.PRODUCT_CODE) and
      (cp.PRODUCT_CODE = dp.COMMON_PRODUCT_CODE) and
      
      ( (cp.IS_USED_BY_SALES < :new.IS_USED_BY_SALES) or
        (cp.IS_USED_BY_SALE_PRODUCTION < :new.IS_USED_BY_SALE_PRODUCTION) or
        (cp.IS_USED_BY_ENV_PRODUCTION < :new.IS_USED_BY_ENV_PRODUCTION) or
        (cp.IS_PROVIDED_BY_DELIVERIES < :new.IS_PROVIDED_BY_DELIVERIES) or
        (cp.IS_PROVIDED_BY_SALE_PRODUCTION < :new.IS_PROVIDED_BY_SALE_PRODUCTION) or
        (cp.IS_PROVIDED_BY_ENV_PRODUCTION < :new.IS_PROVIDED_BY_ENV_PRODUCTION)
      );
      
    if (HasInvalidProcessPosition > 0) then
      raise_application_error(-20002,
        ServerMessages.SInvalidProcessPositionsId || '(' ||
        'ProductNo:f=' || MessageUtils.InternalFloatToStr(:new.CUSTOM_CODE) || ')');
    end if;
      
    if (:new.IS_COMMON = 1) then
    
      select
        Min(dpp.CUSTOM_CODE)
      into
        FirstInvalidProductNo
      from
        DEFINITE_PRODUCTS dp,
        PRODUCTS dpp
      where
        (dp.COMMON_PRODUCT_CODE = :new.PRODUCT_CODE) and
        (dp.PRODUCT_CODE = dpp.PRODUCT_CODE) and
        
        ( (:new.IS_USED_BY_SALES < dpp.IS_USED_BY_SALES) or
          (:new.IS_USED_BY_SALE_PRODUCTION < dpp.IS_USED_BY_SALE_PRODUCTION) or
          (:new.IS_USED_BY_ENV_PRODUCTION < dpp.IS_USED_BY_ENV_PRODUCTION) or
          (:new.IS_PROVIDED_BY_DELIVERIES < dpp.IS_PROVIDED_BY_DELIVERIES) or
          (:new.IS_PROVIDED_BY_SALE_PRODUCTION < dpp.IS_PROVIDED_BY_SALE_PRODUCTION) or
          (:new.IS_PROVIDED_BY_ENV_PRODUCTION < dpp.IS_PROVIDED_BY_ENV_PRODUCTION)
        );

      if (FirstInvalidProductNo is not null) then
        raise_application_error(-20002,
          ServerMessages.SInvalidProcessPositionsId || '(' ||
          'ProductNo:f=' || MessageUtils.InternalFloatToStr(FirstInvalidProductNo) || ')');
      end if;
    
    end if;     

  end if; 
  --
  
  
  if (:old.IS_THOROUGHLY_ENGINEERED = 0) and (:new.IS_THOROUGHLY_ENGINEERED = 1) then
    
    select
      Count(*)
    into
      GroupThoroughlyEngineeredCount
    from
      DEFINITE_PRODUCTS dp,
      DEFINITE_PRODUCTS dp2,
      PRODUCTS p2
    where
      (dp.PRODUCT_CODE = :old.PRODUCT_CODE) and
      (dp2.COMMON_PRODUCT_CODE = dp.COMMON_PRODUCT_CODE) and
      (p2.PRODUCT_CODE = dp2.PRODUCT_CODE) and
      (p2.IS_THOROUGHLY_ENGINEERED = 1);
      
    if (GroupThoroughlyEngineeredCount > 0) then
      raise_application_error(-20002, ServerMessages.SThoroughlyEngineeredExistsId);
    end if;  
    
  end if;  
  
  
  if (:old.IS_COMMON = 1) and (:new.IS_COMMON = 0) then

    select
      Max(p.IS_STRATEGIC)
    into
      IsCommonProductStrategic
    from
      DEFINITE_PRODUCTS dp,
      PRODUCTS p
    where
      (dp.PRODUCT_CODE = :old.PRODUCT_CODE) and
      (dp.COMMON_PRODUCT_CODE = p.PRODUCT_CODE)
    ;

    if (IsCommonProductStrategic = 1) then
      raise_application_error(-20002, ServerMessages.SConcreteToStrategicStateId);
    end if;

  end if;


  if not StateUtils.InPfeUpdate then
    StateUtils.BeginPfeUpdate;
    begin

      if (:new.PRODUCT_CODE <> :old.PRODUCT_CODE) then
        raise_application_error(-20000, 'Internal error: PRODUCTS key should not be changed');
      end if;
    
      update
        PRODUCTS p
      set
        p.PARENT_CODE = :new.PARENT_CODE, 
        p.NAME = :new.NAME, 
        p.CUSTOM_CODE = :new.CUSTOM_CODE, 
        p.MEASURE_CODE = :new.MEASURE_CODE, 
        p.ACCOUNT_MEASURE_COEF = :new.ACCOUNT_MEASURE_COEF, 
        p.ACCOUNT_MEASURE_CODE = :new.ACCOUNT_MEASURE_CODE, 
        p.TECH_MEASURE_CODE = :new.TECH_MEASURE_CODE, 
        p.TECH_MEASURE_COEF = :new.TECH_MEASURE_COEF, 
        p.IS_VAT_FREE = :new.IS_VAT_FREE, 
        p.NAME_PREFIX = :new.NAME_PREFIX, 
        p.NAME_SUFFIX = :new.NAME_SUFFIX, 
        p.NOTES = :new.NOTES, 
        p.IS_INACTIVE = :new.IS_INACTIVE, 
        p.TRANSPORT_MEASURE_CODE = :new.TRANSPORT_MEASURE_CODE, 
        p.TRANSPORT_MEASURE_COEF = :new.TRANSPORT_MEASURE_COEF, 
        p.IS_GROUP = :new.IS_GROUP, 
        p.SELF_EXISTENT_STATUS_CODE = :new.SELF_EXISTENT_STATUS_CODE, 
        p.IS_PRODUCTION_PRODUCT = :new.IS_PRODUCTION_PRODUCT, 
        p.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE, 
        p.DOC_CODE = :new.DOC_CODE, 
        p.TRANSIENT_STATUS_CODE = :new.TRANSIENT_STATUS_CODE, 
        p.WORKDAYS_TO_EXIST = :new.WORKDAYS_TO_EXIST, 
        p.IS_COMMON = :new.IS_COMMON, 
        p.IS_USED_BY_SALES = :new.IS_USED_BY_SALES, 
        p.IS_USED_BY_SALE_PRODUCTION = :new.IS_USED_BY_SALE_PRODUCTION, 
        p.IS_USED_BY_ENV_PRODUCTION = :new.IS_USED_BY_ENV_PRODUCTION, 
        p.IS_PROVIDED_BY_DELIVERIES = :new.IS_PROVIDED_BY_DELIVERIES, 
        p.IS_PROVIDED_BY_SALE_PRODUCTION = :new.IS_PROVIDED_BY_SALE_PRODUCTION, 
        p.IS_PROVIDED_BY_ENV_PRODUCTION = :new.IS_PROVIDED_BY_ENV_PRODUCTION, 
        p.USED_BY_SALES_PR_CODE = :new.USED_BY_SALES_PR_CODE, 
        p.USED_BY_SALE_PROD_PR_CODE = :new.USED_BY_SALE_PROD_PR_CODE, 
        p.USED_BY_ENV_PROD_PR_CODE = :new.USED_BY_ENV_PROD_PR_CODE, 
        p.PROV_BY_DELIVERIES_PR_CODE = :new.PROV_BY_DELIVERIES_PR_CODE, 
        p.PROV_BY_SALE_PROD_PR_CODE = :new.PROV_BY_SALE_PROD_PR_CODE, 
        p.PROV_BY_ENV_PROD_PR_CODE = :new.PROV_BY_ENV_PROD_PR_CODE, 
        p.IS_THOROUGHLY_ENGINEERED = :new.IS_THOROUGHLY_ENGINEERED, 
        p.PRODUCT_ORIGIN_CODE = :new.PRODUCT_ORIGIN_CODE,
        p.PRODUCT_CLASS_CODE = Coalesce(:new.PRODUCT_CLASS_CODE, Nvl2(:new.PARENT_CODE, 1, null)),
        p.BOI_ORDER_TYPE_CODE = :new.BOI_ORDER_TYPE_CODE,
        p.BND_NORMAL_GROUP_PRODUCT_CODE = :new.BND_NORMAL_GROUP_PRODUCT_CODE,
        p.PRODUCT_SPEC_REQUIREMENT_CODE = :new.PRODUCT_SPEC_REQUIREMENT_CODE,
        p.IS_STRATEGIC = :new.IS_STRATEGIC,
        p.PARAMS_EXPORT_DATA = :new.PARAMS_EXPORT_DATA
      where
        (p.PRODUCT_CODE = :old.PRODUCT_CODE)
      ;
      
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

      -- product border rels    
      MiscUtils.InitializeBooleanArray(OldIsOperatedBy, 2);
      MiscUtils.InitializeBooleanArray(NewIsOperatedBy, 2);
      MiscUtils.InitializeNumberArray(BorderRelTypePriorities, 2);

      OldIsOperatedBy(CommonConsts.brtClient):= (:old.IS_USED_BY_SALES = 1);
      OldIsOperatedBy(CommonConsts.brtVendor):= (:old.IS_PROVIDED_BY_DELIVERIES = 1);
      NewIsOperatedBy(CommonConsts.brtClient):= (:new.IS_USED_BY_SALES = 1);
      NewIsOperatedBy(CommonConsts.brtVendor):= (:new.IS_PROVIDED_BY_DELIVERIES = 1);

      BorderRelTypePriorities(CommonConsts.brtClient):= :new.USED_BY_SALES_PR_CODE;
      BorderRelTypePriorities(CommonConsts.brtVendor):= :new.PROV_BY_DELIVERIES_PR_CODE;
     
      -- process arrays
      for BorderRelType in CommonConsts.brtClient..CommonConsts.brtVendor loop
      
        if (not OldIsOperatedBy(BorderRelType)) and NewIsOperatedBy(BorderRelType) then
        
          insert into PRODUCT_BORDER_RELS
          (
            PRODUCT_CODE,
            BORDER_REL_TYPE_CODE,
            PRIORITY_CODE
          )
          values
          (
            :old.PRODUCT_CODE,
            BorderRelType,
            BorderRelTypePriorities(BorderRelType)
          );
        end if;
      
        if OldIsOperatedBy(BorderRelType) and NewIsOperatedBy(BorderRelType) then
          update
            PRODUCT_BORDER_RELS pbr
          set
            pbr.PRIORITY_CODE = BorderRelTypePriorities(BorderRelType)
          where
            (pbr.PRODUCT_CODE = :old.PRODUCT_CODE) and
            (pbr.BORDER_REL_TYPE_CODE = BorderRelType);
        end if;
        
        if OldIsOperatedBy(BorderRelType) and (not NewIsOperatedBy(BorderRelType)) then
          delete
            PRODUCT_BORDER_RELS pbr
          where
            (pbr.PRODUCT_CODE = :old.PRODUCT_CODE) and
            (pbr.BORDER_REL_TYPE_CODE = BorderRelType);
        end if;
        
      end loop;
      
    exception
      when others then
        StateUtils.EndPfeUpdate;
        raise;
    end;
    StateUtils.EndPfeUpdate;
  end if;
    
end tr_PFE_IU;
/
