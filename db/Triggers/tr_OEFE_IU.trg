create or replace trigger tr_OEFE_IU
  instead of update on OCCUPATION_EMPLOYEES_FOR_EDIT
  for each row
declare
  IntersectCount Number;
  IncorrectOccEmployeePeriod Number;
  OutsideActionStatusDateCount Number;
begin

  if not StateUtils.InOefeUpdate then
    StateUtils.BeginOefeUpdate;
    begin

      if (:new.OCCUPATION_EMPLOYEE_CODE <> :old.OCCUPATION_EMPLOYEE_CODE) then
        raise_application_error(-20000, 'Internal error: OCCUPATION_EMPLOYEES key should not be changed');
      end if;
    
      if (:new.ASSIGNMENT_BEGIN_DATE <> :old.ASSIGNMENT_BEGIN_DATE) or
         (:new.ASSIGNMENT_END_DATE <> :old.ASSIGNMENT_END_DATE) or
         (:new.OCCUPATION_CODE <> :old.OCCUPATION_CODE) then
         
        select
          Count(*)
        into
          IntersectCount
        from
          OCCUPATION_EMPLOYEES oe
        where
          (oe.OCCUPATION_EMPLOYEE_CODE <> :old.OCCUPATION_EMPLOYEE_CODE) and
          (oe.OCCUPATION_CODE = :new.OCCUPATION_CODE) and
          ( DateTimeUtils.DatePeriodIntersectLength(
              oe.ASSIGNMENT_BEGIN_DATE, oe.ASSIGNMENT_END_DATE,
              :new.ASSIGNMENT_BEGIN_DATE, :new.ASSIGNMENT_END_DATE
            ) > 0
          )
        ;
      
        if (IntersectCount > 0) then
          raise_application_error(-20002,
            ServerMessages.SCrossedOccEmployeePeriodId || '(' ||
            'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.ASSIGNMENT_BEGIN_DATE) || ', ' ||
            'EndDate:d=' || MessageUtils.InternalDateToStr(:new.ASSIGNMENT_END_DATE) || ')'
          );
        end if;

        select
          Count(*)
        into
          IncorrectOccEmployeePeriod
        from
          OCCUPATIONS o
        where
          (o.OCCUPATION_CODE = :new.OCCUPATION_CODE) and
          ( (:new.ASSIGNMENT_BEGIN_DATE < o.OCCUPATION_BEGIN_DATE) or
            (:new.ASSIGNMENT_END_DATE > o.OCCUPATION_END_DATE) );
            
        if (IncorrectOccEmployeePeriod > 0) then
          raise_application_error(-20002,
            ServerMessages.SIncorrectOccEmployeePeriodId || '(' ||
            'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.ASSIGNMENT_BEGIN_DATE) || ', ' ||
            'EndDate:d=' || MessageUtils.InternalDateToStr(:new.ASSIGNMENT_END_DATE) || ')'
          );
        end if;

        select
          ( select
              Count(*)
            from
              OE_PRC_BASE_ACT_STAT_CHGS oepbasc
            where
              (oepbasc.OCCUPATION_EMPLOYEE_CODE = :new.OCCUPATION_EMPLOYEE_CODE) and
              (not oepbasc.STATUS_DATE between :new.ASSIGNMENT_BEGIN_DATE and :new.ASSIGNMENT_END_DATE)
          ) +
          ( select
              Count(*)
            from
              OE_PRC_CONCRETE_ACT_STAT_CHGS oepcasc
            where
              (oepcasc.OCCUPATION_EMPLOYEE_CODE = :new.OCCUPATION_EMPLOYEE_CODE) and
              (not oepcasc.STATUS_DATE between :new.ASSIGNMENT_BEGIN_DATE and :new.ASSIGNMENT_END_DATE)
          )
        into
          OutsideActionStatusDateCount
        from
          DUAL;

        if (OutsideActionStatusDateCount > 0) then
          raise_application_error(-20000, ServerMessages.SOEOutsideActionStatusExistsId);
        end if;

      end if;
      
      
      update
        OCCUPATION_EMPLOYEES oe
      set
        oe.OCCUPATION_CODE = :new.OCCUPATION_CODE,
        oe.EMPLOYEE_CODE = :new.EMPLOYEE_CODE,
        oe.ASSIGNMENT_BEGIN_DATE = :new.ASSIGNMENT_BEGIN_DATE,
        oe.ASSIGNMENT_END_DATE = :new.ASSIGNMENT_END_DATE,
        oe.OE_REGIME_CODE = :new.OE_REGIME_CODE,
        oe.SALARY = :new.SALARY,
        oe.SALARY_DATE_UNIT_CODE = :new.SALARY_DATE_UNIT_CODE,
        oe.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        oe.DOC_CODE = :new.DOC_CODE
      where
        (oe.OCCUPATION_EMPLOYEE_CODE = :old.OCCUPATION_EMPLOYEE_CODE)
      ;
    
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
    
      MiscUtils.CheckEmployeeOccupations(:old.EMPLOYEE_CODE);

    exception
      when others then
        StateUtils.EndOefeUpdate;
        raise;
    end;
    StateUtils.EndOefeUpdate;
  end if;
    
end tr_OEFE_IU;
/
