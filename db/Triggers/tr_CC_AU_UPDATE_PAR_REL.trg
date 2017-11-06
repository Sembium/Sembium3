create or replace trigger tr_CC_AU_UPDATE_PAR_REL
  after update on CLIENT_COMPANIES
  for each row
begin

  if (:new.CLIENT_COMPANY_CODE <> :old.CLIENT_COMPANY_CODE) then
    raise_application_error(-20000, 'Internal error: CLIENT_COMPANIES key should not be changed');
  end if;

  update
    PAR_RELS_FOR_EDIT pr
  set
    pr.PRIORITY_CODE = :new.PRIORITY_CODE,
    pr.COMMON_PARTNER_CODE = :new.COMMON_PARTNER_CODE
  where
    (pr.PARTNER_CODE = :old.CLIENT_COMPANY_CODE) and
    (pr.BORDER_REL_TYPE_CODE = CommonConsts.brtClient);

end tr_CC_AU_UPDATE_PAR_REL;
/
