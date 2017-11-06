create or replace trigger tr_MLL_AIU_ADD_MLLC
  after insert or update on MATERIAL_LIST_LINES  
  for each row
declare
  NewMllChangeNo number;  
begin
  if (not StateUtils.InMllUpdate) and
     ( ((:new.DETAIL_CODE is null) <> (:old.DETAIL_CODE is null)) or
       (:new.DETAIL_CODE <> :old.DETAIL_CODE) or
       ((:new.DETAIL_TECH_QUANTITY is null) <> (:old.DETAIL_TECH_QUANTITY is null)) or
       (:new.DETAIL_TECH_QUANTITY <> :old.DETAIL_TECH_QUANTITY) or
       ((:new.TOTAL_DETAIL_TECH_QUANTITY is null) <> (:old.TOTAL_DETAIL_TECH_QUANTITY is null)) or
       (:new.TOTAL_DETAIL_TECH_QUANTITY <> :old.TOTAL_DETAIL_TECH_QUANTITY) or
       ((:new.LINE_DETAIL_TECH_QUANTITY is null) <> (:old.LINE_DETAIL_TECH_QUANTITY is null)) or
       (:new.LINE_DETAIL_TECH_QUANTITY <> :old.LINE_DETAIL_TECH_QUANTITY) or
       ((:new.PRODUCT_CODE is null) <> (:old.PRODUCT_CODE is null)) or
       (:new.PRODUCT_CODE <> :old.PRODUCT_CODE) or
       ((:new.PRODUCT_TECH_QUANTITY is null) <> (:old.PRODUCT_TECH_QUANTITY is null)) or
       (:new.PRODUCT_TECH_QUANTITY <> :old.PRODUCT_TECH_QUANTITY) or
       ((:new.STORE_CODE is null) <> (:old.STORE_CODE is null)) or
       (:new.STORE_CODE <> :old.STORE_CODE) or
       ((:new.PRODUCT_NEED_BEGIN_DATE is null) <> (:old.PRODUCT_NEED_BEGIN_DATE is null)) or
       (:new.PRODUCT_NEED_BEGIN_DATE <> :old.PRODUCT_NEED_BEGIN_DATE) or
       ((:new.PRODUCT_NEED_END_DATE is null) <> (:old.PRODUCT_NEED_END_DATE is null)) or
       (:new.PRODUCT_NEED_END_DATE <> :old.PRODUCT_NEED_END_DATE)
     ) then
  
    StateUtils.BeginMllUpdate;
    begin
      select
        Coalesce(Max(MATERIAL_LIST_LINE_CHANGE_NO), 0) + 1
      into
        NewMllChangeNo
      from
        MATERIAL_LIST_LINE_CHANGES mllc
      where
        (mllc.MLL_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
        (mllc.MLL_OBJECT_CODE = :new.MLL_OBJECT_CODE);
    
      insert into MATERIAL_LIST_LINE_CHANGES (
        MLL_OBJECT_BRANCH_CODE, 
        MLL_OBJECT_CODE, 
        MATERIAL_LIST_LINE_CHANGE_NO, 
        N_DETAIL_CODE, 
        N_PRODUCT_CODE, 
        N_DETAIL_TECH_QUANTITY, 
        N_PRODUCT_TECH_QUANTITY, 
        N_TOTAL_DETAIL_TECH_QUANTITY, 
        N_LINE_DETAIL_TECH_QUANTITY, 
        N_PRODUCT_NEED_BEGIN_DATE, 
        N_STORE_CODE, 
        N_PRODUCT_NEED_END_DATE, 

        O_DETAIL_CODE, 
        O_PRODUCT_CODE, 
        O_DETAIL_TECH_QUANTITY, 
        O_PRODUCT_TECH_QUANTITY, 
        O_TOTAL_DETAIL_TECH_QUANTITY, 
        O_LINE_DETAIL_TECH_QUANTITY, 
        O_PRODUCT_NEED_BEGIN_DATE, 
        O_STORE_CODE, 
        O_PRODUCT_NEED_END_DATE, 

        REQUEST_EMPLOYEE_CODE,
        REQUEST_DATE,
        REQUEST_TIME
      )
      values (
        :new.MLL_OBJECT_BRANCH_CODE, 
        :new.MLL_OBJECT_CODE, 
        NewMllChangeNo,
        :new.DETAIL_CODE, 
        :new.PRODUCT_CODE, 
        :new.DETAIL_TECH_QUANTITY, 
        :new.PRODUCT_TECH_QUANTITY, 
        :new.TOTAL_DETAIL_TECH_QUANTITY, 
        :new.LINE_DETAIL_TECH_QUANTITY, 
        :new.PRODUCT_NEED_BEGIN_DATE, 
        :new.STORE_CODE, 
        :new.PRODUCT_NEED_END_DATE, 

        :old.DETAIL_CODE, 
        :old.PRODUCT_CODE, 
        :old.DETAIL_TECH_QUANTITY, 
        :old.PRODUCT_TECH_QUANTITY, 
        :old.TOTAL_DETAIL_TECH_QUANTITY, 
        :old.LINE_DETAIL_TECH_QUANTITY, 
        :old.PRODUCT_NEED_BEGIN_DATE, 
        :old.STORE_CODE, 
        :old.PRODUCT_NEED_END_DATE, 

        LoginContext.UserCode,
        ContextDate,
        ContextTime
      );
      
      update
        MATERIAL_LIST_LINE_CHANGES mllc
      set
        mllc.MLL_CHANGE_REPLY_TYPE_CODE = ModelUtils.crtChangeAutoAccepted,

        mllc.REPLY_EMPLOYEE_CODE = LoginContext.UserCode,
        mllc.REPLY_DATE = ContextDate,
        mllc.REPLY_TIME = ContextTime,

        mllc.REPLY_ACCEPT_EMPLOYEE_CODE = LoginContext.UserCode,
        mllc.REPLY_ACCEPT_DATE = ContextDate,
        mllc.REPLY_ACCEPT_TIME = ContextTime
      where
        (mllc.MLL_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
        (mllc.MLL_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
        (mllc.MATERIAL_LIST_LINE_CHANGE_NO = NewMllChangeNo);
      
    exception
      when others then
        StateUtils.EndMllUpdate;
        raise;
    end;
    StateUtils.EndMllUpdate;
    
  end if;
end tr_MLL_AIU_ADD_MLLC;
/
