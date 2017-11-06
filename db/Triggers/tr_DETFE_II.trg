create or replace trigger tr_DETFE_II
  instead of insert on DISC_EVENT_TYPES_FOR_EDIT
  for each row
begin

  if not StateUtils.InDetfeUpdate then
    StateUtils.BeginDetfeUpdate;
    begin
    
      insert into DISC_EVENT_TYPES
      (
        DISC_EVENT_TYPE_CODE,
        PARENT_DISC_EVENT_TYPE_CODE,
        DISC_EVENT_TYPE_LOCAL_NO,
        NAME,
        SHORT_NAME,
        IS_GROUP,
        DOC_BRANCH_CODE,
        DOC_CODE,
        DISC_EVENT_TYPE_SIGN,
        COLOR,
        BACKGROUND_COLOR
      )
      values
      (
        :new.DISC_EVENT_TYPE_CODE,
        :new.PARENT_DISC_EVENT_TYPE_CODE,
        :new.DISC_EVENT_TYPE_LOCAL_NO,
        :new.NAME,
        :new.SHORT_NAME,
        :new.IS_GROUP,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.DISC_EVENT_TYPE_SIGN,
        :new.COLOR,
        :new.BACKGROUND_COLOR
      );
    
    exception
      when others then
        StateUtils.EndDetfeUpdate;
        raise;
    end;
    StateUtils.EndDetfeUpdate;
  end if;

end tr_DETFE_II;
/
