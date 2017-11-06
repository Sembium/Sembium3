create or replace trigger tr_PS_BIU_CHECK_FINANCE
  before insert or update of PRODUCT_CODE, STORE_CODE on PRODUCT_STORES
  for each row
declare
  ProductClassCode Number;
  IsFinStore Number;
begin
  select
    Max(p.PRODUCT_CLASS_CODE)
  into
    ProductClassCode
  from
    PRODUCTS p
  where
    (p.PRODUCT_CODE = :new.PRODUCT_CODE);
    
  select
    Sign(Count(*))
  into
    IsFinStore
  from
    FIN_STORES fs
  where
    (fs.STORE_CODE = :new.STORE_CODE);

  if ((ProductClassCode = CommonConsts.pcFinancial) and (IsFinStore <> 1)) or
     ((ProductClassCode <> CommonConsts.pcFinancial) and (IsFinStore = 1)) then
    raise_application_error(-20002, 'Internal assertion: Incompatible Product And Store');
  end if;
end;
/
