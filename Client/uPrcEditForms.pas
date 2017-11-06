unit uPrcEditForms;

interface

uses
  uPrcDeclarations, fEditForm;

function GetOwnerLevelEditFormClass(AOwner: TProcessOwner; ALevel: TProcessLevel): TEditFormClass;

implementation

uses
  fPrcDataProcessActionWithDateInterval, fPrcDataConcreteOp, fPrcActionLearningStatuses, fPrcDataFuncKnowl,
  fPrcDataFuncKnowlBaseOp, fPrcDataFunc, fPrcDataKnowl, fPrcDataBaseOp,
  fPrcDataProcessAction;

type
  TPrcOwnerLevelEditFormClass = record
    ProcessOwner: TProcessOwner;
    ProcessLevel: TProcessLevel;
    EditFormClass: TEditFormClass;
  end;

var
  PrcOwnerLevelEditFormClasses: array of TPrcOwnerLevelEditFormClass;

procedure AddPrcOwnerLevelEditForm(
  AProcessOwner: TProcessOwner;
  AProcessLevel: TProcessLevel;
  AEditFormClass: TEditFormClass);
begin
  SetLength(PrcOwnerLevelEditFormClasses, Length(PrcOwnerLevelEditFormClasses) + 1);
  with PrcOwnerLevelEditFormClasses[Length(PrcOwnerLevelEditFormClasses) - 1] do
    begin
      ProcessOwner:= AProcessOwner;
      ProcessLevel:= AProcessLevel;
      EditFormClass:= AEditFormClass;
    end;  { with }
end;

function GetOwnerLevelEditFormClass(AOwner: TProcessOwner; ALevel: TProcessLevel): TEditFormClass;
var
  PrcOwnerLevelEditFormClass: TPrcOwnerLevelEditFormClass;
begin
  Result:= nil;
  for PrcOwnerLevelEditFormClass in PrcOwnerLevelEditFormClasses do
    if (PrcOwnerLevelEditFormClass.ProcessOwner.Name = AOwner.Name) and
       (PrcOwnerLevelEditFormClass.ProcessLevel.Name = ALevel.Name) then
      begin
        Result:= PrcOwnerLevelEditFormClass.EditFormClass;
        Exit;
      end;
end;

initialization
  AddPrcOwnerLevelEditForm(ProcessOwners.Occupation, ProcessLevels.Func, TfmPrcDataFunc);
  AddPrcOwnerLevelEditForm(ProcessOwners.Occupation, ProcessLevels.Knowl, TfmPrcDataKnowl);
  AddPrcOwnerLevelEditForm(ProcessOwners.Occupation, ProcessLevels.BaseOp, TfmPrcDataBaseOp);
  AddPrcOwnerLevelEditForm(ProcessOwners.Occupation, ProcessLevels.BaseAction, TfmPrcDataProcessActionWithDateInterval);
  AddPrcOwnerLevelEditForm(ProcessOwners.Occupation, ProcessLevels.ConcreteOp, TfmPrcDataConcreteOp);
  AddPrcOwnerLevelEditForm(ProcessOwners.Occupation, ProcessLevels.ConcreteAction, TfmPrcDataProcessActionWithDateInterval);

  AddPrcOwnerLevelEditForm(ProcessOwners.DefiniteDept, ProcessLevels.Func, TfmPrcDataFunc);
  AddPrcOwnerLevelEditForm(ProcessOwners.DefiniteDept, ProcessLevels.Knowl, TfmPrcDataKnowl);
  AddPrcOwnerLevelEditForm(ProcessOwners.DefiniteDept, ProcessLevels.BaseOp, TfmPrcDataBaseOp);
  AddPrcOwnerLevelEditForm(ProcessOwners.DefiniteDept, ProcessLevels.BaseAction, TfmPrcDataProcessActionWithDateInterval);
  AddPrcOwnerLevelEditForm(ProcessOwners.DefiniteDept, ProcessLevels.ConcreteOp, TfmPrcDataConcreteOp);
  AddPrcOwnerLevelEditForm(ProcessOwners.DefiniteDept, ProcessLevels.ConcreteAction, TfmPrcDataProcessActionWithDateInterval);

  AddPrcOwnerLevelEditForm(ProcessOwners.GroupDept, ProcessLevels.Func, TfmPrcDataFunc);
  AddPrcOwnerLevelEditForm(ProcessOwners.GroupDept, ProcessLevels.Knowl, TfmPrcDataKnowl);
  AddPrcOwnerLevelEditForm(ProcessOwners.GroupDept, ProcessLevels.BaseOp, TfmPrcDataBaseOp);
  AddPrcOwnerLevelEditForm(ProcessOwners.GroupDept, ProcessLevels.BaseAction, TfmPrcDataProcessActionWithDateInterval);

  AddPrcOwnerLevelEditForm(ProcessOwners.RootDept, ProcessLevels.Func, TfmPrcDataFunc);
  AddPrcOwnerLevelEditForm(ProcessOwners.RootDept, ProcessLevels.Knowl, TfmPrcDataKnowl);
  AddPrcOwnerLevelEditForm(ProcessOwners.RootDept, ProcessLevels.BaseOp, TfmPrcDataBaseOp);
  AddPrcOwnerLevelEditForm(ProcessOwners.RootDept, ProcessLevels.BaseAction, TfmPrcDataProcessAction);

  AddPrcOwnerLevelEditForm(ProcessOwners.Project, ProcessLevels.Func, TfmPrcDataFunc);
  AddPrcOwnerLevelEditForm(ProcessOwners.Project, ProcessLevels.Knowl, TfmPrcDataKnowl);
  AddPrcOwnerLevelEditForm(ProcessOwners.Project, ProcessLevels.BaseOp, TfmPrcDataBaseOp);
  AddPrcOwnerLevelEditForm(ProcessOwners.Project, ProcessLevels.BaseAction, TfmPrcDataProcessAction);
  AddPrcOwnerLevelEditForm(ProcessOwners.Project, ProcessLevels.ConcreteOp, TfmPrcDataConcreteOp);
  AddPrcOwnerLevelEditForm(ProcessOwners.Project, ProcessLevels.ConcreteAction, TfmPrcDataProcessAction);

  AddPrcOwnerLevelEditForm(ProcessOwners.OccupationEmployee, ProcessLevels.Func, TfmPrcDataFunc);
  AddPrcOwnerLevelEditForm(ProcessOwners.OccupationEmployee, ProcessLevels.Knowl, TfmPrcDataKnowl);
  AddPrcOwnerLevelEditForm(ProcessOwners.OccupationEmployee, ProcessLevels.BaseOp, TfmPrcDataBaseOp);
  AddPrcOwnerLevelEditForm(ProcessOwners.OccupationEmployee, ProcessLevels.BaseAction, TfmPrcActionLearningStatuses);
  AddPrcOwnerLevelEditForm(ProcessOwners.OccupationEmployee, ProcessLevels.ConcreteOp, TfmPrcDataConcreteOp);
  AddPrcOwnerLevelEditForm(ProcessOwners.OccupationEmployee, ProcessLevels.ConcreteAction, TfmPrcActionLearningStatuses);

  AddPrcOwnerLevelEditForm(ProcessOwners.Func, ProcessLevels.Knowl, TfmPrcDataFuncKnowl);
  AddPrcOwnerLevelEditForm(ProcessOwners.Func, ProcessLevels.BaseOp, TfmPrcDataFuncKnowlBaseOp);
  AddPrcOwnerLevelEditForm(ProcessOwners.Func, ProcessLevels.BaseAction, TfmPrcDataProcessAction);
end.
