create or replace package StoreRecalcDefferUtils is

  procedure StartStoreRecalcDeffer;
  procedure ApplyStoreRecalcDeffer;
  procedure CancelStoreRecalcDeffer;

  function InStoreRecalcDeffer return Boolean;

  procedure StoreRecalcDeffer(
    AProductCode in Number,
    AStoreCode in Number,
    AStoreDealDate in Date
  );
    
end;
/
create or replace package body StoreRecalcDefferUtils is

  FInStoreRecalcDeffer Boolean := False;

  type TProductAndStore is record (
    ProductCode STORE_DEALS.PRODUCT_CODE%TYPE,
    StoreCode STORE_DEALS.STORE_CODE%TYPE,
    MinStoreDealDate STORE_DEALS.STORE_DEAL_DATE%TYPE
  );

  type TProductAndStoreList is table of TProductAndStore;
  
  ProductAndStoreList TProductAndStoreList:= TProductAndStoreList();

  function InStoreRecalcDeffer return Boolean is
  begin
    return FInStoreRecalcDeffer;
  end;

  procedure BeginStoreRecalcDeffer is
  begin
    if FInStoreRecalcDeffer then
      raise_application_error(-20000, 'Internal error: Already in StoreRecalcDeffer');
    end if;

    FInStoreRecalcDeffer:= True;
  end;

  procedure EndStoreRecalcDeffer is
  begin
    if not FInStoreRecalcDeffer then
      raise_application_error(-20000, 'Internal error: Not in StoreRecalcDeffer');
    end if;

    FInStoreRecalcDeffer:= False;
  end;

  function FindProductAndStore(
    AProductCode in Number,
    AStoreCode in Number
  ) return Number is
    Result Number;
  begin
    Result:= -1;
    
    if (ProductAndStoreList.Count > 0) then

      for i in ProductAndStoreList.First..ProductAndStoreList.Last loop
        
        if (ProductAndStoreList(i).ProductCode = AProductCode) and
           (ProductAndStoreList(i).StoreCode = AStoreCode) then
           
          Result:= i;           
          exit;
          
        end if;
  
      end loop;
      
    end if;  
    
    return Result;
  end;

  procedure AddProductAndStore(
    AProductCode in Number,
    AStoreCode in Number,
    AStoreDealDate in Date
  ) is
    ProductAndStore TProductAndStore;
  begin
    ProductAndStore.ProductCode:= AProductCode;
    ProductAndStore.StoreCode:= AStoreCode;
    ProductAndStore.MinStoreDealDate:= AStoreDealDate;
    
    ProductAndStoreList.Extend;
    ProductAndStoreList(ProductAndStoreList.Last):= ProductAndStore;
  end;

  procedure StoreRecalcDeffer(
    AProductCode in Number,
    AStoreCode in Number,
    AStoreDealDate in Date
  ) is
    ProductAndStoreIndex Number;
  begin
    ProductAndStoreIndex:= FindProductAndStore(AProductCode, AStoreCode);
    
    if (ProductAndStoreIndex = -1) then
      AddProductAndStore(AProductCode, AStoreCode, AStoreDealDate);
    else
      ProductAndStoreList(ProductAndStoreIndex).MinStoreDealDate:= 
        Least(ProductAndStoreList(ProductAndStoreIndex).MinStoreDealDate, AStoreDealDate);
    end if;
  end;
  
  procedure ReCalcAndReAggrProdAndStores is
  begin
    if (ProductAndStoreList.Count > 0) then

      for i in ProductAndStoreList.First..ProductAndStoreList.Last loop
      
        StoreUtils.ReCalcAndReAggrStoreDeals(
          ProductAndStoreList(i).ProductCode,
          ProductAndStoreList(i).StoreCode,
          ProductAndStoreList(i).MinStoreDealDate
        );
  
      end loop;
      
    end if;  
  end;
  
  procedure ResetProductAndStoreLog is
  begin
    ProductAndStoreList.Delete;
  end;
  
  procedure StartStoreRecalcDeffer is
  begin
    BeginStoreRecalcDeffer;
    ResetProductAndStoreLog;
  end;
  
  procedure ApplyStoreRecalcDeffer is
  begin
    EndStoreRecalcDeffer;
    begin
      
      StateUtils.BeginSdfeUpdate;
      begin
      
        ReCalcAndReAggrProdAndStores;
        
      exception
        when others then
          StateUtils.EndSdfeUpdate;
          raise;
      end;
      StateUtils.EndSdfeUpdate;
      
    exception
      when others then
        begin
          BeginStoreRecalcDeffer;
          raise;
        end;
    end;
    
    ResetProductAndStoreLog;
  end;  
  
  procedure CancelStoreRecalcDeffer is
  begin
    if InStoreRecalcDeffer then
      
      ResetProductAndStoreLog;
      EndStoreRecalcDeffer;
      
    end if;
  end;  
  
end;
/
