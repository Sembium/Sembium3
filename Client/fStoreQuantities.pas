unit fStoreQuantities;
                                                               
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient, GridsEh,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, Mask,
  JvToolEdit, JvDBLookup, AbmesClientDataSet, JvDBControls, DBGridEh,
  AbmesDBGrid, AbmesFields, Menus, JvButtons, ToolWin, ComCtrls,
  fBaseFrame, fDBFrame, fFieldEditFrame, fDateFieldEditFrame, JvComponent,
  JvCaptionButton, JvComponentBase, uProducts, uClientTypes, dDocClient,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions,
  EhLibVCL, DBAxisGridsEh;

type
  TfmStoreQuantities = class(TGridForm)
    pnlFilter: TPanel;
    lblStoreDealDate: TLabel;
    lblProduct: TLabel;
    edtProduct: TDBEdit;
    pdsGridDataParams_PRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParams_PRODUCT_NO: TAbmesFloatField;                                                         
    cdsGridDataSTORE_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataSTORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParams_STORE_DEAL_DATE_2: TAbmesSQLTimeStampField;
    pdsGridDataParamsSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParams_DEPT_NAME: TAbmesWideStringField;
    pdsGridDataParams_DEPT_NO: TAbmesWideStringField;
    lblDept: TLabel;
    edtDept: TDBEdit;
    lblComment: TLabel;
    tbSpeed: TToolBar;
    sbtnWorkMeasure: TSpeedButton;
    sbtnAccountMeasure: TSpeedButton;
    cdsGridDataQUANTITY: TAbmesFloatField;
    cdsGridDataMEASURE_CODE: TAbmesFloatField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataTOTAL_PRICE: TAbmesFloatField;
    cdsGridDataTOTAL_MARKET_PRICE: TAbmesFloatField;
    cdsGridDataACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataPLAN_QUANTITY: TAbmesFloatField;
    cdsGridDataPLAN_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataPLAN_TOTAL_MARKET_PRICE: TAbmesFloatField;
    cdsGridDataPLAN_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_IS_ONE_MEASURE: TAggregateField;
    cdsGridData_IS_ONE_ACCOUNT_MEASURE: TAggregateField;
    cdsGridData_SUM_QUANTITY_RAW: TAggregateField;
    cdsGridData_SUM_PLAN_QUANTITY_RAW: TAggregateField;
    cdsGridData_SUM_ACCOUNT_QUANTITY_RAW: TAggregateField;
    cdsGridData_SUM_PLAN_ACCOUNT_QUANTITY_RAW: TAggregateField;
    cdsGridData_SUM_TOTAL_PRICE: TAggregateField;
    cdsGridData_SUM_TOTAL_MARKET_PRICE: TAggregateField;
    cdsGridData_SUM_PLAN_TOTAL_PRICE: TAggregateField;
    cdsGridData_SUM_PLAN_TOTAL_MARKET_PRICE: TAggregateField;
    cdsGridData_SUM_QUANTITY: TAbmesFloatField;
    cdsGridData_SUM_PLAN_QUANTITY: TAbmesFloatField;
    cdsGridData_SUM_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_SUM_PLAN_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    edtDeptNo: TDBEdit;
    actCopyToClipboard: TAction;
    actCopyNameToClipboard: TAction;
    actCopyNoToClipboard: TAction;
    tlbTopButtons: TToolBar;
    pmCopy: TPopupMenu;
    miCopyNoToClipboard: TMenuItem;
    miCopyNameToClipboard: TMenuItem;
    btnCopy: TToolButton;
    sepBeforeCopy: TToolButton;
    cdsGridDataPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    btnToggleProductDisplay: TSpeedButton;
    pdsGridDataParams_SHOW_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    sepBeforeProductVIM: TToolButton;
    btnProductVIM: TToolButton;
    actProductVIM: TAction;
    frStoreDealDate: TfrDateFieldEditFrame;
    pdsGridDataParamsIS_GROUPED_BY_STORE: TAbmesFloatField;
    cdsGridDataQUANTITY_TOWARDS_RSV: TAbmesFloatField;
    cdsGridDataACC_QUANTITY_TOWARDS_RSV: TAbmesFloatField;
    cdsGridDataTOTAL_PRICE_TOWARDS_RSV: TAbmesFloatField;
    cdsGridDataTOTAL_MARKET_PRICE_TOWARDS_RSV: TAbmesFloatField;
    cdsGridDataP_QUANTITY_TOWARDS_RSV: TAbmesFloatField;
    cdsGridDataP_ACCOUNT_QUANTITY_TOWARDS_RSV: TAbmesFloatField;
    cdsGridDataP_TOTAL_PRICE_TOWARDS_RSV: TAbmesFloatField;
    cdsGridDataP_TOTAL_M_PRICE_TOWARDS_RSV: TAbmesFloatField;
    sepBeforeShowTowardsReserve: TToolButton;
    btnShowTowardsReserve: TSpeedButton;
    sepBeforeToggleProductDisplay: TToolButton;
    cdsGridData_SUM_QTY_RSV_RAW: TAggregateField;
    cdsGridData_SUM_ACC_QTY_RSV_RAW: TAggregateField;
    cdsGridData_SUM_P_QTY_RSV_RAW: TAggregateField;
    cdsGridData_SUM_P_ACC_QTY_RSV_RAW: TAggregateField;
    cdsGridData_SUM_TOTAL_PRICE_RSV: TAggregateField;
    cdsGridData_SUM_TOTAL_M_PRICE_RSV: TAggregateField;
    cdsGridData_SUM_P_TOTAL_PRICE_RSV: TAggregateField;
    cdsGridData_SUM_P_TOTAL_M_PRICE_RSV: TAggregateField;
    cdsGridData_SUM_QUANTITY_RSV: TAbmesFloatField;
    cdsGridData_SUM_ACCOUNT_QUANTITY_RSV: TAbmesFloatField;
    cdsGridData_SUM_PLAN_QUANTITY_RSV: TAbmesFloatField;
    cdsGridData_SUM_PLAN_ACCOUNT_QUANTITY_RSV: TAbmesFloatField;
    tlbDoc: TToolBar;
    sepBeforeProductDoc: TToolButton;
    lblProductDoc: TLabel;
    btnProductDoc: TToolButton;
    cdsGridDataPRODUCT_HAS_DOC: TAbmesFloatField;
    pdsGridDataParamsIS_TOWARDS_RESERVE: TAbmesFloatField;
    actShowTowardsReserve: TAction;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParams_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField;
    pdsGridDataParams_STORE_CODE: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_CLASS_CODE: TAbmesFloatField;
    pnlNewStoreDealOut: TPanel;
    btnNewStoreDealOut: TBitBtn;
    actNewStoreDealOut: TAction;
    cdsNewStoreDealDefaults: TAbmesClientDataSet;
    cdsNewStoreDealDefaultsQUANTITY: TAbmesFloatField;
    cdsNewStoreDealDefaultsACCOUNT_QUANTITY: TAbmesFloatField;
    cdsNewStoreDealDefaultsPRODUCT_CODE: TAbmesFloatField;
    cdsNewStoreDealDefaultsWANTED_QUANTITY: TAbmesFloatField;
    cdsNewStoreDealDefaultsSTORE_CODE: TAbmesFloatField;
    cdsNewStoreDealDefaultsBND_PROCESS_CODE: TAbmesFloatField;
    cdsGridDataSTORE_HAS_DOC: TAbmesFloatField;
    tlbStoreDoc: TToolBar;
    sepBeforeStoreDoc: TToolButton;
    lblStoreDoc: TLabel;
    btnStoreDoc: TToolButton;
    cdsGridDataTECH_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataTECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataTECH_QUANTITY: TAbmesFloatField;
    cdsGridDataPLAN_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataTECH_QUANTITY_TOWARDS_RSV: TAbmesFloatField;
    cdsGridDataP_TECH_QUANTITY_TOWARDS_RSV: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure actPrintUpdate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure actCopyToClipboardExecute(Sender: TObject);
    procedure actCopyNameToClipboardExecute(Sender: TObject);
    procedure actCopyToClipboardUpdate(Sender: TObject);
    procedure actCopyNoToClipboardExecute(Sender: TObject);
    procedure pdsGridDataParams_PRODUCT_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actFormUpdate(Sender: TObject);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure actProductVIMUpdate(Sender: TObject);
    procedure actProductVIMExecute(Sender: TObject);
    procedure cdsGridDataBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure btnProductDocClick(Sender: TObject);
    procedure actShowTowardsReserveUpdate(Sender: TObject);
    procedure actShowTowardsReserveExecute(Sender: TObject);
    procedure sbtnWorkMeasureClick(Sender: TObject);
    procedure sbtnAccountMeasureClick(Sender: TObject);
    procedure pdsGridDataParamsCHOSEN_PRODUCTSChange(Sender: TField);
    procedure pdsGridDataParamsCHOSEN_DEPTSChange(Sender: TField);
    procedure pdsGridDataParams_DEPT_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure actNewStoreDealOutUpdate(Sender: TObject);
    procedure actNewStoreDealOutExecute(Sender: TObject);
    procedure btnStoreDocClick(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    procedure SetupVisibleColumns;
    procedure ChosenProductsChange;
    procedure ChosenDeptsChange;
  protected
    class function CanUseDocs: Boolean; override;
    function GetOriginalFormCaption: string; override;
    function ShowFilterForm: Boolean; override;
    function GetPrintEnabled: Boolean; override;
    function GetPrintButtonOnToolbarEnabled: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure DoBeforeShow; override;
  public
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      AProductClass: TProductClass = pcNone): Boolean;
      
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;

    procedure Initialize; override;
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses
  dMain, uUtils, uClientUtils, uTreeClientUtils, fStoreQuantitiesFilter,
  Clipbrd, fVIMQuantity, uOpenVIMConsts, rStoreQuantities,
  uTreeNodes, uXMLUtils, uProductClientUtils, uClientDateTime,
  uUserActivityConsts, fStoreDealOut, uProcesses;

