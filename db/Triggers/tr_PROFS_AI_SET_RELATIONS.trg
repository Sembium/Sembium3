create or replace trigger tr_PROFS_AI_SET_RELATIONS
  after insert on PROFESSIONS
  for each row
begin
  insert into PROFESSION_RELATIONS
    (
      ANCESTOR_PROFESSION_CODE,
      DESCENDANT_PROFESSION_CODE
    )
  values
    (
      :new.PROFESSION_CODE,
      :new.PROFESSION_CODE
    );
    
  insert into PROFESSION_RELATIONS
    (
      ANCESTOR_PROFESSION_CODE,
      DESCENDANT_PROFESSION_CODE
    )
  select
    pr.ANCESTOR_PROFESSION_CODE,
    :new.PROFESSION_CODE
  from
    PROFESSION_RELATIONS pr
  where
    (pr.DESCENDANT_PROFESSION_CODE = :new.PARENT_PROFESSION_CODE);

end tr_PROFS_AI_SET_RELATIONS;
/
