create or replace trigger tr_TDFE_ID
  instead of delete on THE_DATES_FOR_EDIT
  for each row
begin

  raise_application_error(-20000, 'Internal error: records should not be deleted from THE_DATES_FOR_EDIT');

end tr_TDFE_ID;
/
