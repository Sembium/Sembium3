create or replace trigger tr_FCFE_II
  instead of insert on FIN_CLASSES_FOR_EDIT
  for each row
begin

  if not StateUtils.InFcfeUpdate then
    StateUtils.BeginFcfeUpdate;
    begin
    
      insert into FIN_CLASSES
      (
        FIN_CLASS_CODE,
        PARENT_FIN_CLASS_CODE,
        FIN_CLASS_LOCAL_NO,
        NAME,
        SHORT_NAME,
        IS_GROUP,
        DOC_BRANCH_CODE,
        DOC_CODE
      )
      values
      (
        :new.FIN_CLASS_CODE,
        :new.PARENT_FIN_CLASS_CODE,
        :new.FIN_CLASS_LOCAL_NO,
        :new.NAME,
        :new.SHORT_NAME,
        :new.IS_GROUP,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE
      );
    
    exception
      when others then
        StateUtils.EndFcfeUpdate;
        raise;
    end;
    StateUtils.EndFcfeUpdate;
  end if;

end tr_FCFE_II;
/
