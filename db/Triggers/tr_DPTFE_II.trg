create or replace trigger tr_DPTFE_II
  instead of insert on DEPTS_FOR_EDIT
  for each row
declare
  IncorrectPeriods Number;
begin

  if not StateUtils.InDptfeUpdate then
    StateUtils.BeginDptfeUpdate;
    begin
    
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

    
      insert into DEPTS
      (
        BEGIN_DATE,
        CUSTOM_CODE,
        DEPT_CODE,
        DEPT_TYPE_CODE,
        DOC_BRANCH_CODE,
        DOC_CODE,
        END_DATE,
        IS_EXTERNAL,
        IS_GROUP,
        IS_RECURRENT,
        NAME,
        PARENT_CODE,
        PRODUCT_CODE,
        SUFFIX_LETTER,
        IS_OWD_PRIORITIES_SET_COMPLETE,
        SKIP_OWDP_TYPE_CHECK
      )
      values
      (
        :new.BEGIN_DATE,
        :new.CUSTOM_CODE,
        :new.DEPT_CODE,
        :new.DEPT_TYPE_CODE,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.END_DATE,
        :new.IS_EXTERNAL,
        :new.IS_GROUP,
        :new.IS_RECURRENT,
        :new.NAME,
        :new.PARENT_CODE,
        :new.PRODUCT_CODE,
        :new.SUFFIX_LETTER,
        :new.IS_OWD_PRIORITIES_SET_COMPLETE,
        :new.SKIP_OWDP_TYPE_CHECK
      );
    
    exception
      when others then
        StateUtils.EndDptfeUpdate;
        raise;
    end;
    StateUtils.EndDptfeUpdate;
  end if;

end;
/
