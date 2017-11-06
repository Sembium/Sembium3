create or replace trigger tr_SD_BU_CHECK_SDT
  before update on STORE_DEALS
  for each row
begin

  if (:new.STORE_DEAL_TYPE_CODE <> :old.STORE_DEAL_TYPE_CODE) or
     (:new.IN_OUT <> :old.IN_OUT) then
    raise_application_error(-20000, 'Internal error: sd.STORE_DEAL_TYPE_CODE and sd.IN_OUT should not be changed');
  end if;

end tr_SD_BU_CHECK_SDT;
/
