unit uSalesCommon;

interface

type
  TSaleStateCodes = 1..10;

const
  SaleOrderDecisionStatus = 8;
  SaleOrderSaleStatus = 9;
  SaleOrderAnnuledStatus = 11;

function ValidSaleState(AStateCode: Integer): Boolean;

implementation

uses
  Math;

{ Routines }

function ValidSaleState(AStateCode: Integer): Boolean;
begin
  Result:= InRange(AStateCode, Low(TSaleStateCodes), High(TSaleStateCodes));
end;

end.
