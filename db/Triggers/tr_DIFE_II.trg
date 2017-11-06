create or replace trigger tr_DIFE_II
  instead of insert on DOC_ITEMS_FOR_EDIT
  for each row
begin

  if not StateUtils.InDifeUpdate then
    StateUtils.BeginDifeUpdate;
    begin
    
      insert into DOC_ITEMS
      (
        DOC_BRANCH_CODE,
        DOC_CODE,
        DOC_ITEM_CODE,
        DOC_ITEM_NAME,
        DOC_ITEM_TYPE_CODE,
        FILE_NAME,
        NOTES,
        CREATE_EMPLOYEE_CODE,
        CREATE_DATE,
        CREATE_TIME,
        CHANGE_EMPLOYEE_CODE,
        CHANGE_DATE,
        CHANGE_TIME,
        RELATIVE_PATH,
        DOC_ITEM_STORAGE_TYPE_CODE,
        STORED_FILE_BRANCH_CODE,
        STORED_FILE_CODE,
        DOC_ITEM_PATTERN_CODE,
        DEVELOP_EMPLOYEE_CODE,
        DEVELOP_DATE,
        DEVELOP_TIME,
        AUTHORIZE_EMPLOYEE_CODE,
        AUTHORIZE_DATE,
        AUTHORIZE_TIME,
        APPROVE_EMPLOYEE_CODE,
        APPROVE_DATE,
        APPROVE_TIME,
        DOC_ITEM_NO,
        IS_INACTIVE,
        IS_MIRRORED,
        MIRRORED_FILE_NAME,
        MIRRORED_RELATIVE_PATH,
        FILE_CHANGE_EMPLOYEE_CODE,
        FILE_CHANGE_DATE,
        FILE_CHANGE_TIME
      )
      values
      (
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.DOC_ITEM_CODE,
        :new.DOC_ITEM_NAME,
        :new.DOC_ITEM_TYPE_CODE,
        :new.FILE_NAME,
        :new.NOTES,
        :new.CREATE_EMPLOYEE_CODE,
        :new.CREATE_DATE,
        :new.CREATE_TIME,
        :new.CHANGE_EMPLOYEE_CODE,
        :new.CHANGE_DATE,
        :new.CHANGE_TIME,
        :new.RELATIVE_PATH,
        :new.DOC_ITEM_STORAGE_TYPE_CODE,
        :new.STORED_FILE_BRANCH_CODE,
        :new.STORED_FILE_CODE,
        :new.DOC_ITEM_PATTERN_CODE,
        :new.DEVELOP_EMPLOYEE_CODE,
        :new.DEVELOP_DATE,
        :new.DEVELOP_TIME,
        :new.AUTHORIZE_EMPLOYEE_CODE,
        :new.AUTHORIZE_DATE,
        :new.AUTHORIZE_TIME,
        :new.APPROVE_EMPLOYEE_CODE,
        :new.APPROVE_DATE,
        :new.APPROVE_TIME,
        :new.DOC_ITEM_NO,
        :new.IS_INACTIVE,
        :new.IS_MIRRORED,
        :new.MIRRORED_FILE_NAME,
        :new.MIRRORED_RELATIVE_PATH,
        :new.FILE_CHANGE_EMPLOYEE_CODE,
        :new.FILE_CHANGE_DATE,
        :new.FILE_CHANGE_TIME
      );
      
    exception
      when others then
        StateUtils.EndDifeUpdate;
        raise;
    end;
    StateUtils.EndDifeUpdate;
  end if;

end;
/
