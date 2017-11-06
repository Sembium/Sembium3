unit fGroupSaleLine;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uClientTypes, Db, DBClient, AbmesClientDataSet, ImgList, ActnList, StdCtrls,
  Buttons, ExtCtrls, Mask, fBaseFrame, fDBFrame, fFieldEditFrame,
  JvToolEdit, JvDBControls, fEditForm,
  JvDBLookup, AbmesDBCheckBox, Menus, JvButtons, dDocClient,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fProductFieldEditFrame,
  fDateFieldEditFrame, JvComponent, JvCaptionButton, JvComponentBase, DBCtrls,
  JvExExtCtrls, JvDBRadioPanel, fDeptFieldEditFrameBald, ToolWin, ComCtrls,
  fPartnerFieldEditFrame, fPartnerExFieldEditFrame, JvExControls,
  fProductExFieldEditFrame, JvExtComponent, fStatusAbstract,
  fParRelProductStatus, AbmesFields;

type
  TfmGroupSaleLine = class(TEditForm)
    grpRequestLineIdentification: TGroupBox;
    lblRequestBranchNo: TLabel;
    edtRequestBranchNo: TDBEdit;
    lblRequestNo: TLabel;
    edtRequestNo: TDBEdit;
    lblRequestLineNo: TLabel;
    edtRequestLineNo: TDBEdit;
    gbPrice: TGroupBox;
    lblSinglePrice: TLabel;
    edtSinglePrice: TDBEdit;
    lblMarketSinglePrice: TLabel;
    edtMarketSinglePrice: TDBEdit;
    lblDiscountPercent: TLabel;
    edtDiscountPercent: TDBEdit;
    lblTotalPrice: TLabel;
    edtTotalPrice: TDBEdit;
    lblMarketSinglePriceCurrencyAbbrev: TDBText;
    lblSinglePriceCurrencyAbbrev: TDBText;
    lblTotalPriceCurrencyAbbrev: TDBText;
    lblDiscountPercentPercent: TLabel;
    gbQuantityShipped: TGroupBox;
    pnlAnnulBtn: TPanel;
    btnAnnul: TBitBtn;
    actAnnul: TAction;
    dsMaster: TDataSource;
    pnlAnnulIndicator: TPanel;
    chkIsAnnuled: TAbmesDBCheckBox;
    gbQuantityTakenFromStore: TGroupBox;
    edtQuantityTakenFromStore: TDBEdit;
    lblQuantityTakenFromStoreMeasureAbbrev: TDBText;
    btnCopyQuantityTakenToQuantityShipped: TSpeedButton;
    actCopyQuantityTakenToQuantityShipped: TAction;
    lblSaleDealType: TLabel;
    edtSaleDealType: TDBEdit;
    rgSaleOrderType: TJvDBRadioPanel;
    edtClientRequestNo: TDBEdit;
    lblClientRequestNo: TLabel;
    lblAspect: TLabel;
    edtAspect: TEdit;
    gbSale: TGroupBox;
    lblSaleBranch: TLabel;
    lblSaleNo: TLabel;
    lblSaleType: TLabel;
    lblPriority: TLabel;
    edtSaleType: TDBEdit;
    edtSaleNo: TDBEdit;
    edtSaleBranch: TDBEdit;
    edtPriority: TDBEdit;
    frClient: TfrPartnerExFieldEditFrame;
    pnlAccountShippedQuantity: TPanel;
    lblAccountQuantityShipped: TLabel;
    lblAccountQuantityShippedMeasureAbbrev: TDBText;
    edtAccountQuantityShipped: TDBEdit;
    pnlShippedLease: TPanel;
    lblShipmentLeaseDateUnitQty: TLabel;
    lblLeaseDateUnitName: TLabel;
    edtShipmentLeaseDateUnitQty: TDBEdit;
    lblShipmentTotalLeaseQuantity: TLabel;
    edtLeaseDateUnitName: TDBEdit;
    edtShipmentTotalLeaseQuantity: TDBEdit;
    pnlShippedQuantityOuter: TPanel;
    pnlShippedQuantity: TPanel;
    lblQuantityShipped: TLabel;
    lblQuantityShippedMeasureAbbrev: TDBText;
    edtQuantityShipped: TDBEdit;
    pnlShippedQuantityTop: TPanel;
    pnlReturnedQuantities: TPanel;
    gbReturnedQuantity: TGroupBox;
    txtReturnedQuantityMeasureAbbrev: TDBText;
    edtReturnedQuantity: TDBEdit;
    gbQuantities: TGroupBox;
    lblQuantity: TLabel;
    txtQuantityClientOfferedMeasureAbbrev: TDBText;
    lblQuantityClientOfferedChg: TLabel;
    txtQuantityMeasureAbbrev: TDBText;
    lblOffer: TLabel;
    lblContract: TLabel;
    lblShipmentStore: TLabel;
    edtQuantityClientOffered: TDBEdit;
    frQuantityClientOfferedChg: TfrDateFieldEditFrame;
    edtQuantity: TDBEdit;
    frQuantityChg: TfrDateFieldEditFrame;
    frShipmentStore: TfrDeptFieldEditFrameBald;
    pnlClientOffer: TPanel;
    pnlAccountQuantityClientOffered: TPanel;
    txtAccountQuantityClientOfferedMeasureAbbrev: TDBText;
    lblAccountQuantity: TLabel;
    edtAccountQuantityClientOffered: TDBEdit;
    pnlLeaseClientOffered: TPanel;
    lblLeaseQuantity: TLabel;
    lblLeaseDateUnit: TLabel;
    edtClientOfferLeaseDateUnitQty: TDBEdit;
    cbClientOfferLeaseDateUnit: TJvDBLookupCombo;
    pnlQuantity: TPanel;
    pnlAccountQuantity: TPanel;
    txtAccountQuantityMeasureAbbrev: TDBText;
    edtAccountQuantity: TDBEdit;
    pnlLease: TPanel;
    edtLeaseDateUnitQty: TDBEdit;
    cbLeaseDateUnit: TJvDBLookupCombo;
    pnlQuantitiesMargin: TPanel;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    frProduct: TfrProductExFieldEditFrame;
    gbParRelProduct: TGroupBox;
    btnParRelProduct: TButton;
    frParRelProductStatus: TfrParRelProductStatus;
    tlbParRelProductDocs: TToolBar;
    btnParRelProductDocs: TToolButton;
    actParRelProduct: TAction;
    actParRelProductDoc: TAction;
    cdsParRelProductDoc: TAbmesClientDataSet;
    cdsParRelProductDocDOC_BRANCH_CODE: TAbmesFloatField;
    cdsParRelProductDocDOC_CODE: TAbmesFloatField;
    cdsParRelProductDocHAS_DOC_ITEMS: TAbmesFloatField;
    actPrice: TAction;
    pnlPriceButton: TPanel;
    btnPrice: TSpeedButton;
    btnCopyQuantityToQuantityShipped: TSpeedButton;
    actCopyQuantityToQuantityShipped: TAction;
    actCopyQuantityClientOfferedToQuantity: TAction;
    btnCopyQuantityClientOfferedToQuantity: TSpeedButton;
    edtMarketSinglePriceWithVat: TDBEdit;
    edtSinglePriceWithVat: TDBEdit;
    edtTotalPriceWithVat: TDBEdit;
    lblWithVat: TLabel;
    procedure btnDocsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actAnnulExecute(Sender: TObject);
    procedure actAnnulUpdate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actCopyQuantityTakenToQuantityShippedUpdate(Sender: TObject);
    procedure actCopyQuantityTakenToQuantityShippedExecute(
      Sender: TObject);
    procedure actParRelProductExecute(Sender: TObject);
    procedure actParRelProductUpdate(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure actParRelProductDocExecute(Sender: TObject);
    procedure actParRelProductDocUpdate(Sender: TObject);
    procedure actPriceExecute(Sender: TObject);
    procedure actPriceUpdate(Sender: TObject);
    procedure actCopyQuantityToQuantityShippedUpdate(Sender: TObject);
    procedure actCopyQuantityToQuantityShippedExecute(Sender: TObject);
    procedure actCopyQuantityClientOfferedToQuantityUpdate(Sender: TObject);
    procedure actCopyQuantityClientOfferedToQuantityExecute(Sender: TObject);
  private
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FParRelProductExists: Boolean;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure CalcParRelProductData;
    procedure CopyToShippedQuantityActionUpdate(Sender: TObject; ASourceFieldName: string);
    procedure CopyToShippedQuantityActionExecute(ASourceFieldName: string);
  protected
    function GetRecordReadOnly: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    class function CanUseDocs: Boolean; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient;
      ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin); override;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  uUtils,  fTreeSelectForm, AbmesDialogs, uCompanyKinds, uSaleDealTypes,
  uDocUtils, uBorderRelTypes, uClientDateTime, fParRelProduct, dMain,
  fProductPartnerPrice, uParRelProducts, uProducts, uClientUtils,
  uUserActivityConsts;

