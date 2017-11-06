create or replace trigger tr_MLLFE_ID
  instead of delete on MATERIAL_LIST_LINES_FOR_EDIT
  for each row
begin

  if not StateUtils.InMllfeUpdate then
    StateUtils.BeginMllfeUpdate;
    begin
    
      for ChildMll in
        (
          select
            mll.MLL_OBJECT_BRANCH_CODE,
            mll.MLL_OBJECT_CODE,
            mll.NO_AS_FORMATED_TEXT,
            mll.FORK_NO
          from
            MATERIAL_LIST_LINES mll
          where
            (mll.ML_OBJECT_BRANCH_CODE = :old.ML_OBJECT_BRANCH_CODE) and
            (mll.ML_OBJECT_CODE = :old.ML_OBJECT_CODE) and
            (mll.NO_AS_FORMATED_TEXT like (Decode(:old.NO_1, 0, '', :old.NO_AS_FORMATED_TEXT) || '%')) and
            ( (:old.FORK_NO = 0) or
              ( (mll.NO_AS_FORMATED_TEXT = :old.NO_AS_FORMATED_TEXT) and
                (mll.FORK_NO = :old.FORK_NO) 
              )               
            )
          order by
            mll.NO_AS_FORMATED_TEXT desc,
            mll.FORK_NO desc
        )
      loop
    
        for x in
          (
            select
              mlms.MLMS_OBJECT_BRANCH_CODE,
              mlms.MLMS_OBJECT_CODE
            from
              ML_MODEL_STAGES mlms
            where
              (ChildMll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
              (ChildMll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE)
          ) 
        loop
          delete
            ML_MODEL_STAGES_FOR_EDIT mlms
          where
            (mlms.MLMS_OBJECT_BRANCH_CODE = x.MLMS_OBJECT_BRANCH_CODE) and
            (mlms.MLMS_OBJECT_CODE = x.MLMS_OBJECT_CODE);
        
          delete 
            PROCESS_OBJECTS po
          where
            (po.PROCESS_OBJECT_BRANCH_CODE = x.MLMS_OBJECT_BRANCH_CODE) and
            (po.PROCESS_OBJECT_CODE = x.MLMS_OBJECT_CODE);
        
        end loop;         
          
          
        delete
          PLANNED_STORE_DEALS_FOR_EDIT psd
        where
          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = ChildMll.MLL_OBJECT_BRANCH_CODE) and
          (psd.BND_PROCESS_OBJECT_CODE = ChildMll.MLL_OBJECT_CODE)
        ;

        delete
          MATERIAL_LIST_LINES mll
        where
          (mll.MLL_OBJECT_BRANCH_CODE = ChildMll.MLL_OBJECT_BRANCH_CODE) and
          (mll.MLL_OBJECT_CODE = ChildMll.MLL_OBJECT_CODE)
        ;

        delete
          PROCESS_OBJECTS po
        where
          (po.PROCESS_OBJECT_BRANCH_CODE = ChildMll.MLL_OBJECT_BRANCH_CODE) and
          (po.PROCESS_OBJECT_CODE = ChildMll.MLL_OBJECT_CODE)
        ;

      end loop;
          
    exception
      when others then
        StateUtils.EndMllfeUpdate;
        raise;
    end;
    StateUtils.EndMllfeUpdate;
  end if;
    
end tr_MLLFE_ID;
/
