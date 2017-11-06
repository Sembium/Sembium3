create or replace trigger tr_EMOVFE_IU
  instead of update on EMP_MOVEMENTS_FOR_EDIT
  for each row
declare
  StornoEmpMovementCode Number := null;
begin

  if not StateUtils.InEmovfeUpdate then
    StateUtils.BeginEmovfeUpdate;
    begin
    
      if (:new.EMP_MOVEMENT_CODE <> :old.EMP_MOVEMENT_CODE) then
        raise_application_error(-20000, 'Internal error: EMP_MOVEMENTS key should not be changed');
      end if;


      if (:new.STORNO_EMPLOYEE_CODE is not null) then  -- bez ostavane na ekran

        -- purvo, markirame kato stornirano, che da moje da se trie
        update
          EMP_MOVEMENTS em
        set
          em.STORNO_EMPLOYEE_CODE = LoginContext.UserCode, 
          em.STORNO_DATE = ContextDate, 
          em.STORNO_TIME = ContextTime
        where
          (em.EMP_MOVEMENT_CODE = :old.EMP_MOVEMENT_CODE);

        -- posle iztrivame da e sigurno, che niama nikoi da sochi kum nego      
        delete
          EMP_MOVEMENTS em
        where
          (em.EMP_MOVEMENT_CODE = :old.EMP_MOVEMENT_CODE);
      
      end if;
        

      -- insert-vame stornirano
      insert into EMP_MOVEMENTS
      (
        EMP_MOVEMENT_CODE, 
        EMPLOYEE_CODE, 
        IN_OUT, 
        EMP_MOVEMENT_DATE, 
        EMP_MOVEMENT_TIME, 
        EMP_MOVEMENT_DATE_TIME, 
        CREATE_EMPLOYEE_CODE, 
        CREATE_DATE, 
        CREATE_TIME, 
        STORNO_EMPLOYEE_CODE, 
        STORNO_DATE, 
        STORNO_TIME, 
        OLD_EMP_MOVEMENT_CODE      
      )
      values
      (
        Decode(:new.STORNO_EMPLOYEE_CODE, null, seq_EMP_MOVEMENTS.NextVal, :old.EMP_MOVEMENT_CODE),
        :old.EMPLOYEE_CODE, 
        :old.IN_OUT, 
        :old.EMP_MOVEMENT_DATE, 
        :old.EMP_MOVEMENT_TIME, 
        :old.EMP_MOVEMENT_DATE_TIME, 
        :old.CREATE_EMPLOYEE_CODE, 
        :old.CREATE_DATE, 
        :old.CREATE_TIME, 
        LoginContext.UserCode,
        ContextDate,
        ContextTime,
        null      
      )
      returning
        EMP_MOVEMENT_CODE
      into
        StornoEmpMovementCode;

      
      if (:new.STORNO_EMPLOYEE_CODE is null) then  -- s ostavane na ekran
      
        update
          EMP_MOVEMENTS em
        set
          em.EMPLOYEE_CODE = :new.EMPLOYEE_CODE, 
          em.IN_OUT = :new.IN_OUT, 
          em.EMP_MOVEMENT_DATE = :new.EMP_MOVEMENT_DATE, 
          em.EMP_MOVEMENT_TIME = :new.EMP_MOVEMENT_TIME, 
          em.EMP_MOVEMENT_DATE_TIME = :new.EMP_MOVEMENT_DATE_TIME, 
          em.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE, 
          em.CREATE_DATE = :new.CREATE_DATE, 
          em.CREATE_TIME = :new.CREATE_TIME,
          em.OLD_EMP_MOVEMENT_CODE = StornoEmpMovementCode
        where
          (em.EMP_MOVEMENT_CODE = :old.EMP_MOVEMENT_CODE);
          
        -- zadavame OLD_EMP_MOVEMENT_CODE na vmuknatoto stornirano sega, za da izbegnem uniqe index-a
        update
          EMP_MOVEMENTS em
        set
          em.OLD_EMP_MOVEMENT_CODE = :old.OLD_EMP_MOVEMENT_CODE
        where
          (em.EMP_MOVEMENT_CODE = StornoEmpMovementCode);
          
      end if;
      
    exception
      when others then
        StateUtils.EndEmovfeUpdate;
        raise;
    end;
    StateUtils.EndEmovfeUpdate;
  end if;

end tr_EMOVFE_IU;
/
