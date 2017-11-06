unit fBOIProductOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBOIOrders, ExtCtrls, JvComponent, JvCaptionButton,
  ParamDataSet, ActnList, DB, AbmesFields, DBClient,
  AbmesClientDataSet, StdCtrls, Mask, DBCtrls, Buttons, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, ColorNavigator, JvComponentBase;

type
  TfmBOIProductOrders = class(TfmBOIOrders)
    tlbProductDoc: TToolBar;
    sepProductDoc: TToolButton;
    lblProductDoc: TLabel;
    btnProductDoc: TToolButton;
    actProductDoc: TAction;
    tbToggleQuantity: TToolBar;
    btnToggleAccountDeviation: TSpeedButton;
    sepBeforeWorkMeasure: TToolButton;                                    
    btnWorkMeasure: TSpeedButton;
    btnAccountMeasure: TSpeedButton;
    actToggleAccountDeviation: TAction;
    cdsDetail_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetail_QUANTITY: TAbmesFloatField;
    cdsDetail_REAL_QUANTITY: TAbmesFloatField;
    cdsDetail_SINGLE_PRICE: TAbmesFloatField;
    cdsDetaiL_REAL_AVG_SINGLE_PRICE_DEV_P: TAbmesFloatField;
    actNewStoreRequest: TAction;
    actStoreRequests: TAction;
    cdsStoreRequestNewValues: TAbmesClientDataSet;
    cdsStoreRequestNewValuesSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsStoreRequestNewValuesREQUEST_DEPT_CODE: TAbmesFloatField;
    cdsStoreRequestNewValuesREQUEST_EMPLOYEE_CODE: TAbmesFloatField;
    cdsStoreRequestNewValuesREQUEST_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsStoreRequestNewValuesREQUEST_END_DATE: TAbmesSQLTimeStampField;
    cdsStoreRequestItemsFilter: TAbmesClientDataSet;
    cdsStoreRequestItemsFilterALGORITHM_CODE: TAbmesFloatField;
    cdsStoreRequestsParams: TAbmesClientDataSet;
    lblStoreRequests: TLabel;
    btnNewStoreRequest: TBitBtn;
    btnStoreRequests: TBitBtn;
    cdsStoreRequestsParamsBND_PROCESS: TAbmesWideStringField;
    cdsBinding: TAbmesClientDataSet;
    cdsBindingBND_PROCESS_CODE: TAbmesFloatField;
    cdsBindingSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsBindingSALE_BRANCH_CODE: TAbmesFloatField;
    cdsBindingSALE_NO: TAbmesFloatField;
    cdsBindingSALE_TYPE_CODE: TAbmesFloatField;
    cdsBindingSALE_SHIPMENT_NO: TAbmesFloatField;
    cdsBindingCLIENT_COMPANY_CODE: TAbmesFloatField;
    cdsBindingPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsBindingIS_WASTE_COMPENSATOR_STATUS: TAbmesFloatField;
    cdsBindingNO_AS_TEXT: TAbmesWideStringField;
    cdsBindingFORK_NO: TAbmesFloatField;
    cdsBindingIS_WASTE_FORK_STATUS: TAbmesFloatField;
    cdsBindingML_MODEL_STAGE_NO: TAbmesFloatField;
    cdsBindingMLMS_OPERATION_NO: TAbmesFloatField;
    cdsBindingMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsBindingDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsBindingDCD_BRANCH_CODE: TAbmesFloatField;
    cdsBindingDCD_CODE: TAbmesFloatField;
    cdsBindingDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsBindingDELIVERY_TYPE_CODE: TAbmesFloatField;
    cdsBindingVENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsBindingINVOICE_NO: TAbmesFloatField;
    cdsBindingINVOICE_ABBREV: TAbmesWideStringField;
    cdsBindingINVOICE_DATE: TAbmesSQLTimeStampField;
    cdsBindingIS_PROFORM_INVOICE_STATUS: TAbmesFloatField;
    cdsBindingOTHER_STORE_DEAL_STORE_CODE: TAbmesFloatField;
    cdsBindingOTHER_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    cdsBindingOTHER_STORE_DEAL_NO: TAbmesFloatField;
    cdsBindingBUDGET_ORDER_CLASS_CODE: TAbmesFloatField;
    cdsBindingBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsBindingBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsBindingBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    cdsBindingBOI_ORDER_CODE: TAbmesFloatField;
    cdsStoreRequestItemsFilterBND_PROCESS: TAbmesWideStringField;
    cdsStoreRequestItemsFilterIN_OUT: TAbmesFloatField;
    cdsBindingFIN_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsBindingFIN_ORDER_NO: TAbmesFloatField;
    cdsBindingFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsBindingFIN_MODEL_LINE_NO: TAbmesFloatField;
    cdsBindingPARTNER_CODE: TAbmesFloatField;
    cdsBindingBASE_DATE: TAbmesSQLTimeStampField;
    cdsBindingDOCUMENT_IDENTIFIER_STATUS: TAbmesFloatField;
    cdsBindingDOCUMENT_IDENTIFIER: TAbmesWideStringField;
    cdsBindingSALE_GROUP_BRANCH_CODE: TAbmesFloatField;
    cdsBindingSALE_GROUP_CODE: TAbmesFloatField;
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure actProductDocExecute(Sender: TObject);
    procedure actProductDocUpdate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actToggleAccountDeviationExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnWorkMeasureClick(Sender: TObject);
    procedure btnAccountMeasureClick(Sender: TObject);
    procedure cdsDetailCalcFields(DataSet: TDataSet);
    procedure actStoreRequestsUpdate(Sender: TObject);
    procedure actNewStoreRequestUpdate(Sender: TObject);
    procedure actStoreRequestsExecute(Sender: TObject);
    procedure actNewStoreRequestExecute(Sender: TObject);
    procedure cdsDetaiL_REAL_AVG_SINGLE_PRICE_DEV_PGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    procedure UpdateVisibleColumns;
  protected
    procedure DoBeforeShow; override;
  public
    { Public declarations }
  end;

