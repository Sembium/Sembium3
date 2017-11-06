create or replace trigger tr_EETFE_ID
  instead of delete on EXCEPT_EVENT_TASKS_FOR_EDIT
  for each row
begin

  if not StateUtils.InEetfeUpdate then
    StateUtils.BeginEetfeUpdate;
    begin

      delete
        EXCEPT_EVENT_TASKS eet
      where
        (eet.EXCEPT_EVENT_TASK_CODE = :old.EXCEPT_EVENT_TASK_CODE);

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
        StateUtils.EndEetfeUpdate;
        raise;
    end;
    StateUtils.EndEetfeUpdate;
  end if;

end tr_EETFE_ID;
/
