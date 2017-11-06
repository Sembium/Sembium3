unit fSaleShipmentEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, ImgList, ActnList, StdCtrls, Buttons,
  ExtCtrls, Mask, DBCtrls, JvToolEdit, JvDBControls, uClientTypes, ComCtrls,
  AbmesClientDataSet, Menus, JvButtons,
  JvDBLookup, fEditForm, dDocClient, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateFieldEditFrame, JvExControls, JvComponent, JvCaptionButton,
  JvComponentBase, fDateIntervalFrame, ToolWin, JvExStdCtrls, JvCombobox,
  JvDBCombobox, AbmesFields;

type
  TfmSaleShipmentEdit = class(TEditForm)
    gbInvoice: TGroupBox;
    lblInvoiceNo: TLabel;
    edtInvoiceNo: TDBEdit;
    lblInvoiceDate: TLabel;
    frInvoiceDate: TfrDateFieldEditFrame;
    dsSale: TDataSource;
    gbSalePlan: TGroupBox;
    frShipmentPlanDate: TfrDateFieldEditFrame;
    lblShipmentPlanDate: TLabel;
    gbPlanQuantity: TGroupBox;
    txtPlanMeasureAbbrev: TDBText;
    txtAccountPlanMeasureAbbrev: TDBText;
    lblPlanShipmentQuantity: TLabel;
    lblPlanShipmentAccountQuantity: TLabel;
    edtPlanShipmentQuantity: TDBEdit;
    edtPlanShipmentAccountQuantity: TDBEdit;
    gbLeasePlan: TGroupBox;
    frLeasePlanDateInterval: TfrDateIntervalFrame;
    lblLeaseDateInterval: TLabel;
    txtLeasePlanQuantityMeasure: TDBText;
    lblLeasePlanQuantity: TLabel;
    edtLeasePlanQuantity: TDBEdit;
    lblLeasePlanDateUnitQty: TLabel;
    lblLeaseDateUnit: TLabel;
    lblFor2: TLabel;
    edtLeasePlanDateUnitQty: TDBEdit;
    edtLeaseDateUnit: TDBEdit;
    lblPlanTotalLeaseDateUnitQty: TLabel;
    edtPlanTotalLeaseDateUnitQty: TDBEdit;
    gbReal: TGroupBox;
    actFinOrder: TAction;
    btnFinOrder: TButton;
    actDocs: TAction;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    lblIsProformInvoice2: TLabel;
    cbIsProformInvoice: TJvDBComboBox;
    gbInvoiceQuantity: TGroupBox;
    txtInvoiceMeasureAbbrev: TDBText;
    txtInvoiceAccountMeasureAbbrev: TDBText;
    lblInvoiceShipmentQuantity: TLabel;
    lblInvoiceShipmentAccountQuantity: TLabel;
    edtInvoiceShipmentQuantity: TDBEdit;
    edtInvoiceShipmentAccountQuantity: TDBEdit;
    gbInvoiceLeaseQuantities: TGroupBox;
    txtLeasePlanQuantityMeasure2: TDBText;
    lblLeasePlanQuantity2: TLabel;
    lblLeaseDateUnitQty: TLabel;
    lblLeaseDateUnit2: TLabel;
    lblFor: TLabel;
    lblTotalLeaseDateUnitQty: TLabel;
    edtLeasePlanQuantity2: TDBEdit;
    edtLeaseDateUnitQty: TDBEdit;
    edtLeaseDateUnit2: TDBEdit;
    edtTotalLeaseDateUnitQty: TDBEdit;
    gbPrice: TGroupBox;
    lblCurrency: TLabel;
    lblSinglePrice: TLabel;
    lblTotalPrice: TLabel;
    edtSinglePrice: TDBEdit;
    edtTotalPrice: TDBEdit;
    cbCurrency: TJvDBLookupCombo;
    pnlSaleReal: TPanel;
    pnlLeaseReal: TPanel;
    lblShipmentDate: TLabel;
    lblReceiveDate: TLabel;
    frShipmentDate: TfrDateFieldEditFrame;
    frReceiveDate: TfrDateFieldEditFrame;
    gbRealQuantity: TGroupBox;
    txtRealMeasureAbbrev: TDBText;
    txtRealAccountMeasureAbbrev: TDBText;
    lblRealShipmentQuantity: TLabel;
    lblRealShipmentAccountQuantity: TLabel;
    edtRealShipmentQuantity: TDBEdit;
    edtRealShipmentAccountQuantity: TDBEdit;
    lblShipmentDate2: TLabel;
    lblReceiveDate2: TLabel;
    lblImportDate: TLabel;
    frShipmentDate2: TfrDateFieldEditFrame;
    frReceiveDate2: TfrDateFieldEditFrame;
    gbStoreOut: TGroupBox;
    txtLeaseStoreOutQuantityMesure: TDBText;
    lblLeaseStoreOutQuantity: TLabel;
    lblStoreOutDate: TLabel;
    edtLeaseStoreOutQuantity: TDBEdit;
    frStoreOutDate: TfrDateFieldEditFrame;
    frImportDate: TfrDateFieldEditFrame;
    gbStoreIn: TGroupBox;
    txtLeaseStoreInQuantityMeasure: TDBText;
    lblLeaseStoreInQuantity: TLabel;
    lblStoreInDate: TLabel;
    edtLeaseStoreInQuantity: TDBEdit;
    frStoreInDate: TfrDateFieldEditFrame;
    btnInvoice: TBitBtn;
    actInvoice: TAction;
    cdsNewInvoice: TAbmesClientDataSet;
    cdsNewInvoiceSELLER_COMPANY_CODE: TAbmesFloatField;
    cdsNewInvoiceBUYER_COMPANY_CODE: TAbmesFloatField;
    cdsNewInvoiceCURRENCY_CODE: TAbmesFloatField;
    cdsNewInvoiceINVOICE_DATE: TAbmesSQLTimeStampField;
    cdsNewInvoiceItems: TAbmesClientDataSet;
    cdsNewInvoiceItemsPRODUCT_CODE: TAbmesFloatField;
    cdsNewInvoiceItemsACCOUNT_QUANTITY: TAbmesFloatField;
    cdsNewInvoiceItemsSINGLE_PRICE: TAbmesFloatField;
    cdsNewInvoiceItemsMARKET_SINGLE_PRICE: TAbmesFloatField;
    cdsNewInvoiceItemsDISCOUNT_PERCENT: TAbmesFloatField;
    cdsNewInvoiceItemsCURRENCY_CODE: TAbmesFloatField;
    cdsSaleShipmentInvoice: TAbmesClientDataSet;
    cdsSaleShipmentInvoiceINVOICE_BRANCH_CODE: TAbmesFloatField;
    cdsSaleShipmentInvoiceINVOICE_CODE: TAbmesFloatField;
    cdsSaleShipmentInvoiceIS_APPROVED: TAbmesFloatField;
    cdsSaleShipmentInvoiceINVOICE_NO: TAbmesFloatField;
    cdsSaleShipmentInvoiceINVOICE_DATE: TAbmesSQLTimeStampField;
    cdsSaleShipmentInvoiceIS_PROFORM_INVOICE: TAbmesFloatField;
    cdsNewInvoiceItemsBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsNewInvoiceItemsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsNewInvoiceItemsBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsNewInvoiceRECEIVER_COMPANY_CODE: TAbmesFloatField;
    cdsNewInvoiceSENDER_COMPANY_CODE: TAbmesFloatField;
    cdsNewInvoiceItemsCLIENT_REQUEST_NO: TAbmesWideStringField;
    cdsNewInvoiceEVENT_DATE: TAbmesSQLTimeStampField;
    procedure actFormUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actFinOrderUpdate(Sender: TObject);
    procedure actFinOrderExecute(Sender: TObject);
    procedure actDocsExecute(Sender: TObject);
    procedure actInvoiceUpdate(Sender: TObject);
    procedure actInvoiceExecute(Sender: TObject);
  private
    { Private declarations }
    function FinishedEditMode: TEditMode;
    function InvoiceMarketSinglePrice: Real;
    function InvoiceQuantity: Real;
    function InvoiceSinglePrice: Real;
    procedure UpdateInvoiceData;
    function InvoiceCurrencyCode: Integer;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    procedure Initialize; override;
    procedure DoApplyUpdates; override;
  end;

