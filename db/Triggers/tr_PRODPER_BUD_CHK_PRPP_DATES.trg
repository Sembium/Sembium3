create or replace trigger tr_PRODPER_BUD_CHK_PRPP_DATES
  before update or delete on PRODUCT_PERIODS  
  for each row
declare
  NewBeginDate Date := null;
  NewEndDate Date := null;
  IncorrectBeginDate Date;
  IncorrectEndDate Date;
begin
  
  if deleting then
    NewBeginDate:= :old.END_DATE + 1;
    NewEndDate:= :old.END_DATE + 2;
  end if;
  
  if updating and
     ( (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
       (:new.END_DATE <> :old.END_DATE) ) then
    NewBeginDate:= :new.BEGIN_DATE;
    NewEndDate:= :new.END_DATE;
  end if;
  
  if (:old.PRODUCT_CODE <> StateUtils.SkipPeriodChecksProductCode) and
     (NewBeginDate is not null) and (NewEndDate is not null) then
  
    select
      Min(prpp.BEGIN_DATE) keep (dense_rank first order by prpp.BEGIN_DATE, prpp.PAR_REL_PRODUCT_PERIOD_CODE),
      Min(prpp.END_DATE) keep (dense_rank first order by prpp.BEGIN_DATE, prpp.PAR_REL_PRODUCT_PERIOD_CODE)
    into
      IncorrectBeginDate,
      IncorrectEndDate 
    from
      PAR_REL_PRODUCT_PERIODS prpp
    where
      (prpp.PRODUCT_CODE = :old.PRODUCT_CODE) and
      (:old.BEGIN_DATE <= prpp.BEGIN_DATE) and
      (prpp.END_DATE <= :old.END_DATE) and
      ( (NewBeginDate > prpp.BEGIN_DATE) or
        (prpp.END_DATE > NewEndDate) );
  
    if (IncorrectBeginDate is not null) and (IncorrectEndDate is not null) then
      raise_application_error(-20002,
        ServerMessages.SIncorrectParRelProdPeriodId || '(' ||
        'BeginDate:d=' || MessageUtils.InternalDateToStr(IncorrectBeginDate) || ', ' ||
        'EndDate:d=' || MessageUtils.InternalDateToStr(IncorrectEndDate) || ')'
      );
    end if;
  
  end if;
  
end tr_PRODPER_BUD_CHK_PRPP_DATES;
/
