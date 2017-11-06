create or replace trigger tr_PSDFE_ID
  instead of delete on PLANNED_STORE_DEALS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPsdfeUpdate then
    StateUtils.BeginPsdfeUpdate;
    begin

      if (:old.PLANNED_STORE_DEAL_TYPE_CODE = 1) then
    
        for x in
          ( select
              sd2.STORE_DEAL_OBJECT_BRANCH_CODE,
              sd2.STORE_DEAL_OBJECT_CODE
            from
              STORE_DEALS sd2
            where
              (sd2.PLANNED_STORE_DEAL_BRANCH_CODE = :old.PLANNED_STORE_DEAL_BRANCH_CODE) and
              (sd2.PLANNED_STORE_DEAL_CODE = :old.PLANNED_STORE_DEAL_CODE)
          )
        loop
          
          delete
            STORE_DEALS_FOR_EDIT sd
          where
            (sd.STORE_DEAL_OBJECT_BRANCH_CODE = x.STORE_DEAL_OBJECT_BRANCH_CODE) and
            (sd.STORE_DEAL_OBJECT_CODE = x.STORE_DEAL_OBJECT_CODE);
        
        
          delete
            PROCESS_OBJECTS po
          where
            (po.PROCESS_OBJECT_BRANCH_CODE = x.STORE_DEAL_OBJECT_BRANCH_CODE) and
            (po.PROCESS_OBJECT_CODE = x.STORE_DEAL_OBJECT_CODE);
        
        end loop;
    
      end if;
      
      delete
        PLANNED_STORE_DEALS psd
      where
        (psd.PLANNED_STORE_DEAL_BRANCH_CODE = :old.PLANNED_STORE_DEAL_BRANCH_CODE) and
        (psd.PLANNED_STORE_DEAL_CODE = :old.PLANNED_STORE_DEAL_CODE);

    exception
      when others then
        StateUtils.EndPsdfeUpdate;
        raise;
    end;
    StateUtils.EndPsdfeUpdate;
  end if;
    
end tr_PSDFE_ID;
/
