unit fSaleOrderProcessObject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fProcessObjectFrame, ParamDataSet, DB,
  DBClient, AbmesClientDataSet, ActnList, AbmesFields, StdCtrls, Mask,
  DBCtrls, JvExControls, JvComponent, JvDBLookup, System.Actions;

type
  TfrSaleOrderProcessObject = class(TProcessObjectFrame)
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDREQUEST_NO: TAbmesFloatField;
    cdsProcessObjectCustomIDREQUEST_LINE_NO: TAbmesFloatField;
    pdsProcessObjectParamsREQUEST_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsREQUEST_NO: TAbmesFloatField;
    pdsProcessObjectParamsREQUEST_LINE_NO: TAbmesFloatField;
    lblBranch: TLabel;
    cbBranch: TJvDBLookupCombo;
    lblNo: TLabel;
    edtNo: TDBEdit;
    lblLineNo: TLabel;
    edtLineNo: TDBEdit;
    pdsProcessObjectParams_REQUEST_BRANCH_IDENTIFIER: TAbmesWideStringField;
  private
    { Private declarations }
  protected
    procedure NewReadOnlySet; override;
    procedure SetFocusOnError; override;
    function ProcessObjectName: string; override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses dMain;

resourcestring
  SSaleOrder = 'Запитване';

{$R *.dfm}

{ TfrSaleOrderProcessObject }

procedure TfrSaleOrderProcessObject.CloseDataSets;
begin
  cdsBranches.Close;
  inherited;
end;

procedure TfrSaleOrderProcessObject.NewReadOnlySet;
begin
  inherited;
  cbBranch.ReadOnly:= ReadOnly;
  edtNo.ReadOnly:= ReadOnly;
  edtLineNo.ReadOnly:= ReadOnly;
end;

procedure TfrSaleOrderProcessObject.OpenDataSets;
begin
  inherited;
  cdsBranches.Open;
end;

function TfrSaleOrderProcessObject.ProcessObjectName: string;
begin
  Result:= SSaleOrder;
end;

procedure TfrSaleOrderProcessObject.SetFocusOnError;
begin
  inherited;
  edtNo.SetFocus;
end;

end.
 
 