{$R *.DFM}

resourcestring
  SConfirmLineAnnul = 'Потвърдете анулиране на ред';

{ TfmGroupSaleLine }

procedure TfmGroupSaleLine.FormCreate(Sender: TObject);
begin
  inherited;

  frProduct.BorderRelType:= brtClient;
  frProduct.TreeDetailSelection:= tdsInstance;
  frProduct.SpecStateVisible:= False;
  frProduct.PriorityVisible:= False;
  frProduct.MeasureVisible:= False;
  frProduct.AccountMeasureVisible:= False;
  frProduct.CommonStatusVisible:= False;
  frProduct.ProductOriginVisible:= False;
  frProduct.NotesVisible:= False;
  frProduct.ProductPeriodsButtonVisible:= False;
  frProduct.CommonStatuses:= DefiniteProductCommonStatuses;

  frShipmentStore.FieldNames:= 'SHIPMENT_STORE_CODE';
  frShipmentStore.SelectStore:= True;
  frShipmentStore.TreeNodeNameVisible:= False;
  frQuantityClientOfferedChg.FieldNames:= 'CL_OFFER_QUANTITY_CHG';
  frQuantityChg.FieldNames:= 'QUANTITY_CHG';
  frClient.FilterCompanyKind:= ckClient;
  frClient.CountryVisible:= True;
