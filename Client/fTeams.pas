unit fTeams;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, Menus, JvButtons, ImgList, ParamDataSet,
  ActnList, DB, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, AbmesFields, uClientTypes,
  ComCtrls, ToolWin, fMasterDetailForm, JvComponent, JvCaptionButton,
  JvComponentBase;

type
  TfmTeams = class(TMasterDetailForm)
    btnAddData: TBitBtn;
    btnDeleteData: TBitBtn;
    btnEditData: TBitBtn;                                                                                  
    cdsGridDataTEAM_CODE: TAbmesFloatField;
    cdsGridDataTEAM_NAME: TAbmesWideStringField;
    cdsGridDataTEAM_NO: TAbmesFloatField;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDEPT_NAME: TAbmesWideStringField;
    cdsGridDataIS_ACTIVE: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC: TAbmesFloatField;
    cdsGridDataEMPLOYEE_COUNT: TAbmesFloatField;
    cdsGridDataTEAM_PROFESSIONS: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField;
    cdsDetailTEAM_CODE: TAbmesFloatField;
    cdsDetailEMPLOYEE_CODE: TAbmesFloatField;
    cdsDetailEMPLOYEE_NAME: TAbmesWideStringField;
    cdsDetailDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailDOC_CODE: TAbmesFloatField;
    cdsDetailHAS_DOCUMENTATION: TAbmesFloatField;
    cdsDetailOCCUPATION_NAME: TAbmesWideStringField;
    actTeamDoc: TAction;
    sepBeforeTeamDoc: TToolButton;
    btnTeamDoc: TSpeedButton;
    cdsDetailSHIFT_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParamsTEAM_NO: TAbmesFloatField;
    pdsGridDataParamsTEAM_NAME: TAbmesWideStringField;
    cdsDetailDEPT_IDENTIFIER: TAbmesWideStringField;
    lblTeamDoc: TLabel;
    cdsDetailCOMPANY_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailCOMPANY_DOC_CODE: TAbmesFloatField;
    cdsDetailCOMPANY_HAS_DOCUMENTATION: TAbmesFloatField;
    tlbEmployeeDoc: TToolBar;
    sepBeforeEmployeeDoc: TToolButton;
    lblEmployeeDoc: TLabel;
    btnEmployeeDoc: TToolButton;
    tlbDoc: TToolBar;
    sepBeforeCompanyDoc: TToolButton;
    lblCompanyDoc: TLabel;
    btnCompanyDoc: TToolButton;
    actEmployeeDoc: TAction;
    actCompanyDoc: TAction;
    cdsDetailEMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataEMP_WORKDAY_DENSITY_PERCENT: TAbmesFloatField;
    cdsGridDataEMP_WORKDAY_DURATION_HOURS: TAbmesFloatField;
    cdsGridDataDEFINED_EMPLOYEE_COUNT: TAbmesFloatField;
    cdsGridDataEMP_WORKDAY_EFFECTIVE_HOURS: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure grdDetailSortMarkingChanged(Sender: TObject);
    procedure cdsDetailBeforeOpen(DataSet: TDataSet);
    procedure actTeamDocExecute(Sender: TObject);
    procedure actTeamDocUpdate(Sender: TObject);
    procedure actEmployeeDocUpdate(Sender: TObject);
    procedure actEmployeeDocExecute(Sender: TObject);
    procedure actCompanyDocUpdate(Sender: TObject);
    procedure actCompanyDocExecute(Sender: TObject);
    procedure cdsGridDataEMP_WORKDAY_DENSITY_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  protected
    class function CanUseDocs: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uClientUtils, fTeam, fTeamsFilter, uUtils, uDocUtils;

{$R *.dfm}

{ TfmTeams }

class function TfmTeams.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmTeams.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmTeam;
  FilterFormClass:= TfmTeamsFilter;
end;

procedure TfmTeams.cdsDetailBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with (DataSet as TClientDataSet) do
    if (IndexName = SortIndexName) then
      IndexName:= '';
end;

procedure TfmTeams.cdsGridDataEMP_WORKDAY_DENSITY_PERCENTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmTeams.grdDetailSortMarkingChanged(Sender: TObject);
begin
  inherited;
  SortGrid((Sender as TAbmesDBGrid), SortIndexName, SortFilteredDetails);
end;

procedure TfmTeams.actTeamDocExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));

  dmDocClient.OpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotTeam,
    cdsGridDataDOC_BRANCH_CODE.AsInteger,
    cdsGridDataDOC_CODE.AsInteger);
end;

procedure TfmTeams.actTeamDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsGridDataHAS_DOC.AsBoolean;
end;

procedure TfmTeams.actEmployeeDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsDetailHAS_DOCUMENTATION.AsInteger;
end;

procedure TfmTeams.actEmployeeDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotEmployee,
    cdsDetailDOC_BRANCH_CODE.AsInteger,
    cdsDetailDOC_CODE.AsInteger);
end;

procedure TfmTeams.actCompanyDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsDetailCOMPANY_HAS_DOCUMENTATION.AsInteger;
end;

procedure TfmTeams.actCompanyDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotCompany,
    cdsDetailCOMPANY_DOC_BRANCH_CODE.AsInteger,
    cdsDetailCOMPANY_DOC_CODE.AsInteger);
end;

end.
