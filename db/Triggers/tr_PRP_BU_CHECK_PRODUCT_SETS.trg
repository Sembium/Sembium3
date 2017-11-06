create or replace trigger tr_PRP_BU_CHECK_PRODUCT_SETS
  before update of BEGIN_DATE, END_DATE on PAR_REL_PERIODS
  for each row
declare
  InvalidDateInterval Number;
begin

  select
    Sign(Count(*))
  into
    InvalidDateInterval
  from
    PRPER_PRICE_MODIFIERS prppm,
    PRODUCT_SETS ps
  where
    (prppm.PARTNER_CODE = :new.PARTNER_CODE) and
    (prppm.BORDER_REL_TYPE_CODE = :new.BORDER_REL_TYPE_CODE) and
    (prppm.PAR_REL_PERIOD_CODE = :new.PAR_REL_PERIOD_CODE) and

    (prppm.PRODUCT_SET_CODE = ps.PRODUCT_SET_CODE) and

    ( (ps.BEGIN_DATE > :new.END_DATE) or
      (ps.END_DATE < :new.BEGIN_DATE)
    );

  if (InvalidDateInterval = 1) then
    raise_application_error(-20000, ServerMessages.SInvalidPRPerDateIntervalId);
  end if;

end tr_PRP_BU_CHECK_PRODUCT_SETS;
/
