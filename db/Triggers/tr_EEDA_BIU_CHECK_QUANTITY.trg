create or replace trigger tr_EEDA_BIU_CHECK_QUANTITY
  before insert or update of PRODUCT_QUANTITY, EXCEPT_EVENT_DAMAGE_CODE on EXCEPT_EVENT_DMG_ATTACKS
  for each row
declare
  IsExceptEventDamageQtyLess Number;
begin

  select
    Sign(Count(*))
  into
    IsExceptEventDamageQtyLess
  from
    EXCEPT_EVENT_DAMAGES eed
  where
    (eed.EXCEPT_EVENT_DAMAGE_CODE = :new.EXCEPT_EVENT_DAMAGE_CODE) and
    (eed.PRODUCT_QUANTITY < :new.PRODUCT_QUANTITY);

  if (IsExceptEventDamageQtyLess = 1) then
    raise_application_error(-20001, ServerMessages.SExceptEventDamageQtyIsLessId);
  end if;

end tr_EEDA_BIU_CHECK_QUANTITY;
/