implementation

uses
  Variants, uUtils, uSaleDealTypes, fFinOrder, fNewFinOrder, uBorderRelTypes, uDocUtils,
  uUserActivityConsts, uFinOrderRequirementClientUtils, uClientUtils,
  uFinanceClientUtils, fInvoice, uClientDateTime, uInvoiceTypes,
  uComboBoxUtils, dMain;

{$R *.DFM}

resourcestring
  SSinglePriceCaption = 'Единична';
  SLeaseSinglePriceCaption = 'На Единица Работен Ресурс';

procedure TfmSaleShipmentEdit.actFinOrderExecute(Sender: TObject);
var
  PartnerCode: Integer;
  BaseDate: TDateTime;
  SaleBranchCode: Integer;
begin
  inherited;
  if dsData.DataSet.FieldByName('FIN_ORDER_CODE').IsNull then
    begin
      LoginContext.CheckUserActivity(uaNewFinancialOrder);

      PartnerCode:=
        (dsData.DataSet as TClientDataSet).DataSetField.DataSet.FieldByName('CLIENT_COMPANY_CODE').AsInteger;

      SaleBranchCode:=
        (dsData.DataSet as TClientDataSet).DataSetField.DataSet.FieldByName('SALE_BRANCH_CODE').AsInteger;

      if dsData.DataSet.FieldByName('SHIPMENT_DATE').IsNull then
        BaseDate:= dsData.DataSet.FieldByName('SHIPMENT_PLAN_DATE').AsDateTime
      else
        BaseDate:= dsData.DataSet.FieldByName('SHIPMENT_DATE').AsDateTime;

      if not TfmNewFinOrder.ShowForm(nil, dsData.DataSet, emEdit, doNone, PartnerCode, brtClient, BaseDate, BaseDate, SaleBranchCode) then
        Abort;
    end
  else
    begin
      if (dsData.State in dsEditModes) or
         ((dsSale.DataSet as TClientDataSet).ChangeCount > 0) then
        FinOrderGeneratorModifiedError;

      TfmFinOrder.ShowForm(nil, dsData.DataSet, emEdit, doNone, False, True);
    end;
