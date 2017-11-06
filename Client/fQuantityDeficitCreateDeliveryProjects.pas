unit fQuantityDeficitCreateDeliveryProjects;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, DBGridEhGrouping, Menus, DB, AbmesFields, ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fDateIntervalFrame, fBaseFrame, fDBFrame, fFieldEditFrame, fPartnerFieldEditFrame, fPartnerFieldEditFrameBald, Mask,
  JvExControls, JvDBLookup, fBaseForm, dDocClient, uClientTypes, uProducts,
  uSection, fQuantityDeficitCreateDeliveryProjectsEdit, uNestProc;

type
  TGetDCDFunc = reference to function (var DCDBranchCode, DCDCode: Integer): Boolean;

type
  [CanUseDocs]
  [EditFormClass(TfmQuantityDeficitCreateDeliveryProjectsEdit)]
  TfmQuantityDeficitCreateDeliveryProjects = class(TGridForm)
    pnlDeficitCoverDecision: TPanel;
    gbDeficitCoverDecision: TGroupBox;
    lblDCDType: TLabel;
    cbDCDBranch: TJvDBLookupCombo;
    lblDCDBranch: TLabel;
    edtDCDCode: TDBEdit;
    lblDCDCode: TLabel;
    frVendor: TfrPartnerFieldEditFrameBald;
    lblDCDVendor: TLabel;
    gbDateInterval: TGroupBox;
    gbIsTowardsReserve: TGroupBox;
    btnNewDeficitCoverDecision: TBitBtn;
    actNewDeficitCoverDecision: TAction;
    edtDeliveryDealType: TDBEdit;
    dsBranches: TDataSource;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    edtDCDVendorCountry: TDBEdit;
    lblDCDVendorCountry: TLabel;
    cdsDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataDCD_OBJECT_CODE: TAbmesFloatField;
    cdsDataDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDataV_VENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsDataVEDOR_COMPANY_COUNTRY: TAbmesWideStringField;
    cdsDCDMode: TAbmesClientDataSet;
    cdsDCDModeDCD_MODE_CODE: TAbmesFloatField;
    frDateInterval: TfrDateIntervalFrame;
    edtIsTowardsReserve: TDBEdit;
    dsHeader: TDataSource;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataDELIVERY_DATE: TAbmesSQLTimeStampField;
    cdsGridDataQUANTITY_DEFICIT: TAbmesFloatField;
    tlbHideNonDeficitRows: TToolBar;
    btnHideNonDeficitRows: TToolButton;
    actHideNonDeficitRows: TAction;
    cdsGridDataMIN_QUANTITY: TAbmesFloatField;
    cdsGridDataQUANTITY: TAbmesFloatField;
    cdsGridDataDELIVERY_PROJECT_QUANTITY: TAbmesFloatField;
    cdsGridDataSTORE_CODE: TAbmesFloatField;
    cdsGridDataSTORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDEPT_IS_STORE: TAbmesFloatField;
    cdsGridDataSINGLE_PRICE: TAbmesFloatField;
    cdsGridDataCURRENCY_CODE: TAbmesFloatField;
    cdsCurrencies: TAbmesClientDataSet;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataIS_TRANSPORT_FROM_VENDOR: TAbmesFloatField;
    cdsDataBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsDataOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    pnlCreateDeliveryProjects: TPanel;
    btnCreateDeliveryProjects: TBitBtn;
    actCreateDeliveryProjects: TAction;
    cdsGridDataERROR_MESSAGE: TAbmesWideStringField;
    cdsNewDeliveryProject: TAbmesClientDataSet;
    cdsNewDeliveryProjectPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataDELIVERY_PROJECT_STATE: TAbmesFloatField;
    cdsDeficitCoverDecision: TAbmesClientDataSet;
    cdsDeficitCoverDecisionDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionDCD_OBJECT_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionIS_DONE: TAbmesFloatField;
    cdsDeficitCoverDecisionIS_CANCELED: TAbmesFloatField;
    cdsDeficitCoverDecisionVPD_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionDEPT_NO: TAbmesFloatField;
    cdsDeficitCoverDecisionDEPT_NAME: TAbmesWideStringField;
    cdsDeficitCoverDecisionPRODUCT_NAME: TAbmesWideStringField;
    cdsDeficitCoverDecisionPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsDeficitCoverDecisionWORK_MEASURE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionPRODUCT_CUSTOM_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionDCD_BRANCH_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionDCD_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionDOC_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionASPECT_TYPE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionDELIVERY_COUNT: TAbmesFloatField;
    cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionHAS_DOC: TAbmesFloatField;
    cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeficitCoverDecisionOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionDCD_BRANCH_ID: TAbmesWideStringField;
    cdsDeficitCoverDecisionASPECT_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeficitCoverDecisionTOTAL_WORK_QUANTITY: TAbmesFloatField;
    cdsDeficitCoverDecisionTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDeficitCoverDecisionDP_DECISION_QUANTITY: TAbmesFloatField;
    cdsDeficitCoverDecisionDC_QUANTITY: TAbmesFloatField;
    cdsDeficitCoverDecisionDELIVERY_SD_QUANTITY: TAbmesFloatField;
    cdsDeficitCoverDecisionMEASURE_ABBREV: TAbmesWideStringField;
    cdsDeficitCoverDecisionACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDeficitCoverDecisionSTREAM_TYPE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionSTREAM_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeficitCoverDecisionBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionDCD_MODE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionP_PRODUCT_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionP_DEFICIT_COVER_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionP_WORK_QUANTITY: TAbmesFloatField;
    cdsDeficitCoverDecisionP_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDeficitCoverDecisionP_PSD_STORE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionP_LEASE_DATE_UNIT_QUANTITY: TAbmesFloatField;
    cdsDeficitCoverDecisionP_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionP_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionP_RETURN_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionV_VENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionV_MEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionV_START_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionV_REGISTER_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionV_PLAN_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionV_REAL_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionV_PLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionV_REAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionPRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionPLAN_DECISION_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionDCD_STATUS_CODE: TAbmesFloatField;
    cdsNewDeliveryProjectDIALOG_EMPLOYEE_CODE: TAbmesFloatField;
    cdsNewDeliveryProjectIS_ACTIVATED_BY_VENDOR: TAbmesFloatField;
    cdsNewDeliveryProjectPSD_STORE_CODE: TAbmesFloatField;
    cdsNewDeliveryProjectDEFICIT_COVER_DATE: TAbmesSQLTimeStampField;
    cdsNewDeliveryProjectDELIVERY_DATE: TAbmesSQLTimeStampField;
    cdsNewDeliveryProjectWORK_QUANTITY: TAbmesFloatField;
    cdsNewDeliveryProjectSINGLE_PRICE: TAbmesFloatField;
    cdsNewDeliveryProjectCURRENCY_CODE: TAbmesFloatField;
    cdsNewDeliveryProjectIS_TRANSPORT_FROM_VENDOR: TAbmesFloatField;
    cdsSelectDCD: TAbmesClientDataSet;
    cdsSelectDCDDCD_BRANCH_CODE: TAbmesFloatField;
    cdsSelectDCDDCD_CODE: TAbmesFloatField;
    dsSelectDCD: TDataSource;
    btnSelectDeficitCoverDecision: TBitBtn;
    actSelectDeficitCoverDecision: TAction;
    pnlProgress: TPanel;
    pbProgress: TProgressBar;
    cdsDeliveryDefaults: TAbmesClientDataSet;
    cdsDeliveryDefaultsIS_PARTNER_TRANSPORT: TAbmesFloatField;
    cdsDeliveryDefaultsSTORE_CODE: TAbmesFloatField;
    cdsDeliveryDefaultsPRICE: TAbmesFloatField;
    cdsDeliveryDefaultsCURRENCY_CODE: TAbmesFloatField;
    sepBeforeVIMQuantity: TToolButton;
    btnShowVIM: TToolButton;
    actShowVIM: TAction;
    cdsVIMParams: TAbmesClientDataSet;
    cdsVIMParamsINCLUDE_PLANNED_SECOND_LEVEL: TAbmesFloatField;
    cdsVIMParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsVIMParamsTIME_UNIT_COUNT: TAbmesFloatField;
    cdsVIMParamsTIME_UNIT_CODE: TAbmesFloatField;
    cdsVIMParamsIS_TOWARDS_RESERVE: TAbmesFloatField;
    cdsVIMParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsVIMParamsCHOSEN_DEPTS: TAbmesWideStringField;
    cdsGridData_VENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataACCOUNT_DELIVERY_PROJECT_QTY: TAbmesFloatField;
    cdsGridDataACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    tlbMeasures: TToolBar;
    sepMeasures: TToolButton;
    btnWorkMeasure: TToolButton;
    btnAccountMeasure: TToolButton;
    cdsGridDataACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsGridData_ACCOUNT_QUANTITY_DEFICIT: TAbmesFloatField;
    cdsGridData_ACCOUNT_MIN_QUANTITY: TAbmesFloatField;
    cdsGridData_ACCOUNT_QUANTITY: TAbmesFloatField;
    tlbDoc: TToolBar;
    sepBeforeDoc: TToolButton;
    lblProductDoc: TLabel;
    btnProductDoc: TToolButton;
    actProductDoc: TAction;
    cdsGridDataPRODUCT_HAS_DOC: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure actNewDeficitCoverDecisionExecute(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure actHideNonDeficitRowsExecute(Sender: TObject);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsGridDataSTORE_CODEChange(Sender: TField);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataIS_TRANSPORT_FROM_VENDORGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actCreateDeliveryProjectsUpdate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure actCreateDeliveryProjectsExecute(Sender: TObject);
    procedure cdsGridDataDELIVERY_PROJECT_STATEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsSelectDCDDCD_BRANCH_CODEChange(Sender: TField);
    procedure cdsSelectDCDDCD_CODEChange(Sender: TField);
    procedure actSelectDeficitCoverDecisionExecute(Sender: TObject);
    procedure actShowVIMUpdate(Sender: TObject);
    procedure actShowVIMExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataDELIVERY_PROJECT_QUANTITYChange(Sender: TField);
    procedure cdsGridDataACCOUNT_DELIVERY_PROJECT_QTYChange(Sender: TField);
    procedure cdsGridDataSINGLE_PRICEChange(Sender: TField);
    procedure cdsGridDataACCOUNT_SINGLE_PRICEChange(Sender: TField);
    procedure actProductDocExecute(Sender: TObject);
    procedure actProductDocUpdate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FDeliveryProjectsDataSet: TDataSet;
    FInStoreCodeChange: TTrySinglePassSection;
    FNotApplyedDeliveryProjectExists: Boolean;
    FHasCreatedDeliveryProject: Boolean;
    FChangingWorkAccountField: TTrySinglePassSection;
    procedure RefreshDeficitCoverDecision;
    procedure LoadDeliveryDefaults;
    procedure CreateDeliveryProject;
    procedure DeliveryProjectOnException(const AExceptionMessage, AExceptionClassName: string);
    function ShouldApplyDeliveryProject: Boolean;
    procedure ChooseDCDFieldChange(AField: TField);
    procedure SetDeficitCoverDecision(AGetDCDFunc: TGetDCDFunc);
    function TempProgressBar(const AOperationName: string): TNestProcRec;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetApplyKind: TApplyKind; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    property HasCreatedDeliveryProject: Boolean read FHasCreatedDeliveryProject;
  public
    procedure Initialize; override;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      AProductClass: TProductClass = pcNone;
      AHeaderDataSet: TDataSet = nil;
      ADeliveryProjectsDataSet: TDataSet = nil): Boolean;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      AProductClass: TProductClass = pcNone;
      AHeaderDataSet: TDataSet = nil;
      ADeliveryProjectsDataSet: TDataSet = nil); reintroduce; virtual;
  end;