{$R *.DFM}

resourcestring
  SComment = 'Цените са в %s';

{ TfmStoreQuantities }

class function TfmStoreQuantities.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmStoreQuantities.FormCreate(Sender: TObject);
begin
  inherited;
  FProductClass:= pcNormal;
  
  FilterFormClass:= TfmStoreQuantitiesFilter;
  cdsGridData.Params.ParamByName('STORE_DEAL_DATE').Value:= ContextDate;
  if (LoginContext.CurrentDeptCode > 0) then
    cdsGridData.Params.ParamByName('CHOSEN_DEPTS').Value:= ChosenNodeCodeToXML(-1);  // tekushtiq FOrP
  frStoreDealDate.FieldNames:= '_SHOW_STORE_DEAL_DATE';

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsGridDataTOTAL_PRICE,
      cdsGridData_SUM_TOTAL_PRICE,
      cdsGridDataPLAN_TOTAL_PRICE,
      cdsGridData_SUM_PLAN_TOTAL_PRICE,
      cdsGridDataTOTAL_PRICE_TOWARDS_RSV,
      cdsGridData_SUM_TOTAL_PRICE_RSV,
      cdsGridDataP_TOTAL_PRICE_TOWARDS_RSV,
      cdsGridData_SUM_P_TOTAL_PRICE_RSV]);

  RegisterFieldsTextVisibility(
    IsSalePriceVisible,
    [ cdsGridDataTOTAL_MARKET_PRICE,
      cdsGridData_SUM_TOTAL_MARKET_PRICE,
      cdsGridDataPLAN_TOTAL_MARKET_PRICE,
      cdsGridData_SUM_PLAN_TOTAL_MARKET_PRICE,
      cdsGridDataTOTAL_MARKET_PRICE_TOWARDS_RSV,
      cdsGridData_SUM_TOTAL_M_PRICE_RSV,
      cdsGridDataP_TOTAL_M_PRICE_TOWARDS_RSV,
      cdsGridData_SUM_P_TOTAL_M_PRICE_RSV]);
