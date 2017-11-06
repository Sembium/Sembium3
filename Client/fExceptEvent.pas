unit fExceptEvent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields,
  AbmesDBCheckBox, fTimeFieldEditFrame, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateFieldEditFrame, Mask, DBCtrls, JvExControls, JvComponent, JvDBLookup,
  fDeptFieldEditFrame, fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fTreeOnlyNodeFieldEditFrame, ComCtrls, ToolWin,
  dDocClient, uClientTypes, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, fDeptFieldEditFrameBald, fDateIntervalFrame,
  fProductFieldEditFrameBald, fProductFieldEditFrameLabeled,
  fProcessConcreteOperationFieldEditFrame, uUtils, uExceptEventClientUtils, fExceptEventTypeFieldEditFrame,
  fExceptEventTypeFieldEditFrameBald, System.Actions;

type
  TfmExceptEvent = class(TEditForm)
    cdsDataEXCEPT_EVENT_CODE: TAbmesFloatField;
    cdsDataEXCEPT_EVENT_NO: TAbmesFloatField;
    cdsDataEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsDataEXCEPT_EVENT_GEN_TYPE_CODE: TAbmesFloatField;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataDEPT_CODE: TAbmesFloatField;
    cdsDataDESCRIPTION: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataDETECT_DEPT_CODE: TAbmesFloatField;
    cdsDataDETECT_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataDETECT_DATE: TAbmesSQLTimeStampField;
    cdsDataDETECT_TIME: TAbmesSQLTimeStampField;
    cdsDataCTRL_DEPT_CODE: TAbmesFloatField;
    cdsDataCTRL_ACCEPT_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCTRL_ACCEPT_DATE: TAbmesSQLTimeStampField;
    cdsDataCTRL_ACCEPT_TIME: TAbmesSQLTimeStampField;
    cdsDataCTRL_MAIN_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCTRL_ACTIVATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCTRL_ACTIVATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCTRL_ACTIVATE_TIME: TAbmesSQLTimeStampField;
    cdsDataDMG_RESOLVE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataDMG_RESOLVE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataDMG_RESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsDataDMG_RESOLVE_DATE: TAbmesSQLTimeStampField;
    cdsDataDMG_RESOLVE_TIME: TAbmesSQLTimeStampField;
    cdsDataRESOLVE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataRESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsDataRESOLVE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataRESOLVE_DATE: TAbmesSQLTimeStampField;
    cdsDataRESOLVE_TIME: TAbmesSQLTimeStampField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCLOSE_DATE: TAbmesSQLTimeStampField;
    cdsDataCLOSE_TIME: TAbmesSQLTimeStampField;
    cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsDataOM_BRANCH_CODE: TAbmesFloatField;
    cdsDataOM_CODE: TAbmesFloatField;
    gbExceptEventIdentification: TGroupBox;
    lblExceptEventState: TLabel;
    edtState: TDBEdit;
    edtExceptEventNo: TDBEdit;
    lblExceptEventNo: TLabel;
    frExceptEventCreateDate: TfrDateFieldEditFrame;
    lblExceptEventCreateDate: TLabel;
    frExceptEventCreateTime: TfrTimeFieldEditFrame;
    lblExceptEventCreateTime: TLabel;
    lblExceptEventType: TLabel;
    cdsDataSTATE_CODE: TAbmesFloatField;
    actDoc: TAction;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    gbDetection: TGroupBox;
    frDetectDept: TfrDeptFieldEditFrameBald;
    lblDetectDept: TLabel;
    frDetectEmployee: TfrEmployeeFieldEditFrameBald;
    lblDetectEmployee: TLabel;
    gbExceptEventControl: TGroupBox;
    pnlExceptEventControlState: TPanel;
    frCtrlDept: TfrDeptFieldEditFrameBald;
    lblCtrlDept: TLabel;
    lblCtrlAcceptEmployee: TLabel;
    lblCtrlMainEmployee: TLabel;
    actCtrlAccept: TAction;
    actCtrlActivate: TAction;
    actDamageResolve: TAction;
    actResolve: TAction;
    pnlAnnulExceptEvent: TPanel;
    btnAnnulExceptEvent: TBitBtn;
    actAnnulExceptEvent: TAction;
    cdsDataDMG_RESOLVE_REAL_WORKDAYS: TAbmesFloatField;
    cdsDataRESOLVE_REAL_WORKDAYS: TAbmesFloatField;
    cdsData_DMG_RESOLVE_WORKDAYS_LEFT: TAbmesFloatField;
    cdsData_RESOLVE_WORKDAYS_LEFT: TAbmesFloatField;
    pnlCtrlAccept: TPanel;
    pnlCtrlAcceptButton: TPanel;
    btnCtrlAccept: TBitBtn;
    pnlCtrlAcceptEmployee: TPanel;
    frCtrlAcceptEmployee: TfrEmployeeFieldEditFrameBald;
    pnlCtrlActivate: TPanel;
    pnlCtrlActivateButton: TPanel;
    btnCtrlActivate: TBitBtn;
    pnlCtrlActivateEmployee: TPanel;
    frCtrlMainEmployee: TfrEmployeeFieldEditFrameBald;
    lblLevel: TLabel;
    cdsDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataDCD_OBJECT_CODE: TAbmesFloatField;
    cdsDataDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsDataPRODUCT_QUANTITY: TAbmesFloatField;
    cdsExceptEventLevels: TAbmesClientDataSet;
    cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField;
    cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_NO: TAbmesFloatField;
    cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_NAME: TAbmesWideStringField;
    cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_ABBREV: TAbmesWideStringField;
    cbExceptEventLevel: TJvDBLookupCombo;
    cdsDataEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField;
    cdsData_EXCEPT_EVENT_LEVEL_NAME: TAbmesWideStringField;
    cdsDataHAS_CAUSES: TAbmesFloatField;
    cdsDataHAS_CONSEQUENCES: TAbmesFloatField;
    gbExceptEventData: TGroupBox;
    gbProduct: TGroupBox;
    frProduct: TfrProductFieldEditFrameBald;
    edtProductQuantity: TDBEdit;
    frDept: TfrDeptFieldEditFrame;
    gbExceptEventDescription: TGroupBox;
    edtDescription: TDBEdit;
    pnlDoc: TPanel;
    tlbDoc: TToolBar;
    btnDoc: TToolButton;
    edtExceptEventGeneratorType: TDBEdit;
    lblExceptEventGeneratorType: TLabel;
    lblMeasureAbbrev: TDBText;
    cdsExceptEventGenTypes: TAbmesClientDataSet;
    cdsExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_CODE: TAbmesFloatField;
    cdsExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_NO: TAbmesFloatField;
    cdsExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_NAME: TAbmesWideStringField;
    cdsExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_ABBREV: TAbmesWideStringField;
    cdsExceptEventGenTypes_EE_GEN_TYPE_DISPLAY_NAME: TAbmesWideStringField;
    cdsData_EE_GEN_TYPE_DISPLAY_NAME: TAbmesWideStringField;
    cdsDataPRODUCT_MEASURE_CODE: TAbmesFloatField;
    cdsMeasures: TAbmesClientDataSet;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    cdsData_PRODUCT_MEASURE_ABBREV: TAbmesWideStringField;
    gbExceptEventDamages: TGroupBox;
    lblDamageResolvePlanInterval: TLabel;
    lblDamageResolveRealWorkdays: TLabel;
    lblDamageResolveWorkdaysLeft: TLabel;
    lblDamageResolveWorkdays: TLabel;
    lblDamageResolveDate: TLabel;
    lblDamageResolveEmployee: TLabel;
    frDamageResolvePlanInterval: TfrDateIntervalFrame;
    edtDamageResolveRealWorkdays: TDBEdit;
    edtDamageResolveWorkdaysLeft: TDBEdit;
    frDamageResolveDate: TfrDateFieldEditFrame;
    pnlDamageResolve: TPanel;
    pnlDamageResolveButton: TPanel;
    btnDamageResolve: TBitBtn;
    pnlDamageResolveEmployee: TPanel;
    frDamageResolveEmployee: TfrEmployeeFieldEditFrameBald;
    pnlExceptEventDamagesState: TPanel;
    gbExceptEventTasks: TGroupBox;
    lblResolvePlanInterval: TLabel;
    lblResolveRealWorkdays: TLabel;
    lblResolveWorkdaysLeft: TLabel;
    lblResolveWorkdays: TLabel;
    lblResolveDate: TLabel;
    lblResolveEmployee: TLabel;
    frResolvePlanInterval: TfrDateIntervalFrame;
    edtResolveRealWorkdays: TDBEdit;
    edtResolveWorkdaysLeft: TDBEdit;
    frResolveDate: TfrDateFieldEditFrame;
    pnlResolve: TPanel;
    pnlResolveButton: TPanel;
    btnResolve: TBitBtn;
    pnlResolveEmployee: TPanel;
    frResolveEmployee: TfrEmployeeFieldEditFrameBald;
    pnlExceptEventTasksState: TPanel;
    pnlOMGenerator: TPanel;
    lblOMGeneratorSaleID: TLabel;
    edtOMGeneratorSaleID: TDBEdit;
    lblOMGeneratorOperationMovementID: TLabel;
    edtOMGeneratorOperationMovementID: TDBEdit;
    cdsGeneratorData: TAbmesClientDataSet;
    cdsGeneratorDataOM_BRANCH_CODE: TAbmesFloatField;
    cdsGeneratorDataOM_CODE: TAbmesFloatField;
    cdsGeneratorDataOM_SALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGeneratorDataOM_SALE_OBJECT_CODE: TAbmesFloatField;
    cdsGeneratorDataOM_SALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsGeneratorDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGeneratorDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsGeneratorDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGeneratorDataDCD_OBJECT_CODE: TAbmesFloatField;
    cdsGeneratorDataDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsGeneratorDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsGeneratorDataOM_IDENTIFIER: TAbmesWideStringField;
    dsGeneratorData: TDataSource;
    actShowOM: TAction;
    actShowOMSale: TAction;
    cdsOMSale: TAbmesClientDataSet;
    cdsOMSaleSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsOMSaleSALE_OBJECT_CODE: TAbmesFloatField;
    pnlSaleGenerator: TPanel;
    edtSaleGeneratorSaleID: TDBEdit;
    lblSaleGeneratorSaleID: TLabel;
    pnlDeliveryGenerator: TPanel;
    lblDeliveryGeneratorDeliveryID: TLabel;
    edtDeliveryGeneratorDeliveryID: TDBEdit;
    actShowSale: TAction;
    actShowDelivery: TAction;
    pnlCloseExceptEvent: TPanel;
    btnCloseExceptEvent: TBitBtn;
    actCloseExceptEvent: TAction;
    gbOrganisationTaskProposal: TGroupBox;
    gbOrgTaskProposalID: TGroupBox;
    lblOrgTaskProposalState: TLabel;
    lblOrgTaskProposalNo: TLabel;
    lblOrgTaskProposalCycleNo: TLabel;
    edtOrgTaskProposalState: TDBEdit;
    edtOrgTaskProposalCycleNo: TDBEdit;
    edtOrgTaskProposalNo: TDBEdit;
    pnlDetachOrgTaskProposal: TPanel;
    btnDetachOrgTaskProposal: TSpeedButton;
    frOrgTaskProposalProduct: TfrProductFieldEditFrameLabeled;
    gbOrgTaskProposalBindDate: TGroupBox;
    frOrgTaskProposalBindDate: TfrDateFieldEditFrame;
    cdsOrgTaskProposal: TAbmesClientDataSet;
    cdsOrgTaskProposalORG_TASK_PROPOSAL_CODE: TAbmesFloatField;
    cdsOrgTaskProposalOTP_STATE_CODE: TAbmesFloatField;
    cdsOrgTaskProposalORG_TASK_PROPOSAL_NO: TAbmesFloatField;
    cdsOrgTaskProposalORG_TASK_PROPOSAL_CYCLE_NO: TAbmesFloatField;
    cdsOrgTaskProposalPRODUCT_CODE: TAbmesFloatField;
    dsOrgTaskProposal: TDataSource;
    pnlOrgTaskProposal: TPanel;
    btnOrgTaskProposal: TBitBtn;
    actShowOrgTaskProposal: TAction;
    actDetachOrgTaskProposal: TAction;
    cdsDataORG_TASK_PROPOSAL_CODE: TAbmesFloatField;
    cdsDataOTP_BIND_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataOTP_BIND_DATE: TAbmesSQLTimeStampField;
    cdsDataOTP_BIND_TIME: TAbmesSQLTimeStampField;
    cdsGeneratorDataREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsGeneratorDataREQUEST_NO: TAbmesFloatField;
    pnlOMGeneratorOperationMovement: TPanel;
    btnOMGeneratorOperationMovement: TSpeedButton;
    pnlOMGeneratorSale: TPanel;
    btnOMGeneratorSale: TSpeedButton;
    pnlSaleGeneratorSale: TPanel;
    btnSaleGeneratorSale: TSpeedButton;
    pnlDeliveryGeneratorButtons: TPanel;
    btnShowDelivery: TSpeedButton;
    actShowCauseExceptEvents: TAction;
    actShowCausedExceptEvents: TAction;
    btnCauseExceptEvents: TBitBtn;
    btnCausedExceptEvents: TBitBtn;
    cdsExceptEventsParams: TAbmesClientDataSet;
    cdsExceptEventsParamsMAX_STATE_CODE: TAbmesFloatField;
    cdsExceptEventsParamsCAUSE_EXCEPT_EVENT_NO: TAbmesFloatField;
    cdsExceptEventsParamsCAUSED_EXCEPT_EVENT_NO: TAbmesFloatField;
    cdsGeneratorDataGENERATOR_PRODUCT_QUANTITY: TAbmesFloatField;
    cdsDataPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    frProcessConcreteOperation: TfrProcessConcreteOperationFieldEditFrame;
    cdsExceptEventsParamsEXCEPT_EVENT_IS_CAUSE: TAbmesFloatField;
    cdsExceptEventsParamsEXCEPT_EVENT_IS_CAUSED: TAbmesFloatField;
    frExceptEventType: TfrExceptEventTypeFieldEditFrameBald;
    lblCreateEmployee: TLabel;
    frCreateEmployee: TfrEmployeeFieldEditFrameBald;
    btnClearDeliveryGenerator: TSpeedButton;
    actClearDeliveryGenerator: TAction;
    btnChooseDelivery: TSpeedButton;
    actChooseDelivery: TAction;
    cdsDeliveryId: TAbmesClientDataSet;
    cdsDeliveryIdDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsDeliveryIdDCD_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveryIdDCD_CODE: TAbmesFloatField;
    cdsChosenDelivery: TAbmesClientDataSet;
    cdsChosenDeliveryDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsChosenDeliveryDCD_OBJECT_CODE: TAbmesFloatField;
    cdsChosenDeliveryDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsDataIS_SINGLE_RESOLVABLE: TAbmesFloatField;
    chkIsSingleResolvable: TAbmesDBCheckBox;
    lblIsSingleResolvable: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
    procedure actDocExecute(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actAnnulExceptEventExecute(Sender: TObject);
    procedure cdsDataSTATE_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure actCtrlAcceptUpdate(Sender: TObject);
    procedure actCtrlAcceptExecute(Sender: TObject);
    procedure actCtrlActivateUpdate(Sender: TObject);
    procedure actCtrlActivateExecute(Sender: TObject);
    procedure actDamageResolveUpdate(Sender: TObject);
    procedure actDamageResolveExecute(Sender: TObject);
    procedure actResolveUpdate(Sender: TObject);
    procedure actResolveExecute(Sender: TObject);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure cdsExceptEventGenTypesCalcFields(DataSet: TDataSet);
    procedure cdsDataPRODUCT_CODEChange(Sender: TField);
    procedure cdsGeneratorDataBeforeOpen(DataSet: TDataSet);
    procedure actShowOMUpdate(Sender: TObject);
    procedure actShowOMSaleUpdate(Sender: TObject);
    procedure actShowOMExecute(Sender: TObject);
    procedure actShowOMSaleExecute(Sender: TObject);
    procedure actShowSaleUpdate(Sender: TObject);
    procedure actShowSaleExecute(Sender: TObject);
    procedure actShowDeliveryUpdate(Sender: TObject);
    procedure actShowDeliveryExecute(Sender: TObject);
    procedure cdsDataEXCEPT_EVENT_LEVEL_CODEChange(Sender: TField);
    procedure actCloseExceptEventExecute(Sender: TObject);
    procedure cdsOrgTaskProposalORG_TASK_PROPOSAL_NOChange(Sender: TField);
    procedure cdsOrgTaskProposalBeforeOpen(DataSet: TDataSet);
    procedure cdsOrgTaskProposalOTP_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actShowOrgTaskProposalUpdate(Sender: TObject);
    procedure actShowOrgTaskProposalExecute(Sender: TObject);
    procedure actDetachOrgTaskProposalUpdate(Sender: TObject);
    procedure actDetachOrgTaskProposalExecute(Sender: TObject);
    procedure cdsDataORG_TASK_PROPOSAL_CODEChange(Sender: TField);
    procedure actCloseExceptEventUpdate(Sender: TObject);
    procedure actShowCausedExceptEventsUpdate(Sender: TObject);
    procedure actShowCauseExceptEventsUpdate(Sender: TObject);
    procedure actShowCauseExceptEventsExecute(Sender: TObject);
    procedure actShowCausedExceptEventsExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actClearDeliveryGeneratorUpdate(Sender: TObject);
    procedure actClearDeliveryGeneratorExecute(Sender: TObject);
    procedure actChooseDeliveryUpdate(Sender: TObject);
    procedure actChooseDeliveryExecute(Sender: TObject);
    procedure cdsDeliveryIdBeforePost(DataSet: TDataSet);
  private
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FExceptEventGenTypeForInsert: TExceptEventGenType;
    FSavedIsMinimal: Boolean;
    FSavedFormClientHeight: Integer;
    FChangingExceptEventLevel: Boolean;
    FPrevExceptEventLevel: TExceptEventLevel;
    function CanModifyData: Boolean;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    function CanControlExceptEvent: Boolean;
    procedure CheckUserCanControlExceptEvent;
    function ExceptEventGenTypeForInsert: TExceptEventGenType;
    procedure DoEmployeeDateTimeAction(AEmployeeField, ADateField, ATimeField: TField; AConfirmMessage: string = '');
    function IsWithoutGenerator: Boolean;
    procedure ResizeFormIfNeeded;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoApplyUpdates; override;
  public
    procedure Finalize; override;
    procedure Initialize; override;
    class function CanEditOuterDataSet: Boolean; override;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone); override;
    procedure SetDataParamsForInsert(
      AExceptEventGenType: TExceptEventGenType;
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      ADefaultsOrigin: TDefaultsOrigin = doNone); virtual;
    class function ShowFormForInsert(
      AExceptEventGenType: TExceptEventGenType;
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      ADefaultsOrigin: TDefaultsOrigin = doNone): Boolean;
  end;

