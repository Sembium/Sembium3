create or replace trigger tr_EED_BU_CHECK_EE_DMG_RESLV
  before update of EXCEPT_EVENT_CODE on EXCEPT_EVENT_DAMAGES
  for each row
declare
  IsExceptEventDmgResolved Number;
  HasUnnormalizedAttacks Number;
begin

  select
    Sign(Count(*))
  into
    IsExceptEventDmgResolved
  from
    EXCEPT_EVENTS ee
  where
    (ee.EXCEPT_EVENT_CODE = :new.EXCEPT_EVENT_CODE) and
    (ee.DMG_RESOLVE_EMPLOYEE_CODE is not null);

  if (IsExceptEventDmgResolved = 1) then

    -- narochno prowerqwa samo swoite si
    select
      Sign(Count(*))
    into
      HasUnnormalizedAttacks
    from
      EXCEPT_EVENT_DMG_ATTACKS eeda
    where
      (eeda.EXCEPT_EVENT_DAMAGE_CODE = :new.EXCEPT_EVENT_DAMAGE_CODE) and
      (eeda.NORMALIZE_EMPLOYEE_CODE is null);

    if (HasUnnormalizedAttacks = 1) then
      raise_application_error(-20001, ServerMessages.SEEMustNotBeResolvedId);
    end if;

  end if;

end tr_EED_BU_CHECK_EE_DMG_RESLV;
/
