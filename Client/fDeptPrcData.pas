unit fDeptPrcData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, DBGridEhGrouping, Menus, DB, AbmesFields, ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, fBaseFrame,
  fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fPrcDataFieldEditFrame, fBaseForm, fEditForm,
  fDualGridFrame, fDeptOWDPriorities, Mask, fMasterDetailForm, uClientConsts, fGridTreeListExpanderFrame;

type
  [CanUseDocs]
  [CanEditOuterDataSet(False)]
  TfmDeptPrcData = class(TMasterDetailForm)
    pcMain: TPageControl;
    pnlDept: TPanel;
    frDept: TfrDeptFieldEditFrame;
    tsPrcData: TTabSheet;
    cdsDataDEPT_CODE: TAbmesFloatField;
    cdsDataIS_GROUP: TAbmesFloatField;
    cdsDataPRC_DATA: TBlobField;
    cdsDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataEND_DATE: TAbmesSQLTimeStampField;
    cdsDataPARENT_CODE: TAbmesFloatField;
    cdsDataDEPT_TYPE_CODE: TAbmesFloatField;
    cdsDataNODE_NO: TAbmesFloatField;
    cdsDataSUFFIX_LETTER: TAbmesWideStringField;
    cdsDataNODE_NAME: TAbmesWideStringField;
    cdsDeptTypes: TAbmesClientDataSet;
    cdsDeptTypesDEPT_TYPE_CODE: TAbmesFloatField;
    cdsDeptTypesDEPT_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeptTypesDEPT_TYPE_NAME: TAbmesWideStringField;
    cdsData_DEPT_TYPE_ABBREV: TAbmesWideStringField;
    tsOWDPriorities: TTabSheet;
    cdsDeptNotOWDPriorities: TAbmesClientDataSet;
    cdsDeptNotOWDPrioritiesDEPT_CODE: TAbmesFloatField;
    cdsDeptNotOWDPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    cdsDeptNotOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField;
    cdsDeptNotOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField;
    dsDeptNotOWDPriorites: TDataSource;
    cdsDeptOWDPCoverTypes: TAbmesClientDataSet;
    cdsDataqryDeptOWDPriorities: TDataSetField;
    cdsGridData_DEPT_OWDP_COVER_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridDataOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    cdsGridDataOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField;
    cdsDataHAS_OWD_PRIORITIES_CHANGES: TAbmesFloatField;
    cdsDataIS_OWD_PRIORITIES_SET_COMPLETE: TAbmesFloatField;
    actIsOWDPrioritiesSetComplete: TAction;
    pnlIsOWDPrioritiesSetComplete: TPanel;
    tlbIsOWDPrioritiesSetComplete: TToolBar;
    btnIsOWDPrioritiesSetComplete: TToolButton;
    edtOWDPrioritiesCount: TDBEdit;
    cdsGridData_OWD_PRIORITIES_COUNT: TAggregateField;
    lblOWDPrioritiesCount: TLabel;
    cdsGridDataDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    cdsDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    cdsDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_NO: TAbmesFloatField;
    cdsDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_NAME: TAbmesWideStringField;
    cdsDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeptNotOWDPrioritiesHAS_NOT_COVERED_DESCENDANT: TAbmesFloatField;
    frDeptOWDPriorities: TfrDeptOWDPriorities;
    cdsGridDataHAS_NOT_COVERED_DESCENDANT: TAbmesFloatField;
    splOWDPriorityCoveredDepts: TSplitter;
    pnlCoveredDepts: TPanel;
    pnlCoveredDeptsTop: TPanel;
    lblCoveredDepts: TLabel;
    cdsDetailDEPT_CODE: TAbmesFloatField;
    cdsDetailPARENT_CODE: TAbmesFloatField;
    cdsDetailDEPT_NAME: TAbmesWideStringField;
    cdsDetailDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDetailIS_COVERED: TAbmesFloatField;
    cdsDetailIS_FIN_STORE: TAbmesFloatField;
    cdsDetailDEPT_IMAGE_INDEX: TAbmesFloatField;
    cdsDetailHAS_COVERED_DESCENDANTS: TAbmesFloatField;
    tlbOccupationEditButtons: TToolBar;
    btnToggleCoveredDepts: TToolButton;
    sepToggleCoveredDepts: TToolButton;
    actToggleCoveredDepts: TAction;
    cdsDetailSORT_FIELD: TAbmesWideStringField;
    grdCoveredDepts: TAbmesDBGrid;
    frCoveredDeptsTreeListExpander: TfrGridTreeListExpanderFrame;
    cdsDetailIS_DELEGATED: TAbmesFloatField;
    cdsDetailHAS_DELEGATED_DESCENDANTS: TAbmesFloatField;
    cdsDetailDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    cdsOccWorkDeptPriorities: TAbmesClientDataSet;
    cdsOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    cdsOccWorkDeptPrioritiesORG_WORK_LEVEL_CODE: TAbmesFloatField;
    cdsGridData_ORG_WORK_LEVEL_CODE: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsDeptNotOWDPrioritiesBeforeOpen(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
    procedure actIsOWDPrioritiesSetCompleteUpdate(Sender: TObject);
    procedure actIsOWDPrioritiesSetCompleteExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataDEPT_OWDP_COVER_TYPE_CODEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsDeptOWDPCoverTypesFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure splOWDPriorityCoveredDeptsCanResize(Sender: TObject; var NewSize: Integer; var Accept: Boolean);
    procedure actToggleCoveredDeptsExecute(Sender: TObject);
    procedure cdsDetailFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsDetailDEPT_NAMEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsDetailDEPT_IDENTIFIERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsDetailAfterOpen(DataSet: TDataSet);
    procedure grdCoveredDeptsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure grdCoveredDeptsGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure cdsDetailDEPT_OWDP_COVER_TYPE_CODEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataOCC_WORK_DEPT_PRIORITY_CODEChange(Sender: TField);
  private
    FfrPrcData: TfrPrcDataFieldEditFrame;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  rDeptPrcDataReport, uPrcDeclarations, uPrcUtils, uUtils,
  uOWDPriorityTypes, AbmesDialogs, uClientTypes, uOWDPriorityClientConsts,
  uClientUtils, uFinanceClientUtils, uTreeListUtils, dMain;

{$R *.dfm}

{ TfmDeptPrcData }

procedure TfmDeptPrcData.FormCreate(Sender: TObject);
begin
  inherited;
  FfrPrcData:= TfrPrcDataFieldEditFrame.Create(Self);
  FfrPrcData.OwnerDisplayName:= SDept;
  FfrPrcData.PrcDataReportClass:= TrptDeptPrcDataReport;
  tsPrcData.InsertControl(FfrPrcData);

  frCoveredDeptsTreeListExpander.TreeListGrid:= grdCoveredDepts;
end;

procedure TfmDeptPrcData.grdCoveredDeptsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
  Column: TColumnEh; State: TGridDrawState);
