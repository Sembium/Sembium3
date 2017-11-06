create or replace trigger tr_BOIO_BIU_UNQ_DELIVERY_OBJ
  before insert or update on BOI_ORDERS
  for each row
begin

  if (:new.BOI_ORDER_TYPE_CODE = CommonConsts.boiotMarking) and
     (:new.IS_CANCELED = 0) and
     (:new.ANNUL_EMPLOYEE_CODE is null) then

    :new.UNQ_DELIVERY_OBJ_BRANCH_CODE:= :new.DELIVERY_OBJECT_BRANCH_CODE;
    :new.UNQ_DELIVERY_OBJ_CODE:= :new.DELIVERY_OBJECT_CODE;

  else

    :new.UNQ_DELIVERY_OBJ_BRANCH_CODE:= null;
    :new.UNQ_DELIVERY_OBJ_CODE:= null;

  end if;

end;
/
