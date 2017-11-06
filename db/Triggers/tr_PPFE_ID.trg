create or replace trigger tr_PPFE_ID
  instead of delete on PRODUCT_PARAMS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPpfeUpdate then
    StateUtils.BeginPpfeUpdate;
    begin

      delete
        PRODUCT_PARAMS pp
      where
        (pp.PRODUCT_CODE = :old.PRODUCT_CODE) and
        (pp.PRODUCT_PARAM_CODE = :old.PRODUCT_PARAM_CODE);

      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) then
         
        delete
          DOCS_FOR_EDIT dfe
        where
          (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
          (dfe.DOC_CODE = :old.DOC_CODE) and
          
          not exists(
            select
              1
            from
              PRODUCT_PARAMS pp
            where
              (pp.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
              (pp.DOC_CODE = :old.DOC_CODE)
          );
         
      end if;

    exception
      when others then
        StateUtils.EndPpfeUpdate;
        raise;
    end;
    StateUtils.EndPpfeUpdate;
  end if;

end;
/