begin
  inherited;

  if not Assigned(Column.Field) or Column.Field.DataSet.IsEmpty then
    Exit;

  if (Column.FieldName = 'DEPT_NAME') then
    DrawTreeImageColumnCell(
      grdCoveredDepts,
      dmMain.ilDeptTypes,
      Column.Field.DataSet.FieldByName('DEPT_IMAGE_INDEX').AsInteger,
      Rect,
      Column);
end;

procedure TfmDeptPrcData.grdCoveredDeptsGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont;
  var Background: TColor; State: TGridDrawState);
const
  IsCoveredOrDelegatedColors: array[Boolean, Boolean] of TColor = ((clGray, DelegatedDeptsFontColor), (clWindowText, clWindow));
begin
  inherited;
  Assert(not (Column.Field.DataSet.FieldByName('IS_COVERED').AsBoolean and Column.Field.DataSet.FieldByName('IS_DELEGATED').AsBoolean));

  if not ((gdSelected in State) and (gdFocused in State)) then
    AFont.Color:=
      IsCoveredOrDelegatedColors[
        Column.Field.DataSet.FieldByName('IS_COVERED').AsBoolean,
        Column.Field.DataSet.FieldByName('IS_DELEGATED').AsBoolean];
end;

procedure TfmDeptPrcData.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDept) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  if (AFrame = frDeptOWDPriorities) then
    begin
      AFrame.ReadOnly:= (EditMode = emReadOnly) or cdsDataIS_OWD_PRIORITIES_SET_COMPLETE.AsBoolean;
      Exit;
    end;

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmDeptPrcData.splOWDPriorityCoveredDeptsCanResize(Sender: TObject; var NewSize: Integer; var Accept: Boolean);
begin
  inherited;
  SplitterStepResize(pnlCoveredDepts.Height, NewSize);
end;

procedure TfmDeptPrcData.Initialize;
begin
  if OuterDataSet.FieldByName('IS_GROUP').AsBoolean then
    begin
      FfrPrcData.ProcessOwner:= ProcessOwners.GroupDept;
      FfrPrcData.DefaultPrcOrgDistributionStatus:= podsGroupDept;
    end
  else
    begin
      FfrPrcData.ProcessOwner:= ProcessOwners.DefiniteDept;
      FfrPrcData.DefaultPrcOrgDistributionStatus:= podsDefiniteDept;
    end;

  inherited;
end;

procedure TfmDeptPrcData.OpenDataSets;
begin
  inherited;
  cdsDeptNotOWDPriorities.Open;
end;

procedure TfmDeptPrcData.CloseDataSets;
begin
  cdsDeptNotOWDPriorities.Close;
  inherited;
