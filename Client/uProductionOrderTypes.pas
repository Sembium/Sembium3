unit uProductionOrderTypes;

interface

const
  MaxProductionOrderBaseTypeCode = 20;

type
  TProductionOrderBaseTypes = record
    No: Integer;
    Name: string;
    Abbrev: string;
    NamePlural: string;
    AbbrevPlural: string;
    function CoveringName: string;
    function CoveringAbbrev: string;
    function CoveringNamePlural: string;
    function CoveringAbbrevPlural: string;
  end;

var
  ProductionOrderBaseTypes: array[0..20] of TProductionOrderBaseTypes;

type
  TProdOrderBaseType = (pobtEmpty, pobtSaleCover, pobtEnvCover, pobtOccCover, pobtDeliveryCover, pobtProjectCover);
  TBorderProdOrderBaseType = pobtEmpty..pobtOccCover;

const
  SaleBoundProdOrderBaseTypes = [pobtEmpty, pobtSaleCover, pobtDeliveryCover, pobtProjectCover];

function ProdOrderBaseTypeToInt(Value: TProdOrderBaseType): Integer;
function IntToProdOrderBaseType(Value: Integer): TProdOrderBaseType;

function GetProductionOrderPosition(AHasParent, AHasChildren, AHasWaste: Boolean): string;
function GetEngineeringOrderPosition(AHasParent, AHasChildren: Boolean): string;

implementation

uses
  SysUtils;

resourcestring
  SCovering = 'за';
  SProdOrderPosition = '%s%s%s     %s %s %s';
  SEngineeringOrderPosition = '%s%s     %s %s';
  SOrderPositionMainAbbrev = 'О';
  SOrderPositionMainName = 'Основен';
  SOrderPositionJoinedAbbrev = 'С';
  SOrderPositionJoinedName = 'Съпътстващ';
  SOrderHasNotChildrenAbbrev = '';
  SOrderHasNotChildrenName = 'без Съпътстващи';
  SOrderHasChildrenAbbrev = '*';
  SOrderHasChildrenName = 'със Съпътстващи';
  SProdOrderHasNotWasteAbbrev = '';
  SProdOrderHasNotWasteName = 'без Блокиране';
  SProdOrderHasWasteAbbrev = '!';
  SProdOrderHasWasteName = 'с Блокиране';

const
  OrderPositionAbbrevs: array[Boolean] of string = (SOrderPositionMainAbbrev, SOrderPositionJoinedAbbrev);
  OrderPositionNames: array[Boolean] of string = (SOrderPositionMainName, SOrderPositionJoinedName);
  OrderHasChildrenAbbrevs: array[Boolean] of string = (SOrderHasNotChildrenAbbrev, SOrderHasChildrenAbbrev);
  OrderHasChildrenNames: array[Boolean] of string = (SOrderHasNotChildrenName, SOrderHasChildrenName);
  ProdOrderHasWasteAbbrevs: array[Boolean] of string = (SProdOrderHasNotWasteAbbrev, SProdOrderHasWasteAbbrev);
  ProdOrderHasWasteNames: array[Boolean] of string = (SProdOrderHasNotWasteName, SProdOrderHasWasteName);

function CoveringProductionOrderBaseType(AProductionOrderBaseTypeNo: Integer; AProductionOrderBaseTypeText: string): string;
begin
  if (AProductionOrderBaseTypeNo = 0) then
    Result:= ''
  else
    Result:= SCovering + ' ' + AProductionOrderBaseTypeText;
end;

function TProductionOrderBaseTypes.CoveringName: string;
begin
  Result:= CoveringProductionOrderBaseType(No, Name);
end;

function TProductionOrderBaseTypes.CoveringAbbrev: string;
begin
  Result:= CoveringProductionOrderBaseType(No, Abbrev);
end;

function TProductionOrderBaseTypes.CoveringNamePlural: string;
begin
  Result:= CoveringProductionOrderBaseType(No, NamePlural);
end;

function TProductionOrderBaseTypes.CoveringAbbrevPlural: string;
begin
  Result:= CoveringProductionOrderBaseType(No, AbbrevPlural);
end;

function ProdOrderBaseTypeToInt(Value: TProdOrderBaseType): Integer;
const
  ProdOrderBaseTypeCodes: array[TProdOrderBaseType] of Integer = (0, 1, 2, 6, 4, 5);
begin
  Result:= ProdOrderBaseTypeCodes[Value];
end;

function IntToProdOrderBaseType(Value: Integer): TProdOrderBaseType;
begin
  case Value of
    0: Result:= pobtEmpty;
    1: Result:= pobtSaleCover;
    2: Result:= pobtEnvCover;
    4: Result:= pobtDeliveryCover;
    5: Result:= pobtProjectCover;
    6: Result:= pobtOccCover;
  else
    raise Exception.Create('uProductionOrderTypes: unknown production order base type code');
  end;
end;

function GetProductionOrderPosition(AHasParent, AHasChildren, AHasWaste: Boolean): string;
begin
  Result:=
    Format(
      SProdOrderPosition, [
      OrderPositionAbbrevs[AHasParent],
      ProdOrderHasWasteAbbrevs[AHasWaste],
      OrderHasChildrenAbbrevs[AHasChildren],
      OrderPositionNames[AHasParent],
      ProdOrderHasWasteNames[AHasWaste],
      OrderHasChildrenNames[AHasChildren]]);
end;

function GetEngineeringOrderPosition(AHasParent, AHasChildren: Boolean): string;
begin
  Result:=
    Format(
      SEngineeringOrderPosition, [
      OrderPositionAbbrevs[AHasParent],
      OrderHasChildrenAbbrevs[AHasChildren],
      OrderPositionNames[AHasParent],
      OrderHasChildrenNames[AHasChildren]]);
end;

end.
