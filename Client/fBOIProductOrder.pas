unit fBOIProductOrder;

interface                          

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBOIOrder, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls,
  fProductFieldEditFrame, fProductFieldEditFrameLabeled,
  fDeptFieldEditFrameLabeled, AbmesFields, ToolWin, ComCtrls,
  fDateIntervalFrame, fDeptFieldEditFrame, fDeptFieldEditFrameBald,
  fBaseFrame, fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame,
  Mask, DBCtrls, fDateFieldEditFrame, fEmployeeFieldEditFrame, fEmployeeFieldEditFrameBald,
  JvComponentBase, fTreeOnlyNodeFieldEditFrame, AbmesDBCheckBox, JvExStdCtrls,
  JvDBCombobox, rBOIProductOrder;

type
  TfmBOIProductOrder = class(TfmBOIOrder)                                            
    actStoreRequests: TAction;
    cdsStoreRequestsParams: TAbmesClientDataSet;
    cdsStoreRequestsParamsPSD_STORE_CODE: TAbmesFloatField;
    cdsStoreRequestsParamsPSD_PRODUCT_CODE: TAbmesFloatField;                        
    actStoreDeals: TAction;
    actNewStoreDeal: TAction;
    cdsStoreDealsParams: TAbmesClientDataSet;
    cdsStoreDealsParamsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsStoreDealsParamsBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsStoreDealsParamsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    cdsStoreDealsParamsBOI_ORDER_CODE: TAbmesFloatField;
    cdsStoreDealsParamsSTORE_CODE: TAbmesFloatField;
    cdsStoreDealsParamsPRODUCT_CODE: TAbmesFloatField;
    cdsStoreDealsParamsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsStoreDealsParamsBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsStoreDealsParamsSTART_DATE: TAbmesSQLTimeStampField;
    cdsStoreDealsParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsStoreDealsParamsQUANTITY: TAbmesFloatField;
    cdsStoreDealsParamsACCOUNT_QUANTITY: TAbmesFloatField;
    cdsStoreDealsParamsWANTED_QUANTITY: TAbmesFloatField;
    cdsMeasures: TAbmesClientDataSet;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    cdsMeasuresMEASURE_NAME: TAbmesWideStringField;
    cdsData_MEASURE_ABBREV: TAbmesWideStringField;
    cdsData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    frProduct: TfrProductFieldEditFrameLabeled;
    frStore: TfrDeptFieldEditFrameLabeled;
    gbPSDOut: TGroupBox;
    lblQuantity: TLabel;
    lblAccountQuantity: TLabel;
    lblPlanDate: TLabel;
    lblProductEstimatedSecondaryPrice: TLabel;
    lblProductTotalPrice: TLabel;
    lblBOIPricePercent: TLabel;
    lblMeasure: TDBText;
    lblAccountMeasure: TDBText;
    lblBaseCurrency6: TLabel;
    lblBaseCurrency4: TLabel;
    edtQuantity: TDBEdit;
    edtAccountQuantity: TDBEdit;
    frPlanDate: TfrDateFieldEditFrame;
    edtProductEstimatedSecondaryPrice: TDBEdit;
    edtProductTotalPrice: TDBEdit;
    edtBOIPricePercent: TDBEdit;
    gbReal: TGroupBox;
    lblSDQuantity: TLabel;
    lblSDAccountQuantity: TLabel;
    lblLastSDDate: TLabel;
    lblSDTotalPrice: TLabel;
    lblMeasureAbbrev2: TDBText;
    lblAccountMeasureAbbrev2: TDBText;
    lblBaseCurrency5: TLabel;
    edtSDQuantity: TDBEdit;
    edtSDAccountQuantity: TDBEdit;
    edtSDTotalPrice: TDBEdit;
    frLastSDDate: TfrDateFieldEditFrame;
    gbPlanRealDeviation: TGroupBox;
    lblQuantityDeviation: TLabel;
    lblAccountQuantityDeviation: TLabel;
    lblProductTotalPriceDeviation: TLabel;
    lblProductDaysDeviation: TLabel;
    lblDeviationMeasure: TLabel;
    lblDeviationAccountMeasure: TLabel;
    lblDeviationPriceMeasure: TLabel;
    edtQuantityDeviation: TDBEdit;
    edtAccountQuantityDeviation: TDBEdit;
    edtProductTotalPriceDeviation: TDBEdit;
    edtProductDaysDeviation: TDBEdit;
    gbStoreRequests: TGroupBox;
    btnStoreRequests: TBitBtn;
    gbStoreDeals: TGroupBox;
    btnStoreDeals: TBitBtn;
    btnNewStoreDeal: TBitBtn;
    cdsData_PRODUCT_TOTAL_PLAN_PRICE: TAbmesFloatField;
    cdsData_PRODUCT_BOI_PRICE_PERCENT: TAbmesFloatField;
    cdsData_QUANTITY_DEVIATION: TAbmesFloatField;
    cdsData_ACCOUNT_QUANTITY_DEVIATION: TAbmesFloatField;
    cdsData_PRODUCT_DAYS_DEVIATION: TAbmesFloatField;
    cdsData_PRODUCT_TOTAL_PRICE_DEVIATION: TAbmesFloatField;
    btnToggleDeviationDiffPercent: TSpeedButton;
    cdsData_QUANTITY_DEV_PERCENT: TAbmesFloatField;
    cdsData_ACCOUNT_QUANTITY_DEV_PERCENT: TAbmesFloatField;
    cdsData_PRODUCT_TOTAL_PRICE_DEV_PER: TAbmesFloatField;
    cdsStoreDealsParamsPRODUCT_MEASURE_CODE: TAbmesFloatField;
    cdsStoreDealsParamsPRODUCT_ACC_MEASURE_CODE: TAbmesFloatField;
    cdsStoreDealsParamsPRODUCT_ACC_MEASURE_COEF: TAbmesFloatField;
    lblPercents4: TLabel;
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
    cdsStoreDealsParamsBND_PROCESS: TAbmesWideStringField;
    cdsStoreRequestsParamsBND_PROCESS: TAbmesWideStringField;
    cdsStoreDealsParamsBND_PROCESS_CODE: TAbmesFloatField;
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
    cdsPrintDataQUANTITY: TAbmesFloatField;
    cdsPrintDataACCOUNT_QUANTITY: TAbmesFloatField;
    cdsPrintData_MEASURE_ABBREV: TAbmesWideStringField;
    cdsPrintDataPRODUCT_SINGLE_PRICE: TAbmesFloatField;
    cdsPrintData_PRODUCT_TOTAL_PLAN_PRICE: TAbmesFloatField;
    cdsPrintData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsPrintData_PRODUCT_BOI_PRICE_PERCENT: TAbmesFloatField;
    cdsPrintDataPRODUCT_REAL_QUANTITY: TAbmesFloatField;
    cdsPrintDataPRODUCT_REAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsPrintDataPRODUCT_REAL_TOTAL_PRICE: TAbmesFloatField;
    cdsPrintDataPRODUCT_LAST_DEAL_DATE: TAbmesSQLTimeStampField;
    cdsPrintDataPLAN_DATE: TAbmesSQLTimeStampField;
    cdsPrintData_QUANTITY_DEVIATION: TAbmesFloatField;
    cdsPrintData_ACCOUNT_QUANTITY_DEVIATION: TAbmesFloatField;
    cdsPrintData_PRODUCT_TOTAL_PRICE_DEVIATION: TAbmesFloatField;
    cdsPrintData_PRODUCT_DAYS_DEVIATION: TAbmesFloatField;
    cdsPrintDataSTORE_DEPT_NAME: TAbmesWideStringField;
    cdsPrintDataSTORE_DEPT_NO: TAbmesWideStringField;
    cdsPrintDataPRODUCT_NAME: TAbmesWideStringField;
    cdsPrintDataPRODUCT_NO: TAbmesWideStringField;
    cdsBOIOrderStoreDealsMinMaxDates: TAbmesClientDataSet;
    cdsBOIOrderStoreDealsMinMaxDatesMIN_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    cdsBOIOrderStoreDealsMinMaxDatesMAX_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure actStoreRequestsExecute(Sender: TObject);
    procedure actStoreRequestsUpdate(Sender: TObject);
    procedure actStoreDealsExecute(Sender: TObject);
    procedure cdsBOIOrderInfoBOI_DAYS_LEFT_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actFormUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actNewStoreDealExecute(Sender: TObject);
    procedure cdsData_PRODUCT_BOI_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure NumericFieldsGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsData_QUANTITY_DEV_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsData_ACCOUNT_QUANTITY_DEV_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsData_PRODUCT_TOTAL_PRICE_DEV_PERGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actToggleDeviationDiffPercentUpdate(Sender: TObject);
    procedure actConfirmExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actNewStoreDealUpdate(Sender: TObject);
    procedure cdsPrintData_PRODUCT_BOI_PRICE_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    FStoreDealModified: Boolean;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function RequiredFieldsNotNull: Boolean; override;
    procedure AssignPrintFields; override; 
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses
  uProcesses, fStoreRequests, uUserActivityConsts, uUtils, uClientTypes,
  fStoreDeals, fTreeSelectForm, uClientConsts, uClientUtils, fEditForm,
  fDataForm, AbmesDialogs, fStoreDealOut, StrUtils, uProducts, uClientDateTime,
  uBudgetClientUtils, dMain, Math;

