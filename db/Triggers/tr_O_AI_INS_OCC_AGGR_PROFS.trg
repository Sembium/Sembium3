create or replace trigger tr_O_AI_INS_OCC_AGGR_PROFS
  after insert on OCCUPATIONS
  for each row
begin

  insert into OCCUPATION_AGGR_PROFESSIONS
  (
    OCCUPATION_CODE,
    PROFESSION_CODE
  )
  select
    :new.OCCUPATION_CODE,
    gp.PROFESSION_CODE
  from
    GLOBAL_PROFESSIONS gp;

end tr_O_AI_INS_OCC_AGGR_PROFS;
/
