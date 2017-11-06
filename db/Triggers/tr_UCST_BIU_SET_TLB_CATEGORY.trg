create or replace trigger tr_UCST_BIU_SET_TLB_CATEGORY
  before insert or update of TOOLBAR_CODE on USER_CROSS_STATE_TOOLBARS  
  for each row
begin

  select
    t.TOOLBAR_CATEGORY_CODE
  into
    :new.TOOLBAR_CATEGORY_CODE
  from
    TOOLBARS t
  where
    (t.TOOLBAR_CODE = :new.TOOLBAR_CODE);
  
end tr_UCST_BIU_SET_TLB_CATEGORY;
/
