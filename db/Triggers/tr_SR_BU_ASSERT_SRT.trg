create or replace trigger tr_SR_BU_ASSERT_SRT
  before update of SYS_ROLE_TYPE_CODE on SYS_ROLES 
  for each row
begin

  raise_application_error(-20000, 'Internal assertion: SYS_ROLE_TYPE_CODE should not be changed (possibility of existing children)');
  
end tr_SR_BU_ASSERT_SRT;
/
