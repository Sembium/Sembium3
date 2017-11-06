create or replace trigger tr_PS_BU_CHECK_PAR_REL_PERIODS
  before update of BEGIN_DATE, END_DATE on PRODUCT_SETS
  for each row
declare
  InvalidDateInterval Number;
  InvalidCompanyShortName Varchar2(100 char);
begin

  select
    Sign(Count(*)),
    Min(c.SHORT_NAME)
  into
    InvalidDateInterval,
    InvalidCompanyShortName
  from
    PRPER_PRICE_MODIFIERS prppm,
    PAR_REL_PERIODS prp,
    COMPANIES c
  where
    (prppm.PRODUCT_SET_CODE = :new.PRODUCT_SET_CODE) and

    (prppm.PARTNER_CODE = prp.PARTNER_CODE) and
    (prppm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) and
    (prppm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) and

    (c.COMPANY_CODE = prp.PARTNER_CODE) and

    ( (:new.BEGIN_DATE > prp.END_DATE) or
      (:new.END_DATE < prp.BEGIN_DATE)
    );

  if (InvalidDateInterval = 1) then
    raise_application_error(-20000, 
      ServerMessages.SInvalidProductSetIntervalId || 
      '(' || 'CompanyShortName:s=' || InvalidCompanyShortName || ')'
    );
  end if;

end tr_PS_BU_CHECK_PAR_REL_PERIODS;
/
