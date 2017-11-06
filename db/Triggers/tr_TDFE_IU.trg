create or replace trigger tr_TDFE_IU
  instead of update on THE_DATES_FOR_EDIT
  for each row
begin

  if not StateUtils.InTdfeUpdate then
    StateUtils.BeginTdfeUpdate;
    begin
    
      if (:new.THE_DATE <> :old.THE_DATE) then
        raise_application_error(-20000, 'Internal error: THE_DATES key should not be changed');
      end if;    

      if (:new.WORKDAYS <= :old.WORKDAYS) then
  
        update
          THE_DATES d
        set
          d.WORKDAYS = :new.WORKDAYS,
          d.DAYS_OFF = :new.DAYS_OFF,
          d.ZERO_WHEN_WORKDAY = 
            Decode(:new.WORKDAYS, 0, (To_Number(To_Char(d.THE_DATE, 'yyyy')) * 1000) + d.YEAR_DATE_NO, 0),
          d.ACCUMULATED_WORKDAYS = d.ACCUMULATED_WORKDAYS - :old.WORKDAYS + :new.WORKDAYS,
          d.ACCUMULATED_DAYS_OFF = d.ACCUMULATED_DAYS_OFF - :old.DAYS_OFF + :new.DAYS_OFF
        where
          (d.THE_DATE = :old.THE_DATE);

        update
          ( select
              d.THE_DATE,
              d.ACCUMULATED_WORKDAYS,
              d.ACCUMULATED_DAYS_OFF
            from
              THE_DATES d
            where
              (d.THE_DATE > :old.THE_DATE)
            order by
              d.THE_DATE
          ) dd
        set
          dd.ACCUMULATED_WORKDAYS = dd.ACCUMULATED_WORKDAYS - :old.WORKDAYS + :new.WORKDAYS,
          dd.ACCUMULATED_DAYS_OFF = dd.ACCUMULATED_DAYS_OFF - :old.DAYS_OFF + :new.DAYS_OFF;

      else

        update
          ( select
              d.THE_DATE,
              d.ACCUMULATED_WORKDAYS,
              d.ACCUMULATED_DAYS_OFF
            from
              THE_DATES d
            where
              (d.THE_DATE > :old.THE_DATE)
            order by
              d.THE_DATE desc
          ) dd
        set
          dd.ACCUMULATED_WORKDAYS = dd.ACCUMULATED_WORKDAYS - :old.WORKDAYS + :new.WORKDAYS,
          dd.ACCUMULATED_DAYS_OFF = dd.ACCUMULATED_DAYS_OFF - :old.DAYS_OFF + :new.DAYS_OFF;
      
        update
          THE_DATES d
        set
          d.WORKDAYS = :new.WORKDAYS,
          d.DAYS_OFF = :new.DAYS_OFF,
          d.ZERO_WHEN_WORKDAY = Decode(:new.WORKDAYS, 0, d.YEAR_DATE_NO, 0),
          d.ACCUMULATED_WORKDAYS = d.ACCUMULATED_WORKDAYS - :old.WORKDAYS + :new.WORKDAYS,
          d.ACCUMULATED_DAYS_OFF = d.ACCUMULATED_DAYS_OFF - :old.DAYS_OFF + :new.DAYS_OFF
        where
          (d.THE_DATE = :old.THE_DATE);
      end if;

      -- official stuff
      if (:new.OFFICIAL_WORKDAYS <= :old.OFFICIAL_WORKDAYS) then
  
        update
          THE_DATES d
        set
          d.OFFICIAL_WORKDAYS = :new.OFFICIAL_WORKDAYS,
          d.OFFICIAL_DAYS_OFF = :new.OFFICIAL_DAYS_OFF,
          d.ZERO_WHEN_OFFICIAL_WORKDAY = Decode(:new.OFFICIAL_WORKDAYS, 0, d.YEAR_DATE_NO, 0),
          d.ACCUMULATED_OFFICIAL_WORKDAYS = d.ACCUMULATED_OFFICIAL_WORKDAYS - :old.OFFICIAL_WORKDAYS + :new.OFFICIAL_WORKDAYS,
          d.ACCUMULATED_OFFICIAL_DAYS_OFF = d.ACCUMULATED_OFFICIAL_DAYS_OFF - :old.OFFICIAL_DAYS_OFF + :new.OFFICIAL_DAYS_OFF
        where
          (d.THE_DATE = :old.THE_DATE);

        update
          ( select
              d.THE_DATE,
              d.ACCUMULATED_OFFICIAL_WORKDAYS,
              d.ACCUMULATED_OFFICIAL_DAYS_OFF
            from
              THE_DATES d
            where
              (d.THE_DATE > :old.THE_DATE)
            order by
              d.THE_DATE
          ) dd
        set
          dd.ACCUMULATED_OFFICIAL_WORKDAYS = dd.ACCUMULATED_OFFICIAL_WORKDAYS - :old.OFFICIAL_WORKDAYS + :new.OFFICIAL_WORKDAYS,
          dd.ACCUMULATED_OFFICIAL_DAYS_OFF = dd.ACCUMULATED_OFFICIAL_DAYS_OFF - :old.OFFICIAL_DAYS_OFF + :new.OFFICIAL_DAYS_OFF;

      else

        update
          ( select
              d.THE_DATE,
              d.ACCUMULATED_OFFICIAL_WORKDAYS,
              d.ACCUMULATED_OFFICIAL_DAYS_OFF
            from
              THE_DATES d
            where
              (d.THE_DATE > :old.THE_DATE)
            order by
              d.THE_DATE desc
          ) dd
        set
          dd.ACCUMULATED_OFFICIAL_WORKDAYS = dd.ACCUMULATED_OFFICIAL_WORKDAYS - :old.OFFICIAL_WORKDAYS + :new.OFFICIAL_WORKDAYS,
          dd.ACCUMULATED_OFFICIAL_DAYS_OFF = dd.ACCUMULATED_OFFICIAL_DAYS_OFF - :old.OFFICIAL_DAYS_OFF + :new.OFFICIAL_DAYS_OFF;
      
        update
          THE_DATES d
        set
          d.OFFICIAL_WORKDAYS = :new.OFFICIAL_WORKDAYS,
          d.OFFICIAL_DAYS_OFF = :new.OFFICIAL_DAYS_OFF,
          d.ZERO_WHEN_OFFICIAL_WORKDAY = 
            Decode(:new.OFFICIAL_WORKDAYS, 0, (To_Number(To_Char(d.THE_DATE, 'yyyy')) * 1000) + d.YEAR_DATE_NO, 0),
          d.ACCUMULATED_OFFICIAL_WORKDAYS = d.ACCUMULATED_OFFICIAL_WORKDAYS - :old.OFFICIAL_WORKDAYS + :new.OFFICIAL_WORKDAYS,
          d.ACCUMULATED_OFFICIAL_DAYS_OFF = d.ACCUMULATED_OFFICIAL_DAYS_OFF - :old.OFFICIAL_DAYS_OFF + :new.OFFICIAL_DAYS_OFF
        where
          (d.THE_DATE = :old.THE_DATE);
      end if;

      
      if (:new.WORKDAYS <> :old.WORKDAYS) then
      
        for x in
          ( select
              str.SHIFT_TIMED_REGIME_CODE
            from
              SHIFT_TIMED_REGIMES str
            where
              (:old.THE_DATE between str.BEGIN_DATE and str.END_DATE) and
              (str.FOLLOWS_CALENDAR_OFFDAYS = 1)
          )
        loop
          ShiftUtils.UpdateDateShiftCyclesFor(x.SHIFT_TIMED_REGIME_CODE);
        end loop;
      
        for x in
          ( select
              mll.ML_OBJECT_BRANCH_CODE,
              mll.ML_OBJECT_CODE,
              mll.MLL_OBJECT_BRANCH_CODE,
              mll.MLL_OBJECT_CODE,
              mll.NO_1,
              ml.ENTER_RESULT_STORE_END_DATE
            
            from
              MATERIAL_LISTS ml,
              MATERIAL_LIST_LINES mll
              
            where
              (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
              (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
              
              (:new.THE_DATE <= ml.ENTER_RESULT_STORE_END_DATE) and
              
              exists( 
                select
                  1
                from
                  MATERIAL_LIST_LINES mll
                where
                  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
                  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
                  (mll.PRODUCT_NEED_BEGIN_DATE <= :new.THE_DATE)
              ) 
          )
        loop
          
          -- etapite po reda
          update
            ML_MODEL_STAGES_FOR_EDIT mlms
          set
            mlms.TREATMENT_BEGIN_DATE =
              IncDateByWorkdays(x.ENTER_RESULT_STORE_END_DATE + 1, -mlms.TOTAL_TREATMENT_WORKDAYS),
            mlms.TREATMENT_END_DATE =
              IncDateByWorkdays(x.ENTER_RESULT_STORE_END_DATE + 1, -mlms.TOTAL_TREATMENT_WORKDAYS + Greatest(mlms.TREATMENT_WORKDAYS, 1) - 1)
          where
            (mlms.MLL_OBJECT_BRANCH_CODE = x.MLL_OBJECT_BRANCH_CODE) and
            (mlms.MLL_OBJECT_CODE = x.MLL_OBJECT_CODE);
            
          -- ako e nulevia red, datite za postuplenie; trigera v/u ML opravia SALES
          if (x.NO_1 = 0) then
            update
              MATERIAL_LISTS_FOR_EDIT ml
            set
              ml.ENTER_RESULT_STORE_BEGIN_DATE =
                IncDateByWorkdays(ml.ENTER_RESULT_STORE_END_DATE + 1, 
                  ( select
                      -mlms.TREATMENT_WORKDAYS
                    from
                      ML_MODEL_STAGES mlms
                    where
                      (mlms.MLL_OBJECT_BRANCH_CODE = x.MLL_OBJECT_BRANCH_CODE) and
                      (mlms.MLL_OBJECT_CODE = x.MLL_OBJECT_CODE) and
                      (mlms.TREATMENT_WORKDAYS > 0) and
                      (mlms.OUTGOING_WORKDAYS = 0)
                  )
                )
            where
              (ml.ML_OBJECT_BRANCH_CODE = x.ML_OBJECT_BRANCH_CODE) and
              (ml.ML_OBJECT_CODE = x.ML_OBJECT_CODE);
          end if;  
          
        end loop;
      
      end if;
      
    exception
      when others then
        StateUtils.EndTdfeUpdate;
        raise;
    end;
    StateUtils.EndTdfeUpdate;
  end if;
    
end tr_TDFE_IU;
/
