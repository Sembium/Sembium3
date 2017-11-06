create or replace trigger tr_RFML_BD_DEL_PSD
  before delete on REAL_FIN_MODEL_LINES  
  for each row
begin
  delete
    PLANNED_STORE_DEALS_FOR_EDIT psd
  where
    (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :old.RFML_OBJECT_BRANCH_CODE) and  
    (psd.BND_PROCESS_OBJECT_CODE = :old.RFML_OBJECT_CODE)
  ;
end tr_RFML_BD_DEL_PSD;
/
