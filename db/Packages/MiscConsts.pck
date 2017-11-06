create or replace package MiscConsts is

  CompositeStringDelimiter constant Varchar2(1 char) := '~';
  SNull constant Varchar2(4 char) := 'null';

end;
/
create or replace package body MiscConsts is

  -- nothing here

end;
/
