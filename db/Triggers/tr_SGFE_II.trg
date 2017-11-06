create or replace trigger tr_SGFE_II
  instead of insert on SALE_GROUPS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSgfeUpdate then
    StateUtils.BeginSgfeUpdate;
    begin
    
      insert into SALE_GROUPS
      (
        CLIENT_COMPANY_CODE,
        PRIORITY_CODE,
        RECEIVE_DATE,
        RECEIVE_PLACE_OFFICE_CODE,
        SALE_GROUP_BRANCH_CODE,
        SALE_GROUP_CODE,
        SALE_GROUP_NO,
        SALE_GROUP_OBJECT_BRANCH_CODE,
        SALE_GROUP_OBJECT_CODE,
        SALE_ORDER_TYPE_CODE
      )
      values
      (
        :new.CLIENT_COMPANY_CODE,
        :new.PRIORITY_CODE,
        :new.RECEIVE_DATE,
        :new.RECEIVE_PLACE_OFFICE_CODE,
        :new.SALE_GROUP_BRANCH_CODE,
        :new.SALE_GROUP_CODE,
        :new.SALE_GROUP_NO,
        :new.SALE_GROUP_OBJECT_BRANCH_CODE,
        :new.SALE_GROUP_OBJECT_CODE,
        :new.SALE_ORDER_TYPE_CODE
      );
    
    exception
      when others then
        StateUtils.EndSgfeUpdate;
        raise;
    end;
    StateUtils.EndSgfeUpdate;
  end if;

end tr_SGFE_II;
/
