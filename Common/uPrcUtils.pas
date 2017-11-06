unit uPrcUtils;

interface

uses
  uPrcDeclarations;

const
  PrcDataFieldName = 'PRC_DATA';

  plsUnmastered = 1;
  plsMastered = 2;
  plsRejected = 3;

type
  TProcessActionType = (patNone, patBase, patConcrete, patProject);

function OwnerLevelTableName(AProcessOwner: TProcessOwner; AProcessLevel: TProcessLevel): string;
function MakeFullStrKeyValue(const AParentFullStrKeyValue, ALocalStrKeyValue: string): string;

type
  TPrcOrgDistributionStatus = (
    podsGroupDept,
    podsDescendantGroupDept,
    podsDefiniteDept,
    podsOccupation,
    podsOccupationEmployee,
    podsMasteredOccupationEmployee);

function IntToPrcOrgDistributionStatus(AValue: Integer): TPrcOrgDistributionStatus;
function PrcOrgDistributionStatusToInt(AValue: TPrcOrgDistributionStatus): Integer;

function ProcessActionTypeToInt(AValue: TProcessActionType): Integer;
function IntToProcessActionType(AValue: Integer): TProcessActionType;

implementation

uses
  SysUtils, StrUtils;

function OwnerLevelTableName(AProcessOwner: TProcessOwner; AProcessLevel: TProcessLevel): string;
begin
  Result:=
    IfThen(not AProcessLevel.IsDisconnected, AProcessOwner.TablePrefix + '_') +
    AProcessLevel.EntityPluralName;
end;

function MakeFullStrKeyValue(const AParentFullStrKeyValue, ALocalStrKeyValue: string): string;
begin
  Result:=
    IfThen(AParentFullStrKeyValue <> '', AParentFullStrKeyValue + ';') +
    ALocalStrKeyValue;
end;

function IntToPrcOrgDistributionStatus(AValue: Integer): TPrcOrgDistributionStatus;
begin
  case AValue of
    1: Result:= podsGroupDept;
    2: Result:= podsDescendantGroupDept;
    3: Result:= podsDefiniteDept;
    4: Result:= podsOccupation;
    5: Result:= podsOccupationEmployee;
    6: Result:= podsMasteredOccupationEmployee;
  else
    raise Exception.Create('Unknown PrcOrgDistributionStatus code');
  end;
end;

function PrcOrgDistributionStatusToInt(AValue: TPrcOrgDistributionStatus): Integer;
begin
  case AValue of
    podsGroupDept: Result:= 1;
    podsDescendantGroupDept: Result:= 2;
    podsDefiniteDept: Result:= 3;
    podsOccupation: Result:= 4;
    podsOccupationEmployee: Result:= 5;
    podsMasteredOccupationEmployee: Result:= 6;
  else
    raise Exception.Create('Unknown PrcOrgDistributionStatus');
  end;
end;

function ProcessActionTypeToInt(AValue: TProcessActionType): Integer;
begin
  case AValue of
    patNone: Result:= 0;
    patBase: Result:= 1;
    patConcrete: Result:= 2;
    patProject: Result:= 3;
  else
    raise Exception.Create('Unknown ProcessActionType code');
  end;
end;

function IntToProcessActionType(AValue: Integer): TProcessActionType;
begin
  case AValue of
    0: Result:= patNone;
    1: Result:= patBase;
    2: Result:= patConcrete;
    3: Result:= patProject;
  else
    raise Exception.Create('Unknown ProcessActionType');
  end;
end;

end.
