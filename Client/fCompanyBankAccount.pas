unit fCompanyBankAccount;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBevelEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons,
  ExtCtrls, DBCtrls, Mask, Menus, AbmesClientDataSet, JvButtons,
  AbmesDBCheckBox, fBaseFrame, fDBFrame, fFieldEditFrame,
  fPartnerFieldEditFrame, fPartnerFieldEditFrameBald, JvExControls,
  JvComponent, JvDBLookup, JvCaptionButton, JvComponentBase, JvExExtCtrls,
  JvDBRadioPanel, JvExStdCtrls, JvDBCombobox, JvCombobox;

type
  TfmCompanyBankAccount = class(TBevelEditForm)
    lblPartner: TLabel;
    lblIcon: TLabel;
    edtAccount: TDBEdit;
    lblCurrency: TLabel;
    cbCurrency: TJvDBLookupCombo;
    lblDescription: TLabel;
    moDescription: TDBMemo;
    frBank: TfrPartnerFieldEditFrameBald;
    lblIBAN: TLabel;
    edtIBAN: TDBEdit;
    lblOr: TLabel;
    lblName: TLabel;
    edtName: TDBEdit;
    lblShortName: TLabel;
    edtShortName: TDBEdit;
    lblBankAccountType: TLabel;
    cbBankAccountType: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    FBankAccountStuffReadOnly: Boolean;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    { Public declarations }
  end;

implementation

uses
  uCompanyKinds, uClientTypes, uClientUtils, uComboBoxUtils, uBankAccountTypes;

{$R *.DFM}

procedure TfmCompanyBankAccount.actFormUpdate(Sender: TObject);
begin
  inherited;

  FBankAccountStuffReadOnly:=
    (EditMode = emReadOnly) or
    (cbBankAccountType.KeyValue <> BankAccountTypeToInt(batDefinedBanking));

  edtIBAN.ReadOnly:= FBankAccountStuffReadOnly;
  edtIBAN.Color:= ReadOnlyColors[edtIBAN.ReadOnly];

  edtAccount.ReadOnly:= FBankAccountStuffReadOnly;
  edtAccount.Color:= ReadOnlyColors[edtAccount.ReadOnly];

  cbCurrency.ReadOnly:= FBankAccountStuffReadOnly;
  cbCurrency.Color:= ReadOnlyColors[cbCurrency.ReadOnly];
end;

procedure TfmCompanyBankAccount.FormCreate(Sender: TObject);
begin
  inherited;
  frBank.FieldNames:= 'BANK_COMPANY_CODE';
  frBank.FilterCompanyKind:= ckBank;
end;

procedure TfmCompanyBankAccount.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frBank) then
    AFrame.ReadOnly:= FBankAccountStuffReadOnly
  else
    inherited;
end;

end.
