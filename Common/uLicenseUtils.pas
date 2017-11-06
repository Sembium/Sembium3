unit uLicenseUtils;

interface

type
  TLicensePoolType = (lptNone, lptInternal, lptNamed, lptConcurrent);

function IntToLicensePoolType(AValue: Integer): TLicensePoolType;
function LicensePoolTypeToInt(AValue: TLicensePoolType): Integer;

implementation

uses
  SysUtils;

function IntToLicensePoolType(AValue: Integer): TLicensePoolType;
begin
  case AValue of
    0: Result:= lptNone;
    1: Result:= lptInternal;
    2: Result:= lptNamed;
    3: Result:= lptConcurrent;
  else
    raise Exception.Create('Unknown license pool type code');
  end;  { case }
end;

function LicensePoolTypeToInt(AValue: TLicensePoolType): Integer;
begin
  case AValue of
    lptNone: Result:= 0;
    lptInternal: Result:= 1;
    lptNamed: Result:= 2;
    lptConcurrent: Result:= 3;
  else
    raise Exception.Create('Unknown license pool type');
  end;  { case }
end;

end.
