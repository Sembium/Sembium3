create or replace trigger tr_OEP_BIU_SET_OCCUPATION
  before insert or update on OCCUPATION_EMP_PROFESSIONS  
  for each row
begin

  select
    Min(oe.OCCUPATION_CODE)
  into
    :new.OCCUPATION_CODE
  from
    OCCUPATION_EMPLOYEES oe
  where
    (oe.OCCUPATION_EMPLOYEE_CODE = :new.OCCUPATION_EMPLOYEE_CODE);   
    
end tr_OEP_BIU_SET_OCCUPATION;
/
