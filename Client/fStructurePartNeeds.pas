unit fStructurePartNeeds;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, Menus, JvButtons, ParamDataSet, ActnList,
  DB, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, uAspectTypes,
  AbmesFields, uClientTypes, JvComponent, JvCaptionButton, JvComponentBase,
  uNeeds, dDocClient, DBGridEhGrouping;

type
  TfmStructurePartNeeds = class(TGridForm)
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataQUANTITY: TAbmesFloatField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataSALE_COUNT: TAbmesFloatField;
    cdsGridDataSPEC_PRODUCT_COUNT: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    actStructurePartNeedsByResultProduct: TAction;
    btnStructurePartNeedsByResultProduct: TBitBtn;
    actStructurePartNeedsByUpperLevelStructurePart: TAction;
    btnStructurePartNeedsByUpperLevelStructurePart: TBitBtn;
    actStructurePartNeedsBySale: TAction;
    btnStructurePartNeedsBySale: TBitBtn;
    cdsGridDataDIRECT_SALE_QUANTITY: TAbmesFloatField;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsCHOSEN_RESULT_PRODUCTS: TAbmesWideStringField;
    cdsGridDataCHOSEN_RESULT_PRODUCTS: TAbmesWideStringField;
    cdsGridDataIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    pdsGridDataParamsIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    pdsGridDataParamsSELF_EXISTENT_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_USED: TAbmesFloatField;
    btnEditRecord: TBitBtn;
    pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    cdsGridDataCHOSEN_COMPANIES: TAbmesWideStringField;
    cdsGridDataMEASURE_CODE: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataIS_ONE_MEASURE: TAggregateField;
    cdsGridDataIS_ONE_ACCOUNT_MEASURE: TAggregateField;
    cdsGridDataSUM_QUANTITY: TAggregateField;
    cdsGridData_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_ACCOUNT_DIRECT_SALE_QUANTITY: TAbmesFloatField;
    cdsGridDataSUM_DIRECT_SALE_QUANTITY: TAggregateField;
    cdsGridData_SUM_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_SUM_QUANTITY: TAbmesFloatField;
    cdsGridData_SUM_DIRECT_SALE_QUANTITY: TAbmesFloatField;
    cdsGridData_SUM_ACCOUNT_DIRECT_SALE_QUANTITY: TAbmesFloatField;
    cdsGridData_SUM_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_SUM_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    actCopyToClipboard: TAction;
    actCopyNoToClipboard: TAction;
    actCopyNameToClipboard: TAction;
    pmCopy: TPopupMenu;
    miCopyNoToClipboard: TMenuItem;
    miCopyNameToClipboard: TMenuItem;
    btnCopyToClipboard: TToolButton;
    cdsGridDataSUM_ACCOUNT_QUANTITY: TAggregateField;
    cdsGridDataSUM_ACCOUNT_DIRECT_SALE_QUANTITY: TAggregateField;
    cdsGridData_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridData_END_DATE: TAbmesSQLTimeStampField;
    tbRightTop: TToolBar;
    btnToggleProductDisplay: TSpeedButton;
    btnAccountMeasure: TSpeedButton;
    btnWorkMeasure: TSpeedButton;
    cdsGridDataPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    sepBeforeCopyToClipboard: TToolButton;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC: TAbmesFloatField;
    tlbTopButtons: TToolBar;
    sepBeforeProductDoc: TToolButton;
    lblProductDoc: TLabel;
    btnProductDoc: TToolButton;
    cdsGridDataUPPER_LEVEL_STRUCT_PART_COUNT: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_STRUCT_PART_PRODUCTS: TAbmesWideStringField;
    cdsParRelProductsParams: TAbmesClientDataSet;
    cdsParRelProductsParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsParRelProductsParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsParRelProductsParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsParRelProductsParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsParRelProductsParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    cdsParRelProductsParamsDETAIL_CODE: TAbmesFloatField;
    cdsParRelProductsParamsMATERIAL_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_PRP_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_PRP_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductsParamsMIN_PRP_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductsParamsMAX_PRP_STATUS_CODE: TAbmesFloatField;
    cdsGridDataMIN_PRP_STATUS_CODE: TAbmesFloatField;
    cdsGridDataMAX_PRP_STATUS_CODE: TAbmesFloatField;
    cdsGridDataQUANTITY_PRICE: TAbmesFloatField;
    cdsGridDataQUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDIRECT_SALE_QUANTITY_PRICE: TAbmesFloatField;
    cdsGridDataDIRECT_SALE_QTY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataFULL_QUANTITY: TAbmesFloatField;
    cdsGridDataFULL_QUANTITY_PRICE: TAbmesFloatField;
    cdsGridDataFULL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSUM_FULL_QUANTITY_PRICE: TAggregateField;
    cdsGridDataMIN_FULL_QUANTITY_NOPRICE_DATE: TAggregateField;
    cdsGridDataSUM_QUANTITY_PRICE: TAggregateField;
    cdsGridDataMIN_QUANTITY_NOPRICE_DATE: TAggregateField;
    cdsGridDataSUM_DIRECT_SALE_QUANTITY_PRICE: TAggregateField;
    cdsGridDataMIN_DRCT_SALE_QTY_NOPRICE_DATE: TAggregateField;
    sepToggleProductDisplay: TToolButton;
    pdsGridDataParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    pdsGridDataParamsPARTNER_COMMON_LEVEL: TAbmesFloatField;
    cdsParRelProductsParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    cdsParRelProductsParamsPARTNER_COMMON_LEVEL: TAbmesFloatField;
    cdsGridDataPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    cdsGridDataPARTNER_COMMON_LEVEL: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure actStructurePartNeedsBySaleExecute(Sender: TObject);
    procedure actStructurePartNeedsBySaleUpdate(Sender: TObject);
    procedure actStructurePartNeedsByResultProductExecute(Sender: TObject);
    procedure actStructurePartNeedsByResultProductUpdate(Sender: TObject);
    procedure actStructurePartNeedsByUpperLevelStructurePartExecute(Sender: TObject);
    procedure actStructurePartNeedsByUpperLevelStructurePartUpdate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure actCopyToClipboardExecute(Sender: TObject);
    procedure actCopyNameToClipboardExecute(Sender: TObject);
    procedure actCopyNoToClipboardExecute(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
    procedure btnProductDocClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure cdsGridDataFULL_QUANTITY_PRICEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataSUM_FULL_QUANTITY_PRICEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataQUANTITY_PRICEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataDIRECT_SALE_QUANTITY_PRICEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataSUM_QUANTITY_PRICEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataSUM_DIRECT_SALE_QUANTITY_PRICEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    FOriginalFormCaption: string;
    FAspectType: TAspectType;
    FStructurePartKind: TStructurePartKind;
    procedure ShowParRelProducts(AIsPartnerOriented: Boolean);
  protected
    class function CanUseDocs: Boolean; override;
    function GetOriginalFormCaption: string; override;
    function ShowFilterForm: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    procedure DoBeforeShow; override;
  public
    class function ShowForm(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AFilterFormEnabled: Boolean;
      AAspectType: TAspectType;
      AStructurePartKind: TStructurePartKind): Boolean;

    procedure SetDataParams(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AFilterFormEnabled: Boolean;
      AAspectType: TAspectType;
      AStructurePartKind: TStructurePartKind); reintroduce; virtual;

    procedure Initialize; override;
  end;

implementation

uses
  dMain, uUtils, fStructurePartNeedsFilter, fStructurePartNeedsBySale, uDocUtils,
  fStructurePartNeedsByResultProduct, fStructurePartNeedsByUpperLevelStructurePart,
  fProductionProduct, Clipbrd, rStructurePartNeeds, uClientUtils, uProducts,
  uBorderRelTypes, uParRelProducts, fParRelProducts, uXMLUtils,
  uProductionOrderTypes;

{$R *.dfm}

resourcestring
  SDiffMeasures = 'разл. м.';

{ TfmStructurePartNeeds }

class function TfmStructurePartNeeds.CanUseDocs: Boolean;
begin
  Result:= True;
end;

class function TfmStructurePartNeeds.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AAspectType: TAspectType;
  AStructurePartKind: TStructurePartKind): Boolean;
