unit fEstPricesCompareGraphFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvComponent,
  JvDBLookup, Buttons, StdCtrls, ExtCtrls, JvExStdCtrls, JvDBCombobox,
  fDateUnitsIntervalEditFrame, fCompanyFilter, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFilter, fProductFilter, fParamProductFilter,
  JvExExtCtrls, JvDBRadioPanel, DBCtrls, uBorderRelTypes, uParRelProducts,
  uProductionOrderTypes, JvExtComponent, uClientTypes, dDocClient, uProducts,
  JvCombobox, fFilterFrame, fTreeNodeGridFilter;

type
  TfmEstPricesCompareGraphFilter = class(TFilterForm)
    frParamProductFilter: TfrParamProductFilter;
    frCompanyFilter: TfrCompanyFilter;
    frDateUnitsInterval: TfrDateUnitsIntervalEditFrame;
    gbRounder: TGroupBox;
    cbRounder: TJvDBLookupCombo;
    rgUseDefaultRounder: TJvDBRadioPanel;
    dsBorderDealTypes: TDataSource;
    gbParRelProductStatus: TGroupBox;
    cbMinParRelProductStatus: TJvDBLookupCombo;
    lblBetweenParRelProductStatuses: TLabel;
    cbMaxParRelProductStatus: TJvDBLookupCombo;
    cdsParRelProductStatuses: TAbmesClientDataSet;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    dsParRelProductStatuses: TDataSource;
    gbProductCommonLevel: TGroupBox;
    cbProductCommonLevel: TJvDBComboBox;
    gbPartnerCommonLevel: TGroupBox;
    cbPartnerCommonLevel: TJvDBComboBox;
    gbValuesOrigin: TGroupBox;
    cbValuesOrigin: TJvDBComboBox;
    gbObtainmentType: TGroupBox;
    cbObtainmentType: TJvDBLookupCombo;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesNAME: TAbmesWideStringField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    dsBranches: TDataSource;
    gbBranch: TGroupBox;
    cbBranch: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure rgUseDefaultRounderChange(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure frDateUnitsIntervalcdsTimeUnitsAfterOpen(DataSet: TDataSet);
  private
    FProductClass: TProductClass;
    FBorderRelType: TBorderRelType;
    FBorderProdOrderBaseType: TBorderProdOrderBaseType;
    FOriginalFormCaption: string;
    procedure UpdateControls;
  protected
    function GetOriginalFormCaption: string; override;
    function GetFilterFormVariantCode: Integer; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    procedure DoApplyUpdates; override;
    procedure Initialize; override;
  end;

resourcestring
  SClientCaptionNormal = 'ВИМ - Графичен на Индустриален Резултат';
  SVendorCaptionNormal = 'ВИМ - Графичен на Доставки %CoveringText%';

  SClientCaptionFinancial = 'ВИМ - Графичен на Индустриален Резултат Финансов';
  SVendorCaptionFinancial = 'ВИМ - Графичен на Доставки на ФОб';

const
  BorderRelTypeCaptions: array[TProductClass, TBorderRelType] of string =
    ( ('', '', ''),
      ('', SClientCaptionNormal, SVendorCaptionNormal),
      ('', SClientCaptionFinancial, SVendorCaptionFinancial),
      ('', '', '')
    );

implementation

uses
  uClientUtils, uPeriods, uGraphUtils, uComboBoxUtils;

{$R *.dfm}

resourcestring
  SFilterOf = 'Филтър на ';

{ TfmEstPricesCompareGraphFilter }

procedure TfmEstPricesCompareGraphFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  UpdateControls;
end;

procedure TfmEstPricesCompareGraphFilter.CloseDataSets;
begin
  inherited;
  cdsBranches.Close;
  cdsParRelProductStatuses.Close;
end;

procedure TfmEstPricesCompareGraphFilter.DoApplyUpdates;
begin
  with dsData.DataSet do
    if not FieldByName('USE_DEFAULT_ROUNDER').AsBoolean then
      if FieldByName('ROUNDER').IsNull then
        begin
          ActiveControl:= cbRounder;
          raise Exception.Create(SRounderStepRequired);
        end;

  inherited;
end;

procedure TfmEstPricesCompareGraphFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  frCompanyFilter.FieldNames:= 'CHOSEN_COMPANIES';
  frDateUnitsInterval.FieldNames:= 'DATE_UNIT_CODE; BEGIN_DATE; DATE_UNIT_COUNT';
end;

procedure TfmEstPricesCompareGraphFilter.frDateUnitsIntervalcdsTimeUnitsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;

  // hack da mogat da se izbirat do 10 godini
  if not frDateUnitsInterval.cdsTimeUnits.Locate('THE_DATE_UNIT_CODE', GetPeriodConst(perYear), []) then
    raise Exception.Create('internal error: cannot locate year date unit');

  frDateUnitsInterval.cdsTimeUnits.Edit;
  try
    frDateUnitsInterval.cdsTimeUnitsMAX_UNIT_COUNT.AsInteger:= 10;
    frDateUnitsInterval.cdsTimeUnits.Post;
  except
    frDateUnitsInterval.cdsTimeUnits.Cancel;
    raise;
  end;

  frDateUnitsInterval.cdsTimeUnits.First;
end;

function TfmEstPricesCompareGraphFilter.GetFilterFormVariantCode: Integer;
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

        brtVendor:
          case FBorderProdOrderBaseType of
            pobtSaleCover: Result:= 5;
          end;  { case }
      end;  { case }
  end;  { case }
end;

function TfmEstPricesCompareGraphFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmEstPricesCompareGraphFilter.Initialize;
var
  MsgParams: TStrings;
begin
  FProductClass:=
    IntToProductClass(dsData.DataSet.FieldByName('PRODUCT_CLASS_CODE').AsInteger);
  FBorderRelType:=
    IntToBorderRelType(dsData.DataSet.FieldByName('BORDER_REL_TYPE_CODE').AsInteger);
  FBorderProdOrderBaseType:=
    IntToProdOrderBaseType(dsData.DataSet.FieldByName('BORDER_PROD_ORDER_BASE_TYPE').AsInteger);

  frParamProductFilter.ProductClass:= FProductClass;

  dsBorderDealTypes.DataSet:=
    OuterDataSet.FieldByName('_OBTAINMENT_TYPE_NAME').LookupDataSet;

  inherited;

  actForm.Caption:= SFilterOf + BorderRelTypeCaptions[FProductClass, FBorderRelType];

  MsgParams:=
    CreateCommonMsgParams(
      LoginContext,
      FProductClass,
      FBorderRelType,
      FBorderProdOrderBaseType,
      prpoProduct,
      prpkQuantity,
      prpspikNone,
      prpdikNone,
      False);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;

  UpdateControls;
end;

procedure TfmEstPricesCompareGraphFilter.UpdateControls;
var
  cbValuesOriginItemIndex: Integer;
begin
  gbObtainmentType.Visible:=
    (FProductClass = pcNormal);

  cbValuesOriginItemIndex:=
    ReplacedDBComboBox(cbValuesOrigin).XItemIndex;

  gbParRelProductStatus.Visible:=
    (cbValuesOriginItemIndex in [epcgEstimations, epcgCompare]);

  gbProductCommonLevel.Visible:=
    (cbValuesOriginItemIndex in [epcgEstimations, epcgCompare]);

  gbPartnerCommonLevel.Visible:=
    (cbValuesOriginItemIndex in [epcgEstimations, epcgCompare]);

  cbMinParRelProductStatus.Enabled:=
    (cbValuesOriginItemIndex in [epcgCompare, epcgEstimations]);

  cbMaxParRelProductStatus.Enabled:=
    (cbValuesOriginItemIndex in [epcgCompare, epcgEstimations]);

  gbBranch.Visible:=
    (cbValuesOriginItemIndex in [epcgPlanAndReal]);
end;

procedure TfmEstPricesCompareGraphFilter.OpenDataSets;
begin
  cdsParRelProductStatuses.Open;
  cdsBranches.Open;
  inherited;
end;

procedure TfmEstPricesCompareGraphFilter.rgUseDefaultRounderChange(
  Sender: TObject);
var
  en: Boolean;
begin
  inherited;
  en:= not (rgUseDefaultRounder.Value = 'True');
  cbRounder.Enabled:= en;
  cbRounder.Color:= ReadOnlyColors[not en];
  if (not en) and (dsData.State in dsEditModes) then
    dsData.DataSet.FieldByName('ROUNDER').Clear;
end;

end.
