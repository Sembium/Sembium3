create or replace trigger tr_PARRELSFE_IU
  instead of update on PAR_RELS_FOR_EDIT
  for each row
declare
  WrongConcretePRPersExist Number;
begin

  if not StateUtils.InParrelsfeUpdate then
    StateUtils.BeginParrelsfeUpdate;
    begin

      if (:new.PARTNER_CODE <> :old.PARTNER_CODE) or
         (:new.BORDER_REL_TYPE_CODE <> :old.BORDER_REL_TYPE_CODE) then
        raise_application_error(-20000, 'Internal error: PAR_RELS key should not be changed');
      end if;

      if ( ( (:old.COMMON_PARTNER_CODE is null) and
             (:new.COMMON_PARTNER_CODE is not null)
           ) or
           (:old.COMMON_PARTNER_CODE <> :new.COMMON_PARTNER_CODE)
         ) then

          select
            Sign(Count(*))
          into
            WrongConcretePRPersExist
          from
            PAR_REL_PERIODS prp
          where
            (prp.PARTNER_CODE = :new.PARTNER_CODE) and
            (prp.BORDER_REL_TYPE_CODE = :new.BORDER_REL_TYPE_CODE) and

            ( ( select
                  Count(*)
                from
                  PAR_REL_PERIODS prp2
                where
                  (prp2.PARTNER_CODE = :new.COMMON_PARTNER_CODE) and
                  (prp2.BORDER_REL_TYPE_CODE = :new.BORDER_REL_TYPE_CODE) and
                  (prp2.BEGIN_DATE <= prp.BEGIN_DATE) and
                  (prp2.END_DATE >= prp.END_DATE)
              ) <> 1
            );

          if (WrongConcretePRPersExist = 1) then
            raise_application_error(-20001, ServerMessages.SWrongConcretePRPersExistId);
          end if;

      end if;
         

      update
        PAR_RELS parrels
      set
        parrels.PRIORITY_CODE = :new.PRIORITY_CODE,
        parrels.COMMON_PARTNER_CODE = :new.COMMON_PARTNER_CODE
      where
        (parrels.PARTNER_CODE = :old.PARTNER_CODE) and
        (parrels.BORDER_REL_TYPE_CODE = :old.BORDER_REL_TYPE_CODE);


      if ( (:old.COMMON_PARTNER_CODE is not null) and (:new.COMMON_PARTNER_CODE is null) ) or
         (:old.COMMON_PARTNER_CODE <> :new.COMMON_PARTNER_CODE) then
         
        update
          PAR_REL_PRODUCT_PERS_FOR_EDIT prpp
        set
          prpp.BEGIN_DATE = prpp.BEGIN_DATE
        where
          ( (prpp.PARTNER_CODE = :old.COMMON_PARTNER_CODE) or
            exists(
              select
                1
              from
                PAR_RELS pr
              where
                (pr.PARTNER_CODE = prpp.PARTNER_CODE) and
                (pr.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) and
                (pr.COMMON_PARTNER_CODE = :old.COMMON_PARTNER_CODE)
            ) 
          ) and
          (prpp.BORDER_REL_TYPE_CODE = :old.COMMON_PARTNER_CODE);
         
      end if;


      if ( (:new.COMMON_PARTNER_CODE is not null) and (:old.COMMON_PARTNER_CODE is null) ) or
         (:new.COMMON_PARTNER_CODE <> :old.COMMON_PARTNER_CODE) then
         
        update
          PAR_REL_PRODUCT_PERS_FOR_EDIT prpp
        set
          prpp.BEGIN_DATE = prpp.BEGIN_DATE
        where
          ( (prpp.PARTNER_CODE = :new.COMMON_PARTNER_CODE) or
            exists(
              select
                1
              from
                PAR_RELS pr
              where
                (pr.PARTNER_CODE = prpp.PARTNER_CODE) and
                (pr.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) and
                (pr.COMMON_PARTNER_CODE = :new.COMMON_PARTNER_CODE)
            ) 
          ) and
          (prpp.BORDER_REL_TYPE_CODE = :new.COMMON_PARTNER_CODE);
         
      end if;

    exception
      when others then
        StateUtils.EndParrelsfeUpdate;
        raise;
    end;
    StateUtils.EndParrelsfeUpdate;
  end if;

end tr_PARRELSFE_IU;
/
