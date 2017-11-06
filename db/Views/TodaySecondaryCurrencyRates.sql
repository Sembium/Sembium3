create view TODAY_SECONDARY_CURRENCY_RATES as
select
  scr.CURRENCY_CODE,
  scr.FIXING
from
  SECONDARY_CURRENCY_RATES scr
where
  (scr.RATE_DATE = ContextDate)
