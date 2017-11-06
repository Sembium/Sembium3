create or replace trigger tr_SFMFE_ID
  instead of delete on SPEC_FIN_MODELS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSfmfeUpdate then
    StateUtils.BeginSfmfeUpdate;
    begin
    
      delete
        SPEC_FIN_MODELS sfm
      where
        (sfm.SPEC_FIN_MODEL_CODE = :old.SPEC_FIN_MODEL_CODE);
        
    exception
      when others then
        StateUtils.EndSfmfeUpdate;
        raise;
    end;
    StateUtils.EndSfmfeUpdate;
  end if;
  
end tr_SFMFE_ID;
/
