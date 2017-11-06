create or replace trigger tr_DIFE_IU
  instead of update on DOC_ITEMS_FOR_EDIT
  for each row
begin

  if not StateUtils.InDifeUpdate then
    StateUtils.BeginDifeUpdate;
    begin
    
      if (:new.DOC_BRANCH_CODE <> :old.DOC_BRANCH_CODE) or
         (:new.DOC_CODE <> :old.DOC_CODE) or
         (:new.DOC_ITEM_CODE <> :old.DOC_ITEM_CODE) then
        raise_application_error(-20000, 'Internal error: DOC_ITEMS key should not be changed');
      end if;

      update
        DOC_ITEMS di
      set
        di.DOC_ITEM_NAME = :new.DOC_ITEM_NAME,
        di.DOC_ITEM_TYPE_CODE = :new.DOC_ITEM_TYPE_CODE,
        di.FILE_NAME = :new.FILE_NAME,
        di.NOTES = :new.NOTES,
        di.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
        di.CREATE_DATE = :new.CREATE_DATE,
        di.CREATE_TIME = :new.CREATE_TIME,
        di.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
        di.CHANGE_DATE = :new.CHANGE_DATE,
        di.CHANGE_TIME = :new.CHANGE_TIME,
        di.RELATIVE_PATH = :new.RELATIVE_PATH,
        di.DOC_ITEM_STORAGE_TYPE_CODE = :new.DOC_ITEM_STORAGE_TYPE_CODE,
        di.STORED_FILE_BRANCH_CODE = :new.STORED_FILE_BRANCH_CODE,
        di.STORED_FILE_CODE = :new.STORED_FILE_CODE,
        di.DOC_ITEM_PATTERN_CODE = :new.DOC_ITEM_PATTERN_CODE,
        di.DEVELOP_EMPLOYEE_CODE = :new.DEVELOP_EMPLOYEE_CODE,
        di.DEVELOP_DATE = :new.DEVELOP_DATE,
        di.DEVELOP_TIME = :new.DEVELOP_TIME,
        di.AUTHORIZE_EMPLOYEE_CODE = :new.AUTHORIZE_EMPLOYEE_CODE,
        di.AUTHORIZE_DATE = :new.AUTHORIZE_DATE,
        di.AUTHORIZE_TIME = :new.AUTHORIZE_TIME,
        di.APPROVE_EMPLOYEE_CODE = :new.APPROVE_EMPLOYEE_CODE,
        di.APPROVE_DATE = :new.APPROVE_DATE,
        di.APPROVE_TIME = :new.APPROVE_TIME,
        di.DOC_ITEM_NO = :new.DOC_ITEM_NO,
        di.IS_INACTIVE = :new.IS_INACTIVE,
        di.IS_MIRRORED = :new.IS_MIRRORED,
        di.MIRRORED_FILE_NAME = :new.MIRRORED_FILE_NAME,
        di.MIRRORED_RELATIVE_PATH = :new.MIRRORED_RELATIVE_PATH,
        di.FILE_CHANGE_EMPLOYEE_CODE = :new.FILE_CHANGE_EMPLOYEE_CODE,
        di.FILE_CHANGE_DATE = :new.FILE_CHANGE_DATE,
        di.FILE_CHANGE_TIME = :new.FILE_CHANGE_TIME
      where
        (di.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
        (di.DOC_CODE = :old.DOC_CODE) and
        (di.DOC_ITEM_CODE = :old.DOC_ITEM_CODE)
      ;
    
      if (1 = 0) and -- Disable deletion of stored files. Should be immutable for correct content storage replication.
         (:old.STORED_FILE_BRANCH_CODE is not null) and
         (:old.STORED_FILE_CODE is not null) and
         ( (:old.STORED_FILE_BRANCH_CODE <> Coalesce(:new.STORED_FILE_BRANCH_CODE, 0)) or
           (:old.STORED_FILE_CODE <> Coalesce(:new.STORED_FILE_CODE, 0)) ) then
         
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
