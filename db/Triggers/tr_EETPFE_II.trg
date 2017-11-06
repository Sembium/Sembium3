create or replace trigger tr_EETPFE_II
  instead of insert on EXCEPT_EVENT_TYPES_FOR_EDIT
  for each row
begin

  if not StateUtils.InEetpfeUpdate then
    StateUtils.BeginEetpfeUpdate;
    begin

      insert into EXCEPT_EVENT_TYPES
      (
        EXCEPT_EVENT_TYPE_CODE,
        PARENT_EXCEPT_EVENT_TYPE_CODE,
        EXCEPT_EVENT_TYPE_LOCAL_NO,
        EXCEPT_EVENT_TYPE_NAME,
        EXCEPT_EVENT_TYPE_SHORT_NAME,
        IS_GROUP,
        DOC_BRANCH_CODE,
        DOC_CODE
      )
      values
      (
        :new.EXCEPT_EVENT_TYPE_CODE,
        :new.PARENT_EXCEPT_EVENT_TYPE_CODE,
        :new.EXCEPT_EVENT_TYPE_LOCAL_NO,
        :new.EXCEPT_EVENT_TYPE_NAME,
        :new.EXCEPT_EVENT_TYPE_SHORT_NAME,
        :new.IS_GROUP,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE
      );

    exception
      when others then
        StateUtils.EndEetpfeUpdate;
        raise;
    end;
    StateUtils.EndEetpfeUpdate;
  end if;

end;
/