implementation

uses
  uUtils, uClientUtils, fDeficitCoverDecision,
  uProductionOrderTypes, uDCDModes, uColorConsts, uTreeClientUtils, fMain,
  fDelivery, fDeficitCoverDecisions, fVIMQuantity, uOpenVIMConsts, uPeriods,
  uXMLUtils, dMain, uToolbarUtils;

const
  ApplyedDeliveryProjectStateBackground = $00E6F9E7;
  ErrorDeliveryProjectStateBackground = $00C8C8F2;

resourcestring
  SConfirmCreationOfDeliveryProjects = 'Потвърдете множествено създаване на ОДД към ПДД Субектов!';
  SSubjectiveDeficitCoverDecisionDoesNotExist = 'Неанулиран и неприключен, Субектов ПДД с такава идентификация не съществува';
  SOurOrganization = 'ИП';
  SVendor = 'Доставчик';
  SStateOk = ' OK';
  SStateError = '   !        %s';
  SCreatingDeliveryProjects = 'Множествено създаване на ОДД...';
  SLoadingDeliveryDefaults = 'Зареждане на данни за ОДД от ИД...';

type
  TDeliveryProjectState = (dpsUnapplyed, dpsApplyed, dpsError);

type
  TDeliveryProjectStateFieldHelper = class helper (TDCDModeFieldHelper) for TField
  private
    function GetAsDeliveryProjectState: TDeliveryProjectState;
    procedure SetAsDeliveryProjectState(const Value: TDeliveryProjectState);
  public
    property AsDeliveryProjectState: TDeliveryProjectState read GetAsDeliveryProjectState write SetAsDeliveryProjectState;
  end;

