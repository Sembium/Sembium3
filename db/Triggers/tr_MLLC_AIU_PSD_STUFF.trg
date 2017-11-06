create or replace trigger tr_MLLC_AIU_PSD_STUFF
  after insert or update on MATERIAL_LIST_LINE_CHANGES
  for each row
begin
  if not StateUtils.InMllUpdate then

    if (:new.MLL_CHANGE_REPLY_TYPE_CODE is null) then

      if (:new.N_PRODUCT_CODE is not null) and
         (:old.N_PRODUCT_CODE is null) then
        insert into PLANNED_STORE_DEALS_FOR_EDIT (
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
          CLOSE_EMPLOYEE_CODE,
          CLOSE_DATE,
          CLOSE_TIME,
          ANNUL_EMPLOYEE_CODE,
          ANNUL_DATE,
          ANNUL_TIME
        )
        
        select
          :new.MLL_OBJECT_BRANCH_CODE as PLANNED_STORE_DEAL_BRANCH_CODE,
          seq_PLANNED_STORE_DEALS.NEXTVAL as PLANNED_STORE_DEAL_CODE,
          2 as PLANNED_STORE_DEAL_TYPE_CODE,
          851 as STORE_DEAL_TYPE_CODE,
          sg.PRIORITY_CODE as PRIORITY_CODE,
          0 as IS_PLANNED_MANUALLY,
          :new.MLL_OBJECT_BRANCH_CODE as BND_PROCESS_OBJECT_BRANCH_CODE,
          :new.MLL_OBJECT_CODE as BND_PROCESS_OBJECT_CODE,
          61 as BND_PROCESS_CODE,
          :new.N_STORE_CODE,
          :new.N_PRODUCT_NEED_BEGIN_DATE as STORE_DEAL_BEGIN_DATE,
          :new.N_PRODUCT_NEED_END_DATE as STORE_DEAL_END_DATE,
          :new.N_PRODUCT_CODE,
          (:new.N_PRODUCT_TECH_QUANTITY * 
           :new.N_LINE_DETAIL_TECH_QUANTITY / 
           p.TECH_MEASURE_COEF) as QUANTITY,
          (:new.N_PRODUCT_TECH_QUANTITY * 
           :new.N_LINE_DETAIL_TECH_QUANTITY / 
           p.TECH_MEASURE_COEF *
           p.ACCOUNT_MEASURE_COEF
          ) as ACCOUNT_QUANTITY,
          LoginContext.UserCode as CREATE_EMPLOYEE_CODE,
          ContextDate as CREATE_DATE,
          ContextTime as CREATE_TIME,
          LoginContext.UserCode as CHANGE_EMPLOYEE_CODE,
          ContextDate as CHANGE_DATE,
          ContextTime as CHANGE_TIME,
          Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, LoginContext.UserCode) as CLOSE_EMPLOYEE_CODE,
          Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, ContextDate) as CLOSE_DATE,
          Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, ContextTime) as CLOSE_TIME,
          mll.ANNUL_EMPLOYEE_CODE,
          mll.ANNUL_DATE,
          mll.ANNUL_TIME
        from
          PRODUCTS p,
          MATERIAL_LIST_LINES mll,
          MATERIAL_LISTS ml,
          SALES s,
          SALE_GROUPS sg
        where
          (p.PRODUCT_CODE = :new.N_PRODUCT_CODE) and
          
          (:new.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
          (:new.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
          
          (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
          (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
          
          (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) and
          (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and
          
          (s.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRANCH_CODE) and
          (s.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE)
        ;
      end if;

      if (:new.O_PRODUCT_CODE is not null) and
         (:old.O_PRODUCT_CODE is null) then
        insert into PLANNED_STORE_DEALS_FOR_EDIT (
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
          CLOSE_EMPLOYEE_CODE,
          CLOSE_DATE,
          CLOSE_TIME,
          ANNUL_EMPLOYEE_CODE,
          ANNUL_DATE,
          ANNUL_TIME
        )
        
        select
          :new.MLL_OBJECT_BRANCH_CODE as PLANNED_STORE_DEAL_BRANCH_CODE,
          seq_PLANNED_STORE_DEALS.NEXTVAL as PLANNED_STORE_DEAL_CODE,
          2 as PLANNED_STORE_DEAL_TYPE_CODE,
          811 as STORE_DEAL_TYPE_CODE,
          sg.PRIORITY_CODE as PRIORITY_CODE,
          0 as IS_PLANNED_MANUALLY,
          :new.MLL_OBJECT_BRANCH_CODE as BND_PROCESS_OBJECT_BRANCH_CODE,
          :new.MLL_OBJECT_CODE as BND_PROCESS_OBJECT_CODE,
          61 as BND_PROCESS_CODE,
          :new.O_STORE_CODE,
          :new.O_PRODUCT_NEED_BEGIN_DATE as STORE_DEAL_BEGIN_DATE,
          :new.O_PRODUCT_NEED_END_DATE as STORE_DEAL_END_DATE,
          :new.O_PRODUCT_CODE,
          (:new.O_PRODUCT_TECH_QUANTITY * 
           :new.O_LINE_DETAIL_TECH_QUANTITY / 
           p.TECH_MEASURE_COEF) as QUANTITY,
          (:new.O_PRODUCT_TECH_QUANTITY * 
           :new.O_LINE_DETAIL_TECH_QUANTITY / 
           p.TECH_MEASURE_COEF *
           p.ACCOUNT_MEASURE_COEF
          ) as ACCOUNT_QUANTITY,
          LoginContext.UserCode as CREATE_EMPLOYEE_CODE,
          ContextDate as CREATE_DATE,
          ContextTime as CREATE_TIME,
          LoginContext.UserCode as CHANGE_EMPLOYEE_CODE,
          ContextDate as CHANGE_DATE,
          ContextTime as CHANGE_TIME,
          Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, LoginContext.UserCode) as CLOSE_EMPLOYEE_CODE,
          Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, ContextDate) as CLOSE_DATE,
          Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, ContextTime) as CLOSE_TIME,
          mll.ANNUL_EMPLOYEE_CODE,
          mll.ANNUL_DATE,
          mll.ANNUL_TIME
        from
          PRODUCTS p,
          MATERIAL_LIST_LINES mll,
          MATERIAL_LISTS ml,
          SALES s,
          SALE_GROUPS sg
        where
          (p.PRODUCT_CODE = :new.O_PRODUCT_CODE) and
          
          (:new.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
          (:new.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
          
          (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
          (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
          
          (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) and
          (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and
          
          (s.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRANCH_CODE) and
          (s.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE)
        ;
      end if;

      if (:new.N_PRODUCT_CODE is not null) and
         (:old.N_PRODUCT_CODE is not null) then
       
        update
          PLANNED_STORE_DEALS_FOR_EDIT psd
        set
          (
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
            CHANGE_EMPLOYEE_CODE,
            CHANGE_DATE,
            CHANGE_TIME,
            CLOSE_EMPLOYEE_CODE,
            CLOSE_DATE,
            CLOSE_TIME,
            ANNUL_EMPLOYEE_CODE,
            ANNUL_DATE,
            ANNUL_TIME
          ) = 
          (
            select
              2 as PLANNED_STORE_DEAL_TYPE_CODE,
              851 as STORE_DEAL_TYPE_CODE,
              sg.PRIORITY_CODE as PRIORITY_CODE,
              0 as IS_PLANNED_MANUALLY,
              :new.MLL_OBJECT_BRANCH_CODE as BND_PROCESS_OBJECT_BRANCH_CODE,
              :new.MLL_OBJECT_CODE as BND_PROCESS_OBJECT_CODE,
              61 as BND_PROCESS_CODE,
              :new.N_STORE_CODE,
              :new.N_PRODUCT_NEED_BEGIN_DATE as STORE_DEAL_BEGIN_DATE,
              :new.N_PRODUCT_NEED_END_DATE as STORE_DEAL_END_DATE,
              :new.N_PRODUCT_CODE,
              (:new.N_PRODUCT_TECH_QUANTITY * 
               :new.N_LINE_DETAIL_TECH_QUANTITY / 
               p.TECH_MEASURE_COEF) as QUANTITY,
              (:new.N_PRODUCT_TECH_QUANTITY * 
               :new.N_LINE_DETAIL_TECH_QUANTITY / 
               p.TECH_MEASURE_COEF *
               p.ACCOUNT_MEASURE_COEF
              ) as ACCOUNT_QUANTITY,
              LoginContext.UserCode as CHANGE_EMPLOYEE_CODE,
              ContextDate as CHANGE_DATE,
              ContextTime as CHANGE_TIME,
              Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, LoginContext.UserCode) as CLOSE_EMPLOYEE_CODE,
              Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, ContextDate) as CLOSE_DATE,
              Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, ContextTime) as CLOSE_TIME,
              mll.ANNUL_EMPLOYEE_CODE,
              mll.ANNUL_DATE,
              mll.ANNUL_TIME
            from
              PRODUCTS p,
              MATERIAL_LIST_LINES mll,
              MATERIAL_LISTS ml,
              SALES s,
              SALE_GROUPS sg
            where
              (p.PRODUCT_CODE = :new.N_PRODUCT_CODE) and
              
              (:new.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
              (:new.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
              
              (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
              (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
              
              (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) and
              (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and
              
              (s.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRANCH_CODE) and
              (s.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE)
          )
        where
          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
          (psd.BND_PROCESS_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
          (psd.PLANNED_STORE_DEAL_TYPE_CODE = 2) and
          (psd.IS_PLANNED_MANUALLY = 0) and
          (psd.STORE_DEAL_TYPE_CODE = 851);
      end if;
    
      if (:new.O_PRODUCT_CODE is not null) and
         (:old.O_PRODUCT_CODE is not null) then
       
        update
          PLANNED_STORE_DEALS_FOR_EDIT psd
        set
          (
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
            CHANGE_EMPLOYEE_CODE,
            CHANGE_DATE,
            CHANGE_TIME,
            CLOSE_EMPLOYEE_CODE,
            CLOSE_DATE,
            CLOSE_TIME,
            ANNUL_EMPLOYEE_CODE,
            ANNUL_DATE,
            ANNUL_TIME
          ) = 
          (
            select
              2 as PLANNED_STORE_DEAL_TYPE_CODE,
              811 as STORE_DEAL_TYPE_CODE,
              sg.PRIORITY_CODE as PRIORITY_CODE,
              0 as IS_PLANNED_MANUALLY,
              :new.MLL_OBJECT_BRANCH_CODE as BND_PROCESS_OBJECT_BRANCH_CODE,
              :new.MLL_OBJECT_CODE as BND_PROCESS_OBJECT_CODE,
              61 as BND_PROCESS_CODE,
              :new.O_STORE_CODE,
              :new.O_PRODUCT_NEED_BEGIN_DATE as STORE_DEAL_BEGIN_DATE,
              :new.O_PRODUCT_NEED_END_DATE as STORE_DEAL_END_DATE,
              :new.O_PRODUCT_CODE,
              (:new.O_PRODUCT_TECH_QUANTITY * 
               :new.O_LINE_DETAIL_TECH_QUANTITY / 
               p.TECH_MEASURE_COEF) as QUANTITY,
              (:new.O_PRODUCT_TECH_QUANTITY * 
               :new.O_LINE_DETAIL_TECH_QUANTITY / 
               p.TECH_MEASURE_COEF *
               p.ACCOUNT_MEASURE_COEF
              ) as ACCOUNT_QUANTITY,
              LoginContext.UserCode as CHANGE_EMPLOYEE_CODE,
              ContextDate as CHANGE_DATE,
              ContextTime as CHANGE_TIME,
              Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, LoginContext.UserCode) as CLOSE_EMPLOYEE_CODE,
              Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, ContextDate) as CLOSE_DATE,
              Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, ContextTime) as CLOSE_TIME,
              mll.ANNUL_EMPLOYEE_CODE,
              mll.ANNUL_DATE,
              mll.ANNUL_TIME
            from
              PRODUCTS p,
              MATERIAL_LIST_LINES mll,
              MATERIAL_LISTS ml,
              SALES s,
              SALE_GROUPS sg
            where
              (p.PRODUCT_CODE = :new.O_PRODUCT_CODE) and
              
              (:new.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
              (:new.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
              
              (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
              (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
              
              (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) and
              (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and
              
              (s.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRANCH_CODE) and
              (s.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE)
          )
        where
          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
          (psd.BND_PROCESS_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
          (psd.PLANNED_STORE_DEAL_TYPE_CODE = 2) and
          (psd.IS_PLANNED_MANUALLY = 0) and
          (psd.STORE_DEAL_TYPE_CODE = 811);
      end if;
    
    end if;
    
    
    if (:new.MLL_CHANGE_REPLY_TYPE_CODE is not null) and
       (:old.MLL_CHANGE_REPLY_TYPE_CODE is null) then
         
      delete
        PLANNED_STORE_DEALS_FOR_EDIT psd
      where
        (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
        (psd.BND_PROCESS_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
        (psd.PLANNED_STORE_DEAL_TYPE_CODE = 2) and
        (psd.IS_PLANNED_MANUALLY = 0);
        
    end if;
    
    if (:new.N_PRODUCT_CODE is null) and
       (:old.N_PRODUCT_CODE is not null) then

      delete
        PLANNED_STORE_DEALS_FOR_EDIT psd
      where
        (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
        (psd.BND_PROCESS_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
        (psd.PLANNED_STORE_DEAL_TYPE_CODE = 2) and
        (psd.IS_PLANNED_MANUALLY = 0) and
        (psd.STORE_DEAL_TYPE_CODE = 851);
    
    end if;

    if (:new.O_PRODUCT_CODE is null) and
       (:old.O_PRODUCT_CODE is not null) then

      delete
        PLANNED_STORE_DEALS_FOR_EDIT psd
      where
        (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
        (psd.BND_PROCESS_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
        (psd.PLANNED_STORE_DEAL_TYPE_CODE = 2) and
        (psd.IS_PLANNED_MANUALLY = 0) and
        (psd.STORE_DEAL_TYPE_CODE = 811);
    
    end if;

  end if;
end tr_MLLC_AIU_PSD_STUFF;
/
