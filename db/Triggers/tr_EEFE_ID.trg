create or replace trigger tr_EEFE_ID
  instead of delete on EXCEPT_EVENTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InEefeUpdate then
    StateUtils.BeginEefeUpdate;
    begin

      delete
        EXCEPT_EVENTS ee
      where
        (ee.EXCEPT_EVENT_CODE = :old.EXCEPT_EVENT_CODE);

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
        StateUtils.EndEefeUpdate;
        raise;
    end;
    StateUtils.EndEefeUpdate;
  end if;

end tr_EEFE_ID;
/
