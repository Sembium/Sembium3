create or replace trigger tr_USERS_AI_DEFAULT_TOOLBARS
  after insert on USERS
  for each row
begin

  insert into USER_CROSS_STATE_TOOLBARS
  (
    EMPLOYEE_CODE,
    CROSS_STATE_CODE,
    TOOLBAR_CODE
  )
  select
    :new.EMPLOYEE_CODE,
    dcst.CROSS_STATE_CODE,
    dcst.TOOLBAR_CODE
  from
    DEFAULT_CROSS_STATE_TOOLBARS dcst;
  
end tr_USERS_AI_DEFAULT_TOOLBARS;
/
