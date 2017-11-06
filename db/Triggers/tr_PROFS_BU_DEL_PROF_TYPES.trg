create or replace trigger tr_PROFS_BU_DEL_PROF_TYPES
  before update of PROFESSION_KIND_CODE on PROFESSIONS
  for each row
declare
  OldProfessionTypeCode Number;
  NewProfessionTypeCode Number;
begin

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

  if (OldProfessionTypeCode <> NewProfessionTypeCode) then
    case OldProfessionTypeCode
      when CommonConsts.ptGlobal then
        begin
          delete GLOBAL_PROFESSIONS gp where (gp.PROFESSION_CODE = :old.PROFESSION_CODE);
        end;
      when CommonConsts.ptPrcBaseOp then
        begin
          delete PRC_BASE_PROFESSIONS pbp where (pbp.PROFESSION_CODE = :old.PROFESSION_CODE);
        end;
      when CommonConsts.ptPrcConcreteOp then
        begin
          delete PRC_CONCRETE_PROFESSIONS pcp where (pcp.PROFESSION_CODE = :old.PROFESSION_CODE);
        end;
    else
      raise_application_error(-20001, 'Internal error: Unknown ProfessionTypeCode');
    end case;
  end if;

end;
/
