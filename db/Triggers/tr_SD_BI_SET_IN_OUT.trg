create or replace trigger tr_SD_BI_SET_IN_OUT
  before insert on STORE_DEALS
  for each row
declare
  psd_in_out Number;
  psd_bnd_obj_branch_code Number;
  psd_bnd_obj_code Number;
begin

  select
    sdt.IN_OUT
  into
    :new.IN_OUT
  from
    STORE_DEAL_TYPES sdt
  where
    (sdt.STORE_DEAL_TYPE_CODE = :new.STORE_DEAL_TYPE_CODE);
    
  if (:new.PLANNED_STORE_DEAL_BRANCH_CODE is not null) and
     (:new.PLANNED_STORE_DEAL_CODE is not null) then
     
    select
      psd.IN_OUT,
      psd.BND_PROCESS_OBJECT_BRANCH_CODE,
      psd.BND_PROCESS_OBJECT_CODE
    into
      psd_in_out,
      psd_bnd_obj_branch_code,
      psd_bnd_obj_code
    from
      PLANNED_STORE_DEALS psd
    where
      (psd.PLANNED_STORE_DEAL_BRANCH_CODE = :new.PLANNED_STORE_DEAL_BRANCH_CODE) and
      (psd.PLANNED_STORE_DEAL_CODE = :new.PLANNED_STORE_DEAL_CODE);

    if (:new.IN_OUT <> psd_in_out) or
       (:new.BND_PROCESS_OBJECT_BRANCH_CODE <> psd_bnd_obj_branch_code) or
       (:new.BND_PROCESS_OBJECT_CODE <> psd_bnd_obj_code) then
      raise_application_error(-20000, 'Internal error: (sd.IN_OUT, sd.BND_PROCESS_OBJECT) must be equal to coresponding (psd.IN_OUT, psd.BND_PROCESS_OBJECT)');
    end if;
      
  end if;

end tr_SD_BI_SET_IN_OUT;
/
