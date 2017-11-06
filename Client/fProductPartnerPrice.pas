unit fProductPartnerPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls,
  Buttons, ExtCtrls, AbmesFields, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateFieldEditFrame, fPartnerFieldEditFrame, fPartnerFieldEditFrameBald,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, fProductFieldEditFrameBald,
  Mask, DBCtrls, ComCtrls, dDocClient, uClientTypes, uBorderRelTypes, ToolWin,
  fPartnerExFieldEditFrame, uParRelProducts, uProducts, DBGridEhGrouping,
  GridsEh, DBGridEh, AbmesDBGrid;

type
  TfmProductPartnerPrice = class(TEditForm)
    pnlMain: TPanel;
    frDate: TfrDateFieldEditFrame;
    lblDate: TLabel;
    frPartner: TfrPartnerFieldEditFrameBald;
    lblPartner: TLabel;
    frProduct: TfrProductFieldEditFrameBald;
    lblProduct: TLabel;
    edtPartnerProductName: TDBEdit;
    lblPartnerProductName: TLabel;
    pcMain: TPageControl;
    tsMain: TTabSheet;
    pnlPriceButtons: TPanel;
    cdsPrice: TAbmesClientDataSet;
    dsPrice: TDataSource;
    cdsPriceITEM_CODE: TAbmesFloatField;
    cdsPricePARENT_CODE: TAbmesFloatField;
    cdsPriceITEM_NAME: TAbmesWideStringField;
    cdsPricePRICE_MODIFIER_NAME: TAbmesWideStringField;
    cdsPriceITEM_VALUE: TAbmesFloatField;
    cdsCurrencies: TAbmesClientDataSet;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsPriceCURRENCY_CODE: TAbmesFloatField;
    cdsPrice_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsPriceIS_PRICE: TAbmesFloatField;
    cdsPriceIS_RESULT_ITEM: TAbmesFloatField;
    cdsPriceITEM_TYPE_CODE: TAbmesFloatField;
    tlbButtons: TToolBar;
    btnEditNode: TToolButton;
    sepEditNode: TToolButton;
    btnPrint: TToolButton;
    actExcludeVAT: TAction;
    actIncludeVAT: TAction;
    actShowInactive: TAction;
    tlbShowInactive: TToolBar;
    btnShowInactive: TToolButton;
    actEditNode: TAction;
    cdsPricePRODUCT_CODE: TAbmesFloatField;
    cdsPricePARTNER_CODE: TAbmesFloatField;
    cdsPriceBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsPriceIS_LAST_CHILD: TAbmesFloatField;
    cdsPriceCURRENCY_ABBREV: TAbmesWideStringField;
    cdsPrintHeader: TAbmesClientDataSet;
    cdsPrintHeaderTHE_DATE: TAbmesDateTimeField;
    cdsPrintHeaderBORDER_REL_TYPE_NAME: TAbmesWideStringField;
    cdsPrintHeaderPARTNER_NO: TAbmesFloatField;
    cdsPrintHeaderPARTNER_NAME: TAbmesWideStringField;
    cdsPrintHeaderPRODUCT_NAME: TAbmesWideStringField;
    cdsPrintHeaderPRODUCT_NO: TAbmesFloatField;
    cdsPrintHeaderPARTNER_PRODUCT_NAME: TAbmesWideStringField;
    cdsPriceFONT_COLOR: TAbmesFloatField;
    cdsPriceBACKGROUND_COLOR: TAbmesFloatField;
    cdsPrintHeaderVAT_INCLUDED: TAbmesFloatField;
    cdsDataTHE_DATE: TAbmesSQLTimeStampField;
    cdsDataPARTNER_CODE: TAbmesFloatField;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataCOMMON_PARTNER_CODE: TAbmesFloatField;
    cdsDataCOMMON_PRODUCT_CODE: TAbmesFloatField;
    cdsDataPARTNER_PRODUCT_NAME: TAbmesWideStringField;
    cdsDataPAR_REL_PRODUCT_PRICE: TAbmesFloatField;
    cdsDataPAR_REL_PRODUCT_CURRENCY_CODE: TAbmesFloatField;
    cdsDataPAR_REL_PRODUCT_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDataCPRODUCT_PRP_PRICE: TAbmesFloatField;
    cdsDataCPRODUCT_PRP_CURRENCY_CODE: TAbmesFloatField;
    cdsDataCPRODUCT_PRP_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDataCPARTNER_PRP_PRICE: TAbmesFloatField;
    cdsDataCPARTNER_PRP_CURRENCY_CODE: TAbmesFloatField;
    cdsDataCPARTNER_PRP_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDataCPROD_CPAR_PRP_PRICE: TAbmesFloatField;
    cdsDataCPROD_CPAR_PRP_CURRENCY_CODE: TAbmesFloatField;
    cdsDataCPROD_CPAR_PRP_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDataPRODUCT_PERIOD_PRICE: TAbmesFloatField;
    cdsDataPRODUCT_PERIOD_CURRENCY_CODE: TAbmesFloatField;
    cdsDataPRODUCT_PERIOD_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDataPROD_PER_PRICE_OVERRIDDEN: TAbmesFloatField;
    cdsDataPARTNER_PRICE_MODIFIER_NAME: TAbmesWideStringField;
    cdsDataCPARTNER_PRICE_MODIFIER_NAME: TAbmesWideStringField;
    cdsDataVAT_PERCENT: TAbmesFloatField;
    cdsDateUnits: TAbmesClientDataSet;
    cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsPriceDATE_UNIT_CODE: TAbmesFloatField;
    cdsPrice_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsPriceDATE_UNIT_NAME: TAbmesWideStringField;
    cdsPrintHeaderTITLE: TAbmesWideStringField;
    cdsDataPRP_PRICE_OVERRIDDEN: TAbmesFloatField;
    cdsDataMEASURE_ABBREV: TAbmesWideStringField;
    edtMeasureAbbrev: TDBEdit;
    lblMeasureAbbrev: TLabel;
    cdsPrintHeaderMEASURE_ABBREV: TAbmesWideStringField;
    cdsPrintHeaderOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsBorderDealTypes: TAbmesClientDataSet;
    cdsBorderDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsBorderDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsDataPARTNER_PRICE_MODIFIER_VALUE: TAbmesFloatField;
    cdsDataCPARTNER_PRICE_MODIFIER_VALUE: TAbmesFloatField;
    cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField;
    pnlPartnerProductName: TPanel;
    pnlPriceButtonsClient: TPanel;
    tlbTogglePrices: TToolBar;
    btnExcludeVAT: TToolButton;
    btnIncludeVAT: TToolButton;
    ToolButton1: TToolButton;
    grdPrice: TAbmesDBGrid;
    cdsPriceHAS_CHILDREN: TAbmesFloatField;
    cdsPriceLEVEL_NO: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure actExcludeVATExecute(Sender: TObject);
    procedure actIncludeVATExecute(Sender: TObject);
    procedure cdsPriceITEM_VALUEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actShowInactiveExecute(Sender: TObject);
    procedure actEditNodeUpdate(Sender: TObject);
    procedure actEditNodeExecute(Sender: TObject);
    procedure cdsPriceCalcFields(DataSet: TDataSet);
    procedure tlPriceDblClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure cdsPriceBeforePost(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure grdPriceGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    FVatPercent: Double;
    FBorderRelType: TBorderRelType;
    FObtainmentType: TObtainmentType;
    FFormCaption: string;
    FProductClass: TProductClass;
    FProductClientUtilsMsgParams: TStrings;
    FBorderRelTypeMsgParams: TStringList;
    procedure GeneratePriceTree;
    procedure AddPriceItems;
    function GetBorderDealTypeName: string;
    function BorderRelTypePriceVisible: Boolean;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetFormCaption: string; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductCode: Integer = 0; APartnerCode: Integer = -1;
      ABorderRelType: TBorderRelType = brtNone;
      AObtainmentType: TObtainmentType = otNone;
      ADate: TDateTime = 0;
      AIncludeVAT: Boolean = False); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductCode: Integer = 0; APartnerCode: Integer = -1;
      ABorderRelType: TBorderRelType = brtNone;
      AObtainmentType: TObtainmentType = otNone;
      ADate: TDateTime = 0;
      AIncludeVAT: Boolean = False): Boolean;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  dMain, uUtils, StrUtils, uClientUtils, Math, fParRelProduct, fProductPeriods,
  fParRel, rProductPartnerPrice,
  uBorderRelTypeClientUtils, uProductClientUtils, uMessageDecodingUtils,
  uTreeListUtils;

