unit fBudgetOrdersFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvButtons, ActnList, JvDBLookup, Buttons, StdCtrls, ExtCtrls,
  fBevelFilterForm, Mask, DBCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDeptFieldEditFrameBald,
  JvDBCombobox, fDateIntervalFrame, JvExStdCtrls, JvComponent, JvCaptionButton, JvExControls,
  fDeptFieldEditFrameLabeled, uBudgetClientUtils, dDocClient, uClientTypes,
  JvComponentBase, fTreeNodeFilter, fProductFilter, fParamProductFilter,
  fProductFieldEditFrame;

type
  TfmBudgetOrdersFilter = class(TFilterForm)
    gbBudgetOrder: TGroupBox;
    gbState: TGroupBox;
    lblStatusDash: TLabel;
    cbMinStatus: TJvDBComboBox;
    cbMaxStatus: TJvDBComboBox;
    gbBudgetOrderID: TGroupBox;
    lblBudgetOrderBranch: TLabel;
    cbBudgetOrderBranch: TJvDBLookupCombo;
    lblBudgetOrderCode: TLabel;
    edtBudgetOrderCode: TDBEdit;
    cbRegularityType: TJvDBLookupCombo;
    lblRegularityType: TLabel;
    frGeneratorDept: TfrDeptFieldEditFrameLabeled;
    frDeveloperDept: TfrDeptFieldEditFrameLabeled;
    gbDateInterval: TGroupBox;
    frDates: TfrDateIntervalFrame;
    gbBudgetOrderItems: TGroupBox;
    pnlBudgetOrderItems: TPanel;
    gbItemStatus: TGroupBox;
    lblStatusCodeDash: TLabel;
    cbMinItemStatusCode: TJvDBComboBox;
    cbMaxItemStatusCode: TJvDBComboBox;
    gbBOIOrderType: TGroupBox;
    gbConsume: TGroupBox;
    frBudgetOrderItemDept: TfrDeptFieldEditFrameBald;
    lblTreeNodeName: TLabel;
    cbBudgetOrderItemDistributionType: TJvDBLookupCombo;
    lblBudgetOrderItemDistributionType: TLabel;
    gbDates: TGroupBox;
    frBudgetOrderItemDates: TfrDateIntervalFrame;
    cbBOIOrderType: TJvDBLookupCombo;
    frParamProductFilter: TfrParamProductFilter;
    frBudgetClass: TfrProductFieldEditFrame;
    gbOrgTaskProposalState: TGroupBox;
    cbOrgTaskProposalState: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    FBudgetMode: TBudgetMode;
  protected
    function GetFilterFormVariantCode: Integer; override;
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

uses uClientUtils, uProducts;

{$R *.dfm}

procedure TfmBudgetOrdersFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frGeneratorDept.FieldNames:= 'GENERATOR_DEPT_CODE';
  frDeveloperDept.FieldNames:= 'DEVELOPER_DEPT_CODE';
  frBudgetOrderItemDates.FieldNames:= 'ITEM_BEGIN_DATE;ITEM_END_DATE';
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  frBudgetClass.FieldNames:= 'BUDGET_PRODUCT_CODE';
  frBudgetClass.ProductClass:= pcBudget;
end;

procedure TfmBudgetOrdersFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ABudgetMode: TBudgetMode);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FBudgetMode:= ABudgetMode;
end;

class function TfmBudgetOrdersFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ABudgetMode: TBudgetMode): Boolean;
var
  f: TfmBudgetOrdersFilter;
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

procedure TfmBudgetOrdersFilter.FormShow(Sender: TObject);
begin
  RecursivelyFormatCaptions(Self, CreateCommonMsgParams(LoginContext, FBudgetMode));
  inherited;
end;

function TfmBudgetOrdersFilter.GetFilterFormVariantCode: Integer;
begin
  case FBudgetMode of
    bmExpense: Result:= 1;
    bmInvest: Result:= 2;
  else
    raise Exception.Create('unknown budget mode');
  end;
end;

procedure TfmBudgetOrdersFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  gbOrgTaskProposalState.Visible:= (FBudgetMode = bmInvest);
end;

end.
