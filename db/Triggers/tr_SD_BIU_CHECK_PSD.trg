create or replace trigger tr_SD_BIU_CHECK_PSD
  before insert or update of
    BND_PROCESS_CODE,
    PLANNED_STORE_DEAL_BRANCH_CODE,
    PLANNED_STORE_DEAL_CODE
  on STORE_DEALS
  for each row
declare
  CanHaveStoreDealForThisProcess Number;
  CanHavePSDForThisProcess Number;
begin

  select
    Sign(Count(*))
  into
    CanHaveStoreDealForThisProcess
  from
    PROCESS_STORE_DEAL_LEVELS psdl
  where
    (psdl.PROCESS_CODE = :new.BND_PROCESS_CODE) and
    (psdl.STORE_DEAL_LEVEL_CODE = 1);  -- otchetno

  if (CanHaveStoreDealForThisProcess = 0) then
    raise_application_error(-20000, 'Internal assertion: Cannot insert STORE_DEAL for this BND_PROCESS');
  end if;

  if (:new.PLANNED_STORE_DEAL_BRANCH_CODE is null) then

    select
      Sign(Count(*))
    into
      CanHavePSDForThisProcess
    from
      PROCESS_STORE_DEAL_LEVELS psdl
    where
      (psdl.PROCESS_CODE = :new.BND_PROCESS_CODE) and
      (psdl.STORE_DEAL_LEVEL_CODE = 2);  -- planowo

    if (CanHavePSDForThisProcess = 1) then
      raise_application_error(-20002,ServerMessages.SStoreDealRequiresPSDId);
    end if;

  end if;

end tr_SD_BIU_CHECK_PSD;
/