end;

procedure TfmStoreQuantities.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsGridData_IS_ONE_MEASURE.Value then
    begin
      cdsGridData_SUM_QUANTITY.AsVariant:= cdsGridData_SUM_QUANTITY_RAW.AsVariant;
      cdsGridData_SUM_PLAN_QUANTITY.AsVariant:= cdsGridData_SUM_PLAN_QUANTITY_RAW.AsVariant;
      cdsGridData_SUM_QUANTITY_RSV.AsVariant:= cdsGridData_SUM_QTY_RSV_RAW.AsVariant;
      cdsGridData_SUM_PLAN_QUANTITY_RSV.AsVariant:= cdsGridData_SUM_P_QTY_RSV_RAW.AsVariant;
      cdsGridData_MEASURE_ABBREV.AsVariant:= cdsGridDataMEASURE_ABBREV.AsVariant;
    end
  else
    begin
      cdsGridData_SUM_QUANTITY.Clear;
      cdsGridData_SUM_PLAN_QUANTITY.Clear;
      cdsGridData_SUM_QUANTITY_RSV.Clear;
      cdsGridData_SUM_PLAN_QUANTITY_RSV.Clear;
      cdsGridData_MEASURE_ABBREV.Clear;
    end;

  if cdsGridData_IS_ONE_ACCOUNT_MEASURE.Value then
    begin
      cdsGridData_SUM_ACCOUNT_QUANTITY.AsVariant:= cdsGridData_SUM_ACCOUNT_QUANTITY_RAW.AsVariant;
      cdsGridData_SUM_PLAN_ACCOUNT_QUANTITY.AsVariant:= cdsGridData_SUM_PLAN_ACCOUNT_QUANTITY_RAW.AsVariant;
      cdsGridData_SUM_ACCOUNT_QUANTITY_RSV.AsVariant:= cdsGridData_SUM_ACC_QTY_RSV_RAW.AsVariant;
      cdsGridData_SUM_PLAN_ACCOUNT_QUANTITY_RSV.AsVariant:= cdsGridData_SUM_P_ACC_QTY_RSV_RAW.AsVariant;
      cdsGridData_ACCOUNT_MEASURE_ABBREV.AsVariant:= cdsGridDataACCOUNT_MEASURE_ABBREV.AsVariant;
    end
  else
    begin
      cdsGridData_SUM_ACCOUNT_QUANTITY.Clear;
      cdsGridData_SUM_PLAN_ACCOUNT_QUANTITY.Clear;
      cdsGridData_SUM_ACCOUNT_QUANTITY_RSV.Clear;
      cdsGridData_SUM_PLAN_ACCOUNT_QUANTITY_RSV.Clear;
      cdsGridData_ACCOUNT_MEASURE_ABBREV.Clear;
    end;
