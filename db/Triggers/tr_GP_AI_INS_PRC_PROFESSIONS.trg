create or replace trigger tr_GP_AI_INS_PRC_PROFESSIONS
  after insert on GLOBAL_PROFESSIONS
  for each row
begin

  insert into OCCUPATION_AGGR_PROFESSIONS
  (
    OCCUPATION_CODE,
    PROFESSION_CODE
  )
  select
    o.OCCUPATION_CODE,
    :new.PROFESSION_CODE
  from
    OCCUPATIONS o;

end tr_GP_AI_INS_PRC_PROFESSIONS;
/
