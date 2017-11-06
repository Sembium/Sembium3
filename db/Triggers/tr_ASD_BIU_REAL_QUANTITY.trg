create or replace trigger tr_ASD_BIU_REAL_QUANTITY
  before insert or
         update of REAL_QUANTITY
                on AGGR_STORE_DEALS
  for each row
declare
  lStoreId Varchar2(250 char);
  lProductNo Number;
  lProductName Varchar2(250 char);
begin
  if (:new.REAL_QUANTITY < 0) then
    select
      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as STORE_ID
    into
      lStoreId
    from
      DEPTS d,
      DEPT_TYPES dt
    where
      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and
      (d.DEPT_CODE = :new.STORE_CODE);
      
    select
      p.CUSTOM_CODE,
      p.NAME
    into
      lProductNo,
      lProductName
    from
      PRODUCTS p
    where
      (p.PRODUCT_CODE = :new.PRODUCT_CODE);
      
    raise_application_error(-20002, 
      ServerMessages.SNotEnoughStoreQuantityId || '(' ||
      'StoreName:s=' || MessageUtils.InternalEncodeString(lStoreId) || ', ' ||
      'ProductName:s=' || MessageUtils.InternalEncodeString(lProductName) || ', ' ||
      'ProductIdentifier:f=' || MessageUtils.InternalFloatToStr(lProductNo) || ')'
    );
  end if;
end;
/