{$R *.dfm}

{ TDeliveryProjectState }

function IntToDeliveyrProjectState(AValue: Integer): TDeliveryProjectState;
begin
  case AValue of
    1: Result:= dpsUnapplyed;
    2: Result:= dpsApplyed;
    3: Result:= dpsError;
  else
    raise Exception.Create('Unknown DeliveryProjectState code');
  end;
end;

function DeliveyrProjectStateToInt(AValue: TDeliveryProjectState): Integer;
begin
  case AValue of
    dpsUnapplyed: Result:= 1;
    dpsApplyed: Result:= 2;
    dpsError: Result:= 3;
  else
    raise Exception.Create('Unknown DeliveryProjectState');
  end;
end;

{ TDeliveryProjectStateFieldHelper }

function TDeliveryProjectStateFieldHelper.GetAsDeliveryProjectState: TDeliveryProjectState;
begin
  Result:= IntToDeliveyrProjectState(AsInteger);
end;

procedure TDeliveryProjectStateFieldHelper.SetAsDeliveryProjectState(const Value: TDeliveryProjectState);
begin
  AsInteger:= DeliveyrProjectStateToInt(Value);
end;

{ TfmQuantityDeficitCreateDeliveryProjects }

function TfmQuantityDeficitCreateDeliveryProjects.GetApplyKind: TApplyKind;
begin
  Result:= akNone;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
  AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean; AProductClass: TProductClass;
  AHeaderDataSet: TDataSet; ADeliveryProjectsDataSet: TDataSet);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);

  FProductClass:= AProductClass;

  dsHeader.DataSet:= AHeaderDataSet;
  frDateInterval.SetDataSet(AHeaderDataSet);

  FDeliveryProjectsDataSet:= ADeliveryProjectsDataSet;
