create or replace package CapacityConsts is

  atEstimation constant Number := 1;
  atRealization constant Number := 2;
  
  cll_All constant Number := 0;
  
  cll_Dept constant Number := 1;
  cll_Occupation constant Number := 2;
  cll_OccupationAssignment constant Number := 3;
  cll_EmpAvailability constant Number := 4;

  GranularityInMinutes constant Number := 1;
  HourGranuleCount constant Number := 60/GranularityInMinutes;
  DayGranuleCount constant Number := 24*HourGranuleCount;

end;
/
create or replace package body CapacityConsts is

  -- nothing here

end;
/
