create or replace trigger tr_OTP_BIU_CHECK_PROD_ORDER
  before insert or update on ORG_TASK_PROPOSALS
  for each row
declare
  OTPCannotBeClosed Number;
  ProdOrderMustNotBeAnnuled Number;
  IsProducionOrderCorrect Number;
begin

  select
    Sign(Count(*))
  into
    OTPCannotBeClosed
  from
    SALES s
  where
    (:new.CLOSE_EMPLOYEE_CODE is not null) and
    (s.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
    (s.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE) and
    (s.FINISH_EMPLOYEE_CODE is null);
      
  if (OTPCannotBeClosed = 1) then
    raise_application_error(-20000, 'Internal error: Cannot close OrganisationTaskProposal whithout closed ProductionOrder');
  end if;


  select
    Sign(Count(*))
  into
    ProdOrderMustNotBeAnnuled
  from
    SALES s
  where
    (:new.ANNUL_EMPLOYEE_CODE is null) and
    
    (s.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
    (s.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE) and
    (s.ANNUL_EMPLOYEE_CODE is not null);

  if (ProdOrderMustNotBeAnnuled = 1) then
    raise_application_error(-20000, 'Internal error: ProductionOrder must not be annuled when OrganisationTaskProposal is not annuled');
  end if;


  if (:new.SALE_OBJECT_BRANCH_CODE is not null) then

    select
      Sign(Count(*))
    into
      IsProducionOrderCorrect
    from
      SALES s,
      PRODUCTION_ORDER_TYPES pot
    where
      (s.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
      (s.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE) and

      (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_TYPE_CODE) and

      (s.SALE_ORDER_TYPE_CODE = 3) and
      (s.PRODUCT_CODE = :new.PRODUCT_CODE) and
      (pot.PROD_ORDER_BASE_TYPE_CODE = CommonConsts.pobtProject);

    if (IsProducionOrderCorrect = 0) then
      raise_application_error(-20000, 'Internal error: Incorrect Production Order');
    end if;

  end if;

end tr_OTP_BIU_CHECK_PROD_ORDER;
/
