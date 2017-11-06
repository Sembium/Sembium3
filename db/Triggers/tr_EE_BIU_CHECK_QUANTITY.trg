create or replace trigger tr_EE_BIU_CHECK_QUANTITY
  before insert or update on EXCEPT_EVENTS
  for each row
declare
  IsQuantityCorrect Number;
begin

  if (:new.OM_BRANCH_CODE is not null) and (:new.OM_CODE is not null) then

    select
      Sign(Count(*))
    into
      IsQuantityCorrect
    from
      OPERATION_MOVEMENTS om,
      MLMS_OPERATIONS mlmso,
      ML_MODEL_STAGES mlms,
      MATERIAL_LIST_LINES mll,
      PRODUCTS p
    where
      (mlmso.MLMSO_OBJECT_BRANCH_CODE = om.FROM_MLMSO_OBJECT_BRANCH_CODE) and
      (mlmso.MLMSO_OBJECT_CODE = om.FROM_MLMSO_OBJECT_CODE) and
      
      (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
      (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
      
      (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
      (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
   
      (mll.DETAIL_CODE = p.PRODUCT_CODE) and

      (om.OM_BRANCH_CODE = :new.OM_BRANCH_CODE) and
      (om.OM_CODE = :new.OM_CODE) and

      (MiscUtils.FloatCompare((Coalesce(om.TOTAL_DETAIL_TECH_QUANTITY, 0) / p.TECH_MEASURE_COEF), :new.PRODUCT_QUANTITY) >= 0);
      
    if (IsQuantityCorrect = 0) then
      raise_application_error(-20002, ServerMessages.SExceptEventsIncorrectQtyId);
    end if;

  end if;

  if (:new.SALE_OBJECT_BRANCH_CODE is not null) and (:new.SALE_OBJECT_CODE is not null) then

    select
      Sign(Count(*))
    into
      IsQuantityCorrect
    from
      SALES s
    where
      (s.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
      (s.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE) and

      (Coalesce(s.QUANTITY, 0) >= :new.PRODUCT_QUANTITY);

    if (IsQuantityCorrect = 0) then
      raise_application_error(-20002, ServerMessages.SExceptEventsIncorrectQtyId);
    end if;

  end if;
  
  if (:new.DCD_OBJECT_BRANCH_CODE is not null) and
     (:new.DCD_OBJECT_CODE is not null) and
     (:new.DELIVERY_PROJECT_CODE is not null) then

    select
      Sign(Count(*))
    into
      IsQuantityCorrect
    from
      DELIVERY_PROJECTS dp
    where
      (dp.DCD_OBJECT_BRANCH_CODE = :new.DCD_OBJECT_BRANCH_CODE) and
      (dp.DCD_OBJECT_CODE = :new.DCD_OBJECT_CODE) and
      (dp.DELIVERY_PROJECT_CODE = :new.DELIVERY_PROJECT_CODE) and

      (Coalesce(dp.WORK_QUANTITY, 0) >= :new.PRODUCT_QUANTITY);

    if (IsQuantityCorrect = 0) then
      raise_application_error(-20002, ServerMessages.SExceptEventsIncorrectQtyId);
    end if;

  end if;

end tr_EE_BIU_CHECK_QUANTITY;
/
