create or replace trigger tr_MLL_BU_CHECK_MLLC_ON_ANNUL
  before update on MATERIAL_LIST_LINES
  for each row
declare
  PendingRequestCount Integer;
  StoreDealCount Integer;
  ModelMovementCount Integer;
begin
  if ((:old.ANNUL_EMPLOYEE_CODE is null) <> (:new.ANNUL_EMPLOYEE_CODE is null)) then
    -- proverka za visiashti zameni
    select
      Count(mllc.MLL_OBJECT_CODE)
    into 
      PendingRequestCount
    from
      MATERIAL_LIST_LINE_CHANGES mllc
    where
      (mllc.MLL_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
      (mllc.MLL_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
      (mllc.REQUEST_EMPLOYEE_CODE is not null) and
      (mllc.REPLY_ACCEPT_EMPLOYEE_CODE is null);
      
    if (PendingRequestCount > 0) then
      raise_application_error(-20000, 'Internal error: Cannot annul a MATERIAL_LIST_LINE with pending change requests (MATERIAL_LIST_LINE_CHANGES)');
    end if;

    -- proverka za otcheteno teglene
    select
      Count(sd.STORE_DEAL_OBJECT_CODE)
    into
      StoreDealCount
    from
      STORE_DEALS sd
    where
      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
      (sd.BND_PROCESS_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
      (sd.STORNO_EMPLOYEE_CODE is null);
    
    if (StoreDealCount > 0) then
      raise_application_error(-20000, 'Internal error: Cannot annul a MATERIAL_LIST_LINE with store deals');
    end if;

    -- proverka za otcheteni predavania
    select
      Count(mm.MM_CODE)
    into
      ModelMovementCount
    from
      ML_MODEL_STAGES mlms,
      MODEL_MOVEMENTS mm
    where
      (mlms.MLL_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
      (mlms.MLL_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
      
      (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
      (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
    
      (mm.STORNO_EMPLOYEE_CODE is null);
    
    if (ModelMovementCount > 0) then
      raise_application_error(-20000, 'Internal error: Cannot annul a MATERIAL_LIST_LINE with model movements');
    end if;
  end if;
end tr_MLL_BU_CHECK_MLLC_ON_ANNUL;
/
