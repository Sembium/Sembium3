create or replace trigger tr_S_BU_CHECK_OTP
  before update of ANNUL_EMPLOYEE_CODE, FINISH_EMPLOYEE_CODE, PRODUCTION_ORDER_TYPE_CODE, SALE_ORDER_TYPE_CODE, PRODUCT_CODE on SALES
  for each row
declare
  OTPMustNotBeClosed Number;
  OTPMustBeAnnuled Number;
  SaleForOTPIsIncorrect Number;
begin

  select
    Sign(Count(*))
  into
    OTPMustNotBeClosed
  from
    ORG_TASK_PROPOSALS otp
  where
    (otp.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
    (otp.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE) and

    (otp.CLOSE_EMPLOYEE_CODE is not null) and
    (:new.FINISH_EMPLOYEE_CODE is null);

  if (OTPMustNotBeClosed = 1) then
    raise_application_error(-20001, 'Internal error: OTP must not be closed if Production Order is not closed');
  end if;


  select
    Sign(Count(*))
  into
    OTPMustBeAnnuled    
  from
    ORG_TASK_PROPOSALS otp
  where
    (otp.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
    (otp.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE) and

    (otp.ANNUL_EMPLOYEE_CODE is null) and
    (:new.ANNUL_EMPLOYEE_CODE is not null);

  if (OTPMustBeAnnuled = 1) then
    raise_application_error(-20000, ServerMessages.SOTPMustBeAnnuledId);
  end if;


  select
    Sign(Count(*))
  into
    SaleForOTPIsIncorrect
  from
    ORG_TASK_PROPOSALS otp
  where
    (otp.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
    (otp.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE) and
    
    (not
      ( (:new.SALE_ORDER_TYPE_CODE = 3) and

        ( ( select
              pot.PROD_ORDER_BASE_TYPE_CODE
            from
              PRODUCTION_ORDER_TYPES pot
            where
              (pot.PRODUCTION_ORDER_TYPE_CODE = :new.PRODUCTION_ORDER_TYPE_CODE)
          ) = CommonConsts.pobtProject
        ) and

        (:new.PRODUCT_CODE = otp.PRODUCT_CODE)
      )
    );

  if (SaleForOTPIsIncorrect = 1) then
    raise_application_error(-20001, ServerMessages.SSaleForOTPIsIncorrectId);
  end if;

end tr_S_BIU_CHECK_OTP;
/
