create or replace trigger tr_BOIO_AU_UPDATE_FIN_ORDER
  after update on BOI_ORDERS  
  for each row
begin

  update
    FIN_ORDERS_FOR_EDIT fo
  set
    fo.PARTNER_CODE = Decode(:new.COMPANY_CODE, :old.COMPANY_CODE, fo.PARTNER_CODE, :new.COMPANY_CODE),
    fo.BASE_DATE = Coalesce(:new.ACCOUNT_DATE, :new.PLAN_DATE),
    fo.BASE_FINANCIAL_PRODUCT_CODE =
      ( select
          c.PRODUCT_CODE
        from
          CURRENCIES c
        where
          (c.CURRENCY_CODE = :new.CURRENCY_CODE)
      ),
    fo.BASE_QUANTITY = Coalesce(:new.ACCOUNT_TOTAL_PRICE, :new.PLAN_TOTAL_PRICE),
    fo.DOCUMENT_IDENTIFIER = :new.DOCUMENT_ID_TEXT,
    fo.DOCUMENT_DATE = Nvl2(:new.DOCUMENT_ID_TEXT, :new.ACCOUNT_DATE, null),
    fo.ANNUL_EMPLOYEE_CODE = 
      case
        when (fo.ANNUL_EMPLOYEE_CODE is null) and
             (:new.ANNUL_EMPLOYEE_CODE is null) and
             (:old.IS_CANCELED = 0) and
             (:new.IS_CANCELED = 1) then
          LoginContext.UserCode   
        else
          Coalesce(fo.ANNUL_EMPLOYEE_CODE, :new.ANNUL_EMPLOYEE_CODE)
      end,
    fo.ANNUL_DATE = 
      case
        when (fo.ANNUL_EMPLOYEE_CODE is null) and
             (:new.ANNUL_EMPLOYEE_CODE is null) and
             (:old.IS_CANCELED = 0) and
             (:new.IS_CANCELED = 1) then
          ContextDate
        else
          Coalesce(fo.ANNUL_DATE, :new.ANNUL_DATE)
      end,
    fo.ANNUL_TIME = 
      case
        when (fo.ANNUL_EMPLOYEE_CODE is null) and
             (:new.ANNUL_EMPLOYEE_CODE is null) and
             (:old.IS_CANCELED = 0) and
             (:new.IS_CANCELED = 1) then
          ContextTime
        else
          Coalesce(fo.ANNUL_TIME, :new.ANNUL_TIME)
      end,
    fo.BASE_DATA_CHANGED = Nvl2(:new.ANNUL_EMPLOYEE_CODE, 1, fo.BASE_DATA_CHANGED)
  where
    (fo.BND_PROCESS_OBJECT_BRANCH_CODE = :new.BOI_ORDER_OBJECT_BRANCH_CODE) and
    (fo.BND_PROCESS_OBJECT_CODE = :new.BOI_ORDER_OBJECT_CODE) and
    (fo.ANNUL_EMPLOYEE_CODE is null);

end tr_BOIO_AU_UPDATE_FIN_ORDER;
/