end;

procedure TfmStoreQuantities.FormShow(Sender: TObject);
begin
  inherited;
  lblComment.Caption:=
    Format(SComment, [LoginContext.BaseCurrencyAbbrev]);
  SetupVisibleColumns;
end;

procedure TfmStoreQuantities.pdsGridDataParamsCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  // reporta da pokazva datite i v 2ta formata
  pdsGridDataParams_STORE_DEAL_DATE_2.AsDateTime:=
    pdsGridDataParamsSTORE_DEAL_DATE.AsDateTime;

  pdsGridDataParams_SHOW_STORE_DEAL_DATE.Assign(pdsGridDataParamsSTORE_DEAL_DATE);

  pdsGridDataParams_PRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmStoreQuantities.SetupVisibleColumns;
begin
  inherited;

  grdData.Columns[4].Visible:= sbtnWorkMeasure.Down and not cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[6].Visible:= sbtnWorkMeasure.Down and not cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[10].Visible:= sbtnWorkMeasure.Down and not cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[12].Visible:= sbtnWorkMeasure.Down and not cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;

  grdData.Columns[5].Visible:= sbtnAccountMeasure.Down and not cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[7].Visible:= sbtnAccountMeasure.Down and not cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[11].Visible:= sbtnAccountMeasure.Down and not cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[13].Visible:= sbtnAccountMeasure.Down and not cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;

  grdData.Columns[8].Visible:= not cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[9].Visible:= not cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[14].Visible:= not cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[15].Visible:= not cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;

  grdData.Columns[16].Visible:= sbtnWorkMeasure.Down and cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[18].Visible:= sbtnWorkMeasure.Down and cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[22].Visible:= sbtnWorkMeasure.Down and cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[24].Visible:= sbtnWorkMeasure.Down and cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;

  grdData.Columns[17].Visible:= sbtnAccountMeasure.Down and cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[19].Visible:= sbtnAccountMeasure.Down and cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[23].Visible:= sbtnAccountMeasure.Down and cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[25].Visible:= sbtnAccountMeasure.Down and cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;

  grdData.Columns[20].Visible:= cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[21].Visible:= cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[26].Visible:= cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  grdData.Columns[27].Visible:= cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
