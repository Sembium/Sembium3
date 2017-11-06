create or replace trigger tr_EED_BU_CHECK_QUANTITY
  before update of PRODUCT_QUANTITY on EXCEPT_EVENT_DAMAGES
  for each row
declare
  HasAttacksWithGreaterQty Number;
begin

  select
    Sign(Count(*))
  into
    HasAttacksWithGreaterQty
  from
    EXCEPT_EVENT_DMG_ATTACKS eeda
  where
    (eeda.EXCEPT_EVENT_DAMAGE_CODE = :new.EXCEPT_EVENT_DAMAGE_CODE) and
    (eeda.PRODUCT_QUANTITY > :new.PRODUCT_QUANTITY);

  if (HasAttacksWithGreaterQty = 1) then
    raise_application_error(-20001, ServerMessages.SEEDHasAttacksWithGreaterQtyId);
  end if;

end tr_EED_BU_CHECK_QUANTITY;
/
