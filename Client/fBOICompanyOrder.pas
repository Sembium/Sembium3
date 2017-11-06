unit fBOICompanyOrder;

interface
                                     
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBOIOrder, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields,
  fDateFieldEditFrame, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, fDeptFieldEditFrameLabeled, ToolWin,
  ComCtrls, fDateIntervalFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, Mask, DBCtrls, fPartnerFieldEditFrame,
  fPartnerFieldEditFrameLabeled, fPartnerFieldEditFrameBald, JvExControls,
  JvDBLookup, JvComponentBase, fTreeOnlyNodeFieldEditFrame,
  fProductFieldEditFrame, fProductFieldEditFrameLabeled, rBOICompanyOrder,
  rDBDataReport, System.Actions;

type
  TfmBOICompanyOrder = class(TfmBOIOrder)
    cdsCurrencies: TAbmesClientDataSet;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsCurrenciesCURRENCY_NAME: TAbmesWideStringField;
    cdsCurrenciesSCALE: TAbmesFloatField;
    cdsCurrenciesROUNDER: TAbmesFloatField;
    cdsCurrenciesORDER_NO: TAbmesFloatField;
    cdsCurrenciesCURRENCY_NAME_SINGULAR: TAbmesWideStringField;
    cdsCurrenciesCURRENCY_NAME_PLURAL: TAbmesWideStringField;
    cdsCurrenciesCURRENCY_NAME_GENDER_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_CENT_NAME_SINGULAR: TAbmesWideStringField;
    cdsCurrenciesCURRENCY_CENT_NAME_PLURAL: TAbmesWideStringField;
    cdsCurrenciesCURRENCY_CENT_NAME_GENDER_CODE: TAbmesFloatField;
    dsCurrencies: TDataSource;
    gbPartner: TGroupBox;
    frCompany: TfrPartnerFieldEditFrameBald;
    gbDescription: TGroupBox;
    edtDescription: TDBEdit;
    gbPlan: TGroupBox;
    lblCurrency: TLabel;
    lblPlanTotalPrice: TLabel;
    lblPlanDate: TLabel;
    lblBOITotalPricePercent: TLabel;
    cbCurrency: TJvDBLookupCombo;
    edtPlanTotalPrice: TDBEdit;
    frPlanDate: TfrDateFieldEditFrame;
    edtBOITotalPricePercent: TDBEdit;
    gbReal: TGroupBox;
    lblDocumentTypeText: TLabel;
    lblDocumentIDText: TLabel;
    lblBOIOAccountTotalPrice: TLabel;
    lblAccountDate: TLabel;
    edtDocumentTypeText: TDBEdit;
    edtDocumentIDText: TDBEdit;
    edtBOIOAccountTotalPrice: TDBEdit;
    frAccountDate: TfrDateFieldEditFrame;
    gbPlanRealDeviation: TGroupBox;
    lblPlanRealPriceDeviation: TLabel;
    lblWorkdays: TLabel;
    edtDaysDeviation: TDBEdit;
    edtPlanRealPriceDeviation: TDBEdit;
    gbFinanceContract: TGroupBox;
    btnToggleDeviationDiffPercent: TSpeedButton;
    lblPriceDeviationMeasure: TLabel;
    cdsData_CURRENCY_ABBREV: TAbmesWideStringField;
    dbtCurrency: TDBText;
    lblPlanTotalPriceBC: TLabel;
    edtPlanTotalPriceBC: TDBEdit;
    lblBOIOAccountTotalPriceBC: TLabel;
    edtBOIOAccountTotalPriceBC: TDBEdit;
    lblBaseCurrency5: TLabel;
    lblPercents4: TLabel;
    lblBaseCurrency4: TLabel;
    dbtCurrency2: TDBText;
    lblBaseCurrencyDeviationTitle: TLabel;
    lblBaseCurrencyDeviation: TLabel;
    edtBaseCurrencyDeviation: TDBEdit;
    actFinOrder: TAction;
    btnFinOrder: TButton;
    cdsPrintDataPLAN_TOTAL_PRICE: TAbmesFloatField;
    cdsPrintDataACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    cdsPrintDataPLAN_TOTAL_PRICE_BC: TAbmesFloatField;
    cdsPrintDataACCOUNT_TOTAL_PRICE_BC: TAbmesFloatField;
    cdsPrintDataACCOUNT_DATE: TAbmesSQLTimeStampField;
    cdsPrintDataPLAN_DATE: TAbmesSQLTimeStampField;
    cdsPrintDataPARTNER_NO: TAbmesFloatField;
    cdsPrintDataPARTNER_NAME: TAbmesWideStringField;
    cdsPrintDataDESCRIPTION: TAbmesWideStringField;
    cdsPrintData_BOI_PRICE_PERCENT_BC: TAbmesFloatField;
    cdsPrintDataDOCUMENT_TYPE_TEXT: TAbmesWideStringField;
    cdsPrintDataDOCUMENT_ID_TEXT: TAbmesWideStringField;
    cdsPrintData_PRICE_DEVIATION: TAbmesFloatField;
    cdsPrintData_PRICE_DEVIATION_BC: TAbmesFloatField;
    cdsPrintData_DAYS_DEVIATION: TAbmesFloatField;
    cdsDataFO_IS_COMPLETED: TAbmesFloatField;
    cdsDataFO_CLOSE_REQUESTED: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure actToggleDeviationDiffPercentUpdate(Sender: TObject);
    procedure cdsDataCURRENCY_CODEChange(Sender: TField);
    procedure cdsDataPLAN_TOTAL_PRICEChange(Sender: TField);
    procedure cdsDataPLAN_DATEChange(Sender: TField);
    procedure cdsDataACCOUNT_TOTAL_PRICEChange(Sender: TField);
    procedure cdsDataACCOUNT_DATEChange(Sender: TField);
    procedure actFinOrderUpdate(Sender: TObject);
    procedure actFinOrderExecute(Sender: TObject);
    procedure cdsDataCOMPANY_CODEChange(Sender: TField);
    procedure cdsPrintData_BOI_PRICE_PERCENT_BCGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    FFinOrderPartnerCode: Integer;
    FFinOrderBaseDate: TDateTime;
    FInitialFinOrderCode: Integer;
    FFinalFinOrderCode: Integer;
    procedure RecalcPlanTotalPriceBaseCurrency;
    procedure RecalcAccountTotalPriceBaseCurrency;
    function GetPartnerCodeForFinOrder: Integer;
    function GetBaseDateForFinOrder: TDateTime;
    procedure ClearNewFinOrderData;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function RequiredFieldsNotNull: Boolean; override;
    procedure AssignPrintFields; override;
    procedure BeforeCloseOrder; override;
    procedure DoApplyUpdates; override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure Initialize; override;
    procedure ReleaseForm; override;
  end;

