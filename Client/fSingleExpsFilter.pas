unit fSingleExpsFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFilterForm, Db, DBClient, AbmesClientDataSet, ImgList, ActnList,
  StdCtrls, Buttons, ExtCtrls, JvToolEdit, JvDBControls, Mask, DBCtrls,
  AbmesDBCheckBox, JvDBLookup, fBaseFrame, fDBFrame,
  fFieldEditFrame, Menus, JvButtons, 
  AbmesFields, fBevelFilterForm, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fDeptFieldEditFrame, fTreeNodeFilter,
  fProductFilter, fParamProductFilter, fDateIntervalFrame,
  fPartnerFieldEditFrame, fPartnerFieldEditFrameBald, JvComponent,
  JvCaptionButton, JvExControls, fPartnerFieldEditFrameLabeled,
  fDeptFieldEditFrameLabeled, JvExStdCtrls, JvDBCombobox, JvComponentBase,
  fDeptFieldEditFrameBald, DBCtrlsEh, dDocClient, uProducts, uClientTypes,
  fCompanyFilter, JvCombobox, fFilterFrame, fTreeNodeGridFilter;

type
  TfmSingleExpsFilter = class(TFilterForm)
    gbSaleID: TGroupBox;
    lblBranch: TLabel;
    lblSaleNo: TLabel;
    lblSaleType: TLabel;
    cbSaleType: TJvDBLookupCombo;
    edtSaleNo: TDBEdit;
    cbBranch: TJvDBLookupCombo;
    gbInvoice: TGroupBox;
    actClearStartPeriodDate: TAction;
    actClearEndPeriodDate: TAction;
    actClearStartInvoiceDate: TAction;
    actClearEndInvoiceDate: TAction;
    edtFromInvoiceNo: TDBEdit;
    edtToInvoiceNo: TDBEdit;
    lblInvoiceNo: TLabel;
    lblInvoiceDateInterval: TLabel;
    edtShipmentNo: TDBEdit;
    lblShipmentNo: TLabel;
    frParamProductFilter: TfrParamProductFilter;
    edtInvoiceNoIntervalDelimiter: TLabel;
    frInvoiceDateInterval: TfrDateIntervalFrame;
    gbDates: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    gbClient: TGroupBox;
    lblCountry: TLabel;
    cbCountry: TJvDBLookupCombo;
    gbSaleDealType: TGroupBox;
    cbSaleDealType: TJvDBLookupCombo;
    cbSaleOrderType: TJvDBComboBox;
    lblSaleOrderType: TLabel;
    cbReceivePlaceOffice: TJvDBLookupCombo;
    lblReceivePlaceOffice: TLabel;
    gbSaleShipmentState: TGroupBox;
    lblDash1: TLabel;
    cbMinSaleShipmentState: TDBComboBoxEh;
    cbMaxSaleShipmentState: TDBComboBoxEh;
    gbReceiveDateInterval: TGroupBox;
    lblReceiveDateRsv: TLabel;
    lblDash2: TLabel;
    frReceiveDateInterval: TfrDateIntervalFrame;
    edtReceiveDateBeginRsv: TDBEdit;
    edtReceiveDateEndRsv: TDBEdit;
    gbImportDateInterval: TGroupBox;
    lblImportDateRsv: TLabel;
    lblDash3: TLabel;
    frImportDateInterval: TfrDateIntervalFrame;
    edtImportDateBeginRsv: TDBEdit;
    edtImportDateEndRsv: TDBEdit;
    pnlRightChangingGroupboxes: TPanel;
    gbLeaseDateUnit: TGroupBox;
    cbDateUnit: TJvDBLookupCombo;
    gbDelivery: TGroupBox;
    lblDCDBranch: TLabel;
    lblDCDCode: TLabel;
    lblDeliveryProjectCode: TLabel;
    cbHasSale: TJvDBComboBox;
    cbDCDBranch: TJvDBLookupCombo;
    edtDCDCode: TDBEdit;
    edtDeliveryProjectCode: TDBEdit;
    gbExceptEventDamages: TGroupBox;
    lblExceptEventDamages: TLabel;
    cbDamagesState: TJvDBLookupCombo;
    cdsDamageStates: TAbmesClientDataSet;
    cdsDamageStatesSTATE_CODE: TAbmesFloatField;
    cdsDamageStatesSTATE_ABBREV: TAbmesWideStringField;
    cdsDamageStatesSTATE_NAME: TAbmesWideStringField;
    dsDamageStates: TDataSource;
    frClient: TfrCompanyFilter;
    frMediator: TfrPartnerFieldEditFrameLabeled;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FChosenCompaniesReadOnly: Boolean;
  protected
    function GetOriginalFormCaption: string; override;
    function GetFilterFormVariantCode: Integer; override;
    function GetDBFrameReadOnly(AFrame: TDBFrame): Boolean; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    procedure Initialize; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNone;
      AChosenCompaniesReadOnly: Boolean = False): Boolean;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNone;
      AChosenCompaniesReadOnly: Boolean = False); reintroduce; virtual;
  end;

