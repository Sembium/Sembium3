unit fInvoiceItemDebitOrCredit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, Db, DBClient, AbmesClientDataSet, ImgList, ActnList, StdCtrls,
  Buttons, ExtCtrls, fBevelEditForm, Mask, DBCtrls, AbmesFields,
  Menus, JvButtons, fBaseFrame, fDBFrame, fFieldEditFrame,
  fPartnerFieldEditFrame, fPartnerFieldEditFrameBald, JvComponent,
  JvCaptionButton, JvComponentBase;

type
  TfmInvoiceItemDebitOrCredit = class(TBevelEditForm)
    lblInvoiceNo: TLabel;
    edtInvoiceNo: TDBEdit;
    lblPartnerCode: TLabel;
    lblInvoice: TLabel;
    frSeller: TfrPartnerFieldEditFrameBald;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain;

{$R *.DFM}

procedure TfmInvoiceItemDebitOrCredit.FormCreate(Sender: TObject);
begin
  inherited;
  frSeller.FieldNames:= 'SELLER_COMPANY_CODE';
  frSeller.ShowCompaniesOnly:= True;
  frSeller.ShowOurCompany:= True;
end;

end.
