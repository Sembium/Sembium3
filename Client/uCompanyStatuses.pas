unit uCompanyStatuses;

interface

type
  TCompanyStatus = (csPotential, csEventual, csPossible, csReal, csExReal, csExNotReal);
  TCompanyStatusesSet = set of TCompanyStatus;

const
  AllCompanyStatuses: TCompanyStatusesSet = [Low(TCompanyStatus)..High(TCompanyStatus)];
  ActiveCompanyStatuses: TCompanyStatusesSet = [csPotential..csReal];

function CompanyStatusToInt(ACompanyStatus: TCompanyStatus): Integer;
function IntToCompanyStatus(ACompanyStatus: Integer): TCompanyStatus;

implementation

uses
  SysUtils;

function CompanyStatusToInt(ACompanyStatus: TCompanyStatus): Integer;
begin
  case ACompanyStatus of
    csPotential: Result:= 1;
    csEventual: Result:= 2;
    csPossible: Result:= 3;
    csReal: Result:= 4;
    csExReal: Result:= 5;
    csExNotReal: Result:= 6;
  else
    raise Exception.Create('internal error: unknown company status code');
  end;  { case }
end;

function IntToCompanyStatus(ACompanyStatus: Integer): TCompanyStatus;
begin
  case ACompanyStatus of
    1: Result:= csPotential;
    2: Result:= csEventual;
    3: Result:= csPossible;
    4: Result:= csReal;
    5: Result:= csExReal;
    6: Result:= csExNotReal;
  else
    raise Exception.Create('internal error: unknown company status');
  end;  { case }
end;

end.
