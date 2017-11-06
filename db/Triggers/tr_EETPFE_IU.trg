create or replace trigger tr_EETPFE_IU
  instead of update on EXCEPT_EVENT_TYPES_FOR_EDIT
  for each row
begin

  if not StateUtils.InEetpfeUpdate then
    StateUtils.BeginEetpfeUpdate;
    begin

      if (:new.EXCEPT_EVENT_TYPE_CODE <> :old.EXCEPT_EVENT_TYPE_CODE) then
        raise_application_error(-20000, 'Internal error: EXCEPT_EVENT_TYPES key should not be changed');
      end if;

      update
        EXCEPT_EVENT_TYPES eetp
      set
        eetp.PARENT_EXCEPT_EVENT_TYPE_CODE = :new.PARENT_EXCEPT_EVENT_TYPE_CODE,
        eetp.EXCEPT_EVENT_TYPE_LOCAL_NO = :new.EXCEPT_EVENT_TYPE_LOCAL_NO,
        eetp.EXCEPT_EVENT_TYPE_NAME = :new.EXCEPT_EVENT_TYPE_NAME,
        eetp.EXCEPT_EVENT_TYPE_SHORT_NAME = :new.EXCEPT_EVENT_TYPE_SHORT_NAME,
        eetp.IS_GROUP = :new.IS_GROUP,
        eetp.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        eetp.DOC_CODE = :new.DOC_CODE
      where
        (eetp.EXCEPT_EVENT_TYPE_CODE = :old.EXCEPT_EVENT_TYPE_CODE);

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
        StateUtils.EndEetpfeUpdate;
        raise;
    end;
    StateUtils.EndEetpfeUpdate;
  end if;

end;
/
