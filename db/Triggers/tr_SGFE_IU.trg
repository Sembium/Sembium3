create or replace trigger tr_SGFE_IU
  instead of update on SALE_GROUPS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSgfeUpdate then
    StateUtils.BeginSgfeUpdate;
    begin
    
      if ( (:new.SALE_GROUP_OBJECT_BRANCH_CODE <> :old.SALE_GROUP_OBJECT_BRANCH_CODE) or
           (:new.SALE_GROUP_OBJECT_CODE <> :old.SALE_GROUP_OBJECT_CODE) ) then
        raise_application_error(-20000, 'Internal error: SALE_GROUPS key should not be changed');
      end if;
      
      update
        SALE_GROUPS sg
      set
        sg.CLIENT_COMPANY_CODE = :new.CLIENT_COMPANY_CODE,
        sg.PRIORITY_CODE = :new.PRIORITY_CODE,
        sg.RECEIVE_DATE = :new.RECEIVE_DATE,
        sg.RECEIVE_PLACE_OFFICE_CODE = :new.RECEIVE_PLACE_OFFICE_CODE,
        sg.SALE_GROUP_BRANCH_CODE = :new.SALE_GROUP_BRANCH_CODE,
        sg.SALE_GROUP_CODE = :new.SALE_GROUP_CODE,
        sg.SALE_GROUP_NO = :new.SALE_GROUP_NO,
        sg.SALE_ORDER_TYPE_CODE = :new.SALE_ORDER_TYPE_CODE
      where
        (sg.SALE_GROUP_OBJECT_BRANCH_CODE = :old.SALE_GROUP_OBJECT_BRANCH_CODE) and
        (sg.SALE_GROUP_OBJECT_CODE = :old.SALE_GROUP_OBJECT_CODE);
        
    exception
      when others then
        StateUtils.EndSgfeUpdate;
        raise;
    end;
    StateUtils.EndSgfeUpdate;
  end if;

end tr_SGFE_IU;
/
