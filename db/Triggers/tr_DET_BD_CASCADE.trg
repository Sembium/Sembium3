create or replace trigger tr_DET_BD_CASCADE
  before delete on DISC_EVENT_TYPES
  for each row
begin

  delete
    DISC_EVENT_TYPE_PER_FOR_EDIT detpfe
  where
    (detpfe.DISC_EVENT_TYPE_CODE = :old.DISC_EVENT_TYPE_CODE);

end tr_DET_BD_CASCADE;
/
