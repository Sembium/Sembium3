create or replace trigger tr_PRPPMFE_ID
  instead of delete on PRPER_PRICE_MODIFIERS_FOR_EDIT
  for each row
declare
  PrpBeginDate Date;
  PrpEndDate Date;
begin

  if not StateUtils.InPrppmfeUpdate then
    StateUtils.BeginPrppmfeUpdate;
    begin

      delete
        PRPER_PRICE_MODIFIERS prppm
      where
        (prppm.PRPER_PRICE_MODIFIER_CODE = :old.PRPER_PRICE_MODIFIER_CODE);

      -- update old related PAR_REL_PRODUCT_PERS
      select
        prp.BEGIN_DATE,
        prp.END_DATE
      into
        PrpBeginDate,
        PrpEndDate
      from
        PAR_REL_PERIODS prp
      where
        (prp.PARTNER_CODE = :old.PARTNER_CODE) and
        (prp.BORDER_REL_TYPE_CODE = :old.BORDER_REL_TYPE_CODE) and
        (prp.PAR_REL_PERIOD_CODE = :old.PAR_REL_PERIOD_CODE);

      update
        PAR_REL_PRODUCT_PERS_FOR_EDIT prpp
      set
        prpp.BEGIN_DATE = prpp.BEGIN_DATE
      where
        ( (prpp.PARTNER_CODE = :old.PARTNER_CODE) or
          exists(
            select
              1
            from
              PAR_RELS pr
            where
              (pr.PARTNER_CODE = prpp.PARTNER_CODE) and
              (pr.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) and
              (pr.COMMON_PARTNER_CODE = :old.PARTNER_CODE)
          ) 
        ) and
        (prpp.BORDER_REL_TYPE_CODE = :old.BORDER_REL_TYPE_CODE) and
        (prpp.BEGIN_DATE between PrpBeginDate and PrpEndDate);      

    exception
      when others then
        StateUtils.EndPrppmfeUpdate;
        raise;
    end;
    StateUtils.EndPrppmfeUpdate;
  end if;

end tr_PRPPMFE_ID;
/
