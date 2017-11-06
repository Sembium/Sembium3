create or replace trigger tr_EETPFE_ID
  instead of delete on EXCEPT_EVENT_TYPES_FOR_EDIT
  for each row
begin

  if not StateUtils.InEetpfeUpdate then
    StateUtils.BeginEetpfeUpdate;
    begin

      delete
        EXCEPT_EVENT_TYPES eetp
      where
        (eetp.EXCEPT_EVENT_TYPE_CODE = :old.EXCEPT_EVENT_TYPE_CODE);

      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) then

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
