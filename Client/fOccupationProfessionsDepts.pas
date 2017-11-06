unit fOccupationProfessionsDepts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, DB, AbmesFields, ParamDataSet,
  ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, uClientTypes,
  JvComponent, JvCaptionButton, JvComponentBase, DBGridEhGrouping, Menus;

type
  TfmOccupationProfessionsDepts = class(TGridForm)
    pnlRightButtons: TPanel;
    btnAddNode: TSpeedButton;
    btnDelNode: TSpeedButton;
    btnEditNode: TSpeedButton;
    cdsGridDataOCCUPATION_CODE: TAbmesFloatField;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridDataDEPT_NAME: TAbmesWideStringField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParamsOCCUPATION_CODE: TAbmesFloatField;
    cdsGridDataOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    cdsGridDataDEPT_IS_EXTERNAL: TAbmesFloatField;
    cdsGridDataDEPT_IS_RECURRENT: TAbmesFloatField;
    cdsOccWorkDeptPriorities: TAbmesClientDataSet;
    cdsGridData_OWD_PRIORITY_DISPLAY_NAME: TAbmesWideStringField;
    cdsOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    cdsOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField;
    cdsOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField;
    cdsOccWorkDeptPrioritiesPRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsGridDataDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    sepFilterCoveredDepts: TToolButton;
    actFilterCoveredDepts: TAction;
    btnFilterCoveredDepts: TToolButton;
    cdsGridDataIS_CAPACITY_GENERATOR: TAbmesFloatField;
    cdsGridDataIS_DELEGATED: TAbmesFloatField;
    procedure cdsGridDataDEPT_CODEChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure actEditRecordUpdate(Sender: TObject);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataDEPT_OWDP_COVER_TYPE_CODEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure actFilterCoveredDeptsExecute(Sender: TObject);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
  private
    FDeptCode: Integer;
    procedure PermanentlyHideCoveredDepts;
  protected
    function GetGridRecordReadOnly: Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
  public
    property DeptCode: Integer read FDeptCode write FDeptCode;
  end;

implementation

uses uTreeClientUtils, fOccupationProfessionsDept, uClientUtils,
  uTreeNodes, fTreeSelectForm, dMain, uUtils, fEditForm, uOWDPriorityTypes,
  uClientConsts, uOWDPriorityClientConsts;

{$R *.dfm}

procedure TfmOccupationProfessionsDepts.cdsGridDataDEPT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsGridDataDEPT_CODE, cdsGridDataDEPT_NAME, cdsGridDataDEPT_IDENTIFIER,
    nil, nil, nil, cdsGridDataDEPT_IS_RECURRENT, nil, nil, cdsGridDataDEPT_IS_EXTERNAL);

  cdsGridDataOCC_WORK_DEPT_PRIORITY_CODE.Clear;
end;

procedure TfmOccupationProfessionsDepts.cdsGridDataDEPT_OWDP_COVER_TYPE_CODEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= DeptOWDPCoverTypeAbbrevs[IntToDeptOWDPCoverType(Sender.AsInteger)];
end;

procedure TfmOccupationProfessionsDepts.FormCreate(Sender: TObject);
begin
  inherited;
  FDeptCode:= tnRootDeptCode;
  EditFormClass:= TfmOccupationProfessionsDept;
end;

procedure TfmOccupationProfessionsDepts.grdDataGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont;
  var Background: TColor; State: TGridDrawState);
begin
  inherited;
  if (not cdsGridDataDEPT_OWDP_COVER_TYPE_CODE.IsNull) and
     ( (cdsGridDataDEPT_OWDP_COVER_TYPE_CODE.AsDeptOWDPCoverType = dowdpctAncestor) or
       cdsGridDataIS_DELEGATED.AsBoolean
     ) then
    begin
      if cdsGridDataIS_DELEGATED.AsBoolean then
        AFont.Color:= DelegatedDeptsFontColor
      else
        AFont.Color:= clGray;

      if cdsGridDataIS_DELEGATED.AsBoolean then
        Background:= DelegatedDeptsColor
      else
        Background:= CoveredDeptsColor;
    end;
end;

procedure TfmOccupationProfessionsDepts.actEditRecordUpdate(
  Sender: TObject);
begin
  // do not call inherited
  (Sender as TAction).Enabled:= GetEditRecordEnabled;

  with Sender as TAction do
    if GetGridRecordReadOnly then
      Hint:= SReadOnlyCaption
    else
      Hint:= SEditCaption;
end;

procedure TfmOccupationProfessionsDepts.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  CheckRequiredFields(cdsGridData, 'DEPT_CODE; OCC_WORK_DEPT_PRIORITY_CODE');
end;

function TfmOccupationProfessionsDepts.GetDelRecordEnabled: Boolean;
begin
  Result:=
    inherited and
    ( not cdsGridDataDEPT_OWDP_COVER_TYPE_CODE.IsNull and
      (cdsGridDataDEPT_OWDP_COVER_TYPE_CODE.AsDeptOWDPCoverType in [dowdpctLocal, dowdpctLocalAndDescendants])
    ) and
    not cdsGridDataIS_DELEGATED.AsBoolean;
end;

function TfmOccupationProfessionsDepts.GetGridRecordReadOnly: Boolean;
begin
  Result:= True;
end;

procedure TfmOccupationProfessionsDepts.actFilterCoveredDeptsExecute(Sender: TObject);
begin
  inherited;
  cdsGridData.Filtered:= not cdsGridData.Filtered;
end;

procedure TfmOccupationProfessionsDepts.cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    (cdsGridDataDEPT_OWDP_COVER_TYPE_CODE.AsDeptOWDPCoverType in [dowdpctLocal, dowdpctLocalAndDescendants]) and
    not cdsGridDataIS_DELEGATED.AsBoolean;
end;

procedure TfmOccupationProfessionsDepts.PermanentlyHideCoveredDepts;
begin
  if not cdsGridData.Filtered then
    actFilterCoveredDepts.Execute;

  actFilterCoveredDepts.Enabled:= False;
end;

procedure TfmOccupationProfessionsDepts.cdsGridDataAfterDelete(DataSet: TDataSet);
begin
  inherited;
  PermanentlyHideCoveredDepts;
end;

procedure TfmOccupationProfessionsDepts.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;
  PermanentlyHideCoveredDepts;
end;

end.
