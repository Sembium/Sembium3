create or replace trigger tr_PARRELSFE_II
  instead of insert on PAR_RELS_FOR_EDIT
  for each row
begin

  if not StateUtils.InParrelsfeUpdate then
    StateUtils.BeginParrelsfeUpdate;
    begin

      insert into PAR_RELS
      (
        PARTNER_CODE,
        BORDER_REL_TYPE_CODE,
        PRIORITY_CODE,
        COMMON_PARTNER_CODE
      )
      values
      (
        :new.PARTNER_CODE,
        :new.BORDER_REL_TYPE_CODE,
        :new.PRIORITY_CODE,
        :new.COMMON_PARTNER_CODE
      );

    exception
      when others then
        StateUtils.EndParrelsfeUpdate;
        raise;
    end;
    StateUtils.EndParrelsfeUpdate;
  end if;

end tr_PARRELSFE_II;
/
