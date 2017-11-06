create or replace trigger tr_DETPFE_IU
  instead of update on DISC_EVENT_TYPE_PER_FOR_EDIT
  for each row
declare
  IntersectCount Number;
begin

  if not StateUtils.InDetpfeUpdate then
    StateUtils.BeginDetpfeUpdate;
    begin

      if (:new.DISC_EVENT_TYPE_PERIOD_CODE <> :old.DISC_EVENT_TYPE_PERIOD_CODE) then
        raise_application_error(-20000, 'Internal error: DISC_EVENT_TYPE_PERIODS key should not be changed');
      end if;

      if (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
         (:new.END_DATE <> :old.END_DATE) or
         (:new.DISC_EVENT_TYPE_CODE <> :old.DISC_EVENT_TYPE_CODE) then

        select
          Count(*)
        into
          IntersectCount
        from
          DISC_EVENT_TYPE_PERIODS detp
        where
          (detp.DISC_EVENT_TYPE_PERIOD_CODE <> :old.DISC_EVENT_TYPE_PERIOD_CODE) and
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

      end if;
    
      update
        DISC_EVENT_TYPE_PERIODS detp
      set
        detp.DISC_EVENT_TYPE_CODE = :new.DISC_EVENT_TYPE_CODE,
        detp.BEGIN_DATE = :new.BEGIN_DATE,
        detp.END_DATE = :new.END_DATE,
        detp.ACTIVE_DATE_UNIT_COUNT = :new.ACTIVE_DATE_UNIT_COUNT,
        detp.ACTIVE_DATE_UNIT_CODE = :new.ACTIVE_DATE_UNIT_CODE,
        detp.RATING = :new.RATING
      where
        (detp.DISC_EVENT_TYPE_PERIOD_CODE = :old.DISC_EVENT_TYPE_PERIOD_CODE);
        
    exception
      when others then
        StateUtils.EndDetpfeUpdate;
        raise;
    end;
    StateUtils.EndDetpfeUpdate;
  end if;
    
end tr_DETPFE_IU;
/
