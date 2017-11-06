unit fParRelProductsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvComponent,
  JvDBLookup, Buttons, StdCtrls, ExtCtrls, fBaseFrame, fDBFrame, dDocClient,
  fFieldEditFrame, fDateIntervalFrame, DBCtrls, AbmesDBCheckBox, uClientTypes,
  uBorderRelTypes, uParRelProducts, fTreeNodeFilter, fProductFilter,
  fParamProductFilter, fCompanyFilter, JvExStdCtrls, JvDBCombobox, uProducts,
  fPriorityIntervalEditFrame, Mask, uProductionOrderTypes, JvCombobox;

type
  TfmParRelProductsFilter = class(TFilterForm)
    gbTop: TGroupBox;
    chkCalcReals: TAbmesDBCheckBox;
    cbInvestmentLevel: TJvDBLookupCombo;
    lblInvestmentLevel: TLabel;
    lblObtainmentType: TLabel;
    cbObtainmentType: TJvDBLookupCombo;
    frDateInterval: TfrDateIntervalFrame;
    lblDateInterval: TLabel;
    gbParRelProduct: TGroupBox;
    lblIsRegular: TLabel;
    cbIsRegular: TJvDBComboBox;
    cdsCompanyStatuses: TAbmesClientDataSet;
    cdsCompanyStatusesCOMPANY_STATUS_CODE: TAbmesFloatField;
    cdsCompanyStatusesCOMPANY_STATUS_NAME: TAbmesWideStringField;
    dsCompanyStatuses: TDataSource;
    cdsParRelProductStatuses: TAbmesClientDataSet;
    dsParRelProductStatuses: TDataSource;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    cbMinParRelProductStatus: TJvDBLookupCombo;
    lblBetweenParRelProductStatuses: TLabel;
    cbMaxParRelProductStatus: TJvDBLookupCombo;
    lblParRelProductStatus: TLabel;
    lblParRelProductStatusReach: TLabel;
    edtMinParRelProductStatusReachMonths: TDBEdit;
    lblBetweenParRelProductStatusReach: TLabel;
    edtMaxParRelProductStatusReachMonths: TDBEdit;
    lblParRelProductStatusReachMeasure: TLabel;
    lblParRelProductExistance: TLabel;
    edtMinParRelProductExistanceMonths: TDBEdit;
    lblBetweenParRelProductExistance: TLabel;
    edtMaxParRelProductExistanceMonths: TDBEdit;
    lblParRelProductExistanceMeasure: TLabel;
    pnlProduct: TPanel;
    pnlPartner: TPanel;
    frProductFilter: TfrParamProductFilter;
    frCompanyFilter: TfrCompanyFilter;
    gbPartnerStuff: TGroupBox;
    lblCompanyClass: TLabel;
    lblPriority: TLabel;
    lblBetweenCompanyStatuses: TLabel;
    lblCompanyStatus: TLabel;
    cbCompanyClass: TJvDBComboBox;
    frPriorityInterval: TfrPriorityIntervalEditFrame;
    cbMinCompanyStatusCode: TJvDBLookupCombo;
    cbMaxCompanyStatusCode: TJvDBLookupCombo;
    lblIsApprovedByPartner: TLabel;
    cbIsApprovedByPartner: TJvDBComboBox;
    gbProductCommonLevel: TGroupBox;
    cbProductCommonLevel: TJvDBComboBox;
    gbPartnerCommonLevel: TGroupBox;
    cbPartnerCommonLevel: TJvDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FBorderRelType: TBorderRelType;
    FBorderProdOrderBaseType: TBorderProdOrderBaseType;
    FParRelProductsOrientation: TParRelProductsOrientation;
    FParRelProductsKind: TParRelProductsKind;
    FParRelProductsStructurePartIncludeKind: TParRelProductsStructurePartIncludeKind;
    FParRelProductsDeptIncludeKind: TParRelProductsDeptIncludeKind;
    FIsForCommonProduct: Boolean;
    FOriginalFormCaption: string;
  protected
    function GetOriginalFormCaption: string; override;
    function GetFilterFormVariantCode: Integer; override;
  public
    procedure SetDataParams(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AProductClass: TProductClass;
      ABorderRelType: TBorderRelType;
      ABorderProdOrderBaseType: TBorderProdOrderBaseType;
      AParRelProductsOrientation: TParRelProductsOrientation;
      AParRelProductsKind: TParRelProductsKind;
      AParRelProductsStructurePartIncludeKind: TParRelProductsStructurePartIncludeKind;
      AParRelProductsDeptIncludeKind: TParRelProductsDeptIncludeKind;
      AIsForCommonProduct: Boolean); reintroduce; virtual;

    class function ShowForm(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AProductClass: TProductClass;
      ABorderRelType: TBorderRelType;
      ABorderProdOrderBaseType: TBorderProdOrderBaseType;
      AParRelProductsOrientation: TParRelProductsOrientation;
      AParRelProductsKind: TParRelProductsKind;
      AParRelProductsStructurePartIncludeKind: TParRelProductsStructurePartIncludeKind;
      AParRelProductsDeptIncludeKind: TParRelProductsDeptIncludeKind;
      AIsForCommonProduct: Boolean): Boolean;

    procedure Initialize; override;

    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

  TfmParRelProductsFilterClass = class of TfmParRelProductsFilter;

