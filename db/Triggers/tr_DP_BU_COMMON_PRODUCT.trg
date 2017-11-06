create or replace trigger tr_DP_BU_COMMON_PRODUCT
  before update of COMMON_PRODUCT_CODE on DEFINITE_PRODUCTS  
  for each row
declare
  HasInvalidProcessPosition Number;
  CustomCode Number;
  IncorrectBeginDate Date;
  IncorrectEndDate Date;
begin
  if (:new.COMMON_PRODUCT_CODE is not null) then

    select
      Count(*),
      Max(p.CUSTOM_CODE)
    into
      HasInvalidProcessPosition,
      CustomCode
    from
      PRODUCTS p,
      PRODUCTS cp
    where
      (p.PRODUCT_CODE = :new.PRODUCT_CODE) and
      (cp.PRODUCT_CODE = :new.COMMON_PRODUCT_CODE) and
      
      ( (cp.IS_USED_BY_SALES < p.IS_USED_BY_SALES) or
        (cp.IS_USED_BY_SALE_PRODUCTION < p.IS_USED_BY_SALE_PRODUCTION) or
        (cp.IS_USED_BY_ENV_PRODUCTION < p.IS_USED_BY_ENV_PRODUCTION) or
        (cp.IS_PROVIDED_BY_DELIVERIES < p.IS_PROVIDED_BY_DELIVERIES) or
        (cp.IS_PROVIDED_BY_SALE_PRODUCTION < p.IS_PROVIDED_BY_SALE_PRODUCTION) or
        (cp.IS_PROVIDED_BY_ENV_PRODUCTION < p.IS_PROVIDED_BY_ENV_PRODUCTION)
      );
      
    if (HasInvalidProcessPosition > 0) then
      raise_application_error(-20002,
        ServerMessages.SInvalidProcessPositionsId || '(' ||
        'ProductNo:f=' || MessageUtils.InternalFloatToStr(CustomCode) || ')');
    end if;
      
      
    select
      Min(pp.BEGIN_DATE) keep (dense_rank first order by pp.BEGIN_DATE),
      Min(pp.END_DATE) keep (dense_rank first order by pp.BEGIN_DATE)
    into
      IncorrectBeginDate,
      IncorrectEndDate 
    from
      PRODUCT_PERIODS pp
    where
      (pp.PRODUCT_CODE = :new.PRODUCT_CODE) and
      not exists(
        select
          1
        from
          PRODUCT_PERIODS cpp
        where
          (cpp.PRODUCT_CODE = :new.COMMON_PRODUCT_CODE) and
          (cpp.BEGIN_DATE <= pp.BEGIN_DATE) and
          (pp.END_DATE <= cpp.END_DATE)
      );      
      
    if (IncorrectBeginDate is not null) and (IncorrectEndDate is not null) then
      raise_application_error(-20002,
        ServerMessages.SIncorrectCommonProductPerId || '(' ||
        'BeginDate:d=' || MessageUtils.InternalDateToStr(IncorrectBeginDate) || ', ' ||
        'EndDate:d=' || MessageUtils.InternalDateToStr(IncorrectEndDate) || ')'
      );
    end if;      
      
  end if;
end tr_DP_BU_COMMON_PRODUCT;
/
