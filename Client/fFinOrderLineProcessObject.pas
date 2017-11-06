unit fFinOrderLineProcessObject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, StdCtrls, JvExControls, JvDBLookup,
  DBClient, AbmesClientDataSet, Mask, DBCtrls, fProcessObjectFrame, ParamDataSet,
  fBaseFrame, fDBFrame, fPartnerFieldEditFrame, fPartnerFieldEditFrameBald,
  fDateFieldEditFrame, AbmesFields, ExtCtrls, System.Actions;

type
  TfrFinOrderLineProcessObject = class(TProcessObjectFrame)
    dsBranches: TDataSource;
    cdsBranches: TAbmesClientDataSet;
    btnShowProcessObjectForm: TButton;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesNAME: TAbmesWideStringField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    pnlFinProcessID: TPanel;
    lblBranch: TLabel;
    cbBranch: TJvDBLookupCombo;
    lblFinOrderNo: TLabel;
    edtFinOrderNo: TDBEdit;
    pnlPartner: TPanel;
    lblPartnerCode: TLabel;
    frPartner: TfrPartnerFieldEditFrameBald;
    pnlBaseDateAndFinStatus: TPanel;
    lblBorderProcessObjectBaseDate: TLabel;
    lblFinStatus: TLabel;
    frBorderProcessObjectBaseDate: TfrDateFieldEditFrame;
    edtFinStatus: TDBEdit;
    cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDFIN_ORDER_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDFIN_ORDER_NO: TAbmesFloatField;
    cdsProcessObjectCustomIDFIN_MODEL_LINE_NO: TAbmesFloatField;
    cdsProcessObjectCustomIDPARTNER_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDBASE_DATE: TAbmesSQLTimeStampField;
    cdsProcessObjectCustomIDHAS_DOCUMENT: TAbmesFloatField;
    cdsProcessObjectCustomIDDOCUMENT_IDENTIFIER: TAbmesWideStringField;
    cdsProcessObjectCustomIDSALE_ID: TAbmesWideStringField;
    cdsProcessObjectCustomIDDELIVERY_ID: TAbmesWideStringField;
    pdsProcessObjectParamsFIN_ORDER_CODE: TAbmesFloatField;
    pdsProcessObjectParamsFIN_ORDER_NO: TAbmesFloatField;
    pdsProcessObjectParamsFIN_MODEL_LINE_NO: TAbmesFloatField;
    pdsProcessObjectParamsPARTNER_CODE: TAbmesFloatField;
    pdsProcessObjectParamsBASE_DATE: TAbmesSQLTimeStampField;
    pdsProcessObjectParamsHAS_DOCUMENT: TAbmesFloatField;
    pdsProcessObjectParamsDOCUMENT_IDENTIFIER: TAbmesWideStringField;
    pdsProcessObjectParamsSALE_ID: TAbmesWideStringField;
    pdsProcessObjectParamsDELIVERY_ID: TAbmesWideStringField;
    cdsProcessObjectCustomIDFIN_ORDER_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsFIN_ORDER_BRANCH_CODE: TAbmesFloatField;
    dsFinModelLineTypes: TDataSource;
    cdsFinModelLineTypes: TAbmesClientDataSet;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NO: TAbmesFloatField;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NAME: TAbmesWideStringField;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField;
    lblFinModelLineTypeOnFinOrderAdminPanel: TLabel;
    cbFinModelLineType: TJvDBLookupCombo;
    edtFinModelLineNo: TDBEdit;
    pnlFinOrderBndObject: TPanel;
    pnlSale: TPanel;
    lblSaleID: TLabel;
    edtSaleID: TDBEdit;
    pnlDelivery: TPanel;
    lblDeliveryID: TLabel;
    edtDeliveryID: TDBEdit;
    pnlProcessDelivery: TPanel;
    lblProcessID: TLabel;
    edtProcessID: TDBEdit;
    pdsProcessObjectParamsFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    pnlDocument: TPanel;
    lblShowProcessObjectForm: TLabel;
    edtDocumentIdentifier: TDBEdit;
    pnlInvoiceNo: TPanel;
    lblInvoiceNo: TLabel;
    edtInvoiceNo: TDBEdit;
    cdsProcessObjectCustomIDFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDRFML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDRFML_OBJECT_CODE: TAbmesFloatField;
    pdsProcessObjectParamsRFML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsRFML_OBJECT_CODE: TAbmesFloatField;
    procedure actFrameUpdate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure NewReadOnlySet; override;
    procedure SetFocusOnError; override;
    function ProcessObjectName: string; override;
    procedure ShowProcessObjectForm; override;
  public
    procedure Initialize; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses dMain, uProcesses, fFinOrder, uClientTypes;

