create or replace trigger tr_OFE_IU
  instead of update on OCCUPATIONS_FOR_EDIT
  for each row
declare
  IncorrectPeriods Number;
begin

  if not StateUtils.InOfeUpdate then
    StateUtils.BeginOfeUpdate;
    begin

      if (:new.OCCUPATION_CODE <> :old.OCCUPATION_CODE) then
        raise_application_error(-20000, 'Internal error: OCCUPATIONS key should not be changed');
      end if;

    
      if (:new.OCCUPATION_BEGIN_DATE <> :old.OCCUPATION_BEGIN_DATE) or
         (:new.OCCUPATION_END_DATE <> :old.OCCUPATION_END_DATE) or
         (:new.DEPT_CODE <> :old.DEPT_CODE) then

        select
          Count(*)
        into
          IncorrectPeriods
        from
          DEPTS d
        where
          (d.DEPT_CODE = :new.DEPT_CODE) and
          ( (:new.OCCUPATION_BEGIN_DATE < d.BEGIN_DATE) or
            (:new.OCCUPATION_END_DATE > d.END_DATE) );
          
        if (IncorrectPeriods > 0) then
          raise_application_error(-20002,
            ServerMessages.SIncorrectOccDeptPeriodId || '(' ||
            'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.OCCUPATION_BEGIN_DATE) || ', ' ||
            'EndDate:d=' || MessageUtils.InternalDateToStr(:new.OCCUPATION_END_DATE) || ')'
          );
        end if;

      end if;

      
      if (:new.OCCUPATION_BEGIN_DATE <> :old.OCCUPATION_BEGIN_DATE) or
         (:new.OCCUPATION_END_DATE <> :old.OCCUPATION_END_DATE) then

        select
          Count(*)
        into
          IncorrectPeriods
        from
          OCCUPATION_EMPLOYEES oe
        where
          (oe.OCCUPATION_CODE = :new.OCCUPATION_CODE) and
          ( (oe.ASSIGNMENT_BEGIN_DATE < :new.OCCUPATION_BEGIN_DATE) or
            (oe.ASSIGNMENT_END_DATE > :new.OCCUPATION_END_DATE) );
  
        if (IncorrectPeriods > 0) then
          raise_application_error(-20002,
            ServerMessages.SIncorrectOccupationPeriodId || '(' ||
            'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.OCCUPATION_BEGIN_DATE) || ', ' ||
            'EndDate:d=' || MessageUtils.InternalDateToStr(:new.OCCUPATION_END_DATE) || ')'
          );
        end if;
      
      end if;    

          
      update
        OCCUPATIONS o
      set
        o.OCCUPATION_NAME = :new.OCCUPATION_NAME,
        o.DEPT_CODE = :new.DEPT_CODE,
        o.OCCUPATION_BEGIN_DATE = :new.OCCUPATION_BEGIN_DATE,
        o.OCCUPATION_END_DATE = :new.OCCUPATION_END_DATE,
        o.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        o.DOC_CODE = :new.DOC_CODE,
        o.OCCUPATION_LEVEL = :new.OCCUPATION_LEVEL,
        o.NOTES = :new.NOTES,
        o.IS_MAIN = :new.IS_MAIN,
        o.OCCUPATION_PHASE_CODE = :new.OCCUPATION_PHASE_CODE,
        o.PRODUCT_CODE = :new.PRODUCT_CODE,
        o.CRAFT_CODE = :new.CRAFT_CODE
      where
        (o.OCCUPATION_CODE = :old.OCCUPATION_CODE)
      ;

      if (:old.OCCUPATION_BEGIN_DATE <> :new.OCCUPATION_BEGIN_DATE) or
         (:old.OCCUPATION_END_DATE <> :new.OCCUPATION_END_DATE) then

        update
          OCC_PRC_BASE_ACTIONS opba
        set
          ( opba.BEGIN_DATE,
            opba.END_DATE
          ) =
          ( select
              Greatest(:new.OCCUPATION_BEGIN_DATE, owdapba.BEGIN_DATE),
              Least(:new.OCCUPATION_END_DATE, owdapba.END_DATE)
            from
              OWD_AGGR_PRC_BASE_ACTIONS owdapba
            where
              (owdapba.OCCUPATION_CODE = opba.OCCUPATION_CODE) and
              (owdapba.PRC_FUNC_CODE = opba.PRC_FUNC_CODE) and
              (owdapba.PRC_KNOWL_CODE = opba.PRC_KNOWL_CODE) and
              (owdapba.PRC_BASE_OP_CODE = opba.PRC_BASE_OP_CODE) and
              (owdapba.PRC_ACTION_CODE = opba.PRC_ACTION_CODE)
          )
        where
          (opba.OCCUPATION_CODE = :new.OCCUPATION_CODE) and
          (opba.OVERRIDE_DATE_INTERVAL = 0);

        update
          OCC_PRC_CONCRETE_ACTIONS opca
        set
          ( opca.BEGIN_DATE,
            opca.END_DATE
          ) =
          ( select
              Greatest(:new.OCCUPATION_BEGIN_DATE, owdapca.BEGIN_DATE),
              Least(:new.OCCUPATION_END_DATE, owdapca.END_DATE)
            from
              OWD_AGGR_PRC_CONCRETE_ACTIONS owdapca
            where
              (owdapca.OCCUPATION_CODE = opca.OCCUPATION_CODE) and
              (owdapca.PRC_FUNC_CODE = opca.PRC_FUNC_CODE) and
              (owdapca.PRC_KNOWL_CODE = opca.PRC_KNOWL_CODE) and
              (owdapca.PRC_BASE_OP_CODE = opca.PRC_BASE_OP_CODE) and
              (owdapca.PRC_CONCRETE_OP_CODE = opca.PRC_CONCRETE_OP_CODE) and
              (owdapca.PRC_ACTION_CODE = opca.PRC_ACTION_CODE)
          )
        where
          (opca.OCCUPATION_CODE = :new.OCCUPATION_CODE) and
          (opca.OVERRIDE_DATE_INTERVAL = 0);

      end if;
      
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

      for e in
        ( select
            oe.EMPLOYEE_CODE
          from
            OCCUPATION_EMPLOYEES oe
          where
            (oe.OCCUPATION_CODE = :new.OCCUPATION_CODE)
          group by
            oe.EMPLOYEE_CODE
          order by
            oe.EMPLOYEE_CODE
        ) loop
        
        MiscUtils.CheckEmployeeOccupations(e.EMPLOYEE_CODE);
        
      end loop;
        

    exception
      when others then
        StateUtils.EndOfeUpdate;
        raise;
    end;
    StateUtils.EndOfeUpdate;
  end if;
    
end tr_OFE_IU;
/
