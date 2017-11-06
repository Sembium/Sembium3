create or replace trigger tr_DOWDP_BU_IS_LOCALLY_COVERED
  before update of DEPT_OWDP_COVER_TYPE_CODE on DEPT_OWD_PRIORITIES
  for each row
begin

  if (:old.DEPT_OWDP_COVER_TYPE_CODE in (CommonConsts.dowdpctLocal, CommonConsts.dowdpctLocalAndDescendants)) and
     (:new.DEPT_OWDP_COVER_TYPE_CODE not in (CommonConsts.dowdpctLocal, CommonConsts.dowdpctLocalAndDescendants)) then

    delete
      DEPT_COVERED_OWD_PRIORITIES dcowdp
    where
      (dcowdp.DEPT_CODE = :new.DEPT_CODE) and
      (dcowdp.OCC_WORK_DEPT_PRIORITY_CODE = :new.OCC_WORK_DEPT_PRIORITY_CODE);

  end if;

end;
/