end;

procedure TfmSaleShipmentEdit.actFinOrderUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) or
    (dsData.DataSet.Active and not dsData.DataSet.FieldByName('FIN_ORDER_CODE').IsNull);
end;

procedure TfmSaleShipmentEdit.actDocsExecute(Sender: TObject);
begin
  inherited;

  if (FinishedEditMode <> emReadOnly) and
     dsData.DataSet.FieldByName('DOC_CODE').IsNull then
    CheckEditMode(dsData.DataSet);

  dmDocClient.DSOpenDoc(FinishedEditMode,
    ((Sender as TAction).ActionComponent as TControl), dotSaleShipment, dsData.DataSet);
end;

procedure TfmSaleShipmentEdit.actFormUpdate(Sender: TObject);
const
  SinglePriceCaptions: array[Boolean] of string =
    (SSinglePriceCaption, SLeaseSinglePriceCaption);
var
  IsLease: Boolean;
begin
  inherited;

  IsLease:= (dsSale.DataSet.FieldByName('SALE_DEAL_TYPE_CODE').AsInteger = sdtLease);

  gbSalePlan.Visible:= not IsLease;
  pnlSaleReal.Visible:= not IsLease;
  gbLeasePlan.Visible:= IsLease;
  pnlLeaseReal.Visible:= IsLease;
  gbInvoiceQuantity.Visible:= not IsLease;
  gbInvoiceLeaseQuantities.Visible:= IsLease;

  lblSinglePrice.Caption:= SinglePriceCaptions[IsLease];

  SetControlsReadOnly((FinishedEditMode = emReadOnly), [
    edtPlanShipmentQuantity,
    edtLeasePlanDateUnitQty,
    edtInvoiceShipmentQuantity,
    edtLeaseDateUnitQty
  ]);

  SetControlsReadOnly(
    (FinishedEditMode = emReadOnly) or not LoginContext.HasUserActivity(uaEditSalePrice), [
    edtSinglePrice,
    edtTotalPrice,
    cbCurrency
  ]);

  // osvobojdavame vremenno da moje da se vyvyjda nomer na faktura dori i pri obvurzanost s faktura
  SetControlsReadOnly((FinishedEditMode = emReadOnly) {or (not dsData.DataSet.FieldByName('INVOICE_BRANCH_CODE').IsNull)}, [
    edtInvoiceNo,
    ReplacedDBComboBox(cbIsProformInvoice)
  ]);
end;

function TfmSaleShipmentEdit.InvoiceQuantity: Real;
begin
  if not dsData.DataSet.FieldByName('QUANTITY').IsNull then
    Result:= dsData.DataSet.FieldByName('QUANTITY').AsFloat
  else
    Result:= dsData.DataSet.FieldByName('PLAN_QUANTITY').AsFloat;
end;

