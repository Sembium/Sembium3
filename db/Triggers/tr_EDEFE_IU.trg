create or replace trigger tr_EDEFE_IU
  instead of update on EMP_DISCIPLINE_EVENTS_FOR_EDIT
  for each row
declare
  StornoDisciplineEventCode Number := null;
begin

  if not StateUtils.InEdefeUpdate then
    StateUtils.BeginEdefeUpdate;
    begin
    
      if (:new.EMPLOYEE_CODE <> :old.EMPLOYEE_CODE) or
         (:new.DISCIPLINE_EVENT_CODE <> :old.DISCIPLINE_EVENT_CODE) then
        raise_application_error(-20000, 'Internal error: EMPLOYEE_DISCIPLINE_EVENTS key should not be changed');
      end if;


      if (:new.STORNO_EMPLOYEE_CODE is not null) then  -- bez ostavane na ekran

        -- purvo, markirame kato stornirano, che da moje da se trie
        update
          EMPLOYEE_DISCIPLINE_EVENTS ede
        set
          ede.STORNO_EMPLOYEE_CODE = LoginContext.UserCode, 
          ede.STORNO_DATE = ContextDate, 
          ede.STORNO_TIME = ContextTime
        where
          (ede.EMPLOYEE_CODE = :old.EMPLOYEE_CODE) and
          (ede.DISCIPLINE_EVENT_CODE = :old.DISCIPLINE_EVENT_CODE);

        -- posle iztrivame da e sigurno, che niama nikoi da sochi kum nego      
        delete
          EMPLOYEE_DISCIPLINE_EVENTS ede
        where
          (ede.EMPLOYEE_CODE = :old.EMPLOYEE_CODE) and
          (ede.DISCIPLINE_EVENT_CODE = :old.DISCIPLINE_EVENT_CODE);
      
      end if;
        

      -- zachistvame doc-a, za da ne gurmi unique index-a pri sledvashtoto insert-vane
      if (:new.STORNO_EMPLOYEE_CODE is null) then  -- s ostavane na ekran

        update
          EMPLOYEE_DISCIPLINE_EVENTS ede
        set
          ede.DOC_BRANCH_CODE = null,
          ede.DOC_CODE = null
        where
          (ede.EMPLOYEE_CODE = :old.EMPLOYEE_CODE) and
          (ede.DISCIPLINE_EVENT_CODE = :old.DISCIPLINE_EVENT_CODE);

      end if;
      

      -- insert-vame stornirano
      insert into EMPLOYEE_DISCIPLINE_EVENTS
      (
        EMPLOYEE_CODE, 
        DISCIPLINE_EVENT_CODE, 
        DISC_EVENT_TYPE_CODE, 
        DISCIPLINE_EVENT_STATE_CODE,
        DISCIPLINE_EVENT_COMMENT, 
        DISCIPLINE_EVENT_DATE, 
        AUTHORIZE_EMPLOYEE_CODE, 
        DOC_BRANCH_CODE, 
        DOC_CODE, 
        CREATE_EMPLOYEE_CODE, 
        CREATE_DATE, 
        CREATE_TIME, 
        STORNO_EMPLOYEE_CODE, 
        STORNO_DATE, 
        STORNO_TIME, 
        OLD_DISCIPLINE_EVENT_CODE
      )
      values
      (
        :old.EMPLOYEE_CODE, 
        Nvl2(:old.STORNO_EMPLOYEE_CODE, 
          :old.DISCIPLINE_EVENT_CODE, 
          ( select
              Coalesce(Max(ede.DISCIPLINE_EVENT_CODE), 0) + 1
            from
              EMPLOYEE_DISCIPLINE_EVENTS ede
            where
              (ede.EMPLOYEE_CODE = :old.EMPLOYEE_CODE)
          )
        ),
        :old.DISC_EVENT_TYPE_CODE, 
        :old.DISCIPLINE_EVENT_STATE_CODE,
        :old.DISCIPLINE_EVENT_COMMENT, 
        :old.DISCIPLINE_EVENT_DATE, 
        :old.AUTHORIZE_EMPLOYEE_CODE, 
        :old.DOC_BRANCH_CODE, 
        :old.DOC_CODE, 
        :old.CREATE_EMPLOYEE_CODE, 
        :old.CREATE_DATE, 
        :old.CREATE_TIME, 
        LoginContext.UserCode,
        ContextDate,
        ContextTime,
        :old.OLD_DISCIPLINE_EVENT_CODE
      )
      returning
        DISCIPLINE_EVENT_CODE
      into
        StornoDisciplineEventCode;


      if (:new.STORNO_EMPLOYEE_CODE is null) then  -- s ostavane na ekran

        update
          EMPLOYEE_DISCIPLINE_EVENTS ede
        set
          ede.DISC_EVENT_TYPE_CODE = :new.DISC_EVENT_TYPE_CODE, 
          ede.DISCIPLINE_EVENT_STATE_CODE = :new.DISCIPLINE_EVENT_STATE_CODE,
          ede.DISCIPLINE_EVENT_COMMENT = :new.DISCIPLINE_EVENT_COMMENT, 
          ede.DISCIPLINE_EVENT_DATE = :new.DISCIPLINE_EVENT_DATE, 
          ede.AUTHORIZE_EMPLOYEE_CODE = :new.AUTHORIZE_EMPLOYEE_CODE, 
          ede.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE, 
          ede.DOC_CODE = :new.DOC_CODE, 
          ede.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE, 
          ede.CREATE_DATE = :new.CREATE_DATE, 
          ede.CREATE_TIME = :new.CREATE_TIME, 
          ede.OLD_DISCIPLINE_EVENT_CODE = StornoDisciplineEventCode
        where
          (ede.EMPLOYEE_CODE = :old.EMPLOYEE_CODE) and
          (ede.DISCIPLINE_EVENT_CODE = :old.DISCIPLINE_EVENT_CODE);
        
      end if;

    exception
      when others then
        StateUtils.EndEdefeUpdate;
        raise;
    end;
    StateUtils.EndEdefeUpdate;
  end if;

end tr_EDEFE_IU;
/
