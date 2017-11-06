create or replace trigger tr_P_BIU_CORRECT_NAME
  before insert or update on PRODUCTS  
  for each row
begin
  :new.NAME:= Replace(:new.NAME, Chr(49824), ' ');
end tr_P_BIU_CORRECT_NAME;
/