implementation

uses
  uClientUtils, uDocUtils, dMain, DateUtils, AbmesDialogs, uClientConsts,
  Math, uUserActivityConsts, fTreeSelectForm, uTreeClientUtils,
  fOperationMovement, fProductionOrder, fSale, uSaleOrderTypes, fSaleOrder,
  uProducts, fDelivery, uOrganisationTaskClientUtils, fOrganisationTaskProposal,
  fExceptEvents, uClientDateTime, fChooseDelivery, uScalingUtils;

resourcestring
  SConfirmCtrlAccept = 'Потвърдете Прихващането на Недопустимо Отклонение';
  SConfirmCtrlActivate = 'Потвърдете Активирането';
  SOnlyCtrlMainEmployeeCanActivate = 'Активирането може стане само от Главния Отговорник';
  SConfirmDamageResolve = 'Потвърдете Овладяване на Верижни Поражения';
  SConfirmResolve = 'Потвърдете Преустановено Действие на Недопустимо Отклонение';
  SExceptEventMinamlityHoursHasPassed = 'Не може да се отбележи Недопустимо Отклонение като Минимално когато са изтекли часовете за Минималност';
  SConfirmSettingLevel = 'При задаване на този обхват данните от секцията %s ще бъдат изтрити.' + sLineBreak +
                         'Потвърдете задаването на обхват "%s"';
  STheExceptEvent = 'Недопустимото Отклонение';
  SProductQuantityMustBeNull = 'Не може да бъде зададено количество, когато не е избран УОб';
  SCannotAnnulExceptEventWithOTP = 'Не може да бъде анулирано Недопустимо Отклонение, което е свързано с Проект';
  SExceptEventMustBeClosed = 'Недопустимото Отклонение трябва да бъде приключено';
  SIncorrectQuantity = 'Количеството не може да бъде по-голямо от количеството в %s (%s)';
  SGeneratorIdOperationMovement = 'Движение към Блокиране';
  SGeneratorIdSale = 'ID ОДК';
  SGeneratorIdDelivery = 'ID ОДД';
  SDeliveryNotFound = 'Не е намерен ОДД по Обратен Поток с такава идентификация';
  SProductIsDifferentFromDeliveryProduct = 'УОб на Недопустимо Отклонение се различава от УОб на ОДД';

