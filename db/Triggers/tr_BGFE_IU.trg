create or replace trigger tr_BGFE_IU
  instead of update on BASE_GROUPS_FOR_EDIT
  for each row
begin

  if not StateUtils.InBgfeUpdate then
    StateUtils.BeginBgfeUpdate;
    begin
    
      if (:new.BASE_GROUP_CODE <> :old.BASE_GROUP_CODE) then
        raise_application_error(-20000, 'Internal error: BASE_GROUPS key should not be changed');
      end if;
      
      update
        BASE_GROUPS bg
      set
        bg.GROUP_DEPT_CODE = :new.GROUP_DEPT_CODE,
        bg.BASE_GROUP_NO = :new.BASE_GROUP_NO,
        bg.BASE_GROUP_NAME = :new.BASE_GROUP_NAME,
        bg.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        bg.DOC_CODE = :new.DOC_CODE
      where
        (bg.BASE_GROUP_CODE = :old.BASE_GROUP_CODE);
        
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) and
         ( (:old.DOC_BRANCH_CODE <> Coalesce(:new.DOC_BRANCH_CODE, 0)) or
           (:old.DOC_CODE <> Coalesce(:new.DOC_CODE, 0)) ) then
         
         delete
           DOCS_FOR_EDIT dfe
         where
           (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
           (dfe.DOC_CODE = :old.DOC_CODE);
         
      end if;
    
    exception
      when others then
        StateUtils.EndBgfeUpdate;
        raise;
    end;
    StateUtils.EndBgfeUpdate;
  end if;

end tr_BGFE_IU;
/
