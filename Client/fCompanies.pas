unit fCompanies;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBottomButtonGridForm, ImgList, ParamDataSet, ActnList, Db,
  DBClient, GridsEh, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, Menus, uClientTypes, AbmesClientDataSet, uCompanyKinds,
  DBGridEh, AbmesDBGrid, AbmesFields, JvButtons, ComCtrls, ToolWin, dDocClient,
  JvComponent, JvCaptionButton, JvComponentBase, DBGridEhGrouping;

type
  TfmCompanies = class(TBottomButtonGridForm)
    btnDocs: TSpeedButton;
    sepBeforeDocsButton: TToolButton;
    pdsGridDataParamsACTIVITY_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_COMPANY_OR_PERSON_CODE: TAbmesFloatField;
    pdsGridDataParamsCOMPANY_NAME: TAbmesWideStringField;
    pdsGridDataParamsSHORT_NAME: TAbmesWideStringField;
    pdsGridDataParamsABBREV: TAbmesWideStringField;
    pdsGridDataParamsFIRST_NAME: TAbmesWideStringField;
    pdsGridDataParamsMIDDLE_NAME: TAbmesWideStringField;
    pdsGridDataParamsLAST_NAME: TAbmesWideStringField;
    pdsGridDataParamsEGN: TAbmesWideStringField;
    actAddPerson: TAction;
    actAddCompany: TAction;
    pdsGridDataParamsCOMPANY_NO: TAbmesFloatField;
    actAddCumulative: TAction;
    cdsGridDataCOMPANY_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_NO: TAbmesFloatField;
    cdsGridDataCOUNTRY_NAME: TAbmesWideStringField;
    cdsGridDataTAX_NO: TAbmesFloatField;
    cdsGridDataCITY: TAbmesWideStringField;
    cdsGridDataBULSTAT: TAbmesWideStringField;
    cdsGridDataLANGUAGE_NAME: TAbmesWideStringField;
    cdsGridDataSTATE: TAbmesWideStringField;
    cdsGridDataREGION: TAbmesWideStringField;
    cdsGridDataZIP: TAbmesWideStringField;
    cdsGridDataADDRESS: TAbmesWideStringField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsGridDataDOC_IS_COMPLETE: TAbmesFloatField;
    cdsGridDataACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataCOMPANY_CLASS_CODE: TAbmesFloatField;
    cdsGridDataSHORT_NAME: TAbmesWideStringField;
    cdsGridDataCUSTOM_ID: TAbmesWideStringField;
    cdsGridDataIS_CLIENT: TAbmesFloatField;
    cdsGridDataIS_MEDIATOR: TAbmesFloatField;
    cdsGridDataIS_VENDOR: TAbmesFloatField;
    cdsGridDataIS_GOV_ORGANIZATION: TAbmesFloatField;
    cdsGridDataIS_BANK: TAbmesFloatField;
    cdsGridDataCLIENT_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataMEDIATOR_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataVENDOR_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataGOV_ORG_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataBANK_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataCOMPANY_STATUS_CODE: TAbmesFloatField;
    cdsGridDataBASE_ROLE_CODE: TAbmesFloatField;
    cdsGridDataEXISTANCE_MONTHS: TAbmesFloatField;
    cdsGridDataCURRENT_STATUS_REACH_MONTHS: TAbmesFloatField;
    cdsGridDataCOMPANY_STATUS_NAME: TAbmesWideStringField;
    pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_EXISTANCE_MONTHS: TAbmesFloatField;
    pdsGridDataParamsMAX_EXISTANCE_MONTHS: TAbmesFloatField;
    pdsGridDataParamsMIN_REACH_MONTHS: TAbmesFloatField;
    pdsGridDataParamsMAX_REACH_MONTHS: TAbmesFloatField;
    pdsGridDataParamsCOMPANY_CLASS_CODE: TAbmesFloatField;
    pdsGridDataParamsPERSON_GENDER_CODE: TAbmesFloatField;
    pdsGridDataParamsCRAFT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsCRAFT_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_EXTERNAL: TAbmesFloatField;
    pdsGridDataParamsIS_INTERNAL: TAbmesFloatField;
    pdsGridDataParamsCOUNTRY_CODE: TAbmesFloatField;
    pdsGridDataParamsROLE_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_CLASS_ABBREV: TAbmesWideStringField;
    cdsGridDataIS_WORKER: TAbmesFloatField;
    cdsGridDataWORKER_PRIORITY_NO: TAbmesFloatField;
    lblDocs: TLabel;
    pdsGridDataParamsBULSTAT: TAbmesWideStringField;
    pdsGridDataParamsBULSTAT_EX: TAbmesWideStringField;
    actAddCommon: TAction;
    cdsCompanyClasses: TAbmesClientDataSet;
    cdsCompanyClassesCOMPANY_CLASS_CODE: TAbmesFloatField;
    cdsCompanyClassesCOMPANY_CLASS_ABBREV: TAbmesWideStringField;
    cdsCompanyClassesCOMPANY_CLASS_NAME: TAbmesWideStringField;
    pdsGridDataParams_COMPANY_CLASS_NAME: TAbmesWideStringField;
    miAddCompany: TMenuItem;
    miAddPerson: TMenuItem;
    miAddCumulative: TMenuItem;
    miAddCommon: TMenuItem;
    cdsGridDataCLIENT_COMMON_PARTNER_CODE: TAbmesFloatField;
    cdsGridDataVENDOR_COMMON_PARTNER_CODE: TAbmesFloatField;
    cdsGridDataCLIENT_COMMON_PARTNER_NO: TAbmesFloatField;
    cdsGridDataCLIENT_COMMON_PARTNER_NAME: TAbmesWideStringField;
    cdsGridDataVENDOR_COMMON_PARTNER_NO: TAbmesFloatField;
    cdsGridDataVENDOR_COMMON_PARTNER_NAME: TAbmesWideStringField;
    pnlToggleColumns: TPanel;
    btnCommonVendor: TSpeedButton;
    btnLocation: TSpeedButton;
    btnCommonClient: TSpeedButton;
    pdsGridDataParamsCOMMON_PARTNER_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_NAME: TAbmesWideStringField;
    cdsGridDataVAT_NO: TAbmesWideStringField;
    cdsGridDataCOMPANY_TYPE_ABBREV: TAbmesWideStringField;
    procedure actEditRecordExecute(Sender: TObject);
    procedure actDelRecordExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataDOC_EMPTINESS_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actAddPersonExecute(Sender: TObject);
    procedure actAddCompanyExecute(Sender: TObject);
    procedure actAddCumulativeExecute(Sender: TObject);
    procedure cdsGridDataCOMPANY_STATUS_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure pdsGridDataParamsCRAFT_TYPE_CODEChange(Sender: TField);
    procedure actAddCommonExecute(Sender: TObject);
  protected
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    class function CanUseDocs: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetAddButtonAction: TAddButtonAction; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fCompany, uClientUtils, rCompanies,
  AbmesDialogs, uDocUtils, uDocClientUtils, fCompaniesFilter, fGridForm,
  uUtils, uCompanyClasses, uColorConsts, uUserActivityConsts, uCompanyClientUtils;