function TfmSaleShipmentEdit.InvoiceSinglePrice: Real;
begin
  if not dsData.DataSet.FieldByName('INVOICE_SINGLE_PRICE').IsNull then
    Result:= dsData.DataSet.FieldByName('INVOICE_SINGLE_PRICE').AsFloat
  else
    Result:= dsSale.DataSet.FieldByName('SINGLE_PRICE').AsFloat;
end;

function TfmSaleShipmentEdit.InvoiceMarketSinglePrice: Real;
begin
  if not dsData.DataSet.DataSetField.DataSet.FieldByName('MARKET_SINGLE_PRICE').IsNull then
    Result:= dsSale.DataSet.FieldByName('MARKET_SINGLE_PRICE').AsFloat
  else
    Result:= InvoiceSinglePrice;
end;

function TfmSaleShipmentEdit.InvoiceCurrencyCode: Integer;
begin
  if not dsData.DataSet.FieldByName('INVOICE_CURRENCY_CODE').IsNull then
    Result:= dsData.DataSet.FieldByName('INVOICE_CURRENCY_CODE').AsInteger
  else
    Result:= dsSale.DataSet.FieldByName('CURRENCY_CODE').AsInteger;
end;

procedure TfmSaleShipmentEdit.actInvoiceExecute(Sender: TObject);
var
  InvoiceEditMode: TEditMode;
  InvoiceDate: TDateTime;
  ReceiverFinPartnerCode: Variant;
begin
  inherited;

  if GetApplyUpdatesEnabled then
    DoApplyUpdates;

  if dsData.DataSet.FieldByName('INVOICE_BRANCH_CODE').IsNull then
    with dsData.DataSet do
      begin
        LoginContext.CheckUserActivity(uaOutFaktura);

        cdsNewInvoice.TempCreateDataSet/
          procedure begin
            cdsNewInvoice.SafeAppend/
              procedure begin
                InvoiceDate:= IfThen(not FieldByName('INVOICE_DATE').IsNull, FieldByName('INVOICE_DATE').AsDateTime, ContextDate);

                ReceiverFinPartnerCode:=
                  dmMain.SvrCompanies.GetFinPartner(
                    dsSale.DataSet.FieldByName('CLIENT_COMPANY_CODE').AsInteger,
                    BorderRelTypeToInt(brtClient),
                    InvoiceDate, InvoiceDate);

                cdsNewInvoiceBUYER_COMPANY_CODE.AsInteger:=
                  IfThen(VarIsNullOrEmpty(ReceiverFinPartnerCode), dsSale.DataSet.FieldByName('CLIENT_COMPANY_CODE').AsInteger, ReceiverFinPartnerCode);

                cdsNewInvoiceRECEIVER_COMPANY_CODE.AsInteger:= dsSale.DataSet.FieldByName('CLIENT_COMPANY_CODE').AsInteger;
                cdsNewInvoiceSELLER_COMPANY_CODE.AsInteger:= 0;
                cdsNewInvoiceSENDER_COMPANY_CODE.AsInteger:= 0;
                cdsNewInvoiceCURRENCY_CODE.AsInteger:= LoginContext.BaseCurrencyCode;
                cdsNewInvoiceINVOICE_DATE.AsDateTime:= InvoiceDate;
                cdsNewInvoiceEVENT_DATE.AsDateTime:= InvoiceDate;
              end;  { lambda }

            cdsNewInvoiceItems.TempCreateDataSet/
              procedure begin
                cdsNewInvoiceItems.SafeAppend/
                  procedure begin
                    cdsNewInvoiceItemsPRODUCT_CODE.AsInteger:= dsSale.DataSet.FieldByName('PRODUCT_CODE').AsInteger;
                    cdsNewInvoiceItemsACCOUNT_QUANTITY.AsFloat:= InvoiceQuantity * dsSale.DataSet.FieldByName('ACCOUNT_MEASURE_COEF').AsFloat;
                    cdsNewInvoiceItemsSINGLE_PRICE.AsFloat:= InvoiceSinglePrice / dsSale.DataSet.FieldByName('ACCOUNT_MEASURE_COEF').AsFloat;
                    cdsNewInvoiceItemsMARKET_SINGLE_PRICE.AsFloat:= InvoiceMarketSinglePrice / dsSale.DataSet.FieldByName('ACCOUNT_MEASURE_COEF').AsFloat;
                    cdsNewInvoiceItemsDISCOUNT_PERCENT.AsFloat:= dsSale.DataSet.FieldByName('DISCOUNT_PERCENT').AsFloat;
                    cdsNewInvoiceItemsCURRENCY_CODE.AsInteger:= InvoiceCurrencyCode;
                    cdsNewInvoiceItemsBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger:= FieldByName('SHIPMENT_OBJECT_BRANCH_CODE').AsInteger;
                    cdsNewInvoiceItemsBND_PROCESS_OBJECT_CODE.AsInteger:= FieldByName('SHIPMENT_OBJECT_CODE').AsInteger;
                    cdsNewInvoiceItemsBND_PROCESS_OBJECT_IDENTIFIER.AsString:= FieldByName('SHIPMENT_OBJECT_IDENTIFIER').AsString;
                    cdsNewInvoiceItemsCLIENT_REQUEST_NO.AsString:= FieldByName('CLIENT_REQUEST_NO').AsString;
                  end;  { lambda }

                if TfmInvoice.ShowForm(nil, nil, emInsert, iiotOut, itFaktura, cdsNewInvoice, cdsNewInvoiceItems) then
                  UpdateInvoiceData;
              end;  { lambda }
          end;  { lambda }
      end
  else
    begin
      if (EditMode = emReadOnly) then
        InvoiceEditMode:= emReadOnly
      else
        InvoiceEditMode:= emEdit;

      if TfmInvoice.ShowForm(dmDocClient, dsData.DataSet, InvoiceEditMode, iiotOut) then
        UpdateInvoiceData;
    end;
