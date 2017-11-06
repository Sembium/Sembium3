unit fOccupationsAndEmployees;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, DB, AbmesFields, ParamDataSet,
  ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  Mask, fBaseFrame, fDBFrame, fFieldEditFrame, fDateFieldEditFrame,
  JvComponent, JvCaptionButton, fMasterDetailForm, uClientTypes,
  JvComponentBase, dDocClient, Menus, DBGridEhGrouping, uDocExcelExport;

type
  [DocExcelExport]
  TfmOccupationsAndEmployees = class(TMasterDetailForm)
    cdsGridDataOCCUPATION_CODE: TAbmesFloatField;
    cdsGridDataOCCUPATION_NAME: TAbmesWideStringField;
    cdsGridDataOCCUPATION_LEVEL: TAbmesFloatField;
    cdsGridDataSHIFT_CODE: TAbmesFloatField;
    cdsGridDataSHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataIS_ACTIVE: TAbmesFloatField;
    cdsGridDataIS_OCCUPIED: TAbmesFloatField;
    cdsGridDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataEMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataEMPLOYEE_EGN: TAbmesWideStringField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDAY_DIFF: TAbmesFloatField;
    cdsGridDataEMPLOYEE_OCCUPATION_PROF_COUNT: TAbmesFloatField;
    cdsGridDataOCCUPATION_PROFESSION_COUNT: TAbmesFloatField;
    cdsGridData_OCCUPATION_STATUS_ABBREV: TAbmesWideStringField;
    cdsGridData_PROFESSIONS_STATUS: TAbmesWideStringField;
    pdsGridDataParamsSTATUS_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_OCCUPATION_LEVEL: TAbmesFloatField;
    pdsGridDataParamsEND_OCCUPATION_LEVEL: TAbmesFloatField;
    pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsEMPLOYEE_EGN: TAbmesFloatField;
    pdsGridDataParamsEMPLOYE_MALE: TAbmesFloatField;
    pdsGridDataParamsEMPLOYEE_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEMPLOYEE_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsSHIFT_CODE: TAbmesFloatField;
    pdsGridDataParamsEDUCATION_CODE: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField;
    cdsShifts: TAbmesClientDataSet;
    cdsShiftsSHIFT_CODE: TAbmesFloatField;
    pdsGridDataParams_SHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsProfessions: TAbmesClientDataSet;
    cdsProfessionsPROFESSION_CODE: TAbmesFloatField;
    cdsProfessionsPROFESSION_NAME: TAbmesWideStringField;
    cdsEducations: TAbmesClientDataSet;
    cdsEducationsEDUCATION_CODE: TAbmesFloatField;
    cdsEducationsEDUCATION_SHORT_NAME: TAbmesWideStringField;
    pdsGridDataParams_EDUCATION_SHORT_NAME: TAbmesWideStringField;
    pdsGridDataParamsIS_ACTIVE: TAbmesFloatField;
    pdsGridDataParamsIS_NOT_ACTIVE: TAbmesFloatField;
    pdsGridDataParamsIS_OCCUPIED: TAbmesFloatField;
    pdsGridDataParamsIS_NOT_OCCUPIED: TAbmesFloatField;
    pnlFilter: TPanel;
    lblStatusDate: TLabel;
    pdsGridDataParams_STATUS_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEMP_NEGATIVE_DISCIPLINE_RATING: TAbmesFloatField;
    cdsGridDataEMP_POSITIVE_DISCIPLINE_RATING: TAbmesFloatField;
    pdsGridDataParamsHAS_NEGATIVE_DISCIPLINE_EVENTS: TAbmesFloatField;
    pdsGridDataParamsHAS_NOT_NEGATIVE_DISCIPLINE_EVENTS: TAbmesFloatField;
    pdsGridDataParamsHAS_POSITIVE_DISCIPLINE_EVENTS: TAbmesFloatField;
    pdsGridDataParamsHAS_NOT_POSITIVE_DISCIPLINE_EVENTS: TAbmesFloatField;
    pdsGridDataParamsOCCUPATION_PROFESSION_CODE: TAbmesFloatField;
    pdsGridDataParamsEMPLOYEE_PROFESSION_CODE: TAbmesFloatField;
    pdsGridDataParamsOCCUPATION_EMPLOYEE_PROFESSION_CODE: TAbmesFloatField;
    pdsGridDataParams_OCCUPATION_PROFESSION_NAME: TAbmesWideStringField;
    pdsGridDataParams_EMPLOYEE_PROFESSION_NAME: TAbmesWideStringField;
    pdsGridDataParams_OCCUPATION_EMP_PROFESSION_NAME: TAbmesWideStringField;
    cdsGridDataE_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField;
    cdsGridDataE_DOC_IS_COMPLETE: TAbmesFloatField;
    cdsGridDataE_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataE_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataE_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataO_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField;
    cdsGridDataO_DOC_IS_COMPLETE: TAbmesFloatField;
    cdsGridDataO_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataO_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataO_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    frStatusDate: TfrDateFieldEditFrame;
    cdsGridDataOCCUPATION_IS_MAIN: TAbmesFloatField;
    cdsGridDataOCCUPATION_PHASE: TAbmesWideStringField;
    cdsGridDataASSIGNMENT_DAY_DIFF: TAbmesFloatField;
    cdsGridData_MAIN_COUNT: TAggregateField;
    cdsGridData_NOT_MAIN_COUNT: TAggregateField;
    pdsGridDataParamsIS_MAIN: TAbmesFloatField;
    pdsGridDataParamsOCCUPATION_PHASE_CODE: TAbmesFloatField;
    pdsGridDataParamsPROFESSIONS_STATUS: TAbmesFloatField;
    cdsOccupationPhases: TAbmesClientDataSet;
    cdsOccupationPhasesOCCUPATION_PHASE_CODE: TAbmesFloatField;
    cdsOccupationPhasesOCCUPATION_PHASE_NAME: TAbmesWideStringField;
    cdsOccupationPhases_SHOW_NAME: TAbmesWideStringField;
    pdsGridDataParams_OCCUPATION_PHASE: TAbmesWideStringField;
    cdsGridDataOCCUPATION_PHASE_CODE: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsGridDataEMPLOYEE_COMPANY_CODE: TAbmesFloatField;
    actDetailEmployeeCompany: TAction;
    btnDetailEmployeeCompany: TBitBtn;
    btnDetailEmployee: TBitBtn;
    actDetailEmployee: TAction;
    cdsShiftsSHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataP_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField;
    cdsGridDataP_DOC_IS_COMPLETE: TAbmesFloatField;
    cdsGridDataP_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataP_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataP_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataOE_REGIME_NAME: TAbmesWideStringField;
    cdsGridDataOE_REGIME_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsCrafts: TAbmesClientDataSet;
    cdsCraftsCRAFT_CODE: TAbmesFloatField;
    cdsCraftsCRAFT_NAME: TAbmesWideStringField;
    cdsCraftsCRAFT_TYPE_CODE: TAbmesFloatField;
    cdsCraftTypes: TAbmesClientDataSet;
    cdsCraftTypesCRAFT_TYPE_CODE: TAbmesFloatField;
    cdsCraftTypesCRAFT_TYPE_NAME: TAbmesWideStringField;
    cdsOERegimes: TAbmesClientDataSet;
    cdsOERegimesOE_REGIME_CODE: TAbmesFloatField;
    cdsOERegimesOE_REGIME_NAME: TAbmesWideStringField;
    pdsGridDataParamsCRAFT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsCRAFT_CODE: TAbmesFloatField;
    pdsGridDataParamsOE_REGIME_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_EXTERNAL_CODE: TAbmesFloatField;
    pdsGridDataParams_CRAFT_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_CRAFT_NAME: TAbmesWideStringField;
    pdsGridDataParams_OE_REGIME_NAME: TAbmesWideStringField;
    pnlGridTotals: TPanel;
    lblOccupationCount: TLabel;
    edtMainOccCount: TDBEdit;
    edtNotMainOccCount: TDBEdit;
    lblMainOccupationCount: TLabel;
    lblNonMainOccupationCount: TLabel;
    btnToggleEmployeeProduct: TSpeedButton;
    cdsGridData_MAIN_OCCUPIED_COUNT: TAggregateField;
    cdsGridData_NOT_MAIN_OCCUPIED_COUNT: TAggregateField;
    cdsGridData_MAIN_COUNTS: TAbmesWideStringField;
    cdsGridData_NOT_MAIN_COUNTS: TAbmesWideStringField;
    cdsGridDataOCCUPATION_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataOCCUPATION_DOC_CODE: TAbmesFloatField;
    cdsGridDataOCCUPATION_HAS_DOC: TAbmesFloatField;
    cdsGridDataEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataEMPLOYEE_DOC_CODE: TAbmesFloatField;
    cdsGridDataEMPLOYEE_HAS_DOC: TAbmesFloatField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_HAS_DOC: TAbmesFloatField;
    tlbTopButtons: TToolBar;
    sepOccupationDoc: TToolButton;
    lblOccupationDoc: TLabel;
    btnOccupationDoc: TToolButton;
    sepProductDoc: TToolButton;
    lblProductDoc: TLabel;
    btnProductDoc: TToolButton;
    actOccupationDoc: TAction;
    actProductDoc: TAction;
    actEmployeeDoc: TAction;
    sepEmployeeDoc: TToolButton;
    btnEmployeeDoc: TToolButton;
    lblEmployeeDoc: TLabel;
    pdsGridDataParamsOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsOCCUPATION_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEMPLOYEE_AGE_YEARS: TAbmesFloatField;
    pdsGridDataParamsMIN_OCCUPATION_DAY_DIFF: TAbmesFloatField;
    pdsGridDataParamsMAX_OCCUPATION_DAY_DIFF: TAbmesFloatField;
    pdsGridDataParamsMIN_ASSIGNMENT_DAY_DIFF: TAbmesFloatField;
    pdsGridDataParamsMAX_ASSIGNMENT_DAY_DIFF: TAbmesFloatField;
    pdsGridDataParamsMIN_EMPLOYEE_AGE: TAbmesFloatField;
    pdsGridDataParamsMAX_EMPLOYEE_AGE: TAbmesFloatField;
    cdsDetailOCCUPATION_CODE: TAbmesFloatField;
    cdsDetailBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDetailEND_DATE: TAbmesSQLTimeStampField;
    cdsDetailIS_OCCUPIED: TAbmesFloatField;
    cdsDetailEMPLOYEE_CODE: TAbmesFloatField;
    cdsDetailEMPLOYEE_NAME: TAbmesWideStringField;
    cdsDetailEMPLOYEE_COMPANY_CODE: TAbmesFloatField;
    cdsDetailEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailEMPLOYEE_DOC_CODE: TAbmesFloatField;
    cdsDetailEMPLOYEE_HAS_DOC: TAbmesFloatField;
    cdsDetailE_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField;
    cdsDetailE_DOC_IS_COMPLETE: TAbmesFloatField;
    cdsDetailE_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsDetailE_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsDetailE_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsDetailEMP_NEGATIVE_DISCIPLINE_RATING: TAbmesFloatField;
    cdsDetailEMP_POSITIVE_DISCIPLINE_RATING: TAbmesFloatField;
    cdsDetailOE_REGIME_CODE: TAbmesFloatField;
    cdsDetailOE_REGIME_NAME: TAbmesWideStringField;
    cdsDetailOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDetailOCCUPATION_END_DATE: TAbmesSQLTimeStampField;
    cdsDetail_OCCUPATION_STATUS_ABBREV: TAbmesWideStringField;
    cdsDetailEMPLOYEE_OCCUPATION_PROF_COUNT: TAbmesFloatField;
    cdsDetail_PROFESSIONS_STATUS: TAbmesWideStringField;
    cdsDetailEMPLOYEE_BEGIN_AGE_YEARS: TAbmesFloatField;
    cdsDetailEMPLOYEE_END_AGE_YEARS: TAbmesFloatField;
    actDetailEmployeeDoc: TAction;
    tlbDetailDocs: TToolBar;
    sepDetailEmployeeDoc: TToolButton;
    lblDetailEmployeeDoc: TLabel;
    btnDetailEmployeeDoc: TToolButton;
    cdsDetailOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    btnEditDetailRecord: TBitBtn;
    btnInsertDetailRecord: TBitBtn;
    btnDelDetailRecord: TBitBtn;
    btnEditData: TBitBtn;
    cdsGridDataCOMPANY_NO: TAbmesFloatField;
    cdsDetailCOMPANY_NO: TAbmesFloatField;
    cdsGridDataBASE_SALARY: TAbmesFloatField;
    cdsGridDataBASE_SALARY_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsDetailSALARY: TAbmesFloatField;
    cdsDetailSALARY_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridDataMIN_SALARY_RATIO_COEF: TAbmesFloatField;
    cdsGridDataMAX_SALARY_RATIO_COEF: TAbmesFloatField;
    cdsGridDataSALARY: TAbmesFloatField;
    cdsGridDataSALARY_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridData_SHOW_BASE_SALARY: TAbmesWideStringField;
    cdsGridData_SHOW_SALARY: TAbmesWideStringField;
    cdsDetail_SHOW_SALARY: TAbmesWideStringField;
    cdsDetailDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailDOC_CODE: TAbmesFloatField;
    cdsDetailHAS_DOC_ITEMS: TAbmesFloatField;
    lblDetailOccupationEmployeeDoc: TLabel;
    sepDetailOccupationEmployeeDoc: TToolButton;
    btnDetailOccupationEmployeeDoc: TToolButton;
    actDetailOccupationEmployeeDoc: TAction;
    cdsDetailDOC_EMPTINESS_REQ_CODE: TAbmesFloatField;
    cdsDetailDOC_IS_COMPLETE: TAbmesFloatField;
    cdsDetailACTIVE_DI_COUNT: TAbmesFloatField;
    cdsDetailUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsDetailUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataTHE_DATE: TAbmesSQLTimeStampField;
    cdsDetailTHE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSTATUS_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsREPORT_TAG: TAbmesFloatField;
    pdsGridDataParamsSYS_ROLE_CODE: TAbmesFloatField;
    cdsDetailOE_MASTERED_PRC_ACTIONS_COUNT: TAbmesFloatField;
    cdsGridDataOE_MASTERED_PRC_ACTIONS_COUNT: TAbmesFloatField;
    cdsGridDataOCC_PRC_ACTIONS_COUNT: TAbmesFloatField;
    cdsDetail_OE_PRC_ACTIONS_STATUS: TAbmesWideStringField;
    cdsGridData_OCC_PRC_ACTIONS_STATUS: TAbmesWideStringField;
    pdsGridDataParamsOCC_PRC_ACTIONS_STATUS: TAbmesFloatField;
    pdsGridDataParamsPRC_FUNC_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_KNOWL_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_BASE_OP_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_BASE_ACTION_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_CONCRETE_ACTION_CODE: TAbmesFloatField;
    pdsGridDataParamsWORK_DEPT_CODE: TAbmesFloatField;
    procedure SalaryFieldsGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure pdsGridDataParamsGetShortText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataE_DOC_EMPTINESS_REQ_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataE_UNAUTHORIZED_ACTIVE_DI_COUNTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsGridDataO_DOC_EMPTINESS_REQ_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataO_UNAUTHORIZED_ACTIVE_DI_COUNTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure grdDataColumns16GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure cdsGridData_NOT_MAIN_COUNTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsOccupationPhasesCalcFields(DataSet: TDataSet);
    procedure actDetailEmployeeCompanyUpdate(Sender: TObject);
    procedure actDetailEmployeeCompanyExecute(Sender: TObject);
    procedure actDetailEmployeeUpdate(Sender: TObject);
    procedure actDetailEmployeeExecute(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnToggleEmployeeProductClick(Sender: TObject);
    procedure actOccupationDocExecute(Sender: TObject);
    procedure actOccupationDocUpdate(Sender: TObject);
    procedure actProductDocExecute(Sender: TObject);
    procedure actProductDocUpdate(Sender: TObject);
    procedure actEmployeeDocExecute(Sender: TObject);
    procedure actEmployeeDocUpdate(Sender: TObject);
    procedure cdsGridDataP_DOC_EMPTINESS_REQ_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataP_UNAUTHORIZED_ACTIVE_DI_COUNTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsDetailCalcFields(DataSet: TDataSet);
    procedure cdsDetailE_DOC_EMPTINESS_REQ_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailBEGIN_DATEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsDetailE_UNAUTHORIZED_ACTIVE_DI_COUNTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure grdDetailColumns7GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure grdDetailGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actDetailEmployeeDocExecute(Sender: TObject);
    procedure actDetailEmployeeDocUpdate(Sender: TObject);
    procedure cdsDetailAfterDelete(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure actDetailOccupationEmployeeDocUpdate(Sender: TObject);
    procedure actDetailOccupationEmployeeDocExecute(Sender: TObject);
    procedure cdsDetailDOC_EMPTINESS_REQ_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailUNAUTHORIZED_ACTIVE_DI_COUNTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure grdDetailColumns11GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure grdDataColumns24GetCellParams(Sender: TObject; EditMode: Boolean;
      Params: TColCellParamsEh);
    procedure cdsDetailBeforeOpen(DataSet: TDataSet);
  private
    FShowFromSysRole: Boolean;

    procedure AssignOccupationEmployeeDetailStatus(
      StatusField,
      EmployeeCodeField,
      TotalDetailsCountField,
      DetailsCountField: TField);
    procedure OccEmpDetailStatusColumnGetCellParams(
      Sender: TObject;
      EditMode: Boolean;
      Params: TColCellParamsEh;
      ADetailsCount: Integer;
      ATotalDetailsCount: Integer);
  protected
    class function CanUseDocs: Boolean; override;
    function GetDateFormat: string; override;
    function GetWeekDateFormat: string; override;
    function GetDelDetailRecordEnabled: Boolean; override;
    function ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean; override;
    function GetInsertRecordEnabled: Boolean; override;
    function ShowFilterForm: Boolean; override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;

    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      AShowFromSysRole: Boolean = False): Boolean;

    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      AShowFromSysRole: Boolean = False); reintroduce; virtual;

    procedure Initialize; override;
  end;

