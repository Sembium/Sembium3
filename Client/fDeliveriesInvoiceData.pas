unit fDeliveriesInvoiceData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls, Buttons, ExtCtrls,
  fBevelEditForm, Mask, DBCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateFieldEditFrame;

type
  TfmDeliveriesInvoiceData = class(TBevelEditForm)
    frInvoiceDate: TfrDateFieldEditFrame;
    lblInvoiceDate: TLabel;
    cbIsProformInvoice: TJvDBComboBox;
    lblIsProformInvoice: TLabel;
    edtInvoiceAbbrev: TDBEdit;
    edtInvoiceNo: TDBEdit;
    lbltInvoiceNo: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfmDeliveriesInvoiceData.FormCreate(Sender: TObject);
begin
  inherited;
  frInvoiceDate.FieldNames:= 'INVOICE_DATE';
end;

end.
