create or replace trigger tr_PROFBO_BU_CANNOT_CHANGE_PK
  before update of PROFESSION_CODE, PRC_BASE_OP_CODE on PROFESSION_BASE_OPS
  for each row
begin

  raise_application_error(-20001, 'Internal assertion: PROFESSION_BASE_OPS key should not be changed');

end tr_PROFBO_BU_CANNOT_CHANGE_PK;
/
