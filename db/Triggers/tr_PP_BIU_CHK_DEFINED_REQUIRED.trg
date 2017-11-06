create or replace trigger tr_PP_BIU_CHK_DEFINED_REQUIRED
  before insert or update on PRODUCT_PARAMS
  for each row
declare
  ProductIsDefinite Integer;
  ProductName Varchar2(100 char);
  ProductNo Number;
begin
  if ( (:old.IS_DEFINED is null) or
       (:new.IS_DEFINED <> :old.IS_DEFINED) or
       (:new.IS_REQUIRED <> :old.IS_REQUIRED) ) and
     (:new.IS_DEFINED = 1) and
     (:new.IS_REQUIRED = 1) and
     (:new.VALUE_FLOAT is null) and
     (:new.VALUE_NOM_ITEM_CODE is null) and
     (:new.VALUE_STRING is null) then
    
    select
      Count(*)
    into
      ProductIsDefinite
    from
      DEFINITE_PRODUCTS dp
    where
      (dp.PRODUCT_CODE = :new.PRODUCT_CODE)
    ;
    
    if (ProductIsDefinite = 1) then
    
      select
        p.NAME,
        p.CUSTOM_CODE
      into
        ProductName,
        ProductNo
      from
        PRODUCTS p
      where
        (p.PRODUCT_CODE = :new.PRODUCT_CODE)
      ;
    
      raise_application_error(-20002, ServerMessages.SProductParamMustHaveValueId || '(' ||
        'ProductName:s=' || MessageUtils.InternalEncodeString(ProductName) || ',' ||
        'ProductNo:f=' || MessageUtils.InternalFloatToStr(ProductNo) || ',' ||
        'ProductParamName:s=' || MessageUtils.InternalEncodeString(:new.PRODUCT_PARAM_NAME) || ')'
      );
      
    end if;
    
  end if;
end tr_PP_BIU_CHK_DEFINED_REQUIRED;
/
