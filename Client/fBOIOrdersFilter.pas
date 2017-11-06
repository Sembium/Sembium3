unit fBOIOrdersFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponent, JvCaptionButton, ActnList, JvExControls, JvDBLookup,
  Buttons, StdCtrls, ExtCtrls, fDeptFieldEditFrameBald,
  fDateIntervalFrame, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameLabeled, Mask, DBCtrls, JvExStdCtrls, JvDBCombobox, uClientTypes,
  uBudgetClientUtils, dDocClient, fTreeNodeFilter, fProductFilter,
  fParamProductFilter, JvComponentBase, fTreeOnlyNodeFieldEditFrame,
  fProductFieldEditFrame, AbmesDBCheckBox, JvCombobox;

type
  TfmBOIOrdersFilterClass = class of TfmBOIOrdersFilter;
  TfmBOIOrdersFilter = class(TFilterForm)
    gbBudgetOrder: TGroupBox;
    gbState: TGroupBox;
    lblDash2: TLabel;
    cbMinStatus: TJvDBComboBox;
    cbMaxStatus: TJvDBComboBox;
    gbBudgetOrderID: TGroupBox;
    lblBudgetOrderBranch: TLabel;
    lblBudgetOrderCode: TLabel;
    lblRegularityType: TLabel;
    cbBudgetOrderBranch: TJvDBLookupCombo;
    edtBudgetOrderCode: TDBEdit;
    cbRegularityType: TJvDBLookupCombo;
    frGeneratorDept: TfrDeptFieldEditFrameLabeled;
    frDeveloperDept: TfrDeptFieldEditFrameLabeled;
    gbDateInterval: TGroupBox;
    frDates: TfrDateIntervalFrame;
    gbBudgetOrderItems: TGroupBox;
    pnlBudgetOrderItems: TPanel;
    gbBudgetOrderStatus: TGroupBox;
    lblDash: TLabel;
    cbMinBOIStatus: TJvDBComboBox;
    cbMaxBOIStatus: TJvDBComboBox;
    gbConsume: TGroupBox;
    lblTreeNodeName: TLabel;
    lblBudgetOrderItemDistributionType: TLabel;
    frBudgetOrderItemDept: TfrDeptFieldEditFrameBald;
    cbBudgetOrderItemDistributionType: TJvDBLookupCombo;
    gbBudgetOrderTimeInt: TGroupBox;
    frBudgetOrderItemDates: TfrDateIntervalFrame;
    lblFormCaption: TLabel;
    gbBOIOrders: TGroupBox;
    gbBOIOStatus: TGroupBox;
    lblDash3: TLabel;
    cbMinBOIOStatus: TJvDBComboBox;
    frConsumerDept: TfrDeptFieldEditFrame;
    gbBOIOPlanDate: TGroupBox;
    cbMaxBOIOStatus: TJvDBComboBox;
    frBOIOPlanDate: TfrDateIntervalFrame;
    frBOProductFilter: TfrParamProductFilter;
    frBudgetClass: TfrProductFieldEditFrame;
    pnlFilterByBOIOrdersExistance: TPanel;
    chbFilterByBOIOrdersExistance: TAbmesDBCheckBox;
    gbBudgetOrderItemType: TGroupBox;
    cdsFilterBudgetOrderItemTypes: TAbmesClientDataSet;
    dsFilterBudgetOrderItemTypes: TDataSource;
    gbBudgetOrderItemCode: TGroupBox;
    edtBudgetOrderItemCode: TDBEdit;
    gbBOIOrderCode: TGroupBox;
    edtBOIOrderCode: TDBEdit;
    gbOrgTaskProposalState: TGroupBox;
    cbOrgTaskProposalState: TJvDBLookupCombo;
    cbBudgetOrderItemType: TJvDBLookupCombo;
    cdsFilterBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE: TAbmesFloatField;
    cdsFilterBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField;
    cdsFilterBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_NAME: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsFilterBudgetOrderItemTypesAfterOpen(DataSet: TDataSet);
  private
    FBudgetMode: TBudgetMode;
  protected
    function GetOriginalFormCaption: string; override;
    function GetFilterFormVariantCode: Integer; override;
    function GetBudgetOrderItemTypeReadOnly: Boolean; virtual;
    procedure CloseDataSets; override;
    procedure OpenDataSets; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ABudgetMode: TBudgetMode = bmExpense); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ABudgetMode: TBudgetMode = bmExpense): Boolean;
  end;

