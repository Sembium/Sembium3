create or replace trigger tr_MLLC_AIU_MLL_STUFF
  after insert or update on MATERIAL_LIST_LINE_CHANGES
  for each row
declare
  MllCount number;
  MlObjectBranchCode number;
  MlObjectCode number;
begin
  if not StateUtils.InMllUpdate then
    StateUtils.BeginMllUpdate;
    begin
      select
        Count(*)
      into
        MllCount
      from
        MATERIAL_LIST_LINES mll
      where
        (mll.MLL_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
        (mll.MLL_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
        
        ( (mll.DETAIL_CODE = :new.O_DETAIL_CODE) or
          ( (mll.DETAIL_CODE is null) and (:new.O_DETAIL_CODE is null) ) ) and
        
        ( (mll.PRODUCT_CODE = :new.O_PRODUCT_CODE) or
          ( (mll.PRODUCT_CODE is null) and (:new.O_PRODUCT_CODE is null) ) ) and
        
        ( (mll.DETAIL_TECH_QUANTITY = :new.O_DETAIL_TECH_QUANTITY) or
          ( (mll.DETAIL_TECH_QUANTITY is null) and (:new.O_DETAIL_TECH_QUANTITY is null) ) ) and

        ( (mll.PRODUCT_TECH_QUANTITY = :new.O_PRODUCT_TECH_QUANTITY) or
          ( (mll.PRODUCT_TECH_QUANTITY is null) and (:new.O_PRODUCT_TECH_QUANTITY is null) ) ) and
        
        ( (mll.TOTAL_DETAIL_TECH_QUANTITY = :new.O_TOTAL_DETAIL_TECH_QUANTITY) or
          ( (mll.TOTAL_DETAIL_TECH_QUANTITY is null) and (:new.O_TOTAL_DETAIL_TECH_QUANTITY is null) ) ) and
        
        ( (mll.LINE_DETAIL_TECH_QUANTITY = :new.O_LINE_DETAIL_TECH_QUANTITY) or
          ( (mll.LINE_DETAIL_TECH_QUANTITY is null) and (:new.O_LINE_DETAIL_TECH_QUANTITY is null) ) ) and
        
        ( (mll.STORE_CODE = :new.O_STORE_CODE) or
          ( (mll.STORE_CODE is null) and (:new.O_STORE_CODE is null) ) ) and
        
        ( (mll.PRODUCT_NEED_BEGIN_DATE = :new.O_PRODUCT_NEED_BEGIN_DATE) or
          ( (mll.PRODUCT_NEED_BEGIN_DATE is null) and (:new.O_PRODUCT_NEED_BEGIN_DATE is null) ) ) and
        
        ( (mll.PRODUCT_NEED_END_DATE = :new.O_PRODUCT_NEED_END_DATE) or
          ( (mll.PRODUCT_NEED_END_DATE is null) and (:new.O_PRODUCT_NEED_END_DATE is null) ) );
      
      if (MllCount <> 1) then
        raise_application_error(-20000, 'Internal error: cannot request mll change because the mll was changed by another user');
      end if;
      
      if (:new.MLL_CHANGE_REPLY_TYPE_CODE = ModelUtils.crtChangeAccepted) and
         (:old.MLL_CHANGE_REPLY_TYPE_CODE is null) then
         
        update
          MATERIAL_LIST_LINES_FOR_EDIT mll
        set
          mll.DETAIL_CODE = :new.N_DETAIL_CODE,
          mll.PRODUCT_CODE = :new.N_PRODUCT_CODE,
          mll.DETAIL_TECH_QUANTITY = :new.N_DETAIL_TECH_QUANTITY,
          mll.PRODUCT_TECH_QUANTITY = :new.N_PRODUCT_TECH_QUANTITY,
          mll.TOTAL_DETAIL_TECH_QUANTITY = :new.N_TOTAL_DETAIL_TECH_QUANTITY,
          mll.LINE_DETAIL_TECH_QUANTITY = :new.N_LINE_DETAIL_TECH_QUANTITY,
          mll.STORE_CODE = :new.N_STORE_CODE,
          mll.PRODUCT_NEED_BEGIN_DATE = :new.N_PRODUCT_NEED_BEGIN_DATE,
          mll.PRODUCT_NEED_END_DATE = :new.N_PRODUCT_NEED_END_DATE
        where
          (mll.MLL_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
          (mll.MLL_OBJECT_CODE = :new.MLL_OBJECT_CODE);
          
        select
          mll.ML_OBJECT_BRANCH_CODE,
          mll.ML_OBJECT_CODE
        into
          MlObjectBranchCode,
          MlObjectCode
        from
          MATERIAL_LIST_LINES mll
        where
          (mll.MLL_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
          (mll.MLL_OBJECT_CODE = :new.MLL_OBJECT_CODE);
          
        -- fake update to force execution of u-triggers on mls
        update
          MODEL_STAGE_LINKS msl
        set
          msl.TO_MLMS_OBJECT_BRANCH_CODE = msl.TO_MLMS_OBJECT_BRANCH_CODE,
          msl.TO_MLMS_OBJECT_CODE = msl.TO_MLMS_OBJECT_CODE
        where
          ( (msl.FROM_MLMS_OBJECT_BRANCH_CODE,  msl.FROM_MLMS_OBJECT_CODE) in
            ( select
                mlms.MLMS_OBJECT_BRANCH_CODE,
                mlms.MLMS_OBJECT_CODE
              from
                ML_MODEL_STAGES mlms,
                MATERIAL_LIST_LINES mll                
              where
                (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
                (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
                (mll.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
                (mll.ML_OBJECT_CODE = MlObjectCode)
            )
          );          
          
      end if;
      
    exception
      when others then
        StateUtils.EndMllUpdate;
        raise;
    end;
    
    StateUtils.EndMllUpdate;
    
  end if;
  
end tr_MLLC_AIU_MLL_STUFF;
/
