unit uOWDPriorityTypes;

interface

uses
  uUtils, Db;

type
  TOrgWorkLevel = (owlExecuting, owlManaging);
  TOrgWorkMode = (owmExploitation, owmService);
  TDeptOWDPCoverType = (dowdpctLocal, dowdpctLocalAndDescendants, dowdpctAncestor);

function IntToOrgWorkLevel(AValue: Integer): TOrgWorkLevel;
function OrgWorkLevelToInt(AValue: TOrgWorkLevel): Integer;

function IntToOrgWorkMode(AValue: Integer): TOrgWorkMode;
function OrgWorkModeToInt(AValue: TOrgWorkMode): Integer;

function IntToDeptOWDPCoverType(AValue: Integer): TDeptOWDPCoverType;
function DeptOWDPCoverTypeToInt(AValue: TDeptOWDPCoverType): Integer;

type
  TOWDPriorityTypeFieldHelper = class helper (TFieldHelper) for TField
  private
    function GetAsOrgWorkLevel: TOrgWorkLevel;
    procedure SetAsOrgWorkLevel(Value: TOrgWorkLevel);
    function GetAsOrgWorkMode: TOrgWorkMode;
    procedure SetAsOrgWorkMode(Value: TOrgWorkMode);
    function GetAsDeptOWDPCoverType: TDeptOWDPCoverType;
    procedure SetAsDeptOWDPCoverType(const Value: TDeptOWDPCoverType);
  public
    property AsOrgWorkLevel: TOrgWorkLevel read GetAsOrgWorkLevel write SetAsOrgWorkLevel;
    property AsOrgWorkMode: TOrgWorkMode read GetAsOrgWorkMode write SetAsOrgWorkMode;
    property AsDeptOWDPCoverType: TDeptOWDPCoverType read GetAsDeptOWDPCoverType write SetAsDeptOWDPCoverType;
  end;

function DefaultDeptOWDPCoverType(AIsGroup: Boolean; AOrgWorkLevel: TOrgWorkLevel): TDeptOWDPCoverType;

implementation

uses
  SysUtils;

function IntToOrgWorkLevel(AValue: Integer): TOrgWorkLevel;
begin
  case AValue of
    1: Result:= owlExecuting;
    2: Result:= owlManaging;
  else
    raise Exception.Create('Unknown OrgWorkLevel code');
  end;
end;

function OrgWorkLevelToInt(AValue: TOrgWorkLevel): Integer;
begin
  case AValue of
    owlExecuting: Result:= 1;
    owlManaging: Result:= 2;
  else
    raise Exception.Create('Unknown OrgWorkLevel');
  end;
end;

function IntToOrgWorkMode(AValue: Integer): TOrgWorkMode;
begin
  case AValue of
    1: Result:= owmExploitation;
    2: Result:= owmService;
  else
    raise Exception.Create('Unknown OrgWorkMode code');
  end;
end;

function OrgWorkModeToInt(AValue: TOrgWorkMode): Integer;
begin
  case AValue of
    owmExploitation: Result:= 1;
    owmService: Result:= 2;
  else
    raise Exception.Create('Unknown OrgWorkMode');
  end;
end;

function IntToDeptOWDPCoverType(AValue: Integer): TDeptOWDPCoverType;
begin
  case AValue of
    1: Result:= dowdpctLocal;
    2: Result:= dowdpctLocalAndDescendants;
    3: Result:= dowdpctAncestor;
  else
    raise Exception.Create('Unknown DeptOWDPCoverType code');
  end;
end;

function DeptOWDPCoverTypeToInt(AValue: TDeptOWDPCoverType): Integer;
begin
  case AValue of
    dowdpctLocal: Result:= 1;
    dowdpctLocalAndDescendants: Result:= 2;
    dowdpctAncestor: Result:= 3;
  else
    raise Exception.Create('Unknown DeptOWDPCoverType');
  end;
end;

{ TOWDPriorityTypeFieldHelper }

function TOWDPriorityTypeFieldHelper.GetAsOrgWorkLevel: TOrgWorkLevel;
begin
  Result:= IntToOrgWorkLevel(AsInteger);
end;

procedure TOWDPriorityTypeFieldHelper.SetAsOrgWorkLevel(Value: TOrgWorkLevel);
begin
  AsInteger:= OrgWorkLevelToInt(Value);
end;

function TOWDPriorityTypeFieldHelper.GetAsOrgWorkMode: TOrgWorkMode;
begin
  Result:= IntToOrgWorkMode(AsInteger);
end;

procedure TOWDPriorityTypeFieldHelper.SetAsOrgWorkMode(Value: TOrgWorkMode);
begin
  AsInteger:= OrgWorkModeToInt(Value);
end;

function TOWDPriorityTypeFieldHelper.GetAsDeptOWDPCoverType: TDeptOWDPCoverType;
begin
  Result:= IntToDeptOWDPCoverType(AsInteger);
end;

procedure TOWDPriorityTypeFieldHelper.SetAsDeptOWDPCoverType(const Value: TDeptOWDPCoverType);
begin
  AsInteger:= DeptOWDPCoverTypeToInt(Value);
end;

function DefaultDeptOWDPCoverType(AIsGroup: Boolean; AOrgWorkLevel: TOrgWorkLevel): TDeptOWDPCoverType;
begin
  if AIsGroup then
    Result:= dowdpctAncestor
  else
    if (AOrgWorkLevel = owlManaging) then
      Result:= dowdpctAncestor
    else
      Result:= dowdpctLocal;
end;

end.
