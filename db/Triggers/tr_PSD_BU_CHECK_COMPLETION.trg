create or replace trigger tr_PSD_BU_CHECK_COMPLETION
  before update on PLANNED_STORE_DEALS
  for each row
begin

  if not StateUtils.InSdUpdate and
     (:new.COMPLETED_QUANTITY <> :old.COMPLETED_QUANTITY) then

    raise_application_error(-20000, 'Internal error: psd.COMPLETED_QUANTITY should not be changed');

  end if;

end tr_PSD_BU_CHECK_COMPLETION;
/
