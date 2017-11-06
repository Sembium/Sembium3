create or replace trigger tr_BOI_BU_CHK_CONSUMER_DEPTS
  before update of DEPT_CODE, BOI_DISTRIBUTION_TYPE_CODE on BUDGET_ORDER_ITEMS
  for each row
declare
  DifferentConsumerDeptExists Number;
  NotDescendantConsDeptExists Number;
begin

  if (:new.BOI_DISTRIBUTION_TYPE_CODE in (1, 3)) then

    select
      Sign(Count(*))
    into
      DifferentConsumerDeptExists
    from
      BOI_ORDERS boio
    where
      (boio.BUDGET_ORDER_BRANCH_CODE = :new.BUDGET_ORDER_BRANCH_CODE) and
      (boio.BUDGET_ORDER_CODE = :new.BUDGET_ORDER_CODE) and
      (boio.BUDGET_ORDER_ITEM_CODE = :new.BUDGET_ORDER_ITEM_CODE) and

      (boio.CONSUMER_DEPT_CODE <> :new.DEPT_CODE);

    if (DifferentConsumerDeptExists = 1) then
      raise_application_error(-20001, ServerMessages.SDifferentConsumerDeptExistsId);
    end if;

  end if;

  if (:new.BOI_DISTRIBUTION_TYPE_CODE = 2) then

    select
      Sign(Count(*))
    into
      NotDescendantConsDeptExists
    from
      BOI_ORDERS boio
    where
      (boio.BUDGET_ORDER_BRANCH_CODE = :new.BUDGET_ORDER_BRANCH_CODE) and
      (boio.BUDGET_ORDER_CODE = :new.BUDGET_ORDER_CODE) and
      (boio.BUDGET_ORDER_ITEM_CODE = :new.BUDGET_ORDER_ITEM_CODE) and

      (not exists
        ( select
            1
          from
            DEPT_RELATIONS dr
          where
            (dr.ANCESTOR_DEPT_CODE = :new.DEPT_CODE) and
            (dr.DESCENDANT_DEPT_CODE = boio.CONSUMER_DEPT_CODE)
        )
      );

    if (NotDescendantConsDeptExists = 1) then
      raise_application_error(-20001, ServerMessages.SNotDescendantConsDeptExistsId);
    end if;

  end if;

end tr_BOI_BU_CHK_CONSUMER_DEPTS;
/
