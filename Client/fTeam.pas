unit fTeam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDualGridForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  Menus, JvButtons, ImgList, ActnList, GridsEh, DBGridEh, AbmesDBGrid,
  StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, ParamDataSet,
  ColorNavigator, ComCtrls, ToolWin, fBaseFrame, fDBFrame, fFieldEditFrame,
  AbmesDBCheckBox, fGridForm,
  fEditForm, fDualGridFrame, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald, JvComponent, JvCaptionButton, JvComponentBase;
                                                               
type
  TfmTeam = class(TEditForm)
    cdsDataTEAM_CODE: TAbmesFloatField;
    cdsDataTEAM_NAME: TAbmesWideStringField;
    cdsDataqryTeamMembers: TDataSetField;
    cdsDataTEAM_NO: TAbmesFloatField;
    cdsDataDEPT_CODE: TAbmesFloatField;
    cdsDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDataDEPT_NAME: TAbmesWideStringField;
    cdsDataIS_ACTIVE: TAbmesFloatField;
    cdsDataqryTeamProfessions: TDataSetField;
    cdsTeamNotMembers: TAbmesClientDataSet;
    cdsTeamNotMembersTEAM_CODE: TAbmesFloatField;
    cdsTeamNotMembersEMPLOYEE_CODE: TAbmesFloatField;
    cdsTeamNotMembersEMPLOYEE_NAME: TAbmesWideStringField;
    pnlEdit: TPanel;
    lblTeamNo: TLabel;
    lblTeamName: TLabel;
    edtTeamNo: TDBEdit;
    edtTeamName: TDBEdit;
    chkIsActive: TAbmesDBCheckBox;
    frProfessions: TDualGridFrame;
    frTeamEmployees: TDualGridFrame;
    cdsTeamMembers: TAbmesClientDataSet;
    cdsTeamMembersTEAM_CODE: TAbmesFloatField;
    cdsTeamMembersEMPLOYEE_CODE: TAbmesFloatField;
    cdsTeamMembersEMPLOYEE_NAME: TAbmesWideStringField;
    cdsTeamNotProfessions: TAbmesClientDataSet;
    cdsTeamProfessions: TAbmesClientDataSet;
    cdsTeamProfessionsTEAM_CODE: TAbmesFloatField;
    cdsTeamProfessionsPROFESSION_CODE: TAbmesFloatField;
    cdsTeamProfessionsPROFESSION_NAME: TAbmesWideStringField;
    cdsTeamNotProfessionsTEAM_CODE: TAbmesFloatField;
    cdsTeamNotProfessionsPROFESSION_CODE: TAbmesFloatField;
    cdsTeamNotProfessionsPROFESSION_NAME: TAbmesWideStringField;
    cdsTeamProfessionsHAS_DOCUMENTATION: TAbmesFloatField;
    cdsTeamNotProfessionsHAS_DOCUMENTATION: TAbmesFloatField;
    cdsTeamMembersHAS_DOCUMENTATION: TAbmesFloatField;
    cdsTeamNotMembersHAS_DOCUMENTATION: TAbmesFloatField;
    lblDept: TLabel;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    pnlDocs: TToolBar;
    btnDocs: TSpeedButton;
    tlbTeamProfessionDocs: TToolBar;
    btnTeamProfessionDocs: TSpeedButton;
    tlbTeamNotProfessionDocs: TToolBar;
    btnTeamNotProfessionDocs: TSpeedButton;
    tlbTeamMemberDocs: TToolBar;
    btnTeamMemberDocs: TSpeedButton;
    tlbTeamNotMemberDocs: TToolBar;
    btnTeamNotMemberDocs: TSpeedButton;
    cdsTeamProfessionsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsTeamProfessionsDOC_CODE: TAbmesFloatField;
    cdsTeamNotProfessionsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsTeamNotProfessionsDOC_CODE: TAbmesFloatField;
    cdsTeamMembersDOC_BRANCH_CODE: TAbmesFloatField;
    cdsTeamMembersDOC_CODE: TAbmesFloatField;
    cdsTeamNotMembersDOC_BRANCH_CODE: TAbmesFloatField;
    cdsTeamNotMembersDOC_CODE: TAbmesFloatField;
    cdsTeamMembersSHIFT_IDENTIFIER: TAbmesWideStringField;
    frDept: TfrDeptFieldEditFrameBald;
    cdsTeamNotMembersSHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsTeamMembersOCCUPATION_NAME: TAbmesWideStringField;
    cdsTeamMembersDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsTeamNotMembersOCCUPATION_NAME: TAbmesWideStringField;
    cdsTeamMembersEMPLOYEE_NO: TAbmesFloatField;
    cdsTeamNotMembersEMPLOYEE_NO: TAbmesFloatField;
    lblEmpWorkdayDurationHours: TLabel;
    edtEmpWorkdayDurationHours: TDBEdit;
    lblHours: TLabel;
    lblEmpWorkdayDensity: TLabel;
    edtEmpWorkdayDensity: TDBEdit;
    lblPercents: TLabel;
    cdsDataDEFINED_EMPLOYEE_COUNT: TAbmesFloatField;
    cdsDataEMP_WORKDAY_DURATION_HOURS: TAbmesFloatField;
    cdsDataEMP_WORKDAY_DENSITY_PERCENT: TAbmesFloatField;
    edtDefinedEmployeeCount: TDBEdit;
    lblDefinedEmployeeCount: TLabel;
    lblEmpWorkdayEffectiveHours: TLabel;
    edtEmpWorkdayEffectiveHours: TDBEdit;
    lblHoursADay: TLabel;
    cdsData_EMP_WORKDAY_EFFECTIVE_HOURS: TAbmesFloatField;
    cdsTeamProfessionsPROFESSION_FULL_NO: TAbmesWideStringField;
    cdsTeamNotProfessionsPROFESSION_FULL_NO: TAbmesWideStringField;
    cdsTeamProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsTeamNotProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsDataDEPT_CODEChange(Sender: TField);
    procedure cdsTeamProfessionsBeforePost(DataSet: TDataSet);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure cdsDataBeforeClose(DataSet: TDataSet);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure btnDocsClick(Sender: TObject);
    procedure btnTeamProfessionDocsClick(Sender: TObject);
    procedure btnTeamNotProfessionDocsClick(Sender: TObject);
    procedure btnTeamMemberDocsClick(Sender: TObject);
    procedure btnTeamNotMemberDocsClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsDataEMP_WORKDAY_DENSITY_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDataEMP_WORKDAY_DENSITY_PERCENTSetText(Sender: TField;
      const Text: string);
  private
    { Private declarations }
  protected
    class function CanUseDocs: Boolean; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uUtils, uClientTypes, fDBDataForm, uTreeClientUtils, uDocUtils,
  uClientUtils;

