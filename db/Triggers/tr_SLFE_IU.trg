create or replace trigger tr_SLFE_IU
  instead of update on SPEC_LINES_FOR_EDIT
  for each row
begin

  if not StateUtils.InSlfeUpdate then
    StateUtils.BeginSlfeUpdate;
    begin
    
      if ( (:new.SPEC_PRODUCT_CODE <> :old.SPEC_PRODUCT_CODE) or
           (:new.SPEC_LINE_CODE <> :old.SPEC_LINE_CODE) ) then
        raise_application_error(-20000, 'Internal error: SPEC_LINES key should not be changed');
      end if;
      
      update
        SPEC_LINES sl
      set
        sl.CONSTRUCTION_NOTES = :new.CONSTRUCTION_NOTES,
        sl.DETAIL_CODE = :new.DETAIL_CODE,
        sl.DETAIL_TECH_QUANTITY = :new.DETAIL_TECH_QUANTITY,
        sl.IS_COMPLETE = :new.IS_COMPLETE,
        sl.IS_FOR_SINGLE_USE = :new.IS_FOR_SINGLE_USE,
        sl.IS_IMPORTED = :new.IS_IMPORTED,
        sl.NO_1 = :new.NO_1,
        sl.NO_10 = :new.NO_10,
        sl.NO_11 = :new.NO_11,
        sl.NO_12 = :new.NO_12,
        sl.NO_13 = :new.NO_13,
        sl.NO_14 = :new.NO_14,
        sl.NO_15 = :new.NO_15,
        sl.NO_16 = :new.NO_16,
        sl.NO_17 = :new.NO_17,
        sl.NO_18 = :new.NO_18,
        sl.NO_19 = :new.NO_19,
        sl.NO_2 = :new.NO_2,
        sl.NO_20 = :new.NO_20,
        sl.NO_21 = :new.NO_21,
        sl.NO_22 = :new.NO_22,
        sl.NO_23 = :new.NO_23,
        sl.NO_24 = :new.NO_24,
        sl.NO_25 = :new.NO_25,
        sl.NO_3 = :new.NO_3,
        sl.NO_4 = :new.NO_4,
        sl.NO_5 = :new.NO_5,
        sl.NO_6 = :new.NO_6,
        sl.NO_7 = :new.NO_7,
        sl.NO_8 = :new.NO_8,
        sl.NO_9 = :new.NO_9,
        sl.NO_AS_FORMATED_TEXT = :new.NO_AS_FORMATED_TEXT,
        sl.NO_AS_TEXT = :new.NO_AS_TEXT,
        sl.NOTES = :new.NOTES,
        sl.PARENT_SPEC_LINE_CODE = :new.PARENT_SPEC_LINE_CODE,
        sl.PRODUCT_CODE = :new.PRODUCT_CODE,
        sl.PRODUCT_TECH_QUANTITY = :new.PRODUCT_TECH_QUANTITY,
        sl.STRUCT_CHANGE_DATE = :new.STRUCT_CHANGE_DATE,
        sl.STRUCT_CHANGE_EMPLOYEE_CODE = :new.STRUCT_CHANGE_EMPLOYEE_CODE,
        sl.STRUCT_CHANGE_TIME = :new.STRUCT_CHANGE_TIME,
        sl.TOTAL_DETAIL_TECH_QUANTITY = :new.TOTAL_DETAIL_TECH_QUANTITY
      where
        (sl.SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE) and
        (sl.SPEC_LINE_CODE = :old.SPEC_LINE_CODE);
        
    exception
      when others then
        StateUtils.EndSlfeUpdate;
        raise;
    end;
    StateUtils.EndSlfeUpdate;
  end if;

end tr_SLFE_IU;
/
