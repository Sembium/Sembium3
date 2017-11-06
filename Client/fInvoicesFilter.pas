unit fInvoicesFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFilterForm, Db, DBClient, AbmesClientDataSet, ImgList, ActnList,
  StdCtrls, Buttons, ExtCtrls, Mask, JvToolEdit, JvDBControls, JvDBLookup, DBCtrls,
  AbmesFields, Menus, JvButtons, fBaseFrame, fDBFrame, fFieldEditFrame,
  AbmesDBCheckBox, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fDateIntervalFrame, fPartnerFieldEditFrame,
  fPartnerFieldEditFrameBald, JvComponent, JvCaptionButton, JvExControls,
  JvComponentBase, uInvoiceTypes, uClientTypes, dDocClient;

type
  TfmInvoicesFilter = class(TFilterForm)
    gbPeriod: TGroupBox;
    gbStuff: TGroupBox;
    lblInvoiceNo: TLabel;
    edtInvoiceNo: TDBEdit;
    lblInvoiceType: TLabel;
    cbInvoiceType: TJvDBLookupCombo;
    gbStuff2: TGroupBox;
    lblPartnerCode: TLabel;
    lblBuyer: TLabel;
    cdsInvoiceTypes: TAbmesClientDataSet;
    cdsInvoiceTypesINVOICE_TYPE_CODE: TAbmesFloatField;
    cdsInvoiceTypesINVOICE_TYPE_NAME: TAbmesWideStringField;
    cdsInvoiceTypesADD_VAT: TAbmesFloatField;
    cdsInvoiceTypesADD_VAT_TO_ITEMS: TAbmesFloatField;
    cdsInvoiceTypesDIARY_NO_WHEN_ANNULED: TAbmesFloatField;
    dsInvoiceTypes: TDataSource;
    gbFlags: TGroupBox;
    chkIsProform: TDBCheckBox;
    chkIsNotProform: TDBCheckBox;
    gbPayment: TGroupBox;
    chkCashPayment: TDBCheckBox;
    chkBankAccount: TDBCheckBox;
    cdsCompanyBankAccounts: TAbmesClientDataSet;
    cdsCompanyBankAccountsBANK_COMPANY_CODE: TAbmesFloatField;
    cdsCompanyBankAccountsACCOUNT: TAbmesFloatField;
    cdsCompanyBankAccountsCOMPANY_CODE: TAbmesFloatField;
    cdsCompanyBankAccountsCURRENCY_CODE: TAbmesFloatField;
    cdsCompanyBankAccountsDESCRIPTION: TAbmesWideStringField;
    dsCompanyBankAccounts: TDataSource;
    gbFlags2: TGroupBox;
    chkIsStorno: TDBCheckBox;
    chkIsNotStorno: TDBCheckBox;
    lblBank: TLabel;
    lblAccount: TLabel;
    cbAccount: TJvDBLookupCombo;
    chkIsPaid: TAbmesDBCheckBox;
    chkIsNotPaid: TAbmesDBCheckBox;
    chkIsVatPaid: TAbmesDBCheckBox;
    IsVatNotPaid: TAbmesDBCheckBox;
    frProduct: TfrProductFieldEditFrame;
    gbCurrency: TGroupBox;
    cbCurrency: TJvDBLookupCombo;
    cdsCurrencies: TAbmesClientDataSet;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsCurrenciesROUNDER: TAbmesFloatField;
    cdsCurrenciesORDER_NO: TAbmesFloatField;
    dsCurrencies: TDataSource;
    frDateInterval: TfrDateIntervalFrame;
    frSeller: TfrPartnerFieldEditFrameBald;
    frBuyer: TfrPartnerFieldEditFrameBald;
    frBank: TfrPartnerFieldEditFrameBald;
    gbIsApproved: TGroupBox;
    chkIsApproved: TAbmesDBCheckBox;
    chkIsNotApproved: TAbmesDBCheckBox;
    edtMinInvoiceNo: TDBEdit;
    edtMaxInvoiceNo: TDBEdit;
    lblMinInvoiceNo: TLabel;
    lblMaxInvoiceNo: TLabel;
    lblInvoiceNoInterval: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
  private
    FInvoiceInOut: TInvoiceInOut;  
    procedure OpenCompanyBankAccounts;
  protected
    function GetFilterFormVariantCode: Integer; override;
    function GetDBFrameReadOnly(AFrame: TDBFrame): Boolean; override;
  public
    procedure SetDataParams(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AInvoiceInOut: TInvoiceInOut); reintroduce; virtual;

    class function ShowForm(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AInvoiceInOut: TInvoiceInOut): Boolean;

    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

