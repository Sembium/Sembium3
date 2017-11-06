unit fProductQuantitiesTree;
                                                     
interface                           
                                                                         
uses               
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fProductsTree, Menus, Db, DBClient, ImgList, ActnList, ComCtrls, GridsEh,
  ColorNavigator, ToolWin, Buttons, ExtCtrls, fTreeNomEditorForm,
  AbmesClientDataSet, DBGridEh, AbmesDBGrid, StdCtrls, TreeParentsComboBox,
  DBCtrls, AbmesFields, JvButtons, fBaseFrame, fDBFrame,
  fTreeNodeParamsFrame, fEditForm, JvComponent, JvCaptionButton,
  JvComponentBase, ParamDataSet, AbmesDBCheckBox, dDocClient, fTreeForm,
  fTreeSelectForm, uProducts, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions,
  uExcelExport;

type
  TfmProductQuantitiesTree = class(TfmProductsTree)
    cdsNodeChildrenLOCAL_QUANTITY: TAbmesFloatField;
    cdsNodeChildrenTOTAL_QUANTITY: TAbmesFloatField;
    cdsPrintTreeLOCAL_QUANTITY: TAbmesFloatField;
    cdsPrintTreeTOTAL_QUANTITY: TAbmesFloatField;
    cdsNodeChildrenMEASURE_ABBREV: TAbmesWideStringField;
    cdsPrintTreeMEASURE_ABBREV: TAbmesWideStringField;
    pmChildren: TPopupMenu;
    miOpenChild: TMenuItem;
    N1: TMenuItem;
    actViewStoreQuantities: TAction;
    miViewStoreQuantities: TMenuItem;
    btnViewStoreQuantities: TToolButton;
    cdsNodeChildrenLOCAL_TOTAL_PRICE: TAbmesFloatField;
    cdsNodeChildrenTOTAL_TOTAL_PRICE: TAbmesFloatField;
    cdsPrintTreeLOCAL_TOTAL_PRICE: TAbmesFloatField;
    cdsPrintTreeTOTAL_TOTAL_PRICE: TAbmesFloatField;
    btnShowPrices: TToolButton;
    actShowInvestedValue1: TAction;
    lblLegend: TLabel;
    cdsNodeChildrenACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsNodeChildrenLOCAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsNodeChildrenTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    actShowQuantities: TAction;
    actShowAccountQuantities: TAction;
    btnShowQuantities: TToolButton;
    btnShowAccountQuantities: TToolButton;
    cdsPrintTreeACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsPrintTreeLOCAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsPrintTreeTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsNodeChildrenLOCAL_MARKET_TOTAL_PRICE: TAbmesFloatField;
    cdsNodeChildrenTOTAL_MARKET_TOTAL_PRICE: TAbmesFloatField;
    actShowMarketPrices: TAction;
    btnShowMarketPrices: TToolButton;
    cdsNodeChildrenPARTNER_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    cdsNodeChildrenBASE_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    cdsNodeChildrenPARTNER_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField;
    cdsNodeChildrenBASE_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField;
    pnlToggles: TPanel;
    tlbToggleQuantityPrices: TToolBar;
    tlbTogglePrices: TToolBar;
    actShowSalePrices: TAction;
    actShowDeliveryPrices: TAction;
    btnShowSalePrices: TToolButton;
    btnShowDeliveryPrices: TToolButton;
    actShowAggergatedValues: TAction;
    sepShowAggergatedValues: TToolButton;
    btnShowAggergatedValues: TToolButton;
    cdsPrintTreeLOCAL_MARKET_TOTAL_PRICE: TAbmesFloatField;
    cdsPrintTreeTOTAL_MARKET_TOTAL_PRICE: TAbmesFloatField;
    cdsPrintTreePARTNER_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    cdsPrintTreeBASE_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    cdsPrintTreePARTNER_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField;
    cdsPrintTreeBASE_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField;
    actIncludeVAT: TAction;
    actExcludeVAT: TAction;
    sepShowSalePrices: TToolButton;
    tlbPriceCommands: TToolBar;
    btnProductPartnerPrice: TToolButton;
    sepProductPartnerPrice: TToolButton;
    actProductPartnerPrice: TAction;
    tlbToggleVAT: TToolBar;
    sepExcludeVAT: TToolButton;
    btnExcludeVAT: TToolButton;
    btnIncludeVAT: TToolButton;
    cdsPrintTreeNODE_PARAM_NAMES: TAbmesWideStringField;
    cdsPrintTreeNODE_PARAM_VALUES: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure actViewStoreQuantitiesUpdate(Sender: TObject);
    procedure actViewStoreQuantitiesExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actShowQuantitiesExecute(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
    procedure cdsPrintTreeBeforeOpen(DataSet: TDataSet);
    procedure cdsNodeChildrenBeforeOpen(DataSet: TDataSet);
    procedure actShowMarketPricesExecute(Sender: TObject);
    procedure actShowAccountQuantitiesUpdate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actShowSalePricesExecute(Sender: TObject);
    procedure actShowDeliveryPricesExecute(Sender: TObject);
    procedure actShowAggergatedValuesExecute(Sender: TObject);
    procedure GetPriceFieldText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actExcludeVATExecute(Sender: TObject);
    procedure actIncludeVATExecute(Sender: TObject);
    procedure actProductPartnerPriceUpdate(Sender: TObject);
    procedure actProductPartnerPriceExecute(Sender: TObject);
  private
    FVatPercent: Real;
    FPartnerCode: Integer;
    procedure SetColumnsDisplay;
  protected
    function GetExcelExportSubTreeMoreCellsDataFunc: TGetMoreCellsDataFunc; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ANodeID: Integer = 0; ARootNodeID: Integer = 1;
      ATreeDetailSelection: TTreeDetailSelection = tdsAll;
      AProductClass: TProductClass = pcNormal;
      APartnerCode: Integer = -1); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ANodeID: Integer = 0; ARootNodeID: Integer = 1;
      ATreeDetailSelection: TTreeDetailSelection = tdsAll;
      AProductClass: TProductClass = pcNormal;
      APartnerCode: Integer = -1): Integer;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, fProductQuantitiesTreeEdit, rProductQuantitiesTree,
  uClientUtils, uClientTypes, uToolbarUtils, uUtils, Variants,
  uClientDateTime, Math, uTreeNodes, uBorderRelTypes, fProductPartnerPrice,
  uParRelProducts, uUserActivityConsts;