end;

procedure TfmGroupSaleLine.FormShow(Sender: TObject);
begin
  inherited;
  actForm.Update;
end;

procedure TfmGroupSaleLine.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin);
begin
  Assert(ADataSet is TCustomClientDataSet);
  Assert(Assigned((ADataSet as TCustomClientDataSet).DataSetField));

  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);

  dsMaster.DataSet:= (ADataSet as TCustomClientDataSet).DataSetField.DataSet;
  frClient.SetDataSet(dsMaster.DataSet);
end;

function TfmGroupSaleLine.GetRecordReadOnly: Boolean;
begin
  Assert(Assigned(dsData.DataSet));

  Result:=
    inherited GetRecordReadOnly or
    not dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').IsNull;
end;

procedure TfmGroupSaleLine.Initialize;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  frProduct.FieldNames:= 'PRODUCT_CODE; CLIENT_COMPANY_CODE';
  frClient.FieldNames:= 'S_CLIENT_COMPANY_CODE';

  CalcParRelProductData;

  frProduct.PartnerCode:= dsMaster.DataSet.FieldByName('S_CLIENT_COMPANY_CODE').AsInteger;

  if (EditMode = emInsert) then
    begin
      dmDocClient.DSInitDoc(dotSale, dsData.DataSet);
      dmDocClient.DSInitDoc(dotSaleShipment, dsData.DataSet, 'SSH_DOC_BRANCH_CODE', 'SSH_DOC_CODE');
    end;
end;

procedure TfmGroupSaleLine.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

procedure TfmGroupSaleLine.actAnnulExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  if (MessageDlgEx(SConfirmLineAnnul, mtConfirmation, mbOKCancel, 0) <> mrOk) then
    Exit;

  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').AsInteger:=
    LoginContext.UserCode;
  dsData.DataSet.FieldByName('ANNUL_DATE').AsDateTime:= ContextDate();
  dsData.DataSet.FieldByName('ANNUL_TIME').AsDateTime:= ContextTime();
  try
    dsData.DataSet.Post;
  except
    dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').Clear;
    dsData.DataSet.FieldByName('ANNUL_DATE').Clear;
    dsData.DataSet.FieldByName('ANNUL_TIME').Clear;
    raise;
  end;  { try }

  ModalResult:= mrOk;
end;

procedure TfmGroupSaleLine.actAnnulUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and
    dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('FINISH_EMPLOYEE_CODE').IsNull;
end;