implementation

uses
  uClientUtils, dMain;

{$R *.dfm}

{ TfmParRelProductsFilter }

procedure TfmParRelProductsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  frCompanyFilter.FieldNames:= 'CHOSEN_COMPANIES';
end;

function TfmParRelProductsFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= 0;
  case FProductClass of
    pcNormal:
      case FBorderRelType of
        brtClient: Result:= 1;
        brtVendor:
          case FBorderProdOrderBaseType of
            pobtSaleCover: Result:= 2;
            pobtEnvCover: Result:= 3;
          end;  { case }
      end;  { case }

    pcFinancial:
      case FBorderRelType of
        brtClient: Result:= 4;
        brtVendor: Result:= 5;
      end;  { case }
  end;  { case }
end;

function TfmParRelProductsFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmParRelProductsFilter.Initialize;
var
  MsgParams: TStrings;
  SavedLeft: Integer;
  SavedTabOrder: TTabOrder;
begin
  inherited Initialize;

  MsgParams:=
    uParRelProducts.CreateCommonMsgParams(
      LoginContext,
      FProductClass,
      FBorderRelType,
      FBorderProdOrderBaseType,
      FParRelProductsOrientation,
      FParRelProductsKind,
      FParRelProductsStructurePartIncludeKind,
      FParRelProductsDeptIncludeKind,
      FIsForCommonProduct);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;

  if (FParRelProductsOrientation = prpoPartner) then
    begin
      SavedLeft:= pnlProduct.Left;
      pnlProduct.Left:= pnlPartner.Left;
      pnlPartner.Left:= SavedLeft;

      SavedTabOrder:= pnlProduct.TabOrder;
      pnlProduct.TabOrder:= pnlPartner.TabOrder;
      pnlPartner.TabOrder:= SavedTabOrder;
    end;  { if }
end;

procedure TfmParRelProductsFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass;
  ABorderRelType: TBorderRelType;
  ABorderProdOrderBaseType: TBorderProdOrderBaseType;
  AParRelProductsOrientation: TParRelProductsOrientation;
  AParRelProductsKind: TParRelProductsKind;
  AParRelProductsStructurePartIncludeKind: TParRelProductsStructurePartIncludeKind;
  AParRelProductsDeptIncludeKind: TParRelProductsDeptIncludeKind;
  AIsForCommonProduct: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FProductClass:= AProductClass;
  FBorderRelType:= ABorderRelType;
  FBorderProdOrderBaseType:= ABorderProdOrderBaseType;
  FParRelProductsOrientation:= AParRelProductsOrientation;
  FParRelProductsKind:= AParRelProductsKind;
  FParRelProductsStructurePartIncludeKind:= AParRelProductsStructurePartIncludeKind;
  FParRelProductsDeptIncludeKind:= AParRelProductsDeptIncludeKind;
  FIsForCommonProduct:= AIsForCommonProduct;

  frProductFilter.ProductClass:= FProductClass;
end;

class function TfmParRelProductsFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass;
  ABorderRelType: TBorderRelType;
  ABorderProdOrderBaseType: TBorderProdOrderBaseType;
  AParRelProductsOrientation: TParRelProductsOrientation;
  AParRelProductsKind: TParRelProductsKind;
  AParRelProductsStructurePartIncludeKind: TParRelProductsStructurePartIncludeKind;
  AParRelProductsDeptIncludeKind: TParRelProductsDeptIncludeKind;
  AIsForCommonProduct: Boolean): Boolean;
var
  f: TfmParRelProductsFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(
      AdmDocClient,
      ADataSet,
      AEditMode,
      ADefaultsOrigin,
      AProductClass,
      ABorderRelType,
      ABorderProdOrderBaseType,
      AParRelProductsOrientation,
      AParRelProductsKind,
      AParRelProductsStructurePartIncludeKind,
      AParRelProductsDeptIncludeKind,
      AIsForCommonProduct);

    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmParRelProductsFilter.OpenDataSets;
begin
  inherited;
  cdsCompanyStatuses.Open;
  cdsParRelProductStatuses.Open;
end;

procedure TfmParRelProductsFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  cbObtainmentType.Visible:=
    (FProductClass = pcNormal);

  lblObtainmentType.Visible:=
    cbObtainmentType.Visible;

  cbInvestmentLevel.Visible:=
    (FBorderRelType = brtClient) and
    Assigned(dsData.DataSet) and
    (IntToObtainmentType(dsData.DataSet.FieldByName('OBTAINMENT_TYPE_CODE').AsInteger) = otAcquire);

  lblInvestmentLevel.Visible:=
    cbInvestmentLevel.Visible;

  gbProductCommonLevel.Visible:= (FProductClass in [pcNormal, pcFinancial]);
end;

procedure TfmParRelProductsFilter.CloseDataSets;
begin
  cdsParRelProductStatuses.Close;
  cdsCompanyStatuses.Close;
  inherited;
end;

end.
