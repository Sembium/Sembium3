create or replace trigger tr_SG_BIU_CHECK_SOT
  before insert or update on SALE_GROUPS
  for each row
declare
  BadSaleCount integer;
  BadSaleRequestGroupCount integer;
begin
  -- check SALES
  select
    Count(*)
  into
    BadSaleCount
  from
    SALES s
  where
    (s.SALE_GROUP_OBJECT_BRANCH_CODE = :new.SALE_GROUP_OBJECT_BRANCH_CODE) and
    (s.SALE_GROUP_OBJECT_CODE = :new.SALE_GROUP_OBJECT_CODE) and
    (s.SALE_ORDER_TYPE_CODE <> :new.SALE_ORDER_TYPE_CODE);

  if (BadSaleCount > 0) then
    raise_application_error(-20000, 'Internal error: cannot insert or update SG because (SG.SALE_ORDER_TYPE_CODE <> S.SALE_ORDER_TYPE_CODE)');
  end if;
  
  -- check SALE_REQUEST_GROUPS
  select
    Count(*)
  into
    BadSaleRequestGroupCount
  from
    SALE_REQUEST_GROUPS srg
  where
    (srg.SALE_GROUP_OBJECT_BRANCH_CODE = :new.SALE_GROUP_OBJECT_BRANCH_CODE) and
    (srg.SALE_GROUP_OBJECT_CODE = :new.SALE_GROUP_OBJECT_CODE) and
    (srg.SALE_ORDER_TYPE_CODE <> :new.SALE_ORDER_TYPE_CODE);

  if (BadSaleRequestGroupCount > 0) then
    raise_application_error(-20000, 'Internal error: cannot insert or update SG because (SG.SALE_ORDER_TYPE_CODE <> SRG.SALE_ORDER_TYPE_CODE)');
  end if;
end tr_SG_BIU_CHECK_SOT;
/