resourcestring
  SPriceItem1 = '%ParRelProductAbbrev% (%ProductClassAbbrev% + Партньор)';
  SPriceItem11 = 'Базова цена - %ProductPeriodAbbrev%';
  SPriceItem111 = 'Базова цена - %ProductPeriodAbbrev% на Обобщаващ';
  SPriceItem12 = 'Отстъпка - УМ Пар';
  SPriceItem121 = 'Отстъпка - УМ Пар на Обобщаващ';
  SPriceItem2 = '%ParRelProductAbbrev%* (Обобщаващ %ProductClassAbbrev% + Партньор)';
  SPriceItem3 = '%ParRelProductAbbrev%* (%ProductClassAbbrev% + Обобщаващ Партньор)';
  SPriceItem4 = '%ParRelProductAbbrev%* (Обобщаващ %ProductClassAbbrev% + Обобщаващ Партньор)';
  SPriceItem5 = 'Изчислена цена';
  SPriceItem51 = 'Базова цена - %ProductPeriodAbbrev%';
  SPriceItem511 = 'Базова цена - %ProductPeriodAbbrev% на Обобщаващ';
  SPriceItem52 = 'Отстъпка - УМ Пар';
  SPriceItem521 = 'Отстъпка - УМ Пар на Обобщаващ';

