create or replace trigger tr_SRG_BIU_CHECK_SOT
  before insert or update on SALE_REQUEST_GROUPS
  for each row
declare
  BadSaleCount integer;
  BadSaleGroupCount integer;
begin
  -- check SALES
  select
    Count(*)
  into
    BadSaleCount
  from
    SALES s
  where
    (s.REQUEST_BRANCH_CODE = :new.REQUEST_BRANCH_CODE) and
    (s.REQUEST_NO = :new.REQUEST_NO) and
    (s.SALE_ORDER_TYPE_CODE <> :new.SALE_ORDER_TYPE_CODE);

  if (BadSaleCount > 0) then
    raise_application_error(-20000, 'Internal error: cannot insert or update SRG because (SRG.SALE_ORDER_TYPE_CODE <> S.SALE_ORDER_TYPE_CODE)');
  end if;
  
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
    raise_application_error(-20000, 'Internal error: cannot insert or update SRG because (SRG.SALE_ORDER_TYPE_CODE <> SG.SALE_ORDER_TYPE_CODE)');
  end if;
end tr_SRG_BIU_CHECK_SOT;
/
