create or replace trigger tr_EE_BD_CASCADE
  before delete on EXCEPT_EVENTS
  for each row
begin

  delete
    EXCEPT_EVENT_DAMAGES_FOR_EDIT eedfe
  where
    (eedfe.EXCEPT_EVENT_CODE = :old.EXCEPT_EVENT_CODE);

  delete
    EXCEPT_EVENT_TASKS_FOR_EDIT eetfe
  where
    (eetfe.EXCEPT_EVENT_CODE = :old.EXCEPT_EVENT_CODE);

end tr_EE_BD_CASCADE;
/
