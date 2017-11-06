create or replace trigger tr_DOWDP_AIU_IS_LOCALLY_COVRED
  after insert or update of DEPT_OWDP_COVER_TYPE_CODE on DEPT_OWD_PRIORITIES
  for each row
begin

  if (:new.DEPT_OWDP_COVER_TYPE_CODE in (CommonConsts.dowdpctLocal, CommonConsts.dowdpctLocalAndDescendants)) and
     (inserting or (:old.DEPT_OWDP_COVER_TYPE_CODE not in (CommonConsts.dowdpctLocal, CommonConsts.dowdpctLocalAndDescendants))) then

    insert into DEPT_COVERED_OWD_PRIORITIES
    (
      DEPT_CODE,
      OCC_WORK_DEPT_PRIORITY_CODE
    )
    values
    (
      :new.DEPT_CODE,
      :new.OCC_WORK_DEPT_PRIORITY_CODE
    );

  end if;

end;
/
