unit fSaleRequestGroupsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvComponent,
  JvDBLookup, Buttons, StdCtrls, ExtCtrls, Mask, DBCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateIntervalFrame, fPartnerFieldEditFrame,
  fPartnerFieldEditFrameBald, fPriorityIntervalEditFrame, JvExExtCtrls,
  JvDBRadioPanel, fEmployeeFieldEditFrame, fEmployeeFieldEditFrameBald,
  fEmployeeFieldEditFrameLabeled, JvExStdCtrls, JvDBCombobox, JvExtComponent,
  uProducts, uClientTypes, dDocClient, JvCombobox;

type
  TfmSaleRequestGroupsFilter = class(TFilterForm)
    gbID: TGroupBox;
    cdsSaleDealTypes: TAbmesClientDataSet;
    cdsSaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsSaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    dsSaleDealTypes: TDataSource;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesNAME: TAbmesWideStringField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    dsBranches: TDataSource;
    lblSaleDealType: TLabel;
    cbSaleDealType: TJvDBLookupCombo;
    lblRequestBranch: TLabel;
    cbRequestBranch: TJvDBLookupCombo;
    lblRequestNo: TLabel;
    edtRequestNo: TDBEdit;
    lblIsActivatedByClient: TLabel;
    lblDateUnit: TLabel;
    gbRequestSendDate: TGroupBox;
    frRequestSendDate: TfrDateIntervalFrame;
    gbRequestRegisterDate: TGroupBox;
    frRequestRegisterDate: TfrDateIntervalFrame;
    gbClient: TGroupBox;
    frClient: TfrPartnerFieldEditFrameBald;
    lblPartnerCode: TLabel;
    lblPartner: TLabel;
    lblCountry: TLabel;
    lblPriority: TLabel;
    cbCountry: TJvDBLookupCombo;
    frPriorityIntervalEditFrame1: TfrPriorityIntervalEditFrame;
    gbMediator: TGroupBox;
    pnlHasMediator: TJvDBRadioPanel;
    lblMediator: TLabel;
    frMediator: TfrPartnerFieldEditFrameBald;
    cdsCountries: TAbmesClientDataSet;
    cdsCountriesCOUNTRY_CODE: TAbmesFloatField;
    cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField;
    cdsCountriesCOUNTRY_NAME: TAbmesWideStringField;
    dsCountries: TDataSource;
    cdsDateUnits: TAbmesClientDataSet;
    cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    dsDateUnits: TDataSource;
    cbDateUnit: TJvDBLookupCombo;
    frSRGEmployee: TfrEmployeeFieldEditFrameLabeled;
    lblRequestSendDate: TLabel;
    lblRequestRegisterDate: TLabel;
    gbStatus: TGroupBox;
    lblDash: TLabel;
    cbMinStatus: TJvDBLookupCombo;
    cbMaxStatus: TJvDBLookupCombo;
    cdsStatuses: TAbmesClientDataSet;
    cdsStatusesSTATUS_CODE: TAbmesFloatField;
    cdsStatusesSTATUS_ABBREV: TAbmesWideStringField;
    cdsStatusesSTATUS_DESCRIPTION: TAbmesWideStringField;
    dsStatuses: TDataSource;
    cdsStreamTypes: TAbmesClientDataSet;
    cdsStreamTypesSTREAM_TYPE_CODE: TAbmesFloatField;
    cdsStreamTypesSTREAM_TYPE_ABBREV: TAbmesWideStringField;
    cdsStreamTypesSTREAM_TYPE_NAME: TAbmesWideStringField;
    dsStreamTypes: TDataSource;
    lblStreamType: TLabel;
    cbStreamType: TJvDBLookupCombo;
    cbIsActivatedByClient: TJvDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
  protected
    function GetFilterFormVariantCode: Integer; override;
    function GetOriginalFormCaption: string; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure Initialize; override;

    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNone): Boolean;
  end;

implementation

uses
  dMain, uSaleDealTypes, uCompanyKinds, uSalesClientUtils, uProductClientUtils,
  uClientUtils;

{$R *.dfm}

{ TfmSaleRequestGroupsFilter }

procedure TfmSaleRequestGroupsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  
  frRequestSendDate.FieldNames:= 'BEGIN_REQUEST_SEND_DATE;END_REQUEST_SEND_DATE';
  frRequestRegisterDate.FieldNames:= 'BEGIN_REQUEST_REGISTER_DATE;END_REQUEST_REGISTER_DATE';
  frClient.FieldNames:= 'CLIENT_COMPANY_CODE';
  frClient.FilterCompanyKind:= ckClient;
  frClient.SecondaryFilterCompanyKind:= ckVendor;
  frMediator.FieldNames:= 'MEDIATOR_COMPANY_CODE';
  frMediator.FilterCompanyKind:= ckMediator;
  frSRGEmployee.FieldNames:= 'SRG_EMPLOYEE_CODE';
end;

function TfmSaleRequestGroupsFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if (AWinControl = cbSaleDealType) and
     (FProductClass = pcFinancial) then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

function TfmSaleRequestGroupsFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= ProductClassToInt(FProductClass);
end;

function TfmSaleRequestGroupsFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmSaleRequestGroupsFilter.Initialize;
var
  MsgParams: TStrings;
begin
  inherited;

  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmSaleRequestGroupsFilter.OpenDataSets;
begin
  inherited;
  cdsSaleDealTypes.Open;
  cdsBranches.Open;
  cdsCountries.Open;
  cdsDateUnits.Open;
  cdsStreamTypes.Open;
  cdsStatuses.CreateDataSet;
  FillDataSetWithSaleOrderStatuses(cdsStatuses);
end;


procedure TfmSaleRequestGroupsFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FProductClass:= AProductClass;
end;

class function TfmSaleRequestGroupsFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass): Boolean;
var
  f: TfmSaleRequestGroupsFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmSaleRequestGroupsFilter.actFormUpdate(Sender: TObject);
begin
  inherited;

  lblDateUnit.Visible:= (dsData.DataSet.FieldByName('SALE_DEAL_TYPE_CODE').AsInteger = sdtLease);
  cbDateUnit.Visible:= lblDateUnit.Visible;

  lblMediator.Visible:= (pnlHasMediator.ItemIndex = 1);    // ne se updateva predi tab, ako gledame poleto
  frMediator.Visible:= lblMediator.Visible;
end;

procedure TfmSaleRequestGroupsFilter.CloseDataSets;
begin
  cdsStatuses.Close;
  cdsStreamTypes.Close;
  cdsDateUnits.Close;
  cdsCountries.Close;
  cdsBranches.Close;
  cdsSaleDealTypes.Close;
  inherited;
end;

procedure TfmSaleRequestGroupsFilter.dsDataDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if Assigned(Field) and (Field.FieldName = 'SALE_DEAL_TYPE_CODE') then
    if Field.IsNull then
      begin
        frClient.FilterCompanyKind:= ckClient;
        frClient.SecondaryFilterCompanyKind:= ckVendor;
      end
    else
      if (Field.AsInteger = sdtExport) then
        begin
          frClient.FilterCompanyKind:= ckVendor;
          frClient.SecondaryFilterCompanyKind:= ckNone;
        end
      else
        begin
          frClient.FilterCompanyKind:= ckClient;
          frClient.SecondaryFilterCompanyKind:= ckNone;
        end;
end;

end.
