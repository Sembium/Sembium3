create or replace trigger tr_DPTFE_IU
  instead of update on DEPTS_FOR_EDIT
  for each row
declare
  IncorrectPeriods Number;
begin

  if not StateUtils.InDptfeUpdate then
    StateUtils.BeginDptfeUpdate;
    begin
    
      if (:new.DEPT_CODE <> :old.DEPT_CODE) then
        raise_application_error(-20000, 'Internal error: DEPTS key should not be changed');
      end if;
      
      
      if (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
         (:new.END_DATE <> :old.END_DATE) or
         (:new.PARENT_CODE <> :old.PARENT_CODE) then

        select
          Count(*)
        into
          IncorrectPeriods
        from
          DEPTS d
        where
          (d.DEPT_CODE = :new.PARENT_CODE) and
          ( (:new.BEGIN_DATE < d.BEGIN_DATE) or
            (:new.END_DATE > d.END_DATE) );
          
        if (IncorrectPeriods > 0) then
          raise_application_error(-20002,
            ServerMessages.SIncorrectDeptParentPeriodId || '(' ||
            'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
            'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
          );
        end if;

      end if;
      
      
      if (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
         (:new.END_DATE <> :old.END_DATE) then

        select
          Count(*)
        into
          IncorrectPeriods
        from
          DEPTS d
        where
          (d.PARENT_CODE = :new.DEPT_CODE) and
          ( (d.BEGIN_DATE < :new.BEGIN_DATE) or
            (d.END_DATE > :new.END_DATE) );
          
        if (IncorrectPeriods > 0) then
          raise_application_error(-20002,
            ServerMessages.SIncorrectDeptChildrenPeriodId || '(' ||
            'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
            'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
          );
        end if;
      
        select
          Count(*)
        into
          IncorrectPeriods
        from
          OCCUPATIONS o
        where
          (o.DEPT_CODE = :old.DEPT_CODE) and
          ( (o.OCCUPATION_BEGIN_DATE < :new.BEGIN_DATE) or
            (o.OCCUPATION_END_DATE > :new.END_DATE) );
          
        if (IncorrectPeriods > 0) then
          raise_application_error(-20002,
            ServerMessages.SIncorrectDeptOccPeriodId || '(' ||
            'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
            'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
          );
        end if;

        select
          Count(*)
        into
          IncorrectPeriods
        from
          DEPT_PERIODS dp
        where
          (dp.DEPT_CODE = :old.DEPT_CODE) and
          ( (dp.BEGIN_DATE < :new.BEGIN_DATE) or
            (dp.END_DATE > :new.END_DATE) );
          
        if (IncorrectPeriods > 0) then
          raise_application_error(-20002,
            ServerMessages.SIncorrectDeptDeptPerPeriodId || '(' ||
            'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
            'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
          );
        end if;

      end if;

      
      update
        DEPTS dpt
      set
        dpt.BEGIN_DATE = :new.BEGIN_DATE,
        dpt.CUSTOM_CODE = :new.CUSTOM_CODE,
        dpt.DEPT_TYPE_CODE = :new.DEPT_TYPE_CODE,
        dpt.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        dpt.DOC_CODE = :new.DOC_CODE,
        dpt.END_DATE = :new.END_DATE,
        dpt.IS_EXTERNAL = :new.IS_EXTERNAL,
        dpt.IS_GROUP = :new.IS_GROUP,
        dpt.IS_RECURRENT = :new.IS_RECURRENT,
        dpt.NAME = :new.NAME,
        dpt.PARENT_CODE = :new.PARENT_CODE,
        dpt.PRODUCT_CODE = :new.PRODUCT_CODE,
        dpt.SUFFIX_LETTER = :new.SUFFIX_LETTER,
        dpt.IS_OWD_PRIORITIES_SET_COMPLETE = :new.IS_OWD_PRIORITIES_SET_COMPLETE,
        dpt.SKIP_OWDP_TYPE_CHECK = :new.SKIP_OWDP_TYPE_CHECK
      where
        (dpt.DEPT_CODE = :old.DEPT_CODE);
      
      if (:old.PARENT_CODE <> :new.PARENT_CODE) then

        update
          DEPT_PRC_FUNCS dpf
        set
          dpf.PARENT_CODE = :new.PARENT_CODE
        where
          (dpf.DEPT_CODE = :new.DEPT_CODE);
        
        update
          DEPT_PRC_KNOWLS dpk
        set
          dpk.PARENT_CODE = :new.PARENT_CODE
        where
          (dpk.DEPT_CODE = :new.DEPT_CODE);
        
        update
          DEPT_PRC_BASE_OPS dpbo
        set
          dpbo.PARENT_CODE = :new.PARENT_CODE
        where
          (dpbo.DEPT_CODE = :new.DEPT_CODE);
        
        update
          DEPT_PRC_BASE_ACTIONS dpba
        set
          dpba.PARENT_CODE = :new.PARENT_CODE
        where
          (dpba.DEPT_CODE = :new.DEPT_CODE);

      end if;
      
      if (:old.BEGIN_DATE <> :new.BEGIN_DATE) or
         (:old.END_DATE <> :new.END_DATE) then

        update
          DEPT_PRC_BASE_ACTIONS dpba
        set
          dpba.BEGIN_DATE = :new.BEGIN_DATE,
          dpba.END_DATE = :new.END_DATE
        where
          (dpba.DEPT_CODE = :new.DEPT_CODE) and
          (dpba.OVERRIDE_DATE_INTERVAL = 0);

        update
          DEPT_PRC_CONCRETE_ACTIONS dpca
        set
          dpca.BEGIN_DATE = :new.BEGIN_DATE,
          dpca.END_DATE = :new.END_DATE
        where
          (dpca.DEPT_CODE = :new.DEPT_CODE) and
          (dpca.OVERRIDE_DATE_INTERVAL = 0);

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
    
    exception
      when others then
        StateUtils.EndDptfeUpdate;
        raise;
    end;
    StateUtils.EndDptfeUpdate;
  end if;

end;
/
