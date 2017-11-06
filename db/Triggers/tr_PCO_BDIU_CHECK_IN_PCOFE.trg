create or replace trigger tr_PCO_BDIU_CHECK_IN_PCOFE
  before delete or insert or update on PRC_CONCRETE_OPS
  for each row
begin

  if not StateUtils.InPcofeUpdate then
    raise_application_error(-20000, 'Internal error: PRC_CONCRETE_OPS should not be edited directly');
  end if;

end tr_PCO_BDIU_CHECK_IN_PCOFE;
/
