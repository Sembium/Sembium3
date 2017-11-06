create or replace trigger tr_EMOV_BIU_EMP_MOV_DATE_TIME
  before insert or update of EMP_MOVEMENT_DATE, EMP_MOVEMENT_TIME on EMP_MOVEMENTS  
  for each row
begin
  :new.EMP_MOVEMENT_DATE_TIME:= DateTimeUtils.IncTime(:new.EMP_MOVEMENT_DATE, :new.EMP_MOVEMENT_TIME);
end tr_EMOV_BIU_EMP_MOV_DATE_TIME;
/
