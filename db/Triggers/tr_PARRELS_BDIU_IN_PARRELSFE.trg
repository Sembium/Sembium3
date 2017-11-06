create or replace trigger tr_PARRELS_BDIU_IN_PARRELSFE
  before delete or insert or update on PAR_RELS
  for each row
begin

  if not StateUtils.InParrelsfeUpdate then
    raise_application_error(-20000, 'Internal error: PAR_RELS should not be edited directly');
  end if;

end tr_PARRELS_BDIU_IN_PARRELSFE;
/
