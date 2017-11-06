create or replace trigger tr_MMFE_IIU
  instead of insert or update on MODEL_MOVEMENTS_FOR_EDIT
  for each row
begin
  if not StateUtils.InMmfeUpdate then
    StateUtils.BeginMmfeUpdate;
    begin    
      -- stornirane na starite predavania
      if (:old.MM_BRANCH_CODE is not null) then
      
        update
          MODEL_MOVEMENTS mm
        set
          mm.STORNO_EMPLOYEE_CODE = LoginContext.UserCode,
          mm.STORNO_DATE = ContextDate,
          mm.STORNO_TIME = ContextTime,
          mm.STORE_DEAL_OBJECT_BRANCH_CODE = null,
          mm.STORE_DEAL_OBJECT_CODE = null
        where
          (mm.MM_BRANCH_CODE = :old.MM_BRANCH_CODE) and
          (mm.MM_CODE = :old.MM_CODE)
        ;
      
      end if;
      

      -- insertvane na novite danni, ako e novo ili stornirane SUS ostavane na ekran
      if (:old.MM_BRANCH_CODE is null) or
         (:new.STORNO_EMPLOYEE_CODE is null) then
        
        insert into MODEL_MOVEMENTS (
          MM_BRANCH_CODE, 
          MM_CODE, 
          MODEL_MOVEMENT_TYPE_CODE, 
          FROM_MLMS_OBJECT_BRANCH_CODE, 
          FROM_MLMS_OBJECT_CODE, 
          TO_DEPT_CODE, 
          MM_DATE, 
          DETAIL_TECH_QUANTITY, 
          FROM_EMPLOYEE_CODE, 
          TO_EMPLOYEE_CODE, 
          QA_EMPLOYEE_CODE, 
          STORNO_EMPLOYEE_CODE, 
          STORNO_DATE, 
          STORNO_TIME, 
          CREATE_EMPLOYEE_CODE, 
          CREATE_DATE, 
          CREATE_TIME, 
          WASTE_DOC_NO, 
          WASTE_DOC_DATE, 
          DETAIL_TECH_QUANTITY_OFFERED, 
          STORE_DEAL_OBJECT_BRANCH_CODE, 
          STORE_DEAL_OBJECT_CODE, 
          REPLACED_MM_BRANCH_CODE, 
          REPLACED_MM_CODE, 
          OM_BRANCH_CODE,
          OM_CODE
        )
        values (
          :new.MM_BRANCH_CODE,
          Decode(:new.MM_CODE, 
            :old.MM_CODE, seq_MODEL_MOVEMENTS.NextVal,
            null, seq_MODEL_MOVEMENTS.NextVal,
            :new.MM_CODE
          ),
          :new.MODEL_MOVEMENT_TYPE_CODE, 
          :new.FROM_MLMS_OBJECT_BRANCH_CODE, 
          :new.FROM_MLMS_OBJECT_CODE, 
          :new.TO_DEPT_CODE, 
          :new.MM_DATE, 
          :new.DETAIL_TECH_QUANTITY,
          :new.FROM_EMPLOYEE_CODE, 
          :new.TO_EMPLOYEE_CODE, 
          :new.QA_EMPLOYEE_CODE, 
          :new.STORNO_EMPLOYEE_CODE, 
          :new.STORNO_DATE, 
          :new.STORNO_TIME, 
          :new.CREATE_EMPLOYEE_CODE, 
          :new.CREATE_DATE, 
          :new.CREATE_TIME, 
          :new.WASTE_DOC_NO, 
          :new.WASTE_DOC_DATE, 
          :new.DETAIL_TECH_QUANTITY_OFFERED,
          :new.STORE_DEAL_OBJECT_BRANCH_CODE,
          :new.STORE_DEAL_OBJECT_CODE,
          :old.MM_BRANCH_CODE,
          :old.MM_CODE,
          :new.OM_BRANCH_CODE,
          :new.OM_CODE
        );

      end if;
     
    exception
      when others then
        StateUtils.EndMmfeUpdate;
        raise;
    end;
    StateUtils.EndMmfeUpdate;
  end if;
    
end tr_MMFE_IIU;
/