end;

function TfmStoreQuantities.ShowFilterForm: Boolean;
begin
  Result:= TfmStoreQuantitiesFilter.ShowForm(dmDocClient, pdsGridDataParams, emEdit, doNone, FProductClass)
end;

class function TfmStoreQuantities.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass): Boolean;
var
  f: TfmStoreQuantities;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmStoreQuantities.actPrintUpdate(Sender: TObject);
begin
  // do not call inherited
  actPrint.Enabled:= not (cdsGridData.Bof and cdsGridData.Eof);
end;

procedure TfmStoreQuantities.actPrintExecute(Sender: TObject);
begin
  // do not call inherited
  Assert(sbtnWorkMeasure.Down xor sbtnAccountMeasure.Down);
  TrptStoreQuantities.PrintReport(
    cdsGridData,
    pdsGridDataParams,
    cdsGridData.Params.ParamByName('IS_GROUPED_BY_STORE').AsBoolean,
    sbtnAccountMeasure.Down
  );
end;

procedure TfmStoreQuantities.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CheckEditMode(pdsGridDataParams);
  ChosenProductsChange;
  ChosenDeptsChange;
  pdsGridDataParams.Post;
end;

procedure TfmStoreQuantities.actCopyToClipboardExecute(Sender: TObject);
begin
  inherited;
  actCopyNoToClipboard.Execute;
end;

procedure TfmStoreQuantities.actCopyNameToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataPRODUCT_NAME.AsString;
end;

procedure TfmStoreQuantities.actCopyToClipboardUpdate(Sender: TObject);
begin
  inherited;

  with cdsGridData do
    (Sender as TAction).Enabled:=
      Active and
      not (Bof and Eof);
end;

procedure TfmStoreQuantities.actCopyNoToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataPRODUCT_NO.AsString;
end;

procedure TfmStoreQuantities.actFormUpdate(Sender: TObject);
var
  IsGroupedByStore: Boolean;
begin
  inherited;

  with grdData do
    begin
      Columns[0].Visible:= not btnToggleProductDisplay.Down;
      Columns[1].Visible:= not btnToggleProductDisplay.Down;
      Columns[2].Visible:= btnToggleProductDisplay.Down;
    end;

  btnProductDoc.ImageIndex:=
    cdsGridDataPRODUCT_HAS_DOC.AsInteger;

  btnProductDoc.Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);

  sepBeforeToggleProductDisplay.Visible:= (FProductClass = pcNormal);
  btnToggleProductDisplay.Visible:= (FProductClass = pcNormal);

  IsGroupedByStore:= (pdsGridDataParamsIS_GROUPED_BY_STORE.AsFloat = 1);

  tlbStoreDoc.Visible:= IsGroupedByStore;

  if IsGroupedByStore then
    begin
      btnStoreDoc.ImageIndex:=
        cdsGridDataSTORE_HAS_DOC.AsInteger;

      btnStoreDoc.Enabled:=
        cdsGridData.Active and
        (cdsGridData.RecordCount > 0);
    end;
end;

