unit fCompaniesFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvButtons, ActnList, JvDBLookup, Buttons, StdCtrls, ExtCtrls,
  fBevelFilterForm, JvDBCombobox, Mask, DBCtrls, JvExStdCtrls, JvComponent,
  JvCaptionButton, JvExControls, JvExExtCtrls, JvDBRadioPanel, fBaseFrame,
  fDBFrame, fFieldEditFrame, fPartnerFieldEditFrame,
  fPartnerFieldEditFrameBald, JvComponentBase, JvExtComponent, JvCombobox;

type
  TfmCompaniesFilter = class(TBevelFilterForm)
    pnlCompanyClass: TPanel;
    pnlIsPersonTitle: TPanel;
    lblCompanyOrPerson: TLabel;
    gbStatus: TGroupBox;
    lblStatusCode: TLabel;
    cbMinStatusCode: TJvDBLookupCombo;
    lblDash: TLabel;
    cbMaxStatusCode: TJvDBLookupCombo;
    lblReachMonths: TLabel;
    lblExistanceMonths: TLabel;
    edtMinReachMonths: TDBEdit;
    lblDash1: TLabel;
    edtMaxReachMonths: TDBEdit;
    lblMonths2: TLabel;
    lblDash2: TLabel;
    lblMonths1: TLabel;
    pnlPerson: TPanel;
    lblAbbrev: TLabel;
    lblLastName: TLabel;
    lblMiddleName: TLabel;
    lblFirstName: TLabel;
    lblEGN: TLabel;
    edtMiddleName: TDBEdit;
    edtLastName: TDBEdit;
    edtFirstName: TDBEdit;
    edtAbbrev: TDBEdit;
    edtEGN: TDBEdit;
    pnlCompany: TPanel;
    lblCompanyName: TLabel;
    lblCompanyShortName: TLabel;
    lblBulstat: TLabel;
    edtCompanyName: TDBEdit;
    edtCompanyShortName: TDBEdit;
    edtBulstat: TDBEdit;
    lblCode: TLabel;
    edtCode: TDBEdit;
    lblCode2: TLabel;
    edtCode2: TDBEdit;
    lblCountry3: TLabel;
    lblCountry: TLabel;
    cbCountry: TJvDBLookupCombo;
    pnlAll: TPanel;
    lblCode3: TLabel;
    lblCountry2: TLabel;
    edtCode3: TDBEdit;
    edtMinExistanceMonths: TDBEdit;
    edtMaxExistanceMonths: TDBEdit;
    cbGender: TJvDBComboBox;
    lblGender: TLabel;
    lblCraftType: TLabel;
    lblCraft: TLabel;
    cbCraftType: TJvDBLookupCombo;
    cbCraft: TJvDBLookupCombo;
    gbRoles: TGroupBox;
    cdsStatuses: TAbmesClientDataSet;
    cdsStatusesCOMPANY_STATUS_CODE: TAbmesFloatField;
    cdsStatusesCOMPANY_STATUS_NAME: TAbmesWideStringField;
    dsStatuses: TDataSource;
    cdsCountries: TAbmesClientDataSet;
    cdsCountriesCOUNTRY_CODE: TAbmesFloatField;
    cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField;
    dsCountries: TDataSource;
    cdsCraftTypes: TAbmesClientDataSet;
    cdsCraftTypesCRAFT_TYPE_CODE: TAbmesFloatField;
    cdsCraftTypesCRAFT_TYPE_NAME: TAbmesWideStringField;
    cdsCrafts: TAbmesClientDataSet;
    cdsCraftsCRAFT_CODE: TAbmesFloatField;
    cdsCraftsCRAFT_NAME: TAbmesWideStringField;
    cdsCraftsCRAFT_TYPE_CODE: TAbmesFloatField;
    dsCraftTypes: TDataSource;
    dsCrafts: TDataSource;
    cbCountry2: TJvDBLookupCombo;
    cbCountry3: TJvDBLookupCombo;
    pnlRolesWhenCumulative: TPanel;
    rgRolesWhenCumulative: TJvDBRadioPanel;
    pnlRolesWhenPerson: TPanel;
    rgRolesWhenPerson: TJvDBRadioPanel;
    pnlRolesWhenCompany: TPanel;
    rgRolesWhenCompany: TJvDBRadioPanel;
    chkIsInternal: TDBCheckBox;
    chkIsExternal: TDBCheckBox;
    pnlCumulative: TPanel;
    lblCompanyName2: TLabel;
    lblCompanyShortName2: TLabel;
    lblCode4: TLabel;
    lblCountry4: TLabel;
    edtCompanyName2: TDBEdit;
    edtCompanyShortName2: TDBEdit;
    edtCode4: TDBEdit;
    cbCountry4: TJvDBLookupCombo;
    pnlRolesWhenAll: TPanel;
    rgRolesWhenAll: TJvDBRadioPanel;
    chkIsInternal2: TDBCheckBox;
    chkIsExternal2: TDBCheckBox;
    edtBulstatEx: TDBEdit;
    pnlRolesWhenCommon: TPanel;
    rgRolesWhenCommon: TJvDBRadioPanel;
    pnlCommon: TPanel;
    lblCompanyNameWhenCommon: TLabel;
    lblCompanyShortNameWhenCommon: TLabel;
    lblCodeWhenCommon: TLabel;
    lblCountryWhenCommon: TLabel;
    edtCompanyNameWhenCommon: TDBEdit;
    edtCompanyShrotNameWhenCommon: TDBEdit;
    edtCodeWhenCommon: TDBEdit;
    cbCountryWhenCommon: TJvDBLookupCombo;
    cbCompanyClasses: TJvDBLookupCombo;
    gbCommonPartner: TGroupBox;
    frCommonPartner: TfrPartnerFieldEditFrameBald;
    lblCommonPartner: TLabel;
    procedure actFormUpdate(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses
  uUtils, uUserActivityConsts, uClientUtils, uComboBoxUtils, uCompanyClasses,
  uCompanyKinds;

{$R *.dfm}

{ TfmCompaniesFilter }

procedure TfmCompaniesFilter.OpenDataSets;
begin
  inherited;
  cdsStatuses.Open;
  cdsCountries.Open;
  cdsCraftTypes.Open;
  cdsCrafts.Open;
end;

procedure TfmCompaniesFilter.CloseDataSets;
begin
  cdsCrafts.Close;
  cdsCraftTypes.Close;
  cdsCountries.Close;
  cdsStatuses.Close;
  inherited;
end;

procedure TfmCompaniesFilter.actFormUpdate(Sender: TObject);
var
  CompanyClassField: TField;
begin
  inherited;

  // vsichki tia hakove s kontrolite sa zaradi neopresniavaneto navreme na datapoletata i gadnoto chuvstvo pri smiana
  CompanyClassField:= dsData.DataSet.FieldByName('COMPANY_CLASS_CODE');

  pnlAll.Visible:= CompanyClassField.IsNull;
  pnlRolesWhenAll.Visible:= CompanyClassField.IsNull;

  pnlCompany.Visible:= (CompanyClassField.AsInteger = CompanyClassToInt(ccFirm));
  pnlRolesWhenCompany.Visible:= (CompanyClassField.AsInteger = CompanyClassToInt(ccFirm));
  pnlPerson.Visible:= (CompanyClassField.AsInteger = CompanyClassToInt(ccPerson));
  pnlRolesWhenPerson.Visible:= (CompanyClassField.AsInteger = CompanyClassToInt(ccPerson));
  pnlCumulative.Visible:= (CompanyClassField.AsInteger = CompanyClassToInt(ccCumulative));
  pnlRolesWhenCumulative.Visible:= (CompanyClassField.AsInteger = CompanyClassToInt(ccCumulative));
  pnlCommon.Visible:= (CompanyClassField.AsInteger = CompanyClassToInt(ccCommon));
  pnlRolesWhenCommon.Visible:= (CompanyClassField.AsInteger = CompanyClassToInt(ccCommon));

  chkIsInternal.Visible:=
    ( CompanyClassField.IsNull and (rgRolesWhenCommon.ItemIndex = 6) ) or
    ( (CompanyClassField.AsInteger = CompanyClassToInt(ccPerson)) and (rgRolesWhenPerson.ItemIndex = 4) );
  chkIsExternal.Visible:= chkIsInternal.Visible;
  chkIsInternal2.Visible:= chkIsInternal.Visible;
  chkIsExternal2.Visible:= chkIsInternal.Visible;
end;

procedure TfmCompaniesFilter.dsDataDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Assigned(Field) and (Field.FieldName = 'COMPANY_CLASS_CODE') then
    with dsData.DataSet do
      begin
        FieldByName('ROLE_CODE').AsInteger:= 0;
        FieldByName('IS_INTERNAL').AsBoolean:= True;
        FieldByName('IS_EXTERNAL').AsBoolean:= True;
      end;
end;

procedure TfmCompaniesFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frCommonPartner.FieldNames:= 'COMMON_PARTNER_CODE';
  frCommonPartner.FilterCompanyKind:= ckVendor;
  frCommonPartner.SecondaryFilterCompanyKind:= ckClient;
  frCommonPartner.ShownCompanyClasses:= [ccCommon];
  frCommonPartner.DocButtonVisible:= False;
end;

function TfmCompaniesFilter.GetControlReadOnly(AWinControl: TWinControl): Boolean;
begin
  Result:= inherited GetControlReadOnly(AWinControl);

  if (AWinControl = cbCraft) then
    Result:= Result or dsData.DataSet.FieldByName('CRAFT_TYPE_CODE').IsNull;

  if (AWinControl = edtEGN) then
    Result:= Result or not IsEGNVisible;
end;

end.
