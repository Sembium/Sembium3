unit fInvoiceItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uClientTypes, Db, DBClient, AbmesClientDataSet, ImgList, ActnList, StdCtrls,
  Buttons, ExtCtrls, DBCtrls, Mask, JvToolEdit, JvDBControls, Menus,
  fBaseFrame, fDBFrame, fFieldEditFrame, 
  JvButtons, AbmesFields, JvDBLookup, fProcessObjectFrame,
  fSaleShipmentProcessObject, fEditForm, dDocClient,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, JvExMask,
  JvComponentBase, JvCaptionButton;

type
  TfmInvoiceItem = class(TEditForm)
    bvlMain: TBevel;
    mnuItemKind: TPopupMenu;
    miProduct: TMenuItem;
    miDebitOrCredit: TMenuItem;
    mdsDebitOrCredit: TAbmesClientDataSet;
    mdsDebitOrCreditINVOICE_NO: TAbmesFloatField;
    mdsDebitOrCreditSELLER_COMPANY_CODE: TAbmesFloatField;
    pnlItemParameters: TPanel;
    edtAccountQuantity: TDBEdit;
    lblAccountQuantity: TLabel;
    edtPrice: TDBEdit;
    lblPrice: TLabel;
    lblPriceWithDDS: TLabel;
    edtPriceWithDDS: TDBEdit;
    actEditProduct: TAction;
    actDebitOrCredit: TAction;
    lblTotalPrice: TLabel;
    edtTotalPrice: TDBEdit;
    lblTotalPriceWithDDS: TLabel;
    edtTotalPriceWithDDS: TDBEdit;
    lblMarketSinglePrice: TLabel;
    edtMarketSinglePrice: TDBEdit;
    lblDiscountPercent: TLabel;
    edtDiscountPercent: TDBEdit;
    lblPercents: TLabel;
    chkIsVatFree: TCheckBox;
    cdsMeasures: TAbmesClientDataSet;
    dsMeasures: TDataSource;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    cdsMeasuresMEASURE_NAME: TAbmesWideStringField;
    gbBndProcessObject: TGroupBox;
    frSaleShipmentProcessObject: TfrSaleShipmentProcessObject;
    btnClearSaleShipment: TSpeedButton;
    cdsMeasuresI_MEASURE_ABBREV: TAbmesWideStringField;
    frProduct: TfrProductFieldEditFrame;
    cbMeasureIAbbrev: TJvDBLookupEdit;
    lblMeasureIAbbrev: TLabel;
    cbMeasureAbbrev: TJvDBLookupEdit;
    lblMeasureAbbrev: TLabel;
    procedure actFormUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actEditProductExecute(Sender: TObject);
    procedure actDebitOrCreditExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkIsVatFreeClick(Sender: TObject);
    procedure cbMeasureAbbrevChange(Sender: TObject);
    procedure dsDataAccountMeasureAbbrevChange(Sender: TField);
    procedure dsDataAccountMeasureIAbbrevChange(Sender: TField);
    procedure FormHide(Sender: TObject);
    procedure frSaleShipmentProcessObjectExit(Sender: TObject);
    procedure frProductactInvokeTreeEditorExecute(Sender: TObject);
    procedure cbMeasureIAbbrevChange(Sender: TObject);
  private
    FDebitOrCreditSelected: Boolean;
    FInvoiceType: Integer;
    FMeasureAbbrevChanging: Boolean;
    FMeasureIAbbrevChanging: Boolean;
    function IsDebit: Boolean;
    function IsCredit: Boolean;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure Initialize; override;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AInvoiceType: Integer = 0): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AInvoiceType: Integer = 0); reintroduce; virtual;
  end;

implementation

uses
  Variants, fTreeSelectForm, uInvoiceTypes, dMain, uUtils, uClientUtils, uTreeNodes,
  fInvoiceItemDebitOrCredit, uTreeClientUtils, uInvoiceVatTypes, Types;

{$R *.DFM}

resourcestring
  SDebit = 'Дебит';
  SCredit = 'Кредит';
  SDebitOrCreditMeasureAbbrev = 'бр';
  SDebitOrCreditMeasureIAbbrev = 'units';
  SDebitItemName = 'Дебит по фактура №%d';
  SCreditItemName = 'Кредит по фактура №%d';
  SInvoiceNotFound = 'Не е намерена фактура с такава идентификация';

{ TfmInvoiceItem }

procedure TfmInvoiceItem.Initialize;
var
  b: array of Boolean;
  i: Integer;
