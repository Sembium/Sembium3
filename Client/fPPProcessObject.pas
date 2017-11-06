unit fPPProcessObject;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fProcessObjectFrame, ParamDataSet, Db, DBClient, ImgList,
  ActnList, StdCtrls, Mask, DBCtrls, JvDBLookup, AbmesClientDataSet, AbmesFields,
  AbmesDBCheckBox, JvExControls, JvComponent, uProducts, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fProductFieldEditFrameBald, System.Actions;

type
  TfrPPProcessObject = class(TProcessObjectFrame)
    cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    lblBranch: TLabel;
    cbBranch: TJvDBLookupCombo;
    lblPPNo: TLabel;
    edtPPNo: TDBEdit;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsProcessObjectParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsSALE_NO: TAbmesFloatField;
    pdsProcessObjectParams_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsProcessObjectCustomIDSALE_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDSALE_NO: TAbmesFloatField;
    btnShowProcessObjectForm: TButton;
    cdsProcessObjectCustomIDSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDSALE_OBJECT_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsProcessObjectCustomIDPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsProcessObjectCustomIDIS_WASTE_COMPENSATOR: TAbmesFloatField;
    pdsProcessObjectParamsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsSALE_OBJECT_CODE: TAbmesFloatField;
    pdsProcessObjectParamsSALE_TYPE_ABBREV: TAbmesWideStringField;
    pdsProcessObjectParamsPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    pdsProcessObjectParamsIS_WASTE_COMPENSATOR: TAbmesFloatField;
    lblSaleTypeAbbrev: TLabel;
    edtSaleTypeAbbrev: TDBEdit;
    lblIsWasteCompensator: TLabel;
    edtIsWasteCompensator: TDBEdit;
    edtProductionOrderTypeAbbrev: TDBEdit;
    lblProductionOrderTypeAbbrev: TLabel;
    cdsProcessObjectCustomIDSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    pdsProcessObjectParamsSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDPROJECT_PRODUCT_CODE: TAbmesFloatField;
    pdsProcessObjectParamsPROJECT_PRODUCT_CODE: TAbmesFloatField;
    frProjectProduct: TfrProductFieldEditFrameBald;
    lblProjectProduct: TLabel;
    cdsProcessObjectCustomIDHAS_MATERIAL_LIST: TAbmesFloatField;
    pdsProcessObjectParamsHAS_MATERIAL_LIST: TAbmesFloatField;
    procedure cbBranchExit(Sender: TObject);
    procedure cdsProcessObjectCustomIDAfterOpen(DataSet: TDataSet);
  private
    FProductClass: TProductClass;
  protected
    procedure NewReadOnlySet; override;
    procedure SetFocusOnError; override;
    function ProcessObjectName: string; override;
    procedure ShowProcessObjectForm; override;
  public
    property ProductClass: TProductClass read FProductClass write FProductClass;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure HideFrame; override;
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  Variants, dMain, uUtils, fProductionOrder, uClientTypes, uSaleOrderTypes,
  fSale;

{$R *.DFM}

resourcestring
  SPP = 'Ордер за Процес Вътрешен';

{ TfrPPProcessObject }

procedure TfrPPProcessObject.OpenDataSets;
begin
  cdsBranches.Open;
  inherited;
end;

procedure TfrPPProcessObject.cdsProcessObjectCustomIDAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  CheckEditMode(pdsProcessObjectParams);
  AssignFields(DataSet, pdsProcessObjectParams);
end;

procedure TfrPPProcessObject.CloseDataSets;
begin
  inherited;
  cdsBranches.Close;
end;

procedure TfrPPProcessObject.SetFocusOnError;
begin
  edtPPNo.SetFocus;
end;

procedure TfrPPProcessObject.cbBranchExit(Sender: TObject);
begin
  inherited;
  if VarIsNull(cbBranch.KeyValue) then
    pdsProcessObjectParamsSALE_BRANCH_CODE.Clear;
end;

function TfrPPProcessObject.ProcessObjectName: string;
begin
  Result:= SPP;
end;

procedure TfrPPProcessObject.HideFrame;
begin
  actClearFieldValues.Execute;
  inherited;
end;

procedure TfrPPProcessObject.NewReadOnlySet;
begin
  inherited;
  cbBranch.ReadOnly:= ReadOnly;
  edtPPNo.ReadOnly:= ReadOnly;
end;

constructor TfrPPProcessObject.Create(AOwner: TComponent);
begin
  inherited;
  frProjectProduct.FieldNames:= 'PROJECT_PRODUCT_CODE';
  frProjectProduct.SetDataSet(pdsProcessObjectParams);
  frProjectProduct.VIMButtonVisible:= False;
  frProjectProduct.DocButtonVisible:= False;
  frProjectProduct.ReadOnly:= True;
end;

procedure TfrPPProcessObject.ShowProcessObjectForm;
begin
  inherited;
  if (pdsProcessObjectParamsSALE_ORDER_TYPE_CODE.AsInteger = sotProductionOrder) then
    TfmProductionOrder.ShowForm(dmDocClient, pdsProcessObjectParams, emReadOnly)
  else
    TfmSale.ShowForm(dmDocClient, pdsProcessObjectParams, emReadOnly, 0);
end;

end.
