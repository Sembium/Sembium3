create or replace trigger tr_FCFE_IU
  instead of update on FIN_CLASSES_FOR_EDIT
  for each row
begin

  if not StateUtils.InFcfeUpdate then
    StateUtils.BeginFcfeUpdate;
    begin
    
      if (:new.FIN_CLASS_CODE <> :old.FIN_CLASS_CODE) then
        raise_application_error(-20000, 'Internal error: FIN_CLASSES key should not be changed');
      end if;
      
      update
        FIN_CLASSES fc
      set
        fc.PARENT_FIN_CLASS_CODE = :new.PARENT_FIN_CLASS_CODE,
        fc.FIN_CLASS_LOCAL_NO = :new.FIN_CLASS_LOCAL_NO,
        fc.NAME = :new.NAME,
        fc.SHORT_NAME = :new.SHORT_NAME,
        fc.IS_GROUP = :new.IS_GROUP,
        fc.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        fc.DOC_CODE = :new.DOC_CODE
      where
        (fc.FIN_CLASS_CODE = :old.FIN_CLASS_CODE);
        
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
        StateUtils.EndFcfeUpdate;
        raise;
    end;
    StateUtils.EndFcfeUpdate;
  end if;

end tr_FCFE_IU;
/