resourcestring
  SSinglePricesForPartner = ' Единичните цени са за %s (%d).';

{$R *.DFM}

{ TfmProductQuantitiesTree }

procedure TfmProductQuantitiesTree.FormCreate(Sender: TObject);
begin                                     
  inherited;                        

  ReportClass:= TrptProductQuantitiesTree;

  lblLegend.Caption:= FormatBaseCurrencyAbbrevString(lblLegend.Caption);

  btnViewStoreQuantities.Left:= tlbShowVIM.Left;

  FVatPercent:= dmMain.SvrFinance.GetVatPercent(ContextDate);

  RegisterChildrenAction(actViewStoreQuantities);

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsNodeChildrenLOCAL_TOTAL_PRICE,
      cdsNodeChildrenTOTAL_TOTAL_PRICE,
      cdsNodeChildrenPARTNER_DELIVERY_ACQUIRE_PRICE,
      cdsNodeChildrenBASE_DELIVERY_ACQUIRE_PRICE]);

  RegisterFieldsTextVisibility(
    IsSalePriceVisible,
    [ cdsNodeChildrenLOCAL_MARKET_TOTAL_PRICE,
      cdsNodeChildrenTOTAL_MARKET_TOTAL_PRICE,
      cdsNodeChildrenPARTNER_SALE_ACQUIRE_PRICE,
      cdsNodeChildrenBASE_SALE_ACQUIRE_PRICE]);
end;

procedure TfmProductQuantitiesTree.actViewStoreQuantitiesUpdate(
  Sender: TObject);
begin                                                                  
  inherited;
  (Sender as TAction).Enabled:= cdsNodeChildren.Active;
end;
                                                             
procedure TfmProductQuantitiesTree.actViewStoreQuantitiesExecute(
  Sender: TObject);