implementation

uses
  dMain, uClientUtils, uUtils, StrUtils, uClientTypes,
  fNewFinOrder, fFinOrder, uBorderRelTypes, uUserActivityConsts,
  uFinOrderRequirementClientUtils, uBudgetClientUtils, AbmesDialogs,
  uFinanceClientUtils, uCompanyStatuses;

{$R *.dfm}

{ TfmBOICompanyOrder }

procedure TfmBOICompanyOrder.ClearNewFinOrderData;
begin
  if cdsDataFIN_ORDER_CODE.IsNull and
     ( (FFinOrderPartnerCode <> GetPartnerCodeForFinOrder) or
       (FFinOrderBaseDate <> GetBaseDateForFinOrder) ) then
    begin
      CheckEditMode(cdsData);
      cdsDataFO_BRANCH_CODE.Clear;
      cdsDataFO_EXEC_DEPT_CODE.Clear;
      cdsDataFO_PRIORITY_CODE.Clear;
      cdsDataFO_WORK_FINANCIAL_PRODUCT_CODE.Clear;
      cdsDataSPEC_FIN_MODEL_CODE.Clear;
    end;
end;

procedure TfmBOICompanyOrder.CloseDataSets;
begin
  inherited;
  cdsCurrencies.Close;
end;

procedure TfmBOICompanyOrder.DoApplyUpdates;
begin
  inherited;
  FFinalFinOrderCode:= cdsDataFIN_ORDER_CODE.AsInteger;
end;

procedure TfmBOICompanyOrder.OpenDataSets;
begin
  cdsCurrencies.Open;
  inherited;
end;

procedure TfmBOICompanyOrder.FormCreate(Sender: TObject);
begin
  inherited;
  frPlanDate.FieldNames:= 'PLAN_DATE';
  frAccountDate.FieldNames:= 'ACCOUNT_DATE';
  frCompany.FieldNames:= 'COMPANY_CODE';
  frCompany.ShownCompanyStatuses:= ActiveCompanyStatuses;
  ReportClass:= TrptBOICompanyOrder;
end;

function TfmBOICompanyOrder.GetBaseDateForFinOrder: TDateTime;
begin
  if cdsDataACCOUNT_DATE.IsNull then
    Result:= cdsDataPLAN_DATE.AsDateTime
  else
    Result:= cdsDataACCOUNT_DATE.AsDateTime;
end;

function TfmBOICompanyOrder.GetPartnerCodeForFinOrder: Integer;
begin
  Result:= cdsDataCOMPANY_CODE.AsInteger;
end;

