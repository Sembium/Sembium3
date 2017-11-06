create or replace trigger tr_FC_BD_KEEP_ROOT
  before delete on FIN_CLASSES  
  for each row
begin
  if (:old.FIN_CLASS_CODE = 1) then
    raise_application_error(-20002, 'FIN_CLASSES root cannot be deleted');
  end if;  
end tr_FC_BD_KEEP_ROOT;
/
