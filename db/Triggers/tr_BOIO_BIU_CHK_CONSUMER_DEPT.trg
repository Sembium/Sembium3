create or replace trigger tr_BOIO_BIU_CHK_CONSUMER_DEPT
  before insert or update on BOI_ORDERS
  for each row
declare
  BOIDeptCode Number;
  BOIDistributionTypeCode Number;
  DeptRelationExists Number;
begin

  select
    Max(boi.DEPT_CODE),
    Max(boi.BOI_DISTRIBUTION_TYPE_CODE)
  into
    BOIDeptCode,
    BOIDistributionTypeCode
  from
    BUDGET_ORDER_ITEMS boi
  where
    (boi.BUDGET_ORDER_BRANCH_CODE = :new.BUDGET_ORDER_BRANCH_CODE) and
    (boi.BUDGET_ORDER_CODE = :new.BUDGET_ORDER_CODE) and
    (boi.BUDGET_ORDER_ITEM_CODE = :new.BUDGET_ORDER_ITEM_CODE);

  select
    Sign(Count(*))
  into
    DeptRelationExists
  from
    DEPT_RELATIONS dr
  where
    (dr.ANCESTOR_DEPT_CODE = BOIDeptCode) and
    (dr.DESCENDANT_DEPT_CODE = :new.CONSUMER_DEPT_CODE);

  if (BOIDistributionTypeCode in (1, 3)) and (BOIDeptCode <> :new.CONSUMER_DEPT_CODE) then
    raise_application_error(-20001, ServerMessages.SBOIOConsumerMustMatchId);
  end if;

  if (BOIDistributionTypeCode = 2) and (DeptRelationExists = 0) then
    raise_application_error(-20001, ServerMessages.SBOIOConsumerMustDescendId);
  end if;

end tr_BOIO_BIU_CHK_CONSUMER_DEPT;
/
