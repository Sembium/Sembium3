/term=;

/params on

insert into DI_ACTIVE_DATA_TYPE_FIELDS
(
  DI_ACTIVE_DATA_TYPE_CODE,
  DI_ACTIVE_DATA_TYPE_FIELD_CODE,
  FIELD_NO,
  FIELD_IDENTIFIER,
  FIELD_TYPE_CODE,
  FIELD_NAME,
  IS_VISIBLE
)
values
(
  :1,
  :2,
  :3,
  :4,
  ( select
      diadt.DI_ACTIVE_DATA_TYPE_CODE
    from
      DI_ACTIVE_DATA_TYPES diadt
    where
      (diadt.DI_ACTIVE_DATA_TYPE_IDENTIFIER = :5)
  ),
  :6,
  :7
);
