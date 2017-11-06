create or replace trigger tr_OEFE_II
  instead of insert on OCCUPATION_EMPLOYEES_FOR_EDIT
  for each row
declare
  IntersectCount Number;
  IncorrectOccEmployeePeriod Number;
begin

  if not StateUtils.InOefeUpdate then
    StateUtils.BeginOefeUpdate;
    begin
    
      select
        Count(*)
      into
        IntersectCount
      from
        OCCUPATION_EMPLOYEES oe
      where
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
          
    
      insert into OCCUPATION_EMPLOYEES
      (
        OCCUPATION_EMPLOYEE_CODE,
        OCCUPATION_CODE, 
        EMPLOYEE_CODE, 
        ASSIGNMENT_BEGIN_DATE, 
        ASSIGNMENT_END_DATE, 
        OE_REGIME_CODE,
        SALARY,
        SALARY_DATE_UNIT_CODE,
        DOC_BRANCH_CODE,
        DOC_CODE
      )
      values
      (
        :new.OCCUPATION_EMPLOYEE_CODE,
        :new.OCCUPATION_CODE,
        :new.EMPLOYEE_CODE,
        :new.ASSIGNMENT_BEGIN_DATE,
        :new.ASSIGNMENT_END_DATE,
        :new.OE_REGIME_CODE,
        :new.SALARY,
        :new.SALARY_DATE_UNIT_CODE,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE
      );

     MiscUtils.CheckEmployeeOccupations(:new.EMPLOYEE_CODE);
     

     insert into OE_PRC_BASE_ACTIONS
     (
       OCCUPATION_EMPLOYEE_CODE,
       OCCUPATION_CODE,
       PRC_FUNC_CODE,
       PRC_KNOWL_CODE,
       PRC_BASE_OP_CODE,
       PRC_ACTION_CODE,
       BEGIN_DATE,
       END_DATE
     )
     select
       :new.OCCUPATION_EMPLOYEE_CODE,
       opba.OCCUPATION_CODE,
       opba.PRC_FUNC_CODE,
       opba.PRC_KNOWL_CODE,
       opba.PRC_BASE_OP_CODE,
       opba.PRC_ACTION_CODE,
       opba.BEGIN_DATE,
       opba.END_DATE
     from
       OCC_PRC_BASE_ACTIONS opba
     where
       (opba.OCCUPATION_CODE = :new.OCCUPATION_CODE);

     insert into OE_PRC_CONCRETE_ACTIONS
     (
       OCCUPATION_EMPLOYEE_CODE,
       OCCUPATION_CODE,
       PRC_FUNC_CODE,
       PRC_KNOWL_CODE,
       PRC_BASE_OP_CODE,
       PRC_CONCRETE_OP_CODE,
       PRC_ACTION_CODE,
       BEGIN_DATE,
       END_DATE
     )
     select
       :new.OCCUPATION_EMPLOYEE_CODE,
       opca.OCCUPATION_CODE,
       opca.PRC_FUNC_CODE,
       opca.PRC_KNOWL_CODE,
       opca.PRC_BASE_OP_CODE,
       opca.PRC_CONCRETE_OP_CODE,
       opca.PRC_ACTION_CODE,
       opca.BEGIN_DATE,
       opca.END_DATE
     from
       OCC_PRC_CONCRETE_ACTIONS opca
     where
       (opca.OCCUPATION_CODE = :new.OCCUPATION_CODE);

    exception
      when others then
        StateUtils.EndOefeUpdate;
        raise;
    end;
    StateUtils.EndOefeUpdate;
  end if;
    
end tr_OEFE_II;
/
