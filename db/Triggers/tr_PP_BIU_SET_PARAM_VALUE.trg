create or replace trigger tr_PP_BIU_SET_PARAM_VALUE
  before insert or update on PRODUCT_PARAMS
  for each row
declare
  ParamValue Varchar2(250 char);
begin
  case :new.VALUE_TYPE
    when 0 then
      select
        Max(ni.NOM_ITEM_NAME)
      into
        ParamValue
      from
        NOM_ITEMS ni
      where
        (ni.NOM_CODE = :new.VALUE_NOM_CODE) and
        (ni.NOM_ITEM_CODE = :new.VALUE_NOM_ITEM_CODE);
        
    when 1 then
      if (:new.VALUE_FLOAT_FORMAT is null) then
        ParamValue:= To_Char(:new.VALUE_FLOAT);
      else
        ParamValue:= To_Char(:new.VALUE_FLOAT, 'FM9999999999' || :new.VALUE_FLOAT_FORMAT);
      end if;
             
    when 2 then
      ParamValue:= :new.VALUE_STRING;
      
  else
    raise_application_error(-20002, 'Unknown param value type');      
  end case;

  :new.PARAM_VALUE:= ParamValue; 
  
end tr_PP_BIU_SET_PARAM_VALUE;
/