begin
  frSaleShipmentProcessObject.FieldNames:= 'BND_PROCESS_OBJECT_BRANCH_CODE;BND_PROCESS_OBJECT_CODE';
  frSaleShipmentProcessObject.SetDataSet(OuterDataSet);
  
  // field 'blah-blah' required. mahame zamalko required, dokato mine validaciata na master dataset-a
  with dsData.DataSet.DataSetField.DataSet do
    begin
      SetLength(b, Fields.Count);
      for i:= 0 to Fields.Count - 1 do
        begin
          b[i]:= Fields[i].Required;
          Fields[i].Required:= False;
        end;
    end;

  inherited;

  with dsData.DataSet.DataSetField.DataSet do
    for i:= 0 to Fields.Count - 1 do
      Fields[i].Required:= b[i];

  if (dsData.DataSet.DataSetField.DataSet.FieldByName('INVOICE_VAT_TYPE_CODE').AsInteger <> ivtVatPercent) then
    begin
      edtPriceWithDDS.DataField:= '';
      edtPriceWithDDS.ReadOnly:= True;
      edtPriceWithDDS.Color:= ReadOnlyColors[edtPriceWithDDS.ReadOnly];
      lblPriceWithDDS.Enabled:= not edtPriceWithDDS.ReadOnly;

      edtTotalPriceWithDDS.DataField:= '';
      edtTotalPriceWithDDS.ReadOnly:= True;
      edtTotalPriceWithDDS.Color:= ReadOnlyColors[edtTotalPriceWithDDS.ReadOnly];
      lblTotalPriceWithDDS.Enabled:= not edtTotalPriceWithDDS.ReadOnly;
    end;
end;

procedure TfmInvoiceItem.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
  ReadOnlyModeOrProductNotNull: Boolean;
begin
  inherited;

  ro:=
    (EditMode = emReadOnly) or
    not dsData.DataSet.FieldByName('BND_PROCESS_OBJECT_BRANCH_CODE').IsNull;

  chkIsVatFree.Enabled:= dsData.DataSet.FieldByName('PRODUCT_CODE').IsNull;

  ReadOnlyModeOrProductNotNull:= ro or not dsData.DataSet.FieldByName('PRODUCT_CODE').IsNull;
  SetControlsReadOnly(ReadOnlyModeOrProductNotNull, [cbMeasureAbbrev, chkIsVatFree]);
  cbMeasureIAbbrev.ReadOnly:= ReadOnlyModeOrProductNotNull;
  cbMeasureIAbbrev.Color:= ReadOnlyIColors[ReadOnlyModeOrProductNotNull];

  pnlItemParameters.Enabled:= not FDebitOrCreditSelected;
  frProduct.edtTreeNodeName.ReadOnly:= FDebitOrCreditSelected;
  frProduct.edtTreeNodeNo.ReadOnly:= FDebitOrCreditSelected;

  gbBndProcessObject.Visible:=
    (OuterDataSet.DataSetField.DataSet.FieldByName('SELLER_COMPANY_CODE').AsInteger = 0);
  btnClearSaleShipment.Visible:= frSaleShipmentProcessObject.Visible;

  SetControlsReadOnly(ro, [
    edtAccountQuantity,
    edtMarketSinglePrice,
    edtPrice,
    edtPriceWithDDS,
    edtDiscountPercent,
    edtTotalPrice,
    edtTotalPriceWithDDS]);
end;

procedure TfmInvoiceItem.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AInvoiceType: Integer);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);
  FInvoiceType:= AInvoiceType;
end;

procedure TfmInvoiceItem.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frSaleShipmentProcessObject) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

class function TfmInvoiceItem.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AInvoiceType: Integer): Boolean;
var
  f: TfmInvoiceItem;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, AInvoiceType);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmInvoiceItem.FormShow(Sender: TObject);
begin
  inherited;

  frSaleShipmentProcessObject.ShowFrame;

  dsData.DataSet.FieldByName('ACCOUNT_MEASURE_ABBREV').OnChange:= dsDataAccountMeasureAbbrevChange;
  dsData.DataSet.FieldByName('ACCOUNT_MEASURE_I_ABBREV').OnChange:= dsDataAccountMeasureIAbbrevChange;

  //chkIsVatFree.Checked:= dsData.DataSet.FieldByName('IS_VAT_FREE').AsBoolean;
  FDebitOrCreditSelected:= False;

  FMeasureAbbrevChanging:= True;
  try
    cbMeasureAbbrev.Text:=
      dsData.DataSet.FieldByName('ACCOUNT_MEASURE_ABBREV').AsString;
  finally
    FMeasureAbbrevChanging:= False;
  end;   { try }

  FMeasureIAbbrevChanging:= True;
  try
    cbMeasureIAbbrev.Text:=
      dsData.DataSet.FieldByName('ACCOUNT_MEASURE_I_ABBREV').AsString;
  finally
    FMeasureIAbbrevChanging:= False;
  end;
