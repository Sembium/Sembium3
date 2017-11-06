create or replace trigger tr_S_BIU_CHECK_SG_SRG
  before insert or update on SALES
  for each row
declare
  SRGCount integer;
begin
  select
    Count(*)
  into
    SRGCount
  from
    SALE_REQUEST_GROUPS srg
  where
    (srg.REQUEST_BRANCH_CODE = :new.REQUEST_BRANCH_CODE) and
    (srg.REQUEST_NO = :new.REQUEST_NO) and
    (
      (srg.SALE_GROUP_OBJECT_BRANCH_CODE is null) or
      (srg.SALE_GROUP_OBJECT_CODE is null) or
      (
        (srg.SALE_GROUP_OBJECT_BRANCH_CODE = :new.SALE_GROUP_OBJECT_BRANCH_CODE) and
        (srg.SALE_GROUP_OBJECT_CODE = :new.SALE_GROUP_OBJECT_CODE)
      )
    );

  if (SRGCount = 0) and
     (:new.REQUEST_BRANCH_CODE is not null) and
     (:new.REQUEST_NO is not null) and
     (:new.SALE_GROUP_OBJECT_BRANCH_CODE is not null) and
     (:new.SALE_GROUP_OBJECT_CODE is not null) then
    raise_application_error(-20000, 'Internal error: cannot insert or update S because (S.SRG.SG <> S.SG)');
  end if;
end tr_S_BIU_CHECK_SG_SRG;
/