{$R *.dfm}

const
  itNone = 0;
  itFinal = 1;
  itPrice = 2;
  itModifier = 3;

procedure TfmProductPartnerPrice.cdsPriceBeforePost(DataSet: TDataSet);
const
  LineColors: array[itNone..itModifier] of TColor = (0, clSkyBlue, clMoneyGreen, $00ADA7F8);
begin
  inherited;

  cdsPriceCURRENCY_ABBREV.Assign(cdsPrice_CURRENCY_ABBREV);
  cdsPriceDATE_UNIT_NAME.Assign(cdsPrice_DATE_UNIT_NAME);

  if not cdsPriceIS_RESULT_ITEM.AsBoolean then
    cdsPriceFONT_COLOR.AsFloat:= clGray;

  if not cdsPriceITEM_VALUE.IsNull then
    cdsPriceBACKGROUND_COLOR.AsVariant:=
      IntToVar(LineColors[cdsPriceITEM_TYPE_CODE.AsInteger]);
end;

procedure TfmProductPartnerPrice.cdsPriceCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsPriceBORDER_REL_TYPE_CODE.AsInteger:=
    cdsData.Params.ParamByName('BORDER_REL_TYPE_CODE').AsInteger;
end;

procedure TfmProductPartnerPrice.cdsPriceITEM_VALUEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    begin
      if Sender.IsNull then
        Text:= ''
      else
        begin
          if (cdsPriceITEM_TYPE_CODE.AsInteger = itModifier) then
            Text:=FormatFloat('0.#%', Sender.AsFloat * 100)
          else
            Text:=
              FormatFloat('0.00',
                Sender.AsFloat * (1 + IfThen(actIncludeVAT.Checked, FVatPercent)))
        end;
    end;
end;

procedure TfmProductPartnerPrice.OpenDataSets;
begin
  cdsCurrencies.Open;
  cdsDateUnits.Open;
  inherited;
end;

procedure TfmProductPartnerPrice.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductCode, APartnerCode: Integer; ABorderRelType: TBorderRelType;
  AObtainmentType: TObtainmentType; ADate: TDateTime; AIncludeVAT: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);

  FBorderRelType:= ABorderRelType;
  FObtainmentType:= AObtainmentType;

  cdsData.Params.ParamByName('PRODUCT_CODE').AsInteger:= AProductCode;
  cdsData.Params.ParamByName('PARTNER_CODE').Value:= IfThen((APartnerCode = -1), Null, APartnerCode);
  cdsData.Params.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:= BorderRelTypeToInt(ABorderRelType);
  cdsData.Params.ParamByName('OBTAINMENT_TYPE_CODE').AsInteger:= ObtainmentTypeToInt(AObtainmentType);
  cdsData.Params.ParamByName('THE_DATE').AsDateTime:= ADate;
  FVatPercent:= dmMain.SvrFinance.GetVatPercent(ADate);

  if AIncludeVAT then
    actIncludeVAT.Execute;
end;

class function TfmProductPartnerPrice.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductCode, APartnerCode: Integer; ABorderRelType: TBorderRelType;
  AObtainmentType: TObtainmentType; ADate: TDateTime; AIncludeVAT: Boolean): Boolean;
