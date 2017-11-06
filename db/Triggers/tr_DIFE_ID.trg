create or replace trigger tr_DIFE_ID
  instead of delete on DOC_ITEMS_FOR_EDIT
  for each row
begin

  if not StateUtils.InDifeUpdate then
    StateUtils.BeginDifeUpdate;
    begin
    
      delete
        DOC_ITEMS di
      where
        (di.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
        (di.DOC_CODE = :old.DOC_CODE) and
        (di.DOC_ITEM_CODE = :old.DOC_ITEM_CODE);

      if (1 = 0) and -- Disable deletion of stored files. Should be immutable for correct content storage replication.
         (:old.STORED_FILE_BRANCH_CODE is not null) and
         (:old.STORED_FILE_CODE is not null) then
         
        delete
          STORED_FILES sf
        where
          (sf.STORED_FILE_BRANCH_CODE = :old.STORED_FILE_BRANCH_CODE) and
          (sf.STORED_FILE_CODE = :old.STORED_FILE_CODE) and
          (not exists
            ( select
                1
              from
                DOC_ITEMS di
              where
                (di.STORED_FILE_BRANCH_CODE = sf.STORED_FILE_BRANCH_CODE) and
                (di.STORED_FILE_CODE = sf.STORED_FILE_CODE)
            )
          );

      end if;

    exception
      when others then
        StateUtils.EndDifeUpdate;
        raise;
    end;
    StateUtils.EndDifeUpdate;
  end if;

end;
/
