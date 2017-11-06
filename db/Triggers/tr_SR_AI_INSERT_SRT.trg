create or replace trigger tr_SR_AI_INSERT_SRT
  after insert on SYS_ROLES
  for each row
begin

  if (:new.SYS_ROLE_TYPE_CODE = CommonConsts.srtActivities) then

    insert into SRT_ACTIVITY_SYS_ROLES
    (
      SYS_ROLE_CODE
    )
    values
    (
      :new.SYS_ROLE_CODE
    );

  end if;
  
  if (:new.SYS_ROLE_TYPE_CODE = CommonConsts.srtFilterVariants) or 
     (:new.SYS_ROLE_TYPE_CODE = CommonConsts.srtInternal) then

    insert into SRT_FILTER_VARIANT_SYS_ROLES
    (
      SYS_ROLE_CODE
    )
    values
    (
      :new.SYS_ROLE_CODE
    );

  end if;
  
  if (:new.SYS_ROLE_TYPE_CODE = CommonConsts.srtDocItems) or 
     (:new.SYS_ROLE_TYPE_CODE = CommonConsts.srtInternal) then

    insert into SRT_DOC_ITEM_SYS_ROLES
    (
      SYS_ROLE_CODE
    )
    values
    (
      :new.SYS_ROLE_CODE
    );

  end if;

end tr_SR_AI_INSERT_SRT;
/
