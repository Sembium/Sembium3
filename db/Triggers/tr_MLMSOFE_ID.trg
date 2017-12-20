create or replace trigger tr_MLMSOFE_ID
  instead of delete on MLMS_OPERATIONS_FOR_EDIT
  for each row
declare
  DocOperationCount Number;
  VariantCount Number;
  MlmsoObjectBranchCode Number;
  MlmsoObjectCode Number;
begin

  if not StateUtils.InMlmsofeUpdate then
    StateUtils.BeginMlmsofeUpdate;
    begin
    
      delete
        PLANNED_STORE_DEALS_FOR_EDIT psd
      where
        (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :old.MLMSO_OBJECT_BRANCH_CODE) and
        (psd.BND_PROCESS_OBJECT_CODE = :old.MLMSO_OBJECT_CODE);

      
      delete
        OPERATION_MOVEMENTS_FOR_EDIT om
      where
        (om.FROM_MLMSO_OBJECT_BRANCH_CODE = :old.MLMSO_OBJECT_BRANCH_CODE) and
        (om.FROM_MLMSO_OBJECT_CODE = :old.MLMSO_OBJECT_CODE);

  
      delete
        OPERATION_MOVEMENTS_FOR_EDIT om
      where
        (om.TO_MLMSO_OBJECT_BRANCH_CODE = :old.MLMSO_OBJECT_BRANCH_CODE) and
        (om.TO_MLMSO_OBJECT_CODE = :old.MLMSO_OBJECT_CODE);

        
      delete
        MLMS_OPERATIONS mlmso
      where
        (mlmso.MLMSO_OBJECT_BRANCH_CODE = :old.MLMSO_OBJECT_BRANCH_CODE) and
        (mlmso.MLMSO_OBJECT_CODE = :old.MLMSO_OBJECT_CODE);


      -- delete -1 operation variant
      if (:old.OPERATION_TYPE_CODE = 2) and (:old.MLMS_OPERATION_VARIANT_NO <> -1) then
        
        select
          Count(*)
        into
          VariantCount
        from
          MLMS_OPERATIONS mlmso
        where
          (mlmso.MLMS_OBJECT_BRANCH_CODE = :old.MLMS_OBJECT_BRANCH_CODE) and
          (mlmso.MLMS_OBJECT_CODE = :old.MLMS_OBJECT_CODE) and
          ( (mlmso.MLMS_OPERATION_NO = :old.MLMS_OPERATION_NO) or
            (mlmso.MLMS_OPERATION_NO = -:old.MLMS_OPERATION_NO - 2) ) and
          (mlmso.MLMS_OPERATION_VARIANT_NO <> -1)
        ;
        
        if (VariantCount = 0) then

          select
            Max(mlmso.MLMSO_OBJECT_BRANCH_CODE),
            Max(mlmso.MLMSO_OBJECT_CODE)
          into
            MlmsoObjectBranchCode,
            MlmsoObjectCode
          from
            MLMS_OPERATIONS mlmso
          where
            (mlmso.MLMS_OBJECT_BRANCH_CODE = :old.MLMS_OBJECT_BRANCH_CODE) and
            (mlmso.MLMS_OBJECT_CODE = :old.MLMS_OBJECT_CODE) and
            (mlmso.MLMS_OPERATION_NO = :old.MLMS_OPERATION_NO) and
            (mlmso.MLMS_OPERATION_VARIANT_NO = -1)
          ;
            
          delete
            MLMS_OPERATIONS mlmso
          where
            (mlmso.MLMSO_OBJECT_BRANCH_CODE = MlmsoObjectBranchCode) and
            (mlmso.MLMSO_OBJECT_CODE = MlmsoObjectCode)
          ;

          delete
            PROCESS_OBJECTS po
          where
            (po.PROCESS_OBJECT_BRANCH_CODE = MlmsoObjectBranchCode) and
            (po.PROCESS_OBJECT_CODE = MlmsoObjectCode)
          ;

        end if;
      
      end if;


      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) then

         select
           Count(*)
         into
           DocOperationCount
         from
           MLMS_OPERATIONS mlmso
         where
           (mlmso.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
           (mlmso.DOC_CODE = :old.DOC_CODE);
           
         if (DocOperationCount = 0) then
           
           delete
             DOCS_FOR_EDIT dfe
           where
             (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
             (dfe.DOC_CODE = :old.DOC_CODE);
             
         end if;
          
      end if;

    exception
      when others then
        StateUtils.EndMlmsofeUpdate;
        raise;
    end;
    StateUtils.EndMlmsofeUpdate;
  end if;
    
end tr_MLMSOFE_ID;
/
