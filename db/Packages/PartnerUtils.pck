create or replace package PartnerUtils is

  procedure CheckParRelPeriods(PartnerCode in Number, BorderRelTypeCode in Number);

end PartnerUtils;
/
create or replace package body PartnerUtils is

  procedure CheckParRelPeriods(PartnerCode in Number, BorderRelTypeCode in Number) is
    WrongConcretePRPersExist Number;
    IncorrectBeginDate Date;
    IncorrectEndDate Date;
  begin
    if (StateUtils.SkipPRPerCheckPartnerCode is null) or (PartnerCode <> StateUtils.SkipPRPerCheckPartnerCode) then

      select
        Min(prp2.BEGIN_DATE) keep (dense_rank first order by prp2.BEGIN_DATE, prp2.PAR_REL_PERIOD_CODE),
        Min(prp2.END_DATE) keep (dense_rank first order by prp2.BEGIN_DATE, prp2.PAR_REL_PERIOD_CODE)
      into
        IncorrectBeginDate,
        IncorrectEndDate 
      from
        PAR_REL_PERIODS prp1,
        PAR_REL_PERIODS prp2
      where
        (prp1.PARTNER_CODE = PartnerCode) and
        (prp1.BORDER_REL_TYPE_CODE = BorderRelTypeCode) and

        (prp2.PARTNER_CODE = PartnerCode) and
        (prp2.BORDER_REL_TYPE_CODE = BorderRelTypeCode) and

        (prp1.PAR_REL_PERIOD_CODE <> prp2.PAR_REL_PERIOD_CODE) and

        (prp1.BEGIN_DATE <= prp2.END_DATE) and
        (prp1.END_DATE >= prp2.BEGIN_DATE);

      if (IncorrectBeginDate is not null) and (IncorrectEndDate is not null) then
        raise_application_error(-20002,
          ServerMessages.SCrossedParRelPeriodPeriodId || '(' ||
          'BeginDate:d=' || MessageUtils.InternalDateToStr(IncorrectBeginDate) || ', ' ||
          'EndDate:d=' || MessageUtils.InternalDateToStr(IncorrectEndDate) || ')'
        );
      end if;


      select
        Sign(Count(*))
      into
        WrongConcretePRPersExist
      from
        PAR_RELS pr,
        PAR_REL_PERIODS prp
      where
        (pr.PARTNER_CODE = prp.PARTNER_CODE) and
        (pr.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) and

        (pr.COMMON_PARTNER_CODE = PartnerCode) and
        ( ( select
              Count(*)
            from
              PAR_REL_PERIODS prp2
            where
              (prp2.PARTNER_CODE = PartnerCode) and
              (prp2.BORDER_REL_TYPE_CODE = BorderRelTypeCode) and
              (prp2.BEGIN_DATE <= prp.BEGIN_DATE) and
              (prp2.END_DATE >= prp.END_DATE)
          ) <> 1
        );

      if (WrongConcretePRPersExist = 1) then
        raise_application_error(-20001, ServerMessages.SWrongConcretePRPersExistId);
      end if;


      select
        Min(prpp.BEGIN_DATE) keep (dense_rank first order by prpp.BEGIN_DATE, prpp.PAR_REL_PRODUCT_PERIOD_CODE),
        Min(prpp.END_DATE) keep (dense_rank first order by prpp.BEGIN_DATE, prpp.PAR_REL_PRODUCT_PERIOD_CODE)
      into
        IncorrectBeginDate,
        IncorrectEndDate 
      from
        PAR_REL_PRODUCT_PERIODS prpp
      where
        (prpp.PARTNER_CODE = PartnerCode) and
        (prpp.BORDER_REL_TYPE_CODE = BorderRelTypeCode) and
        (not exists
          ( select
              1
            from
              PAR_REL_PERIODS prp
            where
              (prp.PARTNER_CODE = prpp.PARTNER_CODE) and
              (prp.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) and
              (prp.BEGIN_DATE <= prpp.BEGIN_DATE) and
              (prpp.END_DATE <= prp.END_DATE)          
          )
        );
        
      if (IncorrectBeginDate is not null) and (IncorrectEndDate is not null) then
        raise_application_error(-20002,
          ServerMessages.SIncorrectParRelProdPeriodId || '(' ||
          'BeginDate:d=' || MessageUtils.InternalDateToStr(IncorrectBeginDate) || ', ' ||
          'EndDate:d=' || MessageUtils.InternalDateToStr(IncorrectEndDate) || ')'
        );
      end if;

    end if;
  end;

end PartnerUtils;
/
