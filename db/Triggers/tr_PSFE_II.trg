create or replace trigger tr_PSFE_II
  instead of insert on PRODUCT_STORES_FOR_EDIT
  for each row
declare
  IntersectCount Number;
begin

  if not StateUtils.InPsfeUpdate then
    StateUtils.BeginPsfeUpdate;
    begin

      select
        Count(*)
      into
        IntersectCount
      from
        PRODUCT_STORES ps
      where
        (ps.PRODUCT_CODE = :new.PRODUCT_CODE) and
        (ps.STORE_CODE = :new.STORE_CODE) and
        ( DateTimeUtils.DatePeriodIntersectLength(
            ps.BEGIN_DATE, ps.END_DATE,
            :new.BEGIN_DATE, :new.END_DATE
          ) > 0
        )
      ;
    
      if (IntersectCount > 0) then
        raise_application_error(-20002,
          ServerMessages.SCrossedProductStorePeriodId || '(' ||
          'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
          'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
        );
      end if;
    
    
      insert into PRODUCT_STORES
      (
        PRODUCT_STORE_CODE,
        PRODUCT_CODE,
        STORE_CODE,
        MIN_QUANTITY,
        BEGIN_DATE,
        END_DATE,
        DOC_BRANCH_CODE,
        DOC_CODE
      )
      values 
      (
        :new.PRODUCT_STORE_CODE,
        :new.PRODUCT_CODE,
        :new.STORE_CODE,
        :new.MIN_QUANTITY,
        :new.BEGIN_DATE,
        :new.END_DATE,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE
      );
     
    exception
      when others then
        StateUtils.EndPsfeUpdate;
        raise;
    end;
    StateUtils.EndPsfeUpdate;
  end if;
    
end tr_PSFE_II;
/
