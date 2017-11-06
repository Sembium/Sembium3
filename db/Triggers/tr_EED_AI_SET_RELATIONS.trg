create or replace trigger tr_EED_AI_SET_RELATIONS
  after insert on EXCEPT_EVENT_DAMAGES
  for each row
begin

  insert into EXCEPT_EVENT_DAMAGE_RELATIONS
    (
      ANCESTOR_EE_DAMAGE_CODE,
      DESCENDANT_EE_DAMAGE_CODE
    )
  values
    (
      :new.EXCEPT_EVENT_DAMAGE_CODE,
      :new.EXCEPT_EVENT_DAMAGE_CODE
    );
    
  insert into EXCEPT_EVENT_DAMAGE_RELATIONS
    (
      ANCESTOR_EE_DAMAGE_CODE,
      DESCENDANT_EE_DAMAGE_CODE
    )
  select
    eedr.ANCESTOR_EE_DAMAGE_CODE,
    :new.EXCEPT_EVENT_DAMAGE_CODE
  from
    EXCEPT_EVENT_DAMAGE_RELATIONS eedr
  where
    (eedr.DESCENDANT_EE_DAMAGE_CODE = :new.PARENT_CODE);

end tr_EED_AI_SET_RELATIONS;
/
