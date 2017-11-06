unit uCompanyKinds;

interface

type
  TCompanyKind =
    (ckNone, ckClient, ckMediator, ckVendor, ckGovernmentOrganization, ckBank, ckWorker);

function CompanyKindToInt(Value: TCompanyKind): Integer;

function IntToCompanyKind(Value: Integer): TCompanyKind;

implementation

uses
  SysUtils;

function CompanyKindToInt(Value: TCompanyKind): Integer;
begin
  Result:= Ord(Value);
end;

function IntToCompanyKind(Value: Integer): TCompanyKind;
begin
  case Value of
    0: Result:= ckNone;
    1: Result:= ckClient;
    2: Result:= ckMediator;
    3: Result:= ckVendor;
    4: Result:= ckGovernmentOrganization;
    5: Result:= ckBank;
    6: Result:= ckWorker;
  else
    raise Exception.Create('uCompanyKinds: unknown company kind code');
  end;
end;

end.






