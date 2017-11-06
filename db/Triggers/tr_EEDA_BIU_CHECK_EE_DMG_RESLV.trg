create or replace trigger tr_EEDA_BIU_CHECK_EE_DMG_RESLV
  before insert or update of EXCEPT_EVENT_DAMAGE_CODE, NORMALIZE_EMPLOYEE_CODE on EXCEPT_EVENT_DMG_ATTACKS
  for each row
declare
  IsExceptEventDmgResolved Number;
begin

  if (:new.NORMALIZE_EMPLOYEE_CODE is null) then

    select
      Sign(Count(*))
    into
      IsExceptEventDmgResolved
    from
      EXCEPT_EVENTS ee,
      EXCEPT_EVENT_DAMAGES eed
    where
      (ee.EXCEPT_EVENT_CODE = eed.EXCEPT_EVENT_CODE) and
      (eed.EXCEPT_EVENT_DAMAGE_CODE = :new.EXCEPT_EVENT_DAMAGE_CODE) and
      (ee.DMG_RESOLVE_EMPLOYEE_CODE is not null);

    if (IsExceptEventDmgResolved = 1) then
      raise_application_error(-20001, ServerMessages.SEEMustNotBeResolvedId);
    end if;

  end if;

end tr_EEDA_BIU_CHECK_EE_DMG_RESLV;
/
