create or replace trigger tr_DETFE_IU
  instead of update on DISC_EVENT_TYPES_FOR_EDIT
  for each row
begin

  if not StateUtils.InDetfeUpdate then
    StateUtils.BeginDetfeUpdate;
    begin
    
      if (:new.DISC_EVENT_TYPE_CODE <> :old.DISC_EVENT_TYPE_CODE) then
        raise_application_error(-20000, 'Internal error: DISC_EVENT_TYPES key should not be changed');
      end if;
      
      update
        DISC_EVENT_TYPES det
      set
        det.PARENT_DISC_EVENT_TYPE_CODE = :new.PARENT_DISC_EVENT_TYPE_CODE,
        det.DISC_EVENT_TYPE_LOCAL_NO = :new.DISC_EVENT_TYPE_LOCAL_NO,
        det.NAME = :new.NAME,
        det.SHORT_NAME = :new.SHORT_NAME,
        det.IS_GROUP = :new.IS_GROUP,
        det.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        det.DOC_CODE = :new.DOC_CODE,
        det.DISC_EVENT_TYPE_SIGN = :new.DISC_EVENT_TYPE_SIGN,
        det.COLOR = :new.COLOR,
        det.BACKGROUND_COLOR = :new.BACKGROUND_COLOR
      where
        (det.DISC_EVENT_TYPE_CODE = :old.DISC_EVENT_TYPE_CODE);
        
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
        StateUtils.EndDetfeUpdate;
        raise;
    end;
    StateUtils.EndDetfeUpdate;
  end if;

end tr_DETFE_IU;
/
