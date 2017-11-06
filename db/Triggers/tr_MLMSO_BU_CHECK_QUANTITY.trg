create or replace trigger tr_MLMSO_BU_CHECK_QUANTITY
  before update on MLMS_OPERATIONS
  for each row
declare
  MlmsoIdentifier Varchar2(100 char);
begin
  if (:new.VARIANT_DETAIL_TECH_QUANTITY < 0) then
    
    select
      po.PROCESS_OBJECT_IDENTIFIER
    into
      MlmsoIdentifier
    from
      PROCESS_OBJECTS po
    where
      (po.PROCESS_OBJECT_BRANCH_CODE = :old.MLMSO_OBJECT_BRANCH_CODE) and
      (po.PROCESS_OBJECT_CODE = :old.MLMSO_OBJECT_CODE)
    ;

    raise_application_error(-20002,
      ServerMessages.SNegativeTechQuantityId || '(' ||
      'MlmsoIdentifier:s=' || MessageUtils.InternalEncodeString(MlmsoIdentifier) || ')'
    );
  
  end if;  
end tr_MLMSO_BU_CHECK_QUANTITY;
/
