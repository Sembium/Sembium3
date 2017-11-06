create or replace trigger tr_DOWDP_BIU_CHECK_PRIORITY
  before insert or update on DEPT_OWD_PRIORITIES
  for each row
declare
  IsGroupDept Number;
  SkipOWDPTypeCheck Number;
  IsExecutingExploitation Number;
begin

  select
    Max(d.IS_GROUP),
    Max(d.SKIP_OWDP_TYPE_CHECK)
  into
    IsGroupDept,
    SkipOWDPTypeCheck
  from
    DEPTS d
  where
    (d.DEPT_CODE = :new.DEPT_CODE);

  select
    Sign(Count(*))
  into
    IsExecutingExploitation
  from
    OCC_WORK_DEPT_PRIORITIES owdp
  where
    (owdp.OCC_WORK_DEPT_PRIORITY_CODE = :new.OCC_WORK_DEPT_PRIORITY_CODE) and

    (owdp.ORG_WORK_LEVEL_CODE = CommonConsts.owlExecuting) and
    (owdp.ORG_WORK_MODE_CODE = CommonConsts.owmExploitation);

  if (IsGroupDept = 1) then

    if (SkipOWDPTypeCheck = 0) and (IsExecutingExploitation = 1) then
      raise_application_error(-20001, ServerMessages.SInvalidOWDPriorForGroupDeptId);
    end if;

    if (:new.DEPT_OWDP_COVER_TYPE_CODE = CommonConsts.dowdpctLocal) then
      raise_application_error(-20001, 'Internal assertion: Group Dept cannot have dowdpctLocal OWDP');
    end if;

  end if;
  
  if (IsGroupDept = 0) then

    if (:new.DEPT_OWDP_COVER_TYPE_CODE = CommonConsts.dowdpctLocalAndDescendants) then
      raise_application_error(-20001, ServerMessages.SInvalidDOWDPCoverTypeId);
    end if;

    if (IsExecutingExploitation = 1) and (:new.DEPT_OWDP_COVER_TYPE_CODE = CommonConsts.dowdpctAncestor) then
      raise_application_error(-20001, ServerMessages.SInvalidDOWDPCvrTypeExecExplId);
    end if;

  end if;

end;
/
