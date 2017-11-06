create or replace trigger tr_O_AI_INSERT_OSR
  after insert on OCCUPATIONS for each row
begin
  insert into OCCUPATION_SYS_ROLES
  (
    OCCUPATION_CODE,
    SYS_ROLE_CODE
  )
  values
  (
    :new.OCCUPATION_CODE,
    CommonConsts.srDefault
  );
end tr_O_AI_INSERT_OSR;
/
