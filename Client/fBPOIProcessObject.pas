unit fBPOIProcessObject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fProcessObjectFrame, ParamDataSet, DB, DBClient,
  AbmesClientDataSet, ActnList, AbmesFields, StdCtrls, Mask, DBCtrls,
  JvDBLookup, JvExControls, JvComponent, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, fProductFieldEditFrameBald,
  System.Actions;

type
  TfrBPOIProcessObject = class(TProcessObjectFrame)
    lblBudgetOrderBrachIdentifier: TLabel;
    cbBudgetOrderBrachIdentifier: TJvDBLookupCombo;
    lblBudgerOrderCode: TLabel;
    edtBudgerOrderCode: TDBEdit;
    lblBudgetOrderItemCode: TLabel;
    edtBudgetOrderItemCode: TDBEdit;
    lblBudgetProductOrderItemNo: TLabel;
    edtBudgetProductOrderItemNo: TDBEdit;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    pdsProcessObjectParamsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsBUDGET_ORDER_CODE: TAbmesFloatField;
    pdsProcessObjectParamsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    dsBranches: TDataSource;
    cdsProcessObjectCustomIDBOI_ORDER_CODE: TAbmesFloatField;
    pdsProcessObjectParamsBOI_ORDER_CODE: TAbmesFloatField;
    btnShowProcessObjectForm: TButton;
    cdsProcessObjectCustomIDBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    pdsProcessObjectParamsBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    lblSaleDealTypeAbbrev: TLabel;
    edtSaleDealTypeAbbrev: TDBEdit;
    cdsProcessObjectCustomIDBUDGET_ORDER_CLASS_ABBREV: TAbmesWideStringField;
    pdsProcessObjectParamsBUDGET_ORDER_CLASS_ABBREV: TAbmesWideStringField;
    cdsProcessObjectCustomIDBUDGET_ORDER_PRODUCT_CODE: TAbmesFloatField;
    edtBudgetOrderItemTypeAbbrev: TDBEdit;
    lblBudgetOrderItemTypeAbbrev: TLabel;
    pdsProcessObjectParamsBUDGET_ORDER_PRODUCT_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField;
    pdsProcessObjectParamsBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField;
    frBudgetOrderProduct: TfrProductFieldEditFrameBald;
    lblBudgetOrderProduct: TLabel;
    cdsProcessObjectIDBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDBUDGET_ORDER_CLASS_CODE: TAbmesFloatField;
    pdsProcessObjectParamsBUDGET_ORDER_CLASS_CODE: TAbmesFloatField;
  private
    { Private declarations }
  protected
    procedure NewReadOnlySet; override;
    procedure SetFocusOnError; override;
    function ProcessObjectName: string; override;
    procedure ShowProcessObjectForm; override;
    procedure ValidateProcessObject; override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  dMain, uClientTypes, fBOICompanyOrder, fBOIProductOrder,
  fBOIWasteOrder, uBudgetClientUtils, uBOIOrderTypes, fBOIMarkingOrder;

resourcestring
  SBPOIObject = 'Ордер по Лимит от Бордеро за Среда';
  SBOIOrderTypeMustBeProduct = 'Избраният Ордер трябва да бъде Предметен';

{$R *.dfm}

{ TfrBPOIProcessObject }

procedure TfrBPOIProcessObject.CloseDataSets;
begin
  inherited;
  cdsBranches.Close;
end;

constructor TfrBPOIProcessObject.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  frBudgetOrderProduct.FieldNames:= 'BUDGET_ORDER_PRODUCT_CODE';
  frBudgetOrderProduct.VIMButtonVisible:= False;
  frBudgetOrderProduct.ReadOnly:= True;
end;

procedure TfrBPOIProcessObject.NewReadOnlySet;
begin
  inherited;
  cbBudgetOrderBrachIdentifier.ReadOnly:= ReadOnly;
  edtBudgerOrderCode.ReadOnly:= ReadOnly;
  edtBudgetOrderItemCode.ReadOnly:= ReadOnly;
  edtBudgetProductOrderItemNo.ReadOnly:= ReadOnly;
end;

procedure TfrBPOIProcessObject.OpenDataSets;
begin
  cdsBranches.Open;
  inherited;
end;

function TfrBPOIProcessObject.ProcessObjectName: string;
begin
  Result:= SBPOIObject;
end;

procedure TfrBPOIProcessObject.SetFocusOnError;
begin
  edtBudgerOrderCode.SetFocus;
end;

procedure TfrBPOIProcessObject.ShowProcessObjectForm;
var
  BudgetMode: TBudgetMode;
begin
  inherited;
  BudgetMode:= IntToBudgetMode(pdsProcessObjectParamsBUDGET_ORDER_CLASS_CODE.AsInteger);
  case pdsProcessObjectParamsBOI_ORDER_TYPE_CODE.AsInteger of
    boiotCompany: TfmBOICompanyOrder.ShowForm(dmDocClient, pdsProcessObjectParams, emReadOnly, doNone, BudgetMode);
    boiotProduct: TfmBOIProductOrder.ShowForm(dmDocClient, pdsProcessObjectParams, emReadOnly, doNone, BudgetMode);
    boiotWaste: TfmBOIWasteOrder.ShowForm(dmDocClient, pdsProcessObjectParams, emReadOnly, doNone, BudgetMode);
    boiotMarking: TfmBOIMarkingOrder.ShowForm(dmDocClient, pdsProcessObjectParams, emReadOnly, doNone, BudgetMode);
  end;
end;

procedure TfrBPOIProcessObject.ValidateProcessObject;
begin
  inherited ValidateProcessObject;
  if (cdsProcessObjectIDBOI_ORDER_TYPE_CODE.AsInteger <> boiotProduct) then
    ProcessObjectError(SBOIOrderTypeMustBeProduct);
end;

end.

 
