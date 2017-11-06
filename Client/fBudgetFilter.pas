unit fBudgetFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvButtons, ActnList, JvDBLookup, Buttons, StdCtrls, ExtCtrls,
  fBevelFilterForm, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, 
  DBCtrls, fDateIntervalFrame, fDateUnitsIntervalEditFrame, JvDBCombobox, Mask,
  fDeptFieldEditFrameBald, JvExStdCtrls, JvComponent, JvCaptionButton,
  JvExControls, AbmesDBCheckBox, dDocClient, uClientTypes, uBudgetClientUtils,
  fTreeNodeFilter, fProductFilter, fParamProductFilter, JvComponentBase,
  fTreeOnlyNodeFieldEditFrame, fProductFieldEditFrame, JvCombobox, fFilterFrame,
  fTreeNodeGridFilter, System.Actions;

type
  TfmBudgetFilter = class(TFilterForm)
    rgIsLocal: TDBRadioGroup;
    frDateUnitsInterval: TfrDateUnitsIntervalEditFrame;
    cdsRegularityTypes: TAbmesClientDataSet;
    cdsRegularityTypesBO_REGULARITY_TYPE_CODE: TAbmesFloatField;
    cdsRegularityTypesBO_REGULARITY_TYPE_NAME: TAbmesWideStringField;
    cdsBOIDistributionTypes: TAbmesClientDataSet;
    cdsBOIDistributionTypesBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    cdsBOIDistributionTypesBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField;
    dsRegularityTypes: TDataSource;
    dsBOIDistributionTypes: TDataSource;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    dsBranches: TDataSource;
    rgIsExpanded: TDBRadioGroup;
    gbConsumption: TGroupBox;
    frDept: TfrDeptFieldEditFrameBald;
    lblTreeNodeName: TLabel;
    cbDistributionType: TJvDBLookupCombo;
    lblDistributionType: TLabel;
    gbBOIOrderType: TGroupBox;
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
    gbDept: TGroupBox;
    frGeneratorDept: TfrDeptFieldEditFrameBald;
    lblFormCaption: TLabel;
    frBOProductFilter: TfrParamProductFilter;
    frBudgetClass: TfrProductFieldEditFrame;
    gbBudgetOrderItemType: TGroupBox;
    cbBudgetOrderItemType: TJvDBLookupCombo;
    dsFilterBudgetOrderItemTypes: TDataSource;
    gbOrgTaskProposalState: TGroupBox;
    cbOrgTaskProposalState: TJvDBLookupCombo;
    cdsFilterBudgetOrderItemTypes: TAbmesClientDataSet;
    cdsFilterBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE: TAbmesFloatField;
    cdsFilterBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField;
    cdsFilterBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_NAME: TAbmesWideStringField;
    cbBOIOrderType: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsFilterBudgetOrderItemTypesAfterOpen(DataSet: TDataSet);
  private
    FBudgetMode: TBudgetMode;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetOriginalFormCaption: string; override;
    function GetFilterFormVariantCode: Integer; override;
    function GetDBFrameReadOnly(AFrame: TDBFrame): Boolean; override;
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

uses dMain, uClientUtils, uProducts;

{$R *.dfm}

{ TfmBudgetFilter }

procedure TfmBudgetFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  gbBudgetOrderItemType.Visible:= (FBudgetMode = bmInvest);
  gbOrgTaskProposalState.Visible:= (FBudgetMode = bmInvest);
end;

function TfmBudgetFilter.GetControlReadOnly(AWinControl: TWinControl): Boolean;
begin
  if (AWinControl = cbBudgetOrderItemType) and
     OuterDataSet.FieldByName('IS_BOI_TYPE_READ_ONLY').AsBoolean then
    Exit(True);

  if (AWinControl = cbOrgTaskProposalState) and
     OuterDataSet.FieldByName('IS_OTP_STATE_CODE_READ_ONLY').AsBoolean then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

procedure TfmBudgetFilter.cdsFilterBudgetOrderItemTypesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FillFilterBudgetOrderItemTypes(cdsFilterBudgetOrderItemTypes);
end;

procedure TfmBudgetFilter.CloseDataSets;
begin
  cdsFilterBudgetOrderItemTypes.Close;
  cdsBranches.Close;
  cdsRegularityTypes.Close;
  cdsBOIDistributionTypes.Close;
  inherited;
end;

procedure TfmBudgetFilter.OpenDataSets;
begin
  inherited;
  cdsBOIDistributionTypes.Open;
  cdsRegularityTypes.Open;
  cdsBranches.Open;
  cdsFilterBudgetOrderItemTypes.CreateDataSet;
end;

procedure TfmBudgetFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frGeneratorDept.FieldNames:= 'GENERATOR_DEPT_CODE';
  frBOProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  frBudgetClass.FieldNames:= 'BUDGET_PRODUCT_CODE';
  frBudgetClass.ProductClass:= pcBudget;
end;

procedure TfmBudgetFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ABudgetMode: TBudgetMode);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FBudgetMode:= ABudgetMode;
end;

function TfmBudgetFilter.GetDBFrameReadOnly(AFrame: TDBFrame): Boolean;
begin
  if (AFrame = frBOProductFilter) and
     OuterDataSet.FieldByName('IS_CHOSEN_PRODUCTS_READ_ONLY').AsBoolean then
    Exit(True);

  Result:= inherited GetDBFrameReadOnly(AFrame);
end;

class function TfmBudgetFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ABudgetMode: TBudgetMode): Boolean;
var
  f: TfmBudgetFilter;
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

function TfmBudgetFilter.GetOriginalFormCaption: string;
begin
  Result:= lblFormCaption.Caption;
end;

procedure TfmBudgetFilter.FormShow(Sender: TObject);
begin
  inherited;
  RecursivelyFormatCaptions(Self, CreateCommonMsgParams(LoginContext, FBudgetMode));
end;

function TfmBudgetFilter.GetFilterFormVariantCode: Integer;
begin
  case FBudgetMode of
    bmExpense: Result:= 1;
    bmInvest: Result:= 2;
  else
    raise Exception.Create('unknown budget mode');
  end;
end;

end.
