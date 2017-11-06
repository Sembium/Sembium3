create or replace trigger tr_DPR_BIU_CHECK_MODE_FIELDS
  before insert or update on DELIVERY_PROJECTS
  for each row
declare
  HasInconsistentModeField Number;
begin

  select
    Sign(Count(*))
  into
    HasInconsistentModeField
  from
    DEFICIT_COVER_DECISIONS dcd
  where
    (dcd.DCD_OBJECT_BRANCH_CODE = :old.DCD_OBJECT_BRANCH_CODE) and
    (dcd.DCD_OBJECT_CODE = :old.DCD_OBJECT_CODE) and

    ( ( (dcd.DCD_MODE_CODE = CommonConsts.dcdmObjective) and
        ( (dcd.P_PRODUCT_CODE <> :new.PRODUCT_CODE) or
          (dcd.P_PSD_STORE_CODE <> :new.PSD_STORE_CODE) or
          (dcd.P_DEFICIT_COVER_DATE <> :new.DEFICIT_COVER_DATE)
        )
      ) or
      ( (dcd.DCD_MODE_CODE = CommonConsts.dcdmSubjective) and
        ( (dcd.V_VENDOR_COMPANY_CODE <> :new.VENDOR_COMPANY_CODE) or
          (dcd.V_START_DATE <> :new.START_DATE) or
          (dcd.V_REGISTER_DATE <> :new.REGISTER_DATE) or
          (dcd.V_PLAN_POSITION_DATE <> :new.PLAN_POSITION_DATE) or
          (dcd.V_REAL_POSITION_DATE <> :new.REAL_POSITION_DATE) or
          (dcd.V_PLAN_VENDOR_POSITION_DATE <> :new.PLAN_VENDOR_POSITION_DATE) or
          (dcd.V_REAL_VENDOR_POSITION_DATE <> :new.REAL_VENDOR_POSITION_DATE)
        )
      )
    );

  if (HasInconsistentModeField = 1) then
    raise_application_error(-20001, 'Internal assertion: Inconsistent DCD_MODE ( P_, V_ ) fields between DELIVERY_PROJECT and DEFICIT_COVER_DECISION');
  end if;

end;
/