implementation

uses
  fBOIProductOrdersFilter, fBOIProductOrder, fMasterDetailForm,
  uBudgetClientUtils, uDocUtils, uClientTypes, rBOIProductOrdersDetail, Math, StrUtils,
  rBOIProductOrdersDetailReal, uUserActivityConsts, uUtils, uProcesses,
  fStoreRequests, fStoreRequest, uClientUtils, uBOIOrderTypes;

{$R *.dfm}

procedure TfmBOIProductOrders.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('BOI_ORDER_TYPE_CODE').AsInteger:= boiotProduct;
end;

procedure TfmBOIProductOrders.DoBeforeShow;
begin
  FilterFormClass:= TfmBOIProductOrdersFilter;
  DetailEditFormClass:= TfmBOIProductOrder;
  inherited;
end;

procedure TfmBOIProductOrders.actProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotProduct,
    cdsDetailPRODUCT_DOC_BRANCH_CODE.AsInteger, cdsDetailPRODUCT_DOC_CODE.AsInteger
  );
end;

procedure TfmBOIProductOrders.actProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmBOIProductOrders.actFormUpdate(Sender: TObject);
begin
  inherited;
  btnProductDoc.ImageIndex:= cdsDetailPRODUCT_HAS_DOC.AsInteger;

  if actToggleAccountDeviation.Checked then
    DetailsReportClass:= TrptBOIProductOrdersDetail
  else
    DetailsReportClass:= TrptBOIProductOrdersDetailReal;
end;

procedure TfmBOIProductOrders.actToggleAccountDeviationExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  UpdateVisibleColumns;
end;

procedure TfmBOIProductOrders.UpdateVisibleColumns;
begin
  with grdDetail do
    begin
      Columns[4].Visible:=                                                btnWorkMeasure.Down;
      Columns[5].Visible:=                                            not btnWorkMeasure.Down;
      Columns[7].Visible:=                                                btnWorkMeasure.Down;
      Columns[8].Visible:=                                            not btnWorkMeasure.Down;
      Columns[9].Visible:=                                                btnWorkMeasure.Down;
      Columns[10].Visible:=                                           not btnWorkMeasure.Down;
      Columns[15].Visible:= not actToggleAccountDeviation.Checked and     btnWorkMeasure.Down;
      Columns[16].Visible:= not actToggleAccountDeviation.Checked and not btnWorkMeasure.Down;
      Columns[17].Visible:= not actToggleAccountDeviation.Checked;
      Columns[18].Visible:= not actToggleAccountDeviation.Checked;
      Columns[19].Visible:=     actToggleAccountDeviation.Checked and     btnWorkMeasure.Down;
      Columns[20].Visible:=     actToggleAccountDeviation.Checked and not btnWorkMeasure.Down;
      Columns[21].Visible:=     actToggleAccountDeviation.Checked and     btnWorkMeasure.Down;
      Columns[22].Visible:=     actToggleAccountDeviation.Checked and not btnWorkMeasure.Down;
      Columns[23].Visible:=     actToggleAccountDeviation.Checked;
      Columns[24].Visible:=     actToggleAccountDeviation.Checked;
    end;
end;

