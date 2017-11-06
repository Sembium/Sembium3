unit fFinOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient, AbmesClientDataSet, Buttons,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  StdCtrls, uClientTypes, Menus, DBGridEhGrouping, fBaseFrame, fFinModelLineStoreDeals,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL,
  DBAxisGridsEh;

type
  TfmFinOrders = class(TMasterDetailForm)
    pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsFIN_ORDER_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsFIN_ORDER_NO: TAbmesFloatField;
    pdsGridDataParamsBEGIN_MOVEMENT_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_MOVEMENT_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEXEC_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_BASE_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_BASE_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsHAS_DOCUMENT_IDENTIFIER: TAbmesFloatField;
    pdsGridDataParamsDOCUMENT_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParamsFIN_PROCESS_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_NO: TAbmesFloatField;
    pdsGridDataParamsSALE_SHIPMENT_NO: TAbmesFloatField;
    pdsGridDataParamsDCD_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsFinProcesses: TAbmesClientDataSet;
    cdsFinProcessesPROCESS_CODE: TAbmesFloatField;
    cdsFinProcessesPROCESS_ABBREV: TAbmesWideStringField;
    cdsFinProcessesPROCESS_NAME: TAbmesWideStringField;
    cdsFinProcessesPROCESS_NO: TAbmesFloatField;
    cdsFinProcessesIS_MANUALLY_USABLE: TAbmesFloatField;
    pdsGridDataParams_FIN_PROCESS_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsDCD_CODE: TAbmesFloatField;
    cdsGridDataFIN_ORDER_CODE: TAbmesFloatField;
    cdsGridDataSTATUS_CODE: TAbmesFloatField;
    cdsGridDataFIN_PROCESS_ABBREV: TAbmesWideStringField;
    cdsGridDataFIN_ORDER_BRANCH_NO: TAbmesFloatField;
    cdsGridDataFIN_ORDER_NO: TAbmesFloatField;
    cdsGridDataFIN_ORDER_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataBEGIN_DATE_DIFF: TAbmesFloatField;
    cdsGridDataMODEL_DURATION_DAYS: TAbmesFloatField;
    cdsGridDataEXEC_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataWORK_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPLAN_IN_QTY: TAbmesFloatField;
    cdsGridDataREMAINING_IN_QTY: TAbmesFloatField;
    cdsGridDataLATE_PLAN_IN_QTY: TAbmesFloatField;
    cdsGridDataLATE_PLAN_IN_QTY_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_PLAN_IN_DAYS: TAbmesFloatField;
    cdsGridDataLATE_REAL_IN_QTY: TAbmesFloatField;
    cdsGridDataLATE_REAL_IN_QTY_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_REAL_IN_DAYS: TAbmesFloatField;
    cdsGridDataPLAN_OUT_QTY: TAbmesFloatField;
    cdsGridDataREMAINING_OUT_QTY: TAbmesFloatField;
    cdsGridDataLATE_PLAN_OUT_QTY: TAbmesFloatField;
    cdsGridDataLATE_PLAN_OUT_QTY_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_PLAN_OUT_DAYS: TAbmesFloatField;
    cdsGridDataLATE_REAL_OUT_QTY: TAbmesFloatField;
    cdsGridDataLATE_REAL_OUT_QTY_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_REAL_OUT_DAYS: TAbmesFloatField;
    cdsGridDataPLAN_QTY: TAbmesFloatField;
    cdsGridDataREMAINING_QTY: TAbmesFloatField;
    cdsGridDataLATE_PLAN_QTY: TAbmesFloatField;
    cdsGridDataLATE_PLAN_QTY_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_PLAN_DAYS: TAbmesFloatField;
    cdsGridDataLATE_REAL_QTY: TAbmesFloatField;
    cdsGridDataLATE_REAL_QTY_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_REAL_DAYS: TAbmesFloatField;
    cdsGridDataPARTNER_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataFIN_CLASS_NAME: TAbmesWideStringField;
    cdsDetailRFML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDetailRFML_OBJECT_CODE: TAbmesFloatField;
    cdsDetailFIN_ORDER_CODE: TAbmesFloatField;
    cdsDetailFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsDetailFIN_MODEL_LINE_NO: TAbmesFloatField;
    cdsDetailSHOW_NO: TAbmesWideStringField;
    cdsDetailLINE_QTY_PERCENT: TAbmesFloatField;
    cdsDetailPLAN_QTY: TAbmesFloatField;
    cdsDetailREMAINING_QTY: TAbmesFloatField;
    cdsDetailLATE_PLAN_QTY: TAbmesFloatField;
    cdsDetailLATE_PLAN_QTY_PERCENT: TAbmesFloatField;
    cdsDetailLATE_PLAN_DAYS: TAbmesFloatField;
    cdsDetailLATE_REAL_QTY: TAbmesFloatField;
    cdsDetailLATE_REAL_QTY_PERCENT: TAbmesFloatField;
    cdsDetailLATE_REAL_DAYS: TAbmesFloatField;
    cdsDetailFIN_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsDetailIN_OUT: TAbmesFloatField;
    cdsDetailMOVEMENT_DURATION_DAYS: TAbmesFloatField;
    cdsDetailFIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField;
    actRealLate: TAction;
    actPercent: TAction;
    tlbMasterToggles: TToolBar;
    btnRealLate: TToolButton;
    btnPercent: TToolButton;
    actBalance: TAction;
    btnBalance: TToolButton;
    cdsFinOrderBndObject: TAbmesClientDataSet;
    actBndProcessObject: TAction;
    cdsFinOrderBndObjectFIN_ORDER_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectSALE_OBJECT_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectSALE_SHIPMENT_NO: TAbmesFloatField;
    cdsFinOrderBndObjectDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectDCD_OBJECT_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectREQUEST_NO: TAbmesFloatField;
    pnlMasterButtons: TPanel;
    btnAddData: TBitBtn;
    btnEditData: TBitBtn;
    btnFinModel: TBitBtn;
    actFinModel: TAction;
    btnBndProcessObject: TBitBtn;
    cdsDetailPARTNER_ACCOUNT_FULL_NAME: TAbmesWideStringField;
    cdsGridDataPLAN_IN_QTY_BC: TAbmesFloatField;
    cdsGridDataREMAINING_IN_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_PLAN_IN_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_PLAN_IN_QTY_BC_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_REAL_IN_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_REAL_IN_QTY_BC_PERCENT: TAbmesFloatField;
    cdsGridDataPLAN_OUT_QTY_BC: TAbmesFloatField;
    cdsGridDataREMAINING_OUT_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_PLAN_OUT_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_PLAN_OUT_QTY_BC_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_REAL_OUT_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_REAL_OUT_QTY_BC_PERCENT: TAbmesFloatField;
    cdsGridDataPLAN_QTY_BC: TAbmesFloatField;
    cdsGridDataREMAINING_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_PLAN_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_PLAN_QTY_BC_PERCENT: TAbmesFloatField;
    cdsGridDataLATE_REAL_QTY_BC: TAbmesFloatField;
    cdsGridDataLATE_REAL_QTY_BC_PERCENT: TAbmesFloatField;
    cdsDetailPLAN_QTY_BC: TAbmesFloatField;
    cdsDetailREMAINING_QTY_BC: TAbmesFloatField;
    cdsDetailLATE_PLAN_QTY_BC: TAbmesFloatField;
    cdsDetailLATE_PLAN_QTY_BC_PERCENT: TAbmesFloatField;
    cdsDetailLATE_REAL_QTY_BC: TAbmesFloatField;
    cdsDetailLATE_REAL_QTY_BC_PERCENT: TAbmesFloatField;
    actBaseCurrency: TAction;
    sepBaseCurrency: TToolButton;
    btnBaseCurrency: TToolButton;
    cdsGridDataWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    cdsGridData_MAX_WORK_FINANCIAL_PRODUCT_CODE: TAggregateField;
    cdsGridData_MIN_WORK_FINANCIAL_PRODUCT_CODE: TAggregateField;
    pdsGridDataParamsWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsGridDataPRIORITY_COLOR: TAbmesFloatField;
    cdsGridDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_CODE: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    pdsGridDataParamsBOI_ORDER_CODE: TAbmesFloatField;
    pdsGridDataParamsBND_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsFIN_CLASS_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectBOI_ORDER_CODE: TAbmesFloatField;
    cdsGridDataDOCUMENT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDOCUMENT_DATE: TAbmesSQLTimeStampField;
    actInvoice: TAction;
    btnInvoice: TToolButton;
    cdsGridDataBASE_DATA_CHANGED: TAbmesFloatField;
    cdsGridDataPARTNER_NAME: TAbmesWideStringField;
    pdsGridDataParamsBND_BUDGET_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsDOCUMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsDOCUMENT_END_DATE: TAbmesSQLTimeStampField;
    sepInvoice: TToolButton;
    cdsGridDataBND_PROCESS_OBJECT_INFO: TAbmesWideStringField;
    actBndProcessObjectInfo: TAction;
    btnBndProcessObjectInfo: TToolButton;
    actPartner: TAction;
    btnPartner: TToolButton;
    cdsGridDataBASE_DATE: TAbmesSQLTimeStampField;
    actBaseDate: TAction;
    sepRealLate: TToolButton;
    btnBaseDate: TToolButton;
    cdsDetailMOVEMENT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDetailMOVEMENT_PLAN_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsALL_FILTERED_COMPANIES: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    pdsGridDataParamsREQUEST_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsREQUEST_NO: TAbmesFloatField;
    frRealFinModelLineStoreDeals: TfrRealFinModelLineStoreDeals;
    cdsGridDataNOTES: TAbmesWideStringField;
    actNotes: TAction;
    btnNotes: TToolButton;
    pdsGridDataParamsIN_OUT: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure actRealLateExecute(Sender: TObject);
    procedure actPercentExecute(Sender: TObject);
    procedure actBalanceExecute(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure PercentFieldsGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataSTATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDetailIN_OUTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure grdDetailGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actBndProcessObjectUpdate(Sender: TObject);
    procedure actBndProcessObjectExecute(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
    procedure actFinModelUpdate(Sender: TObject);
    procedure actFinModelExecute(Sender: TObject);
    procedure grdDetailDblClick(Sender: TObject);
    procedure actBaseCurrencyExecute(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsFIN_PROCESS_CODEChange(Sender: TField);
    procedure actInsertRecordExecute(Sender: TObject);
    procedure actInvoiceExecute(Sender: TObject);
    procedure actBndProcessObjectInfoExecute(Sender: TObject);
    procedure actPartnerExecute(Sender: TObject);
    procedure pdsGridDataParamsHAS_DOCUMENT_IDENTIFIERChange(Sender: TField);
    procedure actBaseDateExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);
  private
    FModelMode: Boolean;
    procedure SetColumns;
    procedure CalcAggregates;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function GetGridRecordReadOnly: Boolean; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uClientUtils, fFinOrdersFilter, fFinOrder, uFinanceClientUtils, fSale,
  fDelivery, fGroupSale, fEditForm, uUtils, fBOICompanyOrder,
  uUserActivityConsts, Math, rFinOrders, uAbmesDBGridHelpers;

{$R *.dfm}

{ TfmFinOrders }

procedure TfmFinOrders.actBalanceExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetColumns;
end;

procedure TfmFinOrders.actBaseCurrencyExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetColumns;
  CalcAggregates;
end;

procedure TfmFinOrders.actBaseDateExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetColumns;
end;

procedure TfmFinOrders.actBndProcessObjectExecute(Sender: TObject);
var
  BndProcessObjectFormClass: TEditFormClass;
begin
  inherited;

  cdsFinOrderBndObject.Params.ParamByName('FIN_ORDER_CODE').AsInteger:=
    cdsGridDataFIN_ORDER_CODE.AsInteger;
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

procedure TfmFinOrders.actBndProcessObjectInfoExecute(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= True;
  ((Sender as TAction).ActionComponent as TToolButton).Down:= True;
  SetColumns;
end;

procedure TfmFinOrders.actBndProcessObjectUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    not cdsGridDataBND_PROCESS_OBJECT_IDENTIFIER.IsNull;
end;

procedure TfmFinOrders.actFinModelExecute(Sender: TObject);
begin
  inherited;
  FModelMode:= True;
  try
    actEditRecord.Execute;
  finally
    FModelMode:= False;
  end;
end;

procedure TfmFinOrders.actFinModelUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    not cdsGridData.IsEmpty;
end;

procedure TfmFinOrders.actInsertRecordExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaNewFinancialOrder);
  inherited;
end;

procedure TfmFinOrders.actInvoiceExecute(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= True;
  ((Sender as TAction).ActionComponent as TToolButton).Down:= True;
  SetColumns;
end;

procedure TfmFinOrders.actNotesExecute(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= True;
  ((Sender as TAction).ActionComponent as TToolButton).Down:= True;
  SetColumns;
end;

procedure TfmFinOrders.actPartnerExecute(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= True;
  ((Sender as TAction).ActionComponent as TToolButton).Down:= True;
  SetColumns;
end;

procedure TfmFinOrders.actPercentExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetColumns;
end;

procedure TfmFinOrders.actPrintExecute(Sender: TObject);
var
  OldAfterScroll: TDataSetNotifyEvent;
  cdsPrintTotals: TAbmesClientDataSet;

  procedure GeneratePrintTotals;
  var
    c: TColumnEh;
  begin
    for c in grdData.AllColumns do
      cdsPrintTotals.FieldDefs.Add(c.FieldName, ftWideString, 100);

    cdsPrintTotals.CreateDataSet;

    cdsPrintTotals.Append;
    try
      for c in grdData.AllColumns do
        with cdsPrintTotals.FieldByName(c.FieldName) do
          begin
            AsString:= c.Footer.Value;
            Alignment:= c.Footer.Alignment;
          end;

      cdsPrintTotals.Post;
    except
      cdsPrintTotals.Cancel;
      raise;
    end;
  end;

begin
  OldAfterScroll:= cdsGridData.AfterScroll;
  cdsGridData.AfterScroll:= nil;
  try
    cdsPrintTotals:= TAbmesClientDataSet.Create(nil);
    try
      GeneratePrintTotals;
      TrptFinOrders.PrintReport(cdsGridData, cdsPrintTotals, False, actBaseCurrency.Checked);
    finally
      FreeAndNil(cdsPrintTotals);
    end;
  finally
    cdsGridData.AfterScroll:= OldAfterScroll;
  end;
end;

procedure TfmFinOrders.actRealLateExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetColumns;
end;

procedure TfmFinOrders.cdsDetailIN_OUTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
const
  SInOut: array[-1..1] of string = ('®', '', '¬');
begin
  inherited;
  Text:= SInOut[Sender.AsInteger];
end;

procedure TfmFinOrders.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CalcAggregates;
end;

procedure TfmFinOrders.cdsGridDataSTATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= FinOrderStateDisplayText(Sender.AsInteger, 50, Canvas);
end;

procedure TfmFinOrders.CloseDataSets;
begin
  inherited;
  cdsFinProcesses.Close;
end;

procedure TfmFinOrders.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmFinOrdersFilter;
  EditFormClass:= TfmFinOrder;
  ReportClass:= TrptFinOrders;
  RegisterDateFields(cdsGridData);
  RegisterDateFields(cdsDetail);
  frRealFinModelLineStoreDeals.RFMLObjectBranchCodeField:= cdsDetailRFML_OBJECT_BRANCH_CODE;
  frRealFinModelLineStoreDeals.RFMLObjectCodeField:= cdsDetailRFML_OBJECT_CODE;
end;

function TfmFinOrders.GetGridRecordReadOnly: Boolean;
begin
  if FModelMode then
    Result:=
      not LoginContext.HasAnyUserActivity(RealFinancialModelEditActivities)
  else
    Result:=
      inherited GetGridRecordReadOnly or
      not LoginContext.HasUserActivity(uaFinancialOrderEdit);
end;

procedure TfmFinOrders.grdDataDblClick(Sender: TObject);
begin
  if (grdData.Col = grdData.Columns.Count) then
    actBndProcessObject.Execute
  else
    inherited;
end;

procedure TfmFinOrders.grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  inherited;

  if (Column.Field = cdsGridDataPLAN_QTY) or
     ( (Column.Field = cdsGridDataREMAINING_QTY) and
       (Sign(cdsGridDataREMAINING_QTY.AsFloat) = Sign(cdsGridDataPLAN_QTY.AsFloat)) ) then
    begin
      if (LargeZero(Column.Field.AsFloat) < 0)  then
        AFont.Color:= clRed;
      if (LargeZero(Column.Field.AsFloat) > 0)  then
        AFont.Color:= clGreen;

      Exit;
    end;

  if (Column.Field = cdsGridDataPRIORITY_FULL_NAME) then
    begin
      if not cdsGridDataPRIORITY_COLOR.IsNull then
        AFont.Color:= cdsGridDataPRIORITY_COLOR.AsInteger;
      if not cdsGridDataPRIORITY_BACKGROUND_COLOR.IsNull then
        Background:= cdsGridDataPRIORITY_BACKGROUND_COLOR.AsInteger;

      Exit;
    end;

  if cdsGridDataBASE_DATA_CHANGED.AsBoolean then
    AFont.Color:= clBlue;

  if (Column.Field = cdsGridDataWORK_FINANCIAL_PRODUCT_NAME) and
     actBaseCurrency.Checked then
    AFont.Color:= clSilver;
end;

procedure TfmFinOrders.grdDetailDblClick(Sender: TObject);
begin
//  inherited;
  actFinModel.Execute;
end;

procedure TfmFinOrders.grdDetailGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

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

  if (Column.Field = cdsDetailIN_OUT) then
    begin
      if (Column.Field.AsFloat < 0)  then
        Background:= $00CCCCFF;
      if (Column.Field.AsFloat > 0)  then
        Background:= $00DCF3D1;

      Exit;
    end;
end;

procedure TfmFinOrders.Initialize;
begin
  inherited;
  SetColumns;
end;

procedure TfmFinOrders.OpenDataSets;
begin
  cdsFinProcesses.Open;
  inherited;
end;

procedure TfmFinOrders.pdsGridDataParamsFIN_PROCESS_CODEChange(Sender: TField);
begin
  inherited;
  pdsGridDataParamsBND_PRODUCT_CODE.Clear;
end;

procedure TfmFinOrders.pdsGridDataParamsHAS_DOCUMENT_IDENTIFIERChange(
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

procedure TfmFinOrders.PercentFieldsGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmFinOrders.SetColumns;

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
    // PLAN_BEGIN_DATE
    grdData.Columns[4].Visible:= not actBaseDate.Checked;
    // BEGIN_DATE_DIFF
    grdData.Columns[5].Visible:= not actBaseDate.Checked;
    // BASE_DATE
    grdData.Columns[6].Visible:= actBaseDate.Checked;
    // PLAN_IN_QTY
    grdData.Columns[9].Visible:= not actBalance.Checked;
    // REMAINING_IN_QTY
    grdData.Columns[10].Visible:= not actBalance.Checked;
    // LATE_PLAN_IN_QTY
    grdData.Columns[11].Visible:= (not actBalance.Checked) and (not actRealLate.Checked) and (not actPercent.Checked);
    // LATE_PLAN_IN_QTY_PERCENT
    grdData.Columns[12].Visible:= (not actBalance.Checked) and (not actRealLate.Checked) and actPercent.Checked;
    // LATE_PLAN_IN_DAYS
    grdData.Columns[13].Visible:= (not actBalance.Checked) and (not actRealLate.Checked);
    // LATE_REAL_IN_QTY
    grdData.Columns[14].Visible:= (not actBalance.Checked) and actRealLate.Checked and (not actPercent.Checked);
    // LATE_REAL_IN_QTY_PERCENT
    grdData.Columns[15].Visible:= (not actBalance.Checked) and actRealLate.Checked and actPercent.Checked;
    // LATE_REAL_IN_DAYS
    grdData.Columns[16].Visible:= (not actBalance.Checked) and actRealLate.Checked;
    // PLAN_OUT_QTY
    grdData.Columns[17].Visible:= not actBalance.Checked;
    // REMAINING_OUT_QTY
    grdData.Columns[18].Visible:= not actBalance.Checked;
    // LATE_PLAN_OUT_QTY
    grdData.Columns[19].Visible:= (not actBalance.Checked) and (not actRealLate.Checked) and (not actPercent.Checked);
    // LATE_PLAN_OUT_QTY_PERCENT
    grdData.Columns[20].Visible:= (not actBalance.Checked) and (not actRealLate.Checked) and actPercent.Checked;
    // LATE_PLAN_OUT_DAYS
    grdData.Columns[21].Visible:= (not actBalance.Checked) and (not actRealLate.Checked);
    // LATE_REAL_OUT_QTY
    grdData.Columns[22].Visible:= (not actBalance.Checked) and actRealLate.Checked and (not actPercent.Checked);
    // LATE_REAL_OUT_QTY_PERCENT
    grdData.Columns[23].Visible:= (not actBalance.Checked) and actRealLate.Checked and actPercent.Checked;
    // LATE_REAL_OUT_DAYS
    grdData.Columns[24].Visible:= (not actBalance.Checked) and actRealLate.Checked;
    // PLAN_QTY
    grdData.Columns[25].Visible:= actBalance.Checked;
    // REMAINING_QTY
    grdData.Columns[26].Visible:= actBalance.Checked;
    // LATE_PLAN_QTY
    grdData.Columns[27].Visible:= actBalance.Checked and (not actRealLate.Checked) and (not actPercent.Checked);
    // LATE_PLAN_QTY_PERCENT
    grdData.Columns[28].Visible:= actBalance.Checked and (not actRealLate.Checked) and actPercent.Checked;
    // LATE_PLAN_DAYS
    grdData.Columns[29].Visible:= actBalance.Checked and (not actRealLate.Checked);
    // LATE_REAL_QTY
    grdData.Columns[30].Visible:= actBalance.Checked and actRealLate.Checked and (not actPercent.Checked);
    // LATE_REAL_QTY_PERCENT
    grdData.Columns[31].Visible:= actBalance.Checked and actRealLate.Checked and actPercent.Checked;
    // LATE_REAL_DAYS
    grdData.Columns[32].Visible:= actBalance.Checked and actRealLate.Checked;
    // PARTNER_NAME
    grdData.Columns[33].Visible:= actPartner.Checked;
    // PARTNER_SHORT_NAME
    grdData.Columns[34].Visible:= False;
    // BND_PROCESS_OBJECT_IDENTIFIER
    grdData.Columns[35].Visible:= actPartner.Checked;
    // DOCUMENT_IDENTIFIER
    grdData.Columns[36].Visible:= actInvoice.Checked;
    // DOCUMENT_DATE
    grdData.Columns[37].Visible:= actInvoice.Checked;
    // BND_PROCESS_OBJECT_INFO
    grdData.Columns[38].Visible:= actBndProcessObjectInfo.Checked;
    // NOTES
    grdData.Columns[39].Visible:= actNotes.Checked;

    SetBaseCurrencyColumns(grdData.Columns);
  finally
    grdData.Columns.EndUpdate;
  end;

  grdDetail.Columns.BeginUpdate;
  try
    // LATE_PLAN_QTY
    grdDetail.Columns[4].Visible:= (not actRealLate.Checked) and (not actPercent.Checked);
    // LATE_PLAN_QTY_PERCENT
    grdDetail.Columns[5].Visible:= (not actRealLate.Checked) and actPercent.Checked;
    // LATE_PLAN_DAYS
    grdDetail.Columns[6].Visible:= (not actRealLate.Checked);
    // LATE_REAL_QTY
    grdDetail.Columns[7].Visible:= actRealLate.Checked and (not actPercent.Checked);
    // LATE_REAL_QTY_PERCENT
    grdDetail.Columns[8].Visible:= actRealLate.Checked and actPercent.Checked;
    // LATE_REAL_DAYS
    grdDetail.Columns[9].Visible:= actRealLate.Checked;

    SetBaseCurrencyColumns(grdDetail.Columns);
  finally
    grdDetail.Columns.EndUpdate;
  end;
end;

function TfmFinOrders.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:=
    TfmFinOrder.ShowForm(nil, cdsGridData, AEditMode, doNone, True, FModelMode,
      cdsDetailRFML_OBJECT_BRANCH_CODE.AsInteger, cdsDetailRFML_OBJECT_CODE.AsInteger);
end;

procedure TfmFinOrders.CalcAggregates;
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

end.
