unit fResultProductNeeds;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, Menus, JvButtons, ParamDataSet, ActnList,
  DB, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, uClientTypes,
  AbmesFields, JvComponent, JvCaptionButton, JvComponentBase, dDocClient,
  uAspectTypes, DBGridEhGrouping;

type
  TfmResultProductNeeds = class(TGridForm)
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;                                                               
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataSALE_COUNT: TAbmesFloatField;
    cdsGridDataQUANTITY: TAbmesFloatField;
    cdsGridDataDETAIL_QUANTITY: TAbmesFloatField;
    cdsGridDataMATERIAL_QUANTITY: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    actResultProductNeedsBySale: TAction;
    btnResultProductNeedsBySale: TBitBtn;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsCHOSEN_RESULT_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    cdsGridDataCHOSEN_COMPANIES: TAbmesWideStringField;
    cdsGridDataACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_ACCOUNT_DETAIL_QUANTITY: TAbmesFloatField;
    cdsGridData_ACCOUNT_MATERIAL_QUANTITY: TAbmesFloatField;
    cdsGridDataMEASURE_CODE: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataIS_ONE_MEASURE: TAggregateField;
    cdsGridDataIS_ONE_ACCOUNT_MEASURE: TAggregateField;
    cdsGridDataSUM_QUANTITY: TAggregateField;
    cdsGridDataSUM_DETAIL_QUANTITY: TAggregateField;
    cdsGridDataSUM_MATERIAL_QUANTITY: TAggregateField;
    cdsGridData_SUM_QUANTITY: TAbmesFloatField;
    cdsGridData_SUM_DETAIL_QUANTITY: TAbmesFloatField;
    cdsGridData_SUM_MATERIAL_QUANTITY: TAbmesFloatField;
    cdsGridData_SUM_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_SUM_ACCOUNT_DETAIL_QUANTITY: TAbmesFloatField;
    cdsGridData_SUM_ACCOUNT_MATERIAL_QUANTITY: TAbmesFloatField;
    cdsGridData_SUM_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_SUM_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    actCopyToClipboard: TAction;
    actCopyNameToClipboard: TAction;
    actCopyNoToClipboard: TAction;
    pmCopy: TPopupMenu;
    miCopyNoToClipboard: TMenuItem;
    miCopyNameToClipboard: TMenuItem;
    btnCopyToClipboard: TToolButton;
    cdsGridDataSUM_ACCOUNT_QUANTITY: TAggregateField;
    cdsGridDataSUM_ACCOUNT_DETAIL_QUANTITY: TAggregateField;
    cdsGridDataSUM_ACCOUNT_MATERIAL_QUANTITY: TAggregateField;
    cdsGridData_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridData_END_DATE: TAbmesSQLTimeStampField;
    tbRightTop: TToolBar;
    btnToggleProductDisplay: TSpeedButton;
    btnWorkMeasure: TSpeedButton;
    btnAccountMeasure: TSpeedButton;
    cdsGridDataPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    sepBeforeCopyToClipboard: TToolButton;
    tlbTopButtons: TToolBar;
    sepBeforeProductDoc: TToolButton;
    lblProductDoc: TLabel;
    btnProductDoc: TToolButton;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC: TAbmesFloatField;
    cdsParRelProductsParams: TAbmesClientDataSet;
    cdsParRelProductsParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsParRelProductsParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsParRelProductsParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsParRelProductsParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsParRelProductsParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    pdsGridDataParamsMIN_PRP_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_PRP_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductsParamsMIN_PRP_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductsParamsMAX_PRP_STATUS_CODE: TAbmesFloatField;
    cdsGridDataQUANTITY_PRICE: TAbmesFloatField;
    cdsGridDataQUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDETAIL_QUANTITY_PRICE: TAbmesFloatField;
    cdsGridDataDETAIL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataMATERIAL_QUANTITY_PRICE: TAbmesFloatField;
    cdsGridDataMATERIAL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSUM_STRUCT_PART_QUANTITY_PRICE: TAggregateField;
    cdsGridDataMIN_STRUCT_PART_QTY_NOPRICE_DATE: TAggregateField;
    cdsGridDataSTRUCT_PART_QUANTITY: TAbmesFloatField;
    cdsGridDataSTRUCT_PART_QUANTITY_PRICE: TAbmesFloatField;
    cdsGridDataSTRUCT_PART_QTY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSUM_QUANTITY_PRICE: TAggregateField;
    cdsGridDataMIN_QUANTITY_NOPRICE_DATE: TAggregateField;
    sepToggleProductDisplay: TToolButton;
    pdsGridDataParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    pdsGridDataParamsPARTNER_COMMON_LEVEL: TAbmesFloatField;
    cdsParRelProductsParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    cdsParRelProductsParamsPARTNER_COMMON_LEVEL: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure actResultProductNeedsBySaleExecute(Sender: TObject);
    procedure actResultProductNeedsBySaleUpdate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure btnWorkMeasureClick(Sender: TObject);
    procedure btnAccountMeasureClick(Sender: TObject);
    procedure actCopyToClipboardExecute(Sender: TObject);
    procedure actCopyNameToClipboardExecute(Sender: TObject);
    procedure actCopyNoToClipboardExecute(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
    procedure btnToggleProductDisplayClick(Sender: TObject);
    procedure btnProductDocClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure cdsGridDataSUM_STRUCT_PART_QUANTITY_PRICEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataQUANTITY_PRICEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataDETAIL_QUANTITY_PRICEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataMATERIAL_QUANTITY_PRICEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataSTRUCT_PART_QUANTITY_PRICEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataSUM_QUANTITY_PRICEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    FOriginalFormCaption: string;
    FAspectType: TAspectType;
    procedure SetVisibleColumns;
    procedure ShowParRelProducts(AIsPartnerOriented: Boolean);
  protected
    class function CanUseDocs: Boolean; override;
    function GetOriginalFormCaption: string; override;
    function ShowFilterForm: Boolean; override;
  public
    class function ShowForm(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AFilterFormEnabled: Boolean;
      AAspectType: TAspectType): Boolean;

    procedure SetDataParams(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AFilterFormEnabled: Boolean;
      AAspectType: TAspectType); reintroduce; virtual;

    procedure Initialize; override;
  end;

implementation

uses
  dMain, uUtils, fResultProductNeedsFilter, uDocUtils, Clipbrd,
  fResultProductNeedsBySale, rResultProductNeeds, uNeeds, uClientUtils,
  uParRelProducts, uBorderRelTypes, fParRelProducts, uXMLUtils,
  uProductionOrderTypes, uProducts;

{$R *.dfm}

resourcestring
  SDiffMeasures = 'разл. м.';

{ TfmResultProductNeeds }

class function TfmResultProductNeeds.CanUseDocs: Boolean;
begin
  Result:= True;
end;

function TfmResultProductNeeds.ShowFilterForm: Boolean;
begin
  if FilterFormClass.InheritsFrom(TfmResultProductNeedsFilter) then
    Result:=
      TfmResultProductNeedsFilterClass(FilterFormClass).ShowForm(
        dmDocClient,
        pdsGridDataParams,
        emEdit,
        doNone,
        FAspectType)
  else
    Result:= inherited ShowFilterForm;
end;

class function TfmResultProductNeeds.ShowForm(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean;
  AAspectType: TAspectType): Boolean;
var
  f: TfmResultProductNeeds;
begin
  f:= CreateEx;
  try
    f.SetDataParams(
      AdmDocClient,
      ADataSet,
      AEditMode,
      ADefaultsOrigin,
      AFilterFormEnabled,
      AAspectType);

    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmResultProductNeeds.SetDataParams(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean;
  AAspectType: TAspectType);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FAspectType:= AAspectType;
end;

procedure TfmResultProductNeeds.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmResultProductNeedsFilter;
  ReportClass:= TrptResultProductNeeds;

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsGridDataQUANTITY_PRICE,
      cdsGridDataSUM_QUANTITY_PRICE,
      cdsGridDataSTRUCT_PART_QUANTITY_PRICE]);
