create or replace trigger tr_EEDFE_II
  instead of insert on EXCEPT_EVENT_DAMAGES_FOR_EDIT
  for each row
declare
  IsParentExceptEventSame Number;
begin

  if not StateUtils.InEedfeUpdate then
    StateUtils.BeginEedfeUpdate;
    begin

      if (:new.PARENT_CODE is not null) then

        select
          Sign(Count(*))
        into
          IsParentExceptEventSame
        from
          EXCEPT_EVENT_DAMAGES eed
        where
          (eed.EXCEPT_EVENT_DAMAGE_CODE = :new.PARENT_CODE) and
          (eed.EXCEPT_EVENT_CODE = :new.EXCEPT_EVENT_CODE);

        if (IsParentExceptEventSame = 0) then
          raise_application_error(-20000, 'Internal error: Assertion: EXCEPT_EVENT_CODE of parent EXCEPT_EVENT_DAMAGE is different');
        end if;

      end if;

      insert into EXCEPT_EVENT_DAMAGES
      (
        EXCEPT_EVENT_DAMAGE_CODE,
        EXCEPT_EVENT_CODE,
        PARENT_CODE,
        LOCAL_NO,
        EE_DAMAGE_PROCESS_TYPE_CODE,
        PRODUCT_QUANTITY,
        CREATE_EMPLOYEE_CODE,
        CREATE_DATE,
        CREATE_TIME,
        CHANGE_EMPLOYEE_CODE,
        CHANGE_DATE,
        CHANGE_TIME,
        MLL_OBJECT_BRANCH_CODE,
        MLL_OBJECT_CODE,
        DELIVERY_OBJECT_BRANCH_CODE,
        DELIVERY_OBJECT_CODE,
        SHIPMENT_OBJECT_BRANCH_CODE,
        SHIPMENT_OBJECT_CODE
      )
      values
      (
        :new.EXCEPT_EVENT_DAMAGE_CODE,
        :new.EXCEPT_EVENT_CODE,
        :new.PARENT_CODE,
        :new.LOCAL_NO,
        :new.EE_DAMAGE_PROCESS_TYPE_CODE,
        :new.PRODUCT_QUANTITY,
        :new.CREATE_EMPLOYEE_CODE,
        :new.CREATE_DATE,
        :new.CREATE_TIME,
        :new.CHANGE_EMPLOYEE_CODE,
        :new.CHANGE_DATE,
        :new.CHANGE_TIME,
        :new.MLL_OBJECT_BRANCH_CODE,
        :new.MLL_OBJECT_CODE,
        :new.DELIVERY_OBJECT_BRANCH_CODE,
        :new.DELIVERY_OBJECT_CODE,
        :new.SHIPMENT_OBJECT_BRANCH_CODE,
        :new.SHIPMENT_OBJECT_CODE
      );

    exception
      when others then
        StateUtils.EndEedfeUpdate;
        raise;
    end;
    StateUtils.EndEedfeUpdate;
  end if;

end tr_EEDFE_II;
/
