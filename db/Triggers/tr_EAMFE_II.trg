create or replace trigger tr_EAMFE_II
  instead of insert on EMP_AVAIL_MODIFIERS_FOR_EDIT
  for each row
declare
  IntersectCount Number;
  NewEndTime Date;
begin

  if not StateUtils.InEamfeUpdate then
    StateUtils.BeginEamfeUpdate;
    begin
    
      if (:new.EMP_DAY_ABSENCE_REASON_CODE is not null) then
      
        select
          Count(*)
        into
          IntersectCount
        from
          EMP_AVAIL_MODIFIERS eam
        where
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

         
      if (:new.NEW_SHIFT_CODE is not null) then
      
        select
          Count(*)
        into
          IntersectCount
        from
          EMP_AVAIL_MODIFIERS eam
        where
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
         
    
      if (:new.END_TIME is not null) and
         (:new.BEGIN_TIME > :new.END_TIME) then
        NewEndTime:= :new.END_TIME + 1;
      else
        NewEndTime:= :new.END_TIME;
      end if;
      
    
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
        :new.EMP_AVAIL_MODIFIER_CODE,
        :new.EMPLOYEE_CODE,
        :new.AUTHORIZE_EMPLOYEE_CODE,
        :new.BEGIN_DATE,
        :new.END_DATE,
        :new.EMP_AVAIL_MODIFIER_TYPE_CODE,
        :new.EMP_HOUR_AVAIL_MOD_REASON_CODE,
        :new.BEGIN_TIME,
        NewEndTime,
        :new.DURATION_HOURS,
        :new.IS_PERSONAL_WORKDAYS_ONLY,
        :new.EMP_DAY_ABSENCE_REASON_CODE,
        :new.EMP_DAY_ABSENCE_DOC_TYPE_CODE,
        :new.EMP_DAY_ABSENCE_DOC_NO,
        :new.EMP_DAY_ABSENCE_DOC_DATE,
        :new.EMP_DAY_ABSENCE_DOC_ISSUER,
        :new.NOTES,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.CREATE_EMPLOYEE_CODE,
        :new.CREATE_DATE,
        :new.CREATE_TIME,
        :new.STORNO_EMPLOYEE_CODE,
        :new.STORNO_DATE,
        :new.STORNO_TIME,
        :new.OLD_EMP_AVAIL_MODIFIER_CODE,
        :new.OLD_SHIFT_CODE,
        :new.NEW_SHIFT_CODE
      );
    
    exception
      when others then
        StateUtils.EndEamfeUpdate;
        raise;
    end;
    StateUtils.EndEamfeUpdate;
  end if;

end tr_EAMFE_II;
/