const
  DefaultExceptEventLevel: TExceptEventLevel = eelNormal;

{$R *.dfm}

{ TfmExceptEvent }

procedure TfmExceptEvent.SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin);
begin
  Assert(AEditMode <> emInsert);
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
end;

procedure TfmExceptEvent.SetDataParamsForInsert(AExceptEventGenType: TExceptEventGenType;
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; ADefaultsOrigin: TDefaultsOrigin);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, emInsert, ADefaultsOrigin);
  FExceptEventGenTypeForInsert:= AExceptEventGenType;
end;

class function TfmExceptEvent.ShowFormForInsert(AExceptEventGenType: TExceptEventGenType;
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; ADefaultsOrigin: TDefaultsOrigin): Boolean;
var
  f: TfmExceptEvent;
begin
  f:= CreateEx;
  try
    f.SetDataParamsForInsert(AExceptEventGenType, AdmDocClient, ADataSet, ADefaultsOrigin);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

class function TfmExceptEvent.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmExceptEvent.OpenDataSets;
begin
  cdsMeasures.Open;
  cdsExceptEventGenTypes.Open;
  inherited OpenDataSets;
  cdsGeneratorData.Open;
  cdsOrgTaskProposal.Open;
end;

procedure TfmExceptEvent.CloseDataSets;
begin
  cdsOrgTaskProposal.Close;
  cdsGeneratorData.Close;
  inherited CloseDataSets;
  cdsExceptEventGenTypes.Close;
  cdsMeasures.Close;
end;

function TfmExceptEvent.CanControlExceptEvent: Boolean;
begin
  Result:=
    ( LoginContext.HasUserActivity(uaExceptEventsControl) or
      ( LoginContext.HasUserActivity(uaExceptEventsControlDeptRequired) and
        LoginContext.HasUserWorkDept(cdsDataCTRL_DEPT_CODE.AsInteger)
      )
    );
end;

procedure TfmExceptEvent.CheckUserCanControlExceptEvent;
begin
  if not LoginContext.HasUserActivity(uaExceptEventsControl) then
    begin
      LoginContext.CheckUserActivity(uaExceptEventsControlDeptRequired);
      LoginContext.CheckUserWorkDept(cdsDataCTRL_DEPT_CODE.AsInteger);
    end;  { if }
end;