{$R *.dfm}
resourcestring
  SConfirmBOIOSave = 'За да въведете Ново Теглене трябва да запишете Ордер - Предметен по Лимит. Продължение?';
  SCannotCreateStoreDealOnNotConfirmedOrder = 'Не можете да създавате Ново Теглене по неутвърден Ордер по Лимит';
  SThereAreNoStoreDeals = 'Няма направени Тегления по този Ордер - Предметен по Лимит';

procedure TfmBOIProductOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if FStoreDealModified then
    ModalResult:= mrOk;
end;

procedure TfmBOIProductOrder.FormCreate(Sender: TObject);
begin
  inherited;
  frStore.FieldNames:= 'STORE_CODE';
  frStore.SelectStore:= True;
  frPlanDate.FieldNames:= 'PLAN_DATE';
  frLastSDDate.FieldNames:= 'PRODUCT_LAST_DEAL_DATE';
  ReportClass:= TrptBOIProductOrder;
end;

procedure TfmBOIProductOrder.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frLastSDDate) then
    AFrame.ReadOnly:= True
  else
    inherited;
end;

procedure TfmBOIProductOrder.actStoreRequestsExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaStoreRequests);
  cdsStoreRequestsParams.CreateDataSet;
  try
    cdsStoreRequestsParams.Append;
    cdsStoreRequestsParamsPSD_STORE_CODE.AsVariant:= cdsDataSTORE_CODE.AsVariant;
    cdsStoreRequestsParamsPSD_PRODUCT_CODE.AsVariant:= cdsDataPRODUCT_CODE.AsVariant;

    cdsBinding.CreateDataSet;
    try
      cdsBinding.Append;
      AssignFields(cdsData, cdsBinding);
      cdsBindingBND_PROCESS_CODE.AsInteger:= pBPOItem;
      cdsBinding.Post;

      cdsStoreRequestsParamsBND_PROCESS.AsString:= cdsBinding.XMLData;

    finally
      cdsBinding.Close;
    end;

    cdsStoreRequestsParams.Post;
    TfmStoreRequests.ShowForm(nil, cdsStoreRequestsParams, emReadOnly, doNone, False)
  finally
    cdsStoreRequestsParams.Close;
  end;  { try }
