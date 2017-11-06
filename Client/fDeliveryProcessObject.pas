unit fDeliveryProcessObject;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fProcessObjectFrame, ParamDataSet, Db, DBClient, ImgList,
  ActnList, StdCtrls, Mask, DBCtrls, JvDBLookup, AbmesClientDataSet, AbmesFields,
  AbmesDBCheckBox, JvToolEdit, JvDBControls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateFieldEditFrame, JvExControls, JvComponent, JvExStdCtrls,
  JvDBCombobox, fPartnerFieldEditFrame, fPartnerFieldEditFrameBald, uProducts,
  System.Actions;

type
  TfrDeliveryProcessObject = class(TProcessObjectFrame)
    cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsProcessObjectParams_BRANCH_IDENTIFIER: TAbmesWideStringField;
    cbBranch: TJvDBLookupCombo;
    lblBranch: TLabel;
    lblRPDNo: TLabel;
    edtRPDNo: TDBEdit;
    lblDeliveryProjectCode: TLabel;
    edtDeliveryProjectCode: TDBEdit;
    pdsProcessObjectParamsDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDDELIVERY_PROJECT_CODE: TAbmesFloatField;
    pdsProcessObjectParamsDCD_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsDCD_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDDCD_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDDCD_CODE: TAbmesFloatField;
    lblInvoiceNo: TLabel;
    edtInvoiceNo: TDBEdit;
    edtInvoiceAbbrev: TDBEdit;
    lblInvoiceDate: TLabel;
    frInvoiceDate: TfrDateFieldEditFrame;
    cdsProcessObjectCustomIDDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    pdsProcessObjectParamsDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    lblSaleDealTypeAbbrev: TLabel;
    edtSaleDealTypeAbbrev: TDBEdit;
    btnShowProcessObjectForm: TButton;
    cdsProcessObjectCustomIDDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProcessObjectCustomIDDCD_OBJECT_CODE: TAbmesFloatField;
    pdsProcessObjectParamsDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    pdsProcessObjectParamsDCD_OBJECT_CODE: TAbmesFloatField;
    lblIsProformInvoiceStatusOnDeliveryPanel: TLabel;
    lblVendorName: TLabel;
    cdsProcessObjectCustomIDVENDOR_COMPANY_NAME: TAbmesWideStringField;
    pdsProcessObjectParamsVENDOR_COMPANY_NAME: TAbmesWideStringField;
    edtVendorName: TDBEdit;
    cdsProcessObjectCustomIDINVOICE_NO: TAbmesFloatField;
    cdsProcessObjectCustomIDINVOICE_ABBREV: TAbmesWideStringField;
    cdsProcessObjectCustomIDIS_PROFORM_INVOICE: TAbmesFloatField;
    cdsProcessObjectCustomIDINVOICE_DATE: TAbmesSQLTimeStampField;
    pdsProcessObjectParamsINVOICE_NO: TAbmesFloatField;
    pdsProcessObjectParamsINVOICE_ABBREV: TAbmesWideStringField;
    pdsProcessObjectParamsIS_PROFORM_INVOICE: TAbmesFloatField;
    pdsProcessObjectParamsINVOICE_DATE: TAbmesSQLTimeStampField;
    edtIsProformInvoice: TDBEdit;
    edtDeliveryCode: TDBEdit;
    lblDeliveryCode: TLabel;
    cdsProcessObjectCustomIDDELIVERY_TYPE_ABBREV: TAbmesWideStringField;
    pdsProcessObjectParamsDELIVERY_TYPE_ABBREV: TAbmesWideStringField;
    procedure cbBranchChange(Sender: TObject);
    procedure edtRPDNoChange(Sender: TObject);
    procedure actFrameUpdate(Sender: TObject);
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
    procedure ShowFrame; override;
    procedure HideFrame; override;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, fDelivery, uClientTypes, uClientUtils;

{$R *.DFM}

resourcestring
  SDelivery = 'Ордер за Процес Доставки';

{ TfrDeliveryProcessObject }

procedure TfrDeliveryProcessObject.OpenDataSets;
begin
  cdsBranches.Open;
  inherited;
end;

procedure TfrDeliveryProcessObject.CloseDataSets;
begin
  inherited;
  cdsBranches.Close;
end;

procedure TfrDeliveryProcessObject.SetFocusOnError;
begin
  edtRPDNo.SetFocus;
end;

procedure TfrDeliveryProcessObject.cbBranchChange(Sender: TObject);
begin
  inherited;
  FIsProcessObjectCustomIDChanged:= True;
end;

procedure TfrDeliveryProcessObject.edtRPDNoChange(Sender: TObject);
begin
  inherited;
  FIsProcessObjectCustomIDChanged:= True;
end;

function TfrDeliveryProcessObject.ProcessObjectName: string;
begin
  Result:= SDelivery;
end;

procedure TfrDeliveryProcessObject.HideFrame;
begin
  actClearFieldValues.Execute;
  inherited;
end;

procedure TfrDeliveryProcessObject.Initialize;
begin
  frInvoiceDate.FieldNames:= 'INVOICE_DATE';
  inherited;
end;

procedure TfrDeliveryProcessObject.NewReadOnlySet;
begin
  inherited;
  cbBranch.ReadOnly:= ReadOnly;
  edtRPDNo.ReadOnly:= ReadOnly;
  edtDeliveryProjectCode.ReadOnly:= ReadOnly;
  edtInvoiceNo.ReadOnly:= True;
  edtInvoiceAbbrev.ReadOnly:= True;
  edtIsProformInvoice.ReadOnly:= True;
  frInvoiceDate.ReadOnly:= True;
end;

procedure TfrDeliveryProcessObject.ShowFrame;
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

end;

procedure TfrDeliveryProcessObject.ShowProcessObjectForm;
begin
  inherited;
  TfmDelivery.ShowForm(dmDocClient, pdsProcessObjectParams, emReadOnly, doNone, nil, FProductClass);
end;

procedure TfrDeliveryProcessObject.actFrameUpdate(Sender: TObject);
begin
  inherited;
  frInvoiceDate.ReadOnly:= True;
  frInvoiceDate.actFrameUpdate(Sender);
  SetControlsReadOnly(ReadOnly, [cbBranch, edtRPDNo, edtDeliveryProjectCode]);
end;

end.
