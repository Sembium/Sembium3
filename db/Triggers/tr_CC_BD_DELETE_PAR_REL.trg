create or replace trigger tr_CC_BD_DELETE_PAR_REL
  before delete on CLIENT_COMPANIES  
  for each row
begin
  
  if not StateUtils.InCfeUpdate then

    delete
      PAR_RELS_FOR_EDIT pr
    where
      (pr.PARTNER_CODE = :old.CLIENT_COMPANY_CODE) and
      (pr.BORDER_REL_TYPE_CODE = CommonConsts.brtClient);

  end if;
  
end tr_CC_BD_DELETE_PAR_REL;
/