end;

class function TfmQuantityDeficitCreateDeliveryProjects.ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
  AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
  AProductClass: TProductClass; AHeaderDataSet: TDataSet; ADeliveryProjectsDataSet: TDataSet): Boolean;
var
  f: TfmQuantityDeficitCreateDeliveryProjects;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled,
      AProductClass, AHeaderDataSet, ADeliveryProjectsDataSet);

    f.InternalShowForm;
    Result:= f.HasCreatedDeliveryProject;
  finally
    f.ReleaseForm;
  end;  { try }
end;

function TfmQuantityDeficitCreateDeliveryProjects.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= TfmQuantityDeficitCreateDeliveryProjectsEdit.ShowForm(dmDocClient, dsGridData.DataSet, AEditMode, doNone, btnWorkMeasure.Down);
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.FormCreate(Sender: TObject);
begin
  inherited;
  frVendor.FieldNames:= 'V_VENDOR_COMPANY_CODE';
  frDateInterval.FieldNames:= 'BEGIN_DATE;_END_DATE';
  RegisterDateFields(cdsGridData);
  FNotApplyedDeliveryProjectExists:= True;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.Initialize;
begin
  inherited;
  FDeliveryProjectsDataSet.ForEach/
    cdsGridData.SafeAppend/
      cdsGridData.AssignFieldsProc(FDeliveryProjectsDataSet);

  cdsGridData.First;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.OpenDataSets;
