create or replace trigger tr_SFMFE_IIU
  instead of insert or update on SPEC_FIN_MODELS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSfmfeUpdate then
    StateUtils.BeginSfmfeUpdate;
    begin
    
      if inserting then
    
        insert into SPEC_FIN_MODELS
        (
          SPEC_FIN_MODEL_CODE, 
          PARTNER_CODE, 
          BORDER_REL_TYPE_CODE, 
          PAR_REL_PERIOD_CODE, 
          FINANCIAL_PRODUCT_CODE, 
          SPEC_FIN_MODEL_NAME, 
          IS_EST_MODEL, 
          EST_MODEL_PARTNER_CODE, 
          EST_MODEL_BORDER_REL_TYPE_CODE, 
          EST_MODEL_PAR_REL_PERIOD_CODE, 
          AUTHORIZE_EMPLOYEE_CODE, 
          AUTHORIZE_DATE, 
          AUTHORIZE_TIME, 
          CREATE_EMPLOYEE_CODE, 
          CREATE_DATE, 
          CREATE_TIME, 
          CHANGE_EMPLOYEE_CODE, 
          CHANGE_DATE, 
          CHANGE_TIME,
          FM_MOVEMENT_OFFSET_TYPE_CODE,
          EXEC_DEPT_CODE
        )
        values
        (
          :new.SPEC_FIN_MODEL_CODE, 
          :new.PARTNER_CODE, 
          :new.BORDER_REL_TYPE_CODE, 
          :new.PAR_REL_PERIOD_CODE, 
          :new.FINANCIAL_PRODUCT_CODE, 
          :new.SPEC_FIN_MODEL_NAME, 
          :new.IS_EST_MODEL, 
          :new.EST_MODEL_PARTNER_CODE, 
          :new.EST_MODEL_BORDER_REL_TYPE_CODE, 
          :new.EST_MODEL_PAR_REL_PERIOD_CODE, 
          :new.AUTHORIZE_EMPLOYEE_CODE, 
          :new.AUTHORIZE_DATE, 
          :new.AUTHORIZE_TIME, 
          :new.CREATE_EMPLOYEE_CODE, 
          :new.CREATE_DATE, 
          :new.CREATE_TIME, 
          :new.CHANGE_EMPLOYEE_CODE, 
          :new.CHANGE_DATE, 
          :new.CHANGE_TIME,
          :new.FM_MOVEMENT_OFFSET_TYPE_CODE,
          :new.EXEC_DEPT_CODE
        );
        
      end if;

      if updating then
      
        if (:new.SPEC_FIN_MODEL_CODE <> :old.SPEC_FIN_MODEL_CODE) then
          raise_application_error(-20000, 'Internal error: SPEC_FIN_MODELS key should not be changed');
        end if;

        update
          SPEC_FIN_MODELS sfm
        set
          sfm.PARTNER_CODE = :new.PARTNER_CODE, 
          sfm.BORDER_REL_TYPE_CODE = :new.BORDER_REL_TYPE_CODE, 
          sfm.PAR_REL_PERIOD_CODE = :new.PAR_REL_PERIOD_CODE, 
          sfm.FINANCIAL_PRODUCT_CODE = :new.FINANCIAL_PRODUCT_CODE, 
          sfm.SPEC_FIN_MODEL_NAME = :new.SPEC_FIN_MODEL_NAME, 
          sfm.IS_EST_MODEL = :new.IS_EST_MODEL, 
          sfm.EST_MODEL_PARTNER_CODE = :new.EST_MODEL_PARTNER_CODE, 
          sfm.EST_MODEL_BORDER_REL_TYPE_CODE = :new.EST_MODEL_BORDER_REL_TYPE_CODE, 
          sfm.EST_MODEL_PAR_REL_PERIOD_CODE = :new.EST_MODEL_PAR_REL_PERIOD_CODE, 
          sfm.AUTHORIZE_EMPLOYEE_CODE = :new.AUTHORIZE_EMPLOYEE_CODE, 
          sfm.AUTHORIZE_DATE = :new.AUTHORIZE_DATE, 
          sfm.AUTHORIZE_TIME = :new.AUTHORIZE_TIME, 
          sfm.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE, 
          sfm.CREATE_DATE = :new.CREATE_DATE, 
          sfm.CREATE_TIME = :new.CREATE_TIME, 
          sfm.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE, 
          sfm.CHANGE_DATE = :new.CHANGE_DATE, 
          sfm.CHANGE_TIME = :new.CHANGE_TIME,
          sfm.FM_MOVEMENT_OFFSET_TYPE_CODE = :new.FM_MOVEMENT_OFFSET_TYPE_CODE,
          sfm.EXEC_DEPT_CODE = :new.EXEC_DEPT_CODE
        where
          (sfm.SPEC_FIN_MODEL_CODE = :old.SPEC_FIN_MODEL_CODE);
      
        if (:old.IS_EST_MODEL = 1) and (:new.IS_EST_MODEL = 0) then
        
          for x in
            ( select
                prpp.PARTNER_CODE,
                prpp.BORDER_REL_TYPE_CODE,
                prpp.PRODUCT_CODE,
                prpp.PAR_REL_PRODUCT_PERIOD_CODE
              from
                PAR_REL_PERIODS prp,
                PAR_REL_PRODUCT_PERIODS prpp
              where
                (prp.PARTNER_CODE = :old.PARTNER_CODE) and
                (prp.BORDER_REL_TYPE_CODE = :old.BORDER_REL_TYPE_CODE) and
                (prp.PAR_REL_PERIOD_CODE = :old.PAR_REL_PERIOD_CODE) and
              
                (prpp.PARTNER_CODE = prpp.PARTNER_CODE) and
                (prpp.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) and
                (prpp.BEGIN_DATE between prp.BEGIN_DATE and prp.END_DATE) and
                (prpp.OVERRIDE_EST_SPEC_FIN_MODEL = 0)
            )
          loop
          
            update
              PAR_REL_PRODUCT_PERS_FOR_EDIT prpp
            set
              prpp.EST_SPEC_FIN_MODEL_CODE = null
            where
              (prpp.PARTNER_CODE = prpp.PARTNER_CODE) and
              (prpp.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) and
              (prpp.PRODUCT_CODE = x.PRODUCT_CODE) and
              (prpp.PAR_REL_PRODUCT_PERIOD_CODE = x.PAR_REL_PRODUCT_PERIOD_CODE)
            ;
          
          end loop;
        
        end if;
      
      end if;
    
      if (:new.IS_EST_MODEL = 1) then
        
        for x in
          ( select
              prpp.PARTNER_CODE,
              prpp.BORDER_REL_TYPE_CODE,
              prpp.PRODUCT_CODE,
              prpp.PAR_REL_PRODUCT_PERIOD_CODE
            from
              PAR_REL_PERIODS prp,
              PAR_REL_PRODUCT_PERIODS prpp
            where
              (prp.PARTNER_CODE = :old.PARTNER_CODE) and
              (prp.BORDER_REL_TYPE_CODE = :old.BORDER_REL_TYPE_CODE) and
              (prp.PAR_REL_PERIOD_CODE = :old.PAR_REL_PERIOD_CODE) and
              
              (prpp.PARTNER_CODE = prpp.PARTNER_CODE) and
              (prpp.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) and
              (prpp.BEGIN_DATE between prp.BEGIN_DATE and prp.END_DATE) and
              (prpp.OVERRIDE_EST_SPEC_FIN_MODEL = 0)
          )
        loop
          
          update
            PAR_REL_PRODUCT_PERS_FOR_EDIT prpp
          set
            prpp.EST_SPEC_FIN_MODEL_CODE = :new.SPEC_FIN_MODEL_CODE
          where
            (prpp.PARTNER_CODE = prpp.PARTNER_CODE) and
            (prpp.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) and
            (prpp.PRODUCT_CODE = x.PRODUCT_CODE) and
            (prpp.PAR_REL_PRODUCT_PERIOD_CODE = x.PAR_REL_PRODUCT_PERIOD_CODE)
          ;
          
        end loop;
        
      end if;
    
    exception
      when others then
        StateUtils.EndSfmfeUpdate;
        raise;
    end;
    StateUtils.EndSfmfeUpdate;
  end if;

end tr_SFMFE_IIU;
/
