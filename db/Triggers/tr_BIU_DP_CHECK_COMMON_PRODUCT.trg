create or replace trigger tr_BIU_DP_CHECK_COMMON_PRODUCT
  before insert or update of COMMON_PRODUCT_CODE on DEFINITE_PRODUCTS
  for each row
declare
  IsCommonProductStrategic Number;
  IsCommonProduct Number;
  IsStrategicProduct Number;
begin

  if (:new.COMMON_PRODUCT_CODE is not null) then

    select
      Max(p.IS_STRATEGIC)
    into
      IsCommonProductStrategic
    from
      PRODUCTS p
    where
      (p.PRODUCT_CODE = :new.COMMON_PRODUCT_CODE)
    ;

    if (IsCommonProductStrategic = 1) then

      select
        Coalesce(Max(p.IS_COMMON), 0)
      into
        IsCommonProduct
      from
        PRODUCTS p
      where
        (p.PRODUCT_CODE = :new.PRODUCT_CODE)
      ;

      if (IsCommonProduct = 0) then
        raise_application_error(-20002, ServerMessages.SConcreteToStrategicStateId);
      end if;

    else
      
      select
        Max(p.IS_STRATEGIC)
      into
        IsStrategicProduct
      from
        PRODUCTS p
      where
        (p.PRODUCT_CODE = :new.PRODUCT_CODE)
      ;

      if (IsStrategicProduct = 1) then
        raise_application_error(-20002, ServerMessages.SStrategicToNonStrategicId);
      end if;      

    end if;

  end if;

end tr_BIU_DP_CHECK_COMMON_PRODUCT;
/
