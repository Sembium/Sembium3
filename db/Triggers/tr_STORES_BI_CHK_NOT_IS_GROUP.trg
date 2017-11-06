create or replace trigger tr_STORES_BI_CHK_NOT_IS_GROUP
  before insert on STORES
  for each row
declare
  IsGroup Number;
begin

  select
    Max(d.IS_GROUP)
  into
    IsGroup
  from
    DEPTS d
  where
    (d.DEPT_CODE = :new.STORE_CODE);

  if (IsGroup = 1) then
    raise_application_error(-20001, ServerMessages.SGroupDeptCannotBeStoreId);
  end if;

end;
/
