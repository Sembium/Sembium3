unit uProducts;

interface

uses
  DB, Classes;

type
  TProductClass = (pcNone, pcNormal, pcFinancial, pcBudget);
  TProductSpecRequirement = (psrNone, psrNo, psrYes);
  TCommonStatus = (csNone, csSingle, csCommon, csJoined);
  TCommonStatuses = set of TCommonStatus;

function ProductClassToInt(AValue: TProductClass): Integer;
function IntToProductClass(AValue: Integer): TProductClass;
procedure UnknownProductClassError; inline;

function ProductSpecRequirementToInt(AValue: TProductSpecRequirement): Integer;
function IntToProductSpecRequirement(AValue: Integer): TProductSpecRequirement;
procedure UnknownProductSpecRequirementError; inline;

function CommonStatusToInt(AValue: TCommonStatus): Integer;
function IntToCommonStatus(AValue: Integer): TCommonStatus;
procedure UnknownCommonStatusError; inline;

procedure CalcCommonProductsLevelsShow(DataSet: TDataSet);

// Product export types
const
  petName = 1;
  petCustomNo = 2;

// self existent status codes
const
  sesUndefined = 0;
  sesYes = 1;
  sesNo = 2;

// transient status codes
const
  tsUndefined = 0;
  tsPermanent = 1;
  tsTransient = 2;

// common status codes
type
  TCommonStatusCode = 0..4;

const
  cscNone = 0;
  cscSingle = 1;
  cscCommon = 2;
  cscJoined = 3;
  cscJoinedStandard = 4;
  cscFilterThruCommon = 101;
  cscFilterStandardThruCommon = 102;

  AllCommonStatuses = [Low(TCommonStatus)..High(TCommonStatus)];
  DefiniteProductCommonStatuses = [csSingle, csJoined];

// product is active codes
const
  piacActive = 1;
  piacNotActive = 2;

// product used by codes
const
  pubcSales = 1;
  pubcSaleProduction = 2;
  pubcEnvProduction = 3;

// product provided by codes
const
  ppbcDeliveries = 1;
  ppbcSaleProduction = 2;
  ppbcEnvProduction = 3;

// product origin codes
const
  pocTaskUnique = 1;
  pocTaskAdaptive = 2;
  pocCatalogExpanded = 3;
  pocCatalogLocal = 3;

const
  MaxInvestmentLevel = 6;

implementation

uses
  uUtils, SysUtils, Math;

{ Routines }

function ProductClassToInt(AValue: TProductClass): Integer;
const
  Values: array[TProductClass] of Integer = (0, 1, 2, 3);
begin
  Result:= Values[AValue];
end;

function IntToProductClass(AValue: Integer): TProductClass;
const
  Values: array[0..3] of TProductClass = (pcNone, pcNormal, pcFinancial, pcBudget);
begin
  Assert(AValue >= Low(Values));
  Assert(AValue <= High(Values));

  Result:= Values[AValue];
end;

procedure UnknownProductClassError;
begin
  raise Exception.Create('Unknown product class');
end;

function ProductSpecRequirementToInt(AValue: TProductSpecRequirement): Integer;
const
  Values: array[TProductSpecRequirement] of Integer = (0, 1, 2);
begin
  Result:= Values[AValue];
end;

function IntToProductSpecRequirement(AValue: Integer): TProductSpecRequirement;
const
  Values: array[0..2] of TProductSpecRequirement = (psrNone, psrNo, psrYes);
begin
  Assert(AValue >= Low(Values));
  Assert(AValue <= High(Values));

  Result:= Values[AValue];
end;

procedure UnknownProductSpecRequirementError;
begin
  raise Exception.Create('Unknown product spec requirement');
end;

function CommonStatusToInt(AValue: TCommonStatus): Integer;
const
  Values: array[TCommonStatus] of Integer = (0, 1, 2, 3);
begin
  Result:= Values[AValue];
end;

function IntToCommonStatus(AValue: Integer): TCommonStatus;
const
  Values: array[0..3] of TCommonStatus = (csNone, csSingle, csCommon, csJoined);
begin
  if not InRange(AValue, Low(Values), High(Values)) then
    UnknownCommonStatusError;

  Result:= Values[AValue];
end;

procedure UnknownCommonStatusError;
begin
  raise Exception.Create('Unknown common status');
end;

procedure CalcCommonProductsLevelsShow(DataSet: TDataSet);
begin
  with DataSet do
    if FieldByName('COMMON_PRODUCTS_LEVEL_NO').IsNull or
       (FieldByName('COMMON_STATUS_CODE').AsInteger = cscSingle) then
      FieldByName('_COMMON_PRODUCTS_LEVELS_SHOW').Clear
    else
      FieldByName('_COMMON_PRODUCTS_LEVELS_SHOW').AsString:=
        Format('%d;%d', [
          FieldByName('COMMON_PRODUCTS_LEVEL_NO').AsInteger,
          FieldByName('COMMON_PRODUCTS_SUB_LEVELS').AsInteger
        ]);
end;

end.
