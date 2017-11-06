create or replace trigger tr_OFE_ID
  instead of delete on OCCUPATIONS_FOR_EDIT
  for each row
begin

  if not StateUtils.InOfeUpdate then
    StateUtils.BeginOfeUpdate;
    begin
      
      delete
        OCCUPATION_SHIFTS_FOR_EDIT os
      where
        (os.OCCUPATION_CODE = :old.OCCUPATION_CODE);

        
      delete
        OCCUPATION_SALARIES_FOR_EDIT os
      where
        (os.OCCUPATION_CODE = :old.OCCUPATION_CODE);

      -- cascade kym OWD
      -- zaradi table is mutating na OCCUPATIONS pri update na OWD_AGGR..., koito se poluchawa
      -- sled delete na OWD i koito update iziskwa dostyp do OCCUPATIONS zaradi nasledeni WrmInt na chetworici
      -- da ama predi cascade kym OWD - da mahnem procesniq obhwat na dlyjnostta, zashtoto toi
      -- sochi kym wyzmojniq koito se formira ot OWD
      -- da ama ima i professions

      delete
        OCCUPATION_PROFESSIONS op
      where
        (op.OCCUPATION_CODE = :old.OCCUPATION_CODE);

      delete
        OCC_PRC_FUNCS opf
      where
        (opf.OCCUPATION_CODE = :old.OCCUPATION_CODE);
          
      delete
        OCCUPATION_WORK_DEPTS owd
      where
        (owd.OCCUPATION_CODE = :old.OCCUPATION_CODE);

      delete
        OCCUPATIONS o
      where
        (o.OCCUPATION_CODE = :old.OCCUPATION_CODE);

            
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) then
            
        delete
          DOCS_FOR_EDIT dfe
        where
          (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
          (dfe.DOC_CODE = :old.DOC_CODE);
             
      end if;

    exception
      when others then
        StateUtils.EndOfeUpdate;
        raise;
    end;
    StateUtils.EndOfeUpdate;
  end if;
    
end tr_OFE_ID;
/
