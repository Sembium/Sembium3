create or replace trigger tr_MLFE_ID
  instead of delete on MATERIAL_LISTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InMlfeUpdate then
    StateUtils.BeginMlfeUpdate;
    begin
    
      delete
        MATERIAL_LIST_LINES_FOR_EDIT mll
      where
        (mll.ML_OBJECT_BRANCH_CODE = :old.ML_OBJECT_BRANCH_CODE) and
        (mll.ML_OBJECT_CODE = :old.ML_OBJECT_CODE) and
        (mll.PARENT_MLL_OBJECT_BRANCH_CODE is null);
    
      delete
        MATERIAL_LISTS ml
      where
        (ml.ML_OBJECT_BRANCH_CODE = :old.ML_OBJECT_BRANCH_CODE) and
        (ml.ML_OBJECT_CODE = :old.ML_OBJECT_CODE);

      delete
        PROCESS_OBJECTS po
      where
        (po.PROCESS_OBJECT_BRANCH_CODE = :old.ML_OBJECT_BRANCH_CODE) and
        (po.PROCESS_OBJECT_CODE = :old.ML_OBJECT_CODE);

    exception
      when others then
        StateUtils.EndMlfeUpdate;
        raise;
    end;
    StateUtils.EndMlfeUpdate;
  end if;
    
end tr_MLFE_ID;
/
