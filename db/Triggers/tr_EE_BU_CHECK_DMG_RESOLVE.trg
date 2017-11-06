create or replace trigger tr_EE_BU_CHECK_DMG_RESOLVE
  before update of DMG_RESOLVE_EMPLOYEE_CODE on EXCEPT_EVENTS
  for each row
declare
  HasUnnormalizedAttacks Number;
begin

  if (:old.DMG_RESOLVE_EMPLOYEE_CODE is null) and (:new.DMG_RESOLVE_EMPLOYEE_CODE is not null) then

    select
      Sign(Count(*))
    into
      HasUnnormalizedAttacks
    from
      EXCEPT_EVENT_DMG_ATTACKS eeda,
      EXCEPT_EVENT_DAMAGES eed
    where
      (eeda.EXCEPT_EVENT_DAMAGE_CODE = eed.EXCEPT_EVENT_DAMAGE_CODE) and
      (eed.EXCEPT_EVENT_CODE = :new.EXCEPT_EVENT_CODE) and
      (eeda.NORMALIZE_EMPLOYEE_CODE is null);

    if (HasUnnormalizedAttacks = 1) then
      raise_application_error(-20001, ServerMessages.SExceptEventHasUnnormAttacksId);
    end if;

  end if;

end tr_EE_BU_CHECK_DMG_RESOLVE;
/
