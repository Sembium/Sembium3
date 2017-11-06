create or replace trigger tr_EE_BIU_CHECK_GENERATOR
  before insert or update on EXCEPT_EVENTS
  for each row
declare
  IsExceptEventGeneratorCorrect Number;
begin

  if (:new.OM_BRANCH_CODE is not null) and (:new.OM_CODE is not null) then

    select
      Sign(Count(*))
    into
      IsExceptEventGeneratorCorrect
    from
      OPERATION_MOVEMENTS om,
      MLMS_OPERATIONS mlmso,
      ML_MODEL_STAGES mlms,
      MATERIAL_LIST_LINES mll,
      MATERIAL_LISTS ml,
      SALES s,
      PRODUCTION_ORDER_TYPES pot
    where
      (mlmso.MLMSO_OBJECT_BRANCH_CODE = om.FROM_MLMSO_OBJECT_BRANCH_CODE) and
      (mlmso.MLMSO_OBJECT_CODE = om.FROM_MLMSO_OBJECT_CODE) and
      
      (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
      (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
      
      (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
      (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and

      (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
      (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and

      (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE) and
      (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and

      (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER_TYPE_CODE) and

      ( ( (:new.EXCEPT_EVENT_GEN_TYPE_CODE = CommonConsts.eegtProduction) and
          (pot.PROD_ORDER_BASE_TYPE_CODE = CommonConsts.pobtSaleCover)
        ) or
        ( (:new.EXCEPT_EVENT_GEN_TYPE_CODE = CommonConsts.eegtEnvironment) and
          (pot.PROD_ORDER_BASE_TYPE_CODE in
            ( CommonConsts.pobtEnvCover,
              CommonConsts.pobtProject
            )
          )
        )
      ) and

      (om.OM_BRANCH_CODE = :new.OM_BRANCH_CODE) and
      (om.OM_CODE = :new.OM_CODE) and

      (om.TO_DEPT_CODE is not null) and

      ( (:new.ANNUL_EMPLOYEE_CODE is not null) or
        (om.STORNO_EMPLOYEE_CODE is null)
      ) and
      
      (mll.DETAIL_CODE = :new.PRODUCT_CODE) and

      (mlmso.DEPT_CODE = :new.DETECT_DEPT_CODE);
      
    if (IsExceptEventGeneratorCorrect = 0) then
      raise_application_error(-20000, 'Internal error: Assertion: Incorrect owner data in OPERATION_MOVEMENT');
    end if;

  end if;

  if (:new.SALE_OBJECT_BRANCH_CODE is not null) and (:new.SALE_OBJECT_CODE is not null) then

    select
      Sign(Count(*))
    into
      IsExceptEventGeneratorCorrect
    from
      SALES s,
      SALE_REQUEST_GROUPS srg
    where
      (srg.REQUEST_BRANCH_CODE = s.REQUEST_BRANCH_CODE) and
      (srg.REQUEST_NO = s.REQUEST_NO) and

      (s.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
      (s.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE) and

      (srg.STREAM_TYPE_CODE = CommonConsts.stReverse) and

      (srg.PRODUCT_CLASS_CODE = CommonConsts.pcNormal) and

      ( (:new.ANNUL_EMPLOYEE_CODE is not null) or
        (s.ANNUL_EMPLOYEE_CODE is null)
      ) and

      (s.PRODUCT_CODE = :new.PRODUCT_CODE);

    if (IsExceptEventGeneratorCorrect = 0) then
      raise_application_error(-20000, 'Internal error: Assertion: Incorrect owner data in SALE');
    end if;

  end if;
  
  if (:new.DCD_OBJECT_BRANCH_CODE is not null) and
     (:new.DCD_OBJECT_CODE is not null) and
     (:new.DELIVERY_PROJECT_CODE is not null) then

    select
      Sign(Count(*))
    into
      IsExceptEventGeneratorCorrect
    from
      DELIVERY_PROJECTS dp,
      DEFICIT_COVER_DECISIONS dcd,
      BORDER_DEAL_TYPES bdt,
      PRODUCTS p
    where
      (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) and
      (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and

      (dp.DCD_OBJECT_BRANCH_CODE = :new.DCD_OBJECT_BRANCH_CODE) and
      (dp.DCD_OBJECT_CODE = :new.DCD_OBJECT_CODE) and
      (dp.DELIVERY_PROJECT_CODE = :new.DELIVERY_PROJECT_CODE) and

      (dcd.STREAM_TYPE_CODE = CommonConsts.stReverse) and

      (p.PRODUCT_CODE = dp.PRODUCT_CODE) and

      (p.PRODUCT_CLASS_CODE = CommonConsts.pcNormal) and

      (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE) and

      (bdt.PROD_ORDER_BASE_TYPE_CODE in
        ( CommonConsts.pobtSaleCover,
          CommonConsts.pobtEnvCover
        )
      ) and

      ( (:new.ANNUL_EMPLOYEE_CODE is not null) or
        (dp.ANNUL_EMPLOYEE_CODE is null)
      ) and

      (dp.PRODUCT_CODE = :new.PRODUCT_CODE);

    if (IsExceptEventGeneratorCorrect = 0) then
      raise_application_error(-20000, 'Internal error: Assertion: Incorrect owner data in DELIVERY_PROJECT');
    end if;

  end if;

end tr_EE_BIU_CHECK_GENERATOR;
/
