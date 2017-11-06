create or replace trigger tr_SRG_BIU_CHECK_SG_S
  before insert or update on SALE_REQUEST_GROUPS
  for each row
declare
  StuffCount integer;
begin
  select
    Count(*)
  into
    StuffCount
  from
    SALES s
  where
    (s.REQUEST_BRANCH_CODE = :new.REQUEST_BRANCH_CODE) and
    (s.REQUEST_NO = :new.REQUEST_NO) and
    ( (s.SALE_GROUP_OBJECT_BRANCH_CODE <> :new.SALE_GROUP_OBJECT_BRANCH_CODE) or
      (s.SALE_GROUP_OBJECT_CODE <> :new.SALE_GROUP_OBJECT_CODE) );

  if (StuffCount > 0) then
    raise_application_error(-20000, 'Internal error: cannot insert or update SRG because (SRG.SG <> S.SG)');
  end if;
end tr_SRG_BIU_CHECK_SG_S;
/