procedure TfmExceptEvent.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frExceptEventCreateDate) or
     (AFrame = frExceptEventCreateTime) or
     (AFrame = frCtrlAcceptEmployee) or
     (AFrame = frDamageResolveDate) or
     (AFrame = frDamageResolveEmployee) or
     (AFrame = frResolveDate) or
     (AFrame = frResolveEmployee) or
     (AFrame = frOrgTaskProposalProduct) or
     (AFrame = frOrgTaskProposalBindDate) or
     (AFrame = frCreateEmployee) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  if (AFrame = frProduct) then
    begin
      AFrame.ReadOnly:= not (CanModifyData and IsWithoutGenerator);
      Exit;
    end;  { if }

  if (AFrame = frDamageResolvePlanInterval) then
    begin
      AFrame.ReadOnly:=
        not CanModifyData or
        cdsDataCTRL_ACTIVATE_EMPLOYEE_CODE.IsNull or
        not cdsDataDMG_RESOLVE_EMPLOYEE_CODE.IsNull or
        not CanControlExceptEvent;

      Exit;
    end;  { if }

  if (AFrame = frResolvePlanInterval) then
    begin
      AFrame.ReadOnly:=
        not CanModifyData or
        cdsDataCTRL_ACTIVATE_EMPLOYEE_CODE.IsNull or
        not cdsDataRESOLVE_EMPLOYEE_CODE.IsNull or
        not CanControlExceptEvent;

      Exit;
    end;  { if }

  if (AFrame = frCtrlMainEmployee) then
    begin
      AFrame.ReadOnly:=
        not CanModifyData or
        cdsDataCTRL_ACCEPT_EMPLOYEE_CODE.IsNull or
        not cdsDataCTRL_ACTIVATE_EMPLOYEE_CODE.IsNull;

      Exit;
    end;  { if }

  if (AFrame = frDetectDept) then
    begin
      AFrame.ReadOnly:= not (CanModifyData and cdsDataOM_BRANCH_CODE.IsNull);
      Exit;
    end;  { if }

  if (AFrame = frProcessConcreteOperation) or
     (AFrame = frDept) or
     (AFrame = frDetectEmployee) or
     (AFrame = frExceptEventType) then
    begin
      AFrame.ReadOnly:= not CanModifyData;
      Exit;
    end;  { if }

  if (AFrame = frCtrlDept) then
    begin
      AFrame.ReadOnly:=
        not CanModifyData or
        (IntToExceptEventLevel(cdsDataEXCEPT_EVENT_LEVEL_CODE.AsInteger) = eelInformative);

      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

function TfmExceptEvent.CanModifyData: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    cdsData.Active and
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

procedure TfmExceptEvent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (cdsOrgTaskProposal.State in dsEditModes) and (ModalResult = mrOk) then
    cdsOrgTaskProposal.UpdateRecord;

  inherited;
end;

function TfmExceptEvent.IsWithoutGenerator: Boolean;
begin
  Result:=
    cdsDataOM_BRANCH_CODE.IsNull and
    cdsDataSALE_OBJECT_BRANCH_CODE.IsNull and
    cdsDataDCD_OBJECT_BRANCH_CODE.IsNull;
end;

procedure TfmExceptEvent.FormCreate(Sender: TObject);
begin
  inherited;
  frExceptEventCreateDate.FieldNames:= 'CREATE_DATE';
  frExceptEventCreateTime.FieldNames:= 'CREATE_TIME';
  frProduct.TreeDetailSelection:= tdsInstance;
  frProcessConcreteOperation.TreeDetailSelection:= tdsAll;
  frDetectDept.FieldNames:= 'DETECT_DEPT_CODE';
  frDetectEmployee.FieldNames:= 'DETECT_EMPLOYEE_CODE';
  frCtrlDept.FieldNames:= 'CTRL_DEPT_CODE';
  frCtrlAcceptEmployee.FieldNames:= 'CTRL_ACCEPT_EMPLOYEE_CODE';
  frCtrlMainEmployee.FieldNames:= 'CTRL_MAIN_EMPLOYEE_CODE';
  frCtrlMainEmployee.SpecialProffesionEmployee:= speEECtrlMainEmployee;
  frDamageResolvePlanInterval.FieldNames:= 'DMG_RESOLVE_PLAN_BEGIN_DATE; DMG_RESOLVE_PLAN_END_DATE';
  frDamageResolveDate.FieldNames:= 'DMG_RESOLVE_DATE';
  frDamageResolveEmployee.FieldNames:= 'DMG_RESOLVE_EMPLOYEE_CODE';
  frDamageResolveEmployee.DocButtonVisible:= False;
  frResolvePlanInterval.FieldNames:= 'RESOLVE_PLAN_BEGIN_DATE; RESOLVE_PLAN_END_DATE';
  frResolveDate.FieldNames:= 'RESOLVE_DATE';
  frResolveEmployee.FieldNames:= 'RESOLVE_EMPLOYEE_CODE';
  frResolveEmployee.DocButtonVisible:= False;
  frOrgTaskProposalProduct.FieldNames:= 'PRODUCT_CODE';
  frOrgTaskProposalProduct.SetDataSet(cdsOrgTaskProposal);
  frOrgTaskProposalBindDate.FieldNames:= 'OTP_BIND_DATE';
  frExceptEventType.TreeDetailSelection:= tdsInstance;
  frCreateEmployee.FieldNames:= 'CREATE_EMPLOYEE_CODE';
  frCreateEmployee.DocButtonVisible:= False;
end;

procedure TfmExceptEvent.FormShow(Sender: TObject);
begin
  inherited;
  FSavedFormClientHeight:= ClientHeight;
  ResizeFormIfNeeded;
end;

procedure TfmExceptEvent.actFormUpdate(Sender: TObject);
var
  ReadOnly: Boolean;
  ReadOnlyColor: TColor;
  CreateDateTime: TDateTime;
  OTPReadOnly: Boolean;

  function GetStateColor(ABadCondition, AMiddleCondition: Boolean): TColor;
  begin
    if ABadCondition then
      Result:= clRed
    else
      if AMiddleCondition then
        Result:= clYellow
      else
        Result:= clLime;
  end;

begin
  inherited;
  ReadOnly:= not CanModifyData;
  ReadOnlyColor:= ReadOnlyColors[ReadOnly];

  edtDescription.ReadOnly:= ReadOnly;
  edtDescription.Color:= ReadOnlyColor;

  edtProductQuantity.ReadOnly:= ReadOnly;
  edtProductQuantity.Color:= ReadOnlyColors[ReadOnly];

  pnlCloseExceptEvent.Visible:=
    cdsData.Active and
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    (EditMode = emEdit);

  pnlAnnulExceptEvent.Visible:=
    cdsData.Active and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    (EditMode = emEdit);

  pnlCtrlAcceptButton.Visible:=
    cdsData.Active and
    cdsDataCTRL_ACCEPT_EMPLOYEE_CODE.IsNull;

  pnlCtrlActivateButton.Visible:=
    cdsData.Active and
    cdsDataCTRL_ACTIVATE_EMPLOYEE_CODE.IsNull;

  pnlDamageResolveButton.Visible:=
    cdsData.Active and
    cdsDataDMG_RESOLVE_EMPLOYEE_CODE.IsNull;

  pnlResolveButton.Visible:=
    cdsData.Active and
    cdsDataRESOLVE_EMPLOYEE_CODE.IsNull;

  pnlExceptEventControlState.Color:=
    GetStateColor(cdsDataCTRL_ACCEPT_EMPLOYEE_CODE.IsNull, cdsDataCTRL_ACTIVATE_EMPLOYEE_CODE.IsNull);

  pnlExceptEventDamagesState.Color:=
    GetStateColor(
      cdsDataDMG_RESOLVE_PLAN_BEGIN_DATE.IsNull or cdsDataDMG_RESOLVE_PLAN_END_DATE.IsNull,
      cdsDataDMG_RESOLVE_EMPLOYEE_CODE.IsNull);

  pnlExceptEventTasksState.Color:=
    GetStateColor(
      cdsDataRESOLVE_PLAN_BEGIN_DATE.IsNull or cdsDataRESOLVE_PLAN_END_DATE.IsNull,
      cdsDataRESOLVE_EMPLOYEE_CODE.IsNull);

  CreateDateTime:= cdsDataCREATE_DATE.AsDateTime + cdsDataCREATE_TIME.AsDateTime;

  cbExceptEventLevel.ReadOnly:= ReadOnly;

  if (IntToExceptEventLevel(cdsDataEXCEPT_EVENT_LEVEL_CODE.AsInteger) = eelMinimal) and
     (HoursBetween(ContextNow, CreateDateTime) >= LoginContext.MinimalExceptEventHours) then
    cbExceptEventLevel.Color:= ExceptEventsWarningColor
  else
    cbExceptEventLevel.Color:= ReadOnlyColor;

  pnlOMGenerator.Visible:= not cdsDataOM_BRANCH_CODE.IsNull;
  pnlSaleGenerator.Visible:= not cdsDataSALE_OBJECT_BRANCH_CODE.IsNull;
  pnlDeliveryGenerator.Visible:= (IntToExceptEventGenType(cdsDataEXCEPT_EVENT_GEN_TYPE_CODE.AsInteger) = eegtDeliveries);
  btnShowDelivery.Visible:= not cdsDataDCD_OBJECT_BRANCH_CODE.IsNull;
  btnChooseDelivery.Visible:= cdsDataDCD_OBJECT_BRANCH_CODE.IsNull;

  pnlDetachOrgTaskProposal.Visible:= CanModifyData;

  OTPReadOnly:= not (CanModifyData and LoginContext.HasUserActivity(uaExceptEventsEditOTP));
  edtOrgTaskProposalNo.ReadOnly:= OTPReadOnly;
  edtOrgTaskProposalNo.Color:= ReadOnlyColors[OTPReadOnly];

  SetControlReadOnly(not CanModifyData or cdsDataCTRL_ACTIVATE_EMPLOYEE_CODE.IsNull, chkIsSingleResolvable);

  ResizeFormIfNeeded;