var
  f: TfmStructurePartNeeds;
begin
  f:= CreateEx;
  try
    f.SetDataParams(
      AdmDocClient,
      ADataSet,
      AEditMode,
      ADefaultsOrigin,
      AFilterFormEnabled,
      AAspectType,
      AStructurePartKind);

    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmStructurePartNeeds.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AAspectType: TAspectType;
  AStructurePartKind: TStructurePartKind);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FAspectType:= AAspectType;
  FStructurePartKind:= AStructurePartKind;
end;

procedure TfmStructurePartNeeds.Initialize;
const
  HeightAdjustments: array[TStructurePartKind] of Integer = (0, 0, 0, 5);
begin
  inherited Initialize;

  FOriginalFormCaption:= actForm.Caption;

  Height:= Height + HeightAdjustments[FStructurePartKind];
end;

procedure TfmStructurePartNeeds.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmStructurePartNeedsFilter;
  EditFormClass:= TfmProductionProduct;
  ReportClass:= TrptStructurePartNeeds;

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsGridDataFULL_QUANTITY_PRICE,
      cdsGridDataSUM_FULL_QUANTITY_PRICE]);
end;

function TfmStructurePartNeeds.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmStructurePartNeeds.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  CheckRequiredField(pdsGridDataParamsBEGIN_DATE);
  CheckRequiredField(pdsGridDataParamsEND_DATE);
