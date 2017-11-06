create or replace trigger tr_PSFE_IU
  instead of update on PRODUCT_STORES_FOR_EDIT
  for each row
declare
  IntersectCount Number;
begin

  if not StateUtils.InPsfeUpdate then
    StateUtils.BeginPsfeUpdate;
    begin
    
      if (:new.PRODUCT_STORE_CODE <> :old.PRODUCT_STORE_CODE) then
        raise_application_error(-20000, 'Internal error: PRODUCT_STORES key should not be changed');
      end if;    
      
      if (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
         (:new.END_DATE <> :old.END_DATE) or
         (:new.PRODUCT_CODE <> :old.PRODUCT_CODE) or
         (:new.STORE_CODE <> :old.STORE_CODE) then
         
        select
          Count(*)
        into
          IntersectCount
        from
          PRODUCT_STORES ps
        where
          (ps.PRODUCT_STORE_CODE <> :old.PRODUCT_STORE_CODE) and
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

      end if;
    
      update
        PRODUCT_STORES ps
      set
        ps.PRODUCT_CODE = :new.PRODUCT_CODE,
        ps.STORE_CODE = :new.STORE_CODE,
        ps.MIN_QUANTITY = :new.MIN_QUANTITY,
        ps.BEGIN_DATE = :new.BEGIN_DATE,
        ps.END_DATE = :new.END_DATE,
        ps.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        ps.DOC_CODE = :new.DOC_CODE
      where
        (ps.PRODUCT_STORE_CODE = :old.PRODUCT_STORE_CODE);        
        
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
        StateUtils.EndPsfeUpdate;
        raise;
    end;
    StateUtils.EndPsfeUpdate;
  end if;
    
end tr_PSFE_IU;
/
