create or replace trigger tr_DCD_BIU_SET_DFCT_COVER_DATE
  before insert or update on DEFICIT_COVER_DECISIONS
  for each row
begin

  if (:new.DELIVERY_DEAL_TYPE_CODE in (4, 7, 9)) then
    :new.P_DEFICIT_COVER_DATE:= :new.P_RECEIVE_DATE;
  end if;

end;
/
