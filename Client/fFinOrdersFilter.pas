unit fFinOrdersFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvDBLookup, Buttons,
  StdCtrls, ExtCtrls, Mask, DBCtrlsEh, DBCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateIntervalFrame, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fDeptFieldEditFrameBald, fPartnerFieldEditFrame,
  fPartnerFieldEditFrameLabeled, JvExStdCtrls, JvDBCombobox,
  fProductFieldEditFrame, fProductFieldEditFrameBald,
  fTreeOnlyNodeFieldEditFrame, fFinClassFieldEditFrame, JvCombobox,
  fCompanyFilter, fFilterFrame, fTreeNodeFilter, AbmesDBCheckBox;

type
  TfmFinOrdersFilter = class(TFilterForm)
    gbState: TGroupBox;
    lblDash: TLabel;
    cbMinFinOrderState: TDBComboBoxEh;
    cbMaxFinOrderState: TDBComboBoxEh;
    gbFinProcess: TGroupBox;
    cbFinProcess: TJvDBLookupCombo;
    gbFinOrderIdentification: TGroupBox;
    lblBranch: TLabel;
    lblFinOrderNo: TLabel;
    edtFinOrderNo: TDBEdit;
    cbBranch: TJvDBLookupCombo;
    gbMovementDate: TGroupBox;
    frMovementDateInterval: TfrDateIntervalFrame;
    gbExecDept: TGroupBox;
    frExecDept: TfrDeptFieldEditFrameBald;
    gbBaseDate: TGroupBox;
    frBaseDateInterval: TfrDateIntervalFrame;
    gbFinStatus: TGroupBox;
    cbFinStatus: TJvDBComboBox;
    lblFinStatus: TLabel;
    edtDocumentIdentifier: TDBEdit;
    lblDocumentIdentifier: TLabel;
    gbBndProcess: TGroupBox;
    pnlBndSale: TPanel;
    pnlBndDelivery: TPanel;
    pnlBndGroupSale: TPanel;
    lblSaleBranchNo: TLabel;
    lblSaleNo: TLabel;
    edtSaleNo: TDBEdit;
    cbSaleBranchNo: TJvDBLookupCombo;
    lblSaleShipmentNo: TLabel;
    edtSaleShipmentNo: TDBEdit;
    lblDcdBranchNo: TLabel;
    lblDcdCode: TLabel;
    edtDcdCode: TDBEdit;
    cbDcdBranchNo: TJvDBLookupCombo;
    lblDeliveryProjectCode: TLabel;
    edtDeliveryProjectCode: TDBEdit;
    lblRequestBranchNo: TLabel;
    lblRequestNo: TLabel;
    edtRequestNo: TDBEdit;
    cbRequestBranchNo: TJvDBLookupCombo;
    frWorkFinancialProduct: TfrProductFieldEditFrame;
    frBndSaleProduct: TfrProductFieldEditFrameBald;
    lblBndSaleProduct: TLabel;
    frBndDeliveryProduct: TfrProductFieldEditFrameBald;
    lblBndDeliveryProduct: TLabel;
    pnlBndBOIOrder: TPanel;
    lblBudgetOrderBanchNo: TLabel;
    lblBudgetOrderCode: TLabel;
    lblBudgetOrderItemCode: TLabel;
    lblBndBOIOrderProduct: TLabel;
    edtBudgetOrderCode: TDBEdit;
    cbBudgetOrderBanchNo: TJvDBLookupCombo;
    edtBudgetOrderItemCode: TDBEdit;
    frBndBOIOrderProduct: TfrProductFieldEditFrameBald;
    lblBOIOrderCode: TLabel;
    edtBOIOrderCode: TDBEdit;
    frFinClass: TfrFinClassFieldEditFrame;
    Label1: TLabel;
    frDocumentDateInterval: TfrDateIntervalFrame;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    dsBranches: TDataSource;
    frBndBOIOrderBudgetProduct: TfrProductFieldEditFrameBald;
    lblBndBOIOrderBudgetProduct: TLabel;
    frCompanyFilter: TfrCompanyFilter;
    gbInOut: TGroupBox;
    cbInOut: TJvDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure alActionsUpdate(Action: TBasicAction; var Handled: Boolean);
  private
    { Private declarations }
  protected
    function GetDBFrameReadOnly(AFrame: TDBFrame): Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uUtils, uComboBoxUtils,  // reda na tezi dwete e wajen, zaradi TWinControlHelper
  uFinanceClientUtils, fEditForm, uClientUtils, uProcesses, uProducts,
  uProductClientUtils;