begin
  cdsBranches.Open;
  cdsSelectDCD.CreateDataSet;
  inherited;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.CloseDataSets;
begin
  inherited;
  cdsSelectDCD.Close;
  cdsBranches.Close;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frVendor) or
     (AFrame = frDateInterval) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.ChooseDCDFieldChange(AField: TField);
begin
  if AField.IsNull then
    begin
      CheckEditMode(cdsData);
      cdsData.ClearFields;
    end;

  RefreshDeficitCoverDecision;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.cdsSelectDCDDCD_BRANCH_CODEChange(Sender: TField);
begin
  inherited;
  ChooseDCDFieldChange(Sender);
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.cdsSelectDCDDCD_CODEChange(Sender: TField);
begin
  inherited;
  ChooseDCDFieldChange(Sender);
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.RefreshDeficitCoverDecision;
begin
  if not cdsSelectDCDDCD_BRANCH_CODE.IsNull and
     not cdsSelectDCDDCD_CODE.IsNull then
    begin
      SetParams(cdsData.Params, cdsSelectDCD);
      RefreshDataSet(cdsData);
      if cdsData.IsEmpty then
        raise Exception.Create(SSubjectiveDeficitCoverDecisionDoesNotExist);

      Screen.TempCursor(crSQLWait)/
        cdsGridData.TempDisableControls/
          cdsGridData.PreserveBookmark/
            cdsGridData.TempUnfilter/
              TempProgressBar(SLoadingDeliveryDefaults)/
                cdsGridData.ForEach/
                  cdsGridData.SafeEdit/
                    procedure begin
                      LoadDeliveryDefaults;

                      pbProgress.Position:= cdsGridData.RecNo;
                      Application.ProcessMessages;
                    end;
    end;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.SetDeficitCoverDecision(AGetDCDFunc: TGetDCDFunc);
var
  DCDBranchCode: Integer;
  DCDCode: Integer;
begin
  cdsDCDMode.TempCreateDataSet/
    procedure begin
      cdsDCDMode.SafeEdit/
        procedure begin
          cdsDCDModeDCD_MODE_CODE.AsDCDMode:= dcdmSubjective;
        end;

      if AGetDCDFunc(DCDBranchCode, DCDCode) then
        begin
          CheckEditMode(cdsSelectDCD);
          cdsSelectDCD.ClearFields;
          cdsSelectDCDDCD_BRANCH_CODE.AsInteger:= DCDBranchCode;
          cdsSelectDCDDCD_CODE.AsInteger:= DCDCode;
        end;
    end;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.actNewDeficitCoverDecisionExecute(Sender: TObject);
begin
  inherited;
  SetDeficitCoverDecision(
    function (var DCDBranchCode, DCDCode: Integer): Boolean begin
      Result:= TfmDeficitCoverDecision.InsertDCD(dmDocClient, cdsDCDMode, doDataSet, pobtEmpty, FProductClass, DCDBranchCode, DCDCode);
    end);
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.actProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    cdsGridDataPRODUCT_CODE.AsInteger);
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.actProductDocUpdate(Sender: TObject);
begin
  inherited;
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataPRODUCT_HAS_DOC.AsBoolean);
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.actSelectDeficitCoverDecisionExecute(Sender: TObject);
begin
  inherited;
  SetDeficitCoverDecision(
    function (var DCDBranchCode, DCDCode: Integer): Boolean begin
      Result:= TfmDeficitCoverDecisions.SelectDCD(dmDocClient, cdsDCDMode, FProductClass, DCDBranchCode, DCDCode);
    end);
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
const
  DeliveryProjectStateColors: array[TDeliveryProjectState] of TColor =
    (clWindow, ApplyedDeliveryProjectStateBackground, ErrorDeliveryProjectStateBackground);
