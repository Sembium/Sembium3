create or replace trigger tr_ML_AU_UPDATE_PSD
  after update on MATERIAL_LISTS
  for each row
  
declare
  cursor MaterialListLinesPSDs is
    select
      psd.PLANNED_STORE_DEAL_BRANCH_CODE,
      psd.PLANNED_STORE_DEAL_CODE
    from
      MATERIAL_LIST_LINES mll,
      PLANNED_STORE_DEALS psd
    where
      (mll.MLL_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANCH_CODE) and
      (mll.MLL_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and
    
      (mll.ML_OBJECT_BRANCH_CODE = :old.ML_OBJECT_BRANCH_CODE) and
      (mll.ML_OBJECT_CODE = :old.ML_OBJECT_CODE);
  
begin
  if ( (:old.CLOSE_EMPLOYEE_CODE is null) and
       (:new.CLOSE_EMPLOYEE_CODE is not null) ) or
     ( (:old.ANNUL_EMPLOYEE_CODE is null) and
       (:new.ANNUL_EMPLOYEE_CODE is not null) ) then

    for MllPSD in MaterialListLinesPSDs loop
      update
        PLANNED_STORE_DEALS_FOR_EDIT psd
      set
        psd.CLOSE_EMPLOYEE_CODE = :new.CLOSE_EMPLOYEE_CODE,
        psd.CLOSE_DATE = :new.CLOSE_DATE,
        psd.CLOSE_TIME = :new.CLOSE_TIME,
        psd.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE,
        psd.ANNUL_DATE = :new.ANNUL_DATE,
        psd.ANNUL_TIME = :new.ANNUL_DATE            
      where
        (psd.PLANNED_STORE_DEAL_BRANCH_CODE = MllPSD.PLANNED_STORE_DEAL_BRANCH_CODE) and
        (psd.PLANNED_STORE_DEAL_CODE = MllPSD.PLANNED_STORE_DEAL_CODE);
    end loop;

  end if;
end tr_ML_AU_UPDATE_PSD;
/