end;

procedure TfmBOIProductOrder.actStoreRequestsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDataBOI_ORDER_OBJECT_BRANCH_CODE.IsNull;
end;

procedure TfmBOIProductOrder.actStoreDealsExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaStoreDeals);

  cdsStoreDealsParams.TempCreateDataSet/
    procedure begin
      cdsStoreDealsParams.SafeAppend/
        procedure begin
          cdsBOIOrderStoreDealsMinMaxDates.Params.ParamByName('BOI_ORDER_OBJECT_BRANCH_CODE').Assign(cdsDataBOI_ORDER_OBJECT_BRANCH_CODE);
          cdsBOIOrderStoreDealsMinMaxDates.Params.ParamByName('BOI_ORDER_OBJECT_CODE').Assign(cdsDataBOI_ORDER_OBJECT_CODE);
          cdsBOIOrderStoreDealsMinMaxDates.TempOpen/
            procedure begin
              if cdsBOIOrderStoreDealsMinMaxDatesMIN_STORE_DEAL_DATE.IsNull then
                raise Exception.Create(SThereAreNoStoreDeals);

              cdsStoreDealsParamsSTART_DATE.Assign(cdsBOIOrderStoreDealsMinMaxDatesMIN_STORE_DEAL_DATE);
              cdsStoreDealsParamsEND_DATE.Assign(cdsBOIOrderStoreDealsMinMaxDatesMAX_STORE_DEAL_DATE);
            end;

          cdsBinding.TempCreateDataSet/
            procedure begin
              cdsBinding.SafeAppend/
                procedure begin
                  AssignFields(cdsData, cdsBinding);
                  cdsBindingBND_PROCESS_CODE.AsInteger:= pBPOItem;
                end;

              cdsStoreDealsParamsBND_PROCESS.AsString:= cdsBinding.XMLData;
            end;
        end;

      TfmStoreDeals.ShowForm(nil, cdsStoreDealsParams, emReadOnly, doNone, False, pcNormal);
    end;
