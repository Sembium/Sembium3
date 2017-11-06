create or replace trigger tr_DEPT_AU_CHECK_IS_RECURRENT
  after update of IS_RECURRENT on DEPTS
  for each row
declare
  IncorrectOccupations Number;
begin
  if (:old.IS_RECURRENT <> :new.IS_RECURRENT) then

    if (:new.IS_RECURRENT = 1) then
    
      select
        Sign(Count(*))
      into
        IncorrectOccupations
      from
        OCCUPATIONS o
      where
        (o.DEPT_CODE = :new.DEPT_CODE) and
        (o.IS_MAIN = 1)
      ;
    
      if (IncorrectOccupations = 1) then
        raise_application_error(-20002, ServerMessages.SRecurrentDeptWithMainOccsId);
      end if;
    
    end if;

  end if;
end tr_DEPT_AU_CHECK_IS_RECURRENT;
/
