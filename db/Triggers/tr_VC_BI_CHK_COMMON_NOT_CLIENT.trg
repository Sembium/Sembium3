create or replace trigger tr_VC_BI_CHK_COMMON_NOT_CLIENT
  before insert on VENDOR_COMPANIES
  for each row
declare
  IsCommonAndClient Number;
begin

  select
    Sign(Count(*))
  into
    IsCommonAndClient
  from
    COMMON_PARTNERS cp,
    CLIENT_COMPANIES cc
  where
    (cp.PARTNER_CODE = :new.VENDOR_COMPANY_CODE) and
    (cc.CLIENT_COMPANY_CODE = :new.VENDOR_COMPANY_CODE);

  if (IsCommonAndClient = 1) then
    raise_application_error(-20000, 'Internal assertion: Cannot insert Common Vendor Company when it is already Common Client Company');
  end if;

end tr_VC_BI_CHK_COMMON_NOT_CLIENT;
/