end;

function TfmResultProductNeeds.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmResultProductNeeds.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  CheckRequiredField(pdsGridDataParamsBEGIN_DATE);
  CheckRequiredField(pdsGridDataParamsEND_DATE);
end;

procedure TfmResultProductNeeds.ShowParRelProducts(AIsPartnerOriented: Boolean);
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

      cdsParRelProductsParamsCHOSEN_PRODUCTS.AsString:=
        ChosenNodeCodeToXML(cdsGridDataPRODUCT_CODE.AsInteger);

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
      prpspikNone,
      prpdikNone,
      False
    );
  finally
    cdsParRelProductsParams.Close;
  end;  { try }
end;

procedure TfmResultProductNeeds.actResultProductNeedsBySaleExecute(
  Sender: TObject);
begin
  inherited;
  case FAspectType of
    atEstimation:
      ShowParRelProducts(ShiftIsPressed);
    atRealization:
      TfmResultProductNeedsBySale.ShowForm(dmDocClient, cdsGridData, emReadOnly);
  end;  { case }
end;

procedure TfmResultProductNeeds.actResultProductNeedsBySaleUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridData.IsEmpty;
end;

procedure TfmResultProductNeeds.cdsGridDataBeforeOpen(DataSet: TDataSet);
const
  ProviderNames: array[TAspectType] of string = ('', 'prvResultProductEstNeeds', 'prvResultProductRealNeeds');