implementation

uses uClientUtils, uProducts, uComboBoxUtils;

{$R *.dfm}

{ TfmBOIOrdersFilter }

procedure TfmBOIOrdersFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ABudgetMode: TBudgetMode);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FBudgetMode:= ABudgetMode;
end;

class function TfmBOIOrdersFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ABudgetMode: TBudgetMode): Boolean;
var
  f: TfmBOIOrdersFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, ABudgetMode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

function TfmBOIOrdersFilter.GetBudgetOrderItemTypeReadOnly: Boolean;
begin
  Result:= True;
end;

function TfmBOIOrdersFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if (AWinControl = cbBudgetOrderItemType) and
     GetBudgetOrderItemTypeReadOnly then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

procedure TfmBOIOrdersFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  gbBOIOrders.Visible:= chbFilterByBOIOrdersExistance.Field.AsBoolean;
  gbBudgetOrderItemType.Visible:= (FBudgetMode = bmInvest);
  gbOrgTaskProposalState.Visible:= (FBudgetMode = bmInvest);
end;

procedure TfmBOIOrdersFilter.FormCreate(Sender: TObject);
begin
  inherited;

  frGeneratorDept.FieldNames:= 'GENERATOR_DEPT_CODE';
  frDeveloperDept.FieldNames:= 'DEVELOPER_DEPT_CODE';
  frBudgetOrderItemDates.FieldNames:= 'ITEM_BEGIN_DATE;ITEM_END_DATE';
  frConsumerDept.FieldNames:= 'CONSUMER_DEPT_CODE';
  frBOIOPlanDate.FieldNames:= 'BOIO_BEGIN_PLAN_DATE;BOIO_END_PLAN_DATE';
  frBOProductFilter.FieldNames:= 'CHOSEN_PRODUCTS_2';
  frBudgetClass.FieldNames:= 'BUDGET_PRODUCT_CODE';
  frBudgetClass.ProductClass:= pcBudget;
end;

procedure TfmBOIOrdersFilter.FormShow(Sender: TObject);
begin
  RecursivelyFormatCaptions(Self, CreateCommonMsgParams(LoginContext, FBudgetMode));
  inherited;
  ReplacedDBComboBox(cbMinBOIStatus).SetDropDownCount(11);
  ReplacedDBComboBox(cbMaxBOIStatus).SetDropDownCount(11);
end;

function TfmBOIOrdersFilter.GetOriginalFormCaption: string;
begin
  Result:= lblFormCaption.Caption;
end;

function TfmBOIOrdersFilter.GetFilterFormVariantCode: Integer;
begin
  case FBudgetMode of
    bmExpense: Result:= 0;
    bmInvest: Result:= 3;
  else
    raise Exception.Create('unknown budget mode');
  end;

  if ClassName = 'TfmBOIProductOrdersFilter' then
    Result:= Result + 1
  else
  if ClassName = 'TfmBOICompanyOrdersFilter' then
    Result:= Result + 2
  else
  if ClassName = 'TfmBOIWasteOrdersFilter' then
    Result:= Result + 3
  else
  if ClassName = 'TfmBOIMarkingOrdersFilter' then
    Result:= 7
  else
    raise Exception.Create('unknown ClassName');
end;

procedure TfmBOIOrdersFilter.OpenDataSets;
begin
  cdsFilterBudgetOrderItemTypes.CreateDataSet;
  inherited OpenDataSets;
end;

procedure TfmBOIOrdersFilter.CloseDataSets;
begin
  inherited CloseDataSets;
  cdsFilterBudgetOrderItemTypes.Close;
end;

procedure TfmBOIOrdersFilter.cdsFilterBudgetOrderItemTypesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FillFilterBudgetOrderItemTypes(cdsFilterBudgetOrderItemTypes);
end;

end.
