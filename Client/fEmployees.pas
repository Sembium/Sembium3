unit fEmployees;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient, GridsEh,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, AbmesClientDataSet,
  fBottomButtonGridForm, DBGridEh, AbmesDBGrid, AbmesFields, Menus,
  JvButtons, ComCtrls, ToolWin, JvComponent, JvCaptionButton,
  JvComponentBase, uClientTypes, DBGridEhGrouping, uDocExcelExport;

type
  [DocExcelExport]
  TfmEmployees = class(TBottomButtonGridForm)
    cdsGridDataEMPLOYEE_CODE: TAbmesFloatField;                 
    cdsGridDataFIRST_NAME: TAbmesWideStringField;
    cdsGridDataMIDDLE_NAME: TAbmesWideStringField;
    cdsGridDataLAST_NAME: TAbmesWideStringField;
    cdsGridDataABBREV: TAbmesWideStringField;
    cdsGridDataEGN: TAbmesWideStringField;
    cdsGridDataEMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataIS_MANAGER_OKIDU: TAbmesFloatField;
    cdsGridDataIS_OKIDU: TAbmesFloatField;
    cdsGridDataNEGATIVE_DISCIPLINE_RATING: TAbmesFloatField;
    cdsGridDataPOSITIVE_DISCIPLINE_RATING: TAbmesFloatField;
    pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsABBREV: TAbmesWideStringField;
    pdsGridDataParamsFIRST_NAME: TAbmesWideStringField;
    pdsGridDataParamsMIDDLE_NAME: TAbmesWideStringField;
    pdsGridDataParamsLAST_NAME: TAbmesWideStringField;
    pdsGridDataParamsGENDER: TAbmesFloatField;
    pdsGridDataParamsPROFESSION_CODE: TAbmesFloatField;
    pdsGridDataParamsEDUCATION_CODE: TAbmesFloatField;
    pdsGridDataParamsEGN: TAbmesWideStringField;
    cdsGridDataEDUCATION_CODE: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsGridDataDOC_IS_COMPLETE: TAbmesFloatField;
    cdsGridDataACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataOCCUPATIONS_COUNT: TAbmesFloatField;
    cdsGridDataCOMPANY_NO: TAbmesFloatField;
    cdsGridDataEDUCATION_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataCOMPANY_STATUS_NAME: TAbmesWideStringField;
    cdsGridDataEXISTANCE_MONTHS: TAbmesFloatField;
    cdsGridDataCURRENT_STATUS_REACH_MONTHS: TAbmesFloatField;
    pdsGridDataParamsCOMPANY_NO: TAbmesFloatField;
    pdsGridDataParamsHAS_NOT_POSITIVE_RATING: TAbmesFloatField;
    pdsGridDataParamsHAS_POSITIVE_RATING: TAbmesFloatField;
    pdsGridDataParamsHAS_NOT_NEGATIVE_RATING: TAbmesFloatField;
    pdsGridDataParamsHAS_NEGATIVE_RATING: TAbmesFloatField;
    pdsGridDataParamsDISC_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_STATUS_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    tlbDoc: TToolBar;
    sepBeforeCompanyDoc: TToolButton;
    lblCompanyDoc: TLabel;
    btnCompanyDoc: TToolButton;
    actCompanyDoc: TAction;
    tlbEmployeeDoc: TToolBar;
    sepBeforeEmployeeDoc: TToolButton;
    lblEmployeeDoc: TLabel;
    btnEmployeeDoc: TToolButton;
    cdsGridDataCOMPANY_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_DOC_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_HAS_DOCUMENTATION: TAbmesFloatField;
    actEmployeeDoc: TAction;
    cdsGridDataIS_MALE: TAbmesFloatField;
    cdsGridDataIS_EXTERNAL: TAbmesFloatField;
    pdsGridDataParamsIS_EXTERNAL: TAbmesFloatField;
    cdsGridDataIS_INACTIVE: TAbmesFloatField;
    pdsGridDataParamsIS_INACTIVE_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField;
    cdsGridDataMAIN_OCC_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataMAIN_OCCUPATION_NAME: TAbmesWideStringField;
    pdsGridDataParamsDISCIPLINE_EVENT_STATUS_CODE: TAbmesFloatField;
    cdsGridDataBASE_ROLE_CODE: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataDOC_EMPTINESS_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actCompanyDocExecute(Sender: TObject);
    procedure actCompanyDocUpdate(Sender: TObject);
    procedure actEmployeeDocExecute(Sender: TObject);
    procedure actEmployeeDocUpdate(Sender: TObject);
    procedure cdsGridDataCOMPANY_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataEGNGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    FHasShowEGNActivity: Boolean;
    { Private declarations }
  protected
    class function CanUseDocs: Boolean; override;
    function GetInsertRecordEnabled: Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
    procedure ChangeEditMode(var AEditMode: TEditMode); override;
  public
    { Public declarations }
  end;

