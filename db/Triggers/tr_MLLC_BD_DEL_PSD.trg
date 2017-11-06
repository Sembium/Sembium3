create or replace trigger tr_MLLC_BD_DEL_PSD
  before delete on MATERIAL_LIST_LINE_CHANGES
  for each row
begin
  delete
    PLANNED_STORE_DEALS_FOR_EDIT psd
  where
    (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :old.MLL_OBJECT_BRANCH_CODE) and
    (psd.BND_PROCESS_OBJECT_CODE = :old.MLL_OBJECT_CODE) and
    (psd.PLANNED_STORE_DEAL_TYPE_CODE = 2) and
    (psd.IS_PLANNED_MANUALLY = 0);
end tr_MLLC_BD_DEL_PSD;
/
