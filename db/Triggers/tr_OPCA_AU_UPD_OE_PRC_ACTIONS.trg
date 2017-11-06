create or replace trigger tr_OPCA_AU_UPD_OE_PRC_ACTIONS
  after update on OCC_PRC_CONCRETE_ACTIONS
  for each row
begin

  update
    OE_PRC_CONCRETE_ACTIONS oepca
  set
    oepca.BEGIN_DATE = :new.BEGIN_DATE,
    oepca.END_DATE = :new.END_DATE
  where
    (oepca.OCCUPATION_CODE = :new.OCCUPATION_CODE) and
    (oepca.PRC_FUNC_CODE = :new.PRC_FUNC_CODE) and
    (oepca.PRC_KNOWL_CODE = :new.PRC_KNOWL_CODE) and
    (oepca.PRC_BASE_OP_CODE = :new.PRC_BASE_OP_CODE) and
    (oepca.PRC_CONCRETE_OP_CODE = :new.PRC_CONCRETE_OP_CODE) and
    (oepca.PRC_ACTION_CODE = :new.PRC_ACTION_CODE);

end tr_OPCA_AU_UPD_OE_PRC_ACTIONS;
/
