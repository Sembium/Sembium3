unit uSysRoleClientUtils;

interface

uses
  Graphics, SysUtils;

type
  TSysRoleNoType = (srntDefault, srntNormal, srntBase, srntSystemDerived, srntUserDerived);
  TSysRoleType = (srtAll, srtActivities, srtFilterVariants, srtDocItems, srtInternal);
  TSysRoleTypes = set of TSysRoleType;

const
  DefaultSysRoleCode = 1;
  DefaultSysRoleNo = 1;
  MinReservedSysRoleNo = 100000;
  MaxReservedSysRoleNo = 999999;
  MinNotReservedSubRangeSysRoleNo = 91;
  MaxNotReservedSubRangeSysRoleNo = 99;
  BaseSysRoleNoRemainder = 70;
  SysRoleGroupsBaseColor = $00CCCCCC;
  SysRoleGroupsSystemDerivedColor = $00DFDFDF;
  SysRoleGroupsUserDerivedColor = $00EFEFEF;
  AllSysRoleTypes = [srtActivities, srtFilterVariants, srtDocItems, srtInternal];

  SysRoleCellBackgrounds: array[TSysRoleNoType] of TColor =
    (clWindow, clWindow, SysRoleGroupsBaseColor, SysRoleGroupsSystemDerivedColor, SysRoleGroupsUserDerivedColor);

function GetSysRoleNoType(ASysRoleNo: Integer): TSysRoleNoType;
function SysRoleTypeToInt(ASysRoleType: TSysRoleType): Integer;
function IntToSysRoleType(AValue: Integer): TSysRoleType;

implementation

uses
  Math;

function GetSysRoleNoType(ASysRoleNo: Integer): TSysRoleNoType;
begin
  if (ASysRoleNo = DefaultSysRoleNo) then
    Result:= srntDefault
  else
    if not InRange(ASysRoleNo, MinReservedSysRoleNo, MaxReservedSysRoleNo) then
      Result:= srntNormal
    else
      if InRange(ASysRoleNo mod 100, MinNotReservedSubRangeSysRoleNo, MaxNotReservedSubRangeSysRoleNo) then
        Result:= srntUserDerived
      else
        if (ASysRoleNo mod 100 = BaseSysRoleNoRemainder) then
          Result:= srntBase
        else
          Result:= srntSystemDerived;
end;

function IntToSysRoleType(AValue: Integer): TSysRoleType;
begin
  case AValue of
    0: Result:= srtAll;
    1: Result:= srtActivities;
    2: Result:= srtFilterVariants;
    3: Result:= srtDocItems;
    4: Result:= srtInternal;
  else
    raise Exception.Create('Unknown SysRoleType code');
  end;  { case }
end;

function SysRoleTypeToInt(ASysRoleType: TSysRoleType): Integer;
begin
  case ASysRoleType of
    srtAll: Result:= 0;
    srtActivities: Result:= 1;
    srtFilterVariants: Result:= 2;
    srtDocItems: Result:= 3;
    srtInternal: Result:= 4;
  else
    raise Exception.Create('Unknown SysRoleType code');
  end;  { case }
end;

end.