end;

procedure TfmBOIProductOrder.CloseDataSets;
begin
  cdsMeasures.Close;
  inherited;
end;

procedure TfmBOIProductOrder.OpenDataSets;
begin
  inherited;
  cdsMeasures.Open;
end;

function TfmBOIProductOrder.RequiredFieldsNotNull: Boolean;
begin
  Result:=
    not cdsDataCONSUMER_DEPT_CODE.IsNull and
    not cdsDataPRODUCT_CODE.IsNull and
    not cdsDataSTORE_CODE.IsNull and
    not cdsDataQUANTITY.IsNull and
    not cdsDataPLAN_DATE.IsNull;
end;

procedure TfmBOIProductOrder.cdsBOIOrderInfoBOI_DAYS_LEFT_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIProductOrder.actFormUpdate(Sender: TObject);
begin
  inherited;
  edtQuantity.ReadOnly:= IsReadOnly;
  edtQuantity.Color:= ReadOnlyColors[edtQuantity.ReadOnly];
  edtAccountQuantity.ReadOnly:= IsReadOnly;
  edtAccountQuantity.Color:= ReadOnlyColors[edtAccountQuantity.ReadOnly];
end;

procedure TfmBOIProductOrder.FormShow(Sender: TObject);
begin
  inherited;
  frProduct.FieldNames:= 'PRODUCT_CODE';
  frProduct.TreeDetailSelection:= tdsInstance;
  frProduct.RootCode:= cdsBOIOrderInfoBC_PRODUCT_CODE.AsInteger;
end;

