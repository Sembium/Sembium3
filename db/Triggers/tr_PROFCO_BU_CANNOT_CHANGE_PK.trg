create or replace trigger tr_PROFCO_BU_CANNOT_CHANGE_PK
  before update of PROFESSION_CODE, PRC_CONCRETE_OP_CODE on PROFESSION_CONCRETE_OPS
  for each row
begin

  raise_application_error(-20001, 'Internal assertion: PROFESSION_CONCRETE_OPS key should not be changed');

end tr_PROFCO_BU_CANNOT_CHANGE_PK;
/