implementation

uses
  dMain, fOccupationsAndEmployeesFilter, uClientUtils, uUtils,
  fOccupationAndEmployee, rOccupationsAndEmployees, uDocUtils,
  uDocClientUtils, uColorConsts, fCompany, uClientConsts, fEmployee,
  fOccupation, fDataForm, uUserActivityConsts, uClientDateTime,
  uDependantField;

{$R *.dfm}

{ TfmOccupationsAndEmployees }

procedure TfmOccupationsAndEmployees.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AShowFromSysRole: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FShowFromSysRole:= AShowFromSysRole;
end;

function TfmOccupationsAndEmployees.ShowFilterForm: Boolean;
begin
  Result:= TfmOccupationsAndEmployeesFilter.ShowForm(dmDocClient, pdsGridDataParams, emEdit, doNone, FShowFromSysRole);
end;

class function TfmOccupationsAndEmployees.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled, AShowFromSysRole: Boolean): Boolean;
var
  f: TfmOccupationsAndEmployees;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled, AShowFromSysRole);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmOccupationsAndEmployees.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmOccupationsAndEmployeesFilter;
  ReportClass:= TrptOccupationsAndEmployees;
  EditFormClass:= TfmOccupation;
  DetailEditFormClass:= TfmOccupationAndEmployee;

  cdsGridData.Params.ParamByName('STATUS_DATE').AsDateTime:= ContextDate;

  RegisterDateField(pdsGridDataParams_STATUS_DATE);
  RegisterDateFields(cdsDetail);

  frStatusDate.FieldNames:= '_STATUS_DATE';

  SetBaseCurrencyAbbrevColumnCaption(grdData.Columns[10]);
  SetBaseCurrencyAbbrevColumnCaption(grdData.Columns[28]);
  SetBaseCurrencyAbbrevColumnCaption(grdDetail.Columns[16]);

  if not IsSalaryVisible then
    begin
      grdData.Columns[10].FieldName:= cdsGridData_SHOW_BASE_SALARY.FieldName;
      grdData.Columns[28].FieldName:= cdsGridData_SHOW_SALARY.FieldName;
      grdDetail.Columns[16].FieldName:= cdsDetail_SHOW_SALARY.FieldName;
    end;  { if }

  RegisterFieldsTextVisibility(
      IsSalaryVisible,
      [ cdsGridDataBASE_SALARY,
        cdsGridDataBASE_SALARY_DATE_UNIT_NAME,
        cdsGridDataSALARY,
        cdsGridDataSALARY_DATE_UNIT_NAME,
        cdsDetailSALARY,
        cdsDetailSALARY_DATE_UNIT_NAME]);

  pdsGridDataParamsPRC_KNOWL_CODE.DependsOn:= pdsGridDataParamsPRC_FUNC_CODE.FieldName;
  pdsGridDataParamsPRC_BASE_OP_CODE.DependsOn:= pdsGridDataParamsPRC_FUNC_CODE.FieldName;
  pdsGridDataParamsPRC_BASE_ACTION_CODE.DependsOn:= pdsGridDataParamsPRC_FUNC_CODE.FieldName;
  pdsGridDataParamsPRC_CONCRETE_OP_CODE.DependsOn:= pdsGridDataParamsPRC_FUNC_CODE.FieldName;
  pdsGridDataParamsPRC_CONCRETE_ACTION_CODE.DependsOn:= pdsGridDataParamsPRC_FUNC_CODE.FieldName;
