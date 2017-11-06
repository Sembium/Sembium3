unit uCompanyClasses;

interface

type
  TCompanyClasses = (ccFirm, ccPerson, ccCumulative, ccCommon);
  TCompanyClassesSet = set of TCompanyClasses;

function CompanyClassToInt(ACompanyClass: TCompanyClasses): Integer;
function IntToCompanyClass(ACompanyClass: Integer): TCompanyClasses;

implementation

uses
  SysUtils;

function CompanyClassToInt(ACompanyClass: TCompanyClasses): Integer;
begin
  case ACompanyClass of
    ccFirm: Result:= 1;
    ccPerson: Result:= 2;
    ccCumulative: Result:= 3;
    ccCommon: Result:= 4;
  else
    raise Exception.Create('internal error: unknown company class code');
  end;  { case }
end;

function IntToCompanyClass(ACompanyClass: Integer): TCompanyClasses;
begin
  case ACompanyClass of
    1: Result:= ccFirm;
    2: Result:= ccPerson;
    3: Result:= ccCumulative;
    4: Result:= ccCommon;
  else
    raise Exception.Create('internal error: unknown company class');
  end;  { case }
end;

end.
