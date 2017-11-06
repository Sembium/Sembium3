create or replace trigger tr_THE_DATES_AU_UPDATE_OTHERS
  after update on THE_DATES for each row
begin
  if not StateUtils.InTdfeUpdate then
    raise_application_error(-20000, 'Internal error: THE_DATES should not be edited directly');
  end if;
  
  if (:new.THE_DATE <> :old.THE_DATE) then
    raise_application_error(-20000, 'Internal error: THE_DATES key should not be changed');
  end if;
      
  if (:old.DAYS_OFF <> :new.DAYS_OFF) or
     (:old.WORKDAYS <> :new.WORKDAYS) then
    
    update
      THE_MONTH_DATES tmd
    set
      tmd.DAYS_OFF = tmd.DAYS_OFF + (:new.DAYS_OFF - :old.DAYS_OFF),
      tmd.WORKDAYS = tmd.WORKDAYS + (:new.WORKDAYS - :old.WORKDAYS),
      tmd.OFFICIAL_DAYS_OFF = tmd.OFFICIAL_DAYS_OFF + (:new.OFFICIAL_DAYS_OFF - :old.OFFICIAL_DAYS_OFF),
      tmd.OFFICIAL_WORKDAYS = tmd.OFFICIAL_WORKDAYS + (:new.OFFICIAL_WORKDAYS - :old.OFFICIAL_WORKDAYS)
    where
      (tmd.THE_MONTH_DATE = :new.THE_MONTH_DATE);

    update
      THE_QUARTER_DATES tqd
    set
      tqd.DAYS_OFF = tqd.DAYS_OFF + (:new.DAYS_OFF - :old.DAYS_OFF),
      tqd.WORKDAYS = tqd.WORKDAYS + (:new.WORKDAYS - :old.WORKDAYS),
      tqd.OFFICIAL_DAYS_OFF = tqd.OFFICIAL_DAYS_OFF + (:new.OFFICIAL_DAYS_OFF - :old.OFFICIAL_DAYS_OFF),
      tqd.OFFICIAL_WORKDAYS = tqd.OFFICIAL_WORKDAYS + (:new.OFFICIAL_WORKDAYS - :old.OFFICIAL_WORKDAYS)
    where
      (tqd.THE_QUARTER_DATE = :new.THE_QUARTER_DATE);

    update
      THE_YEAR_DATES tyd
    set
      tyd.DAYS_OFF = tyd.DAYS_OFF + (:new.DAYS_OFF - :old.DAYS_OFF),
      tyd.WORKDAYS = tyd.WORKDAYS + (:new.WORKDAYS - :old.WORKDAYS),
      tyd.OFFICIAL_DAYS_OFF = tyd.OFFICIAL_DAYS_OFF + (:new.OFFICIAL_DAYS_OFF - :old.OFFICIAL_DAYS_OFF),
      tyd.OFFICIAL_WORKDAYS = tyd.OFFICIAL_WORKDAYS + (:new.OFFICIAL_WORKDAYS - :old.OFFICIAL_WORKDAYS)
    where
      (tyd.THE_YEAR_DATE = :new.THE_YEAR_DATE);

    update
      THE_WEEK_DATES twd
    set
      twd.DAYS_OFF = twd.DAYS_OFF + (:new.DAYS_OFF - :old.DAYS_OFF),
      twd.WORKDAYS = twd.WORKDAYS + (:new.WORKDAYS - :old.WORKDAYS),
      twd.OFFICIAL_DAYS_OFF = twd.OFFICIAL_DAYS_OFF + (:new.OFFICIAL_DAYS_OFF - :old.OFFICIAL_DAYS_OFF),
      twd.OFFICIAL_WORKDAYS = twd.OFFICIAL_WORKDAYS + (:new.OFFICIAL_WORKDAYS - :old.OFFICIAL_WORKDAYS)
    where
      (twd.THE_WEEK_DATE = :new.THE_WEEK_DATE);

  end if;
end tr_THE_DATES_AU_UPDATE_OTHERS;
/