begin
  inherited;
  if ( (Column.Field = cdsGridDataQUANTITY_DEFICIT) or
       (Column.Field = cdsGridData_ACCOUNT_QUANTITY_DEFICIT)
     ) and
     not Column.Field.IsNull then
    begin
      Background:= ccDeficitBackground;
    end;

  if (Column.Field = cdsGridDataDELIVERY_PROJECT_STATE) and not Column.Field.IsNull then
    Background:= DeliveryProjectStateColors[cdsGridDataDELIVERY_PROJECT_STATE.AsDeliveryProjectState];
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.actHideNonDeficitRowsExecute(Sender: TObject);
begin
  inherited;
  cdsGridData.PreserveCurrentRecord('PRODUCT_CODE')/
    procedure begin
      cdsGridData.Filtered:= not cdsGridData.Filtered;
    end;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:= not cdsGridDataQUANTITY_DEFICIT.IsNull;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.cdsGridDataSTORE_CODEChange(Sender: TField);
begin
  inherited;
  FInStoreCodeChange.TempEnter/
    procedure begin
      DoDeptFieldChanged(cdsGridDataSTORE_CODE, nil, cdsGridDataSTORE_IDENTIFIER, cdsGridDataDEPT_IS_STORE);
      if not cdsGridDataDEPT_IS_STORE.AsBoolean then
        begin
          cdsGridDataSTORE_CODE.Clear;
          cdsGridDataSTORE_IDENTIFIER.Clear;
        end;
    end;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGridData_TOTAL_PRICE.AsVarFloat:= cdsGridDataDELIVERY_PROJECT_QUANTITY.AsFloat * cdsGridDataSINGLE_PRICE.AsFloat;
  cdsGridData_VENDOR_COMPANY_CODE.Assign(cdsDataV_VENDOR_COMPANY_CODE);
  cdsGridData_ACCOUNT_QUANTITY_DEFICIT.AsVarFloat:= cdsGridDataQUANTITY_DEFICIT.AsFloat * cdsGridDataACCOUNT_MEASURE_COEF.AsFloat;
  cdsGridData_ACCOUNT_MIN_QUANTITY.AsVarFloat:= cdsGridDataMIN_QUANTITY.AsFloat * cdsGridDataACCOUNT_MEASURE_COEF.AsFloat;
  cdsGridData_ACCOUNT_QUANTITY.AsVarFloat:= cdsGridDataQUANTITY.AsFloat * cdsGridDataACCOUNT_MEASURE_COEF.AsFloat;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.cdsGridDataIS_TRANSPORT_FROM_VENDORGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
const
  IsTransportFromVendorNames: array[Boolean] of string = (SVendor, SOurOrganization);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= IsTransportFromVendorNames[Sender.AsBoolean];
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.LoadDeliveryDefaults;
begin
  cdsDeliveryDefaults.Params.ParamByName('PARTNER_CODE').AsInteger:= cdsDataV_VENDOR_COMPANY_CODE.AsInteger;
  cdsDeliveryDefaults.Params.ParamByName('PRODUCT_CODE').AsInteger:= cdsGridDataPRODUCT_CODE.AsInteger;
  cdsDeliveryDefaults.Params.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:= cdsDataBORDER_REL_TYPE_CODE.AsInteger;
  cdsDeliveryDefaults.Params.ParamByName('OBTAINMENT_TYPE_CODE').AsInteger:= cdsDataOBTAINMENT_TYPE_CODE.AsInteger;
  cdsDeliveryDefaults.Params.ParamByName('THE_DATE').AsDateTime:= cdsGridDataDELIVERY_DATE.AsDateTime;
  cdsDeliveryDefaults.TempOpen/
    procedure begin
      if not cdsDeliveryDefaults.IsEmpty then
        begin
          cdsGridDataSTORE_CODE.IfIsNullAssign(cdsDeliveryDefaultsSTORE_CODE);
          cdsGridDataSINGLE_PRICE.IfIsNullAssign(cdsDeliveryDefaultsPRICE);
          cdsGridDataCURRENCY_CODE.IfIsNullAssign(cdsDeliveryDefaultsCURRENCY_CODE);
          cdsGridDataIS_TRANSPORT_FROM_VENDOR.AsBoolean:= not cdsDeliveryDefaultsIS_PARTNER_TRANSPORT.AsBoolean;
        end;
    end;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataDELIVERY_PROJECT_STATE.AsDeliveryProjectState:= dpsUnapplyed;
  cdsGridDataIS_TRANSPORT_FROM_VENDOR.AsBoolean:= True;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.actCreateDeliveryProjectsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsDataDCD_OBJECT_BRANCH_CODE.IsNull and
    not cdsGridData.IsEmpty and
    FNotApplyedDeliveryProjectExists;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.actFormUpdate(Sender: TObject);