end;

procedure TfmDeptPrcData.cdsDeptNotOWDPrioritiesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsDeptNotOWDPriorities.Params, cdsData);
end;

procedure TfmDeptPrcData.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataDEPT_CODE.Assign(cdsDataDEPT_CODE);
end;

procedure TfmDeptPrcData.cdsGridDataOCC_WORK_DEPT_PRIORITY_CODEChange(Sender: TField);
begin
  inherited;
  cdsGridDataDEPT_OWDP_COVER_TYPE_CODE.AsDeptOWDPCoverType:=
    DefaultDeptOWDPCoverType(OuterDataSet.FieldByName('IS_GROUP').AsBoolean,
    cdsGridData_ORG_WORK_LEVEL_CODE.AsOrgWorkLevel);
end;

procedure TfmDeptPrcData.cdsGridDataAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CheckEditMode(cdsData);
  cdsDataHAS_OWD_PRIORITIES_CHANGES.AsBoolean:= True;
end;

procedure TfmDeptPrcData.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;
  CheckEditMode(cdsData);
  cdsDataHAS_OWD_PRIORITIES_CHANGES.AsBoolean:= True;
  FetchDetailsAfterScroll;
end;

procedure TfmDeptPrcData.cdsGridDataDEPT_OWDP_COVER_TYPE_CODEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if DisplayText and not Sender.IsNull then
    Text:= DeptOWDPCoverTypeAbbrevs[IntToDeptOWDPCoverType(Sender.AsInteger)]
  else
    Text:= Sender.AsString;
end;

procedure TfmDeptPrcData.actFormUpdate(Sender: TObject);
begin
  inherited;
  edtOWDPrioritiesCount.Font.Color:= IsOWDPrioritiesSetCompleteColors[cdsDataIS_OWD_PRIORITIES_SET_COMPLETE.AsBoolean];
end;

procedure TfmDeptPrcData.actIsOWDPrioritiesSetCompleteExecute(Sender: TObject);
var
  NewIsComplete: Boolean;
begin
  inherited;

  case MessageDlgEx(SConfirmOWDPrioritiesSetComplete, mtConfirmation, mbYesNoCancel, 0) of
    mrYes: NewIsComplete:= True;
    mrNo: NewIsComplete:= False;
  else
    Exit;
  end;

  CheckEditMode(cdsData);
  cdsDataIS_OWD_PRIORITIES_SET_COMPLETE.AsBoolean:= NewIsComplete;
end;

procedure TfmDeptPrcData.actIsOWDPrioritiesSetCompleteUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode <> emReadOnly);
end;

procedure TfmDeptPrcData.cdsDeptOWDPCoverTypesFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    ( OuterDataSet.FieldByName('IS_GROUP').AsBoolean and
      (cdsDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_CODE.AsDeptOWDPCoverType in [dowdpctLocalAndDescendants, dowdpctAncestor])
    ) or
    ( not OuterDataSet.FieldByName('IS_GROUP').AsBoolean and
      (cdsDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_CODE.AsDeptOWDPCoverType in [dowdpctLocal, dowdpctAncestor])
    );
end;

procedure TfmDeptPrcData.actToggleCoveredDeptsExecute(Sender: TObject);
begin
  inherited;
  cdsDetail.PreserveCurrentRecord('DEPT_CODE')/
    procedure begin
      cdsDetail.Filtered:= not cdsDetail.Filtered;
      grdCoveredDepts.ConvertToTreeList('DEPT_CODE', 'PARENT_CODE');
    end;
end;

procedure TfmDeptPrcData.cdsDetailFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    cdsDetailHAS_DELEGATED_DESCENDANTS.AsBoolean or
    cdsDetailHAS_COVERED_DESCENDANTS.AsBoolean;
end;

procedure TfmDeptPrcData.cdsDetailAfterOpen(DataSet: TDataSet);
begin
  inherited;
  grdCoveredDepts.ConvertToTreeList('DEPT_CODE', 'PARENT_CODE');
  cdsDetail.Locate('DEPT_CODE', cdsDataDEPT_CODE.AsInteger, []);
end;

procedure TfmDeptPrcData.cdsDetailDEPT_IDENTIFIERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  FinStoreFieldGetText(Sender, Text, DisplayText, Sender.DataSet.FieldByName('IS_FIN_STORE').AsBoolean);
end;

procedure TfmDeptPrcData.cdsDetailDEPT_NAMEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  FinStoreFieldGetText(Sender, Text, DisplayText, Sender.DataSet.FieldByName('IS_FIN_STORE').AsBoolean);
end;

procedure TfmDeptPrcData.cdsDetailDEPT_OWDP_COVER_TYPE_CODEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= DeptOWDPCoverTypeAbbrevs[IntToDeptOWDPCoverType(Sender.AsInteger)];
end;

end.