procedure TfmGroupSaleLine.actFormUpdate(Sender: TObject);
var
  IsSale, CanStoreDataInShipment: Boolean;
  IsLease: Boolean;
begin
  inherited;
  Assert(Assigned(dsData.DataSet));
  Assert(Assigned(dsMaster.DataSet));

  pnlAnnulBtn.Visible:=
    (EditMode = emEdit) and
    dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('FINISH_EMPLOYEE_CODE').IsNull;

  pnlAnnulIndicator.Visible:=
    not dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').IsNull;

  IsSale:=
    not dsMaster.DataSet.FieldByName('SALE_GROUP_OBJECT_CODE').IsNull;
  CanStoreDataInShipment:=
    IsSale or (dsMaster.DataSet.FieldByName('CREATE_SALE_GROUP').AsInteger <> 0);

  edtQuantityShipped.Enabled:= CanStoreDataInShipment;
  lblQuantityShipped.Enabled:= CanStoreDataInShipment;

  IsLease:= (dsMaster.DataSet.FieldByName('S_SALE_DEAL_TYPE_CODE').AsInteger = sdtLease);

  pnlLeaseClientOffered.Visible:= IsLease;
  pnlAccountQuantityClientOffered.Visible:= not IsLease;
  pnlLease.Visible:= IsLease;
  pnlAccountQuantity.Visible:= not IsLease;
  pnlShippedLease.Visible:= IsLease;
  pnlAccountShippedQuantity.Visible:= not IsLease;
  pnlShippedQuantityTop.Visible:= not IsLease;
  gbReturnedQuantity.Visible:= IsLease;
  pnlQuantitiesMargin.Visible:= IsLease;

  if ( LargeZero(
         dsData.DataSet.FieldByName('SSH_QUANTITY').AsFloat -
         dsData.DataSet.FieldByName('QUANTITY_RETURNED_TO_STORE').AsFloat,
         0.0001
       ) > 0
     ) then
    edtReturnedQuantity.Font.Color:= clRed
  else
    edtReturnedQuantity.Font.Color:= clWindowText;

  btnDocs.ImageIndex:= dsData.DataSet.FieldByName('HAS_DOC_ITEMS').AsInteger;

  SetControlReadOnly(not LoginContext.HasUserActivity(uaEditSalePrice), edtMarketSinglePrice);
  SetControlReadOnly(not LoginContext.HasUserActivity(uaEditSaleDiscount), edtDiscountPercent);
end;

procedure TfmGroupSaleLine.actParRelProductDocExecute(Sender: TObject);
begin
  inherited;

  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotParRelProduct,
    cdsParRelProductDoc
  );
end;

procedure TfmGroupSaleLine.actParRelProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= FParRelProductExists;
  (Sender as TAction).ImageIndex:= cdsParRelProductDocHAS_DOC_ITEMS.AsInteger;
end;

procedure TfmGroupSaleLine.actParRelProductExecute(Sender: TObject);
begin
  inherited;
  TfmParRelProduct.ShowForm(nil, dsData.DataSet, emReadOnly);
end;

procedure TfmGroupSaleLine.actParRelProductUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= FParRelProductExists;
end;

procedure TfmGroupSaleLine.actPriceExecute(Sender: TObject);
begin
  inherited;
  TfmProductPartnerPrice.ShowForm(nil, nil, emReadOnly, doNone,
    dsData.DataSet.FieldByName('PRODUCT_CODE').AsInteger,
    dsMaster.DataSet.FieldByName('S_CLIENT_COMPANY_CODE').AsInteger,
    brtClient,
    SaleDealTypeToObtainmentType(dsMaster.DataSet.FieldByName('S_SALE_DEAL_TYPE_CODE').AsInteger),
    dsMaster.DataSet.FieldByName('S_RECEIVE_DATE').AsDateTime);
end;

procedure TfmGroupSaleLine.actPriceUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not dsData.DataSet.FieldByName('PRODUCT_CODE').IsNull;
end;

procedure TfmGroupSaleLine.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, (Sender as TControl), dotSale, dsData.DataSet);
end;