implementation

uses
  fEmployee, dMain, rEmployees, fEmployeesFilter, uDocClientUtils,
  uDocUtils, uCompanyClientUtils, uColorConsts, uClientConsts, uUserActivityConsts,
  uCompanyKinds, uCompanyKindClientUtils, uClientUtils;

{$R *.DFM}

procedure TfmEmployees.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmEmployee;
  ReportClass:= TrptEmployees;
  FilterFormClass:= TfmEmployeesFilter;
  RegisterDateFields(cdsGridData);
  FHasShowEGNActivity:= IsEGNVisible;
end;

function TfmEmployees.GetInsertRecordEnabled: Boolean;
begin
  Result:=
    inherited GetInsertRecordEnabled and
    LoginContext.HasUserActivity(uaEmployeesEdit);
end;

function TfmEmployees.GetDelRecordEnabled: Boolean;
begin
  Result:=
    inherited GetDelRecordEnabled and
    LoginContext.HasUserActivity(uaEmployeesEdit);
end;

procedure TfmEmployees.cdsGridDataCOMPANY_STATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= cdsGridDataCOMPANY_STATUS_NAME.AsString;

  if not (cdsGridDataCOMPANY_STATUS_CODE.AsInteger in [5, 6]) then
    Text:= Text + ' - ' + CompanyKindAbbrev(IntToCompanyKind(cdsGridDataBASE_ROLE_CODE.AsInteger));
end;

procedure TfmEmployees.cdsGridDataDOC_EMPTINESS_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  DocEmptinessRequirementFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployees.cdsGridDataEGNGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if FHasShowEGNActivity then
    Text:= Sender.AsString
  else
    Text:= SNotAvailable;
end;

procedure TfmEmployees.cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  UnauthorizedActiveDocItemCountFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployees.ChangeEditMode(var AEditMode: TEditMode);
begin
  inherited;

  if (AEditMode = emEdit) and
     (not LoginContext.HasUserActivity(uaEmployeesEdit)) and
     (not LoginContext.HasUserActivity(uaEmployeeDisciplineEventsOnlyEdit)) then
    AEditMode:= emReadOnly;
end;

procedure TfmEmployees.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if cdsGridDataIS_INACTIVE.AsBoolean then
    AFont.Color:= clGray
  else
    begin
      if (Column.Field = cdsGridDataCOMPANY_STATUS_CODE) then
        AFont.Color:= CompanyStatusColors[cdsGridDataCOMPANY_STATUS_CODE.AsInteger];
    end;

  DocFieldsGetCellParams(Sender, Column, AFont, Background, State);
end;

procedure TfmEmployees.actCompanyDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotCompany,
    cdsGridDataCOMPANY_DOC_BRANCH_CODE.AsInteger,
    cdsGridDataCOMPANY_DOC_CODE.AsInteger);
end;

procedure TfmEmployees.actCompanyDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsGridDataCOMPANY_HAS_DOCUMENTATION.AsInteger;
end;

class function TfmEmployees.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmEmployees.actEmployeeDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotEmployee,
    cdsGridDataDOC_BRANCH_CODE.AsInteger,
    cdsGridDataDOC_CODE.AsInteger);
end;

procedure TfmEmployees.actEmployeeDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsGridDataHAS_DOCUMENTATION.AsInteger;
end;

end.
