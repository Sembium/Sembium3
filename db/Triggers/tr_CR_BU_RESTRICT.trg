create or replace trigger tr_CR_BU_RESTRICT
  before update of CURRENCY_CODE, RATE_DATE on CURRENCY_RATES
  for each row
begin
  if (:new.CURRENCY_CODE <> :old.CURRENCY_CODE) or
     (:new.RATE_DATE <> :old.RATE_DATE) then
    raise_application_error(-20000, 'Cannot change CURRENCY_CODE or RATE_DATE');
  end if;
end;
/