var
  f: TfmProductPartnerPrice;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin,
      AProductCode, APartnerCode, ABorderRelType, AObtainmentType, ADate, AIncludeVAT);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmProductPartnerPrice.grdPriceGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if not VarIsNull(grdPrice.DataSource.DataSet.FieldByName('FONT_COLOR').AsVariant) then
    AFont.Color:= grdPrice.DataSource.DataSet.FieldByName('FONT_COLOR').AsVariant;

  if not VarIsNull(grdPrice.DataSource.DataSet.FieldByName('BACKGROUND_COLOR').AsVariant) then
    Background:= grdPrice.DataSource.DataSet.FieldByName('BACKGROUND_COLOR').AsVariant;
end;

procedure TfmProductPartnerPrice.tlPriceDblClick(Sender: TObject);
begin
  inherited;
  actEditNode.Execute;
end;

procedure TfmProductPartnerPrice.CloseDataSets;
begin
  inherited;
  cdsDateUnits.Close;
  cdsCurrencies.Close;
end;

procedure TfmProductPartnerPrice.Finalize;
begin
  inherited;
  FreeAndNil(FProductClientUtilsMsgParams);
  FreeAndNil(FBorderRelTypeMsgParams);
end;

procedure TfmProductPartnerPrice.FormCreate(Sender: TObject);
begin
  inherited;
  ReportClass:= TrptProductPartnerPrice;
  frDate.FieldNames:= 'THE_DATE';
  frPartner.FieldNames:= 'PARTNER_CODE';

  RegisterFieldsTextVisibility(
    BorderRelTypePriceVisible,
    [ cdsPriceITEM_VALUE,
      cdsPriceCURRENCY_ABBREV,
      cdsPrice_CURRENCY_ABBREV]);
end;

procedure TfmProductPartnerPrice.actEditNodeExecute(Sender: TObject);
begin
  inherited;

  case cdsPriceITEM_TYPE_CODE.AsInteger of
    itFinal:
      TfmParRelProduct.ShowForm(dmDocClient, cdsPrice, EditMode, doNone, True,
        cdsDataTHE_DATE.AsDateTime);

    itPrice:
      TfmProductPeriods.ShowForm(dmDocClient, cdsPrice, EditMode, doNone, True,
        cdsDataTHE_DATE.AsDateTime);

    itModifier:
      TfmParRel.ShowForm(dmDocClient, nil, EditMode, doNone, True,
        cdsPricePARTNER_CODE.AsInteger,
        FBorderRelType,
        cdsDataTHE_DATE.AsDateTime);
  end;
end;

procedure TfmProductPartnerPrice.actEditNodeUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    ( (cdsPriceITEM_TYPE_CODE.AsInteger = itFinal) and
      (not cdsPricePRODUCT_CODE.IsNull) and
      (not cdsPricePARTNER_CODE.IsNull) ) or
    ( (cdsPriceITEM_TYPE_CODE.AsInteger = itPrice) and
      (not cdsPricePRODUCT_CODE.IsNull) ) or
    ( (cdsPriceITEM_TYPE_CODE.AsInteger = itModifier) and
      (not cdsPricePARTNER_CODE.IsNull) );

  if (EditMode = emReadOnly) then
    (Sender as TAction).Hint:= SReadOnlyCaption
  else
    (Sender as TAction).Hint:= SEditCaption;
end;

procedure TfmProductPartnerPrice.actExcludeVATExecute(Sender: TObject);
begin
  inherited;
  GeneratePriceTree;
end;

procedure TfmProductPartnerPrice.actFormUpdate(Sender: TObject);
begin
  inherited;
  tlbTogglePrices.Visible:= (FProductClass <> pcFinancial);
  pnlPartnerProductName.Visible:= (FProductClass <> pcFinancial);
end;

procedure TfmProductPartnerPrice.actIncludeVATExecute(Sender: TObject);
begin
  inherited;
  if Visible then
    GeneratePriceTree;
end;