procedure TfmBOICompanyOrder.Initialize;
begin
  inherited;
  FInitialFinOrderCode:= cdsDataFIN_ORDER_CODE.AsInteger;
end;

procedure TfmBOICompanyOrder.actFinOrderExecute(Sender: TObject);
var
  PartnerCode: Integer;
  BaseDate: TDateTime;
begin
  inherited;
  if cdsDataFIN_ORDER_CODE.IsNull then
    begin
      LoginContext.CheckUserActivity(uaNewFinancialOrder);
      PartnerCode:= GetPartnerCodeForFinOrder;
      BaseDate:= GetBaseDateForFinOrder;

      if TfmNewFinOrder.ShowForm(nil, cdsData, emEdit, doNone, PartnerCode, brtVendor, BaseDate, BaseDate, cdsDataBUDGET_ORDER_BRANCH_CODE.AsInteger) then
        begin
          FFinOrderPartnerCode:= PartnerCode;
          FFinOrderBaseDate:= BaseDate;
        end
      else
        Abort;
    end
  else
    begin
      if GetApplyUpdatesEnabled then
        FinOrderGeneratorModifiedError;

      TfmFinOrder.ShowForm(nil, dsData.DataSet, emEdit, doNone, False, True);
    end;
end;

procedure TfmBOICompanyOrder.actFinOrderUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    ( (EditMode <> emReadOnly) or
      (cdsData.Active and not cdsDataFIN_ORDER_CODE.IsNull) ) and
    (not cdsDataCOMPANY_CODE.IsNull) and
    (not cdsDataPLAN_DATE.IsNull) and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    not cdsDataIS_CANCELED.AsBoolean;
end;

procedure TfmBOICompanyOrder.actFormUpdate(Sender: TObject);
var
  CanNotAccount: Boolean;
begin
  inherited;
  edtDescription.ReadOnly:= IsReadOnly;
  edtDescription.Color:= ReadOnlyColors[edtDescription.ReadOnly];
  cbCurrency.ReadOnly:= IsReadOnly;
  cbCurrency.Color:= ReadOnlyColors[cbCurrency.ReadOnly];
  edtPlanTotalPrice.ReadOnly:= IsReadOnly;
  edtPlanTotalPrice.Color:= ReadOnlyColors[edtPlanTotalPrice.ReadOnly];

  CanNotAccount:=
    not cdsDataCLOSE_EMPLOYEE_CODE.IsNull or
    not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
    not cdsDataIS_CONFIRMED.AsBoolean;

  edtDocumentTypeText.ReadOnly:= (EditMode = emReadOnly) or CanNotAccount;
  edtDocumentTypeText.Color:= ReadOnlyColors[edtDocumentTypeText.ReadOnly];
  edtDocumentIDText.ReadOnly:= (EditMode = emReadOnly) or CanNotAccount;
  edtDocumentIDText.Color:= ReadOnlyColors[edtDocumentIDText.ReadOnly];
  edtBOIOAccountTotalPrice.ReadOnly:= (EditMode = emReadOnly) or CanNotAccount;
  edtBOIOAccountTotalPrice.Color:= ReadOnlyColors[edtBOIOAccountTotalPrice.ReadOnly];
end;

procedure TfmBOICompanyOrder.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  CheckRequiredField(cdsDataDESCRIPTION);

  if not cdsDataACCOUNT_TOTAL_PRICE.IsNull or not cdsDataACCOUNT_DATE.IsNull then
    CheckRequiredFields([cdsDataACCOUNT_TOTAL_PRICE, cdsDataACCOUNT_DATE]);

  if actFinOrder.Enabled then
    begin
      if cdsDataFO_EXEC_DEPT_CODE.IsNull and
         FinOrderNeeded then
        actFinOrder.Execute;

      CheckFinOrderField(cdsDataFO_EXEC_DEPT_CODE);
    end;
end;

procedure TfmBOICompanyOrder.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frAccountDate) then
    AFrame.ReadOnly:=
      not cdsDataCLOSE_EMPLOYEE_CODE.IsNull or
      not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
      not cdsDataIS_CONFIRMED.AsBoolean
  else
    inherited;
end;

