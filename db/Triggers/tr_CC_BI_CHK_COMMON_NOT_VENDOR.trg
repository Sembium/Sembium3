create or replace trigger tr_CC_BI_CHK_COMMON_NOT_VENDOR
  before insert on CLIENT_COMPANIES
  for each row
declare
  IsCommonAndVendor Number;
begin

  select
    Sign(Count(*))
  into
    IsCommonAndVendor
  from
    COMMON_PARTNERS cp,
    VENDOR_COMPANIES vc
  where
    (cp.PARTNER_CODE = :new.CLIENT_COMPANY_CODE) and
    (vc.VENDOR_COMPANY_CODE = :new.CLIENT_COMPANY_CODE);

  if (IsCommonAndVendor = 1) then
    raise_application_error(-20000, 'Internal assertion: Cannot insert Common Client Company when it is already Common Vendor Company');
  end if;

end tr_CC_BI_CHK_COMMON_NOT_VENDOR;
/
