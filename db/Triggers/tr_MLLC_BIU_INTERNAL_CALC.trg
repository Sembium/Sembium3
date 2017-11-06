create or replace trigger tr_MLLC_BIU_INTERNAL_CALC
  before insert or update on MATERIAL_LIST_LINE_CHANGES
  for each row
begin
  if (:new.REPLY_ACCEPT_EMPLOYEE_CODE is null) then
    :new.REPLY_ACCEPT_MLL_CHANGE_NO:= null;
  else
    :new.REPLY_ACCEPT_MLL_CHANGE_NO:= :new.MATERIAL_LIST_LINE_CHANGE_NO;
  end if;
end tr_MLLC_BIU_INTERNAL_CALC;
/