procedure TfmProductPartnerPrice.actPrintExecute(Sender: TObject);
begin
  cdsPrice.TempDisableControls /
    cdsPrice.PreserveBookmark /
      cdsPrice.TempUnfilter /
        cdsPrice.TempIndexFields('')/
          procedure begin
            cdsPrintHeader.CreateDataSet;
            try
              cdsPrintHeader.AppendRecord([
                Caption,
                cdsDataTHE_DATE.AsDateTime,
                lblPartner.Caption,
                frPartner.cdsPartnerCOMPANY_NO.AsVariant,
                frPartner.cdsPartner_PARTNER_NAME.AsVariant,
                frProduct.cdsTreeNodeNODE_NAME.AsVariant,
                frProduct.cdsTreeNodeNODE_NO.AsVariant,
                cdsDataMEASURE_ABBREV.AsVariant,
                cdsDataPARTNER_PRODUCT_NAME.AsVariant,
                Ord(actIncludeVAT.Checked),
                ObtainmentTypeToInt(FObtainmentType)
              ]);

              TrptProductPartnerPrice.PrintReport(cdsPrice, cdsPrintHeader);
            finally
              cdsPrintHeader.Close;
            end;
          end;
end;

procedure TfmProductPartnerPrice.actShowInactiveExecute(Sender: TObject);
begin
  inherited;
  if Visible then
    GeneratePriceTree;
end;

procedure TfmProductPartnerPrice.AddPriceItems;

  procedure AddPriceItem(AItemCode: Integer; AParentCode: Variant;
    AItemTypeCode: Integer; AIsLastChild: Boolean;
    AIsResultItem: Boolean; AItemName, APriceModifierName: string;
    AItemValue, ACurrencyCode, ADateUnitCode: Variant;
    AProductCode, APartnerCode: Variant; ALevelNo: Integer; AHasChildren: Boolean);
  begin
    AItemName:=
      StringReplace(AItemName, '%ParRelProductAbbrev%', ParRelProductAbbrev(pcNormal, FBorderRelType), []);

    AItemName:= FormatMessage(AItemName, FProductClientUtilsMsgParams);
    AItemName:= FormatMessage(AItemName, FBorderRelTypeMsgParams);

    if (AItemCode < 10) then
      AItemName:= Format('%d  %s', [AItemCode, AItemName]);

    cdsPrice.Append;
    try
      cdsPriceITEM_CODE.AsInteger:= AItemCode;
      cdsPricePARENT_CODE.AsVariant:= AParentCode;
      cdsPriceITEM_TYPE_CODE.AsInteger:= AItemTypeCode;
      cdsPriceIS_LAST_CHILD.AsBoolean:= AIsLastChild;
      cdsPriceIS_RESULT_ITEM.AsBoolean:= AIsResultItem;
      cdsPriceITEM_NAME.AsString:= AItemName;

      if AIsResultItem then
        begin
          if (AItemTypeCode = itModifier) and not VarIsNull(AItemValue) then
            AItemValue:= 1 - AItemValue;

          cdsPricePRICE_MODIFIER_NAME.AsString:= APriceModifierName;
          cdsPriceITEM_VALUE.AsVariant:= AItemValue;
          cdsPriceCURRENCY_CODE.AsVariant:= ACurrencyCode;
          cdsPriceDATE_UNIT_CODE.AsVariant:= ADateUnitCode;
        end;

      cdsPricePRODUCT_CODE.AsVariant:= AProductCode;
      cdsPricePARTNER_CODE.AsVariant:= APartnerCode;
      cdsPriceLEVEL_NO.AsInteger:= ALevelNo;
      cdsPriceHAS_CHILDREN.AsBoolean:= AHasChildren;

      cdsPrice.Post;
    except
      cdsPrice.Cancel;
      raise;
    end;
  end;  { AddPriceItem }

var
  Price: Variant;
