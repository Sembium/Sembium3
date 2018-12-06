begin

for x in
(
select
  aa.PRODUCT_CODE,
  aa.STORE_CODE,
  aa.REAL_QUANTITY,
  s.QTY,
  MiscUtils.LargeZero(aa.REAL_QUANTITY - s.QTY) as DIFF
--  Count(*)
from
(
select
  a.PRODUCT_CODE,
  a.STORE_CODE,
  (select
      asd2.REAL_QUANTITY
    from
      AGGR_STORE_DEALS asd2
    where
      (asd2.PRODUCT_CODE = a.PRODUCT_CODE) and
      (asd2.STORE_CODE = a.STORE_CODE) and
      (asd2.STORE_DEAL_DATE = a.STORE_DEAL_DATE)  
  ) as REAL_QUANTITY
from
  ( select
      asd.PRODUCT_CODE,
      asd.STORE_CODE,
      Max(asd.STORE_DEAL_DATE) as STORE_DEAL_DATE
    from
      AGGR_STORE_DEALS asd
    group by
      asd.PRODUCT_CODE,
      asd.STORE_CODE
  ) a
) aa,
(
select
  sd.PRODUCT_CODE,
  sd.STORE_CODE, 
  Sum(sd.QUANTITY * sd.IN_OUT) as QTY
from
  STORE_DEALS sd
where
  (sd.STORNO_EMPLOYEE_CODE is null)
group by
  sd.PRODUCT_CODE,
  sd.STORE_CODE
) s

where
  (aa.PRODUCT_CODE = s.PRODUCT_CODE) and
  (aa.STORE_CODE = s.STORE_CODE) and
  (MiscUtils.LargeZero(aa.REAL_QUANTITY - s.QTY) <> 0)
order by
  DIFF
)

loop

  delete
    AGGR_STORE_DEALS asd
  where
    (asd.PRODUCT_CODE = x.PRODUCT_CODE) and
    (asd.STORE_CODE = x.STORE_CODE);
  
  StoreUtils.ReAggrStoreDeals(x.PRODUCT_CODE, x.STORE_CODE, To_date('01.01.1998', 'dd.mm.yyyy'));

  for y in
    ( select
        psd.*
      from
        PLANNED_STORE_DEALS psd
      where
        (psd.IS_ACTIVE = 1) and
        (psd.PRODUCT_CODE = x.PRODUCT_CODE) and
        (psd.STORE_CODE = x.STORE_CODE)
      order by
        psd.STORE_DEAL_BEGIN_DATE,
        psd.IN_OUT,
        psd.PLANNED_STORE_DEAL_CODE
    
    ) loop
    
      StoreUtils.DistributePlannedStoreDeal(
        y.PRODUCT_CODE,
        y.STORE_CODE,
        y.IN_OUT,
        1,
        y.STORE_DEAL_BEGIN_DATE,
        y.STORE_DEAL_END_DATE,
        y.QUANTITY,
        y.REMAINING_QUANTITY,
        y.PLANNED_STORE_DEAL_TYPE_CODE
      );
    
    
  end loop;


end loop;

end;
