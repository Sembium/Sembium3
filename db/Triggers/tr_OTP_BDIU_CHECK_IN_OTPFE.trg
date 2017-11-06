create or replace trigger tr_OTP_BDIU_CHECK_IN_OTPFE
  before delete or insert or update on ORG_TASK_PROPOSALS
  for each row
begin

  if not StateUtils.InOtpfeUpdate then
    raise_application_error(-20000, 'Internal error: ORG_TASK_PROPOSALS should not be edited directly');
  end if;
  
end tr_OTP_BDIU_CHECK_IN_OTPFE;
/
