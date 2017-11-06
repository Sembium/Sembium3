unit fVendorProductSignatures;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  GridsEh, JvDBLookup, fGridForm, ParamDataSet, JvDBControls,
  DBCtrls, ColorNavigator, AbmesClientDataSet, DBGridEh, AbmesDBGrid,
  AbmesFields, Menus, JvButtons, ComCtrls, ToolWin, fBaseFrame, fDBFrame,
  fFieldEditFrame, fPartnerFieldEditFrame, fBottomButtonGridForm,
  fPartnerFieldEditFrameBald, JvComponent, JvCaptionButton, JvComponentBase,
  Mask, fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fProductFieldEditFrameBald, uProducts;

type
  TfmVendorProductSignatures = class(TBottomButtonGridForm)
    pnlTopInner: TPanel;
    cdsGridDataCOMPANY_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;                                                   
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataNAME: TAbmesWideStringField;
    tlbTopButtons: TToolBar;
    sepProductDoc: TToolButton;
    cdsGridDataCOMPANY_NAME: TAbmesWideStringField;
    lblProductDoc: TLabel;
    pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    actProductDoc: TAction;
    btnProductDoc: TToolButton;
    sepCompanyDoc: TToolButton;
    lblCompanyDoc: TLabel;
    btnCompanyDoc: TToolButton;
    actCompanyDoc: TAction;
    cdsGridDataCOMPANY_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_DOC_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_HAS_DOC: TAbmesFloatField;
    cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_HAS_DOC: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParams_PRODUCT_NO: TAbmesFloatField;
    pdsGridDataParams_COMPANY_NAME: TAbmesWideStringField;
    pdsGridDataParams_PRODUCT_CODE: TAbmesFloatField;
    lblProduct: TLabel;
    lblCompanyName: TLabel;
    edtCompanyName: TDBEdit;
    pdsGridDataParams_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_NO: TAbmesFloatField;
    edtProductName: TDBEdit;
    edtProductNo: TDBEdit;
    edtCompanyNo: TDBEdit;
    pdsGridDataParams_COMPANY_NO: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataPRODUCT_CODEChange(Sender: TField);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure actProductDocUpdate(Sender: TObject);
    procedure actProductDocExecute(Sender: TObject);
    procedure actCompanyDocExecute(Sender: TObject);
    procedure actCompanyDocUpdate(Sender: TObject);
    procedure cdsGridDataCOMPANY_CODEChange(Sender: TField);
    procedure pdsGridDataParamsCHOSEN_COMPANIESChange(Sender: TField);
    procedure pdsGridDataParamsCHOSEN_PRODUCTSChange(Sender: TField);
    procedure pdsGridDataParams_PRODUCT_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure pdsGridDataParams_COMPANY_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    FProductClass: TProductClass;
  protected
    class function CanUseDocs: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uClientUtils, fVendorProductSignature, uClientTypes,
  uTreeClientUtils, uUtils, fVendorProductSignaturesFilter, uDocUtils,
  fBaseForm, uCompanyClientUtils, uXMLUtils, fDataForm,
  rVendorProductSignatures;

{$R *.DFM}

{ TfmVendorProductSignatures }

procedure TfmVendorProductSignatures.FormCreate(Sender: TObject);
begin
  inherited;
  FProductClass:= pcNormal;

  EditFormClass:= TfmVendorProductSignature;
  FilterFormClass:= TfmVendorProductSignaturesFilter;
  ReportClass:= TrptVendorProductSignatures;
end;

procedure TfmVendorProductSignatures.cdsGridDataPRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(cdsGridDataPRODUCT_CODE, cdsGridDataPRODUCT_NAME, cdsGridDataPRODUCT_NO);
end;

procedure TfmVendorProductSignatures.cdsGridDataCOMPANY_CODEChange(
  Sender: TField);
