create or replace trigger tr_CC_AI_INSERT_PAR_REL
  after insert on CLIENT_COMPANIES
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
    :new.CLIENT_COMPANY_CODE,
    CommonConsts.brtClient,
    :new.PRIORITY_CODE,
    :new.COMMON_PARTNER_CODE
  );

end tr_CC_AI_INSERT_PAR_REL;
/
