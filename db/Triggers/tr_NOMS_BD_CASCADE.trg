create or replace trigger tr_NOMS_BD_CASCADE
  before delete on NOMS
  for each row
begin

  delete
    NOM_ITEMS_FOR_EDIT nife
  where
    (nife.NOM_CODE = :old.NOM_CODE);

end tr_NOMS_BD_CASCADE;
/
