create or replace trigger tr_PERSONS_AIU_SYNC_EMPLOYEE
  after insert or update on PERSONS
  for each row
begin
  update
    EMPLOYEES_FOR_EDIT e
  set
    e.FIRST_NAME = :new.FIRST_NAME,
    e.MIDDLE_NAME = :new.MIDDLE_NAME,
    e.LAST_NAME = :new.LAST_NAME,
    e.ABBREV = :new.ABBREV
  where
    (e.COMPANY_CODE = :new.COMPANY_CODE);

  update
    COMPANIES_FOR_EDIT c
  set
    c.COMPANY_NAME = MiscUtils.FormatPersonName(:new.FIRST_NAME, :new.MIDDLE_NAME, :new.LAST_NAME, 50),
    c.I_COMPANY_NAME = MiscUtils.FormatPersonName(:new.I_FIRST_NAME, :new.I_MIDDLE_NAME, :new.I_LAST_NAME, 50),
    c.SHORT_NAME = MiscUtils.FormatPersonName(:new.FIRST_NAME, :new.MIDDLE_NAME, :new.LAST_NAME, 20),
    c.I_SHORT_NAME = MiscUtils.FormatPersonName(:new.I_FIRST_NAME, :new.I_MIDDLE_NAME, :new.I_LAST_NAME, 20)
  where
    (c.COMPANY_CODE = :new.COMPANY_CODE);
end;
/
