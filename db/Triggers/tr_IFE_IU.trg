create or replace trigger tr_Ife_IU
  instead of update on INVOICES_FOR_EDIT
  for each row
begin

  if not StateUtils.InIfeUpdate then
    StateUtils.BeginIfeUpdate;
    begin

      if (:new.INVOICE_BRANCH_CODE <> :old.INVOICE_BRANCH_CODE) or
        (:new.INVOICE_CODE <> :old.INVOICE_CODE) then
        raise_application_error(-20000, 'Internal error: INVOICES key should not be changed');
      end if;

      update
        INVOICES i
      set
        i.IS_PROFORM_INVOICE = :new.IS_PROFORM_INVOICE, 
        i.INVOICE_NO = :new.INVOICE_NO, 
        i.INVOICE_TYPE_CODE = :new.INVOICE_TYPE_CODE, 
        i.INVOICE_DATE = :new.INVOICE_DATE, 
        i.SELLER_COMPANY_CODE = :new.SELLER_COMPANY_CODE, 
        i.SELLER_NAME = :new.SELLER_NAME, 
        i.SELLER_CITY = :new.SELLER_CITY, 
        i.SELLER_ADDRESS = :new.SELLER_ADDRESS, 
        i.SELLER_MOL_NAME = :new.SELLER_MOL_NAME, 
        i.SELLER_TAX_NO = :new.SELLER_TAX_NO, 
        i.SELLER_BULSTAT_NO = :new.SELLER_BULSTAT_NO, 
        i.BUYER_COMPANY_CODE = :new.BUYER_COMPANY_CODE, 
        i.BUYER_NAME = :new.BUYER_NAME, 
        i.BUYER_CITY = :new.BUYER_CITY, 
        i.BUYER_ADDRESS = :new.BUYER_ADDRESS, 
        i.BUYER_MOL_NAME = :new.BUYER_MOL_NAME, 
        i.BUYER_TAX_NO = :new.BUYER_TAX_NO, 
        i.BUYER_BULSTAT_NO = :new.BUYER_BULSTAT_NO, 
        i.SELLER_PERSON_NAME = :new.SELLER_PERSON_NAME, 
        i.BUYER_PERSON_NAME = :new.BUYER_PERSON_NAME, 
        i.CURRENCY_CODE = :new.CURRENCY_CODE, 
        i.PAYMENT_TYPE_CODE = :new.PAYMENT_TYPE_CODE, 
        i.BANK_COMPANY_CODE = :new.BANK_COMPANY_CODE, 
        i.ACCOUNT = :new.ACCOUNT, 
        i.VAT_PERCENT = :new.VAT_PERCENT, 
        i.NOTES = :new.NOTES, 
        i.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE, 
        i.CREATE_DATE = :new.CREATE_DATE, 
        i.CREATE_TIME = :new.CREATE_TIME, 
        i.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE, 
        i.CHANGE_DATE = :new.CHANGE_DATE, 
        i.CHANGE_TIME = :new.CHANGE_TIME, 
        i.STORNO_EMPLOYEE_CODE = :new.STORNO_EMPLOYEE_CODE, 
        i.STORNO_DATE = :new.STORNO_DATE, 
        i.STORNO_TIME = :new.STORNO_TIME, 
        i.INVOICE_PLACE = :new.INVOICE_PLACE, 
        i.SELLER_PERSON_NAME_SO = :new.SELLER_PERSON_NAME_SO, 
        i.BUYER_PERSON_NAME_SO = :new.BUYER_PERSON_NAME_SO, 
        i.VAT_BANK_COMPANY_CODE = :new.VAT_BANK_COMPANY_CODE, 
        i.VAT_ACCOUNT = :new.VAT_ACCOUNT, 
        i.IS_PAID = :new.IS_PAID, 
        i.IS_VAT_PAID = :new.IS_VAT_PAID, 
        i.SELLER_BULSTAT = :new.SELLER_BULSTAT, 
        i.BUYER_BULSTAT = :new.BUYER_BULSTAT, 
        i.SELLER_BULSTAT_EX = :new.SELLER_BULSTAT_EX, 
        i.BUYER_BULSTAT_EX = :new.BUYER_BULSTAT_EX, 
        i.SELLER_FIRST_NAME = :new.SELLER_FIRST_NAME, 
        i.SELLER_MIDDLE_NAME = :new.SELLER_MIDDLE_NAME, 
        i.SELLER_LAST_NAME = :new.SELLER_LAST_NAME, 
        i.SELLER_EGN = :new.SELLER_EGN, 
        i.SELLER_IS_PERSON = :new.SELLER_IS_PERSON, 
        i.BUYER_FIRST_NAME = :new.BUYER_FIRST_NAME, 
        i.BUYER_MIDDLE_NAME = :new.BUYER_MIDDLE_NAME, 
        i.BUYER_LAST_NAME = :new.BUYER_LAST_NAME, 
        i.BUYER_EGN = :new.BUYER_EGN, 
        i.BUYER_IS_PERSON = :new.BUYER_IS_PERSON, 
        i.ACCOUNT_CODE = :new.ACCOUNT_CODE, 
        i.IBAN = :new.IBAN, 
        i.VAT_ACCOUNT_CODE = :new.VAT_ACCOUNT_CODE, 
        i.VAT_IBAN = :new.VAT_IBAN, 
        i.EVENT_DATE = :new.EVENT_DATE, 
        i.SELLER_VAT_REGISTERED = :new.SELLER_VAT_REGISTERED, 
        i.BUYER_VAT_REGISTERED = :new.BUYER_VAT_REGISTERED, 
        i.INVOICE_VAT_TYPE_CODE = :new.INVOICE_VAT_TYPE_CODE, 
        i.INVOICE_RANGE_VERSION_NO = :new.INVOICE_RANGE_VERSION_NO, 
        i.INVOICE_RANGE_TYPE_VERSION_NO = :new.INVOICE_RANGE_TYPE_VERSION_NO, 
        i.BUYER_VAT_NO = :new.BUYER_VAT_NO, 
        i.SELLER_VAT_NO = :new.SELLER_VAT_NO, 
        i.SELLER_OR_BUYER_CODE = :new.SELLER_OR_BUYER_CODE, 
        i.APPROVE_EMPLOYEE_CODE = :new.APPROVE_EMPLOYEE_CODE, 
        i.APPROVE_DATE = :new.APPROVE_DATE, 
        i.APPROVE_TIME = :new.APPROVE_TIME, 
        i.SELLER_I_NAME = :new.SELLER_I_NAME, 
        i.SELLER_I_CITY = :new.SELLER_I_CITY, 
        i.SELLER_I_ADDRESS = :new.SELLER_I_ADDRESS, 
        i.SELLER_I_FIRST_NAME = :new.SELLER_I_FIRST_NAME, 
        i.SELLER_I_MIDDLE_NAME = :new.SELLER_I_MIDDLE_NAME, 
        i.SELLER_I_LAST_NAME = :new.SELLER_I_LAST_NAME, 
        i.BUYER_I_NAME = :new.BUYER_I_NAME, 
        i.BUYER_I_CITY = :new.BUYER_I_CITY, 
        i.BUYER_I_ADDRESS = :new.BUYER_I_ADDRESS, 
        i.BUYER_I_FIRST_NAME = :new.BUYER_I_FIRST_NAME, 
        i.BUYER_I_MIDDLE_NAME = :new.BUYER_I_MIDDLE_NAME, 
        i.BUYER_I_LAST_NAME = :new.BUYER_I_LAST_NAME, 
        i.VAT_REASON_CODE = :new.VAT_REASON_CODE, 
        i.RECEIVER_COMPANY_CODE = :new.RECEIVER_COMPANY_CODE, 
        i.RECEIVER_NAME = :new.RECEIVER_NAME, 
        i.RECEIVER_I_NAME = :new.RECEIVER_I_NAME, 
        i.RECEIVER_ADDRESS = :new.RECEIVER_ADDRESS, 
        i.RECEIVER_I_ADDRESS = :new.RECEIVER_I_ADDRESS, 
        i.SENDER_COMPANY_CODE = :new.SENDER_COMPANY_CODE, 
        i.SENDER_NAME = :new.SENDER_NAME, 
        i.SENDER_I_NAME = :new.SENDER_I_NAME, 
        i.SENDER_ADDRESS = :new.SENDER_ADDRESS, 
        i.SENDER_I_ADDRESS = :new.SENDER_I_ADDRESS, 
        i.INVOICE_I_PLACE = :new.INVOICE_I_PLACE, 
        i.BUYER_PERSON_I_NAME = :new.BUYER_PERSON_I_NAME, 
        i.SELLER_PERSON_I_NAME = :new.SELLER_PERSON_I_NAME, 
        i.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE, 
        i.DOC_CODE = :new.DOC_CODE 
      where
        (i.INVOICE_BRANCH_CODE = :old.INVOICE_BRANCH_CODE) and
        (i.INVOICE_CODE = :old.INVOICE_CODE);

    exception
      when others then
        StateUtils.EndIfeUpdate;
        raise;
    end;
    StateUtils.EndIfeUpdate;
  end if;

end;
/
