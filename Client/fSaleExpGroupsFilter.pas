unit fSaleExpGroupsFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFilterForm, Db, DBClient, AbmesClientDataSet, ImgList, ActnList,
  StdCtrls, Buttons, ExtCtrls, JvToolEdit, JvDBControls, Mask, DBCtrls,
  AbmesDBCheckBox, JvDBLookup, fBaseFrame, fDBFrame,
  fFieldEditFrame, Menus, JvButtons,
  AbmesFields, fBevelFilterForm, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fTreeNodeFilter, fProductFilter,
  fParamProductFilter, fDateIntervalFrame, fPartnerFieldEditFrame,
  fPartnerFieldEditFrameBald, JvComponent, JvCaptionButton, JvExControls,
  fPartnerFieldEditFrameLabeled, JvComponentBase, JvExStdCtrls,
  JvDBCombobox, DBCtrlsEh, dDocClient, uProducts, uClientTypes, fCompanyFilter, JvCombobox, fFilterFrame,
  fTreeNodeGridFilter;

type
  TfmSaleExpGroupsFilter = class(TFilterForm)
    frParamProductFilter: TfrParamProductFilter;
    gbShipmentDateInterval: TGroupBox;
    frShipmentDateInterval: TfrDateIntervalFrame;
    gbClient: TGroupBox;
    cbCountry: TJvDBLookupCombo;
    lblCountry: TLabel;
    gbSaleDealType: TGroupBox;
    cbSaleDealType: TJvDBLookupCombo;
    gbLeaseDateUnit: TGroupBox;
    cbLeaseDateUnit: TJvDBLookupCombo;
    gbLeaseGroupType: TGroupBox;
    cbLeaseGroupType: TJvDBComboBox;
    cbReceivePlaceOffice: TJvDBLookupCombo;
    lblReceivePlaceOffice: TLabel;
    gbSaleShipmentState: TGroupBox;
    lblDash2: TLabel;
    cbMinSaleShipmentState: TDBComboBoxEh;
    cbMaxSaleShipmentState: TDBComboBoxEh;
    gbReceiveDateInterval: TGroupBox;
    frReceiveDateInterval: TfrDateIntervalFrame;
    gbImportDateInterval: TGroupBox;
    frImportDateInterval: TfrDateIntervalFrame;
    edtReceiveDateBeginRsv: TDBEdit;
    lblReceiveDateRsv: TLabel;
    lblDash3: TLabel;
    edtReceiveDateEndRsv: TDBEdit;
    lblImportDateRsv: TLabel;
    edtImportDateBeginRsv: TDBEdit;
    lblDash1: TLabel;
    edtImportDateEndRsv: TDBEdit;
    gbExceptEventDamages: TGroupBox;
    lblExceptEventDamages: TLabel;
    cbDamagesState: TJvDBLookupCombo;
    cdsDamageStates: TAbmesClientDataSet;
    cdsDamageStatesSTATE_CODE: TAbmesFloatField;
    cdsDamageStatesSTATE_ABBREV: TAbmesWideStringField;
    cdsDamageStatesSTATE_NAME: TAbmesWideStringField;
    dsDamageStates: TDataSource;
    frClient: TfrCompanyFilter;
    gbSaleID: TGroupBox;
    cbBranch: TJvDBLookupCombo;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
  protected
    function GetOriginalFormCaption: string; override;
    function GetFilterFormVariantCode: Integer; override;
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
      AProductClass: TProductClass = pcNone): Boolean;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;
  end;

implementation

uses
  uTreeNodes, uCompanyKinds, uUtils, uSaleDealTypes, dMain, uSalesClientUtils,
  uModelUtils, uExceptEventClientUtils, uClientUtils, uProductClientUtils,
  uCompanyClientUtils;

{$R *.DFM}

{ TfmSaleExpGroupsFilter }

procedure TfmSaleExpGroupsFilter.FormShow(Sender: TObject);
begin
  inherited;

  if (dsData.DataSet.FieldByName('PRODUCT_CODE').AsInteger = tnRootProductCode) then
    dsData.DataSet.FieldByName('PRODUCT_CODE').Clear;
end;

function TfmSaleExpGroupsFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= ProductClassToInt(FProductClass);
end;

function TfmSaleExpGroupsFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmSaleExpGroupsFilter.Initialize;
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

procedure TfmSaleExpGroupsFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  gbLeaseDateUnit.Visible:= (VarToInt(cbSaleDealType.KeyValue) = sdtLease);
  cbLeaseGroupType.Enabled:= (VarToInt(cbSaleDealType.KeyValue) = sdtLease);
  gbLeaseGroupType.Visible:= (FProductClass = pcNormal);
end;

function TfmSaleExpGroupsFilter.GetControlReadOnly(AWinControl: TWinControl): Boolean;
begin
  Result:= inherited GetControlReadOnly(AWinControl);

  if (AWinControl = cbReceivePlaceOffice) then
    Result:= Result or not IsSingleChosenCompany(dsData.DataSet.FieldByName('CHOSEN_COMPANIES').AsString);

  if (AWinControl = cbSaleDealType) then
    Result:= Result or (FProductClass = pcFinancial);
end;

procedure TfmSaleExpGroupsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  frShipmentDateInterval.FieldNames:= 'BEGIN_SHIPMENT_DATE;END_SHIPMENT_DATE';
  frReceiveDateInterval.FieldNames:= 'BEGIN_RECEIVE_DATE;END_RECEIVE_DATE';
  frImportDateInterval.FieldNames:= 'BEGIN_IMPORT_DATE;END_IMPORT_DATE';
  frClient.FieldNames:= 'CHOSEN_COMPANIES';

  InitializeComboBoxWithSaleShipmentStates(cbMinSaleShipmentState, True);
  InitializeComboBoxWithSaleShipmentStates(cbMaxSaleShipmentState, True);
end;

procedure TfmSaleExpGroupsFilter.OpenDataSets;
begin
  cdsDamageStates.CreateDataSet;
  FillDataSetWithProcessTypeDamagedStates(cdsDamageStates);
  inherited;
end;

procedure TfmSaleExpGroupsFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FProductClass:= AProductClass;
end;

class function TfmSaleExpGroupsFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass): Boolean;
var
  f: TfmSaleExpGroupsFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmSaleExpGroupsFilter.CloseDataSets;
begin
  inherited;
  cdsDamageStates.Close;
end;

end.
