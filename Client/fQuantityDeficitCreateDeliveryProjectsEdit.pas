unit fQuantityDeficitCreateDeliveryProjectsEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fProductFieldEditFrame, fDateFieldEditFrame, fDeptFieldEditFrame,
  fBevelEditForm, Mask, DBCtrls, JvExControls, JvDBLookup, JvExStdCtrls, JvCombobox, JvDBCombobox,
  dDocClient, uClientTypes;

type
  TfmQuantityDeficitCreateDeliveryProjectsEdit = class(TBevelEditForm)
    frProduct: TfrProductFieldEditFrame;
    frStore: TfrDeptFieldEditFrame;
    lblQuantityDeficit: TLabel;
    edtQuantityDeficit: TDBEdit;
    lblMinQuantity: TLabel;
    edtMinQuantity: TDBEdit;
    edtQuantity: TDBEdit;
    lblQuantity: TLabel;
    edtDeliveryProjectQuantity: TDBEdit;
    lblDeliveryProjectQuantity: TLabel;
    edtSinglePrice: TDBEdit;
    lblSinglePrice: TLabel;
    cbCurrency: TJvDBLookupCombo;
    lblCurrency: TLabel;
    edtTotalPrice: TDBEdit;
    lblTotalPrice: TLabel;
    lblTransportBy: TLabel;
    cbTransportBy: TJvDBComboBox;
    frDeliveryDate: TfrDateFieldEditFrame;
    lblDeliveryDate: TLabel;
    pnlAcquirePriceButton: TPanel;
    btnAcquirePrice: TSpeedButton;
    actAcquirePrice: TAction;
    dbtMeasure: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure actAcquirePriceUpdate(Sender: TObject);
    procedure actAcquirePriceExecute(Sender: TObject);
  private
    FShowWorkQuantities: Boolean;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    procedure Initialize; override;

    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AShowWorkQuantities: Boolean = True): Boolean;

    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AShowWorkQuantities: Boolean = True); reintroduce; virtual;
  end;

implementation

uses
  fProductPartnerPrice, uParRelProducts, uBorderRelTypes,
  StrUtils;

{$R *.dfm}

{ TfmQuantityDeficitCreateDeliveryProjectsEdit }

class function TfmQuantityDeficitCreateDeliveryProjectsEdit.ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AShowWorkQuantities: Boolean): Boolean;
var
  f: TfmQuantityDeficitCreateDeliveryProjectsEdit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AShowWorkQuantities);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmQuantityDeficitCreateDeliveryProjectsEdit.SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AShowWorkQuantities: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FShowWorkQuantities:= AShowWorkQuantities;
end;

procedure TfmQuantityDeficitCreateDeliveryProjectsEdit.FormCreate(Sender: TObject);
begin
  inherited;
  frDeliveryDate.FieldNames:= 'DELIVERY_DATE';
  frStore.FieldNames:= 'STORE_CODE';
  frStore.SelectStore:= True;
end;

procedure TfmQuantityDeficitCreateDeliveryProjectsEdit.Initialize;
begin
  inherited;
  edtQuantityDeficit.DataField:= IfThen(FShowWorkQuantities, 'QUANTITY_DEFICIT', '_ACCOUNT_QUANTITY_DEFICIT');
  edtMinQuantity.DataField:= IfThen(FShowWorkQuantities, 'MIN_QUANTITY', '_ACCOUNT_MIN_QUANTITY');
  edtQuantity.DataField:= IfThen(FShowWorkQuantities, 'QUANTITY', '_ACCOUNT_QUANTITY');
  edtDeliveryProjectQuantity.DataField:= IfThen(FShowWorkQuantities, 'DELIVERY_PROJECT_QUANTITY', 'ACCOUNT_DELIVERY_PROJECT_QTY');
  edtSinglePrice.DataField:= IfThen(FShowWorkQuantities, 'SINGLE_PRICE', 'ACCOUNT_SINGLE_PRICE');
  dbtMeasure.DataField:= IfThen(FShowWorkQuantities, 'MEASURE_ABBREV', 'ACCOUNT_MEASURE_ABBREV');
end;

procedure TfmQuantityDeficitCreateDeliveryProjectsEdit.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frProduct) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmQuantityDeficitCreateDeliveryProjectsEdit.actAcquirePriceExecute(Sender: TObject);
begin
  inherited;
  TfmProductPartnerPrice.ShowForm(dmDocClient, nil, emReadOnly, doNone,
    dsData.DataSet.FieldByName('PRODUCT_CODE').AsInteger,
    dsData.DataSet.FieldByName('_VENDOR_COMPANY_CODE').AsInteger,
    brtVendor,
    otAcquire,
    dsData.DataSet.FieldByName('DELIVERY_DATE').AsDateTime);
end;

procedure TfmQuantityDeficitCreateDeliveryProjectsEdit.actAcquirePriceUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (not dsData.DataSet.FieldByName('PRODUCT_CODE').IsNull) and
    (not dsData.DataSet.FieldByName('_VENDOR_COMPANY_CODE').IsNull) and
    (not dsData.DataSet.FieldByName('DELIVERY_DATE').IsNull);
end;

end.
