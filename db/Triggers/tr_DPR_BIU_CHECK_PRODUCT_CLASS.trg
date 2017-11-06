create or replace trigger tr_DPR_BIU_CHECK_PRODUCT_CLASS
  before insert or update of PRODUCT_CODE on DELIVERY_PROJECTS
  for each row
declare
  DCDProductClassCode Number;
  DPProductClassCode Number;
begin

  select
    dcd.PRODUCT_CLASS_CODE
  into
    DCDProductClassCode
  from
    DEFICIT_COVER_DECISIONS dcd
  where
    (dcd.DCD_OBJECT_BRANCH_CODE = :new.DCD_OBJECT_BRANCH_CODE) and
    (dcd.DCD_OBJECT_CODE = :new.DCD_OBJECT_CODE);

  select
    p.PRODUCT_CLASS_CODE
  into
    DPProductClassCode
  from
    PRODUCTS p
  where
    (p.PRODUCT_CODE = :new.PRODUCT_CODE);

  if (DCDProductClassCode <> DPProductClassCode) then
    raise_application_error(-20001, 'Internal assertion: different product classes in DEFICIT_COVER_DECISION and DELIVER_PROJECT');
  end if;

end;
/