end;

procedure TfmInvoiceItem.CloseDataSets;
begin
  inherited;
  mdsDebitOrCredit.Close;
  cdsMeasures.Close;
end;

procedure TfmInvoiceItem.OpenDataSets;
begin
  inherited;
  mdsDebitOrCredit.CreateDataSet;
  cdsMeasures.Open;
end;

procedure TfmInvoiceItem.actEditProductExecute(Sender: TObject);
begin
  inherited;

  if (EditProductField(dsData.DataSet.FieldByName('PRODUCT_CODE'), tnRootProductCode, tdsInstance) <> 0) then
    begin
      CheckEditMode(dsData.DataSet);
      dsData.DataSet.FieldByName('ACCOUNT_QUANTITY').Clear;
      dsData.DataSet.FieldByName('SINGLE_PRICE').Clear;

      FDebitOrCreditSelected:= False;
    end;
end;

procedure TfmInvoiceItem.actDebitOrCreditExecute(Sender: TObject);
var
  v: Variant;
  s: string;
begin
  inherited;

  if TfmInvoiceItemDebitOrCredit.ShowForm(dmDocClient, mdsDebitOrCredit) then
    begin
      v:= dmMain.SvrInvoices.TotalInvoicePrice(
        False,
        mdsDebitOrCreditINVOICE_NO.AsInteger,
        mdsDebitOrCreditSELLER_COMPANY_CODE.AsInteger);

      if VarIsNull(v) or VarIsEmpty(v) then
        raise Exception.Create(SInvoiceNotFound);

      if IsCredit then
        v:= -v;

      if IsDebit then
        s:= SDebitItemName
      else
        begin
          if IsCredit then
            s:= SCreditItemName
          else
            actDebitOrCredit.Caption:= 'Internal error. Unknown InvoiceType';
        end;

      FDebitOrCreditSelected:= True;
      CheckEditMode(dsData.DataSet);
      with dsData.DataSet do
        begin
          FieldByName('ITEM_NAME').AsString:= Format(s, [mdsDebitOrCreditINVOICE_NO.AsInteger]);
          FieldByName('ACCOUNT_QUANTITY').AsFloat:= 1;
          FieldByName('ACCOUNT_MEASURE_ABBREV').AsString:= SDebitOrCreditMeasureAbbrev;
          FieldByName('ACCOUNT_MEASURE_I_ABBREV').AsString:= SDebitOrCreditMeasureIAbbrev;
          FieldByName('MARKET_SINGLE_PRICE').AsVariant:= v;
          //FieldByName('IS_VAT_FREE').AsBoolean:= False;
        end;
    end;
end;

function TfmInvoiceItem.IsCredit: Boolean;
begin
  IsCredit:= (FInvoiceType = itKreditnoIzvestie);
end;

function TfmInvoiceItem.IsDebit: Boolean;
begin
  IsDebit:= (FInvoiceType = itDebitnoIzvestie);
end;

procedure TfmInvoiceItem.FormCreate(Sender: TObject);
begin
  inherited;
  frProduct.TreeDetailSelection:= tdsInstance;
  FMeasureAbbrevChanging:= False;
  FMeasureIAbbrevChanging:= False;
end;

procedure TfmInvoiceItem.chkIsVatFreeClick(Sender: TObject);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('IS_VAT_FREE').AsBoolean:= chkIsVatFree.Checked;
end;

procedure TfmInvoiceItem.cbMeasureAbbrevChange(Sender: TObject);
var
  MeasureIAbbrev: Variant;
