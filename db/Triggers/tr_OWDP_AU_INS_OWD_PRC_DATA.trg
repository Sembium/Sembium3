create or replace trigger tr_OWDP_AU_INS_OWD_PRC_DATA
  after update on OCC_WORK_DEPT_PRIORITIES
  for each row
declare
  OldIsProcessGenerator Number;
  NewIsProcessGenerator Number;
begin

  select
    Min(owt.IS_PROCESS_GENERATOR)
  into
    OldIsProcessGenerator
  from
    ORG_WORK_TYPES owt
  where
    (owt.ORG_WORK_LEVEL_CODE = :old.ORG_WORK_LEVEL_CODE) and
    (owt.ORG_WORK_MODE_CODE = :old.ORG_WORK_MODE_CODE);

  select
    Min(owt.IS_PROCESS_GENERATOR)
  into
    NewIsProcessGenerator
  from
    ORG_WORK_TYPES owt
  where
    (owt.ORG_WORK_LEVEL_CODE = :new.ORG_WORK_LEVEL_CODE) and
    (owt.ORG_WORK_MODE_CODE = :new.ORG_WORK_MODE_CODE);

  if (OldIsProcessGenerator = 0) and (NewIsProcessGenerator = 1) then
    PrcUtils.InsertOWDPriorityPrcData(:new.OCC_WORK_DEPT_PRIORITY_CODE);
  end if;

end;
/