begin
  inherited;
  UpdateColumnsVisibility(grdData, NormalizedToolbarToolbarsAndFlowPanels(tlbMeasures));
end;

function TfmQuantityDeficitCreateDeliveryProjects.ShouldApplyDeliveryProject: Boolean;
begin
  Result:= cdsGridDataDELIVERY_PROJECT_STATE.AsDeliveryProjectState in [dpsUnapplyed, dpsError];
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.DeliveryProjectOnException(const AExceptionMessage, AExceptionClassName: string);
begin
  cdsGridData.SafeEdit/
    procedure begin
      cdsGridDataDELIVERY_PROJECT_STATE.AsDeliveryProjectState:= dpsError;
      cdsGridDataERROR_MESSAGE.AsString:= AExceptionMessage;
      FNotApplyedDeliveryProjectExists:= True;
    end;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.actCreateDeliveryProjectsExecute(Sender: TObject);
begin
  inherited;
  ConfirmAction(SConfirmCreationOfDeliveryProjects);

  FNotApplyedDeliveryProjectExists:= False;

  SetParams(cdsDeficitCoverDecision.Params, cdsData);
  dmMain.TempCacheTimeout(cdsGridData.RecordCount * 2000)/
    Screen.TempCursor(crSQLWait)/
      cdsDeficitCoverDecision.TempOpen/
        cdsGridData.TempDisableControls/
          cdsGridData.PreserveBookmark/
            TempProgressBar(SCreatingDeliveryProjects)/
              cdsGridData.ForEach/
                Utils.If(ShouldApplyDeliveryProject)/
                  fmMain.GetInnerFormExceptions(DeliveryProjectOnException)/
                    procedure begin
                      CreateDeliveryProject;
  
                      cdsGridData.SafeEdit/
                        procedure begin
                          cdsGridDataDELIVERY_PROJECT_STATE.AsDeliveryProjectState:= dpsApplyed;
                        end;
  
                      FHasCreatedDeliveryProject:= True;
  
                      pbProgress.Position:= cdsGridData.RecNo;
                      Application.ProcessMessages;
                    end;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.CreateDeliveryProject;
begin
  cdsNewDeliveryProject.TempCreateDataSet/
    procedure begin
      cdsNewDeliveryProject.SafeAppend/
        procedure begin
          cdsNewDeliveryProjectPRODUCT_CODE.Assign(cdsGridDataPRODUCT_CODE);
          cdsNewDeliveryProjectDIALOG_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
          cdsNewDeliveryProjectIS_ACTIVATED_BY_VENDOR.AsBoolean:= False;
          cdsNewDeliveryProjectPSD_STORE_CODE.Assign(cdsGridDataSTORE_CODE);
          cdsNewDeliveryProjectDEFICIT_COVER_DATE.Assign(cdsGridDataDELIVERY_DATE);
          cdsNewDeliveryProjectDELIVERY_DATE.Assign(cdsGridDataDELIVERY_DATE);
          cdsNewDeliveryProjectWORK_QUANTITY.Assign(cdsGridDataDELIVERY_PROJECT_QUANTITY);
          cdsNewDeliveryProjectSINGLE_PRICE.Assign(cdsGridDataSINGLE_PRICE);
          cdsNewDeliveryProjectCURRENCY_CODE.Assign(cdsGridDataCURRENCY_CODE);
          cdsNewDeliveryProjectIS_TRANSPORT_FROM_VENDOR.Assign(cdsGridDataIS_TRANSPORT_FROM_VENDOR);
        end;

      TfmDelivery.ShowForm(dmDocClient, nil, emInsert, doNone, cdsDeficitCoverDecision, FProductClass, nil, cdsNewDeliveryProject);
    end;
end;

