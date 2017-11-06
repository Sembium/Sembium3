create or replace trigger tr_OWDP_BIU_SET_ORG_WORK_MODE
  before insert or update of ORG_WORK_ACTIVITY_CODE on OCC_WORK_DEPT_PRIORITIES
  for each row
begin

  select
    owa.ORG_WORK_MODE_CODE
  into
    :new.ORG_WORK_MODE_CODE
  from
    ORG_WORK_ACTIVITIES owa
  where
    (owa.ORG_WORK_ACTIVITY_CODE = :new.ORG_WORK_ACTIVITY_CODE);

end;
/
