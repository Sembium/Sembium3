unit uBudgetReportUtils;

interface

uses
  QRCtrls;

type
  TBOIOPlanColumnType = (boiopctBOIOPlanPrice, boiopctBOIOPlanToPlanDev, boiopctBOIOPlanToPlanDevPercent);
  TRealColumnType = (rctRealPrice, rctRealToPlanDev, rctRealToPlanDevPercent, rctRealToBOIOPlanDev, rctRealToBOIOPlanDevPercent);

function IntToBOIOPlanColumnType(AValue: Integer): TBOIOPlanColumnType;
function BOIOPlanColumnTypeToInt(AValue: TBOIOPlanColumnType): Integer;
function IntToRealColumnType(AValue: Integer): TRealColumnType;
function RealColumnTypeToInt(AValue: TRealColumnType): Integer;

procedure SetColumnEnabled(
  AEnabled: Boolean;
  AQRLabel: TQRLabel;
  AQRDBText: TQRDBText;
  ATotalQRDBText: TQRDBText = nil);

implementation

uses
  SysUtils;

function IntToBOIOPlanColumnType(AValue: Integer): TBOIOPlanColumnType;
begin
  case AValue of
    1: Result:= boiopctBOIOPlanPrice;
    2: Result:= boiopctBOIOPlanToPlanDev;
    3: Result:= boiopctBOIOPlanToPlanDevPercent;
  else
    raise Exception.Create('Unknown BOIOPlanColumnType code');
  end;  { case }
end;

function BOIOPlanColumnTypeToInt(AValue: TBOIOPlanColumnType): Integer;
begin
  case AValue of
    boiopctBOIOPlanPrice: Result:= 1;
    boiopctBOIOPlanToPlanDev: Result:= 2;
    boiopctBOIOPlanToPlanDevPercent: Result:= 3;
  else
    raise Exception.Create('Unknown BOIOPlanColumnType');
  end;  { case }
end;

function IntToRealColumnType(AValue: Integer): TRealColumnType;
begin
  case AValue of
    1: Result:= rctRealPrice;
    2: Result:= rctRealToPlanDev;
    3: Result:= rctRealToPlanDevPercent;
    4: Result:= rctRealToBOIOPlanDev;
    5: Result:= rctRealToBOIOPlanDevPercent;
  else
    raise Exception.Create('Unknown RealColumnType code');
  end;  { case }
end;

function RealColumnTypeToInt(AValue: TRealColumnType): Integer;
begin
  case AValue of
    rctRealPrice: Result:= 1;
    rctRealToPlanDev: Result:= 2;
    rctRealToPlanDevPercent: Result:= 3;
    rctRealToBOIOPlanDev: Result:= 4;
    rctRealToBOIOPlanDevPercent: Result:= 5;
  else
    raise Exception.Create('Unknown RealColumnType');
  end;  { case }
end;

procedure SetColumnEnabled(
  AEnabled: Boolean;
  AQRLabel: TQRLabel;
  AQRDBText: TQRDBText;
  ATotalQRDBText: TQRDBText = nil);
begin
  AQRLabel.Enabled:= AEnabled;
  AQRDBText.Enabled:= AEnabled;
  if Assigned(ATotalQRDBText) then
    ATotalQRDBText.Enabled:= AEnabled;
end;

end.
