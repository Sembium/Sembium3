create or replace trigger tr_PRODPER_BIU_SET_PSD_PRICE
  before insert or update on PRODUCT_PERIODS
  for each row
begin

  if (:new.IS_PSD_PRICE_FROM_DELIVERY = 1) then
    :new.PSD_SINGLE_PRICE:= :new.DELIVERY_ACQUIRE_SINGLE_PRICE;
    :new.PSD_CURRENCY_CODE:= :new.DELIVERY_ACQUIRE_CURRENCY_CODE;
  else
    :new.PSD_SINGLE_PRICE:= :new.INVESTMENT_LEVEL_1_VALUE;
    
    if (:new.PSD_SINGLE_PRICE is null) then
      :new.PSD_CURRENCY_CODE:= null;
    else
      select
        iv.BASE_CURRENCY_CODE
      into
        :new.PSD_CURRENCY_CODE
      from
        INTERNAL_VALUES iv
      where
        (iv.CODE = 1);
    end if;
  end if;  
  
end tr_PRODPER_BIU_SET_PSD_PRICE;
/
