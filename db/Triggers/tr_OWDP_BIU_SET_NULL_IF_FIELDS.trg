create or replace trigger tr_OWDP_BIU_SET_NULL_IF_FIELDS
  before insert or update on OCC_WORK_DEPT_PRIORITIES
  for each row
begin

  :new.NULL_IF_NOT_CAPACITY_GENERATOR:= NullIf(:new.IS_CAPACITY_GENERATOR, 0);
  
  if (:new.ORG_WORK_LEVEL_CODE = CommonConsts.owlManaging) and (:new.ORG_WORK_MODE_CODE = CommonConsts.owmExploitation) then
    :new.NULL_IF_NOT_MNG_EXPLOITATION:= 1;
  else
    :new.NULL_IF_NOT_MNG_EXPLOITATION:= null;
  end if;

end;
/