end;

procedure TfmOccupationsAndEmployees.pdsGridDataParamsGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmOccupationsAndEmployees.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  CheckRequiredField(pdsGridDataParamsSTATUS_DATE);
end;

function TfmOccupationsAndEmployees.GetDateFormat: string;
begin
  Result:= FormatSettings.ShortDateFormat;
end;

function TfmOccupationsAndEmployees.GetWeekDateFormat: string;
begin
  Result:= pdsGridDataParamsSTATUS_DATE.DisplayFormat;
end;

procedure TfmOccupationsAndEmployees.pdsGridDataParamsCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams_STATUS_DATE.Assign(pdsGridDataParamsSTATUS_DATE);
  pdsGridDataParamsREPORT_TAG.AsInteger:= 1 + Ord(not btnToggleEmployeeProduct.Down);
end;

procedure TfmOccupationsAndEmployees.actFormUpdate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  for i:= 15 to 20 do
    grdData.Columns[i].Visible:= btnToggleEmployeeProduct.Down;

  for i:= 21 to 25 do
    grdData.Columns[i].Visible:= not btnToggleEmployeeProduct.Down;
end;

class function TfmOccupationsAndEmployees.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmOccupationsAndEmployees.pdsGridDataParamsGetShortText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText, True);
end;

