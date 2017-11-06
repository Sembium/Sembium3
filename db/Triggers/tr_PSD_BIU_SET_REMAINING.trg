create or replace trigger tr_PSD_BIU_SET_REMAINING
  before insert or update on PLANNED_STORE_DEALS
  for each row
begin
  :new.COMPLETED_ACCOUNT_QUANTITY:=
    (:new.ACCOUNT_QUANTITY * :new.COMPLETED_QUANTITY / :new.QUANTITY);
    
  :new.REMAINING_QUANTITY:= Greatest(:new.QUANTITY - :new.COMPLETED_QUANTITY, 0);
  :new.REMAINING_ACCOUNT_QUANTITY:= Greatest(:new.ACCOUNT_QUANTITY - :new.COMPLETED_ACCOUNT_QUANTITY, 0);
  
  if (:new.CLOSE_EMPLOYEE_CODE is null) and
     (:new.ANNUL_EMPLOYEE_CODE is null) and
     (MiscUtils.LargeZero(:new.REMAINING_QUANTITY) > 0) then
    :new.IS_ACTIVE:= 1;
  else
    :new.IS_ACTIVE:= 0;
  end if;  
end tr_PSD_BIU_SET_REMAINING;
/
