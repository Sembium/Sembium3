create or replace trigger tr_PRPPM_BIU_CHECK_PRODUCT_SET
  before insert or update of PRODUCT_SET_CODE on PRPER_PRICE_MODIFIERS
  for each row
declare
  InvalidDateInterval Number;
begin

  select
    Sign(Count(*))
  into
    InvalidDateInterval
  from
    PAR_REL_PERIODS prp,
    PRODUCT_SETS ps
  where
    (prp.PARTNER_CODE = :new.PARTNER_CODE) and
    (prp.BORDER_REL_TYPE_CODE = :new.BORDER_REL_TYPE_CODE) and
    (prp.PAR_REL_PERIOD_CODE = :new.PAR_REL_PERIOD_CODE) and

    (ps.PRODUCT_SET_CODE = :new.PRODUCT_SET_CODE) and

    ( (ps.BEGIN_DATE > prp.END_DATE) or
      (ps.END_DATE < prp.BEGIN_DATE)
    );

  if (InvalidDateInterval = 1) then
    raise_application_error(-20000, ServerMessages.SInvalidPRPerDateIntervalId);
  end if;

end tr_PRPPM_BIU_CHECK_PRODUCT_SET;
/
