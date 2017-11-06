create or replace trigger tr_S_BIU_CHECK_SOT
  before insert or update on SALES
  for each row
declare
  BadSaleGroupCount integer;
  BadSaleRequestGroupCount integer;
begin
  -- check SALE_GROUPS
  select
    Count(*)
  into
    BadSaleGroupCount
  from
    SALE_GROUPS sg
  where
    (sg.SALE_GROUP_OBJECT_BRANCH_CODE = :new.SALE_GROUP_OBJECT_BRANCH_CODE) and
    (sg.SALE_GROUP_OBJECT_CODE = :new.SALE_GROUP_OBJECT_CODE) and
    (sg.SALE_ORDER_TYPE_CODE <> :new.SALE_ORDER_TYPE_CODE);

  if (BadSaleGroupCount > 0) then
    raise_application_error(-20000, 'Internal error: cannot insert or update S because (S.SALE_ORDER_TYPE_CODE <> SG.SALE_ORDER_TYPE_CODE)');
  end if;
  
  -- check SALE_REQUEST_GROUPS
  select
    Count(*)
  into
    BadSaleRequestGroupCount
  from
    SALE_REQUEST_GROUPS srg
  where
    (srg.REQUEST_BRANCH_CODE = :new.REQUEST_BRANCH_CODE) and
    (srg.REQUEST_NO = :new.REQUEST_NO) and
    (srg.SALE_ORDER_TYPE_CODE <> :new.SALE_ORDER_TYPE_CODE);

  if (BadSaleRequestGroupCount > 0) then
    raise_application_error(-20000, 'Internal error: cannot insert or update S because (S.SALE_ORDER_TYPE_CODE <> SRG.SALE_ORDER_TYPE_CODE)');
  end if;
end tr_S_BIU_CHECK_SOT;
/
