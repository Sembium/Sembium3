create or replace trigger tr_P_BIU_CHECK_DOC
  before insert or update on PRODUCTS
  for each row
begin
  if (:new.DOC_CODE is null) then
    raise_application_error(-20000, 'Product doc can not be null!');
  end if;
end tr_P_BIU_CHECK_DOC;
/
