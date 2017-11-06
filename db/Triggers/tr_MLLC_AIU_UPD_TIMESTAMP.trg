create or replace trigger tr_MLLC_AIU_UPD_TIMESTAMP
  after insert or update on MATERIAL_LIST_LINE_CHANGES
  for each row
begin
  if not StateUtils.InMllUpdate then

    update
      INTERNAL_VALUES iv
    set
      iv.LATEST_MLLC_TIMESTAMP = ContextNow
    where
      (iv.CODE = 1)
    ;

  end if;
  
end tr_MLLC_AIU_UPD_TIMESTAMP;
/
