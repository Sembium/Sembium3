create or replace trigger tr_MLLC_AD_UPD_TIMESTAMP
  after delete on MATERIAL_LIST_LINE_CHANGES
  for each row
begin
  if (:old.REPLY_ACCEPT_EMPLOYEE_CODE is null) then

    update
      INTERNAL_VALUES iv
    set
      iv.LATEST_MLLC_TIMESTAMP = ContextNow
    where
      (iv.CODE = 1)
    ;

  end if;
  
end tr_MLLC_AD_UPD_TIMESTAMP;
/