type
  TfmInvoicesFilterClass = class of TfmInvoicesFilter;

implementation

uses
  dMain, uCompanyKinds;

{$R *.DFM}

{ TfmInvoicesFilter }

procedure TfmInvoicesFilter.CloseDataSets;
begin
  inherited;
  cdsInvoiceTypes.Close;
  cdsCompanyBankAccounts.Close;
  cdsCurrencies.Close;
end;

procedure TfmInvoicesFilter.OpenCompanyBankAccounts;
begin
  if dsData.DataSet.FieldByName('BANK_COMPANY_CODE').IsNull then
    cdsCompanyBankAccounts.Close
  else
    with cdsCompanyBankAccounts do
      begin
        Close;
        Params.ParamByName('COMPANY_CODE').Value:=
          dsData.DataSet.FieldByName('SELLER_COMPANY_CODE').AsVariant;
        Open;
        Filter:=
          'BANK_COMPANY_CODE = ' + dsData.DataSet.FieldByName('BANK_COMPANY_CODE').AsString;
        Filtered:= True;
      end;
end;

procedure TfmInvoicesFilter.OpenDataSets;
begin
  inherited;
  cdsCurrencies.Open;
  cdsInvoiceTypes.Open;
  OpenCompanyBankAccounts;
end;

procedure TfmInvoicesFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AInvoiceInOut: TInvoiceInOut);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FInvoiceInOut:= AInvoiceInOut;
end;

class function TfmInvoicesFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AInvoiceInOut: TInvoiceInOut): Boolean;
var
  f: TfmInvoicesFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(
      AdmDocClient,
      ADataSet,
      AEditMode,
      ADefaultsOrigin,
      AInvoiceInOut);

    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmInvoicesFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frDateInterval.FieldNames:= 'INVOICE_START_DATE;INVOICE_END_DATE';
  frSeller.FieldNames:= 'SELLER_COMPANY_CODE';
  frSeller.ShowCompaniesOnly:= True;
  frSeller.ShowOurCompany:= True;
  frBuyer.FieldNames:= 'BUYER_COMPANY_CODE';
  frBuyer.ShowCompaniesOnly:= True;
  frBuyer.ShowOurCompany:= True;
  frBank.FieldNames:= 'BANK_COMPANY_CODE';
  frBank.FilterCompanyKind:= ckBank;
end;

function TfmInvoicesFilter.GetDBFrameReadOnly(AFrame: TDBFrame): Boolean;
begin
  if (AFrame = frBuyer) and
     (FInvoiceInOut = iioIn) then
    Exit(True);

  if (AFrame = frSeller) and
     (FInvoiceInOut = iioOut) then
    Exit(True);

  Result:= inherited GetDBFrameReadOnly(AFrame);
end;

function TfmInvoicesFilter.GetFilterFormVariantCode: Integer;
begin
  case FInvoiceInOut of
    iioOut: Result:= 1;
    iioIn: Result:= 2;
  else
    raise Exception.Create('Unknown Invoice InOut');
  end;  { case }
end;

procedure TfmInvoicesFilter.dsDataDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if Assigned(Field) and
     ( (Field.Name = 'SELLER_COMPANY_CODE') or
       (Field.Name = 'BANK_COMPANY_CODE') ) then
    OpenCompanyBankAccounts;
end;

end.
