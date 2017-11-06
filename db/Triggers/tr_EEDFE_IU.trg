create or replace trigger tr_EEDFE_IU
  instead of update on EXCEPT_EVENT_DAMAGES_FOR_EDIT
  for each row
declare
  IsParentExceptEventSame Number;
begin

  if not StateUtils.InEedfeUpdate then
    StateUtils.BeginEedfeUpdate;
    begin

      if (:new.EXCEPT_EVENT_DAMAGE_CODE <> :old.EXCEPT_EVENT_DAMAGE_CODE) then
        raise_application_error(-20000, 'Internal error: EXCEPT_EVENT_DAMAGES key should not be changed');
      end if;

      if (:new.PARENT_CODE is not null) and
         ( (:old.EXCEPT_EVENT_CODE <> :new.EXCEPT_EVENT_CODE) or
           (Coalesce(:old.PARENT_CODE, 0) <> Coalesce(:new.PARENT_CODE, 0))
         ) then

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

      end if ;

      update
        EXCEPT_EVENT_DAMAGES eed
      set
        eed.EXCEPT_EVENT_CODE = :new.EXCEPT_EVENT_CODE,
        eed.PARENT_CODE = :new.PARENT_CODE,
        eed.LOCAL_NO = :new.LOCAL_NO,
        eed.EE_DAMAGE_PROCESS_TYPE_CODE = :new.EE_DAMAGE_PROCESS_TYPE_CODE,
        eed.PRODUCT_QUANTITY = :new.PRODUCT_QUANTITY,
        eed.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
        eed.CREATE_DATE = :new.CREATE_DATE,
        eed.CREATE_TIME = :new.CREATE_TIME,
        eed.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
        eed.CHANGE_DATE = :new.CHANGE_DATE,
        eed.CHANGE_TIME = :new.CHANGE_TIME,
        eed.MLL_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE,
        eed.MLL_OBJECT_CODE = :new.MLL_OBJECT_CODE,
        eed.DELIVERY_OBJECT_BRANCH_CODE = :new.DELIVERY_OBJECT_BRANCH_CODE,
        eed.DELIVERY_OBJECT_CODE = :new.DELIVERY_OBJECT_CODE,
        eed.SHIPMENT_OBJECT_BRANCH_CODE = :new.SHIPMENT_OBJECT_BRANCH_CODE,
        eed.SHIPMENT_OBJECT_CODE = :new.SHIPMENT_OBJECT_CODE
      where
        (eed.EXCEPT_EVENT_DAMAGE_CODE = :old.EXCEPT_EVENT_DAMAGE_CODE);

      if (:old.EXCEPT_EVENT_CODE <> :new.EXCEPT_EVENT_CODE) then

        update
          EXCEPT_EVENT_DAMAGES eed
        set
          eed.EXCEPT_EVENT_CODE = :new.EXCEPT_EVENT_CODE
        where
          (exists
            ( select
                1
              from
                EXCEPT_EVENT_DAMAGE_RELATIONS eedr
              where
                (eedr.ANCESTOR_EE_DAMAGE_CODE = :old.EXCEPT_EVENT_DAMAGE_CODE) and
                (eedr.DESCENDANT_EE_DAMAGE_CODE = eed.EXCEPT_EVENT_DAMAGE_CODE) and
                (eedr.ANCESTOR_EE_DAMAGE_CODE <> eedr.DESCENDANT_EE_DAMAGE_CODE)
            )
          );

      end if;

    exception
      when others then
        StateUtils.EndEedfeUpdate;
        raise;
    end;
    StateUtils.EndEedfeUpdate;
  end if;

end tr_EEDFE_IU;
/
