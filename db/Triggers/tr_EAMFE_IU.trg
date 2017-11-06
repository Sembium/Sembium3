create or replace trigger tr_EAMFE_IU
  instead of update on EMP_AVAIL_MODIFIERS_FOR_EDIT
  for each row
declare
  IntersectCount Number;
  StornoEmpAvailModifierCode Number := null;
  NewEndTime Date;
begin

  if not StateUtils.InEamfeUpdate then
    StateUtils.BeginEamfeUpdate;
    begin
    
      if (:new.EMP_AVAIL_MODIFIER_CODE <> :old.EMP_AVAIL_MODIFIER_CODE) then
        raise_application_error(-20000, 'Internal error: EMP_AVAIL_MODIFIERS key should not be changed');
      end if;


      if (:new.EMP_DAY_ABSENCE_REASON_CODE is not null) and
         ( (:old.EMP_DAY_ABSENCE_REASON_CODE is null) or
           (:new.EMPLOYEE_CODE <> :old.EMPLOYEE_CODE) or
           (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
           (:new.END_DATE <> :old.END_DATE) ) then
      
        select
          Count(*)
        into
          IntersectCount
        from
          EMP_AVAIL_MODIFIERS eam
        where
          (eam.EMP_AVAIL_MODIFIER_CODE <> :old.EMP_AVAIL_MODIFIER_CODE) and
          (eam.EMPLOYEE_CODE = :new.EMPLOYEE_CODE) and
          (eam.EMP_DAY_ABSENCE_REASON_CODE is not null) and
          (eam.STORNO_EMPLOYEE_CODE is null) and
          ( DateTimeUtils.DatePeriodIntersectLength(
              eam.BEGIN_DATE, eam.END_DATE,
              :new.BEGIN_DATE, :new.END_DATE
            ) > 0
          );
          
        if (IntersectCount > 0) then
          raise_application_error(-20002,
            ServerMessages.SCrossedEamDayAbsencePeriodId || '(' ||
            'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
            'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
          );
        end if;
          
      end if;   
         
    
      if (:new.NEW_SHIFT_CODE is not null) and
         ( (:old.NEW_SHIFT_CODE is null) or
           (:new.NEW_SHIFT_CODE <> :old.NEW_SHIFT_CODE) or
           (:new.EMPLOYEE_CODE <> :old.EMPLOYEE_CODE) or
           (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
           (:new.END_DATE <> :old.END_DATE) ) then
      
        select
          Count(*)
        into
          IntersectCount
        from
          EMP_AVAIL_MODIFIERS eam
        where
          (eam.EMP_AVAIL_MODIFIER_CODE <> :old.EMP_AVAIL_MODIFIER_CODE) and
          (eam.EMPLOYEE_CODE = :new.EMPLOYEE_CODE) and
          (eam.NEW_SHIFT_CODE is not null) and
          (eam.STORNO_EMPLOYEE_CODE is null) and
          ( DateTimeUtils.DatePeriodIntersectLength(
              eam.BEGIN_DATE, eam.END_DATE,
              :new.BEGIN_DATE, :new.END_DATE
            ) > 0
          );
          
        if (IntersectCount > 0) then
          raise_application_error(-20002,
            ServerMessages.SCrossedEamShiftChangePeriodId || '(' ||
            'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
            'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
          );
        end if;
          
      end if;   
         
    
      if (:new.STORNO_EMPLOYEE_CODE is not null) then  -- bez ostavane na ekran

        -- purvo, markirame kato stornirano, che da moje da se trie
        update
          EMP_AVAIL_MODIFIERS eam
        set
          eam.STORNO_EMPLOYEE_CODE = LoginContext.UserCode, 
          eam.STORNO_DATE = ContextDate, 
          eam.STORNO_TIME = ContextTime
        where
          (eam.EMP_AVAIL_MODIFIER_CODE = :old.EMP_AVAIL_MODIFIER_CODE);

        -- posle iztrivame da e sigurno, che niama nikoi da sochi kum nego      
        delete
          EMP_AVAIL_MODIFIERS eam
        where
          (eam.EMP_AVAIL_MODIFIER_CODE = :old.EMP_AVAIL_MODIFIER_CODE);
      
      end if;
        

      -- zachistvame doc-a, za da ne gurmi unique index-a pri sledvashtoto insert-vane
      if (:new.STORNO_EMPLOYEE_CODE is null) then  -- s ostavane na ekran

        update
          EMP_AVAIL_MODIFIERS eam
        set
          eam.DOC_BRANCH_CODE = null,
          eam.DOC_CODE = null
        where
          (eam.EMP_AVAIL_MODIFIER_CODE = :old.EMP_AVAIL_MODIFIER_CODE);

      end if;


      -- insert-vame stornirano
      insert into EMP_AVAIL_MODIFIERS
      (
        EMP_AVAIL_MODIFIER_CODE,
        EMPLOYEE_CODE,
        AUTHORIZE_EMPLOYEE_CODE,
        BEGIN_DATE,
        END_DATE,
        EMP_AVAIL_MODIFIER_TYPE_CODE,
        EMP_HOUR_AVAIL_MOD_REASON_CODE,
        BEGIN_TIME,
        END_TIME,
        DURATION_HOURS,
        IS_PERSONAL_WORKDAYS_ONLY,
        EMP_DAY_ABSENCE_REASON_CODE,
        EMP_DAY_ABSENCE_DOC_TYPE_CODE,
        EMP_DAY_ABSENCE_DOC_NO,
        EMP_DAY_ABSENCE_DOC_DATE,
        EMP_DAY_ABSENCE_DOC_ISSUER,
        NOTES,
        DOC_BRANCH_CODE,
        DOC_CODE,
        CREATE_EMPLOYEE_CODE,
        CREATE_DATE,
        CREATE_TIME,
        STORNO_EMPLOYEE_CODE,
        STORNO_DATE,
        STORNO_TIME,
        OLD_EMP_AVAIL_MODIFIER_CODE,
        OLD_SHIFT_CODE,
        NEW_SHIFT_CODE
      )
      values
      (
        Decode(:new.STORNO_EMPLOYEE_CODE, null, seq_EMP_AVAIL_MODIFIERS.NextVal, :old.EMP_AVAIL_MODIFIER_CODE),
        :old.EMPLOYEE_CODE,
        :old.AUTHORIZE_EMPLOYEE_CODE,
        :old.BEGIN_DATE,
        :old.END_DATE,
        :old.EMP_AVAIL_MODIFIER_TYPE_CODE,
        :old.EMP_HOUR_AVAIL_MOD_REASON_CODE,
        :old.BEGIN_TIME,
        :old.END_TIME,
        :old.DURATION_HOURS,
        :old.IS_PERSONAL_WORKDAYS_ONLY,
        :old.EMP_DAY_ABSENCE_REASON_CODE,
        :old.EMP_DAY_ABSENCE_DOC_TYPE_CODE,
        :old.EMP_DAY_ABSENCE_DOC_NO,
        :old.EMP_DAY_ABSENCE_DOC_DATE,
        :old.EMP_DAY_ABSENCE_DOC_ISSUER,
        :old.NOTES,
        :old.DOC_BRANCH_CODE,
        :old.DOC_CODE,
        :old.CREATE_EMPLOYEE_CODE,
        :old.CREATE_DATE,
        :old.CREATE_TIME,
        LoginContext.UserCode,
        ContextDate,
        ContextTime,
        null,
        :old.OLD_SHIFT_CODE,
        :old.NEW_SHIFT_CODE
      )
      returning
        EMP_AVAIL_MODIFIER_CODE
      into
        StornoEmpAvailModifierCode;


      if (:new.STORNO_EMPLOYEE_CODE is null) then  -- s ostavane na ekran

        if (:new.BEGIN_TIME is not null) and
           (:new.END_TIME is not null) and
           (:new.BEGIN_TIME > :new.END_TIME) then
          NewEndTime:= :new.END_TIME + 1;
        else
          if (:new.BEGIN_TIME is not null) and
             (:new.END_TIME is not null) and
             (MiscUtils.LargeZero(:new.END_TIME - :new.BEGIN_TIME) > 1) then
            NewEndTime:= :new.END_TIME - 1;
          else    
            NewEndTime:= :new.END_TIME;
          end if;
        end if;
    
        update
          EMP_AVAIL_MODIFIERS eam
        set
          eam.EMPLOYEE_CODE = :new.EMPLOYEE_CODE,
          eam.AUTHORIZE_EMPLOYEE_CODE = :new.AUTHORIZE_EMPLOYEE_CODE,
          eam.BEGIN_DATE = :new.BEGIN_DATE,
          eam.END_DATE = :new.END_DATE,
          eam.EMP_AVAIL_MODIFIER_TYPE_CODE = :new.EMP_AVAIL_MODIFIER_TYPE_CODE,
          eam.EMP_HOUR_AVAIL_MOD_REASON_CODE = :new.EMP_HOUR_AVAIL_MOD_REASON_CODE,
          eam.BEGIN_TIME = :new.BEGIN_TIME,
          eam.END_TIME = NewEndTime,
          eam.DURATION_HOURS = :new.DURATION_HOURS,
          eam.IS_PERSONAL_WORKDAYS_ONLY = :new.IS_PERSONAL_WORKDAYS_ONLY,
          eam.EMP_DAY_ABSENCE_REASON_CODE = :new.EMP_DAY_ABSENCE_REASON_CODE,
          eam.EMP_DAY_ABSENCE_DOC_TYPE_CODE = :new.EMP_DAY_ABSENCE_DOC_TYPE_CODE,
          eam.EMP_DAY_ABSENCE_DOC_NO = :new.EMP_DAY_ABSENCE_DOC_NO,
          eam.EMP_DAY_ABSENCE_DOC_DATE = :new.EMP_DAY_ABSENCE_DOC_DATE,
          eam.EMP_DAY_ABSENCE_DOC_ISSUER = :new.EMP_DAY_ABSENCE_DOC_ISSUER,
          eam.NOTES = :new.NOTES,
          eam.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
          eam.DOC_CODE = :new.DOC_CODE,
          eam.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
          eam.CREATE_DATE = :new.CREATE_DATE,
          eam.CREATE_TIME = :new.CREATE_TIME,
          eam.OLD_EMP_AVAIL_MODIFIER_CODE = StornoEmpAvailModifierCode,
          eam.OLD_SHIFT_CODE = :new.OLD_SHIFT_CODE,
          eam.NEW_SHIFT_CODE = :new.NEW_SHIFT_CODE
        where
          (eam.EMP_AVAIL_MODIFIER_CODE = :old.EMP_AVAIL_MODIFIER_CODE);
        
        -- zadavame OLD_EMP_AVAIL_MODIFIER_CODE na vmuknatoto stornirano sega, za da izbegnem uniqe index-a
        update
          EMP_AVAIL_MODIFIERS eam
        set
          eam.OLD_EMP_AVAIL_MODIFIER_CODE = :old.OLD_EMP_AVAIL_MODIFIER_CODE
        where
          (eam.EMP_AVAIL_MODIFIER_CODE = StornoEmpAvailModifierCode);
          
      end if;

    exception
      when others then
        StateUtils.EndEamfeUpdate;
        raise;
    end;
    StateUtils.EndEamfeUpdate;
  end if;

end tr_EAMFE_IU;
/
