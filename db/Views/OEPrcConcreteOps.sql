create view OE_PRC_CONCRETE_OPS as
select
  oe.OCCUPATION_EMPLOYEE_CODE,
  opco.*
from
  OCC_PRC_CONCRETE_OPS opco,
  OCCUPATION_EMPLOYEES oe
where
  (opco.OCCUPATION_CODE = oe.OCCUPATION_CODE)
