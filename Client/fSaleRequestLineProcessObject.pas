unit fSaleRequestLineProcessObject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fProcessObjectFrame, ParamDataSet, DB, DBClient, AbmesClientDataSet,
  ActnList, AbmesFields, StdCtrls, Mask, DBCtrls, JvExControls, JvDBLookup,
  Buttons, System.Actions;

type
  TfrSaleRequestLineProcessObject = class(TProcessObjectFrame)
    cbRequestBrachIdentifier: TJvDBLookupCombo;
    edtRequestNo: TDBEdit;
    lblRequestNo: TLabel;
    lblRequestBrachIdentifier: TLabel;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    dsBranches: TDataSource;
    cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    pdsProcessObjectParamsREQUEST_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsREQUEST_NO: TAbmesFloatField;
    pdsProcessObjectParamsREQUEST_LINE_NO: TAbmesFloatField;
    cdsProcessObjectCustomIDREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDREQUEST_NO: TAbmesFloatField;
    cdsProcessObjectCustomIDREQUEST_LINE_NO: TAbmesFloatField;
    edtRequestLineNo: TDBEdit;
    lblRequestLineNo: TLabel;
    lblSaleDealType: TLabel;
    cdsSaleDealTypes: TAbmesClientDataSet;
    cdsSaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsSaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    dsSaleDealTypes: TDataSource;
    edtSaleDealType: TDBEdit;
    pdsProcessObjectParamsSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    pdsProcessObjectParams_SALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsProcessObjectCustomIDSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    btnShowProcessObjectForm: TBitBtn;
    cdsProcessObjectCustomIDSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    pdsProcessObjectParamsSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDSALE_OBJECT_CODE: TAbmesFloatField;
    pdsProcessObjectParamsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsSALE_OBJECT_CODE: TAbmesFloatField;
  private
    { Private declarations }
  protected
    procedure NewReadOnlySet; override;
    procedure SetFocusOnError; override;
    function ProcessObjectName: string; override;
    procedure ShowProcessObjectForm; override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses
  fGroupSale, uClientTypes, uSaleOrderTypes, fSaleOrder, uProducts;

resourcestring
  SGroupSaleLineObjectName = 'Обособен Диалог с Клиент';

{$R *.dfm}

{ TfrGroupSaleProcessObject }

procedure TfrSaleRequestLineProcessObject.OpenDataSets;
begin
  cdsBranches.Open;
  cdsSaleDealTypes.Open;
  inherited;
end;

procedure TfrSaleRequestLineProcessObject.CloseDataSets;
begin
  cdsSaleDealTypes.Close;
  cdsBranches.Close;
  inherited;
end;

procedure TfrSaleRequestLineProcessObject.NewReadOnlySet;
begin
  inherited;
  cbRequestBrachIdentifier.ReadOnly:= ReadOnly;
  edtRequestNo.ReadOnly:= ReadOnly;
  edtRequestLineNo.ReadOnly:= ReadOnly;
end;

function TfrSaleRequestLineProcessObject.ProcessObjectName: string;
begin
  Result:= SGroupSaleLineObjectName;
end;

procedure TfrSaleRequestLineProcessObject.SetFocusOnError;
begin
  inherited;
  edtRequestNo.SetFocus;
end;

procedure TfrSaleRequestLineProcessObject.ShowProcessObjectForm;
begin
  inherited;
  case pdsProcessObjectParamsSALE_ORDER_TYPE_CODE.AsInteger of
    sotNormalSaleOrder:
      TfmSaleOrder.ShowForm(dmDocClient, pdsProcessObjectParams, emReadOnly, doNone, pcNormal);

    sotCurrentQuantity, sotFutureQuantity:
      TfmGroupSale.ShowForm(dmDocClient, pdsProcessObjectParams, emReadOnly, doNone, False);
  else
    raise Exception.CreateFmt('Unsupported sale order type code %d',
      [pdsProcessObjectParamsSALE_ORDER_TYPE_CODE.AsInteger]);
  end;  { case }
end;

end.
