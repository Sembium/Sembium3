create or replace package MessageConsts is

  InternalDateFormatString constant Varchar2(10 char) := 'dd.mm.yyyy';
  InternalTimeFormatString constant Varchar2(10 char) := 'hh24:mi:ss';

end;
/
create or replace package body MessageConsts is

  -- nothing here

end;
/