procedure TfmBOIProductOrder.actNewStoreDealExecute(Sender: TObject);
begin
  inherited;

  LoginContext.CheckUserActivity(uaStoreDealsEdit);

  if not cdsDataIS_CONFIRMED.AsBoolean then
    raise Exception.Create(SCannotCreateStoreDealOnNotConfirmedOrder);

  if cdsData.Modified then
    begin
      if (MessageDlgEx(SConfirmBOIOSave, mtConfirmation, [mbOK, mbCancel], 0) = mrOk) then
        begin
          if (cdsData.State in dsEditModes) then
            cdsData.Post;

          actApplyUpdates.Execute;
        end
      else
        Abort;
    end;

  cdsStoreDealsParams.CreateDataSet;
  try
    cdsStoreDealsParams.Append;

    cdsStoreDealsParamsBND_PROCESS_CODE.AsInteger:= pBPOItem;
    cdsStoreDealsParamsBND_PROCESS_OBJECT_BRANCH_CODE.Assign(cdsDataBOI_ORDER_OBJECT_BRANCH_CODE);
    cdsStoreDealsParamsBND_PROCESS_OBJECT_CODE.Assign(cdsDataBOI_ORDER_OBJECT_CODE);
    cdsStoreDealsParamsPRODUCT_MEASURE_CODE.Assign(cdsDataMEASURE_CODE);
    cdsStoreDealsParamsPRODUCT_ACC_MEASURE_CODE.Assign(cdsDataACCOUNT_MEASURE_CODE);
    cdsStoreDealsParamsPRODUCT_ACC_MEASURE_COEF.Assign(cdsDataACCOUNT_MEASURE_COEF);
    cdsStoreDealsParamsWANTED_QUANTITY.Assign(cdsDataQUANTITY);
    AssignFields(cdsData, cdsStoreDealsParams);

    cdsStoreDealsParams.Post;
    if TfmStoreDealOut.ShowForm(nil, cdsStoreDealsParams, emInsert, doDataset, pcNormal) then
      FStoreDealModified:= True;
  finally
    cdsStoreDealsParams.Close;
  end;  { try }
end;

procedure TfmBOIProductOrder.actNewStoreDealUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

procedure TfmBOIProductOrder.cdsData_PRODUCT_BOI_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIProductOrder.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsDataPRODUCT_SINGLE_PRICE.IsNull or
     cdsDataACCOUNT_QUANTITY.IsNull then
    cdsData_PRODUCT_TOTAL_PLAN_PRICE.Clear
  else
    cdsData_PRODUCT_TOTAL_PLAN_PRICE.AsFloat:=
      cdsDataPRODUCT_SINGLE_PRICE.AsFloat *  cdsDataACCOUNT_QUANTITY.AsFloat;

  if cdsData_PRODUCT_TOTAL_PLAN_PRICE.IsNull or
     (cdsBOIOrderInfoBOI_TOTAL_PRICE.AsFloat = 0) then
    cdsData_PRODUCT_BOI_PRICE_PERCENT.Clear
  else
    cdsData_PRODUCT_BOI_PRICE_PERCENT.AsFloat:=
      cdsData_PRODUCT_TOTAL_PLAN_PRICE.AsFloat / cdsBOIOrderInfoBOI_TOTAL_PRICE.AsFloat;

  cdsData_QUANTITY_DEVIATION.AsVariant:= cdsDataQUANTITY.AsVariant - cdsDataPRODUCT_REAL_QUANTITY.AsVariant;
  cdsData_ACCOUNT_QUANTITY_DEVIATION.AsVariant:= cdsDataACCOUNT_QUANTITY.AsVariant - cdsDataPRODUCT_REAL_ACCOUNT_QUANTITY.AsVariant;

  if cdsDataPLAN_DATE.IsNull then
    cdsData_PRODUCT_DAYS_DEVIATION.Clear
  else
    cdsData_PRODUCT_DAYS_DEVIATION.AsInteger:=
      dmMain.CountWorkdays(
        IfThen(cdsDataPRODUCT_LAST_DEAL_DATE.IsNull, ContextDate, cdsDataPRODUCT_LAST_DEAL_DATE.AsDateTime),
        cdsDataPLAN_DATE.AsDateTime);

  cdsData_PRODUCT_TOTAL_PRICE_DEVIATION.AsVariant:= cdsData_PRODUCT_TOTAL_PLAN_PRICE.AsVariant - cdsDataPRODUCT_REAL_TOTAL_PRICE.AsVariant;

  if (cdsData_QUANTITY_DEVIATION.AsFloat = 0) or
     (cdsDataQUANTITY.AsFloat = 0) then
    cdsData_QUANTITY_DEV_PERCENT.Clear
  else
    cdsData_QUANTITY_DEV_PERCENT.AsFloat:= cdsData_QUANTITY_DEVIATION.AsFloat / cdsDataQUANTITY.AsFloat;

  if (cdsData_ACCOUNT_QUANTITY_DEVIATION.AsFloat = 0) or
     (cdsDataACCOUNT_QUANTITY.AsFloat = 0) then
    cdsData_ACCOUNT_QUANTITY_DEV_PERCENT.Clear
  else
    cdsData_ACCOUNT_QUANTITY_DEV_PERCENT.AsFloat:= cdsData_ACCOUNT_QUANTITY_DEVIATION.AsFloat / cdsDataACCOUNT_QUANTITY.AsFloat;

  if (cdsData_PRODUCT_TOTAL_PRICE_DEVIATION.AsFloat = 0) or
     (cdsData_PRODUCT_TOTAL_PLAN_PRICE.AsFloat = 0) then
    cdsData_PRODUCT_TOTAL_PRICE_DEV_PER.Clear
  else
    cdsData_PRODUCT_TOTAL_PRICE_DEV_PER.AsFloat:= cdsData_PRODUCT_TOTAL_PRICE_DEVIATION.AsFloat / cdsData_PRODUCT_TOTAL_PLAN_PRICE.AsFloat;
