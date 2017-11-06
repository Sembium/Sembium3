create or replace package ProductUtils is

  procedure RecalcPartnerProductNames(AProductCode in Integer);
  
  function ProductCompanyProductNames(ProductCode in Integer, CompanyCode in Integer := null) return VarChar2;
  
  procedure CheckProductPeriods(ProductCode in Number, ProductPeriodCode in Number := null);
  
  procedure CalcProductName(ProductCode in Number);
  procedure UpdateNomItemNames(NomCode in Number, NomItemCode in Number);
  
  function ParRelProductPrice2(
    AProductCode in Number, 
    APartnerCode in Number,
    ABorderRelTypeCode in Number,
    AObtainmentTypeCode in Number,
    ADate in Date,
    AOverriddenPrice in Number := 0
  ) return VarChar2;    
  
  function ProductPartnerPrice2(
    AProductCode in Number, 
    APartnerCode in Number,
    ABorderRelTypeCode in Number,
    AObtainmentTypeCode in Number,
    ADate in Date,
    ACompleteData in Number := 0
  ) return VarChar2;   

  function ProductPartnerBaseAcquirePrice(
    AProductCode in Number, 
    APartnerCode in Number,
    ABorderRelTypeCode in Number,
    ADate in Date
  ) return Number;
  
  procedure UpdProdSetProductsForProdSet(ProductSetCode in Integer);
  procedure UpdProdSetProductsForProduct(ProductCode in Integer);  

  function IsPsdPriceFromDeliveryEx(
    AProductCode in Number, 
    AProductPeriodCode in Number
  ) return Number;
  
  function PsdSinglePriceInBaseCurrencyEx(
    AProductCode in Number, 
    ADate in Date
  ) return Number;
  
  PRAGMA RESTRICT_REFERENCES (ProductCompanyProductNames, WNDS, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (ProductCompanyProductNames, WNDS, RNPS, WNPS);
  
  PRAGMA RESTRICT_REFERENCES (UpdProdSetProductsForProdSet, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (UpdProdSetProductsForProduct, RNPS, WNPS);  

end;
/
create or replace package body ProductUtils is

  type TPriceRow is record (
    PRICE Number,
    CURRENCY_CODE Number(10),
    DATE_UNIT_CODE Number(10),
    UNMODIFIED_PRICE Number,
    PRICE_MODIFIER Number
  );

  function GetPartnerProductNames(ProductCode in Integer) return VarChar2 is
    Result Varchar2(250 char);
    Strings MiscUtils.TStringArray;
  begin

    select
      distinct cp.NAME
    bulk collect into
      Strings
    from
      COMPANY_PRODUCTS cp
    where
      (cp.PRODUCT_CODE = ProductCode)
    order by
      cp.NAME;

    Result:= MiscUtils.ConcatStrings(Strings, '; ');

    return Result;
  end GetPartnerProductNames;

  procedure RecalcPartnerProductNames(AProductCode in Integer) is
    PartnerProductNames Varchar2(250 char);
  begin

    if not StateUtils.InPfeUpdate then
      StateUtils.BeginPfeUpdate;
      begin
        PartnerProductNames:= GetPartnerProductNames(AProductCode);
      
        update
          PRODUCTS p
        set
          p.PARTNER_PRODUCT_NAMES = PartnerProductNames
        where
          (p.PRODUCT_CODE = AProductCode);
  
      exception
        when others then
          StateUtils.EndPfeUpdate;
          raise;
      end;
      StateUtils.EndPfeUpdate;
    end if;

  end RecalcPartnerProductNames;
  
  function ProductCompanyProductNames(ProductCode in Integer, CompanyCode in Integer := null) return VarChar2 is
    Result Varchar2(250 char);
  begin
    if (CompanyCode is null) or (CompanyCode = 0) then

      select
        p.PARTNER_PRODUCT_NAMES
      into
        Result
      from
        PRODUCTS p
      where
        (p.PRODUCT_CODE = ProductCode);

    else
    
      select
        Max(cp.NAME)  -- agregatnata funkcia e za da ne reve 'no data found'
      into
        Result
      from
        COMPANY_PRODUCTS cp
      where
        (cp.COMPANY_CODE = CompanyCode) and
        (cp.PRODUCT_CODE = ProductCode);
    
    end if;

    return Result;
  end ProductCompanyProductNames;

  procedure CheckProductPeriods(ProductCode in Number, ProductPeriodCode in Number := null) is
    IncorrectBeginDate Date;
    IncorrectEndDate Date;
  begin
    if (ProductCode <> StateUtils.SkipPeriodChecksProductCode) then
  
      select
        Min(pp2.BEGIN_DATE) keep (dense_rank first order by pp2.BEGIN_DATE, pp2.PRODUCT_PERIOD_CODE),
        Min(pp2.END_DATE) keep (dense_rank first order by pp2.BEGIN_DATE, pp2.PRODUCT_PERIOD_CODE)
      into
        IncorrectBeginDate,
        IncorrectEndDate 
      from
        PRODUCT_PERIODS pp1,
        PRODUCT_PERIODS pp2
      where
        (pp1.PRODUCT_CODE = ProductCode) and
        ( (ProductPeriodCode is null) or
          (pp1.PRODUCT_PERIOD_CODE = ProductPeriodCode) ) and
          
        (pp1.PRODUCT_CODE = pp2.PRODUCT_CODE) and
        (pp1.PRODUCT_PERIOD_CODE <> pp2.PRODUCT_PERIOD_CODE) and
        (pp1.BEGIN_DATE <= pp2.END_DATE) and
        (pp1.END_DATE >= pp2.BEGIN_DATE);
  
      if (IncorrectBeginDate is not null) and (IncorrectEndDate is not null) then
        raise_application_error(-20002,
          ServerMessages.SCrossedProductPeriodId || '(' ||
          'BeginDate:d=' || MessageUtils.InternalDateToStr(IncorrectBeginDate) || ', ' ||
          'EndDate:d=' || MessageUtils.InternalDateToStr(IncorrectEndDate) || ')'
        );
      end if;
      
      
      select
        Min(prpp.BEGIN_DATE) keep (dense_rank first order by prpp.BEGIN_DATE, prpp.PAR_REL_PRODUCT_PERIOD_CODE),
        Min(prpp.END_DATE) keep (dense_rank first order by prpp.BEGIN_DATE, prpp.PAR_REL_PRODUCT_PERIOD_CODE)
      into
        IncorrectBeginDate,
        IncorrectEndDate 
      from
        PAR_REL_PRODUCT_PERIODS prpp
      where
        (prpp.PRODUCT_CODE = ProductCode) and
        not exists(
          select
            1
          from
            PRODUCT_PERIODS pp
          where
            (pp.PRODUCT_CODE = prpp.PRODUCT_CODE) and
            (pp.BEGIN_DATE <= prpp.BEGIN_DATE) and
            (prpp.END_DATE <= pp.END_DATE)          
        );
        
      if (IncorrectBeginDate is not null) and (IncorrectEndDate is not null) then
        raise_application_error(-20002,
          ServerMessages.SIncorrectParRelProdPeriodId || '(' ||
          'BeginDate:d=' || MessageUtils.InternalDateToStr(IncorrectBeginDate) || ', ' ||
          'EndDate:d=' || MessageUtils.InternalDateToStr(IncorrectEndDate) || ')'
        );
      end if;

      -- check joined products
      select
        Min(pp.BEGIN_DATE) keep (dense_rank first order by pp.BEGIN_DATE, pp.PRODUCT_PERIOD_CODE),
        Min(pp.END_DATE) keep (dense_rank first order by pp.BEGIN_DATE, pp.PRODUCT_PERIOD_CODE)
      into
        IncorrectBeginDate,
        IncorrectEndDate 
      from
        DEFINITE_PRODUCTS dp,
        PRODUCT_PERIODS pp
      where
        (dp.COMMON_PRODUCT_CODE = ProductCode) and
        (pp.PRODUCT_CODE = dp.PRODUCT_CODE) and
        
        not exists(
          select
            1
          from
            PRODUCT_PERIODS pp2
          where
            (pp2.PRODUCT_CODE = ProductCode) and
            (pp2.BEGIN_DATE <= pp.BEGIN_DATE) and
            (pp.END_DATE <= pp2.END_DATE)          
        );

      if (IncorrectBeginDate is not null) and (IncorrectEndDate is not null) then
        raise_application_error(-20002,
          ServerMessages.SIncorrectJoinedProductPerId || '(' ||
          'BeginDate:d=' || MessageUtils.InternalDateToStr(IncorrectBeginDate) || ', ' ||
          'EndDate:d=' || MessageUtils.InternalDateToStr(IncorrectEndDate) || ')'
        );
      end if;

    end if;
  end;
  
  procedure CalcProductName(ProductCode in Number) is

    cursor ProductChildren is
      select
        p.PRODUCT_CODE,
        p.CUSTOM_CODE
      from
        PRODUCT_RELATIONS pr,
        PRODUCTS p
      where
        (pr.ANCESTOR_PRODUCT_CODE = ProductCode) and
        (pr.DESCENDANT_PRODUCT_CODE = p.PRODUCT_CODE)
      order by 
        pr.DESCENDANT_PRODUCT_CODE;

    cursor ProductParams(ProductCode in Number) is
      select
        pp.PRODUCT_PARAM_CODE,
        pp.IS_PART_OF_NAME,
        pp.IS_DEFINED,
        pp.PREFIX,
        pp.SUFFIX,
        pp.VALUE_TYPE,
        pp.VALUE_FLOAT,
        pp.VALUE_FLOAT_FORMAT,
        pp.VALUE_STRING,
        ni.NOM_ITEM_NAME as VALUE_NOM,
        Coalesce(ni.IS_NOT_PART_OF_NAME, 0) as IS_NOT_PART_OF_NAME,
        pp.IS_FOR_EXPORT,
        pp.EXPORT_IDENTIFIER
      from
        PRODUCT_PARAMS pp,
        NOM_ITEMS ni
      where
        (pp.PRODUCT_CODE = ProductCode) and
        (pp.VALUE_NOM_CODE = ni.NOM_CODE(+)) and
        (pp.VALUE_NOM_ITEM_CODE = ni.NOM_ITEM_CODE(+))      
      order by
        pp.PRODUCT_PARAM_ORDER_NO,
        pp.PRODUCT_PARAM_CODE;

    AllParams VarChar2(100 char);
    AllParamsExportData VarChar2(500 char);
    ParamValue VarChar2(100 char);
    ParamExportValue VarChar2(200 char);  -- 200 for json escapes
      
  begin      
    for Product in ProductChildren loop
  
      AllParams:= '';
      AllParamsExportData:= '';
      for Param in ProductParams(Product.PRODUCT_CODE) loop

        if (Param.IS_PART_OF_NAME <> 0) and (Param.IS_DEFINED <> 0) and (Param.IS_NOT_PART_OF_NAME = 0) then
      
          ParamValue:= '';
          if (Param.VALUE_TYPE = 0) then
            ParamValue:= Param.VALUE_NOM;
          elsif (Param.VALUE_TYPE = 1) then
            if (Param.VALUE_FLOAT_FORMAT is null) then
              ParamValue:= Param.VALUE_FLOAT;
            else
              ParamValue:= To_Char(Param.VALUE_FLOAT, 'FM9999999999' || Param.VALUE_FLOAT_FORMAT);
            end if;
          elsif (Param.VALUE_TYPE = 2) then
            ParamValue:= Param.VALUE_STRING;
          end if;

          if (Length(ParamValue) > 0) then
            AllParams:= AllParams || Param.PREFIX || ParamValue || Param.SUFFIX;
          end if;
        
        end if;   -- Is part of name

        if (Param.IS_FOR_EXPORT <> 0) and (Param.IS_DEFINED <> 0) then

          ParamExportValue:= '';
          if (Param.VALUE_TYPE = 0) then
            ParamExportValue:= Param.VALUE_NOM;
          elsif (Param.VALUE_TYPE = 1) then
            ParamExportValue:= Param.VALUE_FLOAT;
          elsif (Param.VALUE_TYPE = 2) then
            ParamExportValue:= Param.VALUE_STRING;
          end if;
          
          if (ParamExportValue is not null) then

            -- json escape            
            ParamExportValue:= Replace(ParamExportValue, '\', '\\');
            ParamExportValue:= Replace(ParamExportValue, '/', '\/');
            ParamExportValue:= Replace(ParamExportValue, '"', '\"');
            --
            
            if (AllParamsExportData is not null) then
              AllParamsExportData:= AllParamsExportData || ',';
            end if;

            AllParamsExportData:= AllParamsExportData || '"' || Param.EXPORT_IDENTIFIER || '":"' || ParamExportValue || '"';

            if (Length(AllParamsExportData) > (250 - 2)) then
             
              raise_application_error(-20002,
                ServerMessages.SParamsExportDataTooLongId || '(ProductNo:i=' || Product.CUSTOM_CODE || ')'
              );

            end if;
            
          end if;
          
        end if;

      end loop;   -- params

      if (AllParamsExportData is not null) then
        AllParamsExportData:= '{' || AllParamsExportData || '}';
      end if;

      update
        PRODUCTS_FOR_EDIT p
      set
        p.NAME = p.NAME_PREFIX || AllParams || p.NAME_SUFFIX,
        p.PARAMS_EXPORT_DATA = AllParamsExportData
      where
        (p.PRODUCT_CODE = Product.PRODUCT_CODE);
  
    end loop;   -- products
  end;

  procedure UpdateNomItemNames(NomCode in Number, NomItemCode in Number) is

    cursor Products is
      select
        pp1.PRODUCT_CODE
      
      from
        PRODUCT_PARAMS pp1
      
      where
        (pp1.VALUE_NOM_CODE = NomCode) and
        (pp1.VALUE_NOM_ITEM_CODE = NomItemCode) and

        not exists (select
                      p.PRODUCT_CODE
                    from
                      PRODUCTS p,
                      PRODUCT_PARAMS pp2
                    where
                      (p.PRODUCT_CODE = pp1.PRODUCT_CODE) and
                      (p.PARENT_CODE = pp2.PRODUCT_CODE) and

                      (pp2.VALUE_NOM_CODE = NomCode) and
                      (pp2.VALUE_NOM_ITEM_CODE = NomItemCode) 
                   );
                    
                    
  begin
    for Product in Products loop
      CalcProductName(Product.PRODUCT_CODE);
    end loop;  
  end;
  
  function GetParRelProductPrice(
    AProductCode in Number, 
    APartnerCode in Number,
    ABorderRelTypeCode in Number,
    AObtainmentTypeCode in Number,
    ADate in Date,
    AOverriddenPrice in Number := 0
  ) return TPriceRow is
    Result TPriceRow;
  begin 
    select
      Max(prppo.SINGLE_PRICE),
      Max(prppo.CURRENCY_CODE),
      Max(prppo.LEASE_DATE_UNIT_CODE),
      Max(Coalesce(prppo.PP_SINGLE_PRICE, prppo.SINGLE_PRICE)),
      Max(Coalesce(prppo.PRP_PRICE_MODIFIER, 1))
    into
      Result.PRICE,
      Result.CURRENCY_CODE,
      Result.DATE_UNIT_CODE,
      Result.UNMODIFIED_PRICE,
      Result.PRICE_MODIFIER
    from
      PAR_REL_PRODUCT_PERIODS prpp,
      PAR_REL_PRODUCT_PERIOD_OBTS prppo
    where
      (prpp.PARTNER_CODE = APartnerCode) and
      (prpp.BORDER_REL_TYPE_CODE = ABorderRelTypeCode) and
      (prpp.PRODUCT_CODE = AProductCode) and
      (ADate between prpp.BEGIN_DATE and prpp.END_DATE) and
      
      (prppo.PARTNER_CODE = prpp.PARTNER_CODE) and
      (prppo.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) and
      (prppo.PRODUCT_CODE = prpp.PRODUCT_CODE) and
      (prppo.PAR_REL_PRODUCT_PERIOD_CODE = prpp.PAR_REL_PRODUCT_PERIOD_CODE) and
      (prppo.OBTAINMENT_TYPE_CODE = AObtainmentTypeCode) and
      
      ( (AOverriddenPrice = 0) or 
        ( Decode(AObtainmentTypeCode,
            CommonConsts.otAcquire, prpp.OVERRIDE_ACQUIRE_PRICE,
            CommonConsts.otLease, prpp.OVERRIDE_LEASE_PRICE
          ) = 1
        ) 
      );
      
    return Result;
  end;
  
  function GetProductPartnerPrice(
    AProductCode in Number, 
    APartnerCode in Number,
    ABorderRelTypeCode in Number,
    AObtainmentTypeCode in Number,
    ADate in Date,
    ACompleteData in Number := 0
  ) return TPriceRow is
    SinglePrice Number;
    PriceModifier Number;
    CommonProductCode Number;
    CommonPartnerCode Number;
    CurrencyCode Number;
    DateUnitCode Number;
    Result TPriceRow;
  begin
    CommonProductCode:= null;
    
    if (AProductCode is not null) then
  
      if (APartnerCode is not null) then

        Result:= GetParRelProductPrice(AProductCode, APartnerCode, ABorderRelTypeCode, AObtainmentTypeCode, ADate, 0);

        if (Result.PRICE is null) then
        
          select
            Max(dp.COMMON_PRODUCT_CODE)
          into
            CommonProductCode
          from
            DEFINITE_PRODUCTS dp
          where
            (dp.PRODUCT_CODE = AProductCode);
        
          Result:= GetParRelProductPrice(CommonProductCode, APartnerCode, ABorderRelTypeCode, AObtainmentTypeCode, ADate, 1);
            
          if (Result.PRICE is null) then

            select
              pr.COMMON_PARTNER_CODE
            into
              CommonPartnerCode
            from
              PAR_RELS pr
            where
              (pr.PARTNER_CODE = APartnerCode) and
              (pr.BORDER_REL_TYPE_CODE = ABorderRelTypeCode);
          
            Result:= GetParRelProductPrice(AProductCode, CommonPartnerCode, ABorderRelTypeCode, AObtainmentTypeCode, ADate, 1);

            if (Result.PRICE is null) then
              Result:= GetParRelProductPrice(CommonProductCode, CommonPartnerCode, ABorderRelTypeCode, AObtainmentTypeCode, ADate, 1);
            end if;
          
          end if;
          
        end if;

      end if;  -- (APartnerCode is not null)
        
      if (Result.PRICE is null) then

        select
          Max(ppbro.SINGLE_PRICE),
          Max(ppbro.CURRENCY_CODE),
          Max(ppbro.LEASE_DATE_UNIT_CODE)
        into
          SinglePrice,
          CurrencyCode,
          DateUnitCode
        from
          PRODUCT_PERIODS pp,
          PRODUCT_PERIOD_BORDER_REL_OBTS ppbro
        where
          (ppbro.PRODUCT_CODE = pp.PRODUCT_CODE) and
          (ppbro.PRODUCT_PERIOD_CODE = pp.PRODUCT_PERIOD_CODE) and
          (ppbro.BORDER_REL_TYPE_CODE = ABorderRelTypeCode) and
          (ppbro.OBTAINMENT_TYPE_CODE = AObtainmentTypeCode) and
        
          (pp.PRODUCT_CODE = 
             Coalesce(
               ( select
                   pp2.PRODUCT_CODE
                 from
                   PRODUCT_PERIODS pp2
                 where
                   (pp2.PRODUCT_CODE = AProductCode) and
                   (Nvl(ADate, ContextDate) between pp2.BEGIN_DATE and pp2.END_DATE)
               ),
               ( select
                   dp.COMMON_PRODUCT_CODE
                 from
                   DEFINITE_PRODUCTS dp
                 where
                   (dp.PRODUCT_CODE = AProductCode)
               )
             )
          ) and
          (Nvl(ADate, ContextDate) between pp.BEGIN_DATE and pp.END_DATE);


        PriceModifier:= null;
        if (ABorderRelTypeCode = CommonConsts.brtClient) and
           (APartnerCode is not null) and 
           ( (SinglePrice is not null) or (ACompleteData = 1)) then
            
          select
            Min(
              Decode(AObtainmentTypeCode,
                CommonConsts.otAcquire, prppm.ACQUIRE_PRICE_MODIFIER,
                CommonConsts.otLease, prppm.LEASE_PRICE_MODIFIER
              )
            )
          into
            PriceModifier
          from
            PAR_REL_PERIODS prp,
            PRPER_PRICE_MODIFIERS prppm
          where
            (prp.PARTNER_CODE = APartnerCode) and
            (prp.BORDER_REL_TYPE_CODE = ABorderRelTypeCode) and
            (ADate between prp.BEGIN_DATE and prp.END_DATE) and
            
            (prppm.PARTNER_CODE = prp.PARTNER_CODE) and
            (prppm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) and
            (prppm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) and
            
            exists(
              select
                1
              from
                PRODUCT_SETS ps,
                PRODUCT_SET_PRODUCTS psp
              where
                (ps.PRODUCT_SET_CODE = prppm.PRODUCT_SET_CODE) and
                (ADate between ps.BEGIN_DATE and ps.END_DATE) and

                (psp.PRODUCT_SET_CODE = ps.PRODUCT_SET_CODE) and
                (psp.PRODUCT_CODE = AProductCode)  
            );


          if (PriceModifier is null) and (CommonPartnerCode is not null) then
                
            select
              Min(
                Decode(AObtainmentTypeCode,
                  CommonConsts.otAcquire, prppm.ACQUIRE_PRICE_MODIFIER,
                  CommonConsts.otLease, prppm.LEASE_PRICE_MODIFIER
                )
              )
            into
              PriceModifier
            from
              PAR_REL_PERIODS prp,
              PRPER_PRICE_MODIFIERS prppm
            where
              (prp.PARTNER_CODE = CommonPartnerCode) and
              (prp.BORDER_REL_TYPE_CODE = ABorderRelTypeCode) and
              (ADate between prp.BEGIN_DATE and prp.END_DATE) and
              
              (prppm.PARTNER_CODE = prp.PARTNER_CODE) and
              (prppm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) and
              (prppm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) and
              
              exists(
                select
                  1
                from
                  PRODUCT_SETS ps,
                  PRODUCT_SET_PRODUCTS psp
                where
                  (ps.PRODUCT_SET_CODE = prppm.PRODUCT_SET_CODE) and
                  (ADate between ps.BEGIN_DATE and ps.END_DATE) and

                  (psp.PRODUCT_SET_CODE = ps.PRODUCT_SET_CODE) and
                  (psp.PRODUCT_CODE = AProductCode)  
              );
              
          end if;
            
        end if;
          
          
        if (PriceModifier is null) then
          PriceModifier:= 1;
        end if;
        
        
        if (CurrencyCode is null) and 
           (ACompleteData = 1) and 
           (APartnerCode is not null) then
        
          select
            Min(prp.CURRENCY_CODE)
          into
            CurrencyCode
          from
            PAR_REL_PERIODS prp
          where
            (prp.PARTNER_CODE = APartnerCode) and
            (prp.BORDER_REL_TYPE_CODE = ABorderRelTypeCode) and
            (ADate between prp.BEGIN_DATE and prp.END_DATE);

          if (CurrencyCode is null) and (CommonPartnerCode is not null) then
                
            select
              Min(prp.CURRENCY_CODE)
            into
              CurrencyCode
            from
              PAR_REL_PERIODS prp
            where
              (prp.PARTNER_CODE = CommonPartnerCode) and
              (prp.BORDER_REL_TYPE_CODE = ABorderRelTypeCode) and
              (ADate between prp.BEGIN_DATE and prp.END_DATE);
              
          end if;
        
        end if;
        

        Result.PRICE:= SinglePrice * PriceModifier;
        Result.CURRENCY_CODE:= CurrencyCode;
        Result.DATE_UNIT_CODE:= DateUnitCode;
        Result.UNMODIFIED_PRICE:= SinglePrice;
        Result.PRICE_MODIFIER:= PriceModifier;

      end if;
      
    end if;  
      
    return Result;
  end;   
  
  function ParRelProductPrice2(
    AProductCode in Number, 
    APartnerCode in Number,
    ABorderRelTypeCode in Number,
    AObtainmentTypeCode in Number,
    ADate in Date,
    AOverriddenPrice in Number := 0
  ) return VarChar2 is
    pr TPriceRow;
  begin
    pr:= GetParRelProductPrice(AProductCode, APartnerCode, ABorderRelTypeCode, AObtainmentTypeCode, ADate, AOverriddenPrice);

    return 
      MiscUtils.NamedValuesToCompositeString(
        'PRICE', pr.PRICE, 
        'CURRENCY_CODE', pr.CURRENCY_CODE, 
        'DATE_UNIT_CODE', pr.DATE_UNIT_CODE,
        'UNMODIFIED_PRICE', pr.UNMODIFIED_PRICE,
        'PRICE_MODIFIER', pr.PRICE_MODIFIER);
  end;  
  
  function ProductPartnerPrice2(
    AProductCode in Number, 
    APartnerCode in Number,
    ABorderRelTypeCode in Number,
    AObtainmentTypeCode in Number,
    ADate in Date,
    ACompleteData in Number := 0
  ) return VarChar2 is
    pr TPriceRow;
  begin
    pr:= GetProductPartnerPrice(AProductCode, APartnerCode, ABorderRelTypeCode, AObtainmentTypeCode, ADate, ACompleteData);
      
    return 
      MiscUtils.NamedValuesToCompositeString(
        'PRICE', pr.PRICE, 
        'CURRENCY_CODE', pr.CURRENCY_CODE, 
        'DATE_UNIT_CODE', pr.DATE_UNIT_CODE,
        'UNMODIFIED_PRICE', pr.UNMODIFIED_PRICE,
        'PRICE_MODIFIER', pr.PRICE_MODIFIER);
  end;    
  
  function ProductPartnerBaseAcquirePrice(
    AProductCode in Number, 
    APartnerCode in Number,
    ABorderRelTypeCode in Number,
    ADate in Date
  ) return Number is
    ppp TPriceRow;
    Result Number;
  begin
    ppp:= GetProductPartnerPrice(AProductCode, APartnerCode, ABorderRelTypeCode, CommonConsts.otAcquire, ADate);
    
    if (ppp.PRICE is null) then
    
      Result:= null;
      
    else
      
      select
        Max(ppp.PRICE * cr.FIXING)
      into
        Result
      from
        CURRENCY_RATES cr
      where
        (cr.CURRENCY_CODE = ppp.CURRENCY_CODE) and
        (cr.RATE_DATE = Least(ADate, ContextDate));
    
    end if;
    
    return Result;
  end;
  
  procedure UpdProdSetProductsForProdSet(ProductSetCode in Integer) is
  begin

    if (ProductSetCode is null) then
      raise_application_error(-20000, 'Internal assertion: ProductUtils.UpdProdSetProductsForProdSet: Parameter ProductSetCode must have value');
    end if;

    delete
      TEMP_FILTERED_PRODUCTS;

    delete
      TEMP_FILTERED_PRODUCTS_2;

    begin      
      -- save old products    
      insert into TEMP_FILTERED_PRODUCTS_2 (PRODUCT_CODE)
      select
        psp.PRODUCT_CODE
      from
        PRODUCT_SET_PRODUCTS psp
      where
        (psp.PRODUCT_SET_CODE = ProductSetCode);
      --
      
      delete
        PRODUCT_SET_PRODUCTS psp
      where
        (psp.PRODUCT_SET_CODE = ProductSetCode);
        
      insert into PRODUCT_SET_PRODUCTS 
      (
        PRODUCT_SET_CODE,
        PRODUCT_CODE
      )
      select
        ps.PRODUCT_SET_CODE as PRODUCT_SET_CODE,
        pr.DESCENDANT_PRODUCT_CODE as PRODUCT_CODE

      from
        PRODUCT_SETS ps,
        PRODUCT_SET_CHOSEN_PRODUCTS pscp,
        PRODUCT_RELATIONS pr

      where
        (ps.PRODUCT_SET_CODE = ProductSetCode) and
        
        (pscp.PRODUCT_SET_CODE = ps.PRODUCT_SET_CODE) and
        
        (pr.ANCESTOR_PRODUCT_CODE = pscp.PRODUCT_CODE) and
      
        (not exists
          ( select
              1
            from
              PRODUCT_SET_CHOSEN_PROD_PARAMS pscpp
            where
              (pscpp.PRODUCT_SET_CODE = pscp.PRODUCT_SET_CODE) and
              (pscpp.PRODUCT_CODE = pscp.PRODUCT_CODE) and
              (not exists
                ( select
                    1
                  from
                    PRODUCT_PARAMS pp
                  where
                    (pp.PRODUCT_CODE = pr.DESCENDANT_PRODUCT_CODE) and
                    (pp.PRODUCT_PARAM_CODE = pscpp.PRODUCT_PARAM_CODE) and

                    (pp.IS_DEFINED = 1) and

                    ( (not exists
                        ( select
                            1
                          from
                            PRODUCT_SET_CHOSEN_PARAM_VALS pscpv
                          where
                            (pscpv.PRODUCT_SET_CODE = pscpp.PRODUCT_SET_CODE) and
                            (pscpv.PRODUCT_CODE = pscpp.PRODUCT_CODE) and
                            (pscpv.PRODUCT_PARAM_CODE = pscpp.PRODUCT_PARAM_CODE)
                        )
                      ) or
                      (exists
                        ( select
                            1
                          from
                            PRODUCT_SET_CHOSEN_PARAM_VALS pscpv
                          where
                            (pscpv.PRODUCT_SET_CODE = pscpp.PRODUCT_SET_CODE) and                        
                            (pscpv.PRODUCT_CODE = pscpp.PRODUCT_CODE) and
                            (pscpv.PRODUCT_PARAM_CODE = pscpp.PRODUCT_PARAM_CODE) and

                            ( ( (pp.VALUE_TYPE = 0) and
                                ( ( (pscpv.VALUE_NOM_CODE is null) and
                                    (pscpv.VALUE_NOM_ITEM_CODE is null)
                                  ) or
                                  ( (pp.VALUE_NOM_CODE = pscpv.VALUE_NOM_CODE) and
                                    (pp.VALUE_NOM_ITEM_CODE = pscpv.VALUE_NOM_ITEM_CODE)
                                  )
                                )
                              ) or
                              ( (pp.VALUE_TYPE = 1) and
                                ( (pscpv.VALUE_FLOAT_MIN is null) or
                                  (pp.VALUE_FLOAT >= pscpv.VALUE_FLOAT_MIN)
                                ) and
                                ( (pscpv.VALUE_FLOAT_MAX is null) or
                                  (pp.VALUE_FLOAT <= pscpv.VALUE_FLOAT_MAX)
                                )
                               ) or
                              ( (pp.VALUE_TYPE = 2) and
                                ( (pscpv.VALUE_STRING is null) or
                                  (pp.VALUE_STRING like (pscpv.VALUE_STRING || '%'))
                                )
                              )
                            )
                        )
                      )
                    )
                )
              )
          )
        );

      -- calc included and excluded products
      
      insert into TEMP_FILTERED_PRODUCTS (PRODUCT_CODE)
      ( select
          tfp.PRODUCT_CODE
        from
          TEMP_FILTERED_PRODUCTS_2 tfp
        minus
        select
          psp.PRODUCT_CODE
        from
          PRODUCT_SET_PRODUCTS psp
        where
          (psp.PRODUCT_SET_CODE = ProductSetCode)
      )
      union all
      ( select
          psp.PRODUCT_CODE
        from
          PRODUCT_SET_PRODUCTS psp
        where
          (psp.PRODUCT_SET_CODE = ProductSetCode)
        minus
        select
          tfp.PRODUCT_CODE
        from
          TEMP_FILTERED_PRODUCTS_2 tfp
      );
      --

      -- update modified products PAR_REL_PRODUCT_PERIODS prices
      update
        PAR_REL_PRODUCT_PERS_FOR_EDIT prpp
      set
        prpp.BEGIN_DATE = prpp.BEGIN_DATE
      where
        exists(
          select
            1
          from
            TEMP_FILTERED_PRODUCTS tfp
          where
            (tfp.PRODUCT_CODE = prpp.PRODUCT_CODE)
        ); 
      --

    exception
      when others then
        begin
          delete
            TEMP_FILTERED_PRODUCTS;

          delete
            TEMP_FILTERED_PRODUCTS_2;

          raise;
        end;
    end;

    delete
      TEMP_FILTERED_PRODUCTS;

    delete
      TEMP_FILTERED_PRODUCTS_2;
      
  end UpdProdSetProductsForProdSet;  
  
  procedure UpdProdSetProductsForProduct(ProductCode in Integer) is
  begin
  
    if (ProductCode is null) then
      raise_application_error(-20000, 'Internal assertion: ProductUtils.UpdProdSetProductsForProduct: Parameter ProductCode must have value');
    end if;
    
    delete
      PRODUCT_SET_PRODUCTS psp
    where
      (exists
        ( select
            1
          from
            PRODUCT_RELATIONS pr
          where
            (pr.ANCESTOR_PRODUCT_CODE = ProductCode) and 
            (pr.DESCENDANT_PRODUCT_CODE = psp.PRODUCT_CODE)
        )
      );
      
    insert into PRODUCT_SET_PRODUCTS 
    (
      PRODUCT_SET_CODE,
      PRODUCT_CODE
    )
    select
      ps.PRODUCT_SET_CODE as PRODUCT_SET_CODE,
      pr.DESCENDANT_PRODUCT_CODE as PRODUCT_CODE

    from
      PRODUCT_SETS ps,
      PRODUCT_SET_CHOSEN_PRODUCTS pscp,
      PRODUCT_RELATIONS pr

    where
      (pscp.PRODUCT_SET_CODE = ps.PRODUCT_SET_CODE) and

      (pr.ANCESTOR_PRODUCT_CODE = ProductCode) and    

      (exists
        ( select
            1
          from
            PRODUCT_RELATIONS pr2
          where
            (pr2.ANCESTOR_PRODUCT_CODE = pscp.PRODUCT_CODE) and
            (pr2.DESCENDANT_PRODUCT_CODE = pr.DESCENDANT_PRODUCT_CODE)
        ) 
      ) and      
    
      (not exists
        ( select
            1
          from
            PRODUCT_SET_CHOSEN_PROD_PARAMS pscpp
          where
            (pscpp.PRODUCT_SET_CODE = pscp.PRODUCT_SET_CODE) and
            (pscpp.PRODUCT_CODE = pscp.PRODUCT_CODE) and
            (not exists
              ( select
                  1
                from
                  PRODUCT_PARAMS pp
                where
                  (pp.PRODUCT_CODE = pr.DESCENDANT_PRODUCT_CODE) and
                  (pp.PRODUCT_PARAM_CODE = pscpp.PRODUCT_PARAM_CODE) and

                  (pp.IS_DEFINED = 1) and

                  ( (not exists
                      ( select
                          1
                        from
                          PRODUCT_SET_CHOSEN_PARAM_VALS pscpv
                        where
                          (pscpv.PRODUCT_SET_CODE = pscpp.PRODUCT_SET_CODE) and
                          (pscpv.PRODUCT_CODE = pscpp.PRODUCT_CODE) and
                          (pscpv.PRODUCT_PARAM_CODE = pscpp.PRODUCT_PARAM_CODE)
                      )
                    ) or
                    (exists
                      ( select
                          1
                        from
                          PRODUCT_SET_CHOSEN_PARAM_VALS pscpv
                        where
                          (pscpv.PRODUCT_SET_CODE = pscpp.PRODUCT_SET_CODE) and
                          (pscpv.PRODUCT_CODE = pscpp.PRODUCT_CODE) and
                          (pscpv.PRODUCT_PARAM_CODE = pscpp.PRODUCT_PARAM_CODE) and

                          ( ( (pp.VALUE_TYPE = 0) and
                              ( ( (pscpv.VALUE_NOM_CODE is null) and
                                  (pscpv.VALUE_NOM_ITEM_CODE is null)
                                ) or
                                ( (pp.VALUE_NOM_CODE = pscpv.VALUE_NOM_CODE) and
                                  (pp.VALUE_NOM_ITEM_CODE = pscpv.VALUE_NOM_ITEM_CODE)
                                )
                              )
                            ) or
                            ( (pp.VALUE_TYPE = 1) and
                              ( (pscpv.VALUE_FLOAT_MIN is null) or
                                (pp.VALUE_FLOAT >= pscpv.VALUE_FLOAT_MIN)
                              ) and
                              ( (pscpv.VALUE_FLOAT_MAX is null) or
                                (pp.VALUE_FLOAT <= pscpv.VALUE_FLOAT_MAX)
                              )
                             ) or
                            ( (pp.VALUE_TYPE = 2) and
                              ( (pscpv.VALUE_STRING is null) or
                                (pp.VALUE_STRING like (pscpv.VALUE_STRING || '%'))
                              )
                            )
                          )
                      )
                    )
                  )
              )
            )
        )
      );

    -- recalc PAR_REL_PRODUCT_PERIODS prices
    update
      PAR_REL_PRODUCT_PERS_FOR_EDIT prpp
    set
      prpp.BEGIN_DATE = prpp.BEGIN_DATE
    where
      (prpp.PRODUCT_CODE = ProductCode);
    
  end UpdProdSetProductsForProduct;    
  
  function IsPsdPriceFromDeliveryEx(
    AProductCode in Number, 
    AProductPeriodCode in Number
  ) return Number is
    Result Number;
  begin
    select
      ( select
          /*+ INDEX(pdo) */
          Coalesce(
            Min(pdo.IS_PSD_PRICE_FROM_DELIVERY) keep 
            (dense_rank last order by
              ( select 
                  Count(*) 
                from 
                  PRODUCT_RELATIONS pr2 
                where 
                  (pr2.DESCENDANT_PRODUCT_CODE = pr.ANCESTOR_PRODUCT_CODE) 
              ),
              ( select 
                  Count(*) 
                from 
                  DEPT_RELATIONS dr2 
                where 
                  (dr2.DESCENDANT_DEPT_CODE = dr.ANCESTOR_DEPT_CODE) 
              )
            ),
            pper.IS_PSD_PRICE_FROM_DELIVERY
          )      

        from
          PRODUCT_RELATIONS pr,
          DEPT_RELATIONS dr,
          PRODUCT_DEPT_OPTIONS pdo
          
        where
          (pr.DESCENDANT_PRODUCT_CODE = pper.PRODUCT_CODE) and
            
          (dr.DESCENDANT_DEPT_CODE = LoginContext.CurrentDeptCode) and
            
          (pdo.PRODUCT_CODE = pr.ANCESTOR_PRODUCT_CODE) and
          (pdo.DEPT_CODE = dr.ANCESTOR_DEPT_CODE) and
          (pdo.IS_PSD_PRICE_FROM_DELIVERY is not null)

      ) as IS_PSD_PRICE_FROM_DELIVERY_EX

    into
      Result

    from
      PRODUCT_PERIODS pper
      
    where
      (pper.PRODUCT_CODE = AProductCode) and
      (pper.PRODUCT_PERIOD_CODE = AProductPeriodCode);
      
    return Result;
      
  end;
  
  function PsdSinglePriceInBaseCurrencyEx(
    AProductCode in Number, 
    ADate in Date
  ) return Number is
    Result Number;
  begin

    select
      Max(
        Decode(
          IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE),
          1,
          ( pper.DELIVERY_ACQUIRE_SINGLE_PRICE *
            ( select
                cr.FIXING
              from
                CURRENCY_RATES cr
              where
                (cr.CURRENCY_CODE = pper.DELIVERY_ACQUIRE_CURRENCY_CODE) and
                (cr.RATE_DATE = Least(ADate, ContextDate))
            )
          ),
          pper.INVESTMENT_LEVEL_1_VALUE
        )
      )
    into
      Result
    from
      PRODUCT_PERIODS pper
    where
      (pper.PRODUCT_CODE =
        Coalesce(
          ( select
              pper2.PRODUCT_CODE
            from
              PRODUCT_PERIODS pper2
            where
              (pper2.PRODUCT_CODE = AProductCode) and
              (ContextDate between pper2.BEGIN_DATE and pper2.END_DATE)
          ),
          ( select
              dp.COMMON_PRODUCT_CODE
            from
              DEFINITE_PRODUCTS dp
            where
              (dp.PRODUCT_CODE = AProductCode)
          )
        )
      ) and
      (ADate between pper.BEGIN_DATE and pper.END_DATE);

    return Result;

  end;
  
end;
/
