create or replace trigger tr_OE_BU_CHECK_OCCUPATION
  before update of OCCUPATION_CODE on OCCUPATION_EMPLOYEES
  for each row
begin

  if (:new.OCCUPATION_CODE <> :old.OCCUPATION_CODE) then
    raise_application_error(-20000, 'Internal error: OCCUPATION_CODE should not be changed');
  end if;

end tr_OE_BU_CHECK_OCCUPATION;
/
