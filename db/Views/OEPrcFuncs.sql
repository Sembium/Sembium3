create view OE_PRC_FUNCS as
select
  oe.OCCUPATION_EMPLOYEE_CODE,
  opf.*
from
  OCC_PRC_FUNCS opf,
  OCCUPATION_EMPLOYEES oe
where
  (opf.OCCUPATION_CODE = oe.OCCUPATION_CODE)
