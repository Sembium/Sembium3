create or replace package FinanceConsts is

  -- boi order types
  boiProduct                     constant Number := 1;
  boiCompany                     constant Number := 2;
  boiWaste                       constant Number := 3;

  -- boi distribution types
  boidtLocal                     constant Number := 1;
  boidtDistributed               constant Number := 2;
  boidtCentralized               constant Number := 3;

  -- fin model line types
  ConstfmltPrimary     constant Number := 1;
  ConstfmltSecondary   constant Number := 2;

end;
/
create or replace package body FinanceConsts is

  -- nothing here

end;
/