procedure TfmOccupationsAndEmployees.cdsGridDataCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if cdsGridDataIS_ACTIVE.AsBoolean then
    cdsGridData_OCCUPATION_STATUS_ABBREV.AsString:= SOccupationActiveStatusAbbrev
  else
    cdsGridData_OCCUPATION_STATUS_ABBREV.AsString:= SOccupationPassiveStatusAbbrev;

  if cdsGridDataIS_OCCUPIED.AsBoolean then
    cdsGridData_OCCUPATION_STATUS_ABBREV.AsString:=
      cdsGridData_OCCUPATION_STATUS_ABBREV.AsString + SOccupationIsOccupied
  else
    cdsGridData_OCCUPATION_STATUS_ABBREV.AsString:=
      cdsGridData_OCCUPATION_STATUS_ABBREV.AsString + SOccupationIsAvailable;

  cdsGridData_MAIN_COUNTS.AsString:=
    Format('%d / %d', [VarToInt(cdsGridData_MAIN_OCCUPIED_COUNT.AsVariant), VarToInt(cdsGridData_MAIN_COUNT.AsVariant)]);

  cdsGridData_NOT_MAIN_COUNTS.AsString:=
    Format('%d / %d', [VarToInt(cdsGridData_NOT_MAIN_OCCUPIED_COUNT.AsVariant), VarToInt(cdsGridData_NOT_MAIN_COUNT.AsVariant)]);

  AssignOccupationEmployeeDetailStatus(
    cdsGridData_PROFESSIONS_STATUS,
    cdsGridDataEMPLOYEE_CODE,
    cdsGridDataOCCUPATION_PROFESSION_COUNT,
    cdsGridDataEMPLOYEE_OCCUPATION_PROF_COUNT);

  AssignOccupationEmployeeDetailStatus(
    cdsGridData_OCC_PRC_ACTIONS_STATUS,
    cdsGridDataEMPLOYEE_CODE,
    cdsGridDataOCC_PRC_ACTIONS_COUNT,
    cdsGridDataOE_MASTERED_PRC_ACTIONS_COUNT);

  cdsGridData_SHOW_BASE_SALARY.AsString:= cdsGridDataBASE_SALARY.DisplayText;
  cdsGridData_SHOW_SALARY.AsString:= cdsGridDataSALARY.DisplayText;

  cdsGridDataTHE_DATE.AsDateTime:= pdsGridDataParamsSTATUS_DATE.AsDateTime;
