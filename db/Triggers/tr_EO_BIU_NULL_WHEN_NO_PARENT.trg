create or replace trigger tr_EO_BIU_NULL_WHEN_NO_PARENT
  before insert or update on ENGINEERING_ORDERS
  for each row
begin

  if (:new.PARENT_ENGINEERING_ORDER_CODE is null) then
    :new.NULL_WHEN_NO_PARENT:= null;
  else
    :new.NULL_WHEN_NO_PARENT:= :new.ENGINEERING_ORDER_CODE;
  end if;
  
end;
/