end;

procedure TfmSaleShipmentEdit.UpdateInvoiceData;
begin
  CheckEditMode(dsSale.DataSet);
  dsSale.DataSet.FieldByName('INVOICES_MODIFIED').AsBoolean:= True;

  cdsSaleShipmentInvoice.Params.ParamByName('SHIPMENT_OBJECT_BRANCH_CODE').AsInteger:= dsData.DataSet.FieldByName('SHIPMENT_OBJECT_BRANCH_CODE').AsInteger;
  cdsSaleShipmentInvoice.Params.ParamByName('SHIPMENT_OBJECT_CODE').AsInteger:= dsData.DataSet.FieldByName('SHIPMENT_OBJECT_CODE').AsInteger;
  cdsSaleShipmentInvoice.TempOpen/
    procedure begin
      CheckEditMode(dsData.DataSet);
      dsData.DataSet.FieldByName('INVOICE_BRANCH_CODE').Assign(cdsSaleShipmentInvoiceINVOICE_BRANCH_CODE);
      dsData.DataSet.FieldByName('INVOICE_CODE').Assign(cdsSaleShipmentInvoiceINVOICE_CODE);
      if cdsSaleShipmentInvoiceIS_APPROVED.AsBoolean then
        begin
          dsData.DataSet.FieldByName('INVOICE_NO').Assign(cdsSaleShipmentInvoiceINVOICE_NO);
          dsData.DataSet.FieldByName('IS_PROFORM_INVOICE').Assign(cdsSaleShipmentInvoiceIS_PROFORM_INVOICE);
          dsData.DataSet.FieldByName('INVOICE_DATE').Assign(cdsSaleShipmentInvoiceINVOICE_DATE);
        end;  { if }
    end;  { lambda }
end;

procedure TfmSaleShipmentEdit.actInvoiceUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:= LoginContext.IsInvoiceSystemVisible;
  (Sender as TAction).Enabled:=
    (dsSale.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').IsNull) and
    (dsData.DataSet.FieldByName('QUANTITY').AsFloat > 0) and
    (dsSale.DataSet.FieldByName('ACCOUNT_MEASURE_COEF').AsFloat <> 0) and
    (not dsData.DataSet.FieldByName('INVOICE_BRANCH_CODE').IsNull or (FinishedEditMode <> emReadOnly)) and
    (dsData.DataSet.UpdateStatus in [usModified, usUnmodified]);
end;

procedure TfmSaleShipmentEdit.DoApplyUpdates;
begin
  if actFinOrder.Enabled then
    begin
      if dsData.DataSet.FieldByName('FO_EXEC_DEPT_CODE').IsNull and FinOrderNeeded then
        actFinOrder.Execute;

      CheckFinOrderField(dsData.DataSet.FieldByName('FO_EXEC_DEPT_CODE'));
    end;

  inherited;
end;

function TfmSaleShipmentEdit.FinishedEditMode: TEditMode;
begin
  if not dsSale.DataSet.FieldByName('FINISH_EMPLOYEE_CODE').IsNull then
    Result:= emReadOnly
  else
    Result:= EditMode;
end;

procedure TfmSaleShipmentEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);

  procedure CheckFieldGroup(AFields: array of TField);
  var
    i: Integer;
    Required: Boolean;
  begin
    Required:= False;
    for i:= Low(AFields) to High(AFields) do
      if not AFields[i].IsNull then
        begin
          Required:= True;
          Break;
        end;   { if }

    if Required then
      for i:= Low(AFields) to High(AFields) do
        CheckRequiredField(AFields[i]);
  end;