resourcestring
  SInvalidStatusInterval = 'Началният статус трябва да е по-малък или равен на крайния';

{$R *.DFM}

procedure TfmCompanies.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmCompany;
  ReportClass:= TrptCompanies;
  FilterFormClass:= TfmCompaniesFilter;
  cdsGridData.Params.ParamByName('ROLE_CODE').AsInteger:= 0;
end;

function TfmCompanies.GetAddButtonAction: TAddButtonAction;
begin
  Result:= abaInsertMenu;
end;

function TfmCompanies.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Assert(Assigned(EditFormClass));
  Assert(EditMode <> emInsert);
  if (AEditMode = emInsert) then
    Result:= TfmCompany(EditFormClass).ShowForm(dmDocClient, cdsGridData, -1, AEditMode)
  else
    Result:= TfmCompany(EditFormClass).ShowForm(dmDocClient, cdsGridData,
      cdsGridDataCOMPANY_CODE.AsInteger, AEditMode);
end;

procedure TfmCompanies.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnDocs, dotCompany, cdsGridData);
end;

procedure TfmCompanies.actFormUpdate(Sender: TObject);
begin
  inherited;
  btnDocs.Enabled:= (cdsGridDataACTIVE_DI_COUNT.AsInteger > 0);
  UpdateColumnsVisibility(grdData, pnlToggleColumns);
