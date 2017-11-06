create or replace trigger tr_VC_BD_DELETE_PAR_REL
  before delete on VENDOR_COMPANIES
  for each row
begin

  if not StateUtils.InCfeUpdate then
  
    delete
      PAR_RELS_FOR_EDIT pr
    where
      (pr.PARTNER_CODE = :old.VENDOR_COMPANY_CODE) and
      (pr.BORDER_REL_TYPE_CODE = CommonConsts.brtVendor);
      
  end if;

end tr_VC_BD_DELETE_PAR_REL;
/