begin
  inherited;
  cdsGridData.ProviderName:= ProviderNames[FAspectType];
end;

procedure TfmResultProductNeeds.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsGridDataBEGIN_DATE.AsVariant:= cdsGridData.Params.ParamByName('BEGIN_DATE').Value;
  cdsGridDataEND_DATE.AsVariant:= cdsGridData.Params.ParamByName('END_DATE').Value;
  cdsGridDataCHOSEN_COMPANIES.AsVariant:= cdsGridData.Params.ParamByName('CHOSEN_COMPANIES').Value;

  if cdsGridDataQUANTITY.IsNull then
    cdsGridData_ACCOUNT_QUANTITY.Clear
  else
    cdsGridData_ACCOUNT_QUANTITY.AsFloat:=
      cdsGridDataQUANTITY.AsFloat * cdsGridDataACCOUNT_MEASURE_COEF.AsFloat;

  if cdsGridDataDETAIL_QUANTITY.IsNull then
    cdsGridData_ACCOUNT_DETAIL_QUANTITY.Clear
  else
    cdsGridData_ACCOUNT_DETAIL_QUANTITY.AsFloat:=
      cdsGridDataDETAIL_QUANTITY.AsFloat * cdsGridDataACCOUNT_MEASURE_COEF.AsFloat;

  if cdsGridDataMATERIAL_QUANTITY.IsNull then
    cdsGridData_ACCOUNT_MATERIAL_QUANTITY.Clear
  else
    cdsGridData_ACCOUNT_MATERIAL_QUANTITY.AsFloat:=
      cdsGridDataMATERIAL_QUANTITY.AsFloat * cdsGridDataACCOUNT_MEASURE_COEF.AsFloat;

  if VarAsType(cdsGridDataIS_ONE_MEASURE.Value, varBoolean) then
    begin
      cdsGridData_SUM_QUANTITY.AsFloat:= VarToFloat(cdsGridDataSUM_QUANTITY.Value);
      cdsGridData_SUM_DETAIL_QUANTITY.AsFloat:= VarToFloat(cdsGridDataSUM_DETAIL_QUANTITY.Value);
      cdsGridData_SUM_MATERIAL_QUANTITY.AsFloat:= VarToFloat(cdsGridDataSUM_MATERIAL_QUANTITY.Value);
      cdsGridData_SUM_MEASURE_ABBREV.AsString:= cdsGridDataMEASURE_ABBREV.AsString;
    end
  else
    begin
      cdsGridData_SUM_QUANTITY.Clear;
      cdsGridData_SUM_DETAIL_QUANTITY.Clear;
      cdsGridData_SUM_MATERIAL_QUANTITY.Clear;
      cdsGridData_SUM_MEASURE_ABBREV.AsString:= SDiffMeasures;
    end;

  if VarAsType(cdsGridDataIS_ONE_ACCOUNT_MEASURE.Value, varBoolean) then
    begin
      cdsGridData_SUM_ACCOUNT_QUANTITY.AsFloat:= VarToFloat(cdsGridDataSUM_ACCOUNT_QUANTITY.Value);
      cdsGridData_SUM_ACCOUNT_DETAIL_QUANTITY.AsFloat:= VarToFloat(cdsGridDataSUM_ACCOUNT_DETAIL_QUANTITY.Value);
      cdsGridData_SUM_ACCOUNT_MATERIAL_QUANTITY.AsFloat:= VarToFloat(cdsGridDataSUM_ACCOUNT_MATERIAL_QUANTITY.Value);
      cdsGridData_SUM_ACCOUNT_MEASURE_ABBREV.AsString:= cdsGridDataACCOUNT_MEASURE_ABBREV.AsString;
    end
  else
    begin
      cdsGridData_SUM_ACCOUNT_QUANTITY.Clear;
      cdsGridData_SUM_ACCOUNT_DETAIL_QUANTITY.Clear;
      cdsGridData_SUM_ACCOUNT_MATERIAL_QUANTITY.Clear;
      cdsGridData_SUM_ACCOUNT_MEASURE_ABBREV.AsString:= SDiffMeasures;
    end;

  cdsGridData_BEGIN_DATE.AsVariant:= cdsGridDataBEGIN_DATE.AsVariant;
  cdsGridData_END_DATE.AsVariant:= cdsGridDataEND_DATE.AsVariant;
