create or replace trigger tr_FC_AI_SET_RELATIONS
  after insert on FIN_CLASSES
  for each row
begin
  insert into FIN_CLASS_RELATIONS
    (
      ANCESTOR_FIN_CLASS_CODE,
      DESCENDANT_FIN_CLASS_CODE
    )
  values
    (
      :new.FIN_CLASS_CODE,
      :new.FIN_CLASS_CODE
    );
    
  insert into FIN_CLASS_RELATIONS
    (
      ANCESTOR_FIN_CLASS_CODE,
      DESCENDANT_FIN_CLASS_CODE
    )
  select
    fcr.ANCESTOR_FIN_CLASS_CODE,
    :new.FIN_CLASS_CODE
  from
    FIN_CLASS_RELATIONS fcr
  where
    (fcr.DESCENDANT_FIN_CLASS_CODE = :new.PARENT_FIN_CLASS_CODE);
    
end tr_FC_AI_SET_RELATIONS;
/
