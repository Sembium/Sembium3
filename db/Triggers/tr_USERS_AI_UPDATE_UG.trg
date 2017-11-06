create or replace trigger tr_USERS_AI_UPDATE_UG
  after insert on USERS for each row
begin
  insert into USER_GROUP_USERS
  ( USER_GROUP_CODE,
    EMPLOYEE_CODE
  ) values (
    999999999,
    :new.EMPLOYEE_CODE
  );
end tr_USERS_AI_UPDATE_UG;
/
