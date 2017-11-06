create or replace trigger tr_EDEFE_II
  instead of insert on EMP_DISCIPLINE_EVENTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InEdefeUpdate then
    StateUtils.BeginEdefeUpdate;
    begin
    
      insert into EMPLOYEE_DISCIPLINE_EVENTS
      (
        EMPLOYEE_CODE, 
        DISCIPLINE_EVENT_CODE, 
        DISC_EVENT_TYPE_CODE, 
        DISCIPLINE_EVENT_STATE_CODE,
        DISCIPLINE_EVENT_COMMENT, 
        DISCIPLINE_EVENT_DATE, 
        AUTHORIZE_EMPLOYEE_CODE, 
        DOC_BRANCH_CODE, 
        DOC_CODE, 
        CREATE_EMPLOYEE_CODE, 
        CREATE_DATE, 
        CREATE_TIME, 
        STORNO_EMPLOYEE_CODE, 
        STORNO_DATE, 
        STORNO_TIME, 
        OLD_DISCIPLINE_EVENT_CODE
      )
      values
      (
        :new.EMPLOYEE_CODE, 
        :new.DISCIPLINE_EVENT_CODE, 
        :new.DISC_EVENT_TYPE_CODE, 
        :new.DISCIPLINE_EVENT_STATE_CODE,
        :new.DISCIPLINE_EVENT_COMMENT, 
        :new.DISCIPLINE_EVENT_DATE, 
        :new.AUTHORIZE_EMPLOYEE_CODE, 
        :new.DOC_BRANCH_CODE, 
        :new.DOC_CODE, 
        :new.CREATE_EMPLOYEE_CODE, 
        :new.CREATE_DATE, 
        :new.CREATE_TIME, 
        :new.STORNO_EMPLOYEE_CODE, 
        :new.STORNO_DATE, 
        :new.STORNO_TIME, 
        :new.OLD_DISCIPLINE_EVENT_CODE
      );
    
    exception
      when others then
        StateUtils.EndEdefeUpdate;
        raise;
    end;
    StateUtils.EndEdefeUpdate;
  end if;

end tr_EDEFE_II;
/
