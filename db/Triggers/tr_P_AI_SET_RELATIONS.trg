create or replace trigger tr_P_AI_SET_RELATIONS
  after insert on PRODUCTS
  for each row
begin
  insert into PRODUCT_RELATIONS
    (
      ANCESTOR_PRODUCT_CODE,
      DESCENDANT_PRODUCT_CODE
    )
  values
    (
      :new.PRODUCT_CODE,
      :new.PRODUCT_CODE
    );
    
  insert into PRODUCT_RELATIONS
    (
      ANCESTOR_PRODUCT_CODE,
      DESCENDANT_PRODUCT_CODE
    )
  select
    pr.ANCESTOR_PRODUCT_CODE,
    :new.PRODUCT_CODE
  from
    PRODUCT_RELATIONS pr
  where
    (pr.DESCENDANT_PRODUCT_CODE = :new.PARENT_CODE);
    
end tr_P_AI_SET_RELATIONS;
/