end;

procedure TfmExceptEvent.ResizeFormIfNeeded;
const
  NotScaledVerticalSpacePixelsCount = 8;

  function VerticalSpacePixelsCount: Integer;
  begin
    Result:= ScalePixels(NotScaledVerticalSpacePixelsCount);
  end;

var
  IsInformative: Boolean;
  OldClientHeight: Integer;
begin
  IsInformative:= (IntToExceptEventLevel(cdsDataEXCEPT_EVENT_LEVEL_CODE.AsInteger) = eelInformative);
  pnlExceptEventControlState.Visible:= not IsInformative;
  gbExceptEventControl.Visible:= not IsInformative;

  OldClientHeight:= ClientHeight;
  ClientHeight:= FSavedFormClientHeight - IfThen(IsInformative, gbExceptEventControl.Height + VerticalSpacePixelsCount);
  if (OldClientHeight <> ClientHeight) then
    Top:= (Screen.Height - Height) div 2;
end;

procedure TfmExceptEvent.actDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsDataHAS_DOC_ITEMS.AsBoolean);
end;

procedure TfmExceptEvent.actDocExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if not CanModifyData then
    em:= emReadOnly
  else
    em:= EditMode;

  dmDocClient.DSOpenDoc(
    em,
    ((Sender as TAction).ActionComponent as TControl),
    dotExceptEvent,
    cdsData);
end;

procedure TfmExceptEvent.Initialize;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotExceptEvent, dsData.DataSet);
end;

procedure TfmExceptEvent.Finalize;
begin
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  inherited;
end;

procedure TfmExceptEvent.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(dsData.DataSet.FieldByName('HAS_DOC_ITEMS'));
end;

procedure TfmExceptEvent.DoApplyUpdates;
var
  CreateDateTime: TDateTime;
begin
  CreateDateTime:= cdsDataCREATE_DATE.AsDateTime + cdsDataCREATE_TIME.AsDateTime;

  if not FSavedIsMinimal and
     (IntToExceptEventLevel(cdsDataEXCEPT_EVENT_LEVEL_CODE.AsInteger) = eelMinimal) and
     (HoursBetween(ContextNow, CreateDateTime) >= LoginContext.MinimalExceptEventHours) then
    begin
      raise Exception.Create(SExceptEventMinamlityHoursHasPassed);
    end;  { if }

  if not cdsDataRESOLVE_EMPLOYEE_CODE.IsNull and
     not cdsDataDMG_RESOLVE_EMPLOYEE_CODE.IsNull and
     cdsDataCLOSE_EMPLOYEE_CODE.IsNull then
    begin
      raise Exception.Create(SExceptEventMustBeClosed);
    end;  { if }

  inherited;
end;

function TfmExceptEvent.ExceptEventGenTypeForInsert: TExceptEventGenType;
begin
  Assert(EditMode = emInsert);
  Result:= FExceptEventGenTypeForInsert;
end;

procedure TfmExceptEvent.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if (EditMode = emInsert) then
    begin
      FSavedIsMinimal:= (DefaultExceptEventLevel = eelMinimal);
      FPrevExceptEventLevel:= DefaultExceptEventLevel;
    end
  else
    begin
      FSavedIsMinimal:= (IntToExceptEventLevel(cdsDataEXCEPT_EVENT_LEVEL_CODE.AsInteger) = eelMinimal);
      FPrevExceptEventLevel:= IntToExceptEventLevel(cdsDataEXCEPT_EVENT_LEVEL_CODE.AsInteger);
    end;
end;

procedure TfmExceptEvent.cdsDataBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmExceptEvent.cdsDataBeforePost(DataSet: TDataSet);

const
  GeneratorIdentifiers: array[TExceptEventGenType] of string = (
    SGeneratorIdOperationMovement,
    SGeneratorIdSale,
    SGeneratorIdOperationMovement,
    SGeneratorIdDelivery,
    ''
  );

begin
  inherited;
  if not cdsDataPRODUCT_CODE.IsNull then
     CheckRequiredField(cdsDataPRODUCT_QUANTITY);

  if not cdsDataPRODUCT_QUANTITY.IsNull and
     not cdsGeneratorDataGENERATOR_PRODUCT_QUANTITY.IsNull and
     (LargeZero(cdsDataPRODUCT_QUANTITY.AsFloat - cdsGeneratorDataGENERATOR_PRODUCT_QUANTITY.AsFloat) > 0) then
    begin
      raise Exception.CreateFmt(
        SIncorrectQuantity,
        [ GeneratorIdentifiers[IntToExceptEventGenType(cdsDataEXCEPT_EVENT_GEN_TYPE_CODE.AsInteger)],
          cdsGeneratorDataGENERATOR_PRODUCT_QUANTITY.Text
        ]
      );
    end;  { if }

  if cdsDataPRODUCT_CODE.IsNull and not cdsDataPRODUCT_QUANTITY.IsNull then
    raise Exception.Create(SProductQuantityMustBeNull);

  if (IntToExceptEventLevel(cdsDataEXCEPT_EVENT_LEVEL_CODE.AsInteger) <> eelInformative) then
    CheckRequiredField(cdsDataCTRL_DEPT_CODE);

  if not cdsDataDMG_RESOLVE_PLAN_BEGIN_DATE.IsNull then
    CheckRequiredField(cdsDataDMG_RESOLVE_PLAN_END_DATE);

  if not cdsDataDMG_RESOLVE_PLAN_END_DATE.IsNull then
    CheckRequiredField(cdsDataDMG_RESOLVE_PLAN_BEGIN_DATE);

  if not cdsDataRESOLVE_PLAN_BEGIN_DATE.IsNull then
    CheckRequiredField(cdsDataRESOLVE_PLAN_END_DATE);

  if not cdsDataRESOLVE_PLAN_END_DATE.IsNull then
    CheckRequiredField(cdsDataRESOLVE_PLAN_BEGIN_DATE);
end;

procedure TfmExceptEvent.DoEmployeeDateTimeAction(AEmployeeField, ADateField, ATimeField: TField; AConfirmMessage: string);
var
  CurrentDateTime: TDateTime;
