create or replace trigger tr_PRFE_IU
  instead of update on PROFESSIONS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPrfeUpdate then
    StateUtils.BeginPrfeUpdate;
    begin
    
      if (:new.PROFESSION_CODE <> :old.PROFESSION_CODE) then
        raise_application_error(-20000, 'Internal error: PROFESSIONS key should not be changed');
      end if;
      
      update
        PROFESSIONS pr
      set
        pr.PARENT_PROFESSION_CODE = :new.PARENT_PROFESSION_CODE,
        pr.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        pr.DOC_CODE = :new.DOC_CODE,
        pr.PROFESSION_LOCAL_NO = :new.PROFESSION_LOCAL_NO,		
        pr.PROFESSION_NAME = :new.PROFESSION_NAME,
        pr.PROFESSION_KIND_CODE = :new.PROFESSION_KIND_CODE,
        pr.IS_GROUP = :new.IS_GROUP
      where
        (pr.PROFESSION_CODE = :old.PROFESSION_CODE);
        
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
        StateUtils.EndPrfeUpdate;
        raise;
    end;
    StateUtils.EndPrfeUpdate;
  end if;

end tr_PRFE_IU;
/