begin
  inherited;

  if FMeasureAbbrevChanging then
    Exit;

  cbMeasureAbbrev.Text:= Trim(cbMeasureAbbrev.Text);
  FMeasureAbbrevChanging:= True;
  try
    if not (dsData.DataSet as TAbmesClientDataSet).ReadOnly then
      begin
        CheckEditMode(dsData.DataSet);
        if (cbMeasureAbbrev.Text = '') then
          begin
            dsData.DataSet.FieldByName('ACCOUNT_MEASURE_ABBREV').Clear;
            dsData.DataSet.FieldByName('ACCOUNT_MEASURE_I_ABBREV').Clear;
          end
        else
          begin
            dsData.DataSet.FieldByName('ACCOUNT_MEASURE_ABBREV').AsString:= cbMeasureAbbrev.Text;
            MeasureIAbbrev:= cdsMeasures.Lookup('MEASURE_ABBREV', dsData.DataSet.FieldByName('ACCOUNT_MEASURE_ABBREV').AsVariant, 'I_MEASURE_ABBREV');
            if not VarIsNullOrEmpty(MeasureIAbbrev) then
              dsData.DataSet.FieldByName('ACCOUNT_MEASURE_I_ABBREV').AsVariant:= MeasureIAbbrev;
          end;
      end;
  finally
    FMeasureAbbrevChanging:= False;
  end;   { try }
end;

procedure TfmInvoiceItem.cbMeasureIAbbrevChange(Sender: TObject);
var
  MeasureAbbrev: Variant;
begin
  inherited;

  if FMeasureIAbbrevChanging then
    Exit;

  cbMeasureIAbbrev.Text:= Trim(cbMeasureIAbbrev.Text);
  FMeasureIAbbrevChanging:= True;
  try
    if not (dsData.DataSet as TAbmesClientDataSet).ReadOnly then
      begin
        CheckEditMode(dsData.DataSet);
        if (cbMeasureIAbbrev.Text = '') then
          begin
            dsData.DataSet.FieldByName('ACCOUNT_MEASURE_I_ABBREV').Clear;
            dsData.DataSet.FieldByName('ACCOUNT_MEASURE_ABBREV').Clear;
          end
        else
          begin
            dsData.DataSet.FieldByName('ACCOUNT_MEASURE_I_ABBREV').AsString:= cbMeasureIAbbrev.Text;
            MeasureAbbrev:= cdsMeasures.Lookup('I_MEASURE_ABBREV', dsData.DataSet.FieldByName('ACCOUNT_MEASURE_I_ABBREV').AsVariant, 'MEASURE_ABBREV');
            if not VarIsNullOrEmpty(MeasureAbbrev) then
              dsData.DataSet.FieldByName('ACCOUNT_MEASURE_ABBREV').AsVariant:= MeasureAbbrev;
          end;
      end;
  finally
    FMeasureIAbbrevChanging:= False;
  end;   { try }
end;

procedure TfmInvoiceItem.dsDataAccountMeasureAbbrevChange(Sender: TField);
begin
  inherited;

  if FMeasureAbbrevChanging then
    Exit;

  FMeasureAbbrevChanging:= True;
  try
    cbMeasureAbbrev.Text:=
      dsData.DataSet.FieldByName('ACCOUNT_MEASURE_ABBREV').AsString;
  finally
    FMeasureAbbrevChanging:= False;
  end;   { try }
end;

procedure TfmInvoiceItem.dsDataAccountMeasureIAbbrevChange(Sender: TField);
begin
  inherited;

  if FMeasureIAbbrevChanging then
    Exit;

  FMeasureIAbbrevChanging:= True;
  try
    cbMeasureIAbbrev.Text:=
      dsData.DataSet.FieldByName('ACCOUNT_MEASURE_I_ABBREV').AsString;
  finally
    FMeasureIAbbrevChanging:= False;
  end;   { try }
end;

procedure TfmInvoiceItem.FormHide(Sender: TObject);
begin
  inherited;
  dsData.DataSet.FieldByName('ACCOUNT_MEASURE_ABBREV').OnChange:= nil;
  dsData.DataSet.FieldByName('ACCOUNT_MEASURE_I_ABBREV').OnChange:= nil;
end;

procedure TfmInvoiceItem.frSaleShipmentProcessObjectExit(Sender: TObject);
begin
  inherited;
  if (EditMode <> emReadOnly) then
    frSaleShipmentProcessObject.DoApplyUpdates;
end;

procedure TfmInvoiceItem.frProductactInvokeTreeEditorExecute(
  Sender: TObject);
var
  p: TPoint;
begin
  if IsDebit or IsCredit then
    with frProduct.btnInvokeTreeEditor do
      begin
        p:= Parent.ClientToScreen(Point(Left, Top));
        Inc(p.y, Height);
        mnuItemKind.Popup(p.x, p.y);
      end
  else
    begin
      inherited;
      frProduct.actInvokeTreeEditorExecute(Sender);
    end;
end;

end.
