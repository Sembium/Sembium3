create or replace trigger tr_VC_AI_INSERT_PAR_REL
  after insert on VENDOR_COMPANIES
  for each row
begin

  insert into PAR_RELS_FOR_EDIT
  (
    PARTNER_CODE,
    BORDER_REL_TYPE_CODE,
    PRIORITY_CODE,
    COMMON_PARTNER_CODE
  )
  values
  (
    :new.VENDOR_COMPANY_CODE,
    CommonConsts.brtVendor,
    :new.PRIORITY_CODE,
    :new.COMMON_PARTNER_CODE
  );

end tr_VC_AI_INSERT_PAR_REL;
/