begin
  if (ModalResult = mrOK) then
    begin
      ActiveControl:= btnOK;

      with dsData.DataSet do
        begin
          if (dsSale.DataSet.FieldByName('SALE_DEAL_TYPE_CODE').AsInteger in [sdtSale, sdtExport]) then
            begin
              CheckRequiredFields([
                FieldByName('SHIPMENT_PLAN_DATE'),
                FieldByName('PLAN_QUANTITY')
              ]);
              CheckFieldGroup([
                FieldByName('SHIPMENT_DATE'),
                FieldByName('QUANTITY')
              ]);
            end
          else
            begin
              CheckRequiredFields([
                FieldByName('RECEIVE_PLAN_DATE'),
                FieldByName('RETURN_PLAN_DATE'),
                FieldByName('LEASE_PLAN_DATE_UNIT_QTY')
              ]);
              CheckFieldGroup([
                FieldByName('SHIPMENT_DATE'),
                FieldByName('LEASE_DATE_UNIT_QTY')
              ]);
            end;

          if not (FieldByName('INVOICE_NO').IsNull and
                  FieldByName('IS_PROFORM_INVOICE').IsNull and
                  FieldByName('INVOICE_DATE').IsNull) then
            CheckRequiredFields(dsData.DataSet, 'INVOICE_NO; IS_PROFORM_INVOICE; INVOICE_DATE');

          CheckFieldGroup([
            FieldByName('INVOICE_SINGLE_PRICE'),
            FieldByName('INVOICE_TOTAL_PRICE'),
            FieldByName('_INVOICE_CURRENCY_ABBREV')
          ]);
        end;
    end;   { if }

  inherited;
end;

procedure TfmSaleShipmentEdit.FormCreate(Sender: TObject);
begin
  inherited;
  frShipmentPlanDate.FieldNames:= 'SHIPMENT_PLAN_DATE';
  frShipmentDate.FieldNames:= 'SHIPMENT_DATE';
  frReceiveDate.FieldNames:= 'RECEIVE_DATE';
  frShipmentDate2.FieldNames:= 'SHIPMENT_DATE';
  frReceiveDate2.FieldNames:= 'RECEIVE_DATE';
  frImportDate.FieldNames:= 'IMPORT_DATE';
  frInvoiceDate.FieldNames:= 'INVOICE_DATE';
  frLeasePlanDateInterval.FieldNames:= 'RECEIVE_PLAN_DATE; RETURN_PLAN_DATE';
  frStoreOutDate.FieldNames:= 'SHIPMENT_OUT_LAST_DATE';
  frStoreInDate.FieldNames:= 'SHIPMENT_IN_LAST_DATE';
end;

procedure TfmSaleShipmentEdit.Initialize;
begin
  inherited;
  dsSale.DataSet:= (dsData.DataSet as TClientDataSet).DataSetField.DataSet;

  if (dsSale.DataSet.FieldByName('SALE_DEAL_TYPE_CODE').AsInteger in [sdtSale, sdtExport]) then
    begin
      Height:= Height - 64;
      Width:= Width - 80;
    end;

  actForm.Update;

  InitializeBooleanComboBox(cbIsProformInvoice);

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotSaleShipment, dsData.DataSet);
end;

procedure TfmSaleShipmentEdit.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frStoreOutDate) or
     (AFrame = frStoreInDate) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  if (AFrame = frInvoiceDate) then
    begin
      // osvobojdavame vremenno da moje da se vyvyjda data na faktura dori i pri obvurzanost s faktura
      AFrame.ReadOnly:=
        (FinishedEditMode = emReadOnly){ or
        (not dsData.DataSet.FieldByName('INVOICE_BRANCH_CODE').IsNull)};
      Exit;
    end;  { if }

  AFrame.ReadOnly:= (FinishedEditMode = emReadOnly);
end;

end.