begin
  AddPriceItem(1, Null, itFinal, False,
    (not cdsDataPAR_REL_PRODUCT_PRICE.IsNull),
    SPriceItem1,
    '',
    cdsDataPAR_REL_PRODUCT_PRICE.AsVariant,
    cdsDataPAR_REL_PRODUCT_CURRENCY_CODE.AsVariant,
    cdsDataPAR_REL_PRODUCT_DATE_UNIT_CODE.AsVariant,
    cdsDataPRODUCT_CODE.AsVariant, cdsDataPARTNER_CODE.AsVariant,
    0, True);

  AddPriceItem(11, 1, itPrice, False,
    (not cdsDataPAR_REL_PRODUCT_PRICE.IsNull) and
      (not cdsDataPRODUCT_PERIOD_PRICE.IsNull) and (not cdsDataPRP_PRICE_OVERRIDDEN.AsBoolean),
    SPriceItem11,
    '',
    IfThen(cdsDataPROD_PER_PRICE_OVERRIDDEN.AsBoolean, cdsDataPRODUCT_PERIOD_PRICE.AsVariant, Null),
    IfThen(cdsDataPROD_PER_PRICE_OVERRIDDEN.AsBoolean, cdsDataPRODUCT_PERIOD_CURRENCY_CODE.AsVariant, Null),
    IfThen(cdsDataPROD_PER_PRICE_OVERRIDDEN.AsBoolean, cdsDataPRODUCT_PERIOD_DATE_UNIT_CODE.AsVariant, Null),
    cdsDataPRODUCT_CODE.AsVariant, Null,
    1, True);

  AddPriceItem(111, 11, itPrice, True,
    (not cdsDataPAR_REL_PRODUCT_PRICE.IsNull) and
      (not cdsDataPRODUCT_PERIOD_PRICE.IsNull) and (not cdsDataPRP_PRICE_OVERRIDDEN.AsBoolean) and
        (not cdsDataPROD_PER_PRICE_OVERRIDDEN.AsBoolean),
    SPriceItem111,
    '',
    cdsDataPRODUCT_PERIOD_PRICE.AsVariant,
    cdsDataPRODUCT_PERIOD_CURRENCY_CODE.AsVariant,
    cdsDataPRODUCT_PERIOD_DATE_UNIT_CODE.AsVariant,
    cdsDataCOMMON_PRODUCT_CODE.AsVariant, Null,
    2, False);

  AddPriceItem(12, 1, itModifier, True,
    (not cdsDataPAR_REL_PRODUCT_PRICE.IsNull) and
      (not cdsDataPAR_REL_PRODUCT_PRICE.IsNull) and (not cdsDataPRP_PRICE_OVERRIDDEN.AsBoolean) and
        ((not cdsDataPARTNER_PRICE_MODIFIER_VALUE.IsNull) or (not cdsDataCPARTNER_PRICE_MODIFIER_VALUE.IsNull)),
    SPriceItem12,
    IfThen(not cdsDataPARTNER_PRICE_MODIFIER_VALUE.IsNull, cdsDataPARTNER_PRICE_MODIFIER_NAME.AsString),
    cdsDataPARTNER_PRICE_MODIFIER_VALUE.AsVariant,
    Null,
    Null,
    Null, cdsDataPARTNER_CODE.AsVariant,
    1, True);

  AddPriceItem(121, 12, itModifier, True,
    (not cdsDataPAR_REL_PRODUCT_PRICE.IsNull) and
      (not cdsDataPAR_REL_PRODUCT_PRICE.IsNull) and (not cdsDataPRP_PRICE_OVERRIDDEN.AsBoolean) and
        cdsDataPARTNER_PRICE_MODIFIER_VALUE.IsNull and (not cdsDataCPARTNER_PRICE_MODIFIER_VALUE.IsNull),
    SPriceItem121,
    cdsDataCPARTNER_PRICE_MODIFIER_NAME.AsString,
    cdsDataCPARTNER_PRICE_MODIFIER_VALUE.AsVariant,
    Null,
    Null,
    Null, cdsDataCOMMON_PARTNER_CODE.AsVariant,
    2, False);

  AddPriceItem(2, Null, itFinal, False,
    cdsDataPAR_REL_PRODUCT_PRICE.IsNull and
      (not cdsDataCPRODUCT_PRP_PRICE.IsNull),
    SPriceItem2,
    '',
    cdsDataCPRODUCT_PRP_PRICE.AsVariant,
    cdsDataCPRODUCT_PRP_CURRENCY_CODE.AsVariant,
    cdsDataCPRODUCT_PRP_DATE_UNIT_CODE.AsVariant,
    cdsDataCOMMON_PRODUCT_CODE.AsVariant, cdsDataPARTNER_CODE.AsVariant,
    0, False);

  AddPriceItem(3, Null, itFinal, False,
    cdsDataPAR_REL_PRODUCT_PRICE.IsNull and cdsDataCPRODUCT_PRP_PRICE.IsNull and
      (not cdsDataCPARTNER_PRP_PRICE.IsNull),
    SPriceItem3,
    '',
    cdsDataCPARTNER_PRP_PRICE.AsVariant,
    cdsDataCPARTNER_PRP_CURRENCY_CODE.AsVariant,
    cdsDataCPARTNER_PRP_DATE_UNIT_CODE.AsVariant,
    cdsDataPRODUCT_CODE.AsVariant, cdsDataCOMMON_PARTNER_CODE.AsVariant,
    0, False);

  AddPriceItem(4, Null, itFinal, False,
    cdsDataPAR_REL_PRODUCT_PRICE.IsNull and cdsDataCPRODUCT_PRP_PRICE.IsNull and cdsDataCPARTNER_PRP_PRICE.IsNull and
      (not cdsDataCPROD_CPAR_PRP_PRICE.IsNull),
    SPriceItem4,
    '',
    cdsDataCPROD_CPAR_PRP_PRICE.AsVariant,
    cdsDataCPROD_CPAR_PRP_CURRENCY_CODE.AsVariant,
    cdsDataCPROD_CPAR_PRP_DATE_UNIT_CODE.AsVariant,
    cdsDataCOMMON_PRODUCT_CODE.AsVariant, cdsDataCOMMON_PARTNER_CODE.AsVariant,
    0, False);


  Price:=
    VarMult(
      cdsDataPRODUCT_PERIOD_PRICE.AsVariant,
      IfThen(not cdsDataPARTNER_PRICE_MODIFIER_VALUE.IsNull,
             cdsDataPARTNER_PRICE_MODIFIER_VALUE.AsVariant,
             IfThen(not cdsDataCPARTNER_PRICE_MODIFIER_VALUE.IsNull,
               cdsDataCPARTNER_PRICE_MODIFIER_VALUE.AsVariant,
               1
             )
      )
    );

  if not VarIsNull(Price) then
    Price:= RealRoundTo(Price, -2);

  AddPriceItem(5, Null, itFinal, True,
    cdsDataPAR_REL_PRODUCT_PRICE.IsNull and cdsDataCPRODUCT_PRP_PRICE.IsNull and cdsDataCPARTNER_PRP_PRICE.IsNull and cdsDataCPROD_CPAR_PRP_PRICE.IsNull and
      (not cdsDataPRODUCT_PERIOD_PRICE.IsNull),
    SPriceItem5,
    '',
    Price,
    cdsDataPRODUCT_PERIOD_CURRENCY_CODE.AsVariant,
    cdsDataPRODUCT_PERIOD_DATE_UNIT_CODE.AsVariant,
    Null, Null,
    0, True);

  AddPriceItem(51, 5, itPrice, False,
    cdsDataPAR_REL_PRODUCT_PRICE.IsNull and cdsDataCPRODUCT_PRP_PRICE.IsNull and cdsDataCPARTNER_PRP_PRICE.IsNull and cdsDataCPROD_CPAR_PRP_PRICE.IsNull and
      (not cdsDataPRODUCT_PERIOD_PRICE.IsNull),
    SPriceItem51,
    '',
    IfThen(cdsDataPROD_PER_PRICE_OVERRIDDEN.AsBoolean, cdsDataPRODUCT_PERIOD_PRICE.AsVariant, Null),
    IfThen(cdsDataPROD_PER_PRICE_OVERRIDDEN.AsBoolean, cdsDataPRODUCT_PERIOD_CURRENCY_CODE.AsVariant, Null),
    IfThen(cdsDataPROD_PER_PRICE_OVERRIDDEN.AsBoolean, cdsDataPRODUCT_PERIOD_DATE_UNIT_CODE.AsVariant, Null),
    cdsDataPRODUCT_CODE.AsVariant, Null,
    1, True);

  AddPriceItem(511, 51, itPrice, True,
    cdsDataPAR_REL_PRODUCT_PRICE.IsNull and cdsDataCPRODUCT_PRP_PRICE.IsNull and cdsDataCPARTNER_PRP_PRICE.IsNull and cdsDataCPROD_CPAR_PRP_PRICE.IsNull and
      (not cdsDataPRODUCT_PERIOD_PRICE.IsNull) and (not cdsDataPROD_PER_PRICE_OVERRIDDEN.AsBoolean),
    SPriceItem511,
    '',
    cdsDataPRODUCT_PERIOD_PRICE.AsVariant,
    cdsDataPRODUCT_PERIOD_CURRENCY_CODE.AsVariant,
    cdsDataPRODUCT_PERIOD_DATE_UNIT_CODE.AsVariant,
    cdsDataCOMMON_PRODUCT_CODE.AsVariant, Null,
    2, False);

  AddPriceItem(52, 5, itModifier, True,
    cdsDataPAR_REL_PRODUCT_PRICE.IsNull and cdsDataCPRODUCT_PRP_PRICE.IsNull and cdsDataCPARTNER_PRP_PRICE.IsNull and cdsDataCPROD_CPAR_PRP_PRICE.IsNull and
      (not cdsDataPRODUCT_PERIOD_PRICE.IsNull) and ((not cdsDataPARTNER_PRICE_MODIFIER_VALUE.IsNull) or (not cdsDataCPARTNER_PRICE_MODIFIER_VALUE.IsNull)),
    SPriceItem52,
    IfThen(not cdsDataPARTNER_PRICE_MODIFIER_VALUE.IsNull, cdsDataPARTNER_PRICE_MODIFIER_NAME.AsString),
    cdsDataPARTNER_PRICE_MODIFIER_VALUE.AsVariant,
    Null,
    Null,
    Null, cdsDataPARTNER_CODE.AsVariant,
    1, True);

  AddPriceItem(521, 52, itModifier, True,
    cdsDataPAR_REL_PRODUCT_PRICE.IsNull and cdsDataCPRODUCT_PRP_PRICE.IsNull and cdsDataCPARTNER_PRP_PRICE.IsNull and cdsDataCPROD_CPAR_PRP_PRICE.IsNull and
      (not cdsDataPRODUCT_PERIOD_PRICE.IsNull) and cdsDataPARTNER_PRICE_MODIFIER_VALUE.IsNull and (not cdsDataCPARTNER_PRICE_MODIFIER_VALUE.IsNull),
    SPriceItem521,
    cdsDataCPARTNER_PRICE_MODIFIER_NAME.AsString,
    cdsDataCPARTNER_PRICE_MODIFIER_VALUE.AsVariant,
    Null,
    Null,
    Null, cdsDataCOMMON_PARTNER_CODE.AsVariant,
    2, False);
