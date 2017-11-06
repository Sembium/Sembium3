create or replace trigger tr_OTP_BU_CHECK_EXCEPT_EVENTS
  before update of ANNUL_EMPLOYEE_CODE on ORG_TASK_PROPOSALS
  for each row
declare
  OTPHasNotAnnuledExceptEvents Number;
begin

  if (:new.ANNUL_EMPLOYEE_CODE is not null) then

    select
      Sign(Count(*))
    into
      OTPHasNotAnnuledExceptEvents
    from
      EXCEPT_EVENTS ee
    where
      (ee.ORG_TASK_PROPOSAL_CODE = :new.ORG_TASK_PROPOSAL_CODE) and
      (ee.ANNUL_EMPLOYEE_CODE is null);
      
    if (OTPHasNotAnnuledExceptEvents = 1) then
      raise_application_error(-20002, ServerMessages.SOTPExEventsMustBeAnnuledId);
    end if;
  
  end if;

end tr_OTP_BU_CHECK_EXCEPT_EVENTS;
/
