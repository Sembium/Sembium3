unit fSaleOrdersGroupSaleOrdersFilter;
 
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFilterForm, Db, DBClient, AbmesClientDataSet, ImgList, ActnList,
  StdCtrls, Buttons, ExtCtrls, fBevelFilterForm, Mask, DBCtrls, JvDBLookup,
  fBaseFrame, fDBFrame, fFieldEditFrame, 
  fEditForm, JvToolEdit, JvDBControls, AbmesFields,
  AbmesDBCheckBox, Menus, JvButtons, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fPartnerFieldEditFrame,
  fPartnerFieldEditFrameBald, JvComponent, JvCaptionButton, JvExControls,
  JvComponentBase, fPriorityIntervalEditFrame, fDateIntervalFrame,
  fEmployeeFieldEditFrame, fEmployeeFieldEditFrameLabeled, fFilterFrame,
  fTreeNodeFilter, fTreeNodeGridFilter, fProductFilter, fParamProductFilter, fPartnerFieldEditFrameLabeled;

type
  TfmSaleOrdersGroupSaleOrdersFilter = class(TFilterForm)
    gbGroupSale: TGroupBox;
    lblRequestBranch: TLabel;
    lblRequestNo: TLabel;
    cbRequestBranch: TJvDBLookupCombo;
    edtRequestNo: TDBEdit;
    gbSaleGroup: TGroupBox;
    lblSaleGroupBranch: TLabel;
    lblSaleGroupNo: TLabel;
    cbSaleGroupBranch: TJvDBLookupCombo;
    edtSaleGroupNo: TDBEdit;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesNAME: TAbmesWideStringField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    dsBranches: TDataSource;
    lblSaleDealType: TLabel;
    cbSaleDealType: TJvDBLookupCombo;
    frRequestRegisterDateInterval: TfrDateIntervalFrame;
    lblRequestRegisterDateInterval: TLabel;
    gbClient: TGroupBox;
    frClient: TfrPartnerFieldEditFrameBald;
    lblClientNo: TLabel;
    lblClientName: TLabel;
    frClientPriorityInterval: TfrPriorityIntervalEditFrame;
    lblClientPriority: TLabel;
    gbDates: TGroupBox;
    frClientOfferReceiveDateInterval: TfrDateIntervalFrame;
    frReceiveDateInterval: TfrDateIntervalFrame;
    frRealReceiveDateInterval: TfrDateIntervalFrame;
    edtBeginReceiveDateDiff: TDBEdit;
    lblReceiveDateDiffDash: TLabel;
    edtEndReceiveDateDiff: TDBEdit;
    dsSaleDealTypes: TDataSource;
    pnlDateSaleCaptions: TPanel;
    lblClientOfferReceiveDateInterval: TLabel;
    lblReceiveDateInterval: TLabel;
    lblReceiveDateDiff: TLabel;
    lblRealReceiveDateInterval: TLabel;
    pnlDateLeaseCaptions: TPanel;
    lblLeaseClientOfferReceiveDateInterval: TLabel;
    lblLeaseReceiveDateInterval: TLabel;
    lblLeaseReceiveDateDiff: TLabel;
    lblLeaseRealReceiveDateInterval: TLabel;
    cdsStatuses: TAbmesClientDataSet;
    cdsStatusesSTATUS_CODE: TAbmesFloatField;
    cdsStatusesSTATUS_ABBREV: TAbmesWideStringField;
    cdsStatusesSTATUS_DESCRIPTION: TAbmesWideStringField;
    dsStatuses: TDataSource;
    gbStatus: TGroupBox;
    lblDash: TLabel;
    cbMinStatus: TJvDBLookupCombo;
    cbMaxStatus: TJvDBLookupCombo;
    frSRGEmployee: TfrEmployeeFieldEditFrameLabeled;
    frProduct: TfrParamProductFilter;
    frMediator: TfrPartnerFieldEditFrameLabeled;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uTreeClientUtils, uCompanyKinds, uSaleDealTypes, uSalesClientUtils;

{$R *.DFM}

resourcestring
  SSaleDates = ' ВрмИнт на Дата за Получаване на УОб от Клиент ';
  SLeaseDates = ' ВрмИнт на Наем ';

{ TfmSaleOrdersGroupSaleOrdersFilter }

procedure TfmSaleOrdersGroupSaleOrdersFilter.OpenDataSets;
begin
  inherited;
  cdsBranches.Open;
  cdsStatuses.CreateDataSet;
  FillDataSetWithSaleOrderStatuses(cdsStatuses);
end;

procedure TfmSaleOrdersGroupSaleOrdersFilter.actFormUpdate(
  Sender: TObject);
const
  DateCaptions: array[Boolean] of string = (SSaleDates, SLeaseDates);
var
  IsLease: Boolean;
begin
  inherited;

  IsLease:= (cbSaleDealType.KeyValue = sdtLease);

  pnlDateSaleCaptions.Visible:= not IsLease;
  pnlDateLeaseCaptions.Visible:= IsLease;

  gbDates.Caption:= DateCaptions[IsLease];
end;

procedure TfmSaleOrdersGroupSaleOrdersFilter.CloseDataSets;
begin
  inherited;
  cdsBranches.Close;
  cdsStatuses.Close;
end;

procedure TfmSaleOrdersGroupSaleOrdersFilter.Initialize;
begin
  inherited;
  dsSaleDealTypes.DataSet:=
    dsData.DataSet.FieldByName('_SALE_DEAL_TYPE_ABBREV').LookupDataSet;
end;

procedure TfmSaleOrdersGroupSaleOrdersFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frClient.FieldNames:= 'CLIENT_COMPANY_CODE';
  frClient.FilterCompanyKind:= ckClient;
  frRequestRegisterDateInterval.FieldNames:= 'REQUEST_REGISTER_BEGIN_DATE; REQUEST_REGISTER_END_DATE';
  frClientPriorityInterval.FieldNames:= 'CLIENT_BEGIN_PRIORITY_CODE; CLIENT_END_PRIORITY_CODE';
  frClientOfferReceiveDateInterval.FieldNames:= 'CL_OFFER_RECEIVE_BEGIN_DATE; CL_OFFER_RECEIVE_END_DATE';
  frReceiveDateInterval.FieldNames:= 'RECEIVE_BEGIN_DATE; RECEIVE_END_DATE';
  frRealReceiveDateInterval.FieldNames:= 'REAL_RECEIVE_BEGIN_DATE; REAL_RECEIVE_END_DATE';
  frSRGEmployee.FieldNames:= 'SRG_EMPLOYEE_CODE';
  frProduct.FieldNames:= 'CHOSEN_PRODUCTS';
  frMediator.FieldNames:= 'MEDIATOR_COMPANY_CODE';
  frMediator.FilterCompanyKind:= ckMediator;
end;

end.
