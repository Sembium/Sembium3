create view TODAY_CURRENCY_RATES as
select
  cr.CURRENCY_CODE,
  cr.FIXING
from
  CURRENCY_RATES cr
where
  (cr.RATE_DATE = ContextDate)