function TfmQuantityDeficitCreateDeliveryProjects.TempProgressBar(const AOperationName: string): TNestProcRec;
begin
  Result:=
    TNestProcRec.Create(
      procedure (AProc: TProc) begin
        pnlProgress.TempVisible(True)/
          procedure begin
            pnlProgress.Caption:= AOperationName;
            try
              pbProgress.Max:= cdsGridData.RecordCount;
              pbProgress.Position:= 0;
              AProc;
            finally
              pnlProgress.Caption:= '';
            end;
          end;
      end);
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.cdsGridDataDELIVERY_PROJECT_STATEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    case Sender.AsDeliveryProjectState of
      dpsUnapplyed: Text:= '';
      dpsApplyed: Text:= SStateOk;
      dpsError: Text:= Format(SStateError, [cdsGridDataERROR_MESSAGE.AsString]);
    else
      raise Exception.Create('Unknown DeliveryProjectState');
    end;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.actShowVIMExecute(Sender: TObject);
begin
  inherited;
  cdsVIMParams.TempCreateDataSet/
    procedure begin
      cdsVIMParams.SafeAppend/
        procedure begin
          cdsVIMParamsCHOSEN_PRODUCTS.AsString:= ChosenNodeCodeToXML(cdsGridDataPRODUCT_CODE.AsInteger);
          cdsVIMParamsCHOSEN_DEPTS.Assign(dsHeader.DataSet.FieldByName('CHOSEN_DEPTS'));
          cdsVIMParamsBEGIN_DATE.Assign(dsHeader.DataSet.FieldByName('BEGIN_DATE'));
          cdsVIMParamsTIME_UNIT_COUNT.Assign(dsHeader.DataSet.FieldByName('TIME_UNIT_COUNT'));
          cdsVIMParamsTIME_UNIT_CODE.Assign(dsHeader.DataSet.FieldByName('TIME_UNIT_CODE'));
          cdsVIMParamsINCLUDE_PLANNED_SECOND_LEVEL.AsBoolean:= (dsHeader.DataSet.FieldByName('MAX_PSD_TYPE_CODE').AsFloat = 2);
          cdsVIMParamsIS_TOWARDS_RESERVE.Assign(dsHeader.DataSet.FieldByName('_IS_TOWARDS_RESERVE'));
        end;

      TfmVIMQuantity.ShowForm(dmDocClient, cdsVIMParams, emReadOnly, False, vofVIMOpenedFromDef, FProductClass);
    end;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.actShowVIMUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

// cdsGridDataACCOUNT_MEASURE_COEF da se namira predi tezi poleta w cdsGridData za da se popylwa pyrwo i da e
// nalichno kogato tezi zapochnat da se popylwat

procedure TfmQuantityDeficitCreateDeliveryProjects.cdsGridDataDELIVERY_PROJECT_QUANTITYChange(Sender: TField);
begin
  inherited;
  FChangingWorkAccountField.TempEnter/
    procedure begin
      cdsGridDataACCOUNT_DELIVERY_PROJECT_QTY.AsVarFloat:= Sender.AsFloat * cdsGridDataACCOUNT_MEASURE_COEF.AsFloat;
    end;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.cdsGridDataACCOUNT_DELIVERY_PROJECT_QTYChange(Sender: TField);
begin
  inherited;
  FChangingWorkAccountField.TempEnter/
    procedure begin
      cdsGridDataDELIVERY_PROJECT_QUANTITY.AsVarFloat:= Sender.AsFloat / cdsGridDataACCOUNT_MEASURE_COEF.AsFloat;
    end;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.cdsGridDataSINGLE_PRICEChange(Sender: TField);
begin
  inherited;
  FChangingWorkAccountField.TempEnter/
    procedure begin
      cdsGridDataACCOUNT_SINGLE_PRICE.AsVarFloat:= Sender.AsFloat / cdsGridDataACCOUNT_MEASURE_COEF.AsFloat;
    end;
end;

procedure TfmQuantityDeficitCreateDeliveryProjects.cdsGridDataACCOUNT_SINGLE_PRICEChange(Sender: TField);
begin
  inherited;
  FChangingWorkAccountField.TempEnter/
    procedure begin
      cdsGridDataSINGLE_PRICE.AsVarFloat:= Sender.AsFloat * cdsGridDataACCOUNT_MEASURE_COEF.AsFloat;
    end;
end;

end.
