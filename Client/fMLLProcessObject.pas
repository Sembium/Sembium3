unit fMLLProcessObject;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fProcessObjectFrame, Db, ImgList, ActnList, DBClient, StdCtrls, DBCtrls,
  ParamDataSet, Mask, JvDBLookup, AbmesClientDataSet, AbmesFields,
  AbmesDBCheckBox, JvExControls, JvComponent, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fProductFieldEditFrameBald, System.Actions;

type
  TfrMLLProcessObject = class(TProcessObjectFrame)
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    lblBranch: TLabel;
    lblPPNo: TLabel;
    edtPPNo: TDBEdit;
    edtNoAsText: TDBEdit;
    lblNoAsText: TLabel;
    cbBranch: TJvDBLookupCombo;
    cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    pdsProcessObjectParams_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsProcessObjectParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsSALE_NO: TAbmesFloatField;
    pdsProcessObjectParamsFORK_NO: TAbmesFloatField;
    edtForkNo: TDBEdit;
    cdsProcessObjectCustomIDSALE_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDSALE_NO: TAbmesFloatField;
    cdsProcessObjectCustomIDFORK_NO: TAbmesFloatField;
    cdsProcessObjectCustomIDMAIN_DEPT_NAME: TAbmesWideStringField;
    pdsProcessObjectParamsMAIN_DEPT_NAME: TAbmesWideStringField;
    cdsProcessObjectCustomIDANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    pdsProcessObjectParamsNO_AS_TEXT: TAbmesWideStringField;
    lblForkNo: TLabel;
    cdsProcessObjectCustomIDNO_AS_TEXT: TAbmesWideStringField;
    btnShowProcessObjectForm: TButton;
    lblProductionOrderTypeAbbrev: TLabel;
    edtProductionOrderTypeAbbrev: TDBEdit;
    lblSaleTypeAbbrev: TLabel;
    edtSaleTypeAbbrev: TDBEdit;
    lblIsWasteCompensator: TLabel;
    edtIsWasteCompensator: TDBEdit;
    cdsProcessObjectCustomIDSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsProcessObjectCustomIDPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsProcessObjectCustomIDIS_WASTE_COMPENSATOR: TAbmesFloatField;
    cdsProcessObjectCustomIDML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDML_OBJECT_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDMLL_OBJECT_CODE: TAbmesFloatField;
    pdsProcessObjectParamsSALE_TYPE_ABBREV: TAbmesWideStringField;
    pdsProcessObjectParamsPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    pdsProcessObjectParamsIS_WASTE_COMPENSATOR: TAbmesFloatField;
    pdsProcessObjectParamsML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsML_OBJECT_CODE: TAbmesFloatField;
    pdsProcessObjectParamsMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsMLL_OBJECT_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDIS_WASTE_FORK: TAbmesFloatField;
    edtIsWasteFork: TDBEdit;
    pdsProcessObjectParamsIS_WASTE_FORK: TAbmesFloatField;
    cdsProcessObjectCustomIDPROJECT_PRODUCT_CODE: TAbmesFloatField;
    pdsProcessObjectParamsPROJECT_PRODUCT_CODE: TAbmesFloatField;
    lblProjectProduct: TLabel;
    frProjectProduct: TfrProductFieldEditFrameBald;
    procedure cbBranchExit(Sender: TObject);
    procedure cbBranchChange(Sender: TObject);
    procedure pdsProcessObjectParamsNO_AS_TEXTValidate(Sender: TField);
    procedure pdsProcessObjectParamsBeforePost(DataSet: TDataSet);
    procedure cdsProcessObjectIDBeforeOpen(DataSet: TDataSet);
  private
    FCheckMLLHasProduct: Boolean;
    FCheckMLIsActivated: Boolean;
  protected
    procedure NewReadOnlySet; override;
    procedure SetFocusOnError; override;
    function ProcessObjectName: string; override;
    procedure ShowProcessObjectForm; override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure HideFrame; override;
    constructor Create(AOwner: TComponent); override;
    property CheckMLLHasProduct: Boolean read FCheckMLLHasProduct write FCheckMLLHasProduct;
    property CheckMLIsActivated: Boolean read FCheckMLIsActivated write FCheckMLIsActivated;
  end;

implementation

uses
  Variants, dMain, uUtils, uClientUtils, fXModel, uClientTypes;

{$R *.DFM}

resourcestring
  SMLL = 'Ред от Активиран Р-МОДЕл по Ордер за Процес Вътрешен';

{ TfrMLLProcessObject }

constructor TfrMLLProcessObject.Create(AOwner: TComponent);
begin
  inherited;
  FCheckMLLHasProduct:= True;
  FCheckMLIsActivated:= True;
  frProjectProduct.FieldNames:= 'PROJECT_PRODUCT_CODE';
  frProjectProduct.SetDataSet(pdsProcessObjectParams);
  frProjectProduct.VIMButtonVisible:= False;
  frProjectProduct.DocButtonVisible:= False;
  frProjectProduct.ReadOnly:= True;
end;

procedure TfrMLLProcessObject.cbBranchExit(Sender: TObject);
begin
  inherited;
  if VarIsNull(cbBranch.KeyValue) then
    pdsProcessObjectParamsSALE_BRANCH_CODE.Clear;
end;

procedure TfrMLLProcessObject.cdsProcessObjectIDBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsProcessObjectID.Params.ParamByName('CHECK_MLL_HAS_PRODUCT').AsInteger:= Ord(CheckMLLHasProduct);
  cdsProcessObjectID.Params.ParamByName('CHECK_ML_IS_ACTIVATED').AsInteger:= Ord(CheckMLIsActivated);
end;

procedure TfrMLLProcessObject.SetFocusOnError;
begin
  edtPPNo.SetFocus;
end;

procedure TfrMLLProcessObject.OpenDataSets;
begin
  cdsBranches.Open;
  inherited;
end;

procedure TfrMLLProcessObject.CloseDataSets;
begin
  inherited;
  cdsBranches.Close;
end;

procedure TfrMLLProcessObject.cbBranchChange(Sender: TObject);
begin
  inherited;
  FIsProcessObjectCustomIDChanged:= True;
end;

function TfrMLLProcessObject.ProcessObjectName: string;
begin
  Result:= SMLL;
end;

procedure TfrMLLProcessObject.HideFrame;
begin
  actClearFieldValues.Execute;
  inherited;
end;

procedure TfrMLLProcessObject.ShowProcessObjectForm;
begin
  inherited;
  TfmXModel.ShowForm(dmDocClient, pdsProcessObjectParams, emReadOnly);
end;

procedure TfrMLLProcessObject.NewReadOnlySet;
begin
  inherited;
  cbBranch.ReadOnly:= ReadOnly;
  edtPPNo.ReadOnly:= ReadOnly;
  edtNoAsText.ReadOnly:= ReadOnly;
  edtForkNo.ReadOnly:= ReadOnly;
end;

procedure TfrMLLProcessObject.pdsProcessObjectParamsNO_AS_TEXTValidate(
  Sender: TField);
begin
  inherited;
  CheckNoAsTextField(Sender, True);
end;

procedure TfrMLLProcessObject.pdsProcessObjectParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  pdsProcessObjectParamsNO_AS_TEXT.AsString:=
    TrimNoAsText(pdsProcessObjectParamsNO_AS_TEXT.AsString);
end;

end.
