create or replace trigger tr_EEDFE_ID
  instead of delete on EXCEPT_EVENT_DAMAGES_FOR_EDIT
  for each row
begin

  if not StateUtils.InEedfeUpdate then
    StateUtils.BeginEedfeUpdate;
    begin

      for x in
        ( select
            eedr.DESCENDANT_EE_DAMAGE_CODE as EXCEPT_EVENT_DAMAGE_CODE,
            ( select
                Count(*)
              from
                EXCEPT_EVENT_DAMAGE_RELATIONS eedr2
              where
                (eedr2.DESCENDANT_EE_DAMAGE_CODE = eedr.DESCENDANT_EE_DAMAGE_CODE)
            ) as EXCEPT_EVENT_LEVEL
          from
            EXCEPT_EVENT_DAMAGE_RELATIONS eedr
          where
            (eedr.ANCESTOR_EE_DAMAGE_CODE = :old.EXCEPT_EVENT_DAMAGE_CODE)
          order by
            EXCEPT_EVENT_LEVEL desc
        )
      loop

        delete
          EXCEPT_EVENT_DAMAGES eed
        where
          (eed.EXCEPT_EVENT_DAMAGE_CODE = x.EXCEPT_EVENT_DAMAGE_CODE);

      end loop;

    exception
      when others then
        StateUtils.EndEedfeUpdate;
        raise;
    end;
    StateUtils.EndEedfeUpdate;
  end if;

end tr_EEDFE_ID;
/
