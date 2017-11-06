create or replace trigger tr_SLFE_II
  instead of insert on SPEC_LINES_FOR_EDIT
  for each row
begin

  if not StateUtils.InSlfeUpdate then
    StateUtils.BeginSlfeUpdate;
    begin
    
      insert into SPEC_LINES
      (
        CONSTRUCTION_NOTES,
        DETAIL_CODE,
        DETAIL_TECH_QUANTITY,
        IS_COMPLETE,
        IS_FOR_SINGLE_USE,
        IS_IMPORTED,
        NO_1,
        NO_10,
        NO_11,
        NO_12,
        NO_13,
        NO_14,
        NO_15,
        NO_16,
        NO_17,
        NO_18,
        NO_19,
        NO_2,
        NO_20,
        NO_21,
        NO_22,
        NO_23,
        NO_24,
        NO_25,
        NO_3,
        NO_4,
        NO_5,
        NO_6,
        NO_7,
        NO_8,
        NO_9,
        NO_AS_FORMATED_TEXT,
        NO_AS_TEXT,
        NOTES,
        PARENT_SPEC_LINE_CODE,
        PRODUCT_CODE,
        PRODUCT_TECH_QUANTITY,
        SPEC_LINE_CODE,
        SPEC_PRODUCT_CODE,
        STRUCT_CHANGE_DATE,
        STRUCT_CHANGE_EMPLOYEE_CODE,
        STRUCT_CHANGE_TIME,
        TOTAL_DETAIL_TECH_QUANTITY
      )
      values
      (
        :new.CONSTRUCTION_NOTES,
        :new.DETAIL_CODE,
        :new.DETAIL_TECH_QUANTITY,
        :new.IS_COMPLETE,
        :new.IS_FOR_SINGLE_USE,
        Coalesce(:new.IS_IMPORTED, 0),
        :new.NO_1,
        :new.NO_10,
        :new.NO_11,
        :new.NO_12,
        :new.NO_13,
        :new.NO_14,
        :new.NO_15,
        :new.NO_16,
        :new.NO_17,
        :new.NO_18,
        :new.NO_19,
        :new.NO_2,
        :new.NO_20,
        :new.NO_21,
        :new.NO_22,
        :new.NO_23,
        :new.NO_24,
        :new.NO_25,
        :new.NO_3,
        :new.NO_4,
        :new.NO_5,
        :new.NO_6,
        :new.NO_7,
        :new.NO_8,
        :new.NO_9,
        :new.NO_AS_FORMATED_TEXT,
        :new.NO_AS_TEXT,
        :new.NOTES,
        :new.PARENT_SPEC_LINE_CODE,
        :new.PRODUCT_CODE,
        :new.PRODUCT_TECH_QUANTITY,
        :new.SPEC_LINE_CODE,
        :new.SPEC_PRODUCT_CODE,
        :new.STRUCT_CHANGE_DATE,
        :new.STRUCT_CHANGE_EMPLOYEE_CODE,
        :new.STRUCT_CHANGE_TIME,
        :new.TOTAL_DETAIL_TECH_QUANTITY
      );
    
    exception
      when others then
        StateUtils.EndSlfeUpdate;
        raise;
    end;
    StateUtils.EndSlfeUpdate;
  end if;

end tr_SLFE_II;
/
