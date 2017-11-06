create or replace trigger tr_DPF_BI_SET_PARENT_DEPT
  before insert on DEPT_PRC_FUNCS
  for each row
begin

  select
    d.PARENT_CODE
  into
    :new.PARENT_CODE
  from
    DEPTS d
  where
    (d.DEPT_CODE = :new.DEPT_CODE);

end tr_DPF_BI_SET_PARENT_DEPT;
/
