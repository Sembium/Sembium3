create or replace trigger tr_P_BU_CHECK_IS_STRATEGIC
  before update of IS_STRATEGIC on PRODUCTS
  for each row
declare
  IncorrectConcreteProductsExist Number;
begin

  if (:new.IS_STRATEGIC = 1) then

    select
      Sign(Count(*))
    into
      IncorrectConcreteProductsExist
    from
      DEFINITE_PRODUCTS dp,
      CONCRETE_PRODUCTS cp
    where
      (dp.COMMON_PRODUCT_CODE = :old.PRODUCT_CODE) and
      (dp.PRODUCT_CODE = cp.PRODUCT_CODE)
    ;

    if (IncorrectConcreteProductsExist = 1) then
      raise_application_error(-20002, ServerMessages.SConcreteToStrategicStateId);
    end if;

  end if;

end tr_P_BU_CHECK_IS_STRATEGIC;
/