{$R *.dfm}

{ TfmTeam }

class function TfmTeam.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmTeam.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataTEAM_CODE.AsInteger:= -1;
  cdsDataIS_ACTIVE.AsBoolean:= True;
end;

procedure TfmTeam.FormCreate(Sender: TObject);
begin
  inherited;
  frDept.FieldNames:= 'DEPT_CODE';
  MaximizeStyle:= msVertical;
end;

procedure TfmTeam.Initialize;
begin
  inherited;
  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotTeam, dsData.DataSet);
end;

procedure TfmTeam.cdsDataDEPT_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsDataDEPT_CODE, cdsDataDEPT_NAME, cdsDataDEPT_IDENTIFIER);
end;

procedure TfmTeam.cdsDataEMP_WORKDAY_DENSITY_PERCENTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmTeam.cdsDataEMP_WORKDAY_DENSITY_PERCENTSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  PercentFieldSetText(Sender, Text);
end;

procedure TfmTeam.cdsTeamProfessionsBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('TEAM_CODE').AsInteger:= cdsDataTEAM_CODE.AsInteger;
end;

procedure TfmTeam.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;

  SetParams(cdsTeamNotProfessions.Params, cdsData);
  cdsTeamNotProfessions.Open;

  SetParams(cdsTeamNotMembers.Params, cdsData);
  cdsTeamNotMembers.Open;
end;

procedure TfmTeam.cdsDataBeforeClose(DataSet: TDataSet);
begin
  inherited;
  cdsTeamNotMembers.Close;
  cdsTeamNotProfessions.Close;
end;

procedure TfmTeam.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsData_EMP_WORKDAY_EFFECTIVE_HOURS.AsVariant:=
    cdsDataEMP_WORKDAY_DURATION_HOURS.AsVariant *
    cdsDataEMP_WORKDAY_DENSITY_PERCENT.AsVariant;
end;

class function TfmTeam.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmTeam.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmTeam.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, btnDocs, dotTeam, cdsData);
end;

procedure TfmTeam.btnTeamProfessionDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnTeamProfessionDocs, dotProfession, cdsTeamProfessions);
end;

procedure TfmTeam.btnTeamNotProfessionDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnTeamNotProfessionDocs, dotProfession, cdsTeamNotProfessions);
end;

procedure TfmTeam.btnTeamMemberDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnTeamMemberDocs, dotEmployee, cdsTeamMembers);
end;

procedure TfmTeam.btnTeamNotMemberDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnTeamNotMemberDocs, dotEmployee, cdsTeamNotMembers);
end;

procedure TfmTeam.actFormUpdate(Sender: TObject);
begin
  inherited;

  btnTeamProfessionDocs.Enabled:=
    cdsTeamProfessions.Active and
    cdsTeamProfessionsHAS_DOCUMENTATION.AsBoolean;

  btnTeamNotProfessionDocs.Enabled:=
    cdsTeamNotProfessions.Active and
    cdsTeamNotProfessionsHAS_DOCUMENTATION.AsBoolean;

  btnTeamMemberDocs.Enabled:=
    cdsTeamMembers.Active and
    cdsTeamMembersHAS_DOCUMENTATION.AsBoolean;

  btnTeamNotMemberDocs.Enabled:=
    cdsTeamNotMembers.Active and
    cdsTeamNotMembersHAS_DOCUMENTATION.AsBoolean;
end;

end.
