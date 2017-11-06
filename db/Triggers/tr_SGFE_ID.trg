create or replace trigger tr_SGFE_ID
  instead of delete on SALE_GROUPS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSgfeUpdate then
    StateUtils.BeginSgfeUpdate;
    begin
    
      delete
        SALE_GROUPS sg
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
  
end tr_SGFE_ID;
/
