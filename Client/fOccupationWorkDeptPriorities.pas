unit fOccupationWorkDeptPriorities;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, DB, AbmesFields, ParamDataSet,
  ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fBottomButtonGridForm, JvComponent, JvCaptionButton, JvComponentBase, DBGridEhGrouping, Menus,
  fBaseForm;

type
  [CanUseDocs]
  TfmOccupationWorkDeptPriorities = class(TBottomButtonGridForm)
    cdsGridDataOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    cdsGridDataOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField;
    cdsGridData_MAX_OCC_W_DEPT_PRIORITY_CODE: TAggregateField;
    cdsGridDataIS_CAPACITY_GENERATOR: TAbmesFloatField;
    tlbDoc: TToolBar;
    sepDoc: TToolButton;
    btnDoc: TToolButton;
    actDoc: TAction;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsOrgWorkLevels: TAbmesClientDataSet;
    cdsOrgWorkActivities: TAbmesClientDataSet;
    cdsGridData_OWD_PRIORITY_TYPE: TAbmesWideStringField;
    cdsGridDataORG_WORK_LEVEL_CODE: TAbmesFloatField;
    cdsGridDataORG_WORK_ACTIVITY_CODE: TAbmesFloatField;
    cdsOrgWorkLevelsORG_WORK_LEVEL_CODE: TAbmesFloatField;
    cdsOrgWorkLevelsORG_WORK_LEVEL_NO: TAbmesFloatField;
    cdsOrgWorkLevelsORG_WORK_LEVEL_NAME: TAbmesWideStringField;
    cdsOrgWorkLevelsORG_WORK_LEVEL_ABBREV: TAbmesWideStringField;
    cdsOrgWorkActivitiesORG_WORK_ACTIVITY_CODE: TAbmesFloatField;
    cdsOrgWorkActivitiesORG_WORK_ACTIVITY_NO: TAbmesFloatField;
    cdsOrgWorkActivitiesORG_WORK_ACTIVITY_NAME: TAbmesWideStringField;
    cdsOrgWorkActivitiesORG_WORK_MODE_CODE: TAbmesFloatField;
    cdsGridData_ORG_WORK_LEVEL_NAME: TAbmesWideStringField;
    cdsGridData_ORG_WORK_ACTIVITY_NAME: TAbmesWideStringField;
    cdsGridData_ORG_WORK_MODE_CODE: TAbmesFloatField;
    cdsOrgWorkTypes: TAbmesClientDataSet;
    cdsOrgWorkTypesORG_WORK_LEVEL_CODE: TAbmesFloatField;
    cdsOrgWorkTypesORG_WORK_MODE_CODE: TAbmesFloatField;
    cdsOrgWorkTypesIS_PROCESS_GENERATOR: TAbmesFloatField;
    cdsGridData_IS_PROCESS_GENERATOR: TAbmesFloatField;
    cdsGridDataORG_WORK_MODE_CODE: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure actDocUpdate(Sender: TObject);
    procedure actDocExecute(Sender: TObject);
    procedure cdsGridDataBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataORG_WORK_LEVEL_CODEChange(Sender: TField);
    procedure cdsGridDataORG_WORK_ACTIVITY_CODEChange(Sender: TField);
  private
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    function IsExecutingExploitation: Boolean;
    procedure OWDPriorityTypeFieldChanged;
  protected
    procedure DoGridApplyUpdates; override;
  public
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  dMain, fOccupationWorkDeptPriority, uUtils, uDocUtils, uClientTypes,
  uOWDPriorityTypes;

{$R *.dfm}

{ TfmOccupationWorkDeptPriorities }

procedure TfmOccupationWorkDeptPriorities.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmOccupationWorkDeptPriority;
end;

procedure TfmOccupationWorkDeptPriorities.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataOCC_WORK_DEPT_PRIORITY_CODE.AsInteger:=
    VarToInt(cdsGridData_MAX_OCC_W_DEPT_PRIORITY_CODE.Value) + 1;
end;

function TfmOccupationWorkDeptPriorities.IsExecutingExploitation: Boolean;
begin
  Result:=
    not cdsGridDataORG_WORK_LEVEL_CODE.IsNull and
    (cdsGridDataORG_WORK_LEVEL_CODE.AsOrgWorkLevel = owlExecuting) and
    not cdsGridData_ORG_WORK_MODE_CODE.IsNull and
    (cdsGridData_ORG_WORK_MODE_CODE.AsOrgWorkMode = owmExploitation);
end;

procedure TfmOccupationWorkDeptPriorities.OWDPriorityTypeFieldChanged;
begin
  if not IsExecutingExploitation then
    cdsGridDataIS_CAPACITY_GENERATOR.AsBoolean:= False;
end;

procedure TfmOccupationWorkDeptPriorities.cdsGridDataORG_WORK_ACTIVITY_CODEChange(Sender: TField);
begin
  inherited;
  OWDPriorityTypeFieldChanged;
  cdsGridDataORG_WORK_MODE_CODE.AsVariant:=
    cdsOrgWorkActivities.Lookup('ORG_WORK_ACTIVITY_CODE', cdsGridDataORG_WORK_ACTIVITY_CODE.AsVariant, 'ORG_WORK_MODE_CODE');
end;

procedure TfmOccupationWorkDeptPriorities.cdsGridDataORG_WORK_LEVEL_CODEChange(Sender: TField);
begin
  inherited;
  OWDPriorityTypeFieldChanged;
end;

procedure TfmOccupationWorkDeptPriorities.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotOccWorkDeptPriority,
    cdsGridData);
end;

procedure TfmOccupationWorkDeptPriorities.actDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (cdsGridData.RecordCount > 0);
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataHAS_DOC_ITEMS.AsBoolean);
end;

procedure TfmOccupationWorkDeptPriorities.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(cdsGridDataHAS_DOC_ITEMS);
end;

procedure TfmOccupationWorkDeptPriorities.Initialize;
begin
  inherited;
  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;
end;

procedure TfmOccupationWorkDeptPriorities.Finalize;
begin
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  FOlddmDocClientOnDataChanged:= nil;
  inherited;
end;

procedure TfmOccupationWorkDeptPriorities.cdsGridDataBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmOccupationWorkDeptPriorities.DoGridApplyUpdates;
begin
  inherited;
  dmDocClient.CommitUpdates;
end;

procedure TfmOccupationWorkDeptPriorities.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGridData_OWD_PRIORITY_TYPE.AsString:=
    Format('%s %s', [
      cdsGridData_ORG_WORK_LEVEL_NAME.AsString,
      cdsGridData_ORG_WORK_ACTIVITY_NAME.AsString]);
end;

end.
