create or replace trigger tr_EMOVFE_II
  instead of insert on EMP_MOVEMENTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InEmovfeUpdate then
    StateUtils.BeginEmovfeUpdate;
    begin
    
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
        :new.EMP_MOVEMENT_CODE, 
        :new.EMPLOYEE_CODE, 
        :new.IN_OUT, 
        :new.EMP_MOVEMENT_DATE, 
        :new.EMP_MOVEMENT_TIME, 
        :new.EMP_MOVEMENT_DATE_TIME, 
        :new.CREATE_EMPLOYEE_CODE, 
        :new.CREATE_DATE, 
        :new.CREATE_TIME, 
        :new.STORNO_EMPLOYEE_CODE, 
        :new.STORNO_DATE, 
        :new.STORNO_TIME, 
        :new.OLD_EMP_MOVEMENT_CODE      
      );
    
    exception
      when others then
        StateUtils.EndEmovfeUpdate;
        raise;
    end;
    StateUtils.EndEmovfeUpdate;
  end if;

end tr_EMOVFE_II;
/