procedure TfmGroupSaleLine.CalcParRelProductData;
begin
  FParRelProductExists:=
    dmMain.SvrParRelProducts.ParRelProductExists(
      dsData.DataSet.FieldByName('CLIENT_COMPANY_CODE').AsInteger,
      BorderRelTypeToInt(brtClient),
      dsData.DataSet.FieldByName('PRODUCT_CODE').AsInteger);

  cdsParRelProductDoc.Params.ParamByName('PARTNER_CODE').AsInteger:=
    dsData.DataSet.FieldByName('CLIENT_COMPANY_CODE').AsInteger;
  cdsParRelProductDoc.Params.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:=
    BorderRelTypeToInt(brtClient);
  cdsParRelProductDoc.Params.ParamByName('PRODUCT_CODE').AsInteger:=
    dsData.DataSet.FieldByName('PRODUCT_CODE').AsInteger;

  cdsParRelProductDoc.Close;
  cdsParRelProductDoc.Open;

  actParRelProduct.Update;
  actParRelProductDoc.Update;
end;

class function TfmGroupSaleLine.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmGroupSaleLine.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(dsData.DataSet.FieldByName('HAS_DOC_ITEMS'));
end;

procedure TfmGroupSaleLine.dsDataDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if Assigned(Field) and (Field.FieldName = 'PRODUCT_CODE') then
    CalcParRelProductData;
end;

procedure TfmGroupSaleLine.CopyToShippedQuantityActionUpdate(Sender: TObject; ASourceFieldName: string);
var
  IsSale, CanStoreDataInShipment: Boolean;
begin
  Assert(Assigned(dsData.DataSet));
  Assert(Assigned(dsMaster.DataSet));

  IsSale:=
    not dsMaster.DataSet.FieldByName('SALE_GROUP_OBJECT_CODE').IsNull;
  CanStoreDataInShipment:=
    IsSale or (dsMaster.DataSet.FieldByName('CREATE_SALE_GROUP').AsInteger <> 0);

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    CanStoreDataInShipment and
    dsData.DataSet.FieldByName('SSH_QUANTITY').IsNull;

  (Sender as TAction).Visible:=
    (dsMaster.DataSet.FieldByName('S_SALE_DEAL_TYPE_CODE').AsInteger = sdtSale);
end;

procedure TfmGroupSaleLine.CopyToShippedQuantityActionExecute(ASourceFieldName: string);
begin
  Assert(Assigned(dsData.DataSet));

  edtQuantityShipped.SetFocus;
  CheckEditMode(dsData.DataSet);
  with dsData.DataSet do
    FieldByName('SSH_QUANTITY').AsVariant:=
      FieldByName(ASourceFieldName).AsVariant;
end;

procedure TfmGroupSaleLine.actCopyQuantityToQuantityShippedExecute(Sender: TObject);
begin
  inherited;
  CopyToShippedQuantityActionExecute('QUANTITY');
end;

procedure TfmGroupSaleLine.actCopyQuantityToQuantityShippedUpdate(Sender: TObject);
begin
  inherited;
  CopyToShippedQuantityActionUpdate(Sender, 'QUANTITY');
end;

procedure TfmGroupSaleLine.actCopyQuantityTakenToQuantityShippedExecute(Sender: TObject);
begin
  inherited;
  CopyToShippedQuantityActionExecute('QUANTITY_TAKEN_FROM_STORE');
end;

procedure TfmGroupSaleLine.actCopyQuantityTakenToQuantityShippedUpdate(Sender: TObject);
begin
  inherited;
  CopyToShippedQuantityActionUpdate(Sender, 'QUANTITY_TAKEN_FROM_STORE');
end;

procedure TfmGroupSaleLine.actCopyQuantityClientOfferedToQuantityExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  edtQuantity.SetFocus;
  CheckEditMode(dsData.DataSet);
  with dsData.DataSet do
    FieldByName('QUANTITY').AsVariant:=
      FieldByName('CL_OFFER_QUANTITY').AsVariant;
end;

procedure TfmGroupSaleLine.actCopyQuantityClientOfferedToQuantityUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));
  Assert(Assigned(dsMaster.DataSet));

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    dsData.DataSet.FieldByName('QUANTITY').IsNull;

  (Sender as TAction).Visible:=
    (dsMaster.DataSet.FieldByName('S_SALE_DEAL_TYPE_CODE').AsInteger = sdtSale);
end;

procedure TfmGroupSaleLine.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frClient) or
     (AFrame = frQuantityClientOfferedChg) or
     (AFrame = frQuantityChg) or
     (AFrame = frParRelProductStatus) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  inherited;
end;

end.