begin
  inherited;
  TfmProductQuantitiesTreeEdit.ShowForm(dmDocClient, cdsNodeChildren, emReadOnly, doNone, 
    cdsNodeChildrenMEASURE_ABBREV.AsString, cdsNodeChildrenACCOUNT_MEASURE_ABBREV.AsString,
    ProductClass, FVatPercent);
end;

procedure TfmProductQuantitiesTree.SetColumnsDisplay;
begin
  grdChildren.Columns[2].Visible:= actShowQuantities.Checked;
  grdChildren.Columns[3].Visible:= actShowQuantities.Checked;

  grdChildren.Columns[4].Visible:= actShowAccountQuantities.Checked;
  grdChildren.Columns[5].Visible:= actShowAccountQuantities.Checked;

  grdChildren.Columns[6].Visible:= actShowInvestedValue1.Checked;
  grdChildren.Columns[7].Visible:= actShowInvestedValue1.Checked;

  grdChildren.Columns[8].Visible:= actShowMarketPrices.Checked;
  grdChildren.Columns[9].Visible:= actShowMarketPrices.Checked;

  grdChildren.Columns[10].Visible:= actShowQuantities.Checked;
  grdChildren.Columns[11].Visible:= actShowAccountQuantities.Checked;

  grdChildren.Columns[12].Visible:= actShowSalePrices.Checked;
  grdChildren.Columns[13].Visible:= actShowSalePrices.Checked;

  grdChildren.Columns[14].Visible:= actShowDeliveryPrices.Checked;
  grdChildren.Columns[15].Visible:= actShowDeliveryPrices.Checked;

  RecreateHeaderSections;
end;

procedure TfmProductQuantitiesTree.SetDataParams(AdmDocClient: TdmDocClient;
  ANodeID, ARootNodeID: Integer; ATreeDetailSelection: TTreeDetailSelection;
  AProductClass: TProductClass; APartnerCode: Integer);
begin
  inherited SetDataParams(AdmDocClient, ANodeID, ARootNodeID, ATreeDetailSelection, AProductClass);
  FPartnerCode:= APartnerCode;
end;

class function TfmProductQuantitiesTree.ShowForm(AdmDocClient: TdmDocClient;
  ANodeID, ARootNodeID: Integer; ATreeDetailSelection: TTreeDetailSelection;
  AProductClass: TProductClass; APartnerCode: Integer): Integer;
var
  f: TfmProductQuantitiesTree;
begin
  dmMain.LoginContext.CheckUserActivity(
    IfThen((AProductClass = pcFinancial), uaFinProductQuantitiesTree, uaProductQuantitiesTree));

  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ANodeID, ARootNodeID, ATreeDetailSelection, AProductClass, APartnerCode);
    if (f.InternalShowForm = mrOK) then
      Result:= f.EndNodeID
    else
      Result:= 0;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmProductQuantitiesTree.FormShow(Sender: TObject);
begin
  inherited;
  SetColumnsDisplay;
end;

function TfmProductQuantitiesTree.GetExcelExportSubTreeMoreCellsDataFunc: TGetMoreCellsDataFunc;
begin
  Result:= StandardNodeParamsMoreCellsDataFunc();
end;

procedure TfmProductQuantitiesTree.GetPriceFieldText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;

  if DisplayText then
    begin
      if Sender.IsNull then
        Text:= ''
      else
        Text:=
          FormatFloat((Sender as TAbmesFloatField).DisplayFormat,
            Sender.AsFloat * (1 + IfThen(actIncludeVAT.Checked, FVatPercent)));
    end;
end;

procedure TfmProductQuantitiesTree.Initialize;
var
  PartnerName: string;
  DummyString: string;
  DummyBool: Boolean;
  PartnerNo: Integer;
