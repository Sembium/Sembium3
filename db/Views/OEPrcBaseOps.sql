create view OE_PRC_BASE_OPS as
select
  oe.OCCUPATION_EMPLOYEE_CODE,
  opbo.*
from
  OCC_PRC_BASE_OPS opbo,
  OCCUPATION_EMPLOYEES oe
where
  (opbo.OCCUPATION_CODE = oe.OCCUPATION_CODE)