end;  { AddPriceItems }

function TfmProductPartnerPrice.BorderRelTypePriceVisible: Boolean;
begin
  Result:=
    ((FBorderRelType = brtClient) and IsSalePriceVisible) or
    ((FBorderRelType = brtVendor) and IsLevelOneInvestedValueVisible);
end;

procedure TfmProductPartnerPrice.GeneratePriceTree;
var
  b: TBookmark;
begin
  Screen.TempCursor(crHourGlass) /
    cdsPrice.TempDisableControls /
      procedure begin
        if cdsPrice.Active then
          b:= cdsPrice.Bookmark
        else
          b:= nil;
        try
          cdsPrice.Close;
          cdsPrice.CreateDataSet;
          cdsPrice.Filtered:= not btnShowInactive.Down;

          AddPriceItems;
        finally
          if Assigned(b) and cdsPrice.BookmarkValid(b) then
            cdsPrice.Bookmark:= b
          else
            cdsPrice.First;
        end;
      end;

  grdPrice.ConvertToTreeList('ITEM_CODE', 'PARENT_CODE');
end;

function TfmProductPartnerPrice.GetBorderDealTypeName: string;
var
  s: string;
  p: Integer;
begin
  cdsBorderDealTypes.Params.AssignValues(cdsData.Params);
  cdsBorderDealTypes.TempOpen /
    procedure begin
      s:= cdsBorderDealTypesBORDER_DEAL_TYPE_NAME.AsString;
      if (s <> '') then
        begin
          p:= Pos(' ', s);
          if (p > 0) then
            begin
              p:= PosEx(' ', s, p + 1);
              if (p > 0) then
                s:= LeftStr(s, p - 1);
            end;
        end;
    end;

  Result:= s;
end;

function TfmProductPartnerPrice.GetFormCaption: string;
begin
  Result:= FFormCaption;
end;

procedure TfmProductPartnerPrice.Initialize;
begin
  inherited;

  FProductClass:= IntToProductClass(cdsDataPRODUCT_CLASS_CODE.AsInteger);

  grdPrice.Columns[1].Visible:= (FObtainmentType = otLease);

  FProductClientUtilsMsgParams:=
    uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);

  FBorderRelTypeMsgParams:=
    uBorderRelTypeClientUtils.CreateCommonMsgParams(FBorderRelType);

  RecursivelyFormatCaptions(Self, FProductClientUtilsMsgParams);
  RecursivelyFormatCaptions(Self, FBorderRelTypeMsgParams);

  FFormCaption:= actForm.Caption + GetBorderDealTypeName;

  GeneratePriceTree;

  if LoginContext.DefaultIncludeVAT and (FProductClass <> pcFinancial) then
    actIncludeVAT.Execute;
end;

end.
