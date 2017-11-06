create or replace trigger tr_FS_BD_CHECK_ASD
  before delete on FIN_STORES  
  for each row
declare
  FinancialAsdExists Number;
begin
  select
    Sign(Count(*))
  into
    FinancialAsdExists
  from
    AGGR_STORE_DEALS asd,
    PRODUCTS p
  where
    (asd.STORE_CODE = :old.STORE_CODE) and
    (asd.PRODUCT_CODE = p.PRODUCT_CODE) and
    (p.PRODUCT_CLASS_CODE = CommonConsts.pcFinancial);
    
  if (FinancialAsdExists = 1) then
    raise_application_error(-20002, ServerMessages.SCantDeleteFinStoreId);
  end if;
    
end tr_FS_BD_CHECK_ASD;
/