procedure TfmBOIProductOrders.FormShow(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmBOIProductOrders.btnWorkMeasureClick(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmBOIProductOrders.btnAccountMeasureClick(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmBOIProductOrders.cdsDetailCalcFields(DataSet: TDataSet);
begin
  inherited;
  if btnWorkMeasure.Down then
    begin
      cdsDetail_MEASURE_ABBREV.Assign(cdsDetailMEASURE_ABBREV);
      cdsDetail_QUANTITY.Assign(cdsDetailQUANTITY);
      cdsDetail_REAL_QUANTITY.Assign(cdsDetailPRODUCT_REAL_QUANTITY);
      cdsDetail_SINGLE_PRICE.Assign(cdsDetailPRODUCT_SINGLE_PRICE);
      cdsDetail_REAL_AVG_SINGLE_PRICE_DEV_P.Assign(cdsDetailPRODUCT_AVG_S_PRICE_DEV_P);
    end
  else
    begin
      cdsDetail_MEASURE_ABBREV.Assign(cdsDetailACCOUNT_MEASURE_ABBREV);
      cdsDetail_QUANTITY.Assign(cdsDetailACCOUNT_QUANTITY);
      cdsDetail_REAL_QUANTITY.Assign(cdsDetailPRODUCT_REAL_ACCOUNT_QUANTITY);
      cdsDetail_SINGLE_PRICE.Assign(cdsDetailPRODUCT_ACC_SINGLE_PRICE);
      cdsDetail_REAL_AVG_SINGLE_PRICE_DEV_P.Assign(cdsDetailPRODUCT_AVG_ACC_S_PRICE_DEV_P);
    end;
end;

procedure TfmBOIProductOrders.actStoreRequestsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmBOIProductOrders.actNewStoreRequestUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridData.IsEmpty and
    (EditMode = emEdit) and
    (cdsGridDataBUDGET_ITEM_STATUS_CODE.AsInteger < ClosedBudgetOrderItemStatusCode); 
end;

procedure TfmBOIProductOrders.actStoreRequestsExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaStoreRequests);
  cdsBinding.CreateDataSet;
  try
    cdsBinding.Append;
    AssignFields(cdsGridData, cdsBinding);
    cdsBindingBND_PROCESS_CODE.AsInteger:= pBPOItem;
    cdsBinding.Post;

    cdsStoreRequestsParams.CreateDataSet;
    try
      cdsStoreRequestsParams.Append;
      cdsStoreRequestsParamsBND_PROCESS.AsString:= cdsBinding.XMLData;
      cdsStoreRequestsParams.Post;

      TfmStoreRequests.ShowForm(dmDocClient, cdsStoreRequestsParams, emReadOnly, doNone, False);
    finally
      cdsStoreRequestsParams.Close;
    end;
    
  finally
    cdsBinding.Close;
  end;  { try }
end;

procedure TfmBOIProductOrders.actNewStoreRequestExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaNewStoreRequestOut);
  cdsStoreRequestNewValues.CreateDataSet;
  try
    cdsStoreRequestNewValues.Append;
    cdsStoreRequestNewValuesSTORE_REQUEST_BRANCH_CODE.Assign(cdsGridDataBUDGET_ORDER_BRANCH_CODE);
    cdsStoreRequestNewValuesREQUEST_DEPT_CODE.Assign(cdsGridDataDEPT_CODE);
    cdsStoreRequestNewValuesREQUEST_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
    cdsStoreRequestNewValuesREQUEST_BEGIN_DATE.Assign(cdsGridDataBOI_BEGIN_DATE);
    cdsStoreRequestNewValuesREQUEST_END_DATE.Assign(cdsGridDataBOI_END_DATE);
    cdsStoreRequestNewValues.Post;

    cdsStoreRequestItemsFilter.CreateDataSet;
    try
      cdsStoreRequestItemsFilter.Append;
      
      cdsBinding.CreateDataSet;
      try
        cdsBinding.Append;
        AssignFields(cdsGridData, cdsBinding);
        cdsBindingBND_PROCESS_CODE.AsInteger:= pBPOItem;
        cdsBinding.Post;
        
        cdsStoreRequestItemsFilterALGORITHM_CODE.AsInteger:= 4;
        cdsStoreRequestItemsFilterIN_OUT.AsInteger:= -1;
        cdsStoreRequestItemsFilterBND_PROCESS.AsString:= cdsBinding.XMLData;
        cdsStoreRequestItemsFilter.Post;

      finally
        cdsBinding.Close;
      end;

      TfmStoreRequest.ShowForm(dmDocClient, nil, emInsert, -1, 0, nil, nil, cdsStoreRequestNewValues, cdsStoreRequestItemsFilter);

    finally
      cdsStoreRequestItemsFilter.Close;
    end;

  finally
    cdsStoreRequestNewValues.Close;
  end;
end;

procedure TfmBOIProductOrders.cdsDetaiL_REAL_AVG_SINGLE_PRICE_DEV_PGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

end.