end;

procedure TfmOccupationsAndEmployees.cdsGridDataE_DOC_EMPTINESS_REQ_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if not cdsGridDataEMPLOYEE_CODE.IsNull then
    DocEmptinessRequirementFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOccupationsAndEmployees.cdsGridDataE_UNAUTHORIZED_ACTIVE_DI_COUNTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  UnauthorizedActiveDocItemCountFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOccupationsAndEmployees.cdsGridDataO_DOC_EMPTINESS_REQ_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  DocEmptinessRequirementFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOccupationsAndEmployees.cdsGridDataO_UNAUTHORIZED_ACTIVE_DI_COUNTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  UnauthorizedActiveDocItemCountFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOccupationsAndEmployees.grdDataColumns16GetCellParams(
  Sender: TObject; EditMode: Boolean; Params: TColCellParamsEh);
begin
  inherited;
  OccEmpDetailStatusColumnGetCellParams(
    Sender,
    EditMode,
    Params,
    cdsGridDataEMPLOYEE_OCCUPATION_PROF_COUNT.AsInteger,
    cdsGridDataOCCUPATION_PROFESSION_COUNT.AsInteger);
end;

procedure TfmOccupationsAndEmployees.cdsGridData_NOT_MAIN_COUNTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
var
  i: Integer;
begin
  inherited;

  i:= VarToInt(Sender.AsVariant);

  if (cdsGridData.Params.ParamByName('IS_MAIN').AsInteger = 1) and (i = 0) then
    Text:= ''
  else
    Text:= IntToStr(i);
end;

procedure TfmOccupationsAndEmployees.cdsOccupationPhasesCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsOccupationPhases_SHOW_NAME.AsString:=
    cdsOccupationPhasesOCCUPATION_PHASE_CODE.AsString + ' - ' +
    cdsOccupationPhasesOCCUPATION_PHASE_NAME.AsString;
end;