begin
  Assert(AllAssigned([AEmployeeField, ADateField, ATimeField]));

  if (AConfirmMessage <> '') then
    ConfirmAction(AConfirmMessage);

  CheckEditMode(cdsData);

  CurrentDateTime:= ContextNow;
  AEmployeeField.AsInteger:= LoginContext.UserCode;
  ADateField.AsDateTime:= DateOf(CurrentDateTime);
  ATimeField.AsDateTime:= TimeOf(CurrentDateTime);
end;

procedure TfmExceptEvent.cdsDataNewRecord(DataSet: TDataSet);
var
  ProductCode: Integer;
  DeptCode: Integer;
  ProductQuantity: Double;
begin
  inherited;
  cdsDataEXCEPT_EVENT_CODE.AsInteger:= dmMain.SvrExceptEvents.GetNewExceptEventCode;
  cdsDataEXCEPT_EVENT_NO.AsInteger:= dmMain.SvrExceptEvents.GetNewExceptEventNo;
  cdsDataEXCEPT_EVENT_GEN_TYPE_CODE.AsInteger:= ExceptEventGenTypeToInt(ExceptEventGenTypeForInsert);

  case ExceptEventGenTypeForInsert of
    eegtProduction, eegtEnvironment:
      begin
        cdsDataOM_BRANCH_CODE.AsVariant:= (OuterDataSet as TClientDataSet).Params.ParamByName('OM_BRANCH_CODE').Value;
        cdsDataOM_CODE.AsVariant:= (OuterDataSet as TClientDataSet).Params.ParamByName('OM_CODE').Value;

        if not cdsDataOM_BRANCH_CODE.IsNull then
          dmMain.SvrExceptEvents.GetOMGeneratorData(
            cdsDataOM_BRANCH_CODE.AsInteger,
            cdsDataOM_CODE.AsInteger,
            ProductCode,
            ProductQuantity,
            DeptCode);
      end;

    eegtSales:
      begin
        cdsDataSALE_OBJECT_BRANCH_CODE.AsVariant:= (OuterDataSet as TClientDataSet).Params.ParamByName('SALE_OBJECT_BRANCH_CODE').Value;
        cdsDataSALE_OBJECT_CODE.AsVariant:= (OuterDataSet as TClientDataSet).Params.ParamByName('SALE_OBJECT_CODE').Value;

        if not cdsDataSALE_OBJECT_BRANCH_CODE.IsNull then
          dmMain.SvrExceptEvents.GetSaleGeneratorData(
            cdsDataSALE_OBJECT_BRANCH_CODE.AsInteger,
            cdsDataSALE_OBJECT_CODE.AsInteger,
            ProductCode,
            ProductQuantity);
      end;

    eegtDeliveries:
      begin
        cdsDataDCD_OBJECT_BRANCH_CODE.AsVariant:= (OuterDataSet as TClientDataSet).Params.ParamByName('DCD_OBJECT_BRANCH_CODE').Value;
        cdsDataDCD_OBJECT_CODE.AsVariant:= (OuterDataSet as TClientDataSet).Params.ParamByName('DCD_OBJECT_CODE').Value;
        cdsDataDELIVERY_PROJECT_CODE.AsVariant:= (OuterDataSet as TClientDataSet).Params.ParamByName('DELIVERY_PROJECT_CODE').Value;

        if not cdsDataDCD_OBJECT_BRANCH_CODE.IsNull then
          dmMain.SvrExceptEvents.GetDeliveryGeneratorData(
            cdsDataDCD_OBJECT_BRANCH_CODE.AsInteger,
            cdsDataDCD_OBJECT_CODE.AsInteger,
            cdsDataDELIVERY_PROJECT_CODE.AsInteger,
            ProductCode,
            ProductQuantity);
      end;

  else
    begin
      ProductCode:= 0;
      ProductQuantity:= 0;
      DeptCode:= 0;
    end;
  end;  { case }

  if (ProductCode <> 0) then
    begin
      cdsDataPRODUCT_CODE.AsInteger:= ProductCode;
      cdsDataPRODUCT_QUANTITY.AsFloat:= ProductQuantity;
      if (DeptCode <> 0) then
        cdsDataDETECT_DEPT_CODE.AsInteger:= DeptCode;
    end;  { if }

  cdsDataEXCEPT_EVENT_LEVEL_CODE.AsInteger:= ExceptEventLevelToInt(DefaultExceptEventLevel);

  DoEmployeeDateTimeAction(cdsDataCREATE_EMPLOYEE_CODE, cdsDataCREATE_DATE, cdsDataCREATE_TIME);

  cdsDataDETECT_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataDETECT_DATE.AsDateTime:= cdsDataCREATE_DATE.AsDateTime;
  cdsDataDETECT_TIME.AsDateTime:= cdsDataCREATE_TIME.AsDateTime;

  cdsDataIS_SINGLE_RESOLVABLE.AsBoolean:= False;

  RefreshDataSet(cdsGeneratorData);
end;

procedure TfmExceptEvent.cdsDataORG_TASK_PROPOSAL_CODEChange(Sender: TField);
begin
  inherited;
  RefreshDataSet(cdsOrgTaskProposal);

  if Sender.IsNull then
    ClearFieldsIfAssigned([cdsDataOTP_BIND_EMPLOYEE_CODE, cdsDataOTP_BIND_DATE, cdsDataOTP_BIND_TIME])
  else
    DoEmployeeDateTimeAction(cdsDataOTP_BIND_EMPLOYEE_CODE, cdsDataOTP_BIND_DATE, cdsDataOTP_BIND_TIME);
end;

procedure TfmExceptEvent.cdsDataPRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  DoProductFieldChanged(cdsDataPRODUCT_CODE, nil, nil, cdsDataPRODUCT_MEASURE_CODE);
end;

procedure TfmExceptEvent.actAnnulExceptEventExecute(Sender: TObject);
begin
  inherited;

  if not cdsDataORG_TASK_PROPOSAL_CODE.IsNull then
    raise Exception.Create(SCannotAnnulExceptEventWithOTP);

  DoEmployeeDateTimeAction(cdsDataANNUL_EMPLOYEE_CODE, cdsDataANNUL_DATE, cdsDataANNUL_TIME, SConfirmAnnul);
end;

procedure TfmExceptEvent.cdsDataSTATE_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and
     InRange(Sender.AsInteger, Low(ExceptEventStateAbbrevs), High(ExceptEventStateAbbrevs)) then
    Text:= ExceptEventStateAbbrevs[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmExceptEvent.cdsExceptEventGenTypesCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsExceptEventGenTypes_EE_GEN_TYPE_DISPLAY_NAME.AsString:=
    cdsExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_ABBREV.AsString +
    ' - ' +
    cdsExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_NAME.AsString;
end;

procedure TfmExceptEvent.cdsGeneratorDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsGeneratorData.Params, cdsData);
end;

procedure TfmExceptEvent.cdsOrgTaskProposalBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsOrgTaskProposal.Params.ParamByName('ORG_TASK_PROPOSAL_CODE').AsInteger:=
    cdsDataORG_TASK_PROPOSAL_CODE.AsInteger;
end;

procedure TfmExceptEvent.cdsOrgTaskProposalORG_TASK_PROPOSAL_NOChange(Sender: TField);
var
  OrgTaskProposalCode: Integer;
begin
  inherited;
  CheckEditMode(cdsData);

  OrgTaskProposalCode:=
    dmMain.SvrOrganisationTasks.GetOrgTaskProposalCodeByNo(cdsOrgTaskProposalORG_TASK_PROPOSAL_NO.AsInteger);

  if (OrgTaskProposalCode = 0) then
    cdsDataORG_TASK_PROPOSAL_CODE.Clear
  else
    cdsDataORG_TASK_PROPOSAL_CODE.AsInteger:= OrgTaskProposalCode;
end;

