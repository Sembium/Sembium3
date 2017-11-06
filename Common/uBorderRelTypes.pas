unit uBorderRelTypes;

interface

uses
  uCompanyKinds;

type
  TBorderRelType = (brtNone, brtClient, brtVendor);

function BorderRelTypeToInt(Value: TBorderRelType): Integer;
function IntToBorderRelType(Value: Integer): TBorderRelType;

procedure UnknownBorderRelTypeError; inline;

function BorderRelTypeToCompanyKind(Value: TBorderRelType): TCompanyKind;
function CompanyKindToBorderRelType(Value: TCompanyKind): TBorderRelType;

implementation

uses
  SysUtils;

function BorderRelTypeToInt(Value: TBorderRelType): Integer;
begin
  Result:= Ord(Value);
end;

function IntToBorderRelType(Value: Integer): TBorderRelType;
begin
  case Value of
    0: Result:= brtNone;
    1: Result:= brtClient;
    2: Result:= brtVendor;
  else
    raise Exception.Create('uBorderRelTypes: unknown border rel type code');
  end;
end;

procedure UnknownBorderRelTypeError; inline;
begin
  raise Exception.Create('Unknown border rel type');
end;

function BorderRelTypeToCompanyKind(Value: TBorderRelType): TCompanyKind;
begin
  case Value of
    brtNone: Result:= ckNone;
    brtClient: Result:= ckClient;
    brtVendor: Result:= ckVendor;
  else
    UnknownBorderRelTypeError;
  end;
end;

function CompanyKindToBorderRelType(Value: TCompanyKind): TBorderRelType;
begin
  case Value of
    ckNone: Result:= brtNone;
    ckClient: Result:= brtClient;
    ckVendor: Result:= brtVendor;
  else
    raise Exception.Create('Cannot match CompanyKind to BorderRelType');
  end;
end;

end.