procedure TfmBOICompanyOrder.actToggleDeviationDiffPercentUpdate(
  Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      edtPlanRealPriceDeviation.DataField:=
        IfThen(Checked, cdsData_PRICE_DEVIATION_PERCENT.FieldName, cdsData_PRICE_DEVIATION.FieldName);

      lblPriceDeviationMeasure.Caption:=
        IfThen(Checked, '%', cdsData_CURRENCY_ABBREV.AsString);

      lblBaseCurrencyDeviationTitle.Visible:= not Checked;
      edtBaseCurrencyDeviation.Visible:= not Checked;
      lblBaseCurrencyDeviation.Visible:= not Checked;
    end;
end;

procedure TfmBOICompanyOrder.AssignPrintFields;
begin
  inherited;
  cdsPrintDataPARTNER_NO.Assign(frCompany.cdsPartnerCOMPANY_NO);
  cdsPrintDataPARTNER_NAME.Assign(frCompany.cdsPartner_PARTNER_NAME);
end;

procedure TfmBOICompanyOrder.BeforeCloseOrder;
begin
  inherited;
  if cdsDataFO_IS_COMPLETED.AsBoolean then
    begin
      ConfirmAction(SConfirmFinOrderClose);

      CheckEditMode(cdsData);
      cdsDataFO_CLOSE_REQUESTED.AsBoolean:= True;
    end
  else
    CheckClosingWithFinOrder(cdsDataFO_STATUS_CODE.AsInteger);
end;

procedure TfmBOICompanyOrder.RecalcAccountTotalPriceBaseCurrency;
begin
  if cdsDataACCOUNT_TOTAL_PRICE.IsNull or cdsDataCURRENCY_CODE.IsNull or cdsDataACCOUNT_DATE.IsNull then
    cdsDataACCOUNT_TOTAL_PRICE_BC.Clear
  else
    cdsDataACCOUNT_TOTAL_PRICE_BC.AsFloat:=
      cdsDataACCOUNT_TOTAL_PRICE.AsFloat *
      dmMain.SvrCommon.GetBaseCurrencyFixing(cdsDataCURRENCY_CODE.AsInteger, cdsDataACCOUNT_DATE.AsDateTime);
end;

procedure TfmBOICompanyOrder.RecalcPlanTotalPriceBaseCurrency;
begin
  if cdsDataPLAN_TOTAL_PRICE.IsNull or cdsDataCURRENCY_CODE.IsNull or cdsDataPLAN_DATE.IsNull then
    cdsDataPLAN_TOTAL_PRICE_BC.Clear
  else
    cdsDataPLAN_TOTAL_PRICE_BC.AsFloat:=
      cdsDataPLAN_TOTAL_PRICE.AsFloat *
      dmMain.SvrCommon.GetBaseCurrencyFixing(cdsDataCURRENCY_CODE.AsInteger, cdsDataPLAN_DATE.AsDateTime);
end;

procedure TfmBOICompanyOrder.ReleaseForm;
var
  FinOrderCode: Integer;
begin
  if IsDataModified and
     (FFinalFinOrderCode <> FInitialFinOrderCode) then
    FinOrderCode:= FFinalFinOrderCode
  else
    FinOrderCode:= 0;

  inherited;

  if (FinOrderCode > 0) and
     dmMain.LoginContext.OpenNewFinOrder and
     dmMain.LoginContext.HasUserActivity(uaRealFinancialModelEdit) then
    TfmFinOrder.ShowModel(FinOrderCode, emEdit);
end;

function TfmBOICompanyOrder.RequiredFieldsNotNull: Boolean;
begin
  Result:=
    not cdsDataCONSUMER_DEPT_CODE.IsNull and
    not cdsDataCOMPANY_CODE.IsNull and
    not cdsDataDESCRIPTION.IsNull and
    not cdsDataCURRENCY_CODE.IsNull and
    not cdsDataPLAN_TOTAL_PRICE.IsNull and
    not cdsDataPLAN_DATE.IsNull;
end;

procedure TfmBOICompanyOrder.cdsDataCOMPANY_CODEChange(Sender: TField);
begin
  inherited;
  ClearNewFinOrderData;
end;

procedure TfmBOICompanyOrder.cdsDataCURRENCY_CODEChange(Sender: TField);
begin
  inherited;
  RecalcPlanTotalPriceBaseCurrency;
  RecalcAccountTotalPriceBaseCurrency;
end;

procedure TfmBOICompanyOrder.cdsDataPLAN_TOTAL_PRICEChange(Sender: TField);
begin
  inherited;
  RecalcPlanTotalPriceBaseCurrency;
end;

procedure TfmBOICompanyOrder.cdsPrintData_BOI_PRICE_PERCENT_BCGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOICompanyOrder.cdsDataPLAN_DATEChange(Sender: TField);
begin
  inherited;
  RecalcPlanTotalPriceBaseCurrency;
  ClearNewFinOrderData;
end;

procedure TfmBOICompanyOrder.cdsDataACCOUNT_TOTAL_PRICEChange(
  Sender: TField);
begin
  inherited;
  RecalcAccountTotalPriceBaseCurrency;
end;

procedure TfmBOICompanyOrder.cdsDataACCOUNT_DATEChange(Sender: TField);
begin
  inherited;
  RecalcAccountTotalPriceBaseCurrency;
  ClearNewFinOrderData;
end;

end.