end;

procedure TfmBOIProductOrder.NumericFieldsGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIProductOrder.cdsData_QUANTITY_DEV_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIProductOrder.cdsPrintData_PRODUCT_BOI_PRICE_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIProductOrder.cdsData_ACCOUNT_QUANTITY_DEV_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIProductOrder.cdsData_PRODUCT_TOTAL_PRICE_DEV_PERGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIProductOrder.actToggleDeviationDiffPercentUpdate(
  Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      edtQuantityDeviation.DataField:=
        IfThen(Checked, cdsData_QUANTITY_DEV_PERCENT.FieldName, cdsData_QUANTITY_DEVIATION.FieldName);

      lblDeviationMeasure.Caption:=
        IfThen(Checked, '%', cdsData_MEASURE_ABBREV.DisplayText);

      edtAccountQuantityDeviation.DataField:=
        IfThen(Checked, cdsData_ACCOUNT_QUANTITY_DEV_PERCENT.FieldName, cdsData_ACCOUNT_QUANTITY_DEVIATION.FieldName);

      lblDeviationAccountMeasure.Caption:=
        IfThen(Checked, '%', cdsData_ACCOUNT_MEASURE_ABBREV.DisplayText);

      edtProductTotalPriceDeviation.DataField:=
        IfThen(Checked, cdsData_PRODUCT_TOTAL_PRICE_DEV_PER.FieldName, cdsData_PRODUCT_TOTAL_PRICE_DEVIATION.FieldName);

      lblDeviationPriceMeasure.Caption:=
        IfThen(Checked, '%', LoginContext.BaseCurrencyAbbrev);
    end;
end;

procedure TfmBOIProductOrder.AssignPrintFields;
begin
  inherited;
  cdsPrintDataPRODUCT_NAME.Assign(frProduct.cdsTreeNodeNODE_NAME);
  cdsPrintDataPRODUCT_NO.Assign(frProduct.cdsTreeNodeNODE_NO);
  cdsPrintDataSTORE_DEPT_NAME.Assign(frStore.cdsTreeNodeNODE_NAME);
  cdsPrintDataSTORE_DEPT_NO.Assign(frStore.cdsTreeNodeNODE_NO);
end;

procedure TfmBOIProductOrder.actConfirmExecute(Sender: TObject);
begin
  CheckRequiredField(cdsDataPLAN_DATE);
  inherited;
end;

end.