procedure TfmOccupationsAndEmployees.actDetailEmployeeCompanyUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDetail.Active and
    (not cdsDetailEMPLOYEE_COMPANY_CODE.IsNull);
end;

procedure TfmOccupationsAndEmployees.actDetailEmployeeCompanyExecute(
  Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaPerson);
  TfmCompany.ShowForm(dmDocClient, nil, cdsDetailEMPLOYEE_COMPANY_CODE.AsInteger, emReadOnly);
end;

procedure TfmOccupationsAndEmployees.actDetailEmployeeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDetail.Active and
    (not cdsDetailEMPLOYEE_COMPANY_CODE.IsNull);
end;

procedure TfmOccupationsAndEmployees.actDetailOccupationEmployeeDocExecute(
  Sender: TObject);
begin
  inherited;

  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotOccupationEmployee,
    cdsDetail);
end;

procedure TfmOccupationsAndEmployees.actDetailOccupationEmployeeDocUpdate(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).ImageIndex:=
    cdsDetailHAS_DOC_ITEMS.AsInteger;

  (Sender as TAction).Enabled:=
    cdsDetail.Active and
    (cdsDetail.RecordCount > 0);
end;

procedure TfmOccupationsAndEmployees.actDetailEmployeeExecute(Sender: TObject);
begin
  inherited;
  TfmEmployee.ShowForm(dmDocClient, cdsDetail, emReadOnly);
end;

procedure TfmOccupationsAndEmployees.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (Column.Field = cdsGridDataOE_REGIME_NAME) then
    AFont.Color:= OccupationEmployeeRegimeColors[cdsGridDataOE_REGIME_CODE.AsInteger];

  if (Column.Field = cdsGridDataASSIGNMENT_DAY_DIFF) then
    begin
      if cdsGridDataASSIGNMENT_DAY_DIFF.IsNull or
         (cdsGridDataASSIGNMENT_DAY_DIFF.AsInteger >= LoginContext.OccupationAssignmentDaysDiff) then
        Background:= OccupationEmployeeDaysDiffColors[3]
      else
        if (cdsGridDataASSIGNMENT_DAY_DIFF.AsInteger >= 0) then
          Background:= OccupationEmployeeDaysDiffColors[2]
        else
          Background:= OccupationEmployeeDaysDiffColors[1];
    end;

  DocFieldsGetCellParams(Sender, Column, AFont, Background, State, 'E_%s');
  DocFieldsGetCellParams(Sender, Column, AFont, Background, State, 'O_%s');
  DocFieldsGetCellParams(Sender, Column, AFont, Background, State, 'P_%s');
end;

procedure TfmOccupationsAndEmployees.OpenDataSets;
begin
  cdsOERegimes.Open;
  cdsCrafts.Open;
  cdsCraftTypes.Open;
  cdsOccupationPhases.Open;
  cdsEducations.Open;
  cdsProfessions.Open;
  cdsShifts.Open;
  inherited;
end;

procedure TfmOccupationsAndEmployees.CloseDataSets;
begin
  inherited;
  cdsShifts.Close;
  cdsProfessions.Close;
  cdsEducations.Close;
  cdsOccupationPhases.Close;
  cdsCraftTypes.Close;
  cdsCrafts.Close;
  cdsOERegimes.Close;
end;

procedure TfmOccupationsAndEmployees.btnToggleEmployeeProductClick(
  Sender: TObject);
begin
  inherited;
//  if btnToggleEmployeeProduct.Down then
//    grdData.VTitleMargin:= 3
//  else
//    grdData.VTitleMargin:= 5;
end;

procedure TfmOccupationsAndEmployees.actOccupationDocExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotOccupation,
    cdsGridDataOCCUPATION_DOC_BRANCH_CODE,
    cdsGridDataOCCUPATION_DOC_CODE);
end;

procedure TfmOccupationsAndEmployees.actOccupationDocUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:=
    cdsGridDataOCCUPATION_HAS_DOC.AsInteger;

  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmOccupationsAndEmployees.actProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProduct,
    cdsGridDataPRODUCT_DOC_BRANCH_CODE,
    cdsGridDataPRODUCT_DOC_CODE);
end;

procedure TfmOccupationsAndEmployees.actProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:=
    cdsGridDataPRODUCT_HAS_DOC.AsInteger;

  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmOccupationsAndEmployees.actEmployeeDocExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotEmployee,
    cdsGridDataEMPLOYEE_DOC_BRANCH_CODE,
    cdsGridDataEMPLOYEE_DOC_CODE);
end;

procedure TfmOccupationsAndEmployees.actEmployeeDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:=
    cdsGridDataEMPLOYEE_HAS_DOC.AsInteger;

  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmOccupationsAndEmployees.cdsGridDataP_DOC_EMPTINESS_REQ_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if DisplayText and (not Sender.DataSet.IsEmpty) and (not cdsGridDataPRODUCT_CODE.IsNull) then
    Text:=
      DocEmptinessRequirementAbbrev(
        IntToDocEmptinessRequirement(cdsGridDataP_DOC_EMPTINESS_REQ_CODE.AsInteger),
        cdsGridDataP_DOC_IS_COMPLETE.AsBoolean)
  else
    Text:= Sender.AsString;
end;

procedure TfmOccupationsAndEmployees.cdsGridDataP_UNAUTHORIZED_ACTIVE_DI_COUNTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if DisplayText then
    Text:= DocItemsUnauthorizedStatus(cdsGridDataP_UNAUTHORIZED_ACTIVE_DI_COUNT.AsInteger,
             cdsGridDataP_ACTIVE_DI_COUNT.AsInteger)
  else
    Text:= Sender.AsString;
