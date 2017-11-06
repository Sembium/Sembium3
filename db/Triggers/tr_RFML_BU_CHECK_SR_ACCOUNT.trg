create or replace trigger tr_RFML_BU_CHECK_SR_ACCOUNT
  before update of PARTNER_CODE, PARTNER_ACCOUNT_CODE on REAL_FIN_MODEL_LINES  
  for each row
declare
  StoreRequestPartnerCode Number;
  StoreRequestPartnerAccountCode Number;
begin

  select
    Min(sr.PARTNER_CODE),
    Min(sr.PARTNER_ACCOUNT_CODE)
  into
    StoreRequestPartnerCode,
    StoreRequestPartnerAccountCode
  from
    PLANNED_STORE_DEALS psd,
    STORE_REQUEST_ITEMS sri,
    STORE_REQUESTS sr
  where
    (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :old.RFML_OBJECT_BRANCH_CODE) and
    (psd.BND_PROCESS_OBJECT_CODE = :old.RFML_OBJECT_CODE) and
    
    (sri.PLANNED_STORE_DEAL_BRANCH_CODE = psd.PLANNED_STORE_DEAL_BRANCH_CODE) and
    (sri.PLANNED_STORE_DEAL_CODE = psd.PLANNED_STORE_DEAL_CODE) and
    
    (sr.STORE_REQUEST_BRANCH_CODE = sri.STORE_REQUEST_BRANCH_CODE) and
    (sr.STORE_REQUEST_CODE = sri.STORE_REQUEST_CODE);
  
  if (StoreRequestPartnerCode is not null) and
     (StoreRequestPartnerAccountCode is not null) and
     ( (:new.PARTNER_CODE <> StoreRequestPartnerCode) or
       (:new.PARTNER_ACCOUNT_CODE <> StoreRequestPartnerAccountCode) ) then
    raise_application_error(-20002, ServerMessages.SCantChgRfmlPartnerOrAccountId);
  end if;
  
end tr_RFML_BU_CHECK_SR_ACCOUNT;
/