end;

procedure TfmStructurePartNeeds.ShowParRelProducts(AIsPartnerOriented: Boolean);
const
  ParRelProductsStructurePartIncludeKinds: array[TStructurePartKind] of TParRelProductsStructurePartIncludeKind =
    (prpspikNone, prpspikNone, prpspikDetail, prpspikMaterial);
  ParRelProductsStructurePartFieldNames: array[TStructurePartKind] of string =
    ('NONE', 'NONE', 'DETAIL_CODE', 'MATERIAL_CODE');
var
  ParRelProductsOrientation: TParRelProductsOrientation;
begin
  if AIsPartnerOriented then
    ParRelProductsOrientation:= prpoPartner
  else
    ParRelProductsOrientation:= prpoProduct;

  cdsParRelProductsParams.CreateDataSet;
  try
    cdsParRelProductsParams.Append;
    try
      cdsParRelProductsParamsOBTAINMENT_TYPE_CODE.AsInteger:=
        ObtainmentTypeToInt(otAcquire);

      cdsParRelProductsParamsPRODUCT_COMMON_LEVEL.Assign(
        pdsGridDataParamsPRODUCT_COMMON_LEVEL);

      cdsParRelProductsParamsPARTNER_COMMON_LEVEL.Assign(
        pdsGridDataParamsPARTNER_COMMON_LEVEL);

      cdsParRelProductsParamsMIN_PRP_STATUS_CODE.Assign(
        pdsGridDataParamsMIN_PRP_STATUS_CODE);

      cdsParRelProductsParamsMAX_PRP_STATUS_CODE.Assign(
        pdsGridDataParamsMAX_PRP_STATUS_CODE);

      cdsParRelProductsParamsBEGIN_DATE.Assign(
        pdsGridDataParamsBEGIN_DATE);

      cdsParRelProductsParamsEND_DATE.Assign(
        pdsGridDataParamsEND_DATE);

      cdsParRelProductsParamsCHOSEN_COMPANIES.Assign(
        pdsGridDataParamsCHOSEN_COMPANIES);

      cdsParRelProductsParamsCHOSEN_PRODUCTS.Assign(
        pdsGridDataParamsCHOSEN_RESULT_PRODUCTS);

      cdsParRelProductsParams.FieldByName(ParRelProductsStructurePartFieldNames[FStructurePartKind]).Assign(
        cdsGridDataPRODUCT_CODE);

      cdsParRelProductsParams.Post;
    except
      cdsParRelProductsParams.Cancel;
      raise;
    end;  { try }

    TfmParRelProducts.ShowForm(
      dmDocClient,
      cdsParRelProductsParams,
      emReadOnly,
      doNone,
      False,
      pcNormal,
      brtClient,
      pobtSaleCover,
      ParRelProductsOrientation,
      prpkQuantity,
      ParRelProductsStructurePartIncludeKinds[FStructurePartKind],
      prpdikNone,
      False
    );
  finally
    cdsParRelProductsParams.Close;
  end;  { try }
