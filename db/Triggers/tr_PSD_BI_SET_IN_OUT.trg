create or replace trigger tr_PSD_BI_SET_IN_OUT
  before insert on PLANNED_STORE_DEALS
  for each row
begin

  select
    sdt.IN_OUT
  into
    :new.IN_OUT
  from
    STORE_DEAL_TYPES sdt
  where
    (sdt.STORE_DEAL_TYPE_CODE = :new.STORE_DEAL_TYPE_CODE);

end tr_PSD_BI_SET_IN_OUT;
/
