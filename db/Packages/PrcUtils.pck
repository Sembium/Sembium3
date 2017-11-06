create or replace package PrcUtils is

  function IsOWDPriorityPrcGen(AOWDPriorityCode in Number) return Boolean;

  procedure InsertOWDPrcData(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number);
  procedure DeleteOWDPrcData(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number);

  procedure InsertOWDPriorityPrcData(AOWDPriorityCode in Number);
  procedure DeleteOWDPriorityPrcData(AOWDPriorityCode in Number);


  procedure InsertDeptOWDPrcFunc(ADeptCode in Number, APrcFuncCode in Number);
  procedure DeleteDeptOWDPrcFunc(ADeptCode in Number, APrcFuncCode in Number);

  procedure InsertDeptOWDPrcKnowl(ADeptCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number);
  procedure DeleteDeptOWDPrcKnowl(ADeptCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number);

  procedure InsertDeptOWDPrcBaseOp(ADeptCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number);
  procedure DeleteDeptOWDPrcBaseOp(ADeptCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number);

  procedure InsertDeptOWDPrcConcreteOp(ADeptCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number, APrcConcreteOpCode in Number);
  procedure DeleteDeptOWDPrcConcreteOp(ADeptCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number, APrcConcreteOpCode in Number);

  procedure InsertDeptOWDPrcBaseAction(
    ADeptCode in Number,
    APrcFuncCode in Number,
    APrcKnowlCode in Number,
    APrcBaseOpCode in Number,
    APrcActionCode in Number,
    ABeginDate in Date,
    AEndDate in Date);
  procedure DeleteDeptOWDPrcBaseAction(
    ADeptCode in Number,
    APrcFuncCode in Number,
    APrcKnowlCode in Number,
    APrcBaseOpCode in Number,
    APrcActionCode in Number);
  procedure UpdateDeptOWDPrcBaseAction(
    ADeptCode in Number,
    APrcFuncCode in Number,
    APrcKnowlCode in Number,
    APrcBaseOpCode in Number,
    APrcActionCode in Number,
    ABeginDate in Date,
    AEndDate in Date);

  procedure InsertDeptOWDPrcConcreteAction(
    ADeptCode in Number,
    APrcFuncCode in Number,
    APrcKnowlCode in Number,
    APrcBaseOpCode in Number,
    APrcConcreteOpCode in Number,
    APrcActionCode in Number,
    ABeginDate in Date,
    AEndDate in Date);
  procedure DeleteDeptOWDPrcConcreteAction(
    ADeptCode in Number,
    APrcFuncCode in Number,
    APrcKnowlCode in Number,
    APrcBaseOpCode in Number,
    APrcConcreteOpCode in Number,
    APrcActionCode in Number);
  procedure UpdateDeptOWDPrcConcreteAction(
    ADeptCode in Number,
    APrcFuncCode in Number,
    APrcKnowlCode in Number,
    APrcBaseOpCode in Number,
    APrcConcreteOpCode in Number,
    APrcActionCode in Number,
    ABeginDate in Date,
    AEndDate in Date);

  -- professions

  procedure InsertOccPrcBaseOpProfs(AOccupationCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number);
  procedure InsertProfOccPrcBaseOps(AProfessionCode in Number, APrcBaseOpCode in Number);

  procedure DeleteOccPrcBaseOpProfs(AOccupationCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number);
  procedure DeleteProfOccPrcBaseOps(AProfessionCode in Number, APrcBaseOpCode in Number);

  procedure InsertOccPrcConcreteOpProfs(AOccupationCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number, APrcConcreteOpCode in Number);
  procedure InsertProfOccPrcConcreteOps(AProfessionCode in Number, APrcConcreteOpCode in Number);

  procedure DeleteOccPrcConcreteOpProfs(AOccupationCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number, APrcConcreteOpCode in Number);
  procedure DeleteProfOccPrcConcreteOps(AProfessionCode in Number, APrcConcreteOpCode in Number);


  PRAGMA RESTRICT_REFERENCES (IsOWDPriorityPrcGen, RNPS, WNPS, WNDS);

  PRAGMA RESTRICT_REFERENCES (InsertOWDPrcData, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (DeleteOWDPrcData, RNPS, WNPS);

  PRAGMA RESTRICT_REFERENCES (InsertOWDPriorityPrcData, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (DeleteOWDPriorityPrcData, RNPS, WNPS);

  PRAGMA RESTRICT_REFERENCES (InsertDeptOWDPrcFunc, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (DeleteDeptOWDPrcFunc, RNPS, WNPS);

  PRAGMA RESTRICT_REFERENCES (InsertDeptOWDPrcKnowl, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (DeleteDeptOWDPrcKnowl, RNPS, WNPS);

  PRAGMA RESTRICT_REFERENCES (InsertDeptOWDPrcBaseOp, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (DeleteDeptOWDPrcBaseOp, RNPS, WNPS);

  PRAGMA RESTRICT_REFERENCES (InsertDeptOWDPrcConcreteOp, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (DeleteDeptOWDPrcConcreteOp, RNPS, WNPS);

  PRAGMA RESTRICT_REFERENCES (InsertDeptOWDPrcBaseAction, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (DeleteDeptOWDPrcBaseAction, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (UpdateDeptOWDPrcBaseAction, RNPS, WNPS);

  PRAGMA RESTRICT_REFERENCES (InsertDeptOWDPrcConcreteAction, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (DeleteDeptOWDPrcConcreteAction, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (UpdateDeptOWDPrcConcreteAction, RNPS, WNPS);

  PRAGMA RESTRICT_REFERENCES (InsertOccPrcBaseOpProfs, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (InsertProfOccPrcBaseOps, RNPS, WNPS);

  PRAGMA RESTRICT_REFERENCES (DeleteOccPrcBaseOpProfs, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (DeleteProfOccPrcBaseOps, RNPS, WNPS);

  PRAGMA RESTRICT_REFERENCES (InsertOccPrcConcreteOpProfs, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (InsertProfOccPrcConcreteOps, RNPS, WNPS);

  PRAGMA RESTRICT_REFERENCES (DeleteOccPrcConcreteOpProfs, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (DeleteProfOccPrcConcreteOps, RNPS, WNPS);

end;
/
create or replace package body PrcUtils is

  cursor PrcGenWorkDeptOccupations(ADeptCode Number) is
    select
      owd.OCCUPATION_CODE,
      owd.DEPT_CODE,
      owd.OCC_WORK_DEPT_PRIORITY_CODE
    from
      OCCUPATION_WORK_DEPTS owd,
      OCC_WORK_DEPT_PRIORITIES owdp,
      ORG_WORK_TYPES owt
    where
      (owd.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WORK_DEPT_PRIORITY_CODE) and
      (owdp.ORG_WORK_LEVEL_CODE = owt.ORG_WORK_LEVEL_CODE) and
      (owdp.ORG_WORK_MODE_CODE = owt.ORG_WORK_MODE_CODE) and
      (owt.IS_PROCESS_GENERATOR = 1) and
      (owd.DEPT_CODE = ADeptCode)
    order by
      owd.OCCUPATION_CODE;

  cursor OWDPriorityOccDfnWorkDepts(AOWDPriorityCode in Number) is
    select
      owd.OCCUPATION_CODE,
      owd.DEPT_CODE
    from
      OCCUPATION_WORK_DEPTS owd
    where
      (owd.OCC_WORK_DEPT_PRIORITY_CODE = AOWDPriorityCode) and
      (exists
        ( select
            1
          from
            DEFINITE_DEPTS dd
          where
            (dd.DEPT_CODE = owd.DEPT_CODE)
        )
      )
    order by
      owd.OCCUPATION_CODE,
      owd.DEPT_CODE;

  -- dept prc data cursors

  cursor DeptPrcFuncs(ADeptCode in Number) is
    select
      dpf.PRC_FUNC_CODE
    from
      DEPT_PRC_FUNCS dpf
    where
      (dpf.DEPT_CODE = ADeptCode)
    order by
      dpf.PRC_FUNC_CODE;

  cursor DeptPrcKnowls(ADeptCode in Number) is
    select
      dpk.PRC_FUNC_CODE,
      dpk.PRC_KNOWL_CODE
    from
      DEPT_PRC_KNOWLS dpk
    where
      (dpk.DEPT_CODE = ADeptCode)
    order by
      dpk.PRC_FUNC_CODE,
      dpk.PRC_KNOWL_CODE;

  cursor DeptPrcBaseOps(ADeptCode in Number) is
    select
      dpbo.PRC_FUNC_CODE,
      dpbo.PRC_KNOWL_CODE,
      dpbo.PRC_BASE_OP_CODE
    from
      DEPT_PRC_BASE_OPS dpbo
    where
      (dpbo.DEPT_CODE = ADeptCode)
    order by
      dpbo.PRC_FUNC_CODE,
      dpbo.PRC_KNOWL_CODE,
      dpbo.PRC_BASE_OP_CODE;

  cursor DeptPrcBaseActions(ADeptCode in Number) is
    select
      dpba.PRC_FUNC_CODE,
      dpba.PRC_KNOWL_CODE,
      dpba.PRC_BASE_OP_CODE,
      dpba.PRC_ACTION_CODE,
      dpba.BEGIN_DATE,
      dpba.END_DATE
    from
      DEPT_PRC_BASE_ACTIONS dpba
    where
      (dpba.DEPT_CODE = ADeptCode)
    order by
      dpba.PRC_FUNC_CODE,
      dpba.PRC_KNOWL_CODE,
      dpba.PRC_BASE_OP_CODE,
      dpba.PRC_ACTION_CODE;

  cursor DeptPrcConcreteOps(ADeptCode in Number) is
    select
      dpco.PRC_FUNC_CODE,
      dpco.PRC_KNOWL_CODE,
      dpco.PRC_BASE_OP_CODE,
      dpco.PRC_CONCRETE_OP_CODE
    from
      DEPT_PRC_CONCRETE_OPS dpco
    where
      (dpco.DEPT_CODE = ADeptCode)
    order by
      dpco.PRC_FUNC_CODE,
      dpco.PRC_KNOWL_CODE,
      dpco.PRC_BASE_OP_CODE,
      dpco.PRC_CONCRETE_OP_CODE;

  cursor DeptPrcConcreteActions(ADeptCode in Number) is
    select
      dpca.PRC_FUNC_CODE,
      dpca.PRC_KNOWL_CODE,
      dpca.PRC_BASE_OP_CODE,
      dpca.PRC_CONCRETE_OP_CODE,
      dpca.PRC_ACTION_CODE,
      dpca.BEGIN_DATE,
      dpca.END_DATE
    from
      DEPT_PRC_CONCRETE_ACTIONS dpca
    where
      (dpca.DEPT_CODE = ADeptCode)
    order by
      dpca.PRC_FUNC_CODE,
      dpca.PRC_KNOWL_CODE,
      dpca.PRC_BASE_OP_CODE,
      dpca.PRC_CONCRETE_OP_CODE,
      dpca.PRC_ACTION_CODE;

  -- professions cursors

  cursor BaseOpProfessions(APrcBaseOpCode in Number) is
    select
      pbo.PROFESSION_CODE
    from
      PROFESSION_BASE_OPS pbo
    where
      (pbo.PRC_BASE_OP_CODE = APrcBaseOpCode)
    order by
      pbo.PROFESSION_CODE;

  cursor BaseOpOccPrcBaseOps(APrcBaseOpCode in Number) is
    select
      opbo.OCCUPATION_CODE,
      opbo.PRC_FUNC_CODE,
      opbo.PRC_KNOWL_CODE,
      opbo.PRC_BASE_OP_CODE
    from
      OCC_PRC_BASE_OPS opbo
    where
      (opbo.PRC_BASE_OP_CODE = APrcBaseOpCode)
    order by
      opbo.OCCUPATION_CODE,
      opbo.PRC_FUNC_CODE,
      opbo.PRC_KNOWL_CODE,
      opbo.PRC_BASE_OP_CODE;

  cursor ConcreteOpProfessions(APrcConcreteOpCOde in Number) is
    select
      pco.PROFESSION_CODE
    from
      PROFESSION_CONCRETE_OPS pco
    where
      (pco.PRC_CONCRETE_OP_CODE = APrcConcreteOpCode)
    order by
      pco.PROFESSION_CODE;

  cursor ConcreteOpOccPrcConcreteOps(APrcConcreteOpCode in Number) is
    select
      opco.OCCUPATION_CODE,
      opco.PRC_FUNC_CODE,
      opco.PRC_KNOWL_CODE,
      opco.PRC_BASE_OP_CODE,
      opco.PRC_CONCRETE_OP_CODE
    from
      OCC_PRC_CONCRETE_OPS opco
    where
      (opco.PRC_CONCRETE_OP_CODE = APrcConcreteOpCode)
    order by
      opco.OCCUPATION_CODE,
      opco.PRC_FUNC_CODE,
      opco.PRC_KNOWL_CODE,
      opco.PRC_BASE_OP_CODE,
      opco.PRC_CONCRETE_OP_CODE;

  -- locking

  procedure EnsureSingleTransaction is
  begin
    insert into PRC_DATA_LOCKS (CODE) values (1);
    delete PRC_DATA_LOCKS pdl where (pdl.CODE = 1);
  end;

  -- routines

  function IsOWDPriorityPrcGen(AOWDPriorityCode in Number) return Boolean is
    IsPrcGen Number;
  begin
    select
      Max(owt.IS_PROCESS_GENERATOR)
    into
      IsPrcGen
    from
      OCC_WORK_DEPT_PRIORITIES owdp,
      ORG_WORK_TYPES owt
    where
      (owdp.ORG_WORK_LEVEL_CODE = owt.ORG_WORK_LEVEL_CODE) and
      (owdp.ORG_WORK_MODE_CODE = owt.ORG_WORK_MODE_CODE) and
      (owdp.OCC_WORK_DEPT_PRIORITY_CODE = AOWDPriorityCode);

    return (IsPrcGen = 1);
  end;

  -- funcs

  procedure InsertOWDPrcFunc(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number, APrcFuncCode in Number) is
  begin
    EnsureSingleTransaction;

    insert into OWD_PRC_FUNCS
    (
      OCCUPATION_CODE,
      DEPT_CODE,
      OCC_WORK_DEPT_PRIORITY_CODE,
      PRC_FUNC_CODE
    )
    values
    (
      AOccupationCode,
      ADeptCode,
      AOWDPriorityCode,
      APrcFuncCode
    );

    insert into OWD_AGGR_PRC_FUNCS
    (
      OCCUPATION_CODE,
      PRC_FUNC_CODE
    )
    select
      AOccupationCode,
      APrcFuncCode
    from
      DUAL
    where
      (not exists
        ( select
            1
          from
            OWD_AGGR_PRC_FUNCS owdapf
          where
            (owdapf.OCCUPATION_CODE = AOccupationCode) and
            (owdapf.PRC_FUNC_CODE = APrcFuncCode)
        )
      );

  end;

  procedure InsertDeptOWDPrcFunc(ADeptCode in Number, APrcFuncCode in Number) is
  begin
    for x in PrcGenWorkDeptOccupations(ADeptCode) loop
      InsertOWDPrcFunc(x.OCCUPATION_CODE, x.DEPT_CODE, x.OCC_WORK_DEPT_PRIORITY_CODE, APrcFuncCode);
    end loop;
  end;

  procedure InsertOWDPrcFuncs(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number) is
  begin
    for x in DeptPrcFuncs(ADeptCode) loop
      InsertOWDPrcFunc(AOccupationCode, ADeptCode, AOWDPriorityCode, x.PRC_FUNC_CODE);
    end loop;
  end;

  procedure DeleteOWDPrcFunc(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number, APrcFuncCode in Number) is
  begin
    EnsureSingleTransaction;

    delete
      OWD_PRC_FUNCS owdpf
    where
      (owdpf.OCCUPATION_CODE = AOccupationCode) and
      (owdpf.DEPT_CODE = ADeptCode) and
      (owdpf.OCC_WORK_DEPT_PRIORITY_CODE = AOWDPriorityCode) and
      (owdpf.PRC_FUNC_CODE = APrcFuncCode);

    delete
      OWD_AGGR_PRC_FUNCS owdapf
    where
      (not exists
        ( select
            1
          from
            OWD_PRC_FUNCS owdpf
          where
            (owdpf.OCCUPATION_CODE = owdapf.OCCUPATION_CODE) and
            (owdpf.PRC_FUNC_CODE = owdapf.PRC_FUNC_CODE)
        )
      );

  end;
  
  procedure DeleteDeptOWDPrcFunc(ADeptCode in Number, APrcFuncCode in Number) is
  begin
    for x in PrcGenWorkDeptOccupations(ADeptCode) loop
      DeleteOWDPrcFunc(x.OCCUPATION_CODE, x.DEPT_CODE, x.OCC_WORK_DEPT_PRIORITY_CODE, APrcFuncCode);
    end loop;
  end;

  procedure DeleteOWDPrcFuncs(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number) is
  begin
    for x in DeptPrcFuncs(ADeptCode) loop
      DeleteOWDPrcFunc(AOccupationCode, ADeptCode, AOWDPriorityCode, x.PRC_FUNC_CODE);
    end loop;
  end;

  -- knowls

  procedure InsertOWDPrcKnowl(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number) is
  begin
    EnsureSingleTransaction;

    insert into OWD_PRC_KNOWLS
    (
      OCCUPATION_CODE,
      DEPT_CODE,
      OCC_WORK_DEPT_PRIORITY_CODE,
      PRC_FUNC_CODE,
      PRC_KNOWL_CODE
    )
    values
    (
      AOccupationCode,
      ADeptCode,
      AOWDPriorityCode,
      APrcFuncCode,
      APrcKnowlCode
    );
    
    insert into OWD_AGGR_PRC_KNOWLS
    (
      OCCUPATION_CODE,
      PRC_FUNC_CODE,
      PRC_KNOWL_CODE
    )
    select
      AOccupationCode,
      APrcFuncCode,
      APrcKnowlCode
    from
      DUAL
    where
      (not exists
        ( select
            1
          from
            OWD_AGGR_PRC_KNOWLS owdapk
          where
            (owdapk.OCCUPATION_CODE = AOccupationCode) and
            (owdapk.PRC_FUNC_CODE = APrcFuncCode) and
            (owdapk.PRC_KNOWL_CODE = APrcKnowlCode)
        )
      );
  end;

  procedure InsertDeptOWDPrcKnowl(ADeptCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number) is
  begin
    for x in PrcGenWorkDeptOccupations(ADeptCode) loop
      InsertOWDPrcKnowl(x.OCCUPATION_CODE, x.DEPT_CODE, x.OCC_WORK_DEPT_PRIORITY_CODE, APrcFuncCode, APrcKnowlCode);
    end loop;
  end;

  procedure InsertOWDPrcKnowls(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number) is
  begin
    for x in DeptPrcKnowls(ADeptCode) loop
      InsertOWDPrcKnowl(AOccupationCode, ADeptCode, AOWDPriorityCode, x.PRC_FUNC_CODE, x.PRC_KNOWL_CODE);
    end loop;
  end;

  procedure DeleteOWDPrcKnowl(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number) is
  begin
    EnsureSingleTransaction;

    delete
      OWD_PRC_KNOWLS owdpk
    where
      (owdpk.OCCUPATION_CODE = AOccupationCode) and
      (owdpk.DEPT_CODE = ADeptCode) and
      (owdpk.OCC_WORK_DEPT_PRIORITY_CODE = AOWDPriorityCode) and
      (owdpk.PRC_FUNC_CODE = APrcFuncCode) and
      (owdpk.PRC_KNOWL_CODE = APrcKnowlCode);

    delete
      OWD_AGGR_PRC_KNOWLS owdapk
    where
      (not exists
        ( select
            1
          from
            OWD_PRC_KNOWLS owdpk
          where
            (owdpk.OCCUPATION_CODE = owdapk.OCCUPATION_CODE) and
            (owdpk.PRC_FUNC_CODE = owdapk.PRC_FUNC_CODE) and
            (owdpk.PRC_KNOWL_CODE = owdapk.PRC_KNOWL_CODE)
        )
      );
  end;

  procedure DeleteDeptOWDPrcKnowl(ADeptCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number) is
  begin
    for x in PrcGenWorkDeptOccupations(ADeptCode) loop
      DeleteOWDPrcKnowl(x.OCCUPATION_CODE, x.DEPT_CODE, x.OCC_WORK_DEPT_PRIORITY_CODE, APrcFuncCode, APrcKnowlCode);
    end loop;
  end;

  procedure DeleteOWDPrcKnowls(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number) is
  begin
    for x in DeptPrcKnowls(ADeptCode) loop
      DeleteOWDPrcKnowl(AOccupationCode, ADeptCode, AOWDPriorityCode, x.PRC_FUNC_CODE, x.PRC_KNOWL_CODE);
    end loop;
  end;

  -- base ops

  procedure InsertOWDPrcBaseOp(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number) is
  begin
    EnsureSingleTransaction;

    insert into OWD_PRC_BASE_OPS
    (
      OCCUPATION_CODE,
      DEPT_CODE,
      OCC_WORK_DEPT_PRIORITY_CODE,
      PRC_FUNC_CODE,
      PRC_KNOWL_CODE,
      PRC_BASE_OP_CODE
    )
    values
    (
      AOccupationCode,
      ADeptCode,
      AOWDPriorityCode,
      APrcFuncCode,
      APrcKnowlCode,
      APrcBaseOpCode
    );
    
    insert into OWD_AGGR_PRC_BASE_OPS
    (
      OCCUPATION_CODE,
      PRC_FUNC_CODE,
      PRC_KNOWL_CODE,
      PRC_BASE_OP_CODE
    )
    select
      AOccupationCode,
      APrcFuncCode,
      APrcKnowlCode,
      APrcBaseOpCode
    from
      DUAL
    where
      (not exists
        ( select
            1
          from
            OWD_AGGR_PRC_BASE_OPS owdapbo
          where
            (owdapbo.OCCUPATION_CODE = AOccupationCode) and
            (owdapbo.PRC_FUNC_CODE = APrcFuncCode) and
            (owdapbo.PRC_KNOWL_CODE = APrcKnowlCode) and
            (owdapbo.PRC_BASE_OP_CODE = APrcBaseOpCode)
        )
      );
  end;

  procedure InsertDeptOWDPrcBaseOp(ADeptCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number) is
  begin
    for x in PrcGenWorkDeptOccupations(ADeptCode) loop
      InsertOWDPrcBaseOp(x.OCCUPATION_CODE, x.DEPT_CODE, x.OCC_WORK_DEPT_PRIORITY_CODE, APrcFuncCode, APrcKnowlCode, APrcBaseOpCode);
    end loop;
  end;

  procedure InsertOWDPrcBaseOps(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number) is
  begin
    for x in DeptPrcBaseOps(ADeptCode) loop
      InsertOWDPrcBaseOp(AOccupationCode, ADeptCode, AOWDPriorityCode, x.PRC_FUNC_CODE, x.PRC_KNOWL_CODE, x.PRC_BASE_OP_CODE);
    end loop;
  end;

  procedure DeleteOWDPrcBaseOp(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number) is
  begin
    EnsureSingleTransaction;

    delete
      OWD_PRC_BASE_OPS owdpbo
    where
      (owdpbo.OCCUPATION_CODE = AOccupationCode) and
      (owdpbo.DEPT_CODE = ADeptCode) and
      (owdpbo.OCC_WORK_DEPT_PRIORITY_CODE = AOWDPriorityCode) and
      (owdpbo.PRC_FUNC_CODE = APrcFuncCode) and
      (owdpbo.PRC_KNOWL_CODE = APrcKnowlCode) and
      (owdpbo.PRC_BASE_OP_CODE = APrcBaseOpCode);

    delete
      OWD_AGGR_PRC_BASE_OPS owdapbo
    where
      (not exists
        ( select
            1
          from
            OWD_PRC_BASE_OPS owdpbo
          where
            (owdpbo.OCCUPATION_CODE = owdapbo.OCCUPATION_CODE) and
            (owdpbo.PRC_FUNC_CODE = owdapbo.PRC_FUNC_CODE) and
            (owdpbo.PRC_KNOWL_CODE = owdapbo.PRC_KNOWL_CODE) and
            (owdpbo.PRC_BASE_OP_CODE = owdapbo.PRC_BASE_OP_CODE)
        )
      );
  end;

  procedure DeleteDeptOWDPrcBaseOp(ADeptCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number) is
  begin
    for x in PrcGenWorkDeptOccupations(ADeptCode) loop
      DeleteOWDPrcBaseOp(x.OCCUPATION_CODE, x.DEPT_CODE, x.OCC_WORK_DEPT_PRIORITY_CODE, APrcFuncCode, APrcKnowlCode, APrcBaseOpCode);
    end loop;
  end;

  procedure DeleteOWDPrcBaseOps(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number) is
  begin
    for x in DeptPrcBaseOps(ADeptCode) loop
      DeleteOWDPrcBaseOp(AOccupationCode, ADeptCode, AOWDPriorityCode, x.PRC_FUNC_CODE, x.PRC_KNOWL_CODE, x.PRC_BASE_OP_CODE);
    end loop;
  end;

  procedure InsertOWDPrcConcreteOp(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number, APrcConcreteOpCode in Number) is
  begin
    EnsureSingleTransaction;

    insert into OWD_PRC_CONCRETE_OPS
    (
      OCCUPATION_CODE,
      DEPT_CODE,
      OCC_WORK_DEPT_PRIORITY_CODE,
      PRC_FUNC_CODE,
      PRC_KNOWL_CODE,
      PRC_BASE_OP_CODE,
      PRC_CONCRETE_OP_CODE
    )
    values
    (
      AOccupationCode,
      ADeptCode,
      AOWDPriorityCode,
      APrcFuncCode,
      APrcKnowlCode,
      APrcBaseOpCode,
      APrcConcreteOpCode
    );
    
    insert into OWD_AGGR_PRC_CONCRETE_OPS
    (
      OCCUPATION_CODE,
      PRC_FUNC_CODE,
      PRC_KNOWL_CODE,
      PRC_BASE_OP_CODE,
      PRC_CONCRETE_OP_CODE
    )
    select
      AOccupationCode,
      APrcFuncCode,
      APrcKnowlCode,
      APrcBaseOpCode,
      APrcConcreteOpCode
    from
      DUAL
    where
      (not exists
        ( select
            1
          from
            OWD_AGGR_PRC_CONCRETE_OPS owdapco
          where
            (owdapco.OCCUPATION_CODE = AOccupationCode) and
            (owdapco.PRC_FUNC_CODE = APrcFuncCode) and
            (owdapco.PRC_KNOWL_CODE = APrcKnowlCode) and
            (owdapco.PRC_BASE_OP_CODE = APrcBaseOpCode) and
            (owdapco.PRC_CONCRETE_OP_CODE = APrcConcreteOpCode)
        )
      );
  end;

  procedure InsertDeptOWDPrcConcreteOp(ADeptCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number, APrcConcreteOpCode in Number) is
  begin
    for x in PrcGenWorkDeptOccupations(ADeptCode) loop
      InsertOWDPrcConcreteOp(x.OCCUPATION_CODE, x.DEPT_CODE, x.OCC_WORK_DEPT_PRIORITY_CODE, APrcFuncCode, APrcKnowlCode, APrcBaseOpCode, APrcConcreteOpCode);
    end loop;
  end;

  procedure InsertOWDPrcConcreteOps(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number) is
  begin
    for x in DeptPrcConcreteOps(ADeptCode) loop
      InsertOWDPrcConcreteOp(AOccupationCode, ADeptCode, AOWDPriorityCode, x.PRC_FUNC_CODE, x.PRC_KNOWL_CODE, x.PRC_BASE_OP_CODE, x.PRC_CONCRETE_OP_CODE);
    end loop;
  end;

  procedure DeleteOWDPrcConcreteOp(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number, APrcConcreteOpCode in Number) is
  begin
    EnsureSingleTransaction;

    delete
      OWD_PRC_CONCRETE_OPS owdpco
    where
      (owdpco.OCCUPATION_CODE = AOccupationCode) and
      (owdpco.DEPT_CODE = ADeptCode) and
      (owdpco.OCC_WORK_DEPT_PRIORITY_CODE = AOWDPriorityCode) and
      (owdpco.PRC_FUNC_CODE = APrcFuncCode) and
      (owdpco.PRC_KNOWL_CODE = APrcKnowlCode) and
      (owdpco.PRC_BASE_OP_CODE = APrcBaseOpCode) and
      (owdpco.PRC_CONCRETE_OP_CODE = APrcConcreteOpCode);

    delete
      OWD_AGGR_PRC_CONCRETE_OPS owdapco
    where
      (not exists
        ( select
            1
          from
            OWD_PRC_CONCRETE_OPS owdpco
          where
            (owdpco.OCCUPATION_CODE = owdapco.OCCUPATION_CODE) and
            (owdpco.PRC_FUNC_CODE = owdapco.PRC_FUNC_CODE) and
            (owdpco.PRC_KNOWL_CODE = owdapco.PRC_KNOWL_CODE) and
            (owdpco.PRC_BASE_OP_CODE = owdapco.PRC_BASE_OP_CODE) and
            (owdpco.PRC_CONCRETE_OP_CODE = owdapco.PRC_CONCRETE_OP_CODE)
        )
      );
  end;

  procedure DeleteDeptOWDPrcConcreteOp(ADeptCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number, APrcConcreteOpCode in Number) is
  begin
    for x in PrcGenWorkDeptOccupations(ADeptCode) loop
      DeleteOWDPrcConcreteOp(x.OCCUPATION_CODE, x.DEPT_CODE, x.OCC_WORK_DEPT_PRIORITY_CODE, APrcFuncCode, APrcKnowlCode, APrcBaseOpCode, APrcConcreteOpCode);
    end loop;
  end;

  procedure DeleteOWDPrcConcreteOps(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number) is
  begin
    for x in DeptPrcConcreteOps(ADeptCode) loop
      DeleteOWDPrcConcreteOp(AOccupationCode, ADeptCode, AOWDPriorityCode, x.PRC_FUNC_CODE, x.PRC_KNOWL_CODE, x.PRC_BASE_OP_CODE, x.PRC_CONCRETE_OP_CODE);
    end loop;
  end;

  -- base actions

  procedure UpdPrcBaseActionDateInterval(
     AOccupationCode in Number,
     APrcFuncCode in Number,
     APrcKnowlCode in Number,
     APrcBaseOpCode in Number,
     APrcActionCode in Number) is
  begin
    update
      OWD_AGGR_PRC_BASE_ACTIONS owdapba
    set
      (owdapba.BEGIN_DATE, owdapba.END_DATE) =
      ( select
          Min(owdpba.BEGIN_DATE),
          Max(owdpba.END_DATE)
        from
          OWD_PRC_BASE_ACTIONS owdpba
        where
          (owdpba.OCCUPATION_CODE = AOccupationCode) and
          (owdpba.PRC_FUNC_CODE = APrcFuncCode) and
          (owdpba.PRC_KNOWL_CODE = APrcKnowlCode) and
          (owdpba.PRC_BASE_OP_CODE = APrcBaseOpCode) and
          (owdpba.PRC_ACTION_CODE = APrcActionCode)
      )
    where
      (owdapba.OCCUPATION_CODE = AOccupationCode) and
      (owdapba.PRC_FUNC_CODE = APrcFuncCode) and
      (owdapba.PRC_KNOWL_CODE = APrcKnowlCode) and
      (owdapba.PRC_BASE_OP_CODE = APrcBaseOpCode) and
      (owdapba.PRC_ACTION_CODE = APrcActionCode);

    update
      OCC_PRC_BASE_ACTIONS opba
    set
      (opba.BEGIN_DATE, opba.END_DATE) =
      ( select
          Greatest(owdapba.BEGIN_DATE, o.OCCUPATION_BEGIN_DATE),
          Least(owdapba.END_DATE, o.OCCUPATION_END_DATE)
        from
          OWD_AGGR_PRC_BASE_ACTIONS owdapba,
          OCCUPATIONS o
        where
          (owdapba.OCCUPATION_CODE = AOccupationCode) and
          (owdapba.PRC_FUNC_CODE = APrcFuncCode) and
          (owdapba.PRC_KNOWL_CODE = APrcKnowlCode) and
          (owdapba.PRC_BASE_OP_CODE = APrcBaseOpCode) and
          (owdapba.PRC_ACTION_CODE = APrcActionCode) and
          (o.OCCUPATION_CODE = AOccupationCode)
      )
    where
      (opba.OCCUPATION_CODE = AOccupationCode) and
      (opba.PRC_FUNC_CODE = APrcFuncCode) and
      (opba.PRC_KNOWL_CODE = APrcKnowlCode) and
      (opba.PRC_BASE_OP_CODE = APrcBaseOpCode) and
      (opba.PRC_ACTION_CODE = APrcActionCode) and
      (opba.OVERRIDE_DATE_INTERVAL = 0);

  end;

  procedure InsertOWDPrcBaseAction(
    AOccupationCode in Number,
    ADeptCode in Number,
    AOWDPriorityCode in Number,
    APrcFuncCode in Number,
    APrcKnowlCode in Number,
    APrcBaseOpCode in Number,
    APrcActionCode in Number,
    ABeginDate in Date,
    AEndDate in Date) is
  begin
    EnsureSingleTransaction;

    insert into OWD_PRC_BASE_ACTIONS
    (
      OCCUPATION_CODE,
      DEPT_CODE,
      OCC_WORK_DEPT_PRIORITY_CODE,
      PRC_FUNC_CODE,
      PRC_KNOWL_CODE,
      PRC_BASE_OP_CODE,
      PRC_ACTION_CODE,
      BEGIN_DATE,
      END_DATE
    )
    values
    (
      AOccupationCode,
      ADeptCode,
      AOWDPriorityCode,
      APrcFuncCode,
      APrcKnowlCode,
      APrcBaseOpCode,
      APrcActionCode,
      ABeginDate,
      AEndDate
    );

    insert into OWD_AGGR_PRC_BASE_ACTIONS
    (
      OCCUPATION_CODE,
      PRC_FUNC_CODE,
      PRC_KNOWL_CODE,
      PRC_BASE_OP_CODE,
      PRC_ACTION_CODE,
      BEGIN_DATE,
      END_DATE
    )
    select
      AOccupationCode,
      APrcFuncCode,
      APrcKnowlCode,
      APrcBaseOpCode,
      APrcActionCode,
      ABeginDate,
      AEndDate
    from
      DUAL
    where
      (not exists
        ( select
            1
          from
            OWD_AGGR_PRC_BASE_ACTIONS owdapba
          where
            (owdapba.OCCUPATION_CODE = AOccupationCode) and
            (owdapba.PRC_FUNC_CODE = APrcFuncCode) and
            (owdapba.PRC_KNOWL_CODE = APrcKnowlCode) and
            (owdapba.PRC_BASE_OP_CODE = APrcBaseOpCode) and
            (owdapba.PRC_ACTION_CODE = APrcActionCode)
        )
      );

    UpdPrcBaseActionDateInterval(
      AOccupationCode,
      APrcFuncCode,
      APrcKnowlCode,
      APrcBaseOpCode,
      APrcActionCode);

  end;

  procedure InsertDeptOWDPrcBaseAction(
    ADeptCode in Number,
    APrcFuncCode in Number,
    APrcKnowlCode in Number,
    APrcBaseOpCode in Number,
    APrcActionCode in Number,
    ABeginDate in Date,
    AEndDate in Date) is
  begin
    for x in PrcGenWorkDeptOccupations(ADeptCode) loop
      InsertOWDPrcBaseAction(x.OCCUPATION_CODE, x.DEPT_CODE, x.OCC_WORK_DEPT_PRIORITY_CODE, APrcFuncCode, APrcKnowlCode, APrcBaseOpCode, APrcActionCode, ABeginDate, AEndDate);
    end loop;
  end;

  procedure InsertOWDPrcBaseActions(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number) is
  begin
    for x in DeptPrcBaseActions(ADeptCode) loop
      InsertOWDPrcBaseAction(AOccupationCode, ADeptCode, AOWDPriorityCode, x.PRC_FUNC_CODE, x.PRC_KNOWL_CODE, x.PRC_BASE_OP_CODE, x.PRC_ACTION_CODE, x.BEGIN_DATE, x.END_DATE);
    end loop;
  end;

  procedure DeleteOWDPrcBaseAction(
    AOccupationCode in Number,
    ADeptCode in Number,
    AOWDPriorityCode in Number,
    APrcFuncCode in Number,
    APrcKnowlCode in Number,
    APrcBaseOpCode in Number,
    APrcActionCode in Number) is
  begin
    EnsureSingleTransaction;

    delete
      OWD_PRC_BASE_ACTIONS owdpba
    where
      (owdpba.OCCUPATION_CODE = AOccupationCode) and
      (owdpba.DEPT_CODE = ADeptCode) and
      (owdpba.OCC_WORK_DEPT_PRIORITY_CODE = AOWDPriorityCode) and
      (owdpba.PRC_FUNC_CODE = APrcFuncCode) and
      (owdpba.PRC_KNOWL_CODE = APrcKnowlCode) and
      (owdpba.PRC_BASE_OP_CODE = APrcBaseOpCode) and
      (owdpba.PRC_ACTION_CODE = APrcActionCode);

    delete
      OWD_AGGR_PRC_BASE_ACTIONS owdapba
    where
      (not exists
        ( select
            1
          from
            OWD_PRC_BASE_ACTIONS owdpba
          where
            (owdpba.OCCUPATION_CODE = owdapba.OCCUPATION_CODE) and
            (owdpba.PRC_FUNC_CODE = owdapba.PRC_FUNC_CODE) and
            (owdpba.PRC_KNOWL_CODE = owdapba.PRC_KNOWL_CODE) and
            (owdpba.PRC_BASE_OP_CODE = owdapba.PRC_BASE_OP_CODE) and
            (owdpba.PRC_ACTION_CODE = owdapba.PRC_ACTION_CODE)
        )
      );
         
    UpdPrcBaseActionDateInterval(
      AOccupationCode,
      APrcFuncCode,
      APrcKnowlCode,
      APrcBaseOpCode,
      APrcActionCode);

  end;

  procedure DeleteDeptOWDPrcBaseAction(
    ADeptCode in Number,
    APrcFuncCode in Number,
    APrcKnowlCode in Number,
    APrcBaseOpCode in Number,
    APrcActionCode in Number) is
  begin
    for x in PrcGenWorkDeptOccupations(ADeptCode) loop
      DeleteOWDPrcBaseAction(x.OCCUPATION_CODE, x.DEPT_CODE, x.OCC_WORK_DEPT_PRIORITY_CODE, APrcFuncCode, APrcKnowlCode, APrcBaseOpCode, APrcActionCode);
    end loop;
  end;

  procedure DeleteOWDPrcBaseActions(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number) is
  begin
    for x in DeptPrcBaseActions(ADeptCode) loop
      DeleteOWDPrcBaseAction(AOccupationCode, ADeptCode, AOWDPriorityCode, x.PRC_FUNC_CODE, x.PRC_KNOWL_CODE, x.PRC_BASE_OP_CODE, x.PRC_ACTION_CODE);
    end loop;
  end;

  procedure UpdateDeptOWDPrcBaseAction(
    ADeptCode in Number,
    APrcFuncCode in Number,
    APrcKnowlCode in Number,
    APrcBaseOpCode in Number,
    APrcActionCode in Number,
    ABeginDate in Date,
    AEndDate in Date) is
  begin
    EnsureSingleTransaction;

    update
      OWD_PRC_BASE_ACTIONS owdpba
    set
      owdpba.BEGIN_DATE = ABeginDate,
      owdpba.END_DATE = AEndDate
    where
      (owdpba.DEPT_CODE = ADeptCode) and
      (owdpba.PRC_FUNC_CODE = APrcFuncCode) and
      (owdpba.PRC_KNOWL_CODE = APrcKnowlCode) and
      (owdpba.PRC_BASE_OP_CODE = APrcBaseOpCode) and
      (owdpba.PRC_ACTION_CODE = APrcActionCode);

    update
      OWD_AGGR_PRC_BASE_ACTIONS owdapba
    set
      (owdapba.BEGIN_DATE, owdapba.END_DATE) =
      ( select
          Min(owdpba.BEGIN_DATE),
          Max(owdpba.END_DATE)
        from
          OWD_PRC_BASE_ACTIONS owdpba
        where
          (owdpba.OCCUPATION_CODE = owdapba.OCCUPATION_CODE) and
          (owdpba.PRC_FUNC_CODE = owdapba.PRC_FUNC_CODE) and
          (owdpba.PRC_KNOWL_CODE = owdapba.PRC_KNOWL_CODE) and
          (owdpba.PRC_BASE_OP_CODE = owdapba.PRC_BASE_OP_CODE) and
          (owdpba.PRC_ACTION_CODE = owdapba.PRC_ACTION_CODE)
      )
    where
      (owdapba.PRC_FUNC_CODE = APrcFuncCode) and
      (owdapba.PRC_KNOWL_CODE = APrcKnowlCode) and
      (owdapba.PRC_BASE_OP_CODE = APrcBaseOpCode) and
      (owdapba.PRC_ACTION_CODE = APrcActionCode) and
      (exists
        ( select
            1
          from
            OCCUPATION_WORK_DEPTS owd
          where
            (owd.OCCUPATION_CODE = owdapba.OCCUPATION_CODE) and
            (owd.DEPT_CODE = ADeptCode)
        )
      );

    update
      OCC_PRC_BASE_ACTIONS opba
    set
      (opba.BEGIN_DATE, opba.END_DATE) =
      ( select
          Greatest(owdapba.BEGIN_DATE, o.OCCUPATION_BEGIN_DATE),
          Least(owdapba.END_DATE, o.OCCUPATION_END_DATE)
        from
          OWD_AGGR_PRC_BASE_ACTIONS owdapba,
          OCCUPATIONS o
        where
          (owdapba.OCCUPATION_CODE = opba.OCCUPATION_CODE) and
          (owdapba.PRC_FUNC_CODE = opba.PRC_FUNC_CODE) and
          (owdapba.PRC_KNOWL_CODE = opba.PRC_KNOWL_CODE) and
          (owdapba.PRC_BASE_OP_CODE = opba.PRC_BASE_OP_CODE) and
          (owdapba.PRC_ACTION_CODE = opba.PRC_ACTION_CODE) and
          (o.OCCUPATION_CODE = opba.OCCUPATION_CODE)
      )
    where
      (opba.PRC_FUNC_CODE = APrcFuncCode) and
      (opba.PRC_KNOWL_CODE = APrcKnowlCode) and
      (opba.PRC_BASE_OP_CODE = APrcBaseOpCode) and
      (opba.PRC_ACTION_CODE = APrcActionCode) and
      (opba.OVERRIDE_DATE_INTERVAL = 0) and
      (exists
        ( select
            1
          from
            OCCUPATION_WORK_DEPTS owd
          where
            (owd.OCCUPATION_CODE = opba.OCCUPATION_CODE) and
            (owd.DEPT_CODE = ADeptCode)
        )
      );

  end;

  -- concrete actions
  
  procedure UpdPrcConcrActionDateInterval(
     AOccupationCode in Number,
     APrcFuncCode in Number,
     APrcKnowlCode in Number,
     APrcBaseOpCode in Number,
     APrcConcreteOpCode in Number,
     APrcActionCode in Number) is
  begin
    update
      OWD_AGGR_PRC_CONCRETE_ACTIONS owdapca
    set
      (owdapca.BEGIN_DATE, owdapca.END_DATE) =
      ( select
          Min(owdpca.BEGIN_DATE),
          Max(owdpca.END_DATE)
        from
          OWD_PRC_CONCRETE_ACTIONS owdpca
        where
          (owdpca.OCCUPATION_CODE = AOccupationCode) and
          (owdpca.PRC_FUNC_CODE = APrcFuncCode) and
          (owdpca.PRC_KNOWL_CODE = APrcKnowlCode) and
          (owdpca.PRC_BASE_OP_CODE = APrcBaseOpCode) and
          (owdpca.PRC_CONCRETE_OP_CODE = APrcConcreteOpCode) and
          (owdpca.PRC_ACTION_CODE = APrcActionCode)
      )
    where
      (owdapca.OCCUPATION_CODE = AOccupationCode) and
      (owdapca.PRC_FUNC_CODE = APrcFuncCode) and
      (owdapca.PRC_KNOWL_CODE = APrcKnowlCode) and
      (owdapca.PRC_BASE_OP_CODE = APrcBaseOpCode) and
      (owdapca.PRC_CONCRETE_OP_CODE = APrcConcreteOpCode) and
      (owdapca.PRC_ACTION_CODE = APrcActionCode);

    update
      OCC_PRC_CONCRETE_ACTIONS opca
    set
      (opca.BEGIN_DATE, opca.END_DATE) =
      ( select
          Greatest(owdapca.BEGIN_DATE, o.OCCUPATION_BEGIN_DATE),
          Least(owdapca.END_DATE, o.OCCUPATION_END_DATE)
        from
          OWD_AGGR_PRC_CONCRETE_ACTIONS owdapca,
          OCCUPATIONS o
        where
          (owdapca.OCCUPATION_CODE = AOccupationCode) and
          (owdapca.PRC_FUNC_CODE = APrcFuncCode) and
          (owdapca.PRC_KNOWL_CODE = APrcKnowlCode) and
          (owdapca.PRC_BASE_OP_CODE = APrcBaseOpCode) and
          (owdapca.PRC_CONCRETE_OP_CODE = APrcConcreteOpCode) and
          (owdapca.PRC_ACTION_CODE = APrcActionCode) and
          (o.OCCUPATION_CODE = AOccupationCode)
      )
    where
      (opca.OCCUPATION_CODE = AOccupationCode) and
      (opca.PRC_FUNC_CODE = APrcFuncCode) and
      (opca.PRC_KNOWL_CODE = APrcKnowlCode) and
      (opca.PRC_BASE_OP_CODE = APrcBaseOpCode) and
      (opca.PRC_CONCRETE_OP_CODE = APrcConcreteOpCode) and
      (opca.PRC_ACTION_CODE = APrcActionCode) and
      (opca.OVERRIDE_DATE_INTERVAL = 0);

  end;

  procedure InsertOWDPrcConcreteAction(
    AOccupationCode in Number,
    ADeptCode in Number,
    AOWDPriorityCode in Number,
    APrcFuncCode in Number,
    APrcKnowlCode in Number,
    APrcBaseOpCode in Number,
    APrcConcreteOpCode in Number,
    APrcActionCode in Number,
    ABeginDate in Date,
    AEndDate in Date) is
  begin
    EnsureSingleTransaction;

    insert into OWD_PRC_CONCRETE_ACTIONS
    (
      OCCUPATION_CODE,
      DEPT_CODE,
      OCC_WORK_DEPT_PRIORITY_CODE,
      PRC_FUNC_CODE,
      PRC_KNOWL_CODE,
      PRC_BASE_OP_CODE,
      PRC_CONCRETE_OP_CODE,
      PRC_ACTION_CODE,
      BEGIN_DATE,
      END_DATE
    )
    values
    (
      AOccupationCode,
      ADeptCode,
      AOWDPriorityCode,
      APrcFuncCode,
      APrcKnowlCode,
      APrcBaseOpCode,
      APrcConcreteOpCode,
      APrcActionCode,
      ABeginDate,
      AEndDate
    );

    insert into OWD_AGGR_PRC_CONCRETE_ACTIONS
    (
      OCCUPATION_CODE,
      PRC_FUNC_CODE,
      PRC_KNOWL_CODE,
      PRC_BASE_OP_CODE,
      PRC_CONCRETE_OP_CODE,
      PRC_ACTION_CODE,
      BEGIN_DATE,
      END_DATE
    )
    select
      AOccupationCode,
      APrcFuncCode,
      APrcKnowlCode,
      APrcBaseOpCode,
      APrcConcreteOpCode,
      APrcActionCode,
      ABeginDate,
      AEndDate
    from
      DUAL
    where
      (not exists
        ( select
            1
          from
            OWD_AGGR_PRC_CONCRETE_ACTIONS owdapca
          where
            (owdapca.OCCUPATION_CODE = AOccupationCode) and
            (owdapca.PRC_FUNC_CODE = APrcFuncCode) and
            (owdapca.PRC_KNOWL_CODE = APrcKnowlCode) and
            (owdapca.PRC_BASE_OP_CODE = APrcBaseOpCode) and
            (owdapca.PRC_CONCRETE_OP_CODE = APrcConcreteOpCode) and
            (owdapca.PRC_ACTION_CODE = APrcActionCode)
        )
      );

    UpdPrcConcrActionDateInterval(
      AOccupationCode,
      APrcFuncCode,
      APrcKnowlCode,
      APrcBaseOpCode,
      APrcConcreteOpCode,
      APrcActionCode);

  end;

  procedure InsertDeptOWDPrcConcreteAction(
    ADeptCode in Number,
    APrcFuncCode in Number,
    APrcKnowlCode in Number,
    APrcBaseOpCode in Number,
    APrcConcreteOpCode in Number,
    APrcActionCode in Number,
    ABeginDate in Date,
    AEndDate in Date) is
  begin
    for x in PrcGenWorkDeptOccupations(ADeptCode) loop
      InsertOWDPrcConcreteAction(x.OCCUPATION_CODE, x.DEPT_CODE, x.OCC_WORK_DEPT_PRIORITY_CODE, APrcFuncCode, APrcKnowlCode, APrcBaseOpCode, APrcConcreteOpCode, APrcActionCode, ABeginDate, AEndDate);
    end loop;
  end;

  procedure InsertOWDPrcConcreteActions(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number) is
  begin
    for x in DeptPrcConcreteActions(ADeptCode) loop
      InsertOWDPrcConcreteAction(AOccupationCode, ADeptCode, AOWDPriorityCode, x.PRC_FUNC_CODE, x.PRC_KNOWL_CODE, x.PRC_BASE_OP_CODE, x.PRC_CONCRETE_OP_CODE, x.PRC_ACTION_CODE, x.BEGIN_DATE, x.END_DATE);
    end loop;
  end;

  procedure DeleteOWDPrcConcreteAction(
    AOccupationCode in Number,
    ADeptCode in Number,
    AOWDPriorityCode in Number,
    APrcFuncCode in Number,
    APrcKnowlCode in Number,
    APrcBaseOpCode in Number,
    APrcConcreteOpCode in Number,
    APrcActionCode in Number) is
  begin
    EnsureSingleTransaction;

    delete
      OWD_PRC_CONCRETE_ACTIONS owdpca
    where
      (owdpca.OCCUPATION_CODE = AOccupationCode) and
      (owdpca.DEPT_CODE = ADeptCode) and
      (owdpca.OCC_WORK_DEPT_PRIORITY_CODE = AOWDPriorityCode) and
      (owdpca.PRC_FUNC_CODE = APrcFuncCode) and
      (owdpca.PRC_KNOWL_CODE = APrcKnowlCode) and
      (owdpca.PRC_BASE_OP_CODE = APrcBaseOpCode) and
      (owdpca.PRC_CONCRETE_OP_CODE = APrcConcreteOpCode) and
      (owdpca.PRC_ACTION_CODE = APrcActionCode);

    delete
      OWD_AGGR_PRC_CONCRETE_ACTIONS owdapca
    where
      (not exists
        ( select
            1
          from
            OWD_PRC_CONCRETE_ACTIONS owdpca
          where
            (owdpca.OCCUPATION_CODE = owdapca.OCCUPATION_CODE) and
            (owdpca.PRC_FUNC_CODE = owdapca.PRC_FUNC_CODE) and
            (owdpca.PRC_KNOWL_CODE = owdapca.PRC_KNOWL_CODE) and
            (owdpca.PRC_BASE_OP_CODE = owdapca.PRC_BASE_OP_CODE) and
            (owdpca.PRC_CONCRETE_OP_CODE = owdapca.PRC_CONCRETE_OP_CODE) and
            (owdpca.PRC_ACTION_CODE = owdapca.PRC_ACTION_CODE)
        )
      );
         
    UpdPrcConcrActionDateInterval(
      AOccupationCode,
      APrcFuncCode,
      APrcKnowlCode,
      APrcBaseOpCode,
      APrcConcreteOpCode,
      APrcActionCode);

  end;

  procedure DeleteDeptOWDPrcConcreteAction(
    ADeptCode in Number,
    APrcFuncCode in Number,
    APrcKnowlCode in Number,
    APrcBaseOpCode in Number,
    APrcConcreteOpCode in Number,
    APrcActionCode in Number) is
  begin
    for x in PrcGenWorkDeptOccupations(ADeptCode) loop
      DeleteOWDPrcConcreteAction(x.OCCUPATION_CODE, x.DEPT_CODE, x.OCC_WORK_DEPT_PRIORITY_CODE, APrcFuncCode, APrcKnowlCode, APrcBaseOpCode, APrcConcreteOpCode, APrcActionCode);
    end loop;
  end;

  procedure DeleteOWDPrcConcreteActions(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number) is
  begin
    for x in DeptPrcConcreteActions(ADeptCode) loop
      DeleteOWDPrcConcreteAction(AOccupationCode, ADeptCode, AOWDPriorityCode, x.PRC_FUNC_CODE, x.PRC_KNOWL_CODE, x.PRC_BASE_OP_CODE, x.PRC_CONCRETE_OP_CODE, x.PRC_ACTION_CODE);
    end loop;
  end;

  procedure UpdateDeptOWDPrcConcreteAction(
    ADeptCode in Number,
    APrcFuncCode in Number,
    APrcKnowlCode in Number,
    APrcBaseOpCode in Number,
    APrcConcreteOpCode in Number,
    APrcActionCode in Number,
    ABeginDate in Date,
    AEndDate in Date) is
  begin
    EnsureSingleTransaction;

    update
      OWD_PRC_CONCRETE_ACTIONS owdpca
    set
      owdpca.BEGIN_DATE = ABeginDate,
      owdpca.END_DATE = AEndDate
    where
      (owdpca.DEPT_CODE = ADeptCode) and
      (owdpca.PRC_FUNC_CODE = APrcFuncCode) and
      (owdpca.PRC_KNOWL_CODE = APrcKnowlCode) and
      (owdpca.PRC_BASE_OP_CODE = APrcBaseOpCode) and
      (owdpca.PRC_CONCRETE_OP_CODE = APrcConcreteOpCOde) and
      (owdpca.PRC_ACTION_CODE = APrcActionCode);

    update
      OWD_AGGR_PRC_CONCRETE_ACTIONS owdapca
    set
      (owdapca.BEGIN_DATE, owdapca.END_DATE) =
      ( select
          Min(owdpca.BEGIN_DATE),
          Max(owdpca.END_DATE)
        from
          OWD_PRC_CONCRETE_ACTIONS owdpca
        where
          (owdpca.OCCUPATION_CODE = owdapca.OCCUPATION_CODE) and
          (owdpca.PRC_FUNC_CODE = owdapca.PRC_FUNC_CODE) and
          (owdpca.PRC_KNOWL_CODE = owdapca.PRC_KNOWL_CODE) and
          (owdpca.PRC_BASE_OP_CODE = owdapca.PRC_BASE_OP_CODE) and
          (owdpca.PRC_CONCRETE_OP_CODE = owdapca.PRC_CONCRETE_OP_CODE) and
          (owdpca.PRC_ACTION_CODE = owdapca.PRC_ACTION_CODE)
      )
    where
      (owdapca.PRC_FUNC_CODE = APrcFuncCode) and
      (owdapca.PRC_KNOWL_CODE = APrcKnowlCode) and
      (owdapca.PRC_BASE_OP_CODE = APrcBaseOpCode) and
      (owdapca.PRC_CONCRETE_OP_CODE = APrcConcreteOpCode) and
      (owdapca.PRC_ACTION_CODE = APrcActionCode) and
      (exists
        ( select
            1
          from
            OCCUPATION_WORK_DEPTS owd
          where
            (owd.OCCUPATION_CODE = owdapca.OCCUPATION_CODE) and
            (owd.DEPT_CODE = ADeptCode)
        )
      );

    update
      OCC_PRC_CONCRETE_ACTIONS opca
    set
      (opca.BEGIN_DATE, opca.END_DATE) =
      ( select
          Greatest(owdapca.BEGIN_DATE, o.OCCUPATION_BEGIN_DATE),
          Least(owdapca.END_DATE, o.OCCUPATION_END_DATE)
        from
          OWD_AGGR_PRC_CONCRETE_ACTIONS owdapca,
          OCCUPATIONS o
        where
          (owdapca.OCCUPATION_CODE = opca.OCCUPATION_CODE) and
          (owdapca.PRC_FUNC_CODE = opca.PRC_FUNC_CODE) and
          (owdapca.PRC_KNOWL_CODE = opca.PRC_KNOWL_CODE) and
          (owdapca.PRC_BASE_OP_CODE = opca.PRC_BASE_OP_CODE) and
          (owdapca.PRC_CONCRETE_OP_CODE = opca.PRC_CONCRETE_OP_CODE) and
          (owdapca.PRC_ACTION_CODE = opca.PRC_ACTION_CODE) and
          (o.OCCUPATION_CODE = opca.OCCUPATION_CODE)
      )
    where
      (opca.PRC_FUNC_CODE = APrcFuncCode) and
      (opca.PRC_KNOWL_CODE = APrcKnowlCode) and
      (opca.PRC_BASE_OP_CODE = APrcBaseOpCode) and
      (opca.PRC_CONCRETE_OP_CODE = APrcConcreteOpCode) and
      (opca.PRC_ACTION_CODE = APrcActionCode) and
      (opca.OVERRIDE_DATE_INTERVAL = 0) and
      (exists
        ( select
            1
          from
            OCCUPATION_WORK_DEPTS owd
          where
            (owd.OCCUPATION_CODE = opca.OCCUPATION_CODE) and
            (owd.DEPT_CODE = ADeptCode)
        )
      );

  end;

  ----------------

  procedure InsertOWDPrcData(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number) is
  begin
    InsertOWDPrcFuncs(AOccupationCode, ADeptCode, AOWDPriorityCode);
    InsertOWDPrcKnowls(AOccupationCode, ADeptCode, AOWDPriorityCode);
    InsertOWDPrcBaseOps(AOccupationCode, ADeptCode, AOWDPriorityCode);
    InsertOWDPrcBaseActions(AOccupationCode, ADeptCode, AOWDPriorityCode);
    InsertOWDPrcConcreteOps(AOccupationCode, ADeptCode, AOWDPriorityCode);
    InsertOWDPrcConcreteActions(AOccupationCode, ADeptCode, AOWDPriorityCode);
  end;

  procedure DeleteOWDPrcData(AOccupationCode in Number, ADeptCode in Number, AOWDPriorityCode in Number) is
  begin
    DeleteOWDPrcConcreteActions(AOccupationCode, ADeptCode, AOWDPriorityCode);
    DeleteOWDPrcConcreteOps(AOccupationCode, ADeptCode, AOWDPriorityCode);
    DeleteOWDPrcBaseActions(AOccupationCode, ADeptCode, AOWDPriorityCode);
    DeleteOWDPrcBaseOps(AOccupationCode, ADeptCode, AOWDPriorityCode);
    DeleteOWDPrcKnowls(AOccupationCode, ADeptCode, AOWDPriorityCode);
    DeleteOWDPrcFuncs(AOccupationCode, ADeptCode, AOWDPriorityCode);
  end;

  ----------------

  procedure InsertOWDPriorityPrcData(AOWDPriorityCode in Number) is
  begin
    for x in OWDPriorityOccDfnWorkDepts(AOWDPriorityCode) loop
      InsertOWDPrcData(x.OCCUPATION_CODE, x.DEPT_CODE, AOWDPriorityCode);
    end loop;
  end;

  procedure DeleteOWDPriorityPrcData(AOWDPriorityCode in Number) is
  begin
    for x in OWDPriorityOccDfnWorkDepts(AOWDPriorityCode) loop
      DeleteOWDPrcData(x.OCCUPATION_CODE, x.DEPT_CODE, AOWDPriorityCode);
    end loop;
  end;

  ----------------

  -- Occupation Aggregated Professions maintaining procedures

  procedure InsOccAggrProfIfNotExists(AOccupationCode in Number, AProfessionCode in Number) is
  begin
    insert into OCCUPATION_AGGR_PROFESSIONS
    (
      OCCUPATION_CODE,
      PROFESSION_CODE
    )
    select
      AOccupationCode,
      AProfessionCode
    from
      DUAL
    where
      (not exists
        ( select
            1
          from
            OCCUPATION_AGGR_PROFESSIONS oap
          where
            (oap.OCCUPATION_CODE = AOccupationCode) and
            (oap.PROFESSION_CODE = AProfessionCode)
        )
      );
  end;

  procedure DelOccAggrProfIfNotReferenced(AOccupationCode in Number, AProfessionCode in Number) is
  begin
    delete
      OCCUPATION_AGGR_PROFESSIONS oap
    where
      (oap.OCCUPATION_CODE = AOccupationCode) and
      (oap.PROFESSION_CODE = AProfessionCode) and
      (not exists
        ( select
            1
          from
            OCC_PRC_BASE_OP_PROFS opbop
          where
            (opbop.OCCUPATION_CODE = oap.OCCUPATION_CODE) and
            (opbop.PROFESSION_CODE = oap.PROFESSION_CODE)
        )
      ) and
      (not exists
        ( select
            1
          from
            OCC_PRC_CONCRETE_OP_PROFS opcop
          where
            (opcop.OCCUPATION_CODE = oap.OCCUPATION_CODE) and
            (opcop.PROFESSION_CODE = oap.PROFESSION_CODE)
        )
      );
  end;

  -- base professions

  procedure InsertOccPrcBaseOpProf(AOccupationCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number, AProfessionCode in Number) is
  begin
    EnsureSingleTransaction;

    insert into OCC_PRC_BASE_OP_PROFS
    (
      OCCUPATION_CODE,
      PRC_FUNC_CODE,
      PRC_KNOWL_CODE,
      PRC_BASE_OP_CODE,
      PROFESSION_CODE
    )
    values
    (
      AOccupationCode,
      APrcFuncCode,
      APrcKnowlCode,
      APrcBaseOpCode,
      AProfessionCode
    );

    InsOccAggrProfIfNotExists(AOccupationCode, AProfessionCode);

  end;

  procedure InsertOccPrcBaseOpProfs(AOccupationCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number) is
  begin
    for x in BaseOpProfessions(APrcBaseOpCode) loop
      InsertOccPrcBaseOpProf(AOccupationCode, APrcFuncCode, APrcKnowlCode, APrcBaseOpCode, x.PROFESSION_CODE);
    end loop;
  end;

  procedure InsertProfOccPrcBaseOps(AProfessionCode in Number, APrcBaseOpCode in Number) is
  begin
    for x in BaseOpOccPrcBaseOps(APrcBaseOpCode) loop
      InsertOccPrcBaseOpProf(x.OCCUPATION_CODE, x.PRC_FUNC_CODE, x.PRC_KNOWL_CODE, x.PRC_BASE_OP_CODE, AProfessionCode);
    end loop;
  end;

  procedure DeleteOccPrcBaseOpProf(AOccupationCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number, AProfessionCode in Number) is
  begin
    EnsureSingleTransaction;

    delete
      OCC_PRC_BASE_OP_PROFS opbop
    where
      (opbop.OCCUPATION_CODE = AOccupationCode) and
      (opbop.PRC_FUNC_CODE = APrcFuncCode) and
      (opbop.PRC_KNOWL_CODE = APrcKnowlCode) and
      (opbop.PRC_BASE_OP_CODE = APrcBaseOpCode) and
      (opbop.PROFESSION_CODE = AProfessionCode);

    DelOccAggrProfIfNotReferenced(AOccupationCode, AProfessionCode);

  end;

  procedure DeleteOccPrcBaseOpProfs(AOccupationCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number) is
  begin
    for x in BaseOpProfessions(APrcBaseOpCode) loop
      DeleteOccPrcBaseOpProf(AOccupationCode, APrcFuncCode, APrcKnowlCode, APrcBaseOpCode, x.PROFESSION_CODE);
    end loop;
  end;

  procedure DeleteProfOccPrcBaseOps(AProfessionCode in Number, APrcBaseOpCode in Number) is
  begin
    for x in BaseOpOccPrcBaseOps(APrcBaseOpCode) loop
      DeleteOccPrcBaseOpProf(x.OCCUPATION_CODE, x.PRC_FUNC_CODE, x.PRC_KNOWL_CODE, x.PRC_BASE_OP_CODE, AProfessionCode);
    end loop;
  end;

  -- concrete professions

  procedure InsertOccPrcConcreteOpProf(AOccupationCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number, APrcConcreteOpCode in Number, AProfessionCode in Number) is
  begin
    EnsureSingleTransaction;

    insert into OCC_PRC_CONCRETE_OP_PROFS
    (
      OCCUPATION_CODE,
      PRC_FUNC_CODE,
      PRC_KNOWL_CODE,
      PRC_BASE_OP_CODE,
      PRC_CONCRETE_OP_CODE,
      PROFESSION_CODE
    )
    values
    (
      AOccupationCode,
      APrcFuncCode,
      APrcKnowlCode,
      APrcBaseOpCode,
      APrcConcreteOpCode,
      AProfessionCode
    );

    InsOccAggrProfIfNotExists(AOccupationCode, AProfessionCode);

  end;

  procedure InsertOccPrcConcreteOpProfs(AOccupationCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number, APrcConcreteOpCode in Number) is
  begin
    for x in ConcreteOpProfessions(APrcConcreteOpCode) loop
      InsertOccPrcConcreteOpProf(AOccupationCode, APrcFuncCode, APrcKnowlCode, APrcBaseOpCode, APrcConcreteOpCode, x.PROFESSION_CODE);
    end loop;
  end;

  procedure InsertProfOccPrcConcreteOps(AProfessionCode in Number, APrcConcreteOpCode in Number) is
  begin
    for x in ConcreteOpOccPrcConcreteOps(APrcConcreteOpCode) loop
      InsertOccPrcConcreteOpProf(x.OCCUPATION_CODE, x.PRC_FUNC_CODE, x.PRC_KNOWL_CODE, x.PRC_BASE_OP_CODE, x.PRC_CONCRETE_OP_CODE, AProfessionCode);
    end loop;
  end;

  procedure DeleteOccPrcConcreteOpProf(AOccupationCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number, APrcConcreteOpCode in Number, AProfessionCode in Number) is
  begin
    EnsureSingleTransaction;

    delete
      OCC_PRC_CONCRETE_OP_PROFS opcop
    where
      (opcop.OCCUPATION_CODE = AOccupationCode) and
      (opcop.PRC_FUNC_CODE = APrcFuncCode) and
      (opcop.PRC_KNOWL_CODE = APrcKnowlCode) and
      (opcop.PRC_BASE_OP_CODE = APrcBaseOpCode) and
      (opcop.PRC_CONCRETE_OP_CODE = APrcConcreteOpCode) and
      (opcop.PROFESSION_CODE = AProfessionCode);

    DelOccAggrProfIfNotReferenced(AOccupationCode, AProfessionCode);

  end;

  procedure DeleteOccPrcConcreteOpProfs(AOccupationCode in Number, APrcFuncCode in Number, APrcKnowlCode in Number, APrcBaseOpCode in Number, APrcConcreteOpCode in Number) is
  begin
    for x in ConcreteOpProfessions(APrcConcreteOpCode) loop
      DeleteOccPrcConcreteOpProf(AOccupationCode, APrcFuncCode, APrcKnowlCode, APrcBaseOpCode, APrcConcreteOpCode, x.PROFESSION_CODE);
    end loop;
  end;

  procedure DeleteProfOccPrcConcreteOps(AProfessionCode in Number, APrcConcreteOpCode in Number) is
  begin
    for x in ConcreteOpOccPrcConcreteOps(APrcConcreteOpCode) loop
      DeleteOccPrcConcreteOpProf(x.OCCUPATION_CODE, x.PRC_FUNC_CODE, x.PRC_KNOWL_CODE, x.PRC_BASE_OP_CODE, x.PRC_CONCRETE_OP_CODE, AProfessionCode);
    end loop;
  end;

end;
/