end;

procedure TfmStructurePartNeeds.actStructurePartNeedsBySaleExecute(Sender: TObject);
begin
  inherited;
  case FAspectType of
    atEstimation:
      ShowParRelProducts(ShiftIsPressed);
    atRealization:
      TfmStructurePartNeedsBySale.ShowForm(
        dmDocClient, cdsGridData, emReadOnly, doNone, False, FStructurePartKind);
  end;  { case }
end;

procedure TfmStructurePartNeeds.actStructurePartNeedsBySaleUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridData.IsEmpty;
end;

procedure TfmStructurePartNeeds.actStructurePartNeedsByResultProductExecute(
  Sender: TObject);
begin
  inherited;
  TfmStructurePartNeedsByResultProduct.ShowForm(
    dmDocClient, cdsGridData, emReadOnly, doNone, False, FAspectType, FStructurePartKind);
end;

procedure TfmStructurePartNeeds.actStructurePartNeedsByResultProductUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmStructurePartNeeds.actStructurePartNeedsByUpperLevelStructurePartExecute(
  Sender: TObject);
begin
  inherited;
  TfmStructurePartNeedsByUpperLevelStructurePart.ShowForm(
    dmDocClient, cdsGridData, emReadOnly, doNone, False, FAspectType, FStructurePartKind);
end;

procedure TfmStructurePartNeeds.actStructurePartNeedsByUpperLevelStructurePartUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmStructurePartNeeds.cdsGridDataBeforeOpen(DataSet: TDataSet);
const
  ProviderNames: array[TAspectType, TStructurePartKind] of string = (
    ('', '', '', ''),
    ('', 'prvResultProductEstNeeds', 'prvDetailEstNeeds', 'prvMaterialEstNeeds'),
    ('', 'prvResultProductRealNeeds', 'prvDetailRealNeeds', 'prvMaterialRealNeeds')
  );
begin
  inherited;
  cdsGridData.ProviderName:= ProviderNames[FAspectType, FStructurePartKind];
end;

