create or replace trigger tr_P_BU_CHECK_PARAMS
  before update on PRODUCTS
  for each row
declare
  OldParentParamCount number;
  NewParentParamCount number;
  EqualParamCount number;
begin
  if (Coalesce(:old.PARENT_CODE, 0) <> Coalesce(:new.PARENT_CODE, 0)) then
    select
      Count(*)
    into
      OldParentParamCount
    from
      PRODUCT_PARAMS pp
    where
      (pp.PRODUCT_CODE = :old.PARENT_CODE);

    select
      Count(*)
    into
      NewParentParamCount
    from
      PRODUCT_PARAMS pp
    where
      (pp.PRODUCT_CODE = :new.PARENT_CODE);
      
    select
      Count(*)
    into
      EqualParamCount
    from
      (
        select
          PRODUCT_PARAM_CODE,
          PRODUCT_PARAM_NAME,
          PRODUCT_PARAM_ORDER_NO,
          VALUE_TYPE,
          NOM_CODE,
          VALUE_NOM_CODE,
          VALUE_NOM_ITEM_CODE,
          VALUE_FLOAT,
          VALUE_FLOAT_FORMAT,
          VALUE_FLOAT_RANGE_START,
          VALUE_FLOAT_RANGE_END,
          VALUE_STRING,
          ABBREV,
          PREFIX,
          SUFFIX,
          IS_REQUIRED,
          IS_PART_OF_NAME,
          IS_DEFINED,
          DOC_BRANCH_CODE,
          DOC_CODE
        from
          PRODUCT_PARAMS pp
        where
          (pp.PRODUCT_CODE = :old.PARENT_CODE)

        union

        select
          PRODUCT_PARAM_CODE,
          PRODUCT_PARAM_NAME,
          PRODUCT_PARAM_ORDER_NO,
          VALUE_TYPE,
          NOM_CODE,
          VALUE_NOM_CODE,
          VALUE_NOM_ITEM_CODE,
          VALUE_FLOAT,
          VALUE_FLOAT_FORMAT,
          VALUE_FLOAT_RANGE_START,
          VALUE_FLOAT_RANGE_END,
          VALUE_STRING,
          ABBREV,
          PREFIX,
          SUFFIX,
          IS_REQUIRED,
          IS_PART_OF_NAME,
          IS_DEFINED,
          DOC_BRANCH_CODE,
          DOC_CODE
        from
          PRODUCT_PARAMS pp
        where
          (pp.PRODUCT_CODE = :new.PARENT_CODE)
      );

    if (OldParentParamCount <> NewParentParamCount) or
       (OldParentParamCount <> EqualParamCount) then
      raise_application_error(-20000, ServerMessages.SInvalidProductParentParamsId);
    end if;
  end if;
end tr_P_BU_CHECK_PARAMS;
/
