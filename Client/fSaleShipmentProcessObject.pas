unit fSaleShipmentProcessObject;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fProcessObjectFrame, Db, ParamDataSet, DBClient, ImgList,
  ActnList, StdCtrls, Mask, DBCtrls, JvDBLookup, AbmesClientDataSet,
  AbmesFields, JvExControls, JvComponent, fBaseFrame, fDBFrame, fFieldEditFrame,
  fPartnerFieldEditFrame, fPartnerFieldEditFrameBald, uProducts, System.Actions;

type
  TfrSaleShipmentProcessObject = class(TProcessObjectFrame)
    cdsProcessObjectCustomIDSALE_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDSALE_NO: TAbmesFloatField;
    cdsProcessObjectCustomIDSALE_SHIPMENT_NO: TAbmesFloatField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    lblBranch: TLabel;
    cbBranch: TJvDBLookupCombo;
    lblPPNo: TLabel;
    edtPPNo: TDBEdit;
    lblShipmentNo: TLabel;
    edtShipmentNo: TDBEdit;
    cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    pdsProcessObjectParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsSALE_NO: TAbmesFloatField;
    pdsProcessObjectParamsSALE_SHIPMENT_NO: TAbmesFloatField;
    dsBranches: TDataSource;
    btnShowProcessObjectForm: TButton;
    pdsProcessObjectParamsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsSALE_OBJECT_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDSALE_OBJECT_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsProcessObjectCustomIDSALE_TYPE_ABBREV: TAbmesWideStringField;
    pdsProcessObjectParamsSALE_TYPE_ABBREV: TAbmesWideStringField;
    pdsProcessObjectParamsSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    edtSaleDealTypeAbbrev: TDBEdit;
    lblSaleDealTypeAbbrev: TLabel;
    edtSaleTypeAbbrev: TDBEdit;
    lblSaleTypeAbbrev: TLabel;
    lblClientName: TLabel;
    cdsProcessObjectCustomIDCLIENT_COMPANY_NAME: TAbmesWideStringField;
    pdsProcessObjectParamsCLIENT_COMPANY_NAME: TAbmesWideStringField;
    edtClientName: TDBEdit;
    cdsProcessObjectCustomIDSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    pdsProcessObjectParamsSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDREQUEST_NO: TAbmesFloatField;
    cdsProcessObjectCustomIDREQUEST_LINE_NO: TAbmesFloatField;
    pdsProcessObjectParamsREQUEST_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsREQUEST_NO: TAbmesFloatField;
    pdsProcessObjectParamsREQUEST_LINE_NO: TAbmesFloatField;
    procedure actFrameUpdate(Sender: TObject);
  private
    FProductClass: TProductClass;
  protected
    procedure NewReadOnlySet; override;
    procedure SetFocusOnError; override;
    function ProcessObjectName: string; override;
    procedure ShowProcessObjectForm; override;
    function GetClearFieldEnabled: Boolean; override;
  public
    property ProductClass: TProductClass read FProductClass write FProductClass;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure HideFrame; override;
  end;

implementation

uses
  dMain, fSale, uClientTypes, uUtils, uSaleOrderTypes, fGroupSale, uClientUtils;

{$R *.DFM}

resourcestring
  SSaleShipment = 'Експедиция по Ордер за Процес Продажби';

{ TProcessObjectFrame1 }

procedure TfrSaleShipmentProcessObject.OpenDataSets;
begin
  cdsBranches.Open;
  inherited;
end;

procedure TfrSaleShipmentProcessObject.actFrameUpdate(Sender: TObject);
begin
  inherited;
  SetControlsReadOnly(ReadOnly, [cbBranch, edtPPNo, edtShipmentNo]);
end;

procedure TfrSaleShipmentProcessObject.CloseDataSets;
begin
  inherited;
  cdsBranches.Close;
end;

procedure TfrSaleShipmentProcessObject.SetFocusOnError;
begin
  edtShipmentNo.SetFocus;
end;

procedure TfrSaleShipmentProcessObject.ShowProcessObjectForm;
begin
  inherited;
  case pdsProcessObjectParamsSALE_ORDER_TYPE_CODE.AsInteger of
    sotNormalSaleOrder:
      TfmSale.ShowForm(dmDocClient, pdsProcessObjectParams, emReadOnly, 0);

    sotCurrentQuantity, sotFutureQuantity:
      TfmGroupSale.ShowForm(dmDocClient, pdsProcessObjectParams, emReadOnly, doNone, False);

  else
    raise Exception.CreateFmt('Unsupported sale order type code %d',
      [pdsProcessObjectParamsSALE_ORDER_TYPE_CODE.AsInteger]);
  end;  { case }
end;

function TfrSaleShipmentProcessObject.ProcessObjectName: string;
begin
  Result:= SSaleShipment;
end;

function TfrSaleShipmentProcessObject.GetClearFieldEnabled: Boolean;
begin
  Result:= inherited GetClearFieldEnabled and not ReadOnly;
end;

procedure TfrSaleShipmentProcessObject.HideFrame;
begin
  actClearFieldValues.Execute;
  inherited;
end;

procedure TfrSaleShipmentProcessObject.NewReadOnlySet;
begin
  inherited;
  cbBranch.ReadOnly:= ReadOnly;
  edtPPNo.ReadOnly:= ReadOnly;
  edtShipmentNo.ReadOnly:= ReadOnly;
end;

end.
