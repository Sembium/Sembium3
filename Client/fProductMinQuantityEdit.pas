unit fProductMinQuantityEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, Menus, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBevelEditForm, Mask,
  DBCtrls, JvEdit, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDeptFieldEditFrameBald,
  fDateIntervalFrame, JvComponent, JvCaptionButton, ComCtrls, ToolWin,
  JvComponentBase, fProductFieldEditFrame, fProductFieldEditFrameBald,
  dDocClient, uClientTypes;

type
  TfmProductMinQuantityEdit = class(TBevelEditForm)
    lblMinQuantity: TLabel;
    edtMinQuantity: TDBEdit;
    dbtMeasureAbbrev: TDBText;
    lblAccountMinQuantity: TLabel;
    dbtAccountMeasureAbbrev: TDBText;
    frDateInterval: TfrDateIntervalFrame;
    lblDatePeriod: TLabel;
    edtAccountMinQuantity: TDBEdit;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    pnlStore: TPanel;
    lblTreeNodeName: TLabel;
    frStore: TfrDeptFieldEditFrameBald;
    pnlProduct: TPanel;
    lblProducts: TLabel;
    frProduct: TfrProductFieldEditFrameBald;
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
  private
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FSelectFinancialObject: Boolean;
    procedure dmDocClientOnDataChanged(Sender: TObject);
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ASelectFinancialObject: Boolean = False); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ASelectFinancialObject: Boolean = False): Boolean;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  uUtils, uDocUtils, uProducts;

{$R *.dfm}

{ TfmProductMinQuantityEdit }

procedure TfmProductMinQuantityEdit.actFormUpdate(Sender: TObject);
begin
  inherited;
  edtAccountMinQuantity.Enabled:= (dsData.DataSet.FieldByName('ACCOUNT_MEASURE_COEF').AsFloat <> 0);
  btnDocs.ImageIndex:= dsData.DataSet.FieldByName('HAS_DOC_ITEMS').AsInteger;
end;

procedure TfmProductMinQuantityEdit.FormCreate(Sender: TObject);
begin
  inherited;
  frStore.FieldNames:= 'STORE_CODE';
  frStore.SelectStore:= True;
end;

procedure TfmProductMinQuantityEdit.btnDocsClick(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if (EditMode = emReadOnly) then
    em:= emReadOnly
  else
    em:= emEdit;

  dmDocClient.DSOpenDoc(em, (Sender as TControl), dotProductStore, dsData.DataSet);
end;

procedure TfmProductMinQuantityEdit.dmDocClientOnDataChanged(
  Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(dsData.DataSet.FieldByName('HAS_DOC_ITEMS'));
end;

procedure TfmProductMinQuantityEdit.Initialize;
var
  ProductNameFieldExists: Boolean;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  if FSelectFinancialObject then
    begin
      frStore.SelectFinancialStore:= True;
      frProduct.ProductClass:= pcFinancial;
    end
  else
    frStore.DenyFinancialStore:= True;

  ProductNameFieldExists:= Assigned(dsData.DataSet.FindField('PRODUCT_NAME'));

  pnlStore.Visible:= not ProductNameFieldExists;
  pnlProduct.Visible:= ProductNameFieldExists;

  if pnlStore.Visible then
    frStore.SetFocus;

  if pnlProduct.Visible then
    frProduct.SetFocus;

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotProductStore, dsData.DataSet);
end;

procedure TfmProductMinQuantityEdit.SetDataParams(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; ASelectFinancialObject: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FSelectFinancialObject:= ASelectFinancialObject;
end;

class function TfmProductMinQuantityEdit.ShowForm(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  ASelectFinancialObject: Boolean): Boolean;
var
  f: TfmProductMinQuantityEdit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin,
      ASelectFinancialObject);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmProductMinQuantityEdit.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

end.
