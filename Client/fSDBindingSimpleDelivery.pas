unit fSDBindingSimpleDelivery;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFieldEditFrame, Db, ImgList, ActnList, AbmesFields, DBClient,
  AbmesClientDataSet, StdCtrls, JvToolEdit, Mask, DBCtrls,
  AbmesDBCheckBox, fBaseFrame, fDBFrame, fDateFieldEditFrame,
  fPartnerFieldEditFrame, fPartnerFieldEditFrameBald, JvExStdCtrls, JvDBCombobox,
  JvCombobox, System.Actions;

type
  TfrSDBindingSimpleDelivery = class(TFieldEditFrame)
    lblPartnerCode: TLabel;
    lblInvoiceNo: TLabel;
    lblInvoiceDate: TLabel;
    edtInvoiceNo: TDBEdit;
    edtInvoiceAbbrev: TDBEdit;
    frInvoiceDate: TfrDateFieldEditFrame;
    frVendor: TfrPartnerFieldEditFrameBald;
    lblIsProformInvoiceStatusOnDeliveryPanel: TLabel;
    cbIsProformInvoice: TJvDBComboBox;
    procedure actFrameUpdate(Sender: TObject);
  private
    FInvoiceReadOnly: Boolean;
  protected
    procedure NewReadOnlySet; override;
  public
    procedure ShowFrame; override;
    procedure HideFrame; override;
  end;

implementation

uses
  dMain, uCompanyKinds, uComboBoxUtils;

{$R *.DFM}

{ TfrSDBindingSimpleDelivery }

procedure TfrSDBindingSimpleDelivery.HideFrame;
begin
  with dsData.DataSet do
    if Active and CanModify then
      begin
        FieldByName('VENDOR_COMPANY_CODE').Clear;
        FieldByName('INVOICE_NO').Clear;
        FieldByName('INVOICE_ABBREV').Clear;
        FieldByName('INVOICE_DATE').Clear;
        FieldByName('IS_PROFORM_INVOICE').AsBoolean:= False;
      end;
  inherited;
end;

procedure TfrSDBindingSimpleDelivery.NewReadOnlySet;
begin
  inherited;
  frVendor.ReadOnly:= ReadOnly or FInvoiceReadOnly;
  edtInvoiceNo.ReadOnly:= ReadOnly or FInvoiceReadOnly;
  edtInvoiceAbbrev.ReadOnly:= ReadOnly or FInvoiceReadOnly;
  ReplacedDBComboBox(cbIsProformInvoice).XReadOnly:= ReadOnly or FInvoiceReadOnly;
  frInvoiceDate.ReadOnly:= ReadOnly or FInvoiceReadOnly;
end;

procedure TfrSDBindingSimpleDelivery.ShowFrame;
begin
  inherited;
  if (dsData.DataSet.FindField('INVOICE_NO') = nil) then
    begin
      FInvoiceReadOnly:= True;
      edtInvoiceNo.DataField:= '';
      edtInvoiceAbbrev.DataField:= '';
      frInvoiceDate.FieldNames:= '';
      cbIsProformInvoice.DataField:= '';
    end
  else
    begin
      FInvoiceReadOnly:= False;
      frVendor.FieldNames:= 'VENDOR_COMPANY_CODE';
      frVendor.FilterCompanyKind:= ckVendor;
      edtInvoiceNo.DataField:= 'INVOICE_NO';
      edtInvoiceAbbrev.DataField:= 'INVOICE_ABBREV';
      frInvoiceDate.FieldNames:= 'INVOICE_DATE';
      cbIsProformInvoice.DataField:= 'IS_PROFORM_INVOICE';

      if (ReplacedDBComboBox(cbIsProformInvoice) = cbIsProformInvoice) then
        ReplaceDBComboBoxWithJvDBLookupCombo(cbIsProformInvoice);
    end;
end;

procedure TfrSDBindingSimpleDelivery.actFrameUpdate(Sender: TObject);
begin
  inherited;
  frInvoiceDate.actFrameUpdate(Sender);
  frVendor.actFrameUpdate(Sender);
end;

end.