procedure TfmStoreQuantities.actNewStoreDealOutExecute(Sender: TObject);
const
  NewStoreDealOutActivities: array[TProductClass] of Integer = (0, uaNewStoreDealOut, uaNewFinStoreDealOut, 0);
  NewWorkStoreDealOutActivities: array[TProductClass] of Integer = (0, uaNewWorkStoreDealOut, uaNewFinWorkStoreDealOut, 0);
begin
  inherited;

  if not LoginContext.HasUserActivity(NewStoreDealOutActivities[FProductClass]) then
    begin
      LoginContext.CheckUserActivity(NewWorkStoreDealOutActivities[FProductClass]);
      LoginContext.CheckUserWorkDept(cdsGridDataSTORE_CODE.AsInteger);
    end;

  cdsNewStoreDealDefaults.TempCreateDataSet/
    procedure begin
      cdsNewStoreDealDefaults.SafeAppend/
        procedure begin
          cdsNewStoreDealDefaultsBND_PROCESS_CODE.AsInteger:= pINV;
          cdsNewStoreDealDefaultsSTORE_CODE.Assign(cdsGridDataSTORE_CODE);
          cdsNewStoreDealDefaultsPRODUCT_CODE.Assign(cdsGridDataPRODUCT_CODE);
          cdsNewStoreDealDefaultsQUANTITY.Assign(cdsGridDataQUANTITY);
          cdsNewStoreDealDefaultsACCOUNT_QUANTITY.Assign(cdsGridDataACCOUNT_QUANTITY);
          cdsNewStoreDealDefaultsWANTED_QUANTITY.Assign(cdsGridDataQUANTITY);
        end;

      if TfmStoreDealOut.ShowForm(nil, cdsNewStoreDealDefaults, emInsert, doDataset, FProductClass) then
        RefreshGridData;
    end;
end;

procedure TfmStoreQuantities.actNewStoreDealOutUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and
    not cdsGridData.IsEmpty and
    not cdsGridDataSTORE_CODE.IsNull;
end;

procedure TfmStoreQuantities.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  CheckRequiredField(pdsGridDataParamsSTORE_DEAL_DATE);
end;

function TfmStoreQuantities.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

function TfmStoreQuantities.GetPrintButtonOnToolbarEnabled: Boolean;
begin
  Result:= True;
end;

function TfmStoreQuantities.GetPrintEnabled: Boolean;
begin
  Result:= True;
end;

procedure TfmStoreQuantities.Initialize;
begin
  inherited Initialize;

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmStoreQuantities.actProductVIMUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmStoreQuantities.actProductVIMExecute(Sender: TObject);
var
  ChosenDepts: string;
begin
  inherited;

  if cdsGridData.Params.ParamByName('IS_GROUPED_BY_STORE').AsBoolean then
    ChosenDepts:= ChosenNodeCodeToXML(cdsGridDataSTORE_CODE.AsInteger)
  else
    ChosenDepts:= cdsGridData.Params.ParamByName('CHOSEN_DEPTS').AsString;

  ShowProductVIM(
    dmDocClient,
    ChosenNodeCodeToXML(cdsGridDataPRODUCT_CODE.AsInteger),
    ChosenDepts,
    cdsGridData.Params.ParamByName('STORE_DEAL_DATE').AsDateTime,
    False,
    vofVIMOpenedFromSale,
    FProductClass);
end;

procedure TfmStoreQuantities.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass);
begin
  FProductClass:= AProductClass;
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
end;

procedure TfmStoreQuantities.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frStoreDealDate) then
    AFrame.ReadOnly:= True
  else
    inherited;
end;

procedure TfmStoreQuantities.cdsGridDataBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= PackageParams(cdsGridData.Params);
end;

procedure TfmStoreQuantities.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmStoreQuantities.cdsGridDataAfterOpen(
  DataSet: TDataSet);
const
  ProductNameColumnWidth = 254;
  ProductNoColumnWidth = 76;