end;

procedure TfmOccupationsAndEmployees.grdDataColumns24GetCellParams(
  Sender: TObject; EditMode: Boolean; Params: TColCellParamsEh);
begin
  inherited;
  OccEmpDetailStatusColumnGetCellParams(
    Sender,
    EditMode,
    Params,
    cdsGridDataOE_MASTERED_PRC_ACTIONS_COUNT.AsInteger,
    cdsGridDataOCC_PRC_ACTIONS_COUNT.AsInteger);
end;

procedure TfmOccupationsAndEmployees.AssignOccupationEmployeeDetailStatus(
  StatusField,
  EmployeeCodeField,
  TotalDetailsCountField,
  DetailsCountField: TField);
begin
  if EmployeeCodeField.IsNull then
    StatusField.Clear
  else
    StatusField.AsString:=
      Format('%d/%d', [
        DetailsCountField.AsInteger - TotalDetailsCountField.AsInteger,
        TotalDetailsCountField.AsInteger]);
end;

procedure TfmOccupationsAndEmployees.cdsDetailCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsDetailIS_OCCUPIED.AsBoolean then
    cdsDetail_OCCUPATION_STATUS_ABBREV.AsString:=
      SOccupationIsOccupied
  else
    cdsDetail_OCCUPATION_STATUS_ABBREV.AsString:=
      SOccupationIsAvailable;

  AssignOccupationEmployeeDetailStatus(
    cdsDetail_PROFESSIONS_STATUS,
    cdsDetailEMPLOYEE_CODE,
    cdsGridDataOCCUPATION_PROFESSION_COUNT,
    cdsDetailEMPLOYEE_OCCUPATION_PROF_COUNT);

  AssignOccupationEmployeeDetailStatus(
    cdsDetail_OE_PRC_ACTIONS_STATUS,
    cdsDetailEMPLOYEE_CODE,
    cdsGridDataOCC_PRC_ACTIONS_COUNT,
    cdsDetailOE_MASTERED_PRC_ACTIONS_COUNT);

  cdsDetail_SHOW_SALARY.AsString:= cdsDetailSALARY.DisplayText;

  cdsDetailTHE_DATE.AsDateTime:= pdsGridDataParamsSTATUS_DATE.AsDateTime;
end;

procedure TfmOccupationsAndEmployees.cdsDetailDOC_EMPTINESS_REQ_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and
    (not Sender.DataSet.IsEmpty) and
    (cdsDetailOCCUPATION_EMPLOYEE_CODE.AsFloat > 0) then
    Text:=
      DocEmptinessRequirementAbbrev(
        IntToDocEmptinessRequirement(cdsDetailDOC_EMPTINESS_REQ_CODE.AsInteger),
        cdsDetailDOC_IS_COMPLETE.AsBoolean)
  else
    Text:= Sender.AsString;
end;

procedure TfmOccupationsAndEmployees.cdsDetailE_DOC_EMPTINESS_REQ_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and (not Sender.DataSet.IsEmpty) and (not cdsDetailEMPLOYEE_CODE.IsNull) then
    Text:=
      DocEmptinessRequirementAbbrev(
        IntToDocEmptinessRequirement(cdsDetailE_DOC_EMPTINESS_REQ_CODE.AsInteger),
        cdsDetailE_DOC_IS_COMPLETE.AsBoolean)
  else
    Text:= Sender.AsString;
end;

procedure TfmOccupationsAndEmployees.cdsDetailBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsDetail.Params.ParamByName('STATUS_DATE').AsDateTime:= pdsGridDataParamsSTATUS_DATE.AsDateTime;
end;

procedure TfmOccupationsAndEmployees.cdsDetailBEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if cdsDetailBEGIN_DATE.IsNull then
    Text:= ''
  else
    Text:= dmMain.GetDateIntervalAsShortString(cdsDetailBEGIN_DATE.AsDateTime, cdsDetailEND_DATE.AsDateTime);
end;

procedure TfmOccupationsAndEmployees.cdsDetailE_UNAUTHORIZED_ACTIVE_DI_COUNTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    Text:=
      DocItemsUnauthorizedStatus(
        cdsDetailE_UNAUTHORIZED_ACTIVE_DI_COUNT.AsInteger, cdsDetailE_ACTIVE_DI_COUNT.AsInteger)
  else
    Text:= Sender.AsString;
end;

procedure TfmOccupationsAndEmployees.cdsDetailUNAUTHORIZED_ACTIVE_DI_COUNTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    Text:=
      DocItemsUnauthorizedStatus(
        cdsDetailUNAUTHORIZED_ACTIVE_DI_COUNT.AsInteger, cdsDetailACTIVE_DI_COUNT.AsInteger)
  else
    Text:= Sender.AsString;
end;

procedure TfmOccupationsAndEmployees.grdDetailColumns11GetCellParams(
  Sender: TObject; EditMode: Boolean; Params: TColCellParamsEh);
begin
  inherited;
  OccEmpDetailStatusColumnGetCellParams(
    Sender,
    EditMode,
    Params,
    cdsDetailOE_MASTERED_PRC_ACTIONS_COUNT.AsInteger,
    cdsGridDataOCC_PRC_ACTIONS_COUNT.AsInteger);
end;

procedure TfmOccupationsAndEmployees.OccEmpDetailStatusColumnGetCellParams(
  Sender: TObject;
  EditMode: Boolean;
  Params: TColCellParamsEh;
  ADetailsCount: Integer;
  ATotalDetailsCount: Integer);
