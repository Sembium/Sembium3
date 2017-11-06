create or replace trigger tr_CRFE_IU
  instead of update on CURRENCY_RATES_FOR_EDIT
  for each row
begin

  if not StateUtils.InCrfeUpdate then
    StateUtils.BeginCrfeUpdate;
    begin
    
      if (:new.CURRENCY_CODE <> :old.CURRENCY_CODE) or
         (:new.RATE_DATE <> :old.RATE_DATE) then
        raise_application_error(-20000, 'Internal error: CURRENCY_RATES key should not be changed');
      end if;
    
      
      update
        CURRENCY_RATES cr
      set
        cr.CURRENCY_CODE = :new.CURRENCY_CODE,
        cr.RATE_DATE = :new.RATE_DATE,
        cr.FIXING = :new.FIXING
      where
        (cr.CURRENCY_CODE = :old.CURRENCY_CODE) and
        (cr.RATE_DATE = :old.RATE_DATE);
        
        
      update
        SECONDARY_CURRENCY_RATES scr
      set
        scr.FIXING =
          ( select
              (cr1.FIXING / cr2.FIXING) as FIXING
            from
              CURRENCY_RATES cr1,
              CURRENCY_RATES cr2,
              INTERNAL_VALUES iv
            where
              (iv.CODE = 1) and
              (cr1.RATE_DATE = cr2.RATE_DATE) and
              (cr2.CURRENCY_CODE = iv.SECONDARY_CURRENCY_CODE) and
              (cr1.CURRENCY_CODE = scr.CURRENCY_CODE) and
              (cr1.RATE_DATE = scr.RATE_DATE)
          )
      where
        (scr.RATE_DATE = :new.RATE_DATE) and
        ((select SECONDARY_CURRENCY_CODE from INTERNAL_VALUES where (CODE = 1)) = :new.CURRENCY_CODE);
    
      
      update
        SECONDARY_CURRENCY_RATES scr
      set
        scr.FIXING =
          ( select
              (cr1.FIXING / cr2.FIXING) as FIXING
            from
              CURRENCY_RATES cr1,
              CURRENCY_RATES cr2,
              INTERNAL_VALUES iv
            where
              (iv.CODE = 1) and
              (cr1.RATE_DATE = cr2.RATE_DATE) and
              (cr2.CURRENCY_CODE = iv.SECONDARY_CURRENCY_CODE) and
              (cr1.CURRENCY_CODE = scr.CURRENCY_CODE) and
              (cr1.RATE_DATE = scr.RATE_DATE)
          )
      where
        (scr.CURRENCY_CODE = :new.CURRENCY_CODE) and
        (scr.RATE_DATE = :new.RATE_DATE) and
        ((select SECONDARY_CURRENCY_CODE from INTERNAL_VALUES where (CODE = 1)) <> :new.CURRENCY_CODE);
     
     
      if (:new.FIXING <> :old.FIXING) then
        for sd in
          ( select
              sd.PRODUCT_CODE,
              sd.STORE_CODE,
              sd.STORE_DEAL_DATE
            from
              STORE_DEALS sd
            where
              (sd.STORNO_EMPLOYEE_CODE is null) and
              (sd.STORE_DEAL_DATE = :new.RATE_DATE) and
              (sd.CURRENCY_CODE = :new.CURRENCY_CODE)
            group by
              sd.PRODUCT_CODE,
              sd.STORE_CODE,
              sd.STORE_DEAL_DATE
            order by
              sd.PRODUCT_CODE,
              sd.STORE_CODE,
              sd.STORE_DEAL_DATE
          )
        loop
          StateUtils.BeginSdfeUpdate;
          begin
            StoreUtils.ReCalcAndReAggrStoreDeals(
              sd.PRODUCT_CODE,
              sd.STORE_CODE,
              sd.STORE_DEAL_DATE
            );
          exception
            when others then
              StateUtils.EndSdfeUpdate;
              raise;
          end;
          StateUtils.EndSdfeUpdate;
        end loop;
      end if;
      
      for x in
        ( select
            ml.BND_PROCESS_OBJECT_BRANCH_CODE as SALE_OBJECT_BRANCH_CODE,
            ml.BND_PROCESS_OBJECT_CODE as SALE_OBJECT_CODE
          from
            STORE_DEALS sd,
            MATERIAL_LIST_LINES mll,
            MATERIAL_LISTS ml
          where
            (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
            (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
            
            (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
            (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
          
            (sd.STORE_DEAL_DATE = :new.RATE_DATE) and
            (sd.CURRENCY_CODE = :new.CURRENCY_CODE) and
            (sd.STORNO_EMPLOYEE_CODE is null) and
            (sd.IN_OUT = -1)            
          group by
            ml.BND_PROCESS_OBJECT_BRANCH_CODE,
            ml.BND_PROCESS_OBJECT_CODE
        )
      loop
        ModelUtils.CalcSaleInStoreDealsTotalPrice(x.SALE_OBJECT_BRANCH_CODE, x.SALE_OBJECT_CODE);
      end loop;
      
      if (:new.RATE_DATE = ContextDate) and (:new.FIXING <> :old.FIXING) then
        FinanceUtils.UpdateRFMLPlannedStoreDeals(null, null, :new.CURRENCY_CODE, True);
      end if;
      
    exception
      when others then
        StateUtils.EndCrfeUpdate;
        raise;
    end;
    StateUtils.EndCrfeUpdate;
  end if;
    
end tr_CRFE_IU;
/
