create or replace trigger tr_CR_BD_RESTRICT
  before delete on CURRENCY_RATES
  for each row
declare
  lAnyStoreDeals Number;
begin
  select
    Count(*)
  into
    lAnyStoreDeals
  from
    STORE_DEALS sd
  where
    (sd.STORE_DEAL_DATE = :old.RATE_DATE) and
    (sd.CURRENCY_CODE = :old.CURRENCY_CODE) and
    (sd.STORNO_EMPLOYEE_CODE is null);
  
  if (lAnyStoreDeals > 0) then
    raise_application_error(-20000, 'Cannot delete CURRENCY_RATE if used');
  end if;
end;
/
