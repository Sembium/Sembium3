create or replace trigger tr_SLFE_ID
  instead of delete on SPEC_LINES_FOR_EDIT
  for each row
begin

  if not StateUtils.InSlfeUpdate then
    StateUtils.BeginSlfeUpdate;
    begin
    
      for ChildSl in
        (
          select
            sl.SPEC_PRODUCT_CODE,
            sl.SPEC_LINE_CODE,
            sl.NO_AS_FORMATED_TEXT
          from
            SPEC_LINES sl
          where  
            (sl.SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE) and
            (sl.NO_AS_FORMATED_TEXT like (Decode(:old.NO_1, 0, '', :old.NO_AS_FORMATED_TEXT) || '%'))
          order by
            sl.NO_AS_FORMATED_TEXT desc
        )
      loop
      
        delete
          SMVL_FOR_EDIT smvl
        where
          (smvl.SPEC_PRODUCT_CODE =  ChildSl.SPEC_PRODUCT_CODE) and
          (smvl.SPEC_LINE_CODE = ChildSl.SPEC_LINE_CODE);
      
        delete
          SPEC_LINES sl
        where
          (sl.SPEC_PRODUCT_CODE = ChildSl.SPEC_PRODUCT_CODE) and
          (sl.SPEC_LINE_CODE = ChildSl.SPEC_LINE_CODE);
          
      end loop;
        
    exception
      when others then
        StateUtils.EndSlfeUpdate;
        raise;
    end;
    StateUtils.EndSlfeUpdate;
  end if;
  
end tr_SLFE_ID;
/
