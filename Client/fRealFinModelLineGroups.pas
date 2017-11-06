unit fRealFinModelLineGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient, AbmesClientDataSet, Buttons,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  StdCtrls, uClientTypes, Menus, uFinanceClientUtils, Mask, uUtils, fGridForm,
  uSection, DBGridEhGrouping, fBaseFrame, fFinModelLineStoreDeals, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TFinOrderProcessingFunc = reference to function(const AFinOrderCode: Integer): Boolean;

type
  TfmRealFinModelLineGroups = class(TMasterDetailForm)
    cdsDetailRFML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDetailRFML_OBJECT_CODE: TAbmesFloatField;
    cdsDetailFIN_ORDER_CODE: TAbmesFloatField;
    cdsDetailFIN_ORDER_STATUS_CODE: TAbmesFloatField;
    cdsDetailFIN_PROCESS_ABBREV: TAbmesWideStringField;
    cdsDetailFIN_ORDER_BRANCH_NO: TAbmesFloatField;
    cdsDetailFIN_ORDER_NO: TAbmesFloatField;
    cdsDetailFIN_ORDER_IDENTIFIER: TAbmesWideStringField;
    cdsDetailWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    cdsDetailWORK_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField;
    cdsDetailPARTNER_SHORT_NAME: TAbmesWideStringField;
    cdsDetailBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsDetailFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsDetailFIN_MODEL_LINE_NO: TAbmesFloatField;
    cdsDetailSHOW_NO: TAbmesWideStringField;
    cdsDetailLINE_QUANTITY_PERCENT: TAbmesFloatField;
    cdsDetailPLAN_QTY: TAbmesFloatField;
    cdsDetailPLAN_QTY_BC: TAbmesFloatField;
    cdsDetailREMAINING_QTY: TAbmesFloatField;
    cdsDetailREMAINING_QTY_BC: TAbmesFloatField;
    cdsDetailLATE_PLAN_QTY: TAbmesFloatField;
    cdsDetailLATE_PLAN_QTY_BC: TAbmesFloatField;
    cdsDetailLATE_PLAN_QTY_PERCENT: TAbmesFloatField;
    cdsDetailLATE_PLAN_QTY_BC_PERCENT: TAbmesFloatField;
    cdsDetailLATE_PLAN_DAYS: TAbmesFloatField;
    cdsDetailLATE_REAL_QTY: TAbmesFloatField;
    cdsDetailLATE_REAL_QTY_BC: TAbmesFloatField;
    cdsDetailLATE_REAL_QTY_PERCENT: TAbmesFloatField;
    cdsDetailLATE_REAL_QTY_BC_PERCENT: TAbmesFloatField;
    cdsDetailLATE_REAL_DAYS: TAbmesFloatField;
    cdsDetailFIN_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsDetailIN_OUT: TAbmesFloatField;
    cdsDetailPARTNER_ACCOUNT_FULL_NAME: TAbmesWideStringField;
    cdsDetailMOVEMENT_DURATION_DAYS: TAbmesFloatField;
    cdsDetailFIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField;
    cdsDetailPRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsDetailPRIORITY_COLOR: TAbmesFloatField;
    cdsDetailPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    pdsGridDataParamsFIN_ORDER_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsFIN_ORDER_NO: TAbmesFloatField;
    pdsGridDataParamsWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_MOVEMENT_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_MOVEMENT_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEXEC_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_BASE_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_BASE_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsHAS_DOCUMENT_IDENTIFIER: TAbmesFloatField;
    pdsGridDataParamsIN_OUT: TAbmesFloatField;
    pdsGridDataParamsFIN_STORE_CODE: TAbmesFloatField;
    pdsGridDataParamsFIN_CLASS_CODE: TAbmesFloatField;
    pdsGridDataParamsFIN_PROCESS_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_NO: TAbmesFloatField;
    pdsGridDataParamsSALE_SHIPMENT_NO: TAbmesFloatField;
    pdsGridDataParamsDCD_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsDCD_CODE: TAbmesFloatField;
    pdsGridDataParamsDELIVERY_PROJECT_CODE: TAbmesFloatField;
    pdsGridDataParamsBND_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_CODE: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    pdsGridDataParamsBOI_ORDER_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_FIN_ORDER_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_FIN_ORDER_STATUS_CODE: TAbmesFloatField;
    cdsFinProcesses: TAbmesClientDataSet;
    cdsFinProcessesPROCESS_CODE: TAbmesFloatField;
    cdsFinProcessesPROCESS_ABBREV: TAbmesWideStringField;
    cdsFinProcessesPROCESS_NAME: TAbmesWideStringField;
    cdsFinProcessesPROCESS_NO: TAbmesFloatField;
    cdsFinProcessesIS_MANUALLY_USABLE: TAbmesFloatField;
    pdsGridDataParams_FIN_PROCESS_ABBREV: TAbmesWideStringField;
    cdsDetailPARTNER_CODE: TAbmesFloatField;
    cdsDetailFIN_STORE_CODE: TAbmesFloatField;
    cdsDetailPARTNER_ACCOUNT_CODE: TAbmesFloatField;
    cdsGridDataMOVEMENT_DURATION_DAYS: TAbmesFloatField;
    cdsGridDataPARTNER_CODE: TAbmesFloatField;
    cdsGridDataPARTNER_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataWORK_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataFIN_STORE_CODE: TAbmesFloatField;
    cdsGridDataFIN_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataIN_OUT: TAbmesFloatField;
    cdsGridDataPARTNER_ACCOUNT_CODE: TAbmesFloatField;
    cdsGridDataPARTNER_ACCOUNT_FULL_NAME: TAbmesWideStringField;
    actPercent: TAction;
    actBalance: TAction;
    actBaseCurrency: TAction;
    tlbMasterToggles: TToolBar;
    btnPercent: TToolButton;
    btnBalance: TToolButton;
    sepBaseCurrency: TToolButton;
    btnBaseCurrency: TToolButton;
    cdsGridDataPLAN_IN_QTY: TAbmesFloatField;
    cdsGridDataPLAN_IN_QTY_BC: TAbmesFloatField;
    cdsGridDataREMAINING_IN_QTY: TAbmesFloatField;
    cdsGridDataREMAINING_IN_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_PLAN_IN_QTY: TAbmesFloatField;
    cdsGridDataLATE_PLAN_IN_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_PLAN_IN_QTY_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_PLAN_IN_QTY_BC_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_PLAN_IN_DAYS: TAbmesFloatField;
    cdsGridDataLATE_REAL_IN_QTY: TAbmesFloatField;
    cdsGridDataLATE_REAL_IN_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_REAL_IN_QTY_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_REAL_IN_QTY_BC_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_REAL_IN_DAYS: TAbmesFloatField;
    cdsGridDataPLAN_OUT_QTY: TAbmesFloatField;
    cdsGridDataPLAN_OUT_QTY_BC: TAbmesFloatField;
    cdsGridDataREMAINING_OUT_QTY: TAbmesFloatField;
    cdsGridDataREMAINING_OUT_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_PLAN_OUT_QTY: TAbmesFloatField;
    cdsGridDataLATE_PLAN_OUT_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_PLAN_OUT_QTY_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_PLAN_OUT_QTY_BC_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_PLAN_OUT_DAYS: TAbmesFloatField;
    cdsGridDataLATE_REAL_OUT_QTY: TAbmesFloatField;
    cdsGridDataLATE_REAL_OUT_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_REAL_OUT_QTY_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_REAL_OUT_QTY_BC_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_REAL_OUT_DAYS: TAbmesFloatField;
    cdsGridDataPLAN_QTY: TAbmesFloatField;
    cdsGridDataPLAN_QTY_BC: TAbmesFloatField;
    cdsGridDataREMAINING_QTY: TAbmesFloatField;
    cdsGridDataREMAINING_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_PLAN_QTY: TAbmesFloatField;
    cdsGridDataLATE_PLAN_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_PLAN_QTY_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_PLAN_QTY_BC_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_PLAN_DAYS: TAbmesFloatField;
    cdsGridDataLATE_REAL_QTY: TAbmesFloatField;
    cdsGridDataLATE_REAL_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_REAL_QTY_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_REAL_QTY_BC_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_REAL_DAYS: TAbmesFloatField;
    cdsDetail_SUM_PLAN_QTY: TAggregateField;
    cdsDetail_SUM_PLAN_QTY_BC: TAggregateField;
    cdsDetail_SUM_REMAINING_QTY: TAggregateField;
    cdsDetail_SUM_REMAINING_QTY_BC: TAggregateField;
    cdsDetail_SUM_LATE_PLAN_QTY: TAggregateField;
    cdsDetail_SUM_LATE_PLAN_QTY_BC: TAggregateField;
    cdsDetail_MAX_LATE_PLAN_DAYS: TAggregateField;
    cdsDetail_SUM_LATE_REAL_QTY: TAggregateField;
    cdsDetail_SUM_LATE_REAL_QTY_BC: TAggregateField;
    cdsDetail_MAX_LATE_REAL_DAYS: TAggregateField;
    cdsFinOrderBndObject: TAbmesClientDataSet;
    cdsFinOrderBndObjectFIN_ORDER_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectSALE_OBJECT_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectSALE_SHIPMENT_NO: TAbmesFloatField;
    cdsFinOrderBndObjectDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectDCD_OBJECT_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectREQUEST_NO: TAbmesFloatField;
    actFinOrder: TAction;
    actBndProcessObject: TAction;
    cdsGridData_MIN_WORK_FINANCIAL_PRODUCT_CODE: TAggregateField;
    cdsGridData_MAX_WORK_FINANCIAL_PRODUCT_CODE: TAggregateField;
    cdsFinOrderBndObjectBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectBOI_ORDER_CODE: TAbmesFloatField;
    cdsDetailBASE_DATA_CHANGED: TAbmesFloatField;
    pdsGridDataParamsBND_BUDGET_PRODUCT_CODE: TAbmesFloatField;
    cdsDetailDOCUMENT_IDENTIFIER: TAbmesWideStringField;
    cdsDetailDOCUMENT_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsDOCUMENT_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParamsDOCUMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsDOCUMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsDetailBND_PROCESS_OBJECT_INFO: TAbmesWideStringField;
    actActivateGroupModels: TAction;
    tlbGroupTools: TToolBar;
    cdsDetail_MIN_FIN_ORDER_STATUS_CODE: TAggregateField;
    btnActivateGroupModels: TToolButton;
    pnlButtons: TPanel;
    btnEditDetailData: TBitBtn;
    btnFinOrder: TBitBtn;
    btnBndProcessObject: TBitBtn;
    pnlProgressBar: TPanel;
    pbGroupProcessing: TProgressBar;
    cdsDetailMOVEMENT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDetailMOVEMENT_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataMOVEMENT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataMOVEMENT_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsDetailMOVEMENT_OFFSET_DAYS: TAbmesFloatField;
    cdsDetailFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField;
    cdsDetailBASE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEDIT_MOVEMENT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEDIT_MOVEMENT_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEDIT_MOVEMENT_DURATION_DAYS: TAbmesFloatField;
    cdsGridDataEDIT_FIN_STORE_CODE: TAbmesFloatField;
    cdsGridDataEDIT_PARTNER_ACCOUNT_CODE: TAbmesWideStringField;
    cdsDetailIS_MODIFIED: TAbmesFloatField;
    pdsGridDataParamsFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsDetailREAL_QTY: TAbmesFloatField;
    cdsDetailREAL_QTY_BC: TAbmesFloatField;
    cdsDetailREAL_QTY_PERCENT: TAbmesFloatField;
    cdsDetailREAL_QTY_BC_PERCENT: TAbmesFloatField;
    cdsDetailMAX_REAL_DATE: TAbmesSQLTimeStampField;
    cdsGridDataREAL_IN_QTY: TAbmesFloatField;
    cdsGridDataREAL_IN_QTY_BC: TAbmesFloatField;
    cdsGridDataREAL_IN_QTY_PERCENT: TAbmesFloatField;
    cdsGridDataREAL_IN_QTY_BC_PERCENT: TAbmesFloatField;
    cdsGridDataMAX_REAL_IN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataREAL_OUT_QTY: TAbmesFloatField;
    cdsGridDataREAL_OUT_QTY_BC: TAbmesFloatField;
    cdsGridDataREAL_OUT_QTY_PERCENT: TAbmesFloatField;
    cdsGridDataREAL_OUT_QTY_BC_PERCENT: TAbmesFloatField;
    cdsGridDataMAX_REAL_OUT_DATE: TAbmesSQLTimeStampField;
    cdsGridDataREAL_QTY: TAbmesFloatField;
    cdsGridDataREAL_QTY_BC: TAbmesFloatField;
    cdsGridDataREAL_QTY_PERCENT: TAbmesFloatField;
    cdsGridDataREAL_QTY_BC_PERCENT: TAbmesFloatField;
    cdsGridDataMAX_REAL_DATE: TAbmesSQLTimeStampField;
    actLatePlan: TAction;
    actLateReal: TAction;
    actReal: TAction;
    sepPercent: TToolButton;
    btnLatePlan: TToolButton;
    btnLateReal: TToolButton;
    btnReal: TToolButton;
    cdsDetail_SUM_REAL_QTY: TAggregateField;
    cdsDetail_SUM_REAL_QTY_BC: TAggregateField;
    cdsDetail_MAX_REAL_DATE: TAggregateField;
    pdsGridDataParamsALL_FILTERED_COMPANIES: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    actCloseGroupOrders: TAction;
    btnCloseGroupOrders: TToolButton;
    pdsGridDataParamsREQUEST_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsREQUEST_NO: TAbmesFloatField;
    frRealFinModelLineStoreDeals: TfrRealFinModelLineStoreDeals;
    cdsDetailNOTES: TAbmesWideStringField;
    cdsGridDataNOTES: TAbmesWideStringField;
    actNotes: TAction;
    sepNotes: TToolButton;
    btnNotes: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure cdsDetailAfterOpen(DataSet: TDataSet);
    procedure grdDetailGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataIN_OUTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actRealLateExecute(Sender: TObject);
    procedure actPercentExecute(Sender: TObject);
    procedure actBalanceExecute(Sender: TObject);
    procedure actBaseCurrencyExecute(Sender: TObject);
    procedure PercentFieldsGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure actFinOrderUpdate(Sender: TObject);
    procedure actFinOrderExecute(Sender: TObject);
    procedure actBndProcessObjectUpdate(Sender: TObject);
    procedure actBndProcessObjectExecute(Sender: TObject);
    procedure pdsGridDataParamsHAS_DOCUMENT_IDENTIFIERChange(Sender: TField);
    procedure cdsDetailFIN_ORDER_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actActivateGroupModelsUpdate(Sender: TObject);
    procedure actActivateGroupModelsExecute(Sender: TObject);
    procedure cdsGridDataEDIT_MOVEMENT_PLAN_BEGIN_DATEChange(Sender: TField);
    procedure cdsGridDataEDIT_MOVEMENT_PLAN_END_DATEChange(Sender: TField);
    procedure cdsGridDataEDIT_MOVEMENT_DURATION_DAYSChange(Sender: TField);
    procedure cdsDetailAfterClose(DataSet: TDataSet);
    procedure actLatePlanExecute(Sender: TObject);
    procedure actLateRealExecute(Sender: TObject);
    procedure actRealExecute(Sender: TObject);
    procedure actCloseGroupOrdersUpdate(Sender: TObject);
    procedure actCloseGroupOrdersExecute(Sender: TObject);
    procedure actPrintDetailsExecute(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    FModelMode: Boolean;
    FGeneratingMaster: TTrySinglePassSection;
    FSettingDateOffsetOrMovementDate: TTrySinglePassSection;
    procedure SetColumns;
    procedure CalcAggregates;
    procedure RefreshData;
    procedure UpdateChildren;
    procedure ProcessGroup(const AActivityCode: Integer;
      const AConfirmActionMessage, ACompleteActionMessage: string;
      const ANeededFinOrderStatusCode: Integer; AFinOrderProcessingFunc: TFinOrderProcessingFunc);
  protected
    class function ManualDetailFetch: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean; override;
    function GetApplyKind: TApplyKind; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  public
    procedure Initialize; override;
  end;

var
  fmRealFinModelLineGroups: TfmRealFinModelLineGroups;

implementation

uses
  dMain, uClientUtils, Math, fSale,
  fDelivery, fGroupSale, fBOICompanyOrder, fEditForm, fFinOrder,
  uUserActivityConsts, fRealFinModelLineGroupsFilter, uDataSetUtils, AbmesDialogs,
  uFMMovementOffsetTypes, fRealFinModelLineGroup, uTreeClientUtils, StrUtils,
  rRealFinModelLineGroups, JclStrings, uAbmesDBGridHelpers;

resourcestring
  SConfirmActivateGroupModels = 'Потвърдете активирането на всички финансови Р-МОДЕл-и в групата?';
  SActivationDone = 'Активирането завърши успешно';
  SConfirmCloseGroupOrders = 'Потвърдете приключването на всички ОПФ на редовете в групата?';
  SClosingDone = 'Приключването завърши успешно';

{$R *.dfm}

procedure TfmRealFinModelLineGroups.actActivateGroupModelsExecute(
  Sender: TObject);
begin
  inherited;

  ProcessGroup(uaActivateFinancialModel, SConfirmActivateGroupModels, SActivationDone, fosNotActivated,
    function(const AFinOrderCode: Integer): Boolean
    begin
      Result:= False;
      case TfmFinOrder.ActivateModel(AFinOrderCode) of
        marAborted:
          Abort;
        marActivated:
          Result:= True;
        marModified:
          begin
            Result:= True;
            Abort;
          end;
      end;
    end
  );
end;

procedure TfmRealFinModelLineGroups.actActivateGroupModelsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDetail.Active and
    (cdsDetail.RecordCount > 0) and
    (VarToInt(cdsDetail_MIN_FIN_ORDER_STATUS_CODE.AsVariant) = fosNotActivated);
end;

procedure TfmRealFinModelLineGroups.actBalanceExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetColumns;
end;

procedure TfmRealFinModelLineGroups.actBaseCurrencyExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetColumns;
  CalcAggregates;
end;

procedure TfmRealFinModelLineGroups.actBndProcessObjectExecute(Sender: TObject);
var
  BndProcessObjectFormClass: TEditFormClass;
begin
  inherited;

  cdsFinOrderBndObject.Params.ParamByName('FIN_ORDER_CODE').AsInteger:=
    cdsDetailFIN_ORDER_CODE.AsInteger;
  cdsFinOrderBndObject.Open;
  try
    BndProcessObjectFormClass:= nil;

    if not cdsFinOrderBndObjectSALE_SHIPMENT_NO.IsNull then
      BndProcessObjectFormClass:= TfmSale;

    if not cdsFinOrderBndObjectDELIVERY_PROJECT_CODE.IsNull then
      BndProcessObjectFormClass:= TfmDelivery;

    if not cdsFinOrderBndObjectREQUEST_NO.IsNull then
      BndProcessObjectFormClass:= TfmGroupSale;

    if not cdsFinOrderBndObjectBOI_ORDER_CODE.IsNull then
      BndProcessObjectFormClass:= TfmBOICompanyOrder;

    Assert(Assigned(BndProcessObjectFormClass));

    BndProcessObjectFormClass.ShowForm(nil, cdsFinOrderBndObject, emReadOnly);
  finally
    cdsFinOrderBndObject.Close;
  end;
end;

procedure TfmRealFinModelLineGroups.actBndProcessObjectUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    not cdsDetailBND_PROCESS_OBJECT_IDENTIFIER.IsNull;
end;

procedure TfmRealFinModelLineGroups.actCloseGroupOrdersExecute(
  Sender: TObject);
begin
  inherited;

  ProcessGroup(uaFinancialOrderEdit, SConfirmCloseGroupOrders, SClosingDone, fosCompleted,
    function(const AFinOrderCode: Integer): Boolean
    begin
      Result:= False;
      case TfmFinOrder.CloseOrder(AFinOrderCode) of
        ocrAborted:
          Abort;
        ocrClosed:
          Result:= True;
        ocrModified:
          begin
            Result:= True;
            Abort;
          end;
      end;
    end
  );
end;

procedure TfmRealFinModelLineGroups.actCloseGroupOrdersUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDetail.Active and
    (cdsDetail.RecordCount > 0) and
    (VarToInt(cdsDetail_MIN_FIN_ORDER_STATUS_CODE.AsVariant) = fosCompleted);
end;

procedure TfmRealFinModelLineGroups.actFilterExecute(Sender: TObject);
var
  SaveCursor: TCursor;
begin
  if FilterFormClass.ShowForm(dmDocClient, pdsGridDataParams) then
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        cdsGridData.Close;
        cdsGridData.CreateDataSet;

        RefreshDataSet(cdsDetail);
      finally
        Screen.Cursor:= SaveCursor;
      end;  { try }
    end;  { if }
end;

procedure TfmRealFinModelLineGroups.actFinOrderExecute(Sender: TObject);
begin
  inherited;
  FModelMode:= False;
  try
    actEditDetailRecord.Execute;
  finally
    FModelMode:= True;
  end;
end;

procedure TfmRealFinModelLineGroups.actFinOrderUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    not cdsDetail.IsEmpty;
end;

procedure TfmRealFinModelLineGroups.actLatePlanExecute(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= True;
  ((Sender as TAction).ActionComponent as TToolButton).Down:= True;
  SetColumns;
end;

procedure TfmRealFinModelLineGroups.actLateRealExecute(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= True;
  ((Sender as TAction).ActionComponent as TToolButton).Down:= True;
  SetColumns;
end;

procedure TfmRealFinModelLineGroups.actNotesExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Checked:= not Checked;
      cdsGridData.Tag:= Ord(Checked);  // za printa
    end;
  SetColumns;
end;

procedure TfmRealFinModelLineGroups.actPercentExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetColumns;
end;

procedure TfmRealFinModelLineGroups.actPrintDetailsExecute(Sender: TObject);
begin
  // do not call inherited
  TrptRealFinModelLineGroups.PrintReport(cdsGridData, pdsGridDataParams, cdsDetail, True);
end;

procedure TfmRealFinModelLineGroups.actPrintExecute(Sender: TObject);
const
  InBaseCurrencyFieldName = 'IN_BASE_CURRENCY';
var
  cdsPrintTotals: TAbmesClientDataSet;
  SavepdsGridDataParams: TParamDataSet;

  procedure GeneratePrintTotals;
  var
    c: TColumnEh;
  begin
    for c in grdData.AllColumns do
      cdsPrintTotals.FieldDefs.Add(c.FieldName, ftWideString, 100);

    cdsPrintTotals.FieldDefs.Add(InBaseCurrencyFieldName, ftFloat);

    cdsPrintTotals.CreateDataSet;

    cdsPrintTotals.Append;
    try
      for c in grdData.AllColumns do
        with cdsPrintTotals.FieldByName(c.FieldName) do
          begin
            AsString:= c.Footer.Value;
            Alignment:= c.Footer.Alignment;
          end;

      cdsPrintTotals.FieldByName(InBaseCurrencyFieldName).AsInteger:= Ord(actBaseCurrency.Checked);

      cdsPrintTotals.Post;
    except
      cdsPrintTotals.Cancel;
      raise;
    end;
  end;

begin
  cdsPrintTotals:= TAbmesClientDataSet.Create(nil);
  try
    GeneratePrintTotals;

    SavepdsGridDataParams:= pdsGridDataParams;
    pdsGridDataParams:= TParamDataSet(cdsPrintTotals);
    try
      inherited;
    finally
      pdsGridDataParams:= SavepdsGridDataParams;
    end;
  finally
    FreeAndNil(cdsPrintTotals);
  end;
end;

procedure TfmRealFinModelLineGroups.actRealExecute(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= True;
  ((Sender as TAction).ActionComponent as TToolButton).Down:= True;
  SetColumns;
end;

procedure TfmRealFinModelLineGroups.actRealLateExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetColumns;
end;

procedure TfmRealFinModelLineGroups.CalcAggregates;
var
  i: Integer;
  aggr: TAggregate;
  SameWorkFinancialProductCode: Boolean;
begin
  SameWorkFinancialProductCode:=
    (VarToInt(cdsGridData_MIN_WORK_FINANCIAL_PRODUCT_CODE.AsVariant) =
     VarToInt(cdsGridData_MAX_WORK_FINANCIAL_PRODUCT_CODE.AsVariant));

  grdData.Columns.BeginUpdate;
  try
    for i:= 0 to grdData.Columns.Count - 1 do
      if (Pos('QTY', grdData.Columns[i].FieldName) > 0) then
        begin
          grdData.Columns[i].Footer.ValueType:= fvtStaticText;

          if cdsGridData.IsEmpty or
             (Pos('PERCENT', grdData.Columns[i].FieldName) > 0) or
             ( (not SameWorkFinancialProductCode) and
               (Pos('QTY_BC', grdData.Columns[i].FieldName) = 0) ) then
            grdData.Columns[i].Footer.Value:= ''
          else
            begin
              aggr:= cdsGridData.Aggregates.Add;
              try
                aggr.Expression:= Format('Sum(%s)', [grdData.Columns[i].FieldName]);
                aggr.Active:= True;

                if VarIsNull(aggr.Value) then
                  grdData.Columns[i].Footer.Value:= ''
                else
                  grdData.Columns[i].Footer.Value:= FormatFloat(',0', aggr.Value);
              finally
                FreeAndNil(aggr);
              end;  { try }
            end;
        end;
  finally
    grdData.Columns.EndUpdate;
  end;  { try }
end;

procedure TfmRealFinModelLineGroups.cdsDetailAfterClose(DataSet: TDataSet);
begin
  inherited;
  cdsDetail.MasterSource:= nil;
  cdsDetail.MasterFields:= '';
end;

procedure TfmRealFinModelLineGroups.cdsDetailAfterOpen(DataSet: TDataSet);
var
  SL: TStringList;
begin
  inherited;

  SL:= TStringList.Create;
  try
    SL.Delimiter:= #13;

    FGeneratingMaster.TempEnter /
      procedure begin
        cdsGridData.DisableControls;
        cdsDetail.DisableControls;
        try
          cdsDetail.MasterSource:= nil;
          cdsDetail.MasterFields:= '';

          cdsDetail.First;
          while not cdsDetail.Eof do
            begin
              if (gbFirst in cdsDetail.GetGroupState(8)) then
                begin
                  SL.Clear;

                  cdsGridData.Append;

                  cdsGridDataMOVEMENT_PLAN_BEGIN_DATE.Assign(cdsDetailMOVEMENT_PLAN_BEGIN_DATE);
                  cdsGridDataMOVEMENT_PLAN_END_DATE.Assign(cdsDetailMOVEMENT_PLAN_END_DATE);
                  cdsGridDataMOVEMENT_DURATION_DAYS.Assign(cdsDetailMOVEMENT_DURATION_DAYS);
                  cdsGridDataPARTNER_CODE.Assign(cdsDetailPARTNER_CODE);
                  cdsGridDataPARTNER_SHORT_NAME.Assign(cdsDetailPARTNER_SHORT_NAME);
                  cdsGridDataWORK_FINANCIAL_PRODUCT_CODE.Assign(cdsDetailWORK_FINANCIAL_PRODUCT_CODE);
                  cdsGridDataWORK_FINANCIAL_PRODUCT_NAME.Assign(cdsDetailWORK_FINANCIAL_PRODUCT_NAME);
                  cdsGridDataFIN_STORE_CODE.Assign(cdsDetailFIN_STORE_CODE);
                  cdsGridDataFIN_STORE_IDENTIFIER.Assign(cdsDetailFIN_STORE_IDENTIFIER);
                  cdsGridDataIN_OUT.Assign(cdsDetailIN_OUT);
                  cdsGridDataPARTNER_ACCOUNT_CODE.Assign(cdsDetailPARTNER_ACCOUNT_CODE);
                  cdsGridDataPARTNER_ACCOUNT_FULL_NAME.Assign(cdsDetailPARTNER_ACCOUNT_FULL_NAME);

                  if (cdsDetailIN_OUT.AsInteger = 1) then
                    begin
                      cdsGridDataPLAN_IN_QTY.AsVariant:= cdsDetail_SUM_PLAN_QTY.AsVariant;
                      cdsGridDataPLAN_IN_QTY_BC.AsVariant:= cdsDetail_SUM_PLAN_QTY_BC.AsVariant;
                      cdsGridDataREMAINING_IN_QTY.AsVariant:= cdsDetail_SUM_REMAINING_QTY.AsVariant;
                      cdsGridDataREMAINING_IN_QTY_BC.AsVariant:= cdsDetail_SUM_REMAINING_QTY_BC.AsVariant;
                      cdsGridDataLATE_PLAN_IN_QTY.AsVariant:= cdsDetail_SUM_LATE_PLAN_QTY.AsVariant;
                      cdsGridDataLATE_PLAN_IN_QTY_BC.AsVariant:= cdsDetail_SUM_LATE_PLAN_QTY_BC.AsVariant;
                      cdsGridDataLATE_PLAN_IN_DAYS.AsVariant:= cdsDetail_MAX_LATE_PLAN_DAYS.AsVariant;
                      cdsGridDataLATE_REAL_IN_QTY.AsVariant:= cdsDetail_SUM_LATE_REAL_QTY.AsVariant;
                      cdsGridDataLATE_REAL_IN_QTY_BC.AsVariant:= cdsDetail_SUM_LATE_REAL_QTY_BC.AsVariant;
                      cdsGridDataLATE_REAL_IN_DAYS.AsVariant:= cdsDetail_MAX_LATE_REAL_DAYS.AsVariant;
                      cdsGridDataREAL_IN_QTY.AsVariant:= cdsDetail_SUM_REAL_QTY.AsVariant;
                      cdsGridDataREAL_IN_QTY_BC.AsVariant:= cdsDetail_SUM_REAL_QTY_BC.AsVariant;
                      cdsGridDataMAX_REAL_IN_DATE.AsVariant:= cdsDetail_MAX_REAL_DATE.AsVariant;
                    end
                  else
                    begin
                      cdsGridDataPLAN_OUT_QTY.AsVariant:= cdsDetail_SUM_PLAN_QTY.AsVariant;
                      cdsGridDataPLAN_OUT_QTY_BC.AsVariant:= cdsDetail_SUM_PLAN_QTY_BC.AsVariant;
                      cdsGridDataREMAINING_OUT_QTY.AsVariant:= cdsDetail_SUM_REMAINING_QTY.AsVariant;
                      cdsGridDataREMAINING_OUT_QTY_BC.AsVariant:= cdsDetail_SUM_REMAINING_QTY_BC.AsVariant;
                      cdsGridDataLATE_PLAN_OUT_QTY.AsVariant:= cdsDetail_SUM_LATE_PLAN_QTY.AsVariant;
                      cdsGridDataLATE_PLAN_OUT_QTY_BC.AsVariant:= cdsDetail_SUM_LATE_PLAN_QTY_BC.AsVariant;
                      cdsGridDataLATE_PLAN_OUT_DAYS.AsVariant:= cdsDetail_MAX_LATE_PLAN_DAYS.AsVariant;
                      cdsGridDataLATE_REAL_OUT_QTY.AsVariant:= cdsDetail_SUM_LATE_REAL_QTY.AsVariant;
                      cdsGridDataLATE_REAL_OUT_QTY_BC.AsVariant:= cdsDetail_SUM_LATE_REAL_QTY_BC.AsVariant;
                      cdsGridDataLATE_REAL_OUT_DAYS.AsVariant:= cdsDetail_MAX_LATE_REAL_DAYS.AsVariant;
                      cdsGridDataREAL_OUT_QTY.AsVariant:= cdsDetail_SUM_REAL_QTY.AsVariant;
                      cdsGridDataREAL_OUT_QTY_BC.AsVariant:= cdsDetail_SUM_REAL_QTY_BC.AsVariant;
                      cdsGridDataMAX_REAL_OUT_DATE.AsVariant:= cdsDetail_MAX_REAL_DATE.AsVariant;
                    end;

                  cdsGridData.Post;
                end;  { if }

              if (SL.IndexOf(cdsDetailNOTES.AsString) < 0) then
                SL.Add(cdsDetailNOTES.AsString);

              if (gbLast in cdsDetail.GetGroupState(8)) then
                cdsGridData.SafeEdit/
                  procedure
                  var
                    s: string;
                    Notes: string;
                  begin
                    Notes:= '';
                    for s in SL do
                      Notes:= Notes + SLineBreak + s;

                    if (Pos(SLineBreak, Notes) = 1) then
                      Notes:= Copy(Notes, Length(SLineBreak) + 1, Length(Notes));

                    cdsGridDataNOTES.AsString:= Notes;
                  end;

              cdsDetail.Next;
            end;  { while }

          cdsGridData.MergeChangeLog;

          cdsGridData.First;
          cdsDetail.MasterSource:= dsGridData;
          cdsDetail.MasterFields:=
            'MOVEMENT_PLAN_BEGIN_DATE;MOVEMENT_PLAN_END_DATE;MOVEMENT_DURATION_DAYS;PARTNER_CODE;WORK_FINANCIAL_PRODUCT_CODE;FIN_STORE_CODE;IN_OUT;PARTNER_ACCOUNT_CODE';
          cdsDetail.First;
        finally
          cdsGridData.EnableControls;
          cdsDetail.EnableControls;
        end;  { try }

        CalcAggregates;
      end;
  finally
    FreeAndNil(SL);
  end;
end;

procedure TfmRealFinModelLineGroups.cdsDetailFIN_ORDER_STATUS_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= FinOrderStateDisplayText(Sender.AsInteger, 50, Canvas);
end;

procedure TfmRealFinModelLineGroups.cdsGridDataBeforePost(DataSet: TDataSet);

  procedure CalcPercentField(APercentField, APartField, ATotalField: TField);
  begin
    if (ATotalField.AsFloat = 0) then
      APercentField.Clear
    else
      APercentField.AsFloat:=
        APartField.AsFloat / ATotalField.AsFloat;
  end;  { CalcPercentField }

var
  i: Integer;
begin
  inherited;

  // IN
  CalcPercentField(cdsGridDataLATE_PLAN_IN_QTY_PERCENT, cdsGridDataLATE_PLAN_IN_QTY, cdsGridDataPLAN_IN_QTY);
  CalcPercentField(cdsGridDataLATE_PLAN_IN_QTY_BC_PERCENT, cdsGridDataLATE_PLAN_IN_QTY_BC, cdsGridDataPLAN_IN_QTY_BC);
  CalcPercentField(cdsGridDataLATE_REAL_IN_QTY_PERCENT, cdsGridDataLATE_REAL_IN_QTY, cdsGridDataPLAN_IN_QTY);
  CalcPercentField(cdsGridDataLATE_REAL_IN_QTY_BC_PERCENT, cdsGridDataLATE_REAL_IN_QTY_BC, cdsGridDataPLAN_IN_QTY_BC);

  // OUT
  CalcPercentField(cdsGridDataLATE_PLAN_OUT_QTY_PERCENT, cdsGridDataLATE_PLAN_OUT_QTY, cdsGridDataPLAN_OUT_QTY);
  CalcPercentField(cdsGridDataLATE_PLAN_OUT_QTY_BC_PERCENT, cdsGridDataLATE_PLAN_OUT_QTY_BC, cdsGridDataPLAN_OUT_QTY_BC);
  CalcPercentField(cdsGridDataLATE_REAL_OUT_QTY_PERCENT, cdsGridDataLATE_REAL_OUT_QTY, cdsGridDataPLAN_OUT_QTY);
  CalcPercentField(cdsGridDataLATE_REAL_OUT_QTY_BC_PERCENT, cdsGridDataLATE_REAL_OUT_QTY_BC, cdsGridDataPLAN_OUT_QTY_BC);

  // balance
  cdsGridDataPLAN_QTY.AsVariant:=
    FloatToVar(cdsGridDataPLAN_IN_QTY.AsFloat - cdsGridDataPLAN_OUT_QTY.AsFloat);
  cdsGridDataPLAN_QTY_BC.AsVariant:=
    FloatToVar(cdsGridDataPLAN_IN_QTY_BC.AsFloat - cdsGridDataPLAN_OUT_QTY_BC.AsFloat);
  cdsGridDataREMAINING_QTY.AsVariant:=
    FloatToVar(cdsGridDataREMAINING_IN_QTY.AsFloat - cdsGridDataREMAINING_OUT_QTY.AsFloat);
  cdsGridDataREMAINING_QTY_BC.AsVariant:=
    FloatToVar(cdsGridDataREMAINING_IN_QTY_BC.AsFloat - cdsGridDataREMAINING_OUT_QTY_BC.AsFloat);
  cdsGridDataLATE_PLAN_QTY.AsVariant:=
    FloatToVar(cdsGridDataLATE_PLAN_IN_QTY.AsFloat - cdsGridDataLATE_PLAN_OUT_QTY.AsFloat);
 cdsGridDataLATE_PLAN_QTY_BC.AsVariant:=
    FloatToVar(cdsGridDataLATE_PLAN_IN_QTY_BC.AsFloat - cdsGridDataLATE_PLAN_OUT_QTY_BC.AsFloat);
  cdsGridDataLATE_PLAN_DAYS.AsVariant:=
    FloatToVar(Max(cdsGridDataLATE_PLAN_IN_DAYS.AsInteger, cdsGridDataLATE_PLAN_OUT_DAYS.AsInteger));
  cdsGridDataLATE_REAL_QTY.AsVariant:=
    FloatToVar(cdsGridDataLATE_REAL_IN_QTY.AsFloat - cdsGridDataLATE_REAL_OUT_QTY.AsFloat);
  cdsGridDataLATE_REAL_QTY_BC.AsVariant:=
    FloatToVar(cdsGridDataLATE_REAL_IN_QTY_BC.AsFloat - cdsGridDataLATE_REAL_OUT_QTY_BC.AsFloat);
  cdsGridDataLATE_REAL_DAYS.AsVariant:=
    FloatToVar(Max(cdsGridDataLATE_REAL_IN_DAYS.AsInteger, cdsGridDataLATE_REAL_OUT_DAYS.AsInteger));
  cdsGridDataREAL_QTY.AsVariant:=
    FloatToVar(cdsGridDataREAL_IN_QTY.AsFloat - cdsGridDataREAL_OUT_QTY.AsFloat);
  cdsGridDataREAL_QTY_BC.AsVariant:=
    FloatToVar(cdsGridDataREAL_IN_QTY_BC.AsFloat - cdsGridDataREAL_OUT_QTY_BC.AsFloat);

  if cdsGridDataMAX_REAL_IN_DATE.IsNull and cdsGridDataMAX_REAL_OUT_DATE.IsNull then
    cdsGridDataMAX_REAL_DATE.Clear
  else
    cdsGridDataMAX_REAL_DATE.AsVariant:=
      TDateTime(Max(cdsGridDataMAX_REAL_IN_DATE.AsDateTime, cdsGridDataMAX_REAL_OUT_DATE.AsDateTime));

  CalcPercentField(cdsGridDataLATE_PLAN_QTY_PERCENT, cdsGridDataLATE_PLAN_QTY, cdsGridDataPLAN_QTY);
  CalcPercentField(cdsGridDataLATE_PLAN_QTY_BC_PERCENT, cdsGridDataLATE_PLAN_QTY_BC, cdsGridDataPLAN_QTY_BC);
  CalcPercentField(cdsGridDataLATE_REAL_QTY_PERCENT, cdsGridDataLATE_REAL_QTY, cdsGridDataPLAN_QTY);
  CalcPercentField(cdsGridDataLATE_REAL_QTY_BC_PERCENT, cdsGridDataLATE_REAL_QTY_BC, cdsGridDataPLAN_QTY_BC);
  CalcPercentField(cdsGridDataREAL_IN_QTY_PERCENT, cdsGridDataREAL_IN_QTY, cdsGridDataPLAN_IN_QTY);
  CalcPercentField(cdsGridDataREAL_IN_QTY_BC_PERCENT, cdsGridDataREAL_IN_QTY_BC, cdsGridDataPLAN_IN_QTY_BC);
  CalcPercentField(cdsGridDataREAL_OUT_QTY_PERCENT, cdsGridDataREAL_OUT_QTY, cdsGridDataPLAN_OUT_QTY);
  CalcPercentField(cdsGridDataREAL_OUT_QTY_BC_PERCENT, cdsGridDataREAL_OUT_QTY_BC, cdsGridDataPLAN_OUT_QTY_BC);
  CalcPercentField(cdsGridDataREAL_QTY_PERCENT, cdsGridDataREAL_QTY, cdsGridDataPLAN_QTY);
  CalcPercentField(cdsGridDataREAL_QTY_BC_PERCENT, cdsGridDataREAL_QTY_BC, cdsGridDataPLAN_QTY_BC);

  if FGeneratingMaster.IsEntered then
    for i:= 0 to cdsGridData.FieldCount - 1 do
      if StartsStr('EDIT_', cdsGridData.Fields[i].FieldName) then
        FSettingDateOffsetOrMovementDate.TempEnter /
          procedure begin
            cdsGridData.Fields[i].Assign(
              cdsGridData.FieldByName(Copy(cdsGridData.Fields[i].FieldName, 6, 100)));
          end;

  if not FGeneratingMaster.IsEntered then
    CheckRequiredFields(DataSet,
      'EDIT_MOVEMENT_PLAN_BEGIN_DATE; EDIT_MOVEMENT_DURATION_DAYS; EDIT_MOVEMENT_PLAN_END_DATE; EDIT_FIN_STORE_CODE; EDIT_PARTNER_ACCOUNT_CODE');

  UpdateChildren;
end;

procedure TfmRealFinModelLineGroups.cdsGridDataEDIT_MOVEMENT_DURATION_DAYSChange(
  Sender: TField);
begin
  inherited;
  FSettingDateOffsetOrMovementDate.TempEnter /
    procedure begin
      cdsGridDataEDIT_MOVEMENT_PLAN_END_DATE.AsDateTime:=
        cdsGridDataEDIT_MOVEMENT_PLAN_BEGIN_DATE.AsDateTime +
        cdsGridDataEDIT_MOVEMENT_DURATION_DAYS.AsInteger;
    end;
end;

procedure TfmRealFinModelLineGroups.cdsGridDataEDIT_MOVEMENT_PLAN_BEGIN_DATEChange(
  Sender: TField);
begin
  inherited;
  FSettingDateOffsetOrMovementDate.TempEnter /
    procedure begin
      if not cdsGridDataEDIT_MOVEMENT_PLAN_BEGIN_DATE.IsNull then
        cdsGridDataEDIT_MOVEMENT_PLAN_END_DATE.AsDateTime:=
          cdsGridDataEDIT_MOVEMENT_PLAN_BEGIN_DATE.AsDateTime +
          cdsGridDataEDIT_MOVEMENT_DURATION_DAYS.AsInteger;
    end;
end;

procedure TfmRealFinModelLineGroups.cdsGridDataEDIT_MOVEMENT_PLAN_END_DATEChange(
  Sender: TField);
begin
  inherited;
  FSettingDateOffsetOrMovementDate.TempEnter /
    procedure begin
      if not cdsGridDataEDIT_MOVEMENT_PLAN_END_DATE.IsNull then
        cdsGridDataEDIT_MOVEMENT_PLAN_BEGIN_DATE.AsDateTime:=
          cdsGridDataEDIT_MOVEMENT_PLAN_END_DATE.AsDateTime -
          cdsGridDataEDIT_MOVEMENT_DURATION_DAYS.AsInteger;
    end;
end;

procedure TfmRealFinModelLineGroups.cdsGridDataIN_OUTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
const
  SInOut: array[-1..1] of string = ('®', '', '¬');
begin
  inherited;
  Text:= SInOut[Sender.AsInteger];
end;

procedure TfmRealFinModelLineGroups.CloseDataSets;
begin
  inherited;
  cdsFinProcesses.Close;
end;

procedure TfmRealFinModelLineGroups.FormCreate(Sender: TObject);
begin
  inherited;
  FModelMode:= True;
  FilterFormClass:= TfmRealFinModelLineGroupsFilter;
  EditFormClass:= TfmRealFinModelLineGroup;
  DetailEditFormClass:= TfmFinOrder;

  ReportClass:= TrptRealFinModelLineGroups;
  MasterReportClass:= TrptRealFinModelLineGroups;
  DetailsReportClass:= TrptRealFinModelLineGroups;

  RegisterDateFields(cdsGridData);
  RegisterDateFields(cdsDetail);
  frRealFinModelLineStoreDeals.RFMLObjectBranchCodeField:= cdsDetailRFML_OBJECT_BRANCH_CODE;
  frRealFinModelLineStoreDeals.RFMLObjectCodeField:= cdsDetailRFML_OBJECT_CODE;
end;

function TfmRealFinModelLineGroups.GetApplyKind: TApplyKind;
begin
  Result:= akNone;
end;

procedure TfmRealFinModelLineGroups.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (Column.Field = cdsGridDataPLAN_QTY) or
     (Column.Field = cdsGridDataREMAINING_QTY) or
     (Column.Field = cdsGridDataPLAN_QTY_BC) or
     (Column.Field = cdsGridDataREMAINING_QTY_BC) then
    begin
      if (Column.Field.AsFloat < 0)  then
        AFont.Color:= clRed;
      if (Column.Field.AsFloat > 0)  then
        AFont.Color:= clGreen;
    end;

  if (Column.Field = cdsGridDataIN_OUT) then
    begin
      if (Column.Field.AsFloat < 0)  then
        Background:= $00CCCCFF;
      if (Column.Field.AsFloat > 0)  then
        Background:= $00DCF3D1;
    end;

  if (Column.Field = cdsGridDataWORK_FINANCIAL_PRODUCT_NAME) and
     actBaseCurrency.Checked then
    AFont.Color:= clSilver;
end;

procedure TfmRealFinModelLineGroups.grdDetailGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (Column.Field = cdsDetailPRIORITY_FULL_NAME) then
    begin
      if not cdsDetailPRIORITY_COLOR.IsNull then
        AFont.Color:= cdsDetailPRIORITY_COLOR.AsInteger;
      if not cdsDetailPRIORITY_BACKGROUND_COLOR.IsNull then
        Background:= cdsDetailPRIORITY_BACKGROUND_COLOR.AsInteger;

      Exit;
    end;

  if (Column.Field = cdsDetailPLAN_QTY) or
     (Column.Field = cdsDetailPLAN_QTY_BC) or
     (Column.Field = cdsDetailREMAINING_QTY) or
     (Column.Field = cdsDetailREMAINING_QTY_BC) then
    begin
      if (cdsDetailIN_OUT.AsFloat < 0)  then
        AFont.Color:= clRed;
      if (cdsDetailIN_OUT.AsFloat > 0)  then
        AFont.Color:= clGreen;
      Exit;
    end;

  if cdsDetailBASE_DATA_CHANGED.AsBoolean then
    AFont.Color:= clBlue;
end;

procedure TfmRealFinModelLineGroups.Initialize;
begin
  inherited;
  SetColumns;
end;

class function TfmRealFinModelLineGroups.ManualDetailFetch: Boolean;
begin
  Result:= True;
end;

procedure TfmRealFinModelLineGroups.OpenDataSets;
begin
  cdsFinProcesses.Open;
  inherited;
end;

procedure TfmRealFinModelLineGroups.pdsGridDataParamsHAS_DOCUMENT_IDENTIFIERChange(
  Sender: TField);
begin
  inherited;
  if (Sender.AsInteger <> 1) then
    begin
      pdsGridDataParamsDOCUMENT_IDENTIFIER.Clear;
      pdsGridDataParamsDOCUMENT_BEGIN_DATE.Clear;
      pdsGridDataParamsDOCUMENT_END_DATE.Clear;
    end;
end;

procedure TfmRealFinModelLineGroups.PercentFieldsGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmRealFinModelLineGroups.ProcessGroup(const AActivityCode: Integer;
  const AConfirmActionMessage, ACompleteActionMessage: string;
  const ANeededFinOrderStatusCode: Integer; AFinOrderProcessingFunc: TFinOrderProcessingFunc);
var
  OrdersModified: Boolean;
begin
  LoginContext.CheckUserActivity(AActivityCode);

  ConfirmAction(AConfirmActionMessage);

  Screen.TempCursor(crSQLWait) /
    procedure begin
      OrdersModified:= False;
      try
        pbGroupProcessing.Position:= 0;
        pbGroupProcessing.Max:= cdsDetail.RecordCount;
        pbGroupProcessing.Visible:= (cdsDetail.RecordCount > 1);
        try

          cdsDetail.TempDisableControls /
            cdsDetail.PreserveBookmark /
              cdsDetail.ForEach /
                procedure begin
                  if (cdsDetailFIN_ORDER_STATUS_CODE.AsInteger = ANeededFinOrderStatusCode) and
                     AFinOrderProcessingFunc(cdsDetailFIN_ORDER_CODE.AsInteger) then
                    OrdersModified:= True;

                  pbGroupProcessing.Position:= cdsDetail.RecNo;
                  Application.ProcessMessages;
                  Sleep(500);
                end;
        finally
          pbGroupProcessing.Visible:= False;
        end;

        ShowMessageEx(ACompleteActionMessage);
      finally
        if OrdersModified then
          RefreshData;
      end;
    end;
end;

procedure TfmRealFinModelLineGroups.RefreshData;
var
  cdsGridDataKey: Variant;
  cdsDetailKey: Variant;
  cdsGridDataKeyFields: string;
begin
  Screen.TempCursor(crSQLWait) /
    cdsGridData.TempDisableControls /
      cdsDetail.TempDisableControls /
        procedure begin
          cdsGridDataKey:=
            VarArrayOf([
              cdsGridDataEDIT_MOVEMENT_PLAN_BEGIN_DATE.AsVariant,
              cdsGridDataEDIT_MOVEMENT_PLAN_END_DATE.AsVariant,
              cdsGridDataEDIT_MOVEMENT_DURATION_DAYS.AsVariant,
              cdsGridDataPARTNER_CODE.AsVariant,
              cdsGridDataWORK_FINANCIAL_PRODUCT_CODE.AsVariant,
              cdsGridDataEDIT_FIN_STORE_CODE.AsVariant,
              cdsGridDataIN_OUT.AsVariant,
              cdsGridDataEDIT_PARTNER_ACCOUNT_CODE.AsVariant
            ]);
          cdsDetailKey:=
            VarArrayOf([
              cdsDetailRFML_OBJECT_BRANCH_CODE.AsVariant,
              cdsDetailRFML_OBJECT_CODE.AsVariant
            ]);

          cdsGridData.Close;
          cdsGridData.CreateDataSet;

          cdsDetail.Close;
          cdsDetail.Open;

          cdsGridDataKeyFields:=
            'EDIT_MOVEMENT_PLAN_BEGIN_DATE;EDIT_MOVEMENT_PLAN_END_DATE;EDIT_MOVEMENT_DURATION_DAYS;' +
            'PARTNER_CODE;WORK_FINANCIAL_PRODUCT_CODE;EDIT_FIN_STORE_CODE;IN_OUT;EDIT_PARTNER_ACCOUNT_CODE';

          if cdsGridData.Locate(cdsGridDataKeyFields, cdsGridDataKey, [])  then
            cdsDetail.Locate('RFML_OBJECT_BRANCH_CODE;RFML_OBJECT_CODE', cdsDetailKey, []);
        end;
end;

procedure TfmRealFinModelLineGroups.SetColumns;

  procedure SetBaseCurrencyColumns(AColumns: TDBGridColumnsEh);
  var
    i: Integer;
    s: string;
  begin
    for i:= 0 to AColumns.Count - 1 do
      begin
        s:= AColumns[i].FieldName;
        s:= StringReplace(s, 'QTY_BC', 'QTY', []);
        if actBaseCurrency.Checked then
          s:= StringReplace(s, 'QTY', 'QTY_BC', []);
        AColumns[i].FieldName:= s;
      end;  { for }
  end;  { SetBaseCurrencyColumns }

begin
  grdData.Columns.BeginUpdate;
  try
    // PLAN_IN_QTY
    grdData.Columns[5].Visible:= not actBalance.Checked;
    // REMAINING_IN_QTY
    grdData.Columns[6].Visible:= not actBalance.Checked;
    // LATE_PLAN_IN_QTY
    grdData.Columns[7].Visible:= (not actBalance.Checked) and actLatePlan.Checked and (not actPercent.Checked);
    // LATE_PLAN_IN_QTY_PERCENT
    grdData.Columns[8].Visible:= (not actBalance.Checked) and actLatePlan.Checked and actPercent.Checked;
    // LATE_PLAN_IN_DAYS
    grdData.Columns[9].Visible:= (not actBalance.Checked) and actLatePlan.Checked;
    // LATE_REAL_IN_QTY
    grdData.Columns[10].Visible:= (not actBalance.Checked) and actLateReal.Checked and (not actPercent.Checked);
    // LATE_REAL_IN_QTY_PERCENT
    grdData.Columns[11].Visible:= (not actBalance.Checked) and actLateReal.Checked and actPercent.Checked;
    // LATE_REAL_IN_DAYS
    grdData.Columns[12].Visible:= (not actBalance.Checked) and actLateReal.Checked;
    // REAL_IN_QTY
    grdData.Columns[13].Visible:= (not actBalance.Checked) and actReal.Checked and (not actPercent.Checked);
    // REAL_IN_QTY_PERCENT
    grdData.Columns[14].Visible:= (not actBalance.Checked) and actReal.Checked and actPercent.Checked;
    // MAX_REAL_IN_DATE
    grdData.Columns[15].Visible:= (not actBalance.Checked) and actReal.Checked;
    // PLAN_OUT_QTY
    grdData.Columns[16].Visible:= not actBalance.Checked;
    // REMAINING_OUT_QTY
    grdData.Columns[17].Visible:= not actBalance.Checked;
    // LATE_PLAN_OUT_QTY
    grdData.Columns[18].Visible:= (not actBalance.Checked) and actLatePlan.Checked and (not actPercent.Checked);
    // LATE_PLAN_OUT_QTY_PERCENT
    grdData.Columns[19].Visible:= (not actBalance.Checked) and actLatePlan.Checked and actPercent.Checked;
    // LATE_PLAN_OUT_DAYS
    grdData.Columns[20].Visible:= (not actBalance.Checked) and actLatePlan.Checked;
    // LATE_REAL_OUT_QTY
    grdData.Columns[21].Visible:= (not actBalance.Checked) and actLateReal.Checked and (not actPercent.Checked);
    // LATE_REAL_OUT_QTY_PERCENT
    grdData.Columns[22].Visible:= (not actBalance.Checked) and actLateReal.Checked and actPercent.Checked;
    // LATE_REAL_OUT_DAYS
    grdData.Columns[23].Visible:= (not actBalance.Checked) and actLateReal.Checked;
    // REAL_OUT_QTY
    grdData.Columns[24].Visible:= (not actBalance.Checked) and actReal.Checked and (not actPercent.Checked);
    // REAL_OUT_QTY_PERCENT
    grdData.Columns[25].Visible:= (not actBalance.Checked) and actReal.Checked and actPercent.Checked;
    // MAX_REAL_OUT_DATE
    grdData.Columns[26].Visible:= (not actBalance.Checked) and actReal.Checked;
    // PLAN_QTY
    grdData.Columns[27].Visible:= actBalance.Checked;
    // REMAINING_QTY
    grdData.Columns[28].Visible:= actBalance.Checked;
    // LATE_PLAN_QTY
    grdData.Columns[29].Visible:= actBalance.Checked and actLatePlan.Checked and (not actPercent.Checked);
    // LATE_PLAN_QTY_PERCENT
    grdData.Columns[30].Visible:= actBalance.Checked and actLatePlan.Checked and actPercent.Checked;
    // LATE_PLAN_DAYS
    grdData.Columns[31].Visible:= actBalance.Checked and actLatePlan.Checked;
    // LATE_REAL_QTY
    grdData.Columns[32].Visible:= actBalance.Checked and actLateReal.Checked and (not actPercent.Checked);
    // LATE_REAL_QTY_PERCENT
    grdData.Columns[33].Visible:= actBalance.Checked and actLateReal.Checked and actPercent.Checked;
    // LATE_REAL_DAYS
    grdData.Columns[34].Visible:= actBalance.Checked and actLateReal.Checked;
    // LATE_REAL_QTY
    grdData.Columns[35].Visible:= actBalance.Checked and actReal.Checked and (not actPercent.Checked);
    // LATE_REAL_QTY_PERCENT
    grdData.Columns[36].Visible:= actBalance.Checked and actReal.Checked and actPercent.Checked;
    // MAX_REAL_DATE
    grdData.Columns[37].Visible:= actBalance.Checked and actReal.Checked;
    // FIN_STORE_IDENTIFIER
    grdData.Columns[38].Visible:= not actNotes.Checked;
    // IN_OUT
    grdData.Columns[39].Visible:= not actNotes.Checked;
    // PARTNER_ACCOUNT_FULL_NAME
    grdData.Columns[40].Visible:= not actNotes.Checked;
      // NOTES
    grdData.Columns[41].Visible:= actNotes.Checked;

    SetBaseCurrencyColumns(grdData.Columns);
  finally
    grdData.Columns.EndUpdate;
  end;

  grdDetail.Columns.BeginUpdate;
  try
    // LATE_PLAN_QTY
    grdDetail.Columns[8].Visible:= actLatePlan.Checked and (not actPercent.Checked);
    // LATE_PLAN_QTY_PERCENT
    grdDetail.Columns[9].Visible:= actLatePlan.Checked and actPercent.Checked;
    // LATE_PLAN_DAYS
    grdDetail.Columns[10].Visible:= actLatePlan.Checked;
    // LATE_REAL_QTY
    grdDetail.Columns[11].Visible:= actLateReal.Checked and (not actPercent.Checked);
    // LATE_REAL_QTY_PERCENT
    grdDetail.Columns[12].Visible:= actLateReal.Checked and actPercent.Checked;
    // LATE_REAL_DAYS
    grdDetail.Columns[13].Visible:= actLateReal.Checked;
    // REAL_QTY
    grdDetail.Columns[14].Visible:= actReal.Checked and (not actPercent.Checked);
    // REAL_QTY_PERCENT
    grdDetail.Columns[15].Visible:= actReal.Checked and actPercent.Checked;
    // MAX_REAL_DATE
    grdDetail.Columns[16].Visible:= actReal.Checked;
    // BND_PROCESS_OBJECT_INFO
    grdDetail.Columns[18].Visible:= not actNotes.Checked;
    // FIN_MODEL_LINE_REASON_ABBREV
    grdDetail.Columns[19].Visible:= not actNotes.Checked;
    // DOCUMENT_IDENTIFIER
    grdDetail.Columns[20].Visible:= not actNotes.Checked;
    // DOCUMENT_DATE
    grdDetail.Columns[21].Visible:= not actNotes.Checked;
    // NOTES
    grdDetail.Columns[22].Visible:= actNotes.Checked;

    SetBaseCurrencyColumns(grdDetail.Columns);
  finally
    grdDetail.Columns.EndUpdate;
  end;
end;

function TfmRealFinModelLineGroups.ShowDetailEditForm(AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin): Boolean;

  function GetDetailRecordReadOnly: Boolean;
  begin
    if FModelMode then
      Result:=
        not LoginContext.HasAnyUserActivity(RealFinancialModelEditActivities)
    else
      Result:=
        not LoginContext.HasUserActivity(uaFinancialOrderEdit);
  end;  { GetDetailRecordReadOnly }                            

begin
  if (AEditMode = emEdit) and GetDetailRecordReadOnly then
    AEditMode:= emReadOnly;

  Result:=
    TfmFinOrder.ShowForm(nil, cdsDetail, AEditMode, doNone, True, FModelMode,
      cdsDetailRFML_OBJECT_BRANCH_CODE.AsInteger, cdsDetailRFML_OBJECT_CODE.AsInteger);
end;

function TfmRealFinModelLineGroups.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  LoginContext.CheckUserActivity(uaRealFinancialModelEdit);

  Result:= inherited ShowEditForm(AEditMode);

  if Result then
    RefreshData
  else
    begin
      cdsDetail.CancelUpdates;
      cdsGridData.CancelUpdates;
    end;
end;

procedure TfmRealFinModelLineGroups.UpdateChildren;
begin
  FGeneratingMaster.TempEnter /
    cdsDetail.TempDisableControls /
      procedure begin
        while True do
          begin
            cdsDetail.First;
            while (not cdsDetail.Eof) and cdsDetailIS_MODIFIED.AsBoolean do
              cdsDetail.Next;

            if (cdsDetail.RecordCount = 0) or cdsDetailIS_MODIFIED.AsBoolean then
              Break;

            cdsDetail.SafeEdit /
              procedure begin
                cdsDetailFIN_STORE_CODE.Assign(cdsGridDataEDIT_FIN_STORE_CODE);
                cdsDetailPARTNER_ACCOUNT_CODE.Assign(cdsGridDataEDIT_PARTNER_ACCOUNT_CODE);
                cdsDetailMOVEMENT_PLAN_BEGIN_DATE.Assign(cdsGridDataEDIT_MOVEMENT_PLAN_BEGIN_DATE);
                cdsDetailMOVEMENT_PLAN_END_DATE.Assign(cdsGridDataEDIT_MOVEMENT_PLAN_END_DATE);
                cdsDetailMOVEMENT_DURATION_DAYS.Assign(cdsGridDataEDIT_MOVEMENT_DURATION_DAYS);

                case IntToFMMovementOffsetType(cdsDetailFM_MOVEMENT_OFFSET_TYPE_CODE.AsInteger) of
                  fmmotBeginning:
                    cdsDetailMOVEMENT_OFFSET_DAYS.AsInteger:=
                      Trunc(cdsDetailMOVEMENT_PLAN_BEGIN_DATE.AsDateTime - cdsDetailBASE_DATE.AsDateTime);

                  fmmotEnd:
                    cdsDetailMOVEMENT_OFFSET_DAYS.AsInteger:=
                      Trunc(cdsDetailMOVEMENT_PLAN_END_DATE.AsDateTime - cdsDetailBASE_DATE.AsDateTime);
                end;

                cdsDetailIS_MODIFIED.AsBoolean:= True;
              end
          end;

        Screen.TempCursor(crSQLWait) /
          procedure begin
            if (cdsDetail.ApplyUpdates(0) > 0) then
              Abort;
          end;
      end;
end;

end.
