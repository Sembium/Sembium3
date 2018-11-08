/term=;

/params on

insert into DI_ACTIVE_DATA_TYPES
(
  DI_ACTIVE_DATA_TYPE_CODE,
  DI_ACTIVE_DATA_TYPE_IDENTIFIER,
  ANCESTOR_TYPE_CODE
)
values
(
  :1,
  :2,
  ( select
      diadt.DI_ACTIVE_DATA_TYPE_CODE
    from
      DI_ACTIVE_DATA_TYPES diadt
    where
      (diadt.DI_ACTIVE_DATA_TYPE_IDENTIFIER = :3)
  )
);