implementation

uses
  uTreeNodes, uCompanyKinds, uUtils, uSaleDealTypes, uSalesClientUtils,
  uExceptEventClientUtils, uProductClientUtils, uClientUtils,
  uCompanyClientUtils;

{$R *.DFM}

{ TfmSingleExpsFilter }

procedure TfmSingleExpsFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  gbLeaseDateUnit.Visible:= (cbSaleDealType.KeyValue = sdtLease);
  gbDelivery.Visible:= (cbSaleDealType.KeyValue = sdtExport);
end;

function TfmSingleExpsFilter.GetControlReadOnly(AWinControl: TWinControl): Boolean;
begin
  Result:= inherited GetControlReadOnly(AWinControl);

  if (AWinControl = cbReceivePlaceOffice) then
    Result:= Result or not IsSingleChosenCompany(dsData.DataSet.FieldByName('CHOSEN_COMPANIES').AsString);

  if (AWinControl = cbSaleDealType) then
    Result:= Result or (FProductClass = pcFinancial);
end;

procedure TfmSingleExpsFilter.dsDataDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if Assigned(Field) and (Field.FieldName = 'SALE_DEAL_TYPE_CODE') then
    with dsData.DataSet do
      begin
        FieldByName('LEASE_DATE_UNIT_CODE').Clear;
        FieldByName('HAS_DELIVERY').AsInteger:= 0;
        FieldByName('DCD_BRANCH_CODE').Clear;
        FieldByName('DCD_CODE').Clear;
        FieldByName('DELIVERY_PROJECT_CODE').Clear;
      end;  { with, if }
end;

procedure TfmSingleExpsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  frDateInterval.FieldNames:= 'BEGIN_SHIPMENT_DATE;END_SHIPMENT_DATE';
  frReceiveDateInterval.FieldNames:= 'BEGIN_RECEIVE_DATE;END_RECEIVE_DATE';
  frImportDateInterval.FieldNames:= 'BEGIN_IMPORT_DATE;END_IMPORT_DATE';
  frInvoiceDateInterval.FieldNames:= 'START_INVOICE_PERIOD_DATE;END_INVOICE_PERIOD_DATE';
  frClient.FieldNames:= 'CHOSEN_COMPANIES';
  frMediator.FieldNames:= 'MEDIATOR_COMPANY_CODE';
  frMediator.FilterCompanyKind:= ckMediator;

  InitializeComboBoxWithSaleShipmentStates(cbMinSaleShipmentState, True);
  InitializeComboBoxWithSaleShipmentStates(cbMaxSaleShipmentState, True);
end;

function TfmSingleExpsFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= ProductClassToInt(FProductClass);
end;

function TfmSingleExpsFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmSingleExpsFilter.Initialize;
var
  MsgParams: TStrings;
begin
  inherited;

  frParamProductFilter.ProductClass:= FProductClass;

  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmSingleExpsFilter.OpenDataSets;
begin
  cdsDamageStates.CreateDataSet;
  FillDataSetWithProcessTypeDamagedStates(cdsDamageStates);
  inherited;
end;

procedure TfmSingleExpsFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass; AChosenCompaniesReadOnly: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FProductClass:= AProductClass;
  FChosenCompaniesReadOnly:= AChosenCompaniesReadOnly;
end;

class function TfmSingleExpsFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass; AChosenCompaniesReadOnly: Boolean): Boolean;
var
  f: TfmSingleExpsFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AProductClass, AChosenCompaniesReadOnly);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmSingleExpsFilter.CloseDataSets;
begin
  inherited;
  cdsDamageStates.Close;
end;

function TfmSingleExpsFilter.GetDBFrameReadOnly(AFrame: TDBFrame): Boolean;
begin
  if (AFrame = frClient) and FChosenCompaniesReadOnly then
    Exit(True);

  Result:= inherited GetDBFrameReadOnly(AFrame);
end;

end.
