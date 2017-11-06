create or replace trigger tr_PF_BDIU_CHECK_IN_PFFE
  before delete or insert or update on PRC_FUNCS
  for each row
begin

  if not StateUtils.InPffeUpdate then
    raise_application_error(-20000, 'Internal error: PRC_FUNCS should not be edited directly');
  end if;

end tr_PF_BDIU_CHECK_IN_PFFE;
/
