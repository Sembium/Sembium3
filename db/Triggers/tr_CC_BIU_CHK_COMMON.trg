create or replace trigger tr_CC_BIU_CHK_COMMON
  before insert or update on CLIENT_COMPANIES
  for each row
declare
  IsCommonAndHasCommonPartner Number;
begin

  select
    Sign(Count(*))
  into
    IsCommonAndHasCommonPartner
  from
    COMMON_PARTNERS cp
  where
    (cp.PARTNER_CODE = :new.CLIENT_COMPANY_CODE) and
    (:new.COMMON_PARTNER_CODE is not null);

  if (IsCommonAndHasCommonPartner = 1) then
    raise_application_error(-20000, 'Internal assertion: Common Client Company cannot have COMMON_PARTNER');
  end if;

end tr_CC_BIU_CHK_COMMON;
/
