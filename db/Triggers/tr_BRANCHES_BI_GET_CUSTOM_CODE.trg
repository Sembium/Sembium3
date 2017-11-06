create or replace trigger tr_BRANCHES_BI_GET_CUSTOM_CODE
  before insert on BRANCHES
  for each row
begin

  select
    Min(d.CUSTOM_CODE)
  into
    :new.CUSTOM_CODE
  from
    DEPTS d
  where
    (d.DEPT_CODE = :new.BRANCH_CODE);

end tr_BRANCHES_BI_GET_CUSTOM_CODE;
/