{$R *.dfm}

resourcestring
  SFinOrder = 'Активиран Финансов Ордер';

{ TfrFinOrderProcess }

procedure TfrFinOrderLineProcessObject.actFrameUpdate(Sender: TObject);
var
  BndProcess: Integer;
begin
  inherited;
  
  BndProcess:= dsData.DataSet.FieldByName('BND_PROCESS_CODE').AsInteger;
  pnlPartner.Visible:= BndProcess in [pFinPrdUobZd, pFinPrdUobNl, pFinDstUOb, pFinPrdFOb, pFinDstFOb, pFinDstPrc, pFinAdm];
  pnlInvoiceNo.Visible:= BndProcess in [pFinPrdUobZd, pFinPrdUobNl, pFinPrdFOb, pFinDstUOb, pFinDstFOb, pFinDstPrc, pFinAdm];
  pnlDocument.Visible:= BndProcess in [pFinVtrRF, pFinVtrOF];
  pnlSale.Visible:= BndProcess in [pFinPrdUobZd, pFinPrdUobNl, pFinPrdFOb];
  pnlDelivery.Visible:= BndProcess in [pFinDstUOb, pFinDstFOb];
  pnlProcessDelivery.Visible:= BndProcess in [pFinDstPrc];
  
  frPartner.ReadOnly:= True;
  frBorderProcessObjectBaseDate.ReadOnly:= True;
end;

procedure TfrFinOrderLineProcessObject.CloseDataSets;
begin
  cdsFinModelLineTypes.Close;
  cdsBranches.Close;
  inherited;
end;

procedure TfrFinOrderLineProcessObject.Initialize;
begin
  inherited Initialize;
  frPartner.FieldNames:= 'PARTNER_CODE';
  frPartner.DocButtonVisible:= False;
  frBorderProcessObjectBaseDate.FieldNames:= 'BASE_DATE';
end;

procedure TfrFinOrderLineProcessObject.NewReadOnlySet;
begin
  inherited;
  cbBranch.ReadOnly:= ReadOnly;
  edtFinOrderNo.ReadOnly:= ReadOnly;
  cbFinModelLineType.ReadOnly:= ReadOnly;
  edtFinModelLineNo.ReadOnly:= ReadOnly;
end;

procedure TfrFinOrderLineProcessObject.OpenDataSets;
begin
  inherited;
  cdsBranches.Open;
  cdsFinModelLineTypes.Open;
end;

function TfrFinOrderLineProcessObject.ProcessObjectName: string;
begin
  Result:= SFinOrder;
end;

procedure TfrFinOrderLineProcessObject.SetFocusOnError;
begin
  inherited;
  cbBranch.SetFocus;
end;

procedure TfrFinOrderLineProcessObject.ShowProcessObjectForm;
begin
  inherited;
  TfmFinOrder.ShowForm(nil, pdsProcessObjectParams, emReadOnly, doNone, True, True,
    pdsProcessObjectParamsRFML_OBJECT_BRANCH_CODE.AsInteger, pdsProcessObjectParamsRFML_OBJECT_CODE.AsInteger);
end;

end.
