create or replace trigger tr_SR_BD_CHECK_CODE
  before delete on SYS_ROLES for each row
begin
  if (:old.SYS_ROLE_CODE = CommonConsts.srDefault) then
    raise_application_error(-20001, 'Internal error: This system role should not be deleted');
  end if;
end tr_SR_BD_CHECK_CODE;
/
