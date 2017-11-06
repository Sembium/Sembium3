create or replace package SaleUtils is

  type TSaleRequestGroup is record (
    REQUEST_BRANCH_CODE SALE_REQUEST_GROUPS.REQUEST_BRANCH_CODE%TYPE,
    REQUEST_NO SALE_REQUEST_GROUPS.REQUEST_NO%TYPE  
  );

  type TProductQuantity is record (
    PRODUCT_CODE PRODUCTS.PRODUCT_CODE%TYPE,
    QUANTITY Number
  );
  
  type TProductQuantityTable is table of TProductQuantity;

  function sdtSale return Number deterministic;
  function sdtLease return Number deterministic;
    
  procedure PrepareMaterialList(
    SaleObjectBranchCode Number,
    SaleObjectCode Number,
    SaleShipmentNo Number);
    
  procedure UnprepareMaterialList;  
  
  procedure CheckPOCloseAndAnnul(
    ASaleObjectBranchCode in Number,
    ASaleObjectCode in Number,
    AWastingSaleObjectBranchCode in Number,
    AWastingSaleObjectCode in Number,
    AIsClosed Boolean,
    AIsAnnuled Boolean);
    
    
/*
  StrToProductQuantityTable usage:
  param format: product_code1/product_qty1;product_code2/product_qty2;product_code3/product_qty3;...
  
  NewSaleRequestGroup usage:
  declare
    UserCode Number;
    srg SaleUtils.TSaleRequestGroup;
    LocalBranchCode Number;
  begin
    select u.EMPLOYEE_CODE into UserCode from USERS u where (...);
    LoginContext.SetContext(UserCode, SysDate, 0);

    select iv.LOCAL_BRANCH_CODE into LocalBranchCode from INTERNAL_VALUES iv where (iv.CODE = 1);

    srg:= SaleUtils.NewSaleRequestGroup(40001, ContextDate, SaleUtils.StrToProductQuantityTable('103699/26;236751/37'), LocalBranchCode, 'Some Notes');

    DBMS_OUTPUT.put_line(srg.REQUEST_BRANCH_CODE);
    DBMS_OUTPUT.put_line(srg.REQUEST_NO);
  end;
*/    

  function StrToProductQuantityTable(
    AProductsAndQuantities in VarChar2
  ) return TProductQuantityTable;

  function NewSaleRequestGroup(
    AClientCompanyCode in Number,
    ADate in Date,
    AProductQuantityTable in TProductQuantityTable,
    ABranchCode in Number,
    ANotes in VarChar2
  ) return TSaleRequestGroup;

  PRAGMA RESTRICT_REFERENCES (sdtSale, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (sdtLease, WNDS, WNPS, RNPS);

end;
/
 create or replace package body SaleUtils is
 
  -- 
  type
    TModelLine is record (
      ProductCode Number,
      DetailCode Number,
      IsProductionProduct Boolean,
      UsableQuantity Number,      
      UsableAccountQuantity Number,    
      StoreDealObjectBranchCode Number,  
      StoreDealObjectCode Number,
      PlannedStoreDealBranchCode Number,  
      PlannedStoreDealCode Number
    );
    
  type 
    TModelLines is table of TModelLine;
    
  type TMaterialTableRow is record (
    MaterialTableRowCode Number(10),
    ProductCode Number(10),
    DetailCode Number(10),
    Quantity Number,
    AccountQuantity Number
  );
  
  type TMaterialTable is table of TMaterialTableRow;    
 
  function sdtSale return Number is
  begin
    return 1;
  end;
  
  function sdtLease return Number is
  begin
    return 2;
  end;
  
  -- sumata ot vsichki teglenia predi tova, koeto ni interesuva v pylna naredba (data, sklad, nomer)
  function GetSumPreviousDealsOut(
    StoreDealObjectBranchCode Number,
    StoreDealObjectCode Number,
    PlannedStoreDealBranchCode Number,
    PlannedStoreDealCode Number) return Number is
    
    ResultSD Number;
    ResultPSD Number;
  begin
    select
      Sum(sd.QUANTITY)
    into
      ResultSD
    from
      STORE_DEALS sd1,
      STORE_DEALS sd
    where
      (sd1.STORE_DEAL_OBJECT_BRANCH_CODE = StoreDealObjectBranchCode) and
      (sd1.STORE_DEAL_OBJECT_CODE = StoreDealObjectCode) and
      (sd.STORNO_EMPLOYEE_CODE is null) and
      (sd.IN_OUT = -1) and
      (sd.PRODUCT_CODE = sd1.PRODUCT_CODE) and
      -- tuk s formula bi bilo po-fino, ama store_deal_no ne e ogranicheno otgore
      ( (sd.STORE_DEAL_DATE < sd1.STORE_DEAL_DATE) or
        ( (sd.STORE_DEAL_DATE = sd1.STORE_DEAL_DATE) and
          ( (sd.STORE_CODE < sd1.STORE_CODE) or
            ( (sd.STORE_CODE = sd1.STORE_CODE) and
              (sd.STORE_DEAL_NO < sd1.STORE_DEAL_NO)
            )
          )
        ) 
      );

    select
      Sum(
        psd.REMAINING_QUANTITY *
        ( Least(
            Greatest(psd1.STORE_DEAL_END_DATE, ContextDate), 
            Greatest(psd.STORE_DEAL_END_DATE, ContextDate)
          ) -
          Greatest(psd.STORE_DEAL_BEGIN_DATE, ContextDate) + 1
        ) /
        ( Greatest(psd.STORE_DEAL_END_DATE, ContextDate) - 
          Greatest(psd.STORE_DEAL_BEGIN_DATE, ContextDate) + 
          1
        )
      )
    into
      ResultPSD
    from
      PLANNED_STORE_DEALS psd1,
      PLANNED_STORE_DEALS psd
    where
      (psd1.PLANNED_STORE_DEAL_BRANCH_CODE = PlannedStoreDealBranchCode) and
      (psd1.PLANNED_STORE_DEAl_CODE = PlannedStoreDealCode) and
      (psd.IS_ACTIVE = 1) and
      (psd.IN_OUT = -1) and
      (psd.PRODUCT_CODE = psd1.PRODUCT_CODE) and

      ( (Greatest(psd.STORE_DEAL_BEGIN_DATE, ContextDate) < Greatest(psd1.STORE_DEAL_BEGIN_DATE, ContextDate)) or
        ( (Greatest(psd.STORE_DEAL_BEGIN_DATE, ContextDate) = Greatest(psd1.STORE_DEAL_BEGIN_DATE, ContextDate)) and
          ( (psd.STORE_CODE < psd1.STORE_CODE) or
            ( (psd.STORE_CODE = psd1.STORE_CODE) and
              ((psd.PLANNED_STORE_DEAL_BRANCH_CODE * 1000 + psd.PLANNED_STORE_DEAL_CODE) < (psd1.PLANNED_STORE_DEAL_BRANCH_CODE * 1000 + psd1.PLANNED_STORE_DEAL_CODE)) 
            )
          )
        ) 
      );

    return Coalesce(ResultSD, 0) + Coalesce(ResultPSD, 0);
  end;
  
  -- posledovatelno sortirani predishnite postyplenia v pylna naredba (data, sklad, nomer)
  -- nachina triabva da e syshtia kato v GetSumPreviousDealsOut
  function GetPreviousDealsInCursor(
    StoreDealObjectBranchCode Number,
    StoreDealObjectCode Number,
    PlannedStoreDealBranchCode Number,
    PlannedStoreDealCode Number) return MiscUtils.TRefCursor is
    
    Result MiscUtils.TRefCursor;
  begin
    open Result for
      select
        0 as IS_PSD,
        rownum as ROW_NUM,
        QUANTITY,
        BND_PROCESS_OBJECT_BRANCH_CODE,
        BND_PROCESS_OBJECT_CODE
      from
        ( select
            sd.QUANTITY,
            sd.BND_PROCESS_OBJECT_BRANCH_CODE,
            sd.BND_PROCESS_OBJECT_CODE
          from
            STORE_DEALS sd1,
            STORE_DEALS sd
          where
            (sd1.STORE_DEAL_OBJECT_BRANCH_CODE = StoreDealObjectBranchCode) and
            (sd1.STORE_DEAL_OBJECT_CODE = StoreDealObjectCode) and
            (sd.STORNO_EMPLOYEE_CODE is null) and
            (sd.IN_OUT = 1) and
            (sd.PRODUCT_CODE = sd1.PRODUCT_CODE) and
            (sd.STORE_DEAL_DATE <= sd1.STORE_DEAL_DATE)
          order by
            sd.STORE_DEAL_DATE,
            sd.STORE_CODE,
            sd.STORE_DEAL_NO
        )
        
      union
      
      select
        1 as IS_PSD,
        rownum as ROW_NUM,
        REMAINING_QUANTITY as QUANTITY,
        BND_PROCESS_OBJECT_BRANCH_CODE,
        BND_PROCESS_OBJECT_CODE
      from
        ( select
            psd.REMAINING_QUANTITY,
            psd.BND_PROCESS_OBJECT_BRANCH_CODE,
            psd.BND_PROCESS_OBJECT_CODE
          from
            PLANNED_STORE_DEALS psd1,
            PLANNED_STORE_DEALS psd
          where
            (psd1.PLANNED_STORE_DEAL_BRANCH_CODE = PlannedStoreDealBranchCode) and
            (psd1.PLANNED_STORE_DEAL_CODE = PlannedStoreDealCode) and
            (psd.IS_ACTIVE = 1) and
            (psd.IN_OUT = 1) and
            (psd.PRODUCT_CODE = psd1.PRODUCT_CODE) and
            (psd.STORE_DEAL_BEGIN_DATE <= psd1.STORE_DEAL_BEGIN_DATE)
          order by
            psd.STORE_DEAL_BEGIN_DATE,
            psd.STORE_CODE,
            psd.PLANNED_STORE_DEAL_BRANCH_CODE,
            psd.PLANNED_STORE_DEAL_CODE
        )
        
      order by
        IS_PSD,
        ROW_NUM
    ;

    return Result;
  end;
  
  -- vryshta redovete ot modela, vyrzan za ordera za proizvodstvo
  -- redovete sa popylneni tochno s kolichestvoto, koeto mojem da izpolzvame za obezpechavane
  procedure GetModelLines(
    ParentObjectBranchCode Number,
    ParentObjectCode Number,
    ParentQuantity Number,
    ParentUsedQuantity Number,
    ParentRequestedQuantity Number,
    Result in out TModelLines) is
    
    crModelLines MiscUtils.TRefCursor;
    
    MllObjectBranchCode Number;
    MllObjectCode Number;
    ProductQuantity Number;
    TotalProductQuantity Number;    
    IsProductionProduct Number;
    ProductCode Number;
    DetailCode Number;
    ProductAccountMeasureCoef Number;
    StoreDealObjectBranchCode Number;
    StoreDealObjectCode Number;
    PlannedStoreDealBranchCode Number;
    PlannedStoreDealCode Number;
    ChildrenCount Number;
    ForkNo Number;
    UsedQ Number;
    RequestedQ Number;
    ParentCoef Number;
    ResultCount Number;
  begin
    open crModelLines for
      select
        mll.MLL_OBJECT_BRANCH_CODE,
        mll.MLL_OBJECT_CODE,
        (mll.LINE_DETAIL_TECH_QUANTITY * Coalesce(mll.PRODUCT_TECH_QUANTITY, Coalesce(mll.DETAIL_TECH_QUANTITY, 1))) / Coalesce(pmll.TECH_MEASURE_COEF, pml.TECH_MEASURE_COEF) as PRODUCT_QUANTITY,
        (mll.TOTAL_DETAIL_TECH_QUANTITY * Coalesce(mll.PRODUCT_TECH_QUANTITY, Coalesce(mll.DETAIL_TECH_QUANTITY, 1))) / Coalesce(pmll.TECH_MEASURE_COEF, pml.TECH_MEASURE_COEF) as TOTAL_PRODUCT_QUANTITY,
        Coalesce(pmll.IS_PRODUCTION_PRODUCT, pml.IS_PRODUCTION_PRODUCT) as IS_PRODUCTION_PRODUCT,
        Coalesce(pmll.PRODUCT_CODE, pml.PRODUCT_CODE) as PRODUCT_CODE,
        Coalesce(pmll.ACCOUNT_MEASURE_COEF, pml.ACCOUNT_MEASURE_COEF) as ACCOUNT_MEASURE_COEF,
        Coalesce(mll.DETAIL_CODE, ml.RESULT_PRODUCT_CODE) as DETAIL_CODE,
        sd.STORE_DEAL_OBJECT_BRANCH_CODE,
        sd.STORE_DEAL_OBJECT_CODE,
        psd.PLANNED_STORE_DEAL_BRANCH_CODE,
        psd.PLANNED_STORE_DEAL_CODE,
        Coalesce(
          ( select
              Count(*)
            from
              MATERIAL_LIST_LINES mll2
            where
              (mll.MLL_OBJECT_BRANCH_CODE = mll2.PARENT_MLL_OBJECT_BRANCH_CODE) and
              (mll.MLL_OBJECT_CODE = mll2.PARENT_MLL_OBJECT_CODE)
          ), 
        0) as CHILDREN_COUNT,
        mll.FORK_NO
    
      from
        MATERIAL_LISTS ml,
        MATERIAL_LIST_LINES mll,
        PRODUCTS pml,
        PRODUCTS pmll,
        STORE_DEALS sd,
        PLANNED_STORE_DEALS psd
    
      where
        (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
        (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and
        (ml.RESULT_PRODUCT_CODE = pml.PRODUCT_CODE(+)) and
        (mll.PRODUCT_CODE = pmll.PRODUCT_CODE(+)) and
        
        (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANCH_CODE(+)) and
        (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE(+)) and
        (sd.STORNO_EMPLOYEE_CODE(+) is null) and
        
        (mll.MLL_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANCH_CODE(+)) and
        (mll.MLL_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE(+)) and
        (1 = psd.IS_ACTIVE(+)) and
      
        (
          ( (mll.PARENT_MLL_OBJECT_BRANCH_CODE = ParentObjectBranchCode) and
            (mll.PARENT_MLL_OBJECT_CODE = ParentObjectCode) 
          ) or
          
          ( (mll.PARENT_MLL_OBJECT_BRANCH_CODE is null) and 
            (mll.PARENT_MLL_OBJECT_CODE is null) and 

            (mll.ML_OBJECT_BRANCH_CODE = ParentObjectBranchCode) and
            (mll.ML_OBJECT_CODE = ParentObjectCode)
          )
        )
        
      order by
        mll.NO_AS_FORMATED_TEXT,
        mll.FORK_NO;
      
    loop     
      fetch crModelLines into
        MllObjectBranchCode,
        MllObjectCode,
        ProductQuantity,
        TotalProductQuantity,
        IsProductionProduct,
        ProductCode,
        ProductAccountMeasureCoef,
        DetailCode,
        StoreDealObjectBranchCode,
        StoreDealObjectCode,
        PlannedStoreDealBranchCode,
        PlannedStoreDealCode,
        ChildrenCount,
        ForkNo;
        
      exit when crModelLines%NotFound;
      
      ParentCoef:= ProductQuantity / ParentQuantity;
      
      if (ForkNo = 0) then
        UsedQ:= ParentUsedQuantity * ParentCoef;
        RequestedQ:= ParentRequestedQuantity * ParentCoef;
      end if;
      
      if (ProductQuantity > UsedQ) and (RequestedQ > 0) then
        if (ChildrenCount = 0) then
          Result.extend;
          
          ResultCount:= Result.count;
          Result(ResultCount).ProductCode:= ProductCode;
          Result(ResultCount).DetailCode:= DetailCode;
          Result(ResultCount).IsProductionProduct:= (IsProductionProduct = 1);
          Result(ResultCount).UsableQuantity:= Least(ProductQuantity - UsedQ, RequestedQ);
          Result(ResultCount).UsableAccountQuantity:= Result(Result.count).UsableQuantity * ProductAccountMeasureCoef;
          Result(ResultCount).StoreDealObjectBranchCode:= StoreDealObjectBranchCode;
          Result(ResultCount).StoreDealObjectCode:= StoreDealObjectCode;
          Result(ResultCount).PlannedStoreDealBranchCode:= PlannedStoreDealBranchCode;
          Result(ResultCount).PlannedStoreDealCode:= PlannedStoreDealCode;
        else
          GetModelLines(
            MllObjectBranchCode,
            MllObjectCode,
            ProductQuantity,
            UsedQ,
            RequestedQ,
            Result
          );
        end if;
        UsedQ:= 0;
        RequestedQ:= RequestedQ - ProductQuantity;

      else
        UsedQ:= UsedQ - ProductQuantity;
      end if;
  
    end loop;
  end;
  
  -- 
  procedure GetMaterialListRecursive(
    StoreDealObjectBranchCode Number,
    StoreDealObjectCode Number,
    PlannedStoreDealBranchCode Number,
    PlannedStoreDealCode Number,
    Result in out TMaterialTable) is
    
    crDealsIn MiscUtils.TRefCursor;
    ModelLines TModelLines;
    
    DeltaQuantity Number:= 0;
    Quantity Number;
    UsedQuantity Number;
    StoreDealOutQuantity Number;
    PlannedStoreDealOutQuantity Number;
    IsPSD Boolean;
    Dummy Number;
    BndProcessObjectBranchCode Number;
    BndProcessObjectCode Number;
    MLObjectBranchCode Number;
    MLObjectCode Number;
    TotalMLQuantity Number;
    i Number;
    ResultCount Number;
  begin
    select
      Sum(sd.QUANTITY)
    into
      StoreDealOutQuantity
    from
      STORE_DEALS sd
    where
      (sd.STORE_DEAL_OBJECT_BRANCH_CODE = StoreDealObjectBranchCode) and
      (sd.STORE_DEAL_OBJECT_CODE = StoreDealObjectCode);

    StoreDealOutQuantity:= Coalesce(StoreDealOutQuantity, 0);
      
    select
      Sum(psd.REMAINING_QUANTITY)
    into
      PlannedStoreDealOutQuantity
    from
      PLANNED_STORE_DEALS psd
    where
      (psd.PLANNED_STORE_DEAL_BRANCH_CODE = PlannedStoreDealBranchCode) and
      (psd.PLANNED_STORE_DEAL_CODE = PlannedStoreDealCode);
      
    PlannedStoreDealOutQuantity:= Coalesce(PlannedStoreDealOutQuantity, 0);
      
    DeltaQuantity:= 
      -GetSumPreviousDealsOut(
        StoreDealObjectBranchCode, StoreDealObjectCode,
        PlannedStoreDealBranchCode, PlannedStoreDealCode);
    
    crDealsIn:= GetPreviousDealsInCursor(
      StoreDealObjectBranchCode, StoreDealObjectCode,
      PlannedStoreDealBranchCode, PlannedStoreDealCode);

    -- obezpechavame predishnite teglenia
    loop
      fetch crDealsIn into
        IsPSD, Dummy, Quantity, BndProcessObjectBranchCode, BndProcessObjectCode;
      exit when crDealsIn%NotFound or (DeltaQuantity >= 0);
        
      DeltaQuantity:= DeltaQuantity + Quantity;
    end loop;
    
    -- ostanalite postyplenia v edin moment obezpechavat tegleneto na produkta, deto go razglejdame
    if crDealsIn%Found then
      Quantity:= Quantity - DeltaQuantity;
      UsedQuantity:= DeltaQuantity;
      
      loop
        exit when crDealsIn%NotFound or (DeltaQuantity >= (StoreDealOutQuantity + PlannedStoreDealOutQuantity));

        select
          Max(ml.ML_OBJECT_BRANCH_CODE),
          Max(ml.ML_OBJECT_CODE),
          Max(mll.TOTAL_DETAIL_TECH_QUANTITY / p.TECH_MEASURE_COEF) as TOTAL_DETAIL_QUANTITY
        into
          MLObjectBranchCode,
          MLObjectCode,
          TotalMLQuantity
        from
          MATERIAL_LISTS ml,
          MATERIAL_LIST_LINES mll,
          PRODUCTS p
        where
          (ml.BND_PROCESS_OBJECT_BRANCH_CODE = BndProcessObjectBranchCode) and
          (ml.BND_PROCESS_OBJECT_CODE = BndProcessObjectCode) and
          (ml.RESULT_PRODUCT_CODE = p.PRODUCT_CODE) and
          (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
          (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
          (mll.NO_1 = 0);
          
        if (MLObjectBranchCode is null) then
          select
            Max(ml.ML_OBJECT_BRANCH_CODE),
            Max(ml.ML_OBJECT_CODE),
            Max(mll.TOTAL_DETAIL_TECH_QUANTITY / p.TECH_MEASURE_COEF) as TOTAL_DETAIL_QUANTITY
          into
            MLObjectBranchCode,
            MLObjectCode,
            TotalMLQuantity
          from
            SALE_SHIPMENTS ss,
            MATERIAL_LISTS ml,
            MATERIAL_LIST_LINES mll,
            PRODUCTS p
          where
            (ss.SHIPMENT_OBJECT_BRANCH_CODE = BndProcessObjectBranchCode) and
            (ss.SHIPMENT_OBJECT_CODE = BndProcessObjectCode) and
            (ml.BND_PROCESS_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_BRANCH_CODE) and
            (ml.BND_PROCESS_OBJECT_CODE = ss.SALE_OBJECT_CODE) and
            (ml.RESULT_PRODUCT_CODE = p.PRODUCT_CODE) and
            (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
            (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
            (mll.NO_1 = 0);
        end if;
        
        ModelLines:= TModelLines();
        
        GetModelLines(
          MLObjectBranchCode,
          MLObjectCode,
          TotalMLQuantity,
          UsedQuantity,
          (StoreDealOutQuantity + PlannedStoreDealOutQuantity) - DeltaQuantity,
          ModelLines
        );

        for i in 1..ModelLines.count loop
          if ModelLines(i).IsProductionProduct then
            GetMaterialListRecursive(
              ModelLines(i).StoreDealObjectBranchCode,
              ModelLines(i).StoreDealObjectCode,
              ModelLines(i).PlannedStoreDealBranchCode,
              ModelLines(i).PlannedStoreDealCode,
              Result);
          else
            Result.extend;
            
            ResultCount:= Result.count;
            Result(ResultCount).ProductCode:= ModelLines(i).ProductCode;
            Result(ResultCount).DetailCode:= ModelLines(i).DetailCode;
            Result(ResultCount).Quantity:= ModelLines(i).UsableQuantity;
            Result(ResultCount).AccountQuantity:= ModelLines(i).UsableAccountQuantity;
          end if;
        end loop;
        
        fetch crDealsIn into 
          IsPSD, Dummy, Quantity, BndProcessObjectBranchCode, BndProcessObjectCode;

        DeltaQuantity:= DeltaQuantity + Quantity;
        UsedQuantity:= 0;
      end loop;
    end if;
    
    close crDealsIn;
  end;
  
  
  function DoGetMaterialList(
    StoreDealObjectBranchCode Number,
    StoreDealObjectCode Number,
    PlannedStoreDealBranchCode Number,
    PlannedStoreDealCode Number) return TMaterialTable is
    
    Result TMaterialTable:= TMaterialTable();
  begin
    GetMaterialListRecursive(
      StoreDealObjectBranchCode,
      StoreDealObjectCode,
      PlannedStoreDealBranchCode,
      PlannedStoreDealCode,
      Result);
      
    return Result;
  end;  

  procedure CheckPOCloseAndAnnul(
    ASaleObjectBranchCode in Number,
    ASaleObjectCode in Number,
    AWastingSaleObjectBranchCode in Number,
    AWastingSaleObjectCode in Number,
    AIsClosed Boolean,
    AIsAnnuled Boolean
  ) is
    POHasIncorrectDescendants Number;
    IsParentPOClosed Number;
    POHasUnannuledDescendants Number;
    IsParentPOAnnuled Number;
  begin

    if AIsAnnuled then

      select
        Sign(Count(*))
      into
        POHasUnannuledDescendants
      from
        SALES s
      where
        (s.WASTING_SALE_OBJ_BRANCH_CODE = ASaleObjectBranchCode) and
        (s.WASTING_SALE_OBJ_CODE = ASaleObjectCode) and
        (s.ANNUL_EMPLOYEE_CODE is null);

      if (POHasUnannuledDescendants = 1) then
        raise_application_error(-20001, ServerMessages.SPOHasUnannuledDescendantsId);
      end if;

    elsif AIsClosed then

      select
        Sign(Count(*))
      into
        POHasIncorrectDescendants
      from
        SALES s
      where
        (s.WASTING_SALE_OBJ_BRANCH_CODE = ASaleObjectBranchCode) and
        (s.WASTING_SALE_OBJ_CODE = ASaleObjectCode) and
        (s.FINISH_EMPLOYEE_CODE is null) and
        (s.ANNUL_EMPLOYEE_CODE is null);

      if (POHasIncorrectDescendants = 1) then
        raise_application_error(-20001, ServerMessages.SPOHasUnclosedDescendantsId);
      end if;

    else

      select
        Nvl2(Max(s.FINISH_EMPLOYEE_CODE), 1, 0),
        Nvl2(Max(s.ANNUL_EMPLOYEE_CODE), 1, 0)
      into
        IsParentPOClosed,
        IsParentPOAnnuled
      from
        SALES s
      where
        (s.SALE_OBJECT_BRANCH_CODE = AWastingSaleObjectBranchCode) and
        (s.SALE_OBJECT_CODE = AWastingSaleObjectCode);

      if (IsParentPOAnnuled = 1) then
        raise_application_error(-20001, ServerMessages.SParentPOIsAnnuledId);
      end if;

      if (IsParentPOClosed = 1) then
        raise_application_error(-20001, ServerMessages.SParentPOIsClosedId);
      end if;

    end if;

  end;
  
  procedure PrepareMaterialList(
    SaleObjectBranchCode Number,
    SaleObjectCode Number,
    SaleShipmentNo Number) is
    
    MaterialListTable TMaterialTable:= TMaterialTable();
    MaterialListCount Number;
    i Number;
    MaterialListCode Number;
    
    cursor SaleShipments is
      select
        ss.SHIPMENT_OBJECT_BRANCH_CODE,
        ss.SHIPMENT_OBJECT_CODE,
        ss.SALE_OBJECT_BRANCH_CODE,
        ss.SALE_OBJECT_CODE,
        ss.SALE_SHIPMENT_NO,
        sd.STORE_DEAL_OBJECT_BRANCH_CODE,
        sd.STORE_DEAL_OBJECT_CODE,
        psd.PLANNED_STORE_DEAL_BRANCH_CODE,
        psd.PLANNED_STORE_DEAL_CODE
      from
        SALE_SHIPMENTS ss,
        STORE_DEALS sd,
        PLANNED_STORE_DEALS psd
      where
        (ss.SALE_OBJECT_BRANCH_CODE = SaleObjectBranchCode) and
        (ss.SALE_OBJECT_CODE = SaleObjectCode) and
        (ss.SALE_SHIPMENT_NO = SaleShipmentNo) and
      
        (sd.BND_PROCESS_OBJECT_BRANCH_CODE(+) = ss.SHIPMENT_OBJECT_BRANCH_CODE) and
        (sd.BND_PROCESS_OBJECT_CODE(+) = ss.SHIPMENT_OBJECT_CODE) and
        (psd.BND_PROCESS_OBJECT_BRANCH_CODE(+) = ss.SHIPMENT_OBJECT_BRANCH_CODE) and
        (psd.BND_PROCESS_OBJECT_CODE(+) = ss.SHIPMENT_OBJECT_CODE)
        
      ;
  begin
    MaterialListCode:= 0;
    
    for SaleShipment in SaleShipments loop
         
      MaterialListTable:= DoGetMaterialList(
        SaleShipment.STORE_DEAL_OBJECT_BRANCH_CODE,
        SaleShipment.STORE_DEAL_OBJECT_CODE,
        SaleShipment.PLANNED_STORE_DEAL_BRANCH_CODE,
        SaleShipment.PLANNED_STORE_DEAL_CODE);
      
      MaterialListCount:= MaterialListTable.Count;
      
      for i in 1..MaterialListCount loop
        MaterialListTable(i).MaterialTableRowCode:= MaterialListCode + i;
      end loop;
      MaterialListCode:= MaterialListCode + MaterialListCount;
      
      -- tova ne se kompilira pod oracle 10.2
      /*  
      forall i in 1..MaterialListCount
      */
      for i in 1..MaterialListCount loop
        insert into TEMP_SHIPMENT_MATERIAL_LIST
        (
          SHIPMENT_MATERIAL_LIST_CODE,
          SHIPMENT_OBJECT_BRANCH_CODE,
          SHIPMENT_OBJECT_CODE,
          PRODUCT_CODE,
          DETAIL_CODE,
          QUANTITY,
          ACCOUNT_QUANTITY
        )
        select
          MaterialListTable(i).MaterialTableRowCode,      
          SaleShipment.SHIPMENT_OBJECT_BRANCH_CODE,
          SaleShipment.SHIPMENT_OBJECT_CODE,
          MaterialListTable(i).ProductCode,
          MaterialListTable(i).DetailCode,
          MaterialListTable(i).Quantity,
          MaterialListTable(i).AccountQuantity
        from
          DUAL
        where
          (not exists
            (
              select
                 1
              from
                TEMP_SHIPMENT_MATERIAL_LIST tml
              where
                (tml.SHIPMENT_OBJECT_BRANCH_CODE = SaleShipment.SHIPMENT_OBJECT_BRANCH_CODE) and
                (tml.SHIPMENT_OBJECT_CODE = SaleShipment.SHIPMENT_OBJECT_CODE) and
                (tml.PRODUCT_CODE = MaterialListTable(i).ProductCode) and
                (tml.DETAIL_CODE = MaterialListTable(i).DetailCode) and
                (tml.QUANTITY = MaterialListTable(i).Quantity) and
                (tml.ACCOUNT_QUANTITY = MaterialListTable(i).AccountQuantity)
            )
          );
      end loop;

    end loop;
  end;
    
  procedure UnprepareMaterialList is
  begin
    execute immediate 'truncate table TEMP_SHIPMENT_MATERIAL_LIST';
  end;  
  
  function StrToProductQuantityTable(
    AProductsAndQuantities in VarChar2
  ) return TProductQuantityTable
  is
    result TProductQuantityTable:= TProductQuantityTable();
    ProductQuantity TProductQuantity;
  begin
    for x in
      ( with TEMP_TABLE as 
          ( select 
              AProductsAndQuantities as TXT
            from 
              DUAL
          )
        select 
          To_Number(RegExp_SubStr(RegExp_SubStr(TXT, '[^;]+', 1, level), '[^/]+', 1, 1)) as PRODUCT_CODE,
          To_Number(RegExp_SubStr(RegExp_SubStr(TXT, '[^;]+', 1, level), '[^/]+', 1, 2)) as QUANTITY
        from 
          TEMP_TABLE
        connect by 
          (level <= length(RegExp_Replace(TXT,'[^;]*'))+1)
      )
    loop
      ProductQuantity.PRODUCT_CODE:= x.PRODUCT_CODE;
      ProductQuantity.QUANTITY:= x.QUANTITY;

      result.Extend;
      result(result.Last):= ProductQuantity;
    end loop;
    
    return result;
  end;
  
  function NewSaleRequestGroup(
    AClientCompanyCode in Number,
    ADate in Date,
    AProductQuantityTable in TProductQuantityTable,
    ABranchCode in Number,
    ANotes in VarChar2
  ) return TSaleRequestGroup 
  is
    result TSaleRequestGroup;
    SaleObjectCode Number;
    BranchNo Number;
    DocCode Number;
    BaseCurrencyCode Number;
    ProductDefaultStoreCode Number;
    BaseMarketSinglePrice Number;
    BaseSinglePrice Number;
    PriceModifier Number;
    
    PrpStoreCode Number;
    PrpTransportDurationDays Number;
    PrpShipmentTypeCode Number;
    PrpIsPartnerTransport Number;
    PrpCustomHouseCode Number;
    PrpPartnerOfficeCode Number;
  begin
    result.REQUEST_BRANCH_CODE:= ABranchCode;
    
    select
      Min(d.CUSTOM_CODE) as BRANCH_NO
    into
      BranchNo
    from
      DEPTS d
    where
      (d.DEPT_CODE = ABranchCode);

    -- insert into SALE_REQUEST_GROUPS
    select
      (Coalesce(Max(srg.REQUEST_NO), 0) + 1) as REQUEST_NO
    into
      result.REQUEST_NO
    from
      SALE_REQUEST_GROUPS srg
    where
      (srg.REQUEST_BRANCH_CODE = ABranchCode);

    select
      seq_DOCS.NextVal
    into
      DocCode
    from
      DUAL;

    insert into DOCS_FOR_EDIT
    (
      DOC_BRANCH_CODE, 
      DOC_CODE, 
      DOC_EMPTINESS_REQUIREMENT_CODE
    )
    values
    (
      result.REQUEST_BRANCH_CODE,
      DocCode,
      1
    );

    insert into SALE_REQUEST_GROUPS_FOR_EDIT
    (
      REQUEST_BRANCH_CODE, 
      REQUEST_NO, 
      SALE_ORDER_TYPE_CODE, 
      STREAM_TYPE_CODE, 
      IS_ACTIVATED_BY_CLIENT, 
      PRODUCT_CLASS_CODE,
      DOC_BRANCH_CODE,
      DOC_CODE,
      NOTES,
      CREATE_EMPLOYEE_CODE, 
      CREATE_DATE, 
      CREATE_TIME, 
      CHANGE_EMPLOYEE_CODE, 
      CHANGE_DATE, 
      CHANGE_TIME
    )
    values
    (
      result.REQUEST_BRANCH_CODE,
      result.REQUEST_NO,
      6, -- tekushta nalichnost
      1,
      1,
      1,
      result.REQUEST_BRANCH_CODE,
      DocCode,
      ANotes,
      LoginContext.UserCode, 
      ContextDate, 
      ContextTime, 
      LoginContext.UserCode, 
      ContextDate, 
      ContextTime
    );

    -- defaults  
    select
      Min(prp.STORE_CODE),
      Min(prp.TRANSPORT_DURATION_DAYS),
      Min(prp.SHIPMENT_TYPE_CODE),
      Min(prp.IS_PARTNER_TRANSPORT),
      Min(prp.CUSTOMHOUSE_CODE),
      Min(prp.PARTNER_OFFICE_CODE)
    into
      PrpStoreCode,
      PrpTransportDurationDays,
      PrpShipmentTypeCode,
      PrpIsPartnerTransport,
      PrpCustomHouseCode,
      PrpPartnerOfficeCode
    from
      PAR_REL_PERIODS prp
    where
      (prp.PARTNER_CODE = 
        Coalesce(
          ( select
              lib_prper2.PARTNER_CODE
            from
              PAR_REL_PERIODS lib_prper2
            where
              (AClientCompanyCode = lib_prper2.PARTNER_CODE) and
              (CommonConsts.brtClient = lib_prper2.BORDER_REL_TYPE_CODE) and
              (ADate between lib_prper2.BEGIN_DATE and lib_prper2.END_DATE)
          ),
          ( select
              lib_pr2.COMMON_PARTNER_CODE
            from
              PAR_RELS lib_pr2
            where
              (AClientCompanyCode = lib_pr2.PARTNER_CODE) and
              (CommonConsts.brtClient = lib_pr2.BORDER_REL_TYPE_CODE)
          )
        )

      ) and
      (prp.BORDER_REL_TYPE_CODE = CommonConsts.brtClient) and
      (ADate between prp.BEGIN_DATE and prp.END_DATE);  

    -- insert into SALES
    for i in 1..AProductQuantityTable.Count loop
      
      select
        seq_PROCESS_OBJECTS.NextVal as SALE_OBJECT_CODE,          
        seq_DOCS.NextVal as DOC_CODE,
        Coalesce(  -- sklad ot IBR, UM ParK, UM ParK na obobshtavasht, UM UOb, UM UOb na oboboshtavasht, Red na polzvane na UOb, Red na polzvane na obobshtavasht UOb
          ( select
              prpp.STORE_CODE
            from
              PAR_REL_PRODUCT_PERIODS prpp
            where
              (prpp.PARTNER_CODE = AClientCompanyCode) and
              (prpp.BORDER_REL_TYPE_CODE = CommonConsts.brtClient) and
              (prpp.PRODUCT_CODE = AProductQuantityTable(i).PRODUCT_CODE) and
              (ADate between prpp.BEGIN_DATE and prpp.END_DATE)
          ),
          ( select
              prp.STORE_CODE
            from
              PAR_REL_PERIODS prp
            where
              (prp.PARTNER_CODE = AClientCompanyCode) and
              (prp.BORDER_REL_TYPE_CODE = CommonConsts.brtClient) and
              (ADate between prp.BEGIN_DATE and prp.END_DATE)
          ),
          ( select
              pp.SALE_STORE_CODE
            from
              PRODUCT_PERIODS pp
            where
              (pp.PRODUCT_CODE = AProductQuantityTable(i).PRODUCT_CODE) and
              (ADate between pp.BEGIN_DATE and pp.END_DATE)
          ),
          StoreUtils.ProductDefaultStore(AProductQuantityTable(i).PRODUCT_CODE, ABranchCode),
          ( select
              StoreUtils.ProductDefaultStore(dp.COMMON_PRODUCT_CODE, ABranchCode)
            from
              DEFINITE_PRODUCTS dp
            where
              (dp.PRODUCT_CODE = AProductQuantityTable(i).PRODUCT_CODE) and
              (dp.COMMON_PRODUCT_CODE is not null)
          )
        ) as PRODUCT_DEFAULT_STORE_CODE,
        iv.BASE_CURRENCY_CODE
      into
        SaleObjectCode,
        DocCode,
        ProductDefaultStoreCode,
        BaseCurrencyCode
      from
        INTERNAL_VALUES iv
      where
        (iv.CODE = 1);
          
      select
        Round(
          ( MiscUtils.GetNamedValue(x.PRICE_ROW, 'UNMODIFIED_PRICE') *
            ( select
                cr.FIXING
              from
                CURRENCY_RATES cr
              where
                (cr.RATE_DATE = ADate) and 
                (cr.CURRENCY_CODE = MiscUtils.GetNamedValue(x.PRICE_ROW, 'CURRENCY_CODE'))
            )
          ), 
          2
        ) as BASE_MARKET_SINGLE_PRICE,
        Coalesce(MiscUtils.GetNamedValue(x.PRICE_ROW, 'PRICE_MODIFIER'), 1) as PRICE_MODIFIER
      into
        BaseMarketSinglePrice,
        PriceModifier
      from
        ( select
            ProductUtils.ProductPartnerPrice2(AProductQuantityTable(i).PRODUCT_CODE, AClientCompanyCode, CommonConsts.brtClient, CommonConsts.otAcquire, ADate) as PRICE_ROW
          from
            DUAL
        ) x;
          
      BaseSinglePrice:= (BaseMarketSinglePrice * AProductQuantityTable(i).QUANTITY * PriceModifier) / AProductQuantityTable(i).QUANTITY;
          
      insert into PROCESS_OBJECTS
      (
        PROCESS_OBJECT_BRANCH_CODE, 
        PROCESS_OBJECT_CODE, 
        PROCESS_OBJECT_CLASS_CODE,
        PROCESS_OBJECT_IDENTIFIER
      )
      values
      (
        result.REQUEST_BRANCH_CODE,
        SaleObjectCode,
        30,
        BranchNo || ' / ' || result.REQUEST_NO || ' / ' || i
      );
        
      insert into DOCS_FOR_EDIT
      (
        DOC_BRANCH_CODE, 
        DOC_CODE, 
        DOC_EMPTINESS_REQUIREMENT_CODE
      )
      values
      (
        result.REQUEST_BRANCH_CODE,
        DocCode,
        1
      );

      insert into SALES_FOR_EDIT
      (
        SALE_OBJECT_BRANCH_CODE,
        SALE_OBJECT_CODE,
        SALE_ORDER_TYPE_CODE,
        REQUEST_BRANCH_CODE,
        REQUEST_NO,
        REQUEST_LINE_NO,
        MANAGER_EMPLOYEE_CODE,
        CLIENT_COMPANY_CODE,
        REQUEST_SEND_DATE,
        REQUEST_REGISTER_DATE,
        PRODUCT_CODE,
        CL_OFFER_QUANTITY,
        MANUFACTURE_DECISION_EXPECTED,
        CURRENCY_CODE,
        SINGLE_PRICE,
        CL_OFFER_SINGLE_PRICE,
        RECEIVE_DATE,
        CL_OFFER_RECEIVE_DATE,
        RECEIVE_PLACE_OFFICE_CODE,
        IS_VENDOR_TRANSPORT,
        SHIPMENT_TYPE_CODE,
        CUSTOMHOUSE_CODE,
        SOS_OKIDU,
        SHIPMENT_DATE,
        SHIPMENT_STORE_CODE,
        IS_ML_ENTRUSTED,
        IS_ML_NOT_NEEDED,
        CREATE_EMPLOYEE_CODE, 
        CREATE_DATE, 
        CREATE_TIME, 
        CHANGE_EMPLOYEE_CODE, 
        CHANGE_DATE, 
        CHANGE_TIME,
        MARKET_SINGLE_PRICE,
        DISCOUNT_PERCENT,
        CL_OFFER_QUANTITY_CHG,
        CL_OFFER_RECEIVE_DATE_CH,
        RECEIVE_DATE_CHG,
        DOC_BRANCH_CODE,
        DOC_CODE,
        TRANSIENT_STATUS_CODE,
        IS_AUTO_COMPLETIVE,
        SALE_DEAL_TYPE_CODE,
        ASPECT_TYPE_CODE,
        SHIPMENT_DAYS,
        MODEL_DEVELOPMENT_TYPE_CODE
      )
      values
      (
        result.REQUEST_BRANCH_CODE,                 -- SALE_OBJECT_BRANCH_CODE,
        SaleObjectCode,                             -- SALE_OBJECT_CODE,
        6, -- tekushta nalichnost                   -- SALE_ORDER_TYPE_CODE,
        result.REQUEST_BRANCH_CODE,                 -- REQUEST_BRANCH_CODE,
        result.REQUEST_NO,                          -- REQUEST_NO,
        i,                                          -- REQUEST_LINE_NO,
        LoginContext.UserCode,                      -- MANAGER_EMPLOYEE_CODE,
        AClientCompanyCode,                         -- CLIENT_COMPANY_CODE,
        ADate,                                      -- REQUEST_SEND_DATE,
        ADate,                                      -- REQUEST_REGISTER_DATE,
        AProductQuantityTable(i).PRODUCT_CODE,      -- PRODUCT_CODE,
        AProductQuantityTable(i).QUANTITY,          -- CL_OFFER_QUANTITY,
        0,                                          -- MANUFACTURE_DECISION_EXPECTED,
        BaseCurrencyCode,                           -- CURRENCY_CODE,
        BaseSinglePrice,                            -- SINGLE_PRICE,
        BaseSinglePrice,                            -- CL_OFFER_SINGLE_PRICE,
        ADate,                                      -- RECEIVE_DATE,
        ADate,                                      -- CL_OFFER_RECEIVE_DATE,
        PrpPartnerOfficeCode,                       -- RECEIVE_PLACE_OFFICE_CODE,
        PrpIsPartnerTransport,                      -- IS_VENDOR_TRANSPORT,
        PrpShipmentTypeCode,                        -- SHIPMENT_TYPE_CODE,
        PrpCustomHouseCode,                         -- CUSTOMHOUSE_CODE,
        0,                                          -- SOS_OKIDU,
        ADate,                                      -- SHIPMENT_DATE,
        ProductDefaultStoreCode,                    -- SHIPMENT_STORE_CODE,
        0,                                          -- IS_ML_ENTRUSTED,
        0,                                          -- IS_ML_NOT_NEEDED,
        LoginContext.UserCode,                      -- CREATE_EMPLOYEE_CODE, 
        ContextDate,                                  -- CREATE_DATE, 
        ContextTime,                                  -- CREATE_TIME, 
        LoginContext.UserCode,                      -- CHANGE_EMPLOYEE_CODE, 
        ContextDate,                                  -- CHANGE_DATE, 
        ContextTime,                                  -- CHANGE_TIME,
        BaseMarketSinglePrice,                      -- MARKET_SINGLE_PRICE,
        1 - PriceModifier,                          -- DISCOUNT_PERCENT,
        ContextDate,                                  -- CL_OFFER_QUANTITY_CHG,
        ContextDate,                                  -- CL_OFFER_RECEIVE_DATE_CH,
        ContextDate,                                  -- RECEIVE_DATE_CHG,
        result.REQUEST_BRANCH_CODE,                 -- DOC_BRANCH_CODE,
        DocCode,                                    -- DOC_CODE,
        1,                                          -- TRANSIENT_STATUS_CODE,
        0,                                          -- IS_AUTO_COMPLETIVE,
        1,                                          -- SALE_DEAL_TYPE_CODE,
        2,                                          -- ASPECT_TYPE_CODE,
        Coalesce(PrpTransportDurationDays, 1),      -- SHIPMENT_DAYS,
        1                                           -- MODEL_DEVELOPMENT_TYPE_CODE
      );
      
      insert into PLANNED_STORE_DEALS_FOR_EDIT
      (
        PLANNED_STORE_DEAL_BRANCH_CODE,
        PLANNED_STORE_DEAL_CODE,
        PLANNED_STORE_DEAL_TYPE_CODE,
        STORE_DEAL_TYPE_CODE,
        PRIORITY_CODE,
        IS_PLANNED_MANUALLY,
        BND_PROCESS_OBJECT_BRANCH_CODE,
        BND_PROCESS_OBJECT_CODE,
        BND_PROCESS_CODE,
        STORE_CODE,
        STORE_DEAL_BEGIN_DATE,
        STORE_DEAL_END_DATE,
        PRODUCT_CODE,
        QUANTITY,
        ACCOUNT_QUANTITY,
        CREATE_EMPLOYEE_CODE,
        CREATE_DATE,
        CREATE_TIME,
        CHANGE_EMPLOYEE_CODE,
        CHANGE_DATE,
        CHANGE_TIME,
        IN_OUT
      )
      values
      (
        result.REQUEST_BRANCH_CODE,                                            -- PLANNED_STORE_DEAL_BRANCH_CODE,
        ( select
            (Coalesce(Max(psd.PLANNED_STORE_DEAL_CODE), 0) + 1)
          from
            PLANNED_STORE_DEALS psd
          where
            (psd.PLANNED_STORE_DEAL_BRANCH_CODE = result.REQUEST_BRANCH_CODE)
        ),                                                                     -- PLANNED_STORE_DEAL_CODE,
        2,                                                                     -- PLANNED_STORE_DEAL_TYPE_CODE,
        851,                                                                   -- STORE_DEAL_TYPE_CODE,
        ( select
            co.DEFAULT_PRIORITY_CODE
          from
            COMMON_OPTIONS co
          where
            (co.CODE = 1)
        ),                                                                     -- PRIORITY_CODE,  
        0,                                                                     -- IS_PLANNED_MANUALLY,
        result.REQUEST_BRANCH_CODE,                                            -- BND_PROCESS_OBJECT_BRANCH_CODE,
        SaleObjectCode,                                                        -- BND_PROCESS_OBJECT_CODE,
        165,                                                                   -- BND_PROCESS_CODE,
        ProductDefaultStoreCode,                                               -- STORE_CODE,
        ADate,                                                                 -- STORE_DEAL_BEGIN_DATE,
        ADate,                                                                 -- STORE_DEAL_END_DATE,
        AProductQuantityTable(i).PRODUCT_CODE,                                 -- PRODUCT_CODE,
        AProductQuantityTable(i).QUANTITY,                                     -- QUANTITY,
        ( select
            AProductQuantityTable(i).QUANTITY * p.ACCOUNT_MEASURE_COEF
          from
            PRODUCTS p
          where
            (p.PRODUCT_CODE = AProductQuantityTable(i).PRODUCT_CODE)
        ),                                                                     -- ACCOUNT_QUANTITY,
        LoginContext.UserCode,                                                 -- CREATE_EMPLOYEE_CODE,
        ContextDate,                                                             -- CREATE_DATE,
        ContextTime,                                                             -- CREATE_TIME,
        LoginContext.UserCode,                                                 -- CHANGE_EMPLOYEE_CODE,
        ContextDate,                                                             -- CHANGE_DATE,
        ContextTime,                                                             -- CHANGE_TIME,
        -1                                                                     -- IN_OUT
      );
          
    end loop;
        
    return result;
  end;  
  
end;
/