begin
  if not (Sender as TColumnEh).Field.IsNull then
    if (ADetailsCount = 0) and (ATotalDetailsCount = 0) then
      Params.Font.Color:= clRed
    else
      if (ADetailsCount < ATotalDetailsCount) then
        Params.Background:= ccTotalLateNotSelected
      else
        Params.Font.Color:= clGreen;
end;

procedure TfmOccupationsAndEmployees.grdDetailColumns7GetCellParams(
  Sender: TObject; EditMode: Boolean; Params: TColCellParamsEh);
begin
  inherited;
  OccEmpDetailStatusColumnGetCellParams(
    Sender,
    EditMode,
    Params,
    cdsDetailEMPLOYEE_OCCUPATION_PROF_COUNT.AsInteger,
    cdsGridDataOCCUPATION_PROFESSION_COUNT.AsInteger);
end;

procedure TfmOccupationsAndEmployees.grdDetailGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (Column.Field = cdsDetailOE_REGIME_NAME) then
    AFont.Color:= OccupationEmployeeRegimeColors[cdsDetailOE_REGIME_CODE.AsInteger];

  if (Column.Field = cdsDetailBEGIN_DATE) and
     (pdsGridDataParamsSTATUS_DATE.AsDateTime >= cdsDetailBEGIN_DATE.AsDateTime) and
     (pdsGridDataParamsSTATUS_DATE.AsDateTime <= cdsDetailEND_DATE.AsDateTime) then
    Background:= $00E7C17C;

  DocFieldsGetCellParams(Sender, Column, AFont, Background, State);
  DocFieldsGetCellParams(Sender, Column, AFont, Background, State, 'E_%s');
end;

procedure TfmOccupationsAndEmployees.Initialize;
begin
  inherited;

  RegisterExcelExportDoc('OCCUPATION_DOC_BRANCH_CODE', 'OCCUPATION_DOC_CODE', 'OCCUPATION_HAS_DOC', Trim(lblOccupationDoc.Caption));
  RegisterExcelExportDoc('PRODUCT_DOC_BRANCH_CODE', 'PRODUCT_DOC_CODE', 'PRODUCT_HAS_DOC', Trim(lblProductDoc.Caption));
  RegisterExcelExportDoc('EMPLOYEE_DOC_BRANCH_CODE', 'EMPLOYEE_DOC_CODE', 'EMPLOYEE_HAS_DOC', Trim(lblEmployeeDoc.Caption));

  RegisterDetailExcelExportDoc('EMPLOYEE_DOC_BRANCH_CODE', 'EMPLOYEE_DOC_CODE', 'EMPLOYEE_HAS_DOC', Trim(lblDetailEmployeeDoc.Caption));
end;

procedure TfmOccupationsAndEmployees.actDetailEmployeeDocExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotEmployee,
    cdsDetailEMPLOYEE_DOC_BRANCH_CODE,
    cdsDetailEMPLOYEE_DOC_CODE);
end;

procedure TfmOccupationsAndEmployees.actDetailEmployeeDocUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:=
    cdsDetailEMPLOYEE_HAS_DOC.AsInteger;

  (Sender as TAction).Enabled:=
    cdsDetail.Active and
    (cdsDetail.RecordCount > 0);
end;

procedure TfmOccupationsAndEmployees.cdsDetailAfterDelete(
  DataSet: TDataSet);
var
  SaveCursor: TCursor;
begin
  inherited;
  try
    SaveCursor:= Screen.Cursor;
    Screen.Cursor:= crSQLWait;
    try
      if (cdsDetail.ApplyUpdates(0) > 0) then
        Abort;
    finally
      Screen.Cursor:= SaveCursor;
    end;
  finally
    RefreshDataSet(cdsGridData);
  end;  { try }
end;

function TfmOccupationsAndEmployees.GetDelDetailRecordEnabled: Boolean;
begin
  Result:=
    inherited GetDelDetailRecordEnabled and
    not cdsDetailEMPLOYEE_CODE.IsNull;
end;

function TfmOccupationsAndEmployees.GetInsertRecordEnabled: Boolean;
begin
  Result:= False;
end;

procedure TfmOccupationsAndEmployees.SalaryFieldsGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

function TfmOccupationsAndEmployees.ShowDetailEditForm(
  AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean;
var
  NewEditMode: TEditMode;
  NewDefaultsOrigin: TDefaultsOrigin;
begin
  Assert(Assigned(DetailEditFormClass));

  if (AEditMode = emEdit) and cdsDetailEMPLOYEE_CODE.IsNull then
    begin
      NewEditMode:= emInsert;
      NewDefaultsOrigin:= doDataset;
    end
  else
    begin
      NewEditMode:= AEditMode;
      NewDefaultsOrigin:= ADefaultsOrigin;
    end;

  Result:= inherited ShowDetailEditForm(NewEditMode, NewDefaultsOrigin);
end;

procedure TfmOccupationsAndEmployees.actPrintExecute(Sender: TObject);
var
  AfterScrollEvent: TDataSetNotifyEvent;
  b: TBookmark;
begin
  AfterScrollEvent:= cdsGridData.AfterScroll;
  cdsGridData.AfterScroll:= nil;
  try
    // force calc fields
    b:= pdsGridDataParams.Bookmark;
    pdsGridDataParams.First;
    try
      pdsGridDataParams.Last;
    finally
      pdsGridDataParams.Bookmark:= b;
    end;
    
    inherited;
  finally
    cdsGridData.AfterScroll:= AfterScrollEvent;
  end;
end;

end.

