create or replace trigger tr_PSD_BI_CHECK_COMPLETION
  before insert on PLANNED_STORE_DEALS
  for each row
begin

  if (:new.COMPLETED_QUANTITY is not null) and
     (:new.COMPLETED_QUANTITY <> 0) then

    raise_application_error(-20000, 'Internal error: psd.COMPLETED_QUANTITY should not have non-zero value on insert');

  end if;

end tr_PSD_BI_CHECK_COMPLETION;
/
