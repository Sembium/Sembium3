create or replace trigger tr_SD_BIU_CHECK_BOIO_CONS_DEPT
  before insert or update on STORE_DEALS  
  for each row
declare
  IncorrectDept Number;
begin
  if (:new.STORNO_EMPLOYEE_CODE is null) and (:new.BND_PROCESS_CODE = 190) then
    
    select
      Sign(Count(*))
    into
      IncorrectDept
    from
      BOI_ORDERS boio,
      BUDGET_ORDER_ITEMS boi
    where
      (boio.BOI_ORDER_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE) and
      (boio.BOI_ORDER_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE) and
      
      (boi.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_ORDER_BRANCH_CODE) and
      (boi.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_CODE) and
      (boi.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_ORDER_ITEM_CODE) and
    
      (boio.BOI_ORDER_TYPE_CODE = FinanceConsts.boiProduct) and 
      
      ( ( (boi.BOI_DISTRIBUTION_TYPE_CODE = FinanceConsts.boidtLocal) and 
          (boio.CONSUMER_DEPT_CODE <> :new.DEPT_CODE)
        ) or
        ( (boi.BOI_DISTRIBUTION_TYPE_CODE = FinanceConsts.boidtCentralized) and 
          (boio.CONSUMER_DEPT_CODE <> :new.DEPT_CODE)
        ) or
        ( (boi.BOI_DISTRIBUTION_TYPE_CODE = FinanceConsts.boidtDistributed) and  
          not exists(
            select
              1
            from
              DEPT_RELATIONS dr
            where
              (dr.ANCESTOR_DEPT_CODE = boio.CONSUMER_DEPT_CODE) and
              (dr.DESCENDANT_DEPT_CODE = :new.DEPT_CODE)
          ) and
          (boio.CONSUMER_DEPT_CODE <> :new.DEPT_CODE)
        ) 
      );
            
    if (IncorrectDept = 1) then
      raise_application_error(-20000, ServerMessages.SSDIncorrectBOIOConsumerDept);
    end if;
      
  end if;
  
end tr_SD_BIU_CHECK_BOIO_CONS_DEPT;
/
