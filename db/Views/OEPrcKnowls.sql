create view OE_PRC_KNOWLS as
select
  oe.OCCUPATION_EMPLOYEE_CODE,
  opk.*
from
  OCC_PRC_KNOWLS opk,
  OCCUPATION_EMPLOYEES oe
where
  (opk.OCCUPATION_CODE = oe.OCCUPATION_CODE)
