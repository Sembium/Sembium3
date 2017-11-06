create or replace trigger tr_PK_BDIU_CHECK_IN_PKFE
  before delete or insert or update on PRC_KNOWLS
  for each row
begin

  if not StateUtils.InPkfeUpdate then
    raise_application_error(-20000, 'Internal error: PRC_KNOWLS should not be edited directly');
  end if;

end tr_PK_BDIU_CHECK_IN_PKFE;
/
