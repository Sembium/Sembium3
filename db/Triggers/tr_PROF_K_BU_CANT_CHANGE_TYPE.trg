create or replace trigger tr_PROF_K_BU_CANT_CHANGE_TYPE
  before update of PROFESSION_TYPE_CODE on PROFESSION_KINDS
  for each row
begin

  raise_application_error(-20001, 'PROFESSION_KINDS.PROFESSION_TYPE_CODE should not be changed');

end;
/