end;

procedure TfmResultProductNeeds.cdsGridDataDETAIL_QUANTITY_PRICEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridDataDETAIL_QUANTITY_NOPRICE_DATE);
end;

procedure TfmResultProductNeeds.cdsGridDataMATERIAL_QUANTITY_PRICEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridDataMATERIAL_QUANTITY_NOPRICE_DATE);
end;

procedure TfmResultProductNeeds.cdsGridDataQUANTITY_PRICEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridDataQUANTITY_NOPRICE_DATE);
end;

procedure TfmResultProductNeeds.cdsGridDataSTRUCT_PART_QUANTITY_PRICEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridDataSTRUCT_PART_QTY_NOPRICE_DATE);
end;

procedure TfmResultProductNeeds.cdsGridDataSUM_QUANTITY_PRICEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridDataMIN_QUANTITY_NOPRICE_DATE);
end;

procedure TfmResultProductNeeds.cdsGridDataSUM_STRUCT_PART_QUANTITY_PRICEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridDataMIN_STRUCT_PART_QTY_NOPRICE_DATE);
end;

procedure TfmResultProductNeeds.btnWorkMeasureClick(Sender: TObject);
begin
  inherited;
  SetVisibleColumns;
end;

procedure TfmResultProductNeeds.btnAccountMeasureClick(Sender: TObject);
begin
  inherited;
  SetVisibleColumns;
end;

procedure TfmResultProductNeeds.SetVisibleColumns;
begin
  with grdData do
    begin
      Columns[0].Visible:= not btnToggleProductDisplay.Down;
      Columns[1].Visible:= not btnToggleProductDisplay.Down;
      Columns[2].Visible:= btnToggleProductDisplay.Down;

      Columns[3].Visible:= btnWorkMeasure.Down;
      Columns[4].Visible:= btnWorkMeasure.Down;
      Columns[5].Visible:= btnWorkMeasure.Down;
      Columns[6].Visible:= btnWorkMeasure.Down;

      Columns[7].Visible:= btnAccountMeasure.Down;
      Columns[8].Visible:= btnAccountMeasure.Down;
      Columns[9].Visible:= btnAccountMeasure.Down;
      Columns[10].Visible:= btnAccountMeasure.Down;
    end;
end;

procedure TfmResultProductNeeds.actCopyToClipboardExecute(Sender: TObject);
begin
  inherited;
  actCopyNoToClipboard.Execute;
end;

procedure TfmResultProductNeeds.actCopyNameToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataPRODUCT_NAME.AsString;
end;

procedure TfmResultProductNeeds.actCopyNoToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataPRODUCT_NO.AsString;
end;

procedure TfmResultProductNeeds.grdDataDblClick(Sender: TObject);
begin
  inherited;
  actResultProductNeedsBySale.Execute;
end;

procedure TfmResultProductNeeds.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  MsgParams:= uNeeds.CreateCommonMsgParams(LoginContext, FAspectType, spkResultProduct);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmResultProductNeeds.btnToggleProductDisplayClick(
  Sender: TObject);
begin
  inherited;
  SetVisibleColumns;
end;

procedure TfmResultProductNeeds.actFormUpdate(Sender: TObject);
begin
  inherited;
  btnProductDoc.ImageIndex:=
    cdsGridDataHAS_DOC.AsInteger;

  btnProductDoc.Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmResultProductNeeds.actPrintExecute(Sender: TObject);
begin
  if ReportClass.InheritsFrom(TrptResultProductNeeds) then
    begin
      TrptResultProductNeedsClass(ReportClass).PrintReport(cdsGridData, dsData.DataSet, FAspectType);
    end
  else
    inherited;
end;

procedure TfmResultProductNeeds.btnProductDocClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TControl),
    dotProduct,
    cdsGridData);
end;

end.
