unit uBudgetUtils;

interface

uses
  uUtils, DB;

type
  TBudgetOrderItemType = (boitDeliveriesIntroducing, boitInternalIntroducing, boitExpense, boitExploitation);
  TBudgetOrderItemBaseType = (boibtIntroducing, boibtExpense, boibtExploitation);

function IntToBudgetOrderItemType(AValue: Integer): TBudgetOrderItemType;
function BudgetOrderItemTypeToInt(AValue: TBudgetOrderItemType): Integer;

function BudgetOrderItemTypeToBaseType(AValue: TBudgetOrderItemType): TBudgetOrderItemBaseType;

function BudgetOrderItemTypeToFilterBOITypeInt(AValue: TBudgetOrderItemType): Integer;

type
  TBudgetOrderItemTypeFieldHelper = class helper (TFieldHelper) for TField
  private
    function GetAsBudgetOrderItemType: TBudgetOrderItemType;
    procedure SetAsBudgetOrderItemType(const Value: TBudgetOrderItemType);
  public
    property AsBudgetOrderItemType: TBudgetOrderItemType read GetAsBudgetOrderItemType write SetAsBudgetOrderItemType;
  end;

implementation

uses
  SysUtils;

function IntToBudgetOrderItemType(AValue: Integer): TBudgetOrderItemType;
begin
  case AValue of
    1: Result:= boitDeliveriesIntroducing;
    2: Result:= boitInternalIntroducing;
    3: Result:= boitExpense;
    4: Result:= boitExploitation;
  else
    raise Exception.Create('Unknown BudgetOrderItemType code');
  end;  { case }
end;

function BudgetOrderItemTypeToInt(AValue: TBudgetOrderItemType): Integer;
begin
  case AValue of
    boitDeliveriesIntroducing: Result:= 1;
    boitInternalIntroducing: Result:= 2;
    boitExpense: Result:= 3;
    boitExploitation: Result:= 4;
  else
    raise Exception.Create('Unknown BudgetOrderItemType');
  end;  { case }
end;

function BudgetOrderItemTypeToBaseType(AValue: TBudgetOrderItemType): TBudgetOrderItemBaseType;
begin
  case AValue of
    boitDeliveriesIntroducing: Result:= boibtIntroducing;
    boitInternalIntroducing: Result:= boibtIntroducing;
    boitExpense: Result:= boibtExpense;
    boitExploitation: Result:= boibtExploitation;
  else
    raise Exception.Create('Unknown BudgetOrderItemType');
  end;  { case }
end;

function BudgetOrderItemTypeToFilterBOITypeInt(AValue: TBudgetOrderItemType): Integer;
begin
  case AValue of
    boitDeliveriesIntroducing: Result:= 3;
    boitInternalIntroducing: Result:= 4;
    boitExpense: Result:= 5;
    boitExploitation: Result:= 6;
  else
    raise Exception.Create('Unknown BudgetOrderItemType');
  end;
end;

{ TBudgetOrderItemTypeFieldHelper }

function TBudgetOrderItemTypeFieldHelper.GetAsBudgetOrderItemType: TBudgetOrderItemType;
begin
  Result:= IntToBudgetOrderItemType(AsInteger);
end;

procedure TBudgetOrderItemTypeFieldHelper.SetAsBudgetOrderItemType(const Value: TBudgetOrderItemType);
begin
  AsInteger:= BudgetOrderItemTypeToInt(Value);
end;

end.
