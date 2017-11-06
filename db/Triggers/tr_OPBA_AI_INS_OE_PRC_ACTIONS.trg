create or replace trigger tr_OPBA_AI_INS_OE_PRC_ACTIONS
  after insert on OCC_PRC_BASE_ACTIONS
  for each row
begin

  insert into OE_PRC_BASE_ACTIONS
  (
    OCCUPATION_EMPLOYEE_CODE,
    OCCUPATION_CODE,
    PRC_FUNC_CODE,
    PRC_KNOWL_CODE,
    PRC_BASE_OP_CODE,
    PRC_ACTION_CODE,
    BEGIN_DATE,
    END_DATE
  )
  select
    oe.OCCUPATION_EMPLOYEE_CODE,
    :new.OCCUPATION_CODE,
    :new.PRC_FUNC_CODE,
    :new.PRC_KNOWL_CODE,
    :new.PRC_BASE_OP_CODE,
    :new.PRC_ACTION_CODE,
    :new.BEGIN_DATE,
    :new.END_DATE
  from
    OCCUPATION_EMPLOYEES oe
  where
    (oe.OCCUPATION_CODE = :new.OCCUPATION_CODE);

end tr_OPBA_AI_INS_OE_PRC_ACTIONS;
/
