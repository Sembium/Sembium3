create or replace trigger tr_ASD_BIU_PLAN_QUANTITY
  before insert or
         update of PLANNED_IN_QUANTITY, PLANNED_OUT_QUANTITY,
                   PROJECTED_IN_QUANTITY, PROJECTED_OUT_QUANTITY
                on AGGR_STORE_DEALS
  for each row
begin
  if ((MiscUtils.LargeZero(:new.PLANNED_IN_QUANTITY) <> 0) or
      (MiscUtils.LargeZero(:new.PLANNED_OUT_QUANTITY) <> 0) or
      (MiscUtils.LargeZero(:new.PROJECTED_IN_QUANTITY) <> 0) or
      (MiscUtils.LargeZero(:new.PROJECTED_OUT_QUANTITY) <> 0)) then
    :new.HAS_PLAN_DEALS := 1;
  else
    :new.HAS_PLAN_DEALS := 0;
  end if;
end;
/