procedure TfmExceptEvent.cdsOrgTaskProposalOTP_STATE_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and
     InRange(Sender.AsInteger, Low(OTPStateAbbrevs), High(OTPStateAbbrevs)) then
    Text:= OTPStateAbbrevs[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmExceptEvent.cdsDataCalcFields(DataSet: TDataSet);

  procedure AssignWorkdaysLeft(AField, APlanEndDateField: TField);
  begin
    if APlanEndDateField.IsNull then
      AField.Clear
    else
      if cdsDataCLOSE_DATE.IsNull then
        AField.AsInteger:= dmMain.CountWorkdays(DateOf(ContextNow), APlanEndDateField.AsDateTime)
      else
        AField.AsInteger:= dmMain.CountWorkdays(cdsDataCLOSE_DATE.AsDateTime, APlanEndDateField.AsDateTime);
  end;

begin
  inherited;
  AssignWorkdaysLeft(cdsData_DMG_RESOLVE_WORKDAYS_LEFT, cdsDataDMG_RESOLVE_PLAN_END_DATE);
  AssignWorkdaysLeft(cdsData_RESOLVE_WORKDAYS_LEFT, cdsDataRESOLVE_PLAN_END_DATE);
end;

procedure TfmExceptEvent.actCtrlAcceptUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanModifyData and
    cdsDataCTRL_ACCEPT_EMPLOYEE_CODE.IsNull and
    not cdsDataCTRL_DEPT_CODE.IsNull;
end;

procedure TfmExceptEvent.cdsDeliveryIdBeforePost(DataSet: TDataSet);
begin
  inherited;

  CheckRequiredFields(cdsDeliveryId);

  cdsChosenDelivery.Params.ParamByName('DCD_BRANCH_CODE').Assign(cdsDeliveryIdDCD_BRANCH_CODE);
  cdsChosenDelivery.Params.ParamByName('DCD_CODE').Assign(cdsDeliveryIdDCD_CODE);
  cdsChosenDelivery.Params.ParamByName('DELIVERY_PROJECT_CODE').Assign(cdsDeliveryIdDELIVERY_PROJECT_CODE);
  cdsChosenDelivery.TempOpen/
    procedure begin
      if cdsChosenDelivery.IsEmpty then
        raise Exception.Create(SDeliveryNotFound);
    end;
end;

procedure TfmExceptEvent.actChooseDeliveryExecute(Sender: TObject);
var
  ProductCode: Integer;
  ProductQuantity: Double;
begin
  inherited;

  cdsDeliveryId.TempCreateDataSet/
    procedure begin
      if TfmChooseDelivery.ShowForm(dmDocClient, cdsDeliveryId, emInsert) then
        begin
          cdsChosenDelivery.Params.ParamByName('DCD_BRANCH_CODE').Assign(cdsDeliveryIdDCD_BRANCH_CODE);
          cdsChosenDelivery.Params.ParamByName('DCD_CODE').Assign(cdsDeliveryIdDCD_CODE);
          cdsChosenDelivery.Params.ParamByName('DELIVERY_PROJECT_CODE').Assign(cdsDeliveryIdDELIVERY_PROJECT_CODE);
          cdsChosenDelivery.TempOpen/
            procedure begin
              Assert(not cdsChosenDelivery.IsEmpty);

              dmMain.SvrExceptEvents.GetDeliveryGeneratorData(
                cdsChosenDeliveryDCD_OBJECT_BRANCH_CODE.AsInteger,
                cdsChosenDeliveryDCD_OBJECT_CODE.AsInteger,
                cdsChosenDeliveryDELIVERY_PROJECT_CODE.AsInteger,
                ProductCode,
                ProductQuantity);

              if (ProductCode <> cdsDataPRODUCT_CODE.AsInteger) then
                raise Exception.Create(SProductIsDifferentFromDeliveryProduct);

              if (cdsDataPRODUCT_QUANTITY.AsFloat > ProductQuantity) then
                raise Exception.CreateFmt(SIncorrectQuantity, [SGeneratorIdDelivery, FloatToStr(ProductQuantity)]);

              CheckEditMode(cdsData);

              cdsData.AssignFields(cdsChosenDelivery);

              RefreshDataSet(cdsGeneratorData);
            end;
        end;
    end;
end;

procedure TfmExceptEvent.actChooseDeliveryUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsDataDCD_OBJECT_BRANCH_CODE.IsNull and CanModifyData;
end;

procedure TfmExceptEvent.actClearDeliveryGeneratorExecute(Sender: TObject);
begin
  inherited;

  CheckEditMode(cdsData);

  cdsDataDCD_OBJECT_BRANCH_CODE.Clear;
  cdsDataDCD_OBJECT_CODE.Clear;
  cdsDataDELIVERY_PROJECT_CODE.Clear;

  RefreshDataSet(cdsGeneratorData);
end;

procedure TfmExceptEvent.actClearDeliveryGeneratorUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanModifyData and
    not cdsDataDCD_OBJECT_BRANCH_CODE.IsNull;
end;

procedure TfmExceptEvent.actCloseExceptEventExecute(Sender: TObject);
begin
  inherited;
  CheckRequiredFields([cdsDataDEPT_CODE, cdsDataPRC_CONCRETE_OP_CODE]);
  DoEmployeeDateTimeAction(cdsDataCLOSE_EMPLOYEE_CODE, cdsDataCLOSE_DATE, cdsDataCLOSE_TIME, Format(SConfirmClosing, [STheExceptEvent]));
end;

procedure TfmExceptEvent.actCloseExceptEventUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (IntToExceptEventLevel(cdsDataEXCEPT_EVENT_LEVEL_CODE.AsInteger) = eelInformative) or
    ( not cdsDataRESOLVE_EMPLOYEE_CODE.IsNull and
      not cdsDataDMG_RESOLVE_EMPLOYEE_CODE.IsNull
    );
end;

procedure TfmExceptEvent.actCtrlAcceptExecute(Sender: TObject);
begin
  inherited;
  DoEmployeeDateTimeAction(cdsDataCTRL_ACCEPT_EMPLOYEE_CODE, cdsDataCTRL_ACCEPT_DATE, cdsDataCTRL_ACCEPT_TIME, SConfirmCtrlAccept);
end;

procedure TfmExceptEvent.actCtrlActivateUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanModifyData and
    cdsDataCTRL_ACTIVATE_EMPLOYEE_CODE.IsNull and
    not cdsDataCTRL_MAIN_EMPLOYEE_CODE.IsNull;
end;

procedure TfmExceptEvent.actCtrlActivateExecute(Sender: TObject);
begin
  inherited;

  if (LoginContext.UserCode <> cdsDataCTRL_MAIN_EMPLOYEE_CODE.AsInteger) then
    raise Exception.Create(SOnlyCtrlMainEmployeeCanActivate);

  DoEmployeeDateTimeAction(cdsDataCTRL_ACTIVATE_EMPLOYEE_CODE, cdsDataCTRL_ACTIVATE_DATE, cdsDataCTRL_ACTIVATE_TIME, SConfirmCtrlActivate);
end;

procedure TfmExceptEvent.actDamageResolveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanModifyData and
    cdsDataDMG_RESOLVE_EMPLOYEE_CODE.IsNull and
    not cdsDataDMG_RESOLVE_PLAN_BEGIN_DATE.IsNull and
    not cdsDataDMG_RESOLVE_PLAN_END_DATE.IsNull;
end;

procedure TfmExceptEvent.actDetachOrgTaskProposalExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaExceptEventsEditOTP);
  CheckEditMode(cdsData);
  cdsDataORG_TASK_PROPOSAL_CODE.Clear;
end;

procedure TfmExceptEvent.actDetachOrgTaskProposalUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanModifyData and
    not cdsDataORG_TASK_PROPOSAL_CODE.IsNull;
end;

procedure TfmExceptEvent.actDamageResolveExecute(Sender: TObject);
begin
  inherited;
  CheckUserCanControlExceptEvent;
  DoEmployeeDateTimeAction(cdsDataDMG_RESOLVE_EMPLOYEE_CODE, cdsDataDMG_RESOLVE_DATE, cdsDataDMG_RESOLVE_TIME, SConfirmDamageResolve);
end;

