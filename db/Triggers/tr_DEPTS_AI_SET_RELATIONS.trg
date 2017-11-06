create or replace trigger tr_DEPTS_AI_SET_RELATIONS
  after insert on DEPTS
  for each row
begin
  insert into DEPT_RELATIONS
    (
      ANCESTOR_DEPT_CODE,
      DESCENDANT_DEPT_CODE
    )
  values
    (
      :new.DEPT_CODE,
      :new.DEPT_CODE
    );
    
  insert into DEPT_RELATIONS
    (
      ANCESTOR_DEPT_CODE,
      DESCENDANT_DEPT_CODE
    )
  select
    pr.ANCESTOR_DEPT_CODE,
    :new.DEPT_CODE
  from
    DEPT_RELATIONS pr
  where
    (pr.DESCENDANT_DEPT_CODE = :new.PARENT_CODE);

end tr_DEPTS_AI_SET_RELATIONS;
/