begin
  inherited;
  GetCompanyInfo(cdsGridDataCOMPANY_CODE, nil, nil, nil, nil, nil, nil, nil, cdsGridDataCOMPANY_NAME, nil, nil, nil, nil, nil, nil, nil, cdsGridDataCOMPANY_NO);
end;

procedure TfmVendorProductSignatures.cdsGridDataNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  if IsSingleChosenNodeWithoutParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
    cdsGridDataPRODUCT_CODE.AsInteger:= ChosenNodeXMLToNodeCode(pdsGridDataParamsCHOSEN_PRODUCTS.AsString);

  if IsSingleChosenCompany(pdsGridDataParamsCHOSEN_COMPANIES.AsString) then
    cdsGridDataCOMPANY_CODE.AsInteger:= SingleChosenCompanyCode(pdsGridDataParamsCHOSEN_COMPANIES.AsString);
end;

procedure TfmVendorProductSignatures.actProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:=
    cdsGridDataPRODUCT_HAS_DOC.AsInteger;

  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmVendorProductSignatures.actProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProduct,
    cdsGridDataPRODUCT_DOC_BRANCH_CODE,
    cdsGridDataPRODUCT_DOC_CODE);
end;

procedure TfmVendorProductSignatures.actCompanyDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:=
    cdsGridDataCOMPANY_HAS_DOC.AsInteger;

  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmVendorProductSignatures.actCompanyDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotCompany,
    cdsGridDataCOMPANY_DOC_BRANCH_CODE,
    cdsGridDataCOMPANY_DOC_CODE);
end;

class function TfmVendorProductSignatures.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmVendorProductSignatures.pdsGridDataParamsCHOSEN_COMPANIESChange(Sender: TField);
begin
  inherited;
  pdsGridDataParams_COMPANY_CODE.Clear;
  pdsGridDataParams_COMPANY_NO.Clear;
  pdsGridDataParams_COMPANY_NAME.Clear;

  if (pdsGridDataParamsCHOSEN_COMPANIES.AsString <> '') then
    if IsSingleChosenCompany(pdsGridDataParamsCHOSEN_COMPANIES.AsString) then
      begin
        pdsGridDataParams_COMPANY_CODE.AsInteger:= SingleChosenCompanyCode(pdsGridDataParamsCHOSEN_COMPANIES.AsString);
        GetCompanyInfo(
          pdsGridDataParams_COMPANY_CODE,
          nil, nil, nil, nil, nil, nil, nil,
          pdsGridDataParams_COMPANY_NAME,
          nil, nil, nil, nil, nil, nil, nil,
          pdsGridDataParams_COMPANY_NO);
      end
    else
      pdsGridDataParams_COMPANY_NAME.AsString:= CompaniesSet;
end;

procedure TfmVendorProductSignatures.pdsGridDataParamsCHOSEN_PRODUCTSChange(Sender: TField);
begin
  inherited;

  pdsGridDataParams_PRODUCT_CODE.Clear;
  pdsGridDataParams_PRODUCT_NO.Clear;
  pdsGridDataParams_PRODUCT_NAME.Clear;

  if HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
    if IsSingleChosenNodeWithoutParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
      begin
        pdsGridDataParams_PRODUCT_CODE.AsInteger:= ChosenNodeXMLToNodeCode(pdsGridDataParamsCHOSEN_PRODUCTS.AsString);
        DoProductFieldChanged(pdsGridDataParams_PRODUCT_CODE, pdsGridDataParams_PRODUCT_NAME, pdsGridDataParams_PRODUCT_NO);
      end
    else
      pdsGridDataParams_PRODUCT_NAME.AsString:= SProductsSet[FProductClass];
end;

procedure TfmVendorProductSignatures.pdsGridDataParams_COMPANY_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= SAllInBrackets
  else
    Text:= Sender.AsString;
end;

procedure TfmVendorProductSignatures.pdsGridDataParams_PRODUCT_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= SAllInBrackets
  else
    Text:= Sender.AsString;
end;

end.