procedure TfmExceptEvent.actResolveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanModifyData and
    cdsDataRESOLVE_EMPLOYEE_CODE.IsNull and
    not cdsDataRESOLVE_PLAN_BEGIN_DATE.IsNull and
    not cdsDataRESOLVE_PLAN_END_DATE.IsNull;
end;

procedure TfmExceptEvent.actResolveExecute(Sender: TObject);
begin
  inherited;
  CheckUserCanControlExceptEvent;
  DoEmployeeDateTimeAction(cdsDataRESOLVE_EMPLOYEE_CODE, cdsDataRESOLVE_DATE, cdsDataRESOLVE_TIME, SConfirmResolve);
end;

procedure TfmExceptEvent.cdsDataEXCEPT_EVENT_LEVEL_CODEChange(Sender: TField);
begin
  inherited;
  if not FChangingExceptEventLevel then
    try
      FChangingExceptEventLevel:= True;
      try
        if (IntToExceptEventLevel(Sender.AsInteger) = eelInformative) then
          begin
            try
              LoginContext.CheckUserActivity(uaExceptEventSetInformativeLevel);

              if (EditMode = emEdit) then
                ConfirmAction(Format(SConfirmSettingLevel, [Trim(gbExceptEventControl.Caption), cdsData_EXCEPT_EVENT_LEVEL_NAME.AsString]));
            except
              Sender.AsInteger:= ExceptEventLevelToInt(FPrevExceptEventLevel);
              raise;
            end;  { try }

            ClearFieldsIfAssigned([
              cdsDataCTRL_DEPT_CODE,
              cdsDataCTRL_ACCEPT_EMPLOYEE_CODE,
              cdsDataCTRL_ACCEPT_DATE,
              cdsDataCTRL_ACCEPT_TIME,
              cdsDataCTRL_MAIN_EMPLOYEE_CODE,
              cdsDataCTRL_ACTIVATE_EMPLOYEE_CODE,
              cdsDataCTRL_ACTIVATE_DATE,
              cdsDataCTRL_ACTIVATE_TIME,
              cdsDataDMG_RESOLVE_EMPLOYEE_CODE,
              cdsDataDMG_RESOLVE_PLAN_BEGIN_DATE,
              cdsDataDMG_RESOLVE_PLAN_END_DATE,
              cdsDataDMG_RESOLVE_DATE,
              cdsDataDMG_RESOLVE_TIME,
              cdsDataRESOLVE_PLAN_BEGIN_DATE,
              cdsDataRESOLVE_PLAN_END_DATE,
              cdsDataRESOLVE_EMPLOYEE_CODE,
              cdsDataRESOLVE_DATE,
              cdsDataRESOLVE_TIME]);
          end;  { if }
      finally
        FChangingExceptEventLevel:= False;
      end;  { try }
    finally
      FPrevExceptEventLevel:= IntToExceptEventLevel(Sender.AsInteger);
    end;  { try }
end;

procedure TfmExceptEvent.actShowCausedExceptEventsExecute(Sender: TObject);
begin
  inherited;
  cdsExceptEventsParams.CreateDataSet;
  try
    cdsExceptEventsParams.Append;
    try
      cdsExceptEventsParamsMAX_STATE_CODE.AsInteger:= High(TExceptEventStates);
      cdsExceptEventsParamsEXCEPT_EVENT_IS_CAUSE.AsExceptEventPositionFilter:= eepfAll;
      cdsExceptEventsParamsEXCEPT_EVENT_IS_CAUSED.AsExceptEventPositionFilter:= eepfYes;
      cdsExceptEventsParamsCAUSE_EXCEPT_EVENT_NO.AsInteger:= cdsDataEXCEPT_EVENT_NO.AsInteger;
      cdsExceptEventsParams.Post;
    except
      cdsExceptEventsParams.Cancel;
      raise;
    end;  { try }

    TfmExceptEvents.ShowForm(nil, cdsExceptEventsParams, emReadOnly, doNone, False);
  finally
    cdsExceptEventsParams.Close;
  end;  { try }
end;

procedure TfmExceptEvent.actShowCausedExceptEventsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsDataHAS_CONSEQUENCES.AsBoolean;
end;

procedure TfmExceptEvent.actShowCauseExceptEventsExecute(Sender: TObject);
begin
  inherited;
  cdsExceptEventsParams.CreateDataSet;
  try
    cdsExceptEventsParams.Append;
    try
      cdsExceptEventsParamsMAX_STATE_CODE.AsInteger:= High(TExceptEventStates);
      cdsExceptEventsParamsEXCEPT_EVENT_IS_CAUSED.AsExceptEventPositionFilter:= eepfAll;
      cdsExceptEventsParamsEXCEPT_EVENT_IS_CAUSE.AsExceptEventPositionFilter:= eepfYes;
      cdsExceptEventsParamsCAUSED_EXCEPT_EVENT_NO.AsInteger:= cdsDataEXCEPT_EVENT_NO.AsInteger;
      cdsExceptEventsParams.Post;
    except
      cdsExceptEventsParams.Cancel;
      raise;
    end;  { try }

    TfmExceptEvents.ShowForm(nil, cdsExceptEventsParams, emReadOnly, doNone, False);
  finally
    cdsExceptEventsParams.Close;
  end;  { try }
end;

procedure TfmExceptEvent.actShowCauseExceptEventsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsDataHAS_CAUSES.AsBoolean;
end;

procedure TfmExceptEvent.actShowDeliveryExecute(Sender: TObject);
begin
  inherited;
  TfmDelivery.ShowForm(dmDocClient, cdsGeneratorData, emReadOnly, doNone, nil, pcNormal);
end;

procedure TfmExceptEvent.actShowDeliveryUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGeneratorDataDCD_OBJECT_BRANCH_CODE.IsNull;
end;

procedure TfmExceptEvent.actShowOMExecute(Sender: TObject);
begin
  inherited;
  TfmOperationMovement.ShowForm(dmDocClient, cdsGeneratorData, emReadOnly);
end;

procedure TfmExceptEvent.actShowOMSaleExecute(Sender: TObject);
begin
  inherited;
  cdsOMSale.CreateDataSet;
  try
    cdsOMSale.Append;
    try
      cdsOMSaleSALE_OBJECT_BRANCH_CODE.AsInteger:= cdsGeneratorDataOM_SALE_OBJECT_BRANCH_CODE.AsInteger;
      cdsOMSaleSALE_OBJECT_CODE.AsInteger:= cdsGeneratorDataOM_SALE_OBJECT_CODE.AsInteger;
      cdsOMSale.Post;
    except
      cdsOMSale.Cancel;
      raise;
    end;  { try }

    if (cdsGeneratorDataOM_SALE_ORDER_TYPE_CODE.AsInteger = sotProductionOrder) then
      TfmProductionOrder.ShowForm(dmDocClient, cdsOMSale, emReadOnly)
    else
      TfmSale.ShowForm(dmDocClient, cdsOMSale, emReadOnly);
  finally
    cdsOMSale.Close;
  end;  { try }
end;

procedure TfmExceptEvent.actShowOMSaleUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGeneratorDataOM_SALE_OBJECT_BRANCH_CODE.IsNull;
end;

procedure TfmExceptEvent.actShowOMUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGeneratorDataOM_BRANCH_CODE.IsNull;
end;

procedure TfmExceptEvent.actShowOrgTaskProposalExecute(Sender: TObject);
begin
  inherited;
  TfmOrganisationTaskProposal.ShowForm(dmDocClient, cdsData, emReadOnly);
end;

procedure TfmExceptEvent.actShowOrgTaskProposalUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDataORG_TASK_PROPOSAL_CODE.IsNull;
end;

procedure TfmExceptEvent.actShowSaleExecute(Sender: TObject);
begin
  inherited;
  TfmSaleOrder.ShowForm(dmDocClient, cdsGeneratorData, emReadOnly, doNone, pcNormal);
end;

procedure TfmExceptEvent.actShowSaleUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGeneratorDataSALE_OBJECT_BRANCH_CODE.IsNull;
end;

end.
