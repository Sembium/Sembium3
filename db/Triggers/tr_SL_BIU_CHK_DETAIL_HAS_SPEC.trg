create or replace trigger tr_SL_BIU_CHK_DETAIL_HAS_SPEC
  before insert or update of DETAIL_CODE, PRODUCT_CODE, IS_IMPORTED, NO_1 on SPEC_LINES
  for each row
declare
  InvalidInlineModel Number := 0;
  DetailHasSpec Number;
begin

  if (:new.PRODUCT_CODE is null) and
     (:new.IS_IMPORTED = 0) and
     (:new.NO_1 > 0) then
    InvalidInlineModel:= 1;
  end if;

  if (:new.PRODUCT_CODE <> :new.DETAIL_CODE) and
     (:new.IS_IMPORTED = 0) and
     (:new.NO_1 > 0) then
     
    select
      Sign(Count(*))
    into
      DetailHasSpec
    from
      SPECS sp
    where
      (sp.SPEC_PRODUCT_CODE = :new.DETAIL_CODE);
      
    if (DetailHasSpec = 1) then
      InvalidInlineModel:= 1;
    end if;
     
  end if;

  if (InvalidInlineModel = 1) then
    raise_application_error(-20000, ServerMessages.SInvalidInlineModelId || '(' ||
      'NoAsText:s=' || MessageUtils.InternalEncodeString(:new.NO_AS_TEXT) || ')'  
    );
  end if;
    
end;
/