procedure TfmStructurePartNeeds.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsGridDataBEGIN_DATE.AsVariant:= cdsGridData.Params.ParamByName('BEGIN_DATE').Value;
  cdsGridDataEND_DATE.AsVariant:= cdsGridData.Params.ParamByName('END_DATE').Value;
  cdsGridDataPRODUCT_COMMON_LEVEL.AsVariant:= cdsGridData.Params.ParamByName('PRODUCT_COMMON_LEVEL').Value;
  cdsGridDataPARTNER_COMMON_LEVEL.AsVariant:= cdsGridData.Params.ParamByName('PARTNER_COMMON_LEVEL').Value;
  cdsGridDataCHOSEN_RESULT_PRODUCTS.AsVariant:= cdsGridData.Params.ParamByName('CHOSEN_RESULT_PRODUCTS').Value;
  cdsGridDataCHOSEN_COMPANIES.AsVariant:= cdsGridData.Params.ParamByName('CHOSEN_COMPANIES').Value;
  cdsGridDataMIN_PRP_STATUS_CODE.AsVariant:= cdsGridData.Params.ParamByName('MIN_PRP_STATUS_CODE').Value;
  cdsGridDataMAX_PRP_STATUS_CODE.AsVariant:= cdsGridData.Params.ParamByName('MAX_PRP_STATUS_CODE').Value;

  if cdsGridDataQUANTITY.IsNull then
    cdsGridData_ACCOUNT_QUANTITY.Clear
  else
    cdsGridData_ACCOUNT_QUANTITY.AsFloat:=
      cdsGridDataQUANTITY.AsFloat * cdsGridDataACCOUNT_MEASURE_COEF.AsFloat;

  if cdsGridDataDIRECT_SALE_QUANTITY.IsNull then
    cdsGridData_ACCOUNT_DIRECT_SALE_QUANTITY.Clear
  else
    cdsGridData_ACCOUNT_DIRECT_SALE_QUANTITY.AsFloat:=
      cdsGridDataDIRECT_SALE_QUANTITY.AsFloat * cdsGridDataACCOUNT_MEASURE_COEF.AsFloat;

  if VarAsType(cdsGridDataIS_ONE_MEASURE.Value, varBoolean) then
    begin
      cdsGridData_SUM_QUANTITY.AsFloat:= VarToFloat(cdsGridDataSUM_QUANTITY.Value);
      cdsGridData_SUM_DIRECT_SALE_QUANTITY.AsFloat:= VarToFloat(cdsGridDataSUM_DIRECT_SALE_QUANTITY.Value);
      cdsGridData_SUM_MEASURE_ABBREV.AsString:= cdsGridDataMEASURE_ABBREV.AsString;
    end
  else
    begin
      cdsGridData_SUM_QUANTITY.Clear;
      cdsGridData_SUM_DIRECT_SALE_QUANTITY.Clear;
      cdsGridData_SUM_MEASURE_ABBREV.AsString:= SDiffMeasures;
    end;

  if VarAsType(cdsGridDataIS_ONE_ACCOUNT_MEASURE.Value, varBoolean) then
    begin
      cdsGridData_SUM_ACCOUNT_QUANTITY.AsFloat:= VarToFloat(cdsGridDataSUM_ACCOUNT_QUANTITY.Value);
      cdsGridData_SUM_ACCOUNT_DIRECT_SALE_QUANTITY.AsFloat:= VarToFloat(cdsGridDataSUM_ACCOUNT_DIRECT_SALE_QUANTITY.Value);
      cdsGridData_SUM_ACCOUNT_MEASURE_ABBREV.AsString:= cdsGridDataACCOUNT_MEASURE_ABBREV.AsString;
    end
  else
    begin
      cdsGridData_SUM_ACCOUNT_QUANTITY.Clear;
      cdsGridData_SUM_ACCOUNT_DIRECT_SALE_QUANTITY.Clear;
      cdsGridData_SUM_ACCOUNT_MEASURE_ABBREV.AsString:= SDiffMeasures;
    end;

  cdsGridData_BEGIN_DATE.AsVariant:= cdsGridDataBEGIN_DATE.AsVariant;
  cdsGridData_END_DATE.AsVariant:= cdsGridDataEND_DATE.AsVariant;
end;

procedure TfmStructurePartNeeds.cdsGridDataDIRECT_SALE_QUANTITY_PRICEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridDataDIRECT_SALE_QTY_NOPRICE_DATE);
end;

procedure TfmStructurePartNeeds.cdsGridDataFULL_QUANTITY_PRICEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridDataFULL_QUANTITY_NOPRICE_DATE);
end;

procedure TfmStructurePartNeeds.cdsGridDataQUANTITY_PRICEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridDataQUANTITY_NOPRICE_DATE);
end;

procedure TfmStructurePartNeeds.cdsGridDataSUM_DIRECT_SALE_QUANTITY_PRICEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridDataMIN_DRCT_SALE_QTY_NOPRICE_DATE);
end;

