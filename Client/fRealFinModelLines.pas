unit fRealFinModelLines;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, uClientTypes, Menus, DBGridEhGrouping, fBaseFrame, fFinModelLineStoreDeals;

type
  TfmRealFinModelLines = class(TGridForm)
    cdsGridDataRFML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataRFML_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataFIN_ORDER_CODE: TAbmesFloatField;
    cdsGridDataFIN_ORDER_STATUS_CODE: TAbmesFloatField;
    cdsGridDataFIN_PROCESS_ABBREV: TAbmesWideStringField;
    cdsGridDataFIN_ORDER_BRANCH_NO: TAbmesFloatField;
    cdsGridDataFIN_ORDER_NO: TAbmesFloatField;
    cdsGridDataFIN_ORDER_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataPARTNER_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsGridDataFIN_MODEL_LINE_NO: TAbmesFloatField;
    cdsGridDataSHOW_NO: TAbmesWideStringField;
    cdsGridDataLINE_QUANTITY_PERCENT: TAbmesFloatField;
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
    cdsGridDataFIN_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataIN_OUT: TAbmesFloatField;
    cdsGridDataPARTNER_ACCOUNT_FULL_NAME: TAbmesWideStringField;
    cdsGridDataMOVEMENT_DURATION_DAYS: TAbmesFloatField;
    cdsGridDataFIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField;
    cdsGridDataPRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsGridDataPRIORITY_COLOR: TAbmesFloatField;
    cdsGridDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
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
    pdsGridDataParamsFIN_PROCESS_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_NO: TAbmesFloatField;
    pdsGridDataParamsSALE_SHIPMENT_NO: TAbmesFloatField;
    pdsGridDataParamsDCD_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsDCD_CODE: TAbmesFloatField;
    pdsGridDataParamsDELIVERY_PROJECT_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_FIN_ORDER_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_FIN_ORDER_STATUS_CODE: TAbmesFloatField;
    cdsFinProcesses: TAbmesClientDataSet;
    cdsFinProcessesPROCESS_CODE: TAbmesFloatField;
    cdsFinProcessesPROCESS_ABBREV: TAbmesWideStringField;
    cdsFinProcessesPROCESS_NAME: TAbmesWideStringField;
    cdsFinProcessesPROCESS_NO: TAbmesFloatField;
    cdsFinProcessesIS_MANUALLY_USABLE: TAbmesFloatField;
    pdsGridDataParams_FIN_PROCESS_ABBREV: TAbmesWideStringField;
    cdsGridDataWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataWORK_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField;
    actPercent: TAction;
    actBaseCurrency: TAction;
    tlbMasterToggles: TToolBar;
    btnPercent: TToolButton;
    btnBaseCurrency: TToolButton;
    cdsGridData_MIN_WORK_FINANCIAL_PRODUCT_CODE: TAggregateField;
    cdsGridData_MAX_WORK_FINANCIAL_PRODUCT_CODE: TAggregateField;
    actReasons: TAction;
    btnReasons: TToolButton;
    actFinOrder: TAction;
    btnEditData: TBitBtn;
    btnFinOrder: TBitBtn;
    actBndProcessObject: TAction;
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
    btnBndProcessObject: TBitBtn;
    pdsGridDataParamsBND_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_CODE: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    pdsGridDataParamsBOI_ORDER_CODE: TAbmesFloatField;
    pdsGridDataParamsFIN_CLASS_CODE: TAbmesFloatField;
    cdsGridDataPARTNER_CODE: TAbmesFloatField;
    cdsGridDataFIN_STORE_CODE: TAbmesFloatField;
    cdsGridDataPARTNER_ACCOUNT_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    cdsFinOrderBndObjectBOI_ORDER_CODE: TAbmesFloatField;
    cdsGridDataDOCUMENT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDOCUMENT_DATE: TAbmesSQLTimeStampField;
    actInvoice: TAction;
    sepLineReason: TToolButton;
    btnInvoice: TToolButton;
    cdsGridDataBASE_DATA_CHANGED: TAbmesFloatField;
    pdsGridDataParamsBND_BUDGET_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsDOCUMENT_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParamsDOCUMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsDOCUMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataBND_PROCESS_OBJECT_INFO: TAbmesWideStringField;
    actPartner: TAction;
    btnPartner: TToolButton;
    cdsGridDataMOVEMENT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataMOVEMENT_PLAN_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsGridDataREAL_QTY: TAbmesFloatField;
    cdsGridDataREAL_QTY_BC: TAbmesFloatField;
    cdsGridDataREAL_QTY_PERCENT: TAbmesFloatField;
    cdsGridDataREAL_QTY_BC_PERCENT: TAbmesFloatField;
    cdsGridDataMAX_REAL_DATE: TAbmesSQLTimeStampField;
    sepPercent: TToolButton;
    actLatePlan: TAction;
    actLateReal: TAction;
    actReal: TAction;
    btnLatePlan: TToolButton;
    btnLateReal: TToolButton;
    btnReal: TToolButton;
    pdsGridDataParamsALL_FILTERED_COMPANIES: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    pdsGridDataParamsREQUEST_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsREQUEST_NO: TAbmesFloatField;
    frRealFinModelLineStoreDeals: TfrRealFinModelLineStoreDeals;
    cdsGridDataNOTES: TAbmesWideStringField;
    actNotes: TAction;
    btnNotes: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure PercentFieldsGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataIN_OUTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataFIN_ORDER_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actPercentExecute(Sender: TObject);
    procedure actBaseCurrencyExecute(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure actReasonsExecute(Sender: TObject);
    procedure actFinOrderExecute(Sender: TObject);
    procedure actFinOrderUpdate(Sender: TObject);
    procedure actBndProcessObjectUpdate(Sender: TObject);
    procedure actBndProcessObjectExecute(Sender: TObject);
    procedure pdsGridDataParamsFIN_PROCESS_CODEChange(Sender: TField);
    procedure actInvoiceExecute(Sender: TObject);
    procedure actPartnerExecute(Sender: TObject);
    procedure pdsGridDataParamsHAS_DOCUMENT_IDENTIFIERChange(Sender: TField);
    procedure actLatePlanExecute(Sender: TObject);
    procedure actLateRealExecute(Sender: TObject);
    procedure actRealExecute(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);
  private
    FModelMode: Boolean;
    procedure SetColumns;
    procedure CalcAggregates;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function GetInsertRecordEnabled: Boolean; override;
    function GetGridRecordReadOnly: Boolean; override;
  public
    procedure Initialize; override;
  end;

implementation

uses dMain, fFinOrder, fRealFinModelLinesFilter, uClientUtils,
  uFinanceClientUtils, uUtils, fEditForm, fSale, fDelivery, fGroupSale,
  fBOICompanyOrder, uUserActivityConsts;

{$R *.dfm}

{ TfmRealFinModelLines }

procedure TfmRealFinModelLines.actBaseCurrencyExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetColumns;
  CalcAggregates;
end;

procedure TfmRealFinModelLines.actBndProcessObjectExecute(Sender: TObject);
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

procedure TfmRealFinModelLines.actBndProcessObjectUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    not cdsGridDataBND_PROCESS_OBJECT_IDENTIFIER.IsNull;
end;

procedure TfmRealFinModelLines.actFinOrderExecute(Sender: TObject);
begin
  inherited;
  FModelMode:= False;
  try
    actEditRecord.Execute;
  finally
    FModelMode:= True;
  end;
end;

procedure TfmRealFinModelLines.actFinOrderUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    not cdsGridData.IsEmpty;
end;

procedure TfmRealFinModelLines.actInvoiceExecute(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= True;
  ((Sender as TAction).ActionComponent as TToolButton).Down:= True;
  SetColumns;
end;

procedure TfmRealFinModelLines.actLatePlanExecute(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= True;
  ((Sender as TAction).ActionComponent as TToolButton).Down:= True;
  SetColumns;
end;

procedure TfmRealFinModelLines.actLateRealExecute(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= True;
  ((Sender as TAction).ActionComponent as TToolButton).Down:= True;
  SetColumns;
end;

procedure TfmRealFinModelLines.actNotesExecute(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= True;
  ((Sender as TAction).ActionComponent as TToolButton).Down:= True;
  SetColumns;
end;

procedure TfmRealFinModelLines.actReasonsExecute(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= True;
  ((Sender as TAction).ActionComponent as TToolButton).Down:= True;
  SetColumns;
end;

procedure TfmRealFinModelLines.actPartnerExecute(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= True;
  ((Sender as TAction).ActionComponent as TToolButton).Down:= True;
  SetColumns;
end;

procedure TfmRealFinModelLines.actPercentExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetColumns;
end;

procedure TfmRealFinModelLines.actRealExecute(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= True;
  ((Sender as TAction).ActionComponent as TToolButton).Down:= True;
  SetColumns;
end;

procedure TfmRealFinModelLines.CalcAggregates;
var
  i: Integer;
  aggr: TAggregate;
  SameWorkFinancialProductCode: Boolean;
  Mult: string;
begin
  SameWorkFinancialProductCode:=
    (VarToInt(cdsGridData_MIN_WORK_FINANCIAL_PRODUCT_CODE.AsVariant) =
     VarToInt(cdsGridData_MAX_WORK_FINANCIAL_PRODUCT_CODE.AsVariant));

  if pdsGridDataParamsIN_OUT.IsNull then
    Mult:= '*IN_OUT'
  else
    Mult:= '';

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
                aggr.Expression:= Format('Sum(%s%s)', [grdData.Columns[i].FieldName, Mult]);
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

procedure TfmRealFinModelLines.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CalcAggregates;
end;

procedure TfmRealFinModelLines.cdsGridDataFIN_ORDER_STATUS_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= FinOrderStateDisplayText(Sender.AsInteger, 50, Canvas);
end;

procedure TfmRealFinModelLines.cdsGridDataIN_OUTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
const
  SInOut: array[-1..1] of string = ('®', '', '¬');
begin
  inherited;
  Text:= SInOut[Sender.AsInteger];
end;

procedure TfmRealFinModelLines.CloseDataSets;
begin
  inherited;
  cdsFinProcesses.Close;
end;

procedure TfmRealFinModelLines.FormCreate(Sender: TObject);
begin
  inherited;

  FModelMode:= True;

  FilterFormClass:= TfmRealFinModelLinesFilter;
  EditFormClass:= TfmFinOrder;
  RegisterDateFields(cdsGridData);

  frRealFinModelLineStoreDeals.RFMLObjectBranchCodeField:= cdsGridDataRFML_OBJECT_BRANCH_CODE;
  frRealFinModelLineStoreDeals.RFMLObjectCodeField:= cdsGridDataRFML_OBJECT_CODE;
end;

function TfmRealFinModelLines.GetGridRecordReadOnly: Boolean;
begin
  if FModelMode then
    Result:=
      inherited GetGridRecordReadOnly or
      not LoginContext.HasAnyUserActivity(RealFinancialModelEditActivities)
  else
    Result:=
      not LoginContext.HasUserActivity(uaFinancialOrderEdit);
end;

function TfmRealFinModelLines.GetInsertRecordEnabled: Boolean;
begin
  Result:= False;
end;

procedure TfmRealFinModelLines.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (Column.Field = cdsGridDataPRIORITY_FULL_NAME) then
    begin
      if not cdsGridDataPRIORITY_COLOR.IsNull then
        AFont.Color:= cdsGridDataPRIORITY_COLOR.AsInteger;
      if not cdsGridDataPRIORITY_BACKGROUND_COLOR.IsNull then
        Background:= cdsGridDataPRIORITY_BACKGROUND_COLOR.AsInteger;

      Exit;
    end;

  if (Column.Field = cdsGridDataPLAN_QTY) or
     (Column.Field = cdsGridDataPLAN_QTY_BC) or
     (Column.Field = cdsGridDataREMAINING_QTY) or
     (Column.Field = cdsGridDataREMAINING_QTY_BC) then
    begin
      if (cdsGridDataIN_OUT.AsFloat < 0)  then
        AFont.Color:= clRed;
      if (cdsGridDataIN_OUT.AsFloat > 0)  then
        AFont.Color:= clGreen;

      Exit;
    end;

  if (Column.Field = cdsGridDataIN_OUT) then
    begin
      if (Column.Field.AsFloat < 0)  then
        Background:= $00CCCCFF;
      if (Column.Field.AsFloat > 0)  then
        Background:= $00DCF3D1;

      Exit;
    end;

  if cdsGridDataBASE_DATA_CHANGED.AsBoolean then
    AFont.Color:= clBlue;

  if (Column.Field = cdsGridDataWORK_FINANCIAL_PRODUCT_NAME) and
     actBaseCurrency.Checked then
    AFont.Color:= clSilver;
end;

procedure TfmRealFinModelLines.Initialize;
begin
  inherited;
  SetColumns;
end;

procedure TfmRealFinModelLines.OpenDataSets;
begin
  cdsFinProcesses.Open;
  inherited;
end;

procedure TfmRealFinModelLines.pdsGridDataParamsFIN_PROCESS_CODEChange(
  Sender: TField);
begin
  inherited;
  pdsGridDataParamsBND_PRODUCT_CODE.Clear;
end;

procedure TfmRealFinModelLines.pdsGridDataParamsHAS_DOCUMENT_IDENTIFIERChange(
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

procedure TfmRealFinModelLines.PercentFieldsGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmRealFinModelLines.SetColumns;

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
    // LATE_PLAN_QTY
    grdData.Columns[9].Visible:= actLatePlan.Checked and (not actPercent.Checked);
    // LATE_PLAN_QTY_PERCENT
    grdData.Columns[10].Visible:= actLatePlan.Checked and actPercent.Checked;
    // LATE_PLAN_DAYS
    grdData.Columns[11].Visible:= actLatePlan.Checked;
    // LATE_REAL_QTY
    grdData.Columns[12].Visible:= actLateReal.Checked and (not actPercent.Checked);
    // LATE_REAL_QTY_PERCENT
    grdData.Columns[13].Visible:= actLateReal.Checked and actPercent.Checked;
    // LATE_REAL_DAYS
    grdData.Columns[14].Visible:= actLateReal.Checked;
    // REAL_QTY
    grdData.Columns[15].Visible:= actReal.Checked and (not actPercent.Checked);
    // REAL_QTY_PERCENT
    grdData.Columns[16].Visible:= actReal.Checked and actPercent.Checked;
    // MAX_REAL_DATE
    grdData.Columns[17].Visible:= actReal.Checked;

    // PARTNER_SHORT_NAME
    grdData.Columns[23].Visible:= actPartner.Checked;
    // BND_PROCESS_OBJECT_IDENTIFIER
    grdData.Columns[24].Visible:= actPartner.Checked;
    // BND_PROCESS_OBJECT_INFO
    grdData.Columns[25].Visible:= actReasons.Checked;
    // FIN_MODEL_LINE_REASON_ABBREV
    grdData.Columns[26].Visible:= actReasons.Checked;
    // DOCUMENT_IDENTIFIER
    grdData.Columns[27].Visible:= actInvoice.Checked;
    // DOCUMENT_DATE
    grdData.Columns[28].Visible:= actInvoice.Checked;
    // NOTES
    grdData.Columns[29].Visible:= actNotes.Checked;

    SetBaseCurrencyColumns(grdData.Columns);
  finally
    grdData.Columns.EndUpdate;
  end;
end;

function TfmRealFinModelLines.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:=
    TfmFinOrder.ShowForm(nil, cdsGridData, AEditMode, doNone, True, FModelMode,
      cdsGridDataRFML_OBJECT_BRANCH_CODE.AsInteger, cdsGridDataRFML_OBJECT_CODE.AsInteger);
end;

end.
