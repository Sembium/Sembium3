unit fCompanyBankAccounts;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fRightButtonGridForm, ImgList, ParamDataSet, ActnList, Db,
  DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, AbmesFields, Menus,
  JvButtons, ComCtrls, ToolWin, JvComponent, JvCaptionButton,
  JvComponentBase;

type
  TfmCompanyBankAccounts = class(TRightButtonGridForm)
    cdsGridDataBANK_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataACCOUNT: TAbmesFloatField;
    cdsGridDataCOMPANY_CODE: TAbmesFloatField;
    cdsGridDataCURRENCY_CODE: TAbmesFloatField;
    cdsGridDataDESCRIPTION: TAbmesWideStringField;
    cdsCurrencies: TAbmesClientDataSet;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsCurrenciesROUNDER: TAbmesFloatField;
    cdsCurrenciesORDER_NO: TAbmesFloatField;
    cdsGridData_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridDataBANK_NAME: TAbmesWideStringField;
    cdsGridDataCURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridDataIBAN: TAbmesWideStringField;
    cdsGridData_ACCOUNT_OR_IBAN: TAbmesWideStringField;
    cdsGridDataACCOUNT_CODE: TAbmesFloatField;
    cdsGridData_MAX_ACCOUNT_CODE: TAggregateField;
    cdsGridDataNAME: TAbmesWideStringField;
    cdsGridDataSHORT_NAME: TAbmesWideStringField;
    cdsGridDataBIC: TAbmesWideStringField;
    cdsGridDataBANK_ACCOUNT_TYPE_CODE: TAbmesFloatField;
    cdsBankAccountTypes: TAbmesClientDataSet;
    cdsBankAccountTypesBANK_ACCOUNT_TYPE_CODE: TAbmesFloatField;
    cdsBankAccountTypesBANK_ACCOUNT_TYPE_NAME: TAbmesWideStringField;
    cdsGridData_BANK_ACCOUNT_TYPE_NAME: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataBANK_COMPANY_CODEChange(Sender: TField);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataBANK_ACCOUNT_TYPE_CODEChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fCompanyBankAccount, uClientUtils, uCompanyClientUtils, uUtils,
  uBankAccountTypes;

resourcestring
  SIBANOrAccountRequired = 'Трябва да въведете IBAN или Сметка!';
  SInvalidIBAN = 'Невалиден IBAN!';

{$R *.DFM}

procedure TfmCompanyBankAccounts.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmCompanyBankAccount;
end;

procedure TfmCompanyBankAccounts.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsGridDataACCOUNT_CODE.AsInteger:=
    VarToInt(cdsGridData_MAX_ACCOUNT_CODE.AsVariant) + 1;

  cdsGridDataCOMPANY_CODE.Value:=
    cdsGridData.Params.ParamByName('COMPANY_CODE').Value;
end;

procedure TfmCompanyBankAccounts.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;
  RefreshDataSet(DataSet);
end;

procedure TfmCompanyBankAccounts.cdsGridDataBANK_ACCOUNT_TYPE_CODEChange(
  Sender: TField);
begin
  inherited;
  cdsGridDataBANK_COMPANY_CODE.Clear;
  cdsGridDataCURRENCY_CODE.Clear;
  cdsGridDataACCOUNT.Clear;
  cdsGridDataIBAN.Clear;
end;

procedure TfmCompanyBankAccounts.cdsGridDataBANK_COMPANY_CODEChange(
  Sender: TField);
begin
  inherited;
  if cdsGridDataBANK_COMPANY_CODE.IsNull then
    cdsGridDataBANK_NAME.Clear
  else
    GetCompanyInfo(cdsGridDataBANK_COMPANY_CODE, cdsGridDataBANK_NAME);
end;

procedure TfmCompanyBankAccounts.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  CheckRequiredFields([cdsGridDataNAME, cdsGridDataSHORT_NAME, cdsGridData_BANK_ACCOUNT_TYPE_NAME]);

  if (IntToBankAccountType(cdsGridDataBANK_ACCOUNT_TYPE_CODE.AsInteger) = batDefinedBanking) then
    begin
      CheckRequiredFields([cdsGridDataBANK_COMPANY_CODE, cdsGridDataCURRENCY_CODE]);

      if (cdsGridDataACCOUNT.AsString = '') and
         (cdsGridDataIBAN.AsString = '') then
        raise Exception.Create(SIBANOrAccountRequired);

      if (cdsGridDataIBAN.AsString <> '') and not ValidIBAN(cdsGridDataIBAN.AsString) then
        begin
          cdsGridDataIBAN.FocusControl;
          raise Exception.Create(SInvalidIBAN);
        end;
    end;
end;

procedure TfmCompanyBankAccounts.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if (cdsGridDataIBAN.AsString <> '') then
    cdsGridData_ACCOUNT_OR_IBAN.AsString:= FormatIBAN(cdsGridDataIBAN.AsString)
  else
    cdsGridData_ACCOUNT_OR_IBAN.AsString:= cdsGridDataACCOUNT.AsString;
end;

end.
