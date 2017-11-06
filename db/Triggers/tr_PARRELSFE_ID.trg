create or replace trigger tr_PARRELSFE_ID
  instead of delete on PAR_RELS_FOR_EDIT
  for each row
begin

  if not StateUtils.InParrelsfeUpdate then
    StateUtils.BeginParrelsfeUpdate;
    begin

      delete
        PAR_RELS parrels
      where
        (parrels.PARTNER_CODE = :old.PARTNER_CODE) and
        (parrels.BORDER_REL_TYPE_CODE = :old.BORDER_REL_TYPE_CODE);

    exception
      when others then
        StateUtils.EndParrelsfeUpdate;
        raise;
    end;
    StateUtils.EndParrelsfeUpdate;
  end if;

end tr_PARRELSFE_ID;
/