begin
  inherited;
  with grdData do
    begin
      if (cdsGridData.Params.ParamByName('IS_GROUPED_BY_STORE').AsInteger = 1) then
        begin
          Columns[3].Visible:= True;
          Columns[0].Width:= ProductNameColumnWidth;
          Columns[2].Width:= ProductNameColumnWidth + ProductNoColumnWidth + 1;
        end
      else
        begin
          Columns[3].Visible:= False;
          Columns[0].Width:= ProductNameColumnWidth + 1 + Columns[3].Width;
          Columns[2].Width:= ProductNameColumnWidth + ProductNoColumnWidth + 2 + Columns[3].Width;
        end;
    end;
end;

procedure TfmStoreQuantities.btnProductDocClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TControl),
    cdsGridDataPRODUCT_CODE.AsInteger);
end;

procedure TfmStoreQuantities.btnStoreDocClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDeptDoc(emReadOnly, (Sender as TControl), cdsGridDataSTORE_CODE.AsInteger);
end;

procedure TfmStoreQuantities.actShowTowardsReserveUpdate(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:= not cdsGridData.IsEmpty;
      if Enabled then
        Checked:= cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
    end;
end;

procedure TfmStoreQuantities.actShowTowardsReserveExecute(Sender: TObject);
begin
  inherited;
  cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean:= not cdsGridData.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
  SetupVisibleColumns;
end;

procedure TfmStoreQuantities.sbtnWorkMeasureClick(Sender: TObject);
begin
  inherited;
  SetupVisibleColumns;
end;

procedure TfmStoreQuantities.sbtnAccountMeasureClick(Sender: TObject);
begin
  inherited;
  SetupVisibleColumns;
end;

procedure TfmStoreQuantities.pdsGridDataParamsCHOSEN_PRODUCTSChange(Sender: TField);
begin
  inherited;
  ChosenProductsChange;
end;

procedure TfmStoreQuantities.ChosenProductsChange;
begin
  pdsGridDataParams_PRODUCT_CODE.Clear;
  pdsGridDataParams_PRODUCT_NAME.Clear;
  pdsGridDataParams_PRODUCT_NO.Clear;

  if HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
    if IsSingleChosenNodeWithoutParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
      begin
        pdsGridDataParams_PRODUCT_CODE.AsInteger:= ChosenNodeXMLToNodeCode(pdsGridDataParamsCHOSEN_PRODUCTS.AsString);
        DoProductFieldChanged(pdsGridDataParams_PRODUCT_CODE, pdsGridDataParams_PRODUCT_NAME, pdsGridDataParams_PRODUCT_NO);
      end
    else
      pdsGridDataParams_PRODUCT_NAME.AsString:= SProductsSet[FProductClass];
end;

procedure TfmStoreQuantities.DoBeforeShow;
var
  MsgParams: TStrings;
begin
  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  inherited;
end;

procedure TfmStoreQuantities.pdsGridDataParamsCHOSEN_DEPTSChange(Sender: TField);
begin
  inherited;
  ChosenDeptsChange;
end;

procedure TfmStoreQuantities.ChosenDeptsChange;
begin
  pdsGridDataParams_STORE_CODE.Clear;
  pdsGridDataParams_DEPT_NAME.Clear;
  pdsGridDataParams_DEPT_NO.Clear;

  if HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_DEPTS.AsString) then
    if IsSingleChosenNodeWithoutParams(pdsGridDataParamsCHOSEN_DEPTS.AsString) then
      begin
        pdsGridDataParams_STORE_CODE.AsInteger:= ChosenNodeXMLToNodeCode(pdsGridDataParamsCHOSEN_DEPTS.AsString);
        DoDeptFieldChanged(pdsGridDataParams_STORE_CODE, pdsGridDataParams_DEPT_NAME, pdsGridDataParams_DEPT_NO);
      end
    else
      pdsGridDataParams_DEPT_NAME.AsString:= SDeptsSet;
end;

procedure TfmStoreQuantities.pdsGridDataParams_PRODUCT_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;

  if Sender.IsNull then
    Text:= SAllInBrackets
  else
    Text:= Sender.AsString;
end;

procedure TfmStoreQuantities.pdsGridDataParams_DEPT_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;

  if (Sender.AsString = '') then
    Text:= SAllInBrackets
  else
    Text:= Sender.AsString;
end;

end.
