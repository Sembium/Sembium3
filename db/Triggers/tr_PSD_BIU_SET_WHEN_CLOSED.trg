create or replace trigger tr_PSD_BIU_SET_WHEN_CLOSED
  before insert or update on PLANNED_STORE_DEALS  
  for each row
begin
  if (:new.CLOSE_EMPLOYEE_CODE is null) then
    :new.BRANCH_CODE_WHEN_CLOSED:= null;
    :new.CODE_WHEN_CLOSED:= null;
  else
    :new.BRANCH_CODE_WHEN_CLOSED:= :new.PLANNED_STORE_DEAL_BRANCH_CODE;
    :new.CODE_WHEN_CLOSED:= :new.PLANNED_STORE_DEAL_CODE;
  end if;  
end tr_PSD_BIU_SET_WHEN_CLOSED;
/