begin
  inherited;
  if (FPartnerCode <> -1) then
    begin
      dmMain.SvrCompanies.GetCompanyInfo(FPartnerCode, PartnerName,
        DummyString, DummyString, DummyString, DummyString, DummyString,
        DummyString, DummyString, DummyString, DummyString, DummyBool,
        DummyString, DummyString, DummyString, DummyString,
        PartnerNo,
        DummyBool, DummyString, DummyString, DummyString, DummyString,
        DummyString, DummyString, DummyString, DummyString);

      lblLegend.Caption:= lblLegend.Caption + Format(SSinglePricesForPartner, [PartnerName, PartnerNo]);
    end;

  if (ProductClass = pcFinancial) then
    begin
      clbMain.Bands[2].MinWidth:= clbMain.Bands[2].MinWidth - btnShowAccountQuantities.Width - tlbToggleVAT.Width;
      clbMain.Bands[2].Width:= clbMain.Bands[2].MinWidth;
    end;

  if LoginContext.DefaultIncludeVAT and (ProductClass <> pcFinancial) then
    actIncludeVAT.Execute;
end;

procedure TfmProductQuantitiesTree.actShowQuantitiesExecute(
  Sender: TObject);
begin
  inherited;
  SetColumnsDisplay;
end;

procedure TfmProductQuantitiesTree.actShowSalePricesExecute(Sender: TObject);
begin
  inherited;
  SetColumnsDisplay;
end;

procedure TfmProductQuantitiesTree.btnDocsClick(Sender: TObject);
begin
  inherited;
// da ne dava, che OnClick bilo diconnected
end;

procedure TfmProductQuantitiesTree.cdsPrintTreeBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsPrintTree.Params.ParamByName('LOCAL_DEPT_CODE').AsInteger:=
    LoginContext.CurrentDeptCode;
  cdsPrintTree.Params.ParamByName('AGGREGATE_VALUES').AsInteger:=
    Ord(actShowAggergatedValues.Checked);
end;

procedure TfmProductQuantitiesTree.cdsNodeChildrenBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsNodeChildren.Params.ParamByName('LOCAL_DEPT_CODE').AsInteger:=
    LoginContext.CurrentDeptCode;
  cdsNodeChildren.Params.ParamByName('AGGREGATE_VALUES').AsInteger:=
    Ord(btnShowAggergatedValues.Down);
  cdsNodeChildren.Params.ParamByName('PARTNER_CODE').AsInteger:=
    FPartnerCode;
end;

procedure TfmProductQuantitiesTree.actExcludeVATExecute(Sender: TObject);
begin
  inherited;
  grdChildren.Invalidate;
end;

procedure TfmProductQuantitiesTree.actFormUpdate(Sender: TObject);
begin
  inherited;
  tlbToggleVAT.Visible:= (ProductClass <> pcFinancial);
  lblLegend.Visible:= (ProductClass <> pcFinancial);
end;

procedure TfmProductQuantitiesTree.actIncludeVATExecute(Sender: TObject);
begin
  inherited;
  grdChildren.Invalidate;
end;

procedure TfmProductQuantitiesTree.actProductPartnerPriceExecute(
  Sender: TObject);
var
  brt: TBorderRelType;
begin
  inherited;

  if actShowSalePrices.Checked then
    brt:= brtClient
  else
    brt:= brtVendor;

  TfmProductPartnerPrice.ShowForm(dmDocClient, nil, emReadOnly, doNone,
    cdsNodeChildrenNODE_ID.AsInteger, FPartnerCode, brt, otAcquire, ContextDate, actIncludeVAT.Checked);
end;

procedure TfmProductQuantitiesTree.actProductPartnerPriceUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (cdsNodeChildrenNODE_TYPE.AsInteger = Ord(ntInstance)) and
    (actShowSalePrices.Checked or actShowDeliveryPrices.Checked);
end;

procedure TfmProductQuantitiesTree.actShowAccountQuantitiesUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:= (ProductClass <> pcFinancial);
end;

procedure TfmProductQuantitiesTree.actShowAggergatedValuesExecute(
  Sender: TObject);
begin
  inherited;
  Screen.TempCursor(crSQLWait) /
    cdsNodeChildren.TempDisableControls /
      cdsNodeChildren.PreserveBookmark /
        procedure begin
          cdsNodeChildren.Close;
          cdsNodeChildren.Open;
        end;
end;

procedure TfmProductQuantitiesTree.actShowDeliveryPricesExecute(
  Sender: TObject);
begin
  inherited;
  SetColumnsDisplay;
end;

procedure TfmProductQuantitiesTree.actShowMarketPricesExecute(
  Sender: TObject);
begin
  inherited;
  SetColumnsDisplay;
end;

end.
