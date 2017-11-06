create or replace trigger tr_BD_PAR_RELS_DEL_PRPERS
  before delete on PAR_RELS
  for each row
begin

  delete
    PAR_REL_PERIODS_FOR_EDIT prper
  where
    (prper.PARTNER_CODE = :old.PARTNER_CODE) and
    (prper.BORDER_REL_TYPE_CODE = :old.BORDER_REL_TYPE_CODE);
  
end tr_BD_PAR_RELS_DEL_PRPERS;
/
