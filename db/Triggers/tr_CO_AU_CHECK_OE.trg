create or replace trigger tr_CO_AU_CHECK_OE
  after update of ALLOW_NON_MAIN_ONLY_OE on COMMON_OPTIONS
begin
  for e in
    ( select
        oe.EMPLOYEE_CODE
      from
        OCCUPATION_EMPLOYEES oe,
        COMMON_OPTIONS co
      where
        (co.CODE = 1) and
        (co.ALLOW_NON_MAIN_ONLY_OE = 0)
      group by
        oe.EMPLOYEE_CODE
      order by
        oe.EMPLOYEE_CODE
    ) loop
      
    MiscUtils.CheckEmployeeOccupations(e.EMPLOYEE_CODE);
      
  end loop;
end tr_CO_AU_CHECK_OE;
/
