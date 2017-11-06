create or replace trigger tr_GP_BD_DEL_PRC_PROFESSIONS
  before delete on GLOBAL_PROFESSIONS
  for each row
begin

  delete
    OCCUPATION_AGGR_PROFESSIONS oap
  where
    (oap.PROFESSION_CODE = :old.PROFESSION_CODE);

end tr_GP_BD_DEL_PRC_PROFESSIONS;
/
