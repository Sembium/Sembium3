unit fDeficitCoverDecisionProcessObject;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFieldEditFrame, Db, ImgList, ActnList, fProcessObjectFrame,
  ParamDataSet, DBClient, AbmesClientDataSet, StdCtrls, Mask, DBCtrls,
  JvDBLookup, AbmesFields, JvExControls, JvComponent, uProducts, System.Actions;

type
  TfrDeficitCoverDecisionProcessObject = class(TProcessObjectFrame)
    lblBranch: TLabel;
    cbBranch: TJvDBLookupCombo;
    lblDCDNo: TLabel;
    edtDCDNo: TDBEdit;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    pdsProcessObjectParams_DCD_BRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsProcessObjectCustomIDDCD_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDDCD_CODE: TAbmesFloatField;
    pdsProcessObjectParamsDCD_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsDCD_CODE: TAbmesFloatField;
    btnShowProcessObjectForm: TButton;
    cdsProcessObjectCustomIDDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDDCD_OBJECT_CODE: TAbmesFloatField;
    pdsProcessObjectParamsDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsDCD_OBJECT_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    pdsProcessObjectParamsDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    lblDeliveryDealTypeAbbrev: TLabel;
    edtDeliveryDealTypeAbbrev: TDBEdit;
  private
    FProductClass: TProductClass;
  protected
    procedure NewReadOnlySet; override;
    function ProcessObjectName: string; override;
    procedure ShowProcessObjectForm; override;
  public
    property ProductClass: TProductClass read FProductClass write FProductClass;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses dMain, fDeficitCoverDecision, uClientTypes, uProductionOrderTypes;

{$R *.DFM}
resourcestring
  SDCD = 'Решение за Покриване на Дефицит';

{ TfrDeficitCoverDecisionProcessObject }

procedure TfrDeficitCoverDecisionProcessObject.CloseDataSets;
begin
  inherited;
  cdsBranches.Close;
end;

procedure TfrDeficitCoverDecisionProcessObject.NewReadOnlySet;
begin
  inherited;
  cbBranch.ReadOnly:= ReadOnly;
  edtDCDNo.ReadOnly:= ReadOnly;
end;

procedure TfrDeficitCoverDecisionProcessObject.OpenDataSets;
begin
  inherited;
  cdsBranches.Open;
end;

function TfrDeficitCoverDecisionProcessObject.ProcessObjectName: string;
begin
  Result:= SDCD;
end;

procedure TfrDeficitCoverDecisionProcessObject.ShowProcessObjectForm;
begin
  inherited;
  TfmDeficitCoverDecision.ShowForm(
    dmDocClient, pdsProcessObjectParams, emReadOnly, False, doNone, pobtSaleCover, ProductClass);
end;

end.
