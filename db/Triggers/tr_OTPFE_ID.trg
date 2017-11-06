create or replace trigger tr_OTPFE_ID
  instead of delete on ORG_TASK_PROPOSALS_FOR_EDIT  
  for each row
begin

  if not StateUtils.InOtpfeUpdate then
    StateUtils.BeginOtpfeUpdate;
    begin
    
      delete
        ORG_TASK_PROPOSALS otp
      where
        (otp.ORG_TASK_PROPOSAL_CODE = :old.ORG_TASK_PROPOSAL_CODE);
        
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) then
        
        delete
          DOCS_FOR_EDIT dfe
        where
          (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
          (dfe.DOC_CODE = :old.DOC_CODE);
         
      end if;
      
    exception
      when others then
        StateUtils.EndOtpfeUpdate;
        raise;
    end;
    StateUtils.EndOtpfeUpdate;
  end if;
  
end tr_OTPFE_ID;
/
