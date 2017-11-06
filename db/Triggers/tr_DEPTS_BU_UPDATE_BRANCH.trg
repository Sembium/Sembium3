create or replace trigger tr_DEPTS_BU_UPDATE_BRANCH
  before update of CUSTOM_CODE on DEPTS
  for each row
begin

  update
    BRANCHES b
  set
    b.CUSTOM_CODE = :new.CUSTOM_CODE
  where
    (b.BRANCH_CODE = :new.DEPT_CODE);

end tr_DEPTS_BU_UPDATE_BRANCH;
/
