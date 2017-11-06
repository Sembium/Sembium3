create or replace trigger tr_PROFS_AIU_IS_GROUP_AND_KIND
  after insert or update on PROFESSIONS
  for each row
declare
  OldProfessionTypeCode Number;
  NewProfessionTypeCode Number;
begin

  -- IS_GROUP

  if updating and 
     (:old.IS_GROUP <> :new.IS_GROUP) then
     
    if (:old.IS_GROUP = 1) then
      delete
        GROUP_PROFESSIONS gp
      where
        (gp.PROFESSION_CODE = :new.PROFESSION_CODE)
      ;
    else
      delete
        DEFINITE_PROFESSIONS dp
      where
        (dp.PROFESSION_CODE = :new.PROFESSION_CODE)
      ;
    end if;
        
  end if;
  
  
  if inserting or
     (:old.IS_GROUP <> :new.IS_GROUP) then

    if (:new.IS_GROUP = 1) then
      insert into GROUP_PROFESSIONS
        (PROFESSION_CODE)
      values
        (:new.PROFESSION_CODE)
      ;
    else
      insert into DEFINITE_PROFESSIONS
        (PROFESSION_CODE)
      values
        (:new.PROFESSION_CODE)
      ;
    end if;
     
  end if;

  -- KIND

  if (:new.IS_GROUP = 0) then
    select
      Max(pk.PROFESSION_TYPE_CODE)
    into
      OldProfessionTypeCode
    from
      PROFESSION_KINDS pk
    where
      (pk.PROFESSION_KIND_CODE = :old.PROFESSION_KIND_CODE);

    select
      Max(pk.PROFESSION_TYPE_CODE)
    into
      NewProfessionTypeCode
    from
      PROFESSION_KINDS pk
    where
      (pk.PROFESSION_KIND_CODE = :new.PROFESSION_KIND_CODE);

    if inserting or (OldProfessionTypeCode <> NewProfessionTypeCode) then
      case NewProfessionTypeCode
        when CommonConsts.ptGlobal then
          begin
            insert into GLOBAL_PROFESSIONS (PROFESSION_CODE) values (:new.PROFESSION_CODE);
          end;
        when CommonConsts.ptPrcBaseOp then
          begin
            insert into PRC_BASE_PROFESSIONS (PROFESSION_CODE) values (:new.PROFESSION_CODE);
          end;
        when CommonConsts.ptPrcConcreteOp then
          begin
            insert into PRC_CONCRETE_PROFESSIONS (PROFESSION_CODE) values (:new.PROFESSION_CODE);
          end;
      else
        raise_application_error(-20001, 'Internal error: Unknown ProfessionTypeCode');
      end case;
    end if;
  end if;

end;
/
