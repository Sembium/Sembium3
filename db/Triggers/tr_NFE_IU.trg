create or replace trigger tr_NFE_IU
  instead of update on NOMS_FOR_EDIT
  for each row
begin

  if not StateUtils.InNfeUpdate then
    StateUtils.BeginNfeUpdate;
    begin

      if (:new.NOM_CODE <> :old.NOM_CODE) then
        raise_application_error(-20000, 'Internal error: NOMS key should not be changed');
      end if;

      update
        NOMS n
      set
        n.NOM_NAME = :new.NOM_NAME,
        n.PRODUCT_CLASS_CODE = :new.PRODUCT_CLASS_CODE,
        n.NOM_NO = :new.NOM_NO,
        n.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE, 
        n.DOC_CODE = :new.DOC_CODE 
      where
        (n.NOM_CODE = :old.NOM_CODE);

    exception
      when others then
        StateUtils.EndNfeUpdate;
        raise;
    end;
    StateUtils.EndNfeUpdate;
  end if;

end;
/
