create or replace trigger tr_NFE_II
  instead of insert on NOMS_FOR_EDIT
  for each row
begin

  if not StateUtils.InNfeUpdate then
    StateUtils.BeginNfeUpdate;
    begin

      insert into NOMS
      (
        NOM_CODE, 
        NOM_NAME, 
        PRODUCT_CLASS_CODE, 
        NOM_NO,
        DOC_BRANCH_CODE, 
        DOC_CODE 
      )
      values
      (
        :new.NOM_CODE, 
        :new.NOM_NAME, 
        :new.PRODUCT_CLASS_CODE, 
        :new.NOM_NO,
        :new.DOC_BRANCH_CODE, 
        :new.DOC_CODE 
      );

    exception
      when others then
        StateUtils.EndNfeUpdate;
        raise;
    end;
    StateUtils.EndNfeUpdate;
  end if;

end;
/
