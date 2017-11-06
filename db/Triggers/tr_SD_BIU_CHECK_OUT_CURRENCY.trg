create or replace trigger tr_SD_BIU_CHECK_OUT_CURRENCY
  before insert or update on STORE_DEALS  
  for each row
declare
  BaseCurrencyCode Number;
begin
  
  if (:new.IN_OUT = -1) then
    
    select
      iv.BASE_CURRENCY_CODE
    into
      BaseCurrencyCode
    from
      INTERNAL_VALUES iv
    where
      (iv.CODE = 1);
      
    if (:new.CURRENCY_CODE <> BaseCurrencyCode) then
      raise_application_error(-20002, 'Invalid out store deal currency :' || :new.CURRENCY_CODE);
    end if;
      
  end if;
  
end;
/
