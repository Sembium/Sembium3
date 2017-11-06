create or replace trigger tr_OPBA_AU_UPD_OE_PRC_ACTIONS
  after update on OCC_PRC_BASE_ACTIONS
  for each row
begin

  update
    OE_PRC_BASE_ACTIONS oepba
  set
    oepba.BEGIN_DATE = :new.BEGIN_DATE,
    oepba.END_DATE = :new.END_DATE
  where
    (oepba.OCCUPATION_CODE = :new.OCCUPATION_CODE) and
    (oepba.PRC_FUNC_CODE = :new.PRC_FUNC_CODE) and
    (oepba.PRC_KNOWL_CODE = :new.PRC_KNOWL_CODE) and
    (oepba.PRC_BASE_OP_CODE = :new.PRC_BASE_OP_CODE) and
    (oepba.PRC_ACTION_CODE = :new.PRC_ACTION_CODE);

end tr_OPBA_AU_UPD_OE_PRC_ACTIONS;
/
