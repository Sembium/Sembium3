create or replace trigger tr_DFPFE_II
  instead of insert on DEFINITE_PRODUCTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InDfpfeUpdate then
    StateUtils.BeginDfpfeUpdate;
    begin
    
      insert into DEFINITE_PRODUCTS
      (
        PRODUCT_CODE,
        COMMON_PRODUCT_CODE
      )
      values
      (
        :new.PRODUCT_CODE,
        :new.COMMON_PRODUCT_CODE
      );
    
    
      if (:new.COMMON_PRODUCT_CODE is not null) then
           
        -- updatevai pokritite periodi    
        -- trigger update of all fields
        update
          PRODUCT_PERIODS_FOR_EDIT pp
        set
          pp.PRECISION_LEVEL_CODE = pp.PRECISION_LEVEL_CODE
        where
          (pp.PRODUCT_CODE = :new.PRODUCT_CODE) and
          exists(
            select
              1
            from
              PRODUCT_PERIODS cpp
            where
              (cpp.PRODUCT_CODE = :new.COMMON_PRODUCT_CODE) and
              (cpp.BEGIN_DATE <= pp.BEGIN_DATE) and
              (cpp.END_DATE >= pp.END_DATE)
          );        
        
      end if;

    
    exception
      when others then
        StateUtils.EndDfpfeUpdate;
        raise;
    end;
    StateUtils.EndDfpfeUpdate;
  end if;

end tr_DFPFE_II;
/
