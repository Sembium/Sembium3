create or replace trigger tr_DETPFE_II
  instead of insert on DISC_EVENT_TYPE_PER_FOR_EDIT
  for each row
declare
  IntersectCount Number;
begin

  if not StateUtils.InDetpfeUpdate then
    StateUtils.BeginDetpfeUpdate;
    begin
    
      select
        Count(*)
      into
        IntersectCount
      from
        DISC_EVENT_TYPE_PERIODS detp
      where
        (detp.DISC_EVENT_TYPE_CODE = :new.DISC_EVENT_TYPE_CODE) and
        ( DateTimeUtils.DatePeriodIntersectLength(
            detp.BEGIN_DATE, detp.END_DATE,
            :new.BEGIN_DATE, :new.END_DATE
          ) > 0
        )
      ;
    
      if (IntersectCount > 0) then
        raise_application_error(-20002,
          ServerMessages.SCrossedDiscEventTypePeriodId || '(' ||
          'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
          'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
        );
      end if;

      insert into DISC_EVENT_TYPE_PERIODS
      (
        DISC_EVENT_TYPE_PERIOD_CODE,
        DISC_EVENT_TYPE_CODE,
        BEGIN_DATE,
        END_DATE,
        ACTIVE_DATE_UNIT_COUNT,
        ACTIVE_DATE_UNIT_CODE,
        RATING
      )
      values
      (
        :new.DISC_EVENT_TYPE_PERIOD_CODE,
        :new.DISC_EVENT_TYPE_CODE,
        :new.BEGIN_DATE,
        :new.END_DATE,
        :new.ACTIVE_DATE_UNIT_COUNT,
        :new.ACTIVE_DATE_UNIT_CODE,
        :new.RATING
      );
    
    exception
      when others then
        StateUtils.EndDetpfeUpdate;
        raise;
    end;
    StateUtils.EndDetpfeUpdate;
  end if;

end tr_DETPFE_II;
/