{$R *.dfm}

procedure TfmFinOrdersFilter.alActionsUpdate(Action: TBasicAction;
  var Handled: Boolean);
var
  FinProcessCode: Integer;
  ProductClass: TProductClass;
begin
  inherited;

  FinProcessCode:= dsData.DataSet.FieldByName('FIN_PROCESS_CODE').AsInteger;

  pnlBndSale.Visible:=
    (FinProcessCode in [pFinPrdUobZd, pFinPrdFOb]);
  pnlBndDelivery.Visible:=
    (FinProcessCode in [pFinDstUOb, pFinDstFOb]);
  pnlBndGroupSale.Visible:=
    (FinProcessCode = pFinPrdUobNl);
  pnlBndBOIOrder.Visible:=
    (FinProcessCode = pFinDstPrc);

  if (FinProcessCode = pFinPrdFOb) then
    lblBndSaleProduct.Caption:= SProductClassNameFinancial
  else
    lblBndSaleProduct.Caption:= SProductClassNameNormal;

  if (FinProcessCode = pFinDstFOb) then
    lblBndDeliveryProduct.Caption:= SProductClassNameFinancial
  else
    lblBndDeliveryProduct.Caption:= SProductClassNameNormal;

  if (FinProcessCode in [pFinPrdFOb, pFinDstFOb]) then
    ProductClass:= pcFinancial
  else
    ProductClass:= pcNormal;

  frBndSaleProduct.ProductClass:= ProductClass;
  frBndDeliveryProduct.ProductClass:= ProductClass;
end;

procedure TfmFinOrdersFilter.CloseDataSets;
begin
  inherited;
  cdsBranches.Close;
end;

procedure TfmFinOrdersFilter.FormCreate(Sender: TObject);
begin
  inherited;

  frMovementDateInterval.FieldNames:= 'BEGIN_MOVEMENT_DATE; END_MOVEMENT_DATE';
  frExecDept.FieldNames:= 'EXEC_DEPT_CODE';
  frWorkFinancialProduct.FieldNames:= 'WORK_FINANCIAL_PRODUCT_CODE';
  frWorkFinancialProduct.ProductClass:= pcFinancial;
  frCompanyFilter.FieldNames:= 'CHOSEN_COMPANIES';
  frBaseDateInterval.FieldNames:= 'BEGIN_BASE_DATE; END_BASE_DATE';
  frBndSaleProduct.FieldNames:= 'BND_PRODUCT_CODE';
  frBndDeliveryProduct.FieldNames:= 'BND_PRODUCT_CODE';
  frBndBOIOrderProduct.FieldNames:= 'BND_PRODUCT_CODE';
  frBndBOIOrderProduct.VIMButtonVisible:= False;
  frBndBOIOrderBudgetProduct.FieldNames:= 'BND_BUDGET_PRODUCT_CODE';
  frBndBOIOrderBudgetProduct.ProductClass:= pcBudget;
  frBndBOIOrderBudgetProduct.VIMButtonVisible:= False;
  frDocumentDateInterval.FieldNames:= 'DOCUMENT_BEGIN_DATE; DOCUMENT_END_DATE';

  InitializeComboBoxWithFinOrderStates(cbMinFinOrderState, True);
  InitializeComboBoxWithFinOrderStates(cbMaxFinOrderState, True);
end;

procedure TfmFinOrdersFilter.OpenDataSets;
begin
  cdsBranches.Open;
  inherited;
end;

function TfmFinOrdersFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if (AWinControl = edtDocumentIdentifier) and
     (ReplacedDBComboBox(cbFinStatus).XItemIndex <> 2) then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

function TfmFinOrdersFilter.GetDBFrameReadOnly(AFrame: TDBFrame): Boolean;
begin
  if (AFrame = frDocumentDateInterval) and
     (ReplacedDBComboBox(cbFinStatus).XItemIndex <> 2) then
    Exit(True);

  Result:= inherited GetDBFrameReadOnly(AFrame);
end;

procedure TfmFinOrdersFilter.Initialize;
begin
  inherited;
  SetLookupComboBoxDisplayFields(cbFinProcess, 'PROCESS_ABBREV;PROCESS_NAME', 400)
end;

end.
