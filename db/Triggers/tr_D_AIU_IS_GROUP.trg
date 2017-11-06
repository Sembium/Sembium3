create or replace trigger tr_D_AIU_IS_GROUP
  after insert or update on DEPTS
  for each row
begin
  if (:old.IS_GROUP is not null) and 
     (:old.IS_GROUP <> :new.IS_GROUP) then
     
    if (:old.IS_GROUP = 1) then
      delete
        GROUP_DEPTS
      where
        (DEPT_CODE = :new.DEPT_CODE)
      ;
    else
      delete
        DEFINITE_DEPTS
      where
        (DEPT_CODE = :new.DEPT_CODE)
      ;
    end if;
        
  end if;
  
  
  if (:old.IS_GROUP is null) or
     (:old.IS_GROUP <> :new.IS_GROUP) then

    if (:new.IS_GROUP = 1) then
      insert into GROUP_DEPTS
        (DEPT_CODE)
      values
        (:new.DEPT_CODE)
      ;
    else
      insert into DEFINITE_DEPTS
        (DEPT_CODE)
      values
        (:new.DEPT_CODE)
      ;
    end if;
     
  end if;
end tr_D_AIU_IS_GROUP;
/