procedure TfmStructurePartNeeds.cdsGridDataSUM_FULL_QUANTITY_PRICEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridDataMIN_FULL_QUANTITY_NOPRICE_DATE);
end;

procedure TfmStructurePartNeeds.cdsGridDataSUM_QUANTITY_PRICEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridDataMIN_QUANTITY_NOPRICE_DATE);
end;

procedure TfmStructurePartNeeds.DoBeforeShow;
var
  MsgParams: TStrings;
begin
  MsgParams:= uNeeds.CreateCommonMsgParams(LoginContext, FAspectType, FStructurePartKind);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  inherited;
end;

function TfmStructurePartNeeds.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Assert(Assigned(EditFormClass));
  Assert(EditFormClass = TfmProductionProduct);
  Result:= TfmProductionProduct.ShowForm(dmDocClient, cdsGridDataPRODUCT_CODE.AsInteger, AEditMode);
end;

function TfmStructurePartNeeds.ShowFilterForm: Boolean;
begin
  if FilterFormClass.InheritsFrom(TfmStructurePartNeedsFilter) then
    Result:=
      TfmStructurePartNeedsFilterClass(FilterFormClass).ShowForm(
        dmDocClient,
        pdsGridDataParams,
        emEdit,
        doNone,
        FAspectType,
        FStructurePartKind)
  else
    Result:= inherited ShowFilterForm;
end;

procedure TfmStructurePartNeeds.actCopyToClipboardExecute(Sender: TObject);
begin
  inherited;
  actCopyNoToClipboard.Execute;
end;

procedure TfmStructurePartNeeds.actCopyNameToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataPRODUCT_NAME.AsString;
end;

procedure TfmStructurePartNeeds.actCopyNoToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataPRODUCT_NO.AsString;
end;

procedure TfmStructurePartNeeds.grdDataDblClick(Sender: TObject);
var
  ColumnField: TField;
begin
  ColumnField:= grdData.Columns[grdData.Col-1].Field;

  if (ColumnField = cdsGridDataSALE_COUNT) then
    actStructurePartNeedsBySale.Execute
  else if (ColumnField = cdsGridDataSPEC_PRODUCT_COUNT) then
    actStructurePartNeedsByResultProduct.Execute
  else if (ColumnField = cdsGridDataUPPER_LEVEL_STRUCT_PART_COUNT) then
    actStructurePartNeedsByUpperLevelStructurePart.Execute
  else
    inherited;
end;

procedure TfmStructurePartNeeds.actFormUpdate(Sender: TObject);
begin
  inherited;
  btnProductDoc.ImageIndex:=
    cdsGridDataHAS_DOC.AsInteger;

  btnProductDoc.Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);

  with grdData do
    begin
      Columns[0].Visible:= not btnToggleProductDisplay.Down;
      Columns[1].Visible:= not btnToggleProductDisplay.Down;
      Columns[2].Visible:= btnToggleProductDisplay.Down;

      Columns[4].Visible:= btnWorkMeasure.Down;
      Columns[5].Visible:= btnWorkMeasure.Down;
      Columns[6].Visible:= btnWorkMeasure.Down;

      Columns[7].Visible:= btnAccountMeasure.Down;
      Columns[8].Visible:= btnAccountMeasure.Down;
      Columns[9].Visible:= btnAccountMeasure.Down;

      if (FStructurePartKind = spkMaterial) then
        Columns[10].Footer.ValueType:= fvtFieldValue
      else
        Columns[10].Footer.ValueType:= fvtNon;
    end;  { with }
end;

procedure TfmStructurePartNeeds.actPrintExecute(Sender: TObject);
begin
  if ReportClass.InheritsFrom(TrptStructurePartNeeds) then
    begin
      TrptStructurePartNeedsClass(ReportClass).PrintReport(cdsGridData, dsData.DataSet, FAspectType, FStructurePartKind);
    end
  else
    inherited;
end;

procedure TfmStructurePartNeeds.btnProductDocClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TControl),
    dotProduct,
    cdsGridData);
end;

end.
