unit uProfessionTypes;

interface

type
  TProfessionType = (ptGlobal, ptBaseOp, ptConcreteOp);

const
  ProfessionsTreeRootCode = 1000000;

function IntToProfessionType(AValue: Integer): TProfessionType;
function ProfessionTypeToInt(AValue: TProfessionType): Integer;

implementation

uses
  SysUtils;

function IntToProfessionType(AValue: Integer): TProfessionType;
begin
  case AValue of
    1: Result:= ptGlobal;
    2: Result:= ptBaseOp;
    3: Result:= ptConcreteOp;
  else
    raise Exception.Create('Unknown ProfessionType code');
  end;  { case }
end;

function ProfessionTypeToInt(AValue: TProfessionType): Integer;
begin
  case AValue of
    ptGlobal: Result:= 1;
    ptBaseOp: Result:= 2;
    ptConcreteOp: Result:= 3;
  else
    raise Exception.Create('Unknown ProfessionType');
  end;  { case }
end;

end.