end;

class function TfmCompanies.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmCompanies.cdsGridDataDOC_EMPTINESS_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  DocEmptinessRequirementFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmCompanies.cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  UnauthorizedActiveDocItemCountFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmCompanies.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CheckEditMode(pdsGridDataParams);
  pdsGridDataParamsACTIVITY_STATUS_CODE.AsInteger:= 2;
  pdsGridDataParamsIS_COMPANY_OR_PERSON_CODE.AsInteger:= 1;
  pdsGridDataParams.Post;
end;

procedure TfmCompanies.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (gdSelected in State) then
    Exit;

  if (Column.Field = cdsGridDataCOMPANY_STATUS_CODE) then
    AFont.Color:= CompanyStatusColors[cdsGridDataCOMPANY_STATUS_CODE.AsInteger];

  if (Column.Field = cdsGridDataCLIENT_PRIORITY_NO) and
     not cdsGridDataCLIENT_COMMON_PARTNER_CODE.IsNull then
    Background:= clLtGray;

  if (Column.Field = cdsGridDataVENDOR_PRIORITY_NO) and
     not cdsGridDataVENDOR_COMMON_PARTNER_CODE.IsNull then
    Background:= clLtGray;

  DocFieldsGetCellParams(Sender, Column, AFont, Background, State);
end;

procedure TfmCompanies.OpenDataSets;
begin
  inherited;
  cdsCompanyClasses.Open;
end;

procedure TfmCompanies.CloseDataSets;
begin
  cdsCompanyClasses.Close;
  inherited;
end;

procedure TfmCompanies.actAddPersonExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(EditFormClass));
  LoginContext.CheckUserActivity(uaPerson);
  if TfmCompany(EditFormClass).ShowForm(dmDocClient, cdsGridData, -1, emInsert, ccPerson) then
    RefreshDataSet(cdsGridData);
end;

procedure TfmCompanies.actDelRecordExecute(Sender: TObject);
begin
  if (IntToCompanyClass(cdsGridDataCOMPANY_CLASS_CODE.AsInteger) = ccPerson) then
    LoginContext.CheckUserActivity(uaPerson);
  inherited;
end;

procedure TfmCompanies.actEditRecordExecute(Sender: TObject);
begin
  if (IntToCompanyClass(cdsGridDataCOMPANY_CLASS_CODE.AsInteger) = ccPerson) then
    LoginContext.CheckUserActivity(uaPerson);
  inherited;
end;

procedure TfmCompanies.actAddCommonExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(EditFormClass));
  if TfmCompany(EditFormClass).ShowForm(dmDocClient, cdsGridData, -1, emInsert, ccCommon) then
    RefreshDataSet(cdsGridData);
end;

procedure TfmCompanies.actAddCompanyExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(EditFormClass));
  if TfmCompany(EditFormClass).ShowForm(dmDocClient, cdsGridData, -1, emInsert, ccFirm) then
    RefreshDataSet(cdsGridData);
end;

procedure TfmCompanies.actAddCumulativeExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(EditFormClass));
  if TfmCompany(EditFormClass).ShowForm(dmDocClient, cdsGridData, -1, emInsert, ccCumulative) then
    RefreshDataSet(cdsGridData);
end;

procedure TfmCompanies.cdsGridDataCOMPANY_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  CompanyStatusFieldGetText(Sender, cdsGridDataCOMPANY_STATUS_NAME, cdsGridDataBASE_ROLE_CODE, Text, DisplayText);
end;

procedure TfmCompanies.pdsGridDataParamsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (pdsGridDataParamsMIN_STATUS_CODE.AsInteger > pdsGridDataParamsMAX_STATUS_CODE.AsInteger) then
    raise Exception.Create(SInvalidStatusInterval);
end;

procedure TfmCompanies.pdsGridDataParamsCRAFT_TYPE_CODEChange(Sender: TField);
begin
  inherited;
  pdsGridDataParamsCRAFT_CODE.Clear;
end;

end.










