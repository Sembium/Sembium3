unit fDeptDetailFlow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, JvButtons, ParamDataSet,
  ActnList, DB, DBClient, AbmesClientDataSet, ComCtrls, ToolWin, Buttons,
  GridsEh, DBGridEh, AbmesDBGrid, DBCtrls, ColorNavigator, StdCtrls,
  AbmesFields, dDocClient, uClientTypes, Menus, JvComponent, uParRelProducts,
  JvCaptionButton, JvComponentBase, uDeptDetailFlow, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL,
  DBAxisGridsEh;

type                                                                                                         
  TfmDeptDetailFlow = class(TMasterDetailForm)
    cdsDetail2: TAbmesClientDataSet;
    dsDetail2: TDataSource;
    cdsDetail2DEPT_CODE: TAbmesFloatField;
    cdsDetail2DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDetail2DEPT_NAME: TAbmesWideStringField;
    cdsDetail2DEPT_HAS_DOC: TAbmesFloatField;
    cdsDetail2DETAIL_GROUP_CODE: TAbmesFloatField;
    cdsDetail2DETAIL_GROUP_NO: TAbmesFloatField;
    cdsDetail2DETAIL_GROUP_NAME: TAbmesWideStringField;
    cdsDetail2DETAIL_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField;
    cdsDetail2DETAIL_CODE: TAbmesFloatField;
    cdsDetail2DETAIL_NO: TAbmesFloatField;
    cdsDetail2DETAIL_NAME: TAbmesWideStringField;
    cdsDetail2DETAIL_HAS_DOC: TAbmesFloatField;
    cdsDetail2DETAIL_TECH_MEASURE_ABBR: TAbmesWideStringField;
    cdsDetail2TECH_QUANTITY: TAbmesFloatField;
    cdsDetail2OPERATION_COUNT: TAbmesFloatField;
    cdsDetail2MODEL_COUNT: TAbmesFloatField;
    grdDetail2: TAbmesDBGrid;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsDetailDETAIL_GROUP_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsDetailDETAIL_GROUP_NO: TAbmesFloatField;
    cdsDetailDETAIL_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDEPT_NAME: TAbmesWideStringField;
    cdsGridDataDEPT_HAS_DOC: TAbmesFloatField;
    cdsDetailDEPT_CODE: TAbmesFloatField;
    cdsDetail2SUM_GROUP_TECH_QUANTITY: TAggregateField;
    cdsDetailDETAIL_GROUP_NAME: TAbmesWideStringField;
    cdsDetailTECH_QUANTITY: TAbmesFloatField;
    cdsGridDataDETAIL_COUNT: TAbmesFloatField;
    cdsDetail2COUNT_DEPT_ROWS: TAggregateField;
    cdsDetail2SUM_DEPT_OPERATION_COUNT: TAggregateField;
    cdsGridDataSUM_OPERATION_COUNT: TAbmesFloatField;
    pdsGridDataParamsFLOW_TYPE: TAbmesFloatField;
    pnlMasterRight: TPanel;
    pdsGridDataParamsCHOSEN_DEPT_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_DETAIL_PRODUCTS: TAbmesWideStringField;
    actBaseGroups: TAction;
    cdsDetail2GROUP_PRODUCT_CODE: TAbmesFloatField;
    pnlDetail2Navigator: TPanel;
    navDetail2: TDBColorNavigator;
    pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsFLOW_LEVEL: TAbmesFloatField;
    tlbDetail2: TToolBar;
    actDeptDoc: TAction;
    actDetailDoc: TAction;
    cdsDetail2SUM_GROUP_OPERATION_COUNT: TAggregateField;
    cdsDetail2MIN_GROUP_TECH_MEASURE_ABBR: TAggregateField;
    cdsDetail2MAX_GROUP_TECH_MEASURE_ABBR: TAggregateField;
    cdsDetail2_SUM_GROUP_TECH_QUANTITY: TAbmesFloatField;
    cdsDetail2_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField;
    cdsDetailSUM_TECH_QUANTITY: TAggregateField;
    cdsDetailMIN_TECH_MEASURE_ABBR: TAggregateField;
    cdsDetailMAX_TECH_MEASURE_ABBR: TAggregateField;
    cdsDetail_SUM_TECH_QUANTITY: TAbmesFloatField;
    cdsDetail_TECH_MEASURE_ABBR: TAbmesWideStringField;
    cdsDetail2GROUP_DEPT_CODE: TAbmesFloatField;
    actCopyToClipboard: TAction;
    actCopyNameToClipboard: TAction;
    actCopyNoToClipboard: TAction;
    pmCopy: TPopupMenu;
    miCopyNoToClipboard: TMenuItem;
    miCopyNameToClipboard: TMenuItem;
    btnCopyToClipboard: TToolButton;
    sepBeforeDetailDoc: TToolButton;
    cdsDetailGROUP_OPERATION_COUNT: TAbmesFloatField;
    cdsDetailSUM_GROUP_OPERATION_COUNT: TAggregateField;
    cdsGridDataSUM_SUM_OPERATION_COUNT: TAggregateField;
    cdsGridDataSUM_DETAIL_COUNT: TAggregateField;
    btnDeptDoc: TToolButton;
    btnDetailDoc: TToolButton;
    tlbDeptDoc: TToolBar;
    tlbDetailDoc: TToolBar;
    sepBeforeNavDetail2: TToolButton;
    cdsDetail2COUNT_DETAIL_CODE: TAggregateField;
    cdsDetailDETAIL_COUNT: TAbmesFloatField;
    lblDeptDoc: TLabel;
    lblDetailDoc: TLabel;
    cdsDetailSUM_DETAIL_COUNT: TAggregateField;
    sepBeforeDeptDoc: TToolButton;
    cdsDetail2CAPACITY_BUSY_HOURS: TAbmesFloatField;
    cdsDetail2SUM_GROUP_CAPACITY_BUSY_HOURS: TAggregateField;
    cdsDetailCAPACITY_BUSY_HOURS: TAbmesFloatField;
    cdsDetailSUM_CAPACITY_BUSY_HOURS: TAggregateField;
    cdsGridDataCAPACITY_BUSY_HOURS: TAbmesFloatField;
    cdsGridDataSUM_CAPACITY_BUSY_HOURS: TAggregateField;
    cdsDetail2SUM_DEPT_CAPACITY_BUSY_HOURS: TAggregateField;
    actParRelProductsForDept: TAction;
    cdsParRelProductsParams: TAbmesClientDataSet;
    cdsParRelProductsParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsParRelProductsParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsParRelProductsParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsParRelProductsParamsDETAIL_CODE: TAbmesFloatField;
    cdsParRelProductsParamsSTAGE_DEPT_CODE: TAbmesFloatField;
    cdsParRelProductsParamsOP_DEPT_CODE: TAbmesFloatField;
    pnlBaseGroupsButton: TPanel;
    btnBaseGroups: TBitBtn;
    pnlParRelProductsForDeptButton: TPanel;
    btnParRelProductsForDept: TBitBtn;
    actParRelProductsForDetailAndDept: TAction;
    pnlParRelProductsForDetailAndDeptButton: TPanel;
    btnParRelProductsForDetailAndDept: TBitBtn;
    actParRelProductsForDeptProductOriented: TAction;
    actParRelProductsForDeptPartnerOriented: TAction;
    pmParRelProductsForDept: TPopupMenu;
    miParRelProductsForDeptProductOriented: TMenuItem;
    miParRelProductsForDeptPartnerOriented: TMenuItem;
    actParRelProductsForDetailAndDeptPartnerOriented: TAction;
    actParRelProductsForDetailAndDeptProductOriented: TAction;
    pmParRelProductsForDetailAndDept: TPopupMenu;
    miParRelProductsForDetailAndDeptProductOriented: TMenuItem;
    miParRelProductsForDetailAndDeptPartnerOriented: TMenuItem;
    cdsDetail2DEPT_IS_ACTIVE: TAbmesFloatField;
    cdsDetail2DETAIL_GROUP_IS_ACTIVE: TAbmesFloatField;
    cdsDetail2DETAIL_IS_ACTIVE: TAbmesFloatField;
    cdsDetailDETAIL_GROUP_IS_ACTIVE: TAbmesFloatField;
    cdsGridDataDEPT_IS_ACTIVE: TAbmesFloatField;
    pnlResizeWorkspaceButton: TPanel;
    pdsGridDataParamsMIN_PRP_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_PRP_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductsParamsMIN_PRP_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductsParamsMAX_PRP_STATUS_CODE: TAbmesFloatField;
    actDeptToolNeeds: TAction;
    actDeptDetailGroupToolNeeds: TAction;
    actDeptDetailToolNeeds: TAction;
    btnDeptToolNeeds: TSpeedButton;
    pmDeptToolNeeds: TPopupMenu;
    pmDeptDetailGroupToolNeeds: TPopupMenu;
    pmDeptDetailToolNeeds: TPopupMenu;
    btnDeptDetailGroupToolNeeds: TSpeedButton;
    btnDeptDetailToolNeeds: TSpeedButton;
    cdsDetail2BASE_GROUP_COUNT: TAbmesFloatField;
    pdsGridDataParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    pdsGridDataParamsPARTNER_COMMON_LEVEL: TAbmesFloatField;
    cdsParRelProductsParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    cdsParRelProductsParamsPARTNER_COMMON_LEVEL: TAbmesFloatField;
    btnSpecDocStatus: TToolButton;
    sepAfterSpecDocStatus: TToolButton;
    actSpecDocStatus: TAction;
    cdsDetail2SPEC_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsTOOL_DETAIL_CODE: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure cdsDetail2AfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsDetail2BeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure actBaseGroupsExecute(Sender: TObject);
    procedure actBaseGroupsUpdate(Sender: TObject);
    procedure cdsDetail2CalcFields(DataSet: TDataSet);
    procedure grdDetail2DblClick(Sender: TObject);
    procedure dsDetailDataChange(Sender: TObject; Field: TField);
    procedure actFormUpdate(Sender: TObject);
    procedure actDeptDocExecute(Sender: TObject);
    procedure actDeptDocUpdate(Sender: TObject);
    procedure actDetailDocExecute(Sender: TObject);
    procedure actDetailDocUpdate(Sender: TObject);
    procedure cdsDetailCalcFields(DataSet: TDataSet);
    procedure actCopyToClipboardExecute(Sender: TObject);
    procedure actCopyToClipboardUpdate(Sender: TObject);
    procedure actCopyNoToClipboardExecute(Sender: TObject);
    procedure actCopyNameToClipboardExecute(Sender: TObject);
    procedure actPrintDetailsExecute(Sender: TObject);
    procedure actExcelExportExecute(Sender: TObject);
    procedure actParRelProductsForDeptExecute(Sender: TObject);
    procedure actParRelProductsForDeptUpdate(Sender: TObject);
    procedure actParRelProductsForDetailAndDeptExecute(Sender: TObject);
    procedure actParRelProductsForDetailAndDeptUpdate(Sender: TObject);
    procedure actParRelProductsForDeptProductOrientedExecute(Sender: TObject);
    procedure actParRelProductsForDeptPartnerOrientedExecute(Sender: TObject);
    procedure actParRelProductsForDeptProductOrientedUpdate(Sender: TObject);
    procedure actParRelProductsForDeptPartnerOrientedUpdate(Sender: TObject);
    procedure actParRelProductsForDetailAndDeptPartnerOrientedExecute(
      Sender: TObject);
    procedure actParRelProductsForDetailAndDeptProductOrientedExecute(
      Sender: TObject);
    procedure actParRelProductsForDetailAndDeptPartnerOrientedUpdate(
      Sender: TObject);
    procedure actParRelProductsForDetailAndDeptProductOrientedUpdate(
      Sender: TObject);
    procedure grdDetail2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdDetailGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actDeptToolNeedsExecute(Sender: TObject);
    procedure actDeptDetailGroupToolNeedsExecute(Sender: TObject);
    procedure actDeptDetailToolNeedsExecute(Sender: TObject);
    procedure actDeptToolNeedsUpdate(Sender: TObject);
    procedure actDeptDetailGroupToolNeedsUpdate(Sender: TObject);
    procedure actDeptDetailToolNeedsUpdate(Sender: TObject);
    procedure actSpecDocStatusExecute(Sender: TObject);
    procedure actSpecDocStatusUpdate(Sender: TObject);
  private
    procedure RefreshDataSets;
    procedure ShowParRelProducts(AParRelProductsOrientation: TParRelProductsOrientation; AIsForDetail: Boolean);
    procedure actToolNeedsExecute(Sender: TObject);
  protected
    class function CanUseDocs: Boolean; override;
    class function ManualDetailFetch: Boolean; override;
    function OpenTimeInSeconds: Integer; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True); override;
  end;

implementation

uses
  dMain, uUtils, uClientUtils, fDeptDetailFlowFilter,
  fBaseGroups, uUserActivityConsts, Clipbrd, rDeptDetailFlow, uBorderRelTypes,
  rDeptDetailFlowDetails, AbmesDialogs, uExcelExport, fGridForm, fParRelProducts,
  uProductionOrderTypes, uProducts, fDeptDetailFlowToolNeeds, fSpecDocStatus;

{$R *.dfm}

resourcestring
  SCancel = 'Отказ';
  SThreeLevelsExport = '3 нива';
  STwoLevelsExport = '2 нива';
  SOneLevelExport = '1 ниво';
  SConfirmExcelExport = 'Експорт към Excel? (експортирането на 3 нива е бавна операция)';
  SConfirmDetail2Print = 'Желаете ли печат на детайлите на всeки Род КСЧ?';
  SFromDiferentDepts = 'Избраните КСЧ не минават през едно ТП';
  SStageCount = 'Брой етапи';
  SOperationCount = 'Брой операции';
  SModelCount = 'Брой МОДЕл-и';
  SParRelProductCount = 'Брой ИИР';

const
  OperationCountCaptions: array[0..1] of string = (SStageCount, SOperationCount);
  ModelCountCaptions: array[0..2] of string = (SModelCount, SModelCount, SParRelProductCount);

{ TfmDeptDetailFlow }

class function TfmDeptDetailFlow.ManualDetailFetch: Boolean;
begin
  Result:= True;
end;

procedure TfmDeptDetailFlow.FormCreate(Sender: TObject);
begin
  inherited;

  FilterFormClass:= TfmDeptDetailFlowFilter;
  DelayDetailFetch:= False;
  // samo da se vika actiona printdetails
  DetailsReportClass:= TrptDeptDetailFlow;

  CreateToolNeedsPopupMenuItems(Self, alActions, pmDeptToolNeeds, cdsGridData, actToolNeedsExecute);
  CreateToolNeedsPopupMenuItems(Self, alActions, pmDeptDetailGroupToolNeeds, cdsDetail, actToolNeedsExecute);
  CreateToolNeedsPopupMenuItems(Self, alActions, pmDeptDetailToolNeeds, cdsDetail2, actToolNeedsExecute);
end;

procedure TfmDeptDetailFlow.RefreshDataSets;
var
  SaveCursor: TCursor;
  b, b1, b2: TBookmark;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    b:= cdsGridData.Bookmark;
    b1:= cdsDetail.Bookmark;
    b2:= cdsDetail2.Bookmark;

    cdsGridData.Close;
    cdsDetail.Close;
    cdsGridData.CreateDataSet;
    cdsDetail.CreateDataSet;
    RefreshDataSet(cdsDetail2);

    try
      cdsGridData.Bookmark:= b;
      cdsDetail.Bookmark:= b1;
      cdsDetail2.Bookmark:= b2;
    except
      on EDatabaseError do
        begin
          // Do nothing. Just catch the exception
        end;
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;  { try }
end;

procedure TfmDeptDetailFlow.actFilterExecute(Sender: TObject);
begin
  if TfmDeptDetailFlowFilter.ShowForm(dmDocClient, pdsGridDataParams) then
    RefreshDataSets;
end;

procedure TfmDeptDetailFlow.cdsDetail2AfterOpen(DataSet: TDataSet);
var
  cdsDetail2CalcFieldsEventHandler: TDataSetNotifyEvent;
  MeasureAbbr: string;
  QuantityVariant: Variant;
begin
  inherited;

  cdsDetail2CalcFieldsEventHandler:= cdsDetail2.OnCalcFields;
  cdsDetail2.OnCalcFields:= nil;
  try
    cdsDetail.MasterSource:= nil;
    cdsDetail.MasterFields:= '';

    cdsDetail2.MasterSource:= nil;
    cdsDetail2.MasterFields:= '';

    cdsDetail2.First;
    while not cdsDetail2.Eof do
      begin
        if (gbFirst in cdsDetail2.GetGroupState(1)) then
          begin
            cdsGridData.AppendRecord([
              cdsDetail2DEPT_CODE.AsVariant,
              cdsDetail2DEPT_IDENTIFIER.AsVariant,
              cdsDetail2DEPT_NAME.AsVariant,
              cdsDetail2DEPT_HAS_DOC.AsVariant,
              cdsDetail2DEPT_IS_ACTIVE.AsVariant,
              cdsDetail2SUM_DEPT_CAPACITY_BUSY_HOURS.AsVariant,
              cdsDetail2SUM_DEPT_OPERATION_COUNT.AsVariant,
              cdsDetail2COUNT_DEPT_ROWS.AsVariant]);
          end;  { if }

        if (gbFirst in cdsDetail2.GetGroupState(2)) then
          begin
            // MeasureAbbr narochno se izpolzva kato string za da niama Null-ove posle v poletata, shtoto agregatite gi preskachat
            MeasureAbbr:= cdsDetail2DETAIL_GROUP_TECH_MEASURE_ABBR.AsString;

            if (MeasureAbbr = '') then
              QuantityVariant:= Null
            else
              QuantityVariant:= cdsDetail2SUM_GROUP_TECH_QUANTITY.AsVariant;

            cdsDetail.AppendRecord([
              cdsDetail2DEPT_CODE.AsVariant,
              cdsDetail2DETAIL_GROUP_CODE.AsVariant,
              cdsDetail2DETAIL_GROUP_NO.AsVariant,
              cdsDetail2DETAIL_GROUP_NAME.AsVariant,
              cdsDetail2DETAIL_GROUP_IS_ACTIVE.AsVariant,
              MeasureAbbr,
              QuantityVariant,
              cdsDetail2SUM_GROUP_CAPACITY_BUSY_HOURS.AsVariant,
              cdsDetail2SUM_GROUP_OPERATION_COUNT.AsVariant,
              cdsDetail2COUNT_DETAIL_CODE.AsVariant]);
          end;  { if }

        cdsDetail2.Next;
      end;  { while }

    cdsGridData.First;
    cdsDetail.MasterSource:= dsGridData;
    cdsDetail.MasterFields:= 'DEPT_CODE';
    cdsDetail.First;
    cdsDetail2.MasterSource:= dsDetail;
    cdsDetail2.MasterFields:= 'DEPT_CODE; DETAIL_GROUP_CODE';
    cdsDetail2.First;
  finally
    cdsDetail2.OnCalcFields:= cdsDetail2CalcFieldsEventHandler;
  end;  { try }

  // d7 bug workaround - za da se izchisliat pravilno calc-fieldovete varhu agregatite, sled kato e zakachen handlera
  cdsGridData.Last;
  cdsGridData.First;
end;

function TfmDeptDetailFlow.OpenTimeInSeconds: Integer;
begin
  Result:= inherited OpenTimeInSeconds + cdsDetail2.OpenTimeInSeconds;
end;

procedure TfmDeptDetailFlow.FormShow(Sender: TObject);
var
  SaveCursor: TCursor;
begin
  inherited;
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    with cdsDetail2 do
      if (ProviderName = '') and
         AllUnassigned([RemoteServer, ConnectionBroker, DataSetField]) and
         (FieldCount > 0) then
        CreateDataSet
      else
        begin
          Open;
        end;
  finally
    Screen.Cursor:= SaveCursor;
  end;  { try }
end;

procedure TfmDeptDetailFlow.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsDetail2.Close;
end;

procedure TfmDeptDetailFlow.cdsDetail2BeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= PackageParams((Sender as TClientDataSet).Params);
end;

procedure TfmDeptDetailFlow.pdsGridDataParamsBeforePost(DataSet: TDataSet);
begin
  inherited;
  CheckRequiredField(pdsGridDataParamsFLOW_TYPE);
  if (pdsGridDataParamsFLOW_TYPE.AsInteger in [1, 2]) then
    begin
      CheckRequiredField(pdsGridDataParamsBEGIN_DATE);
      CheckRequiredField(pdsGridDataParamsEND_DATE);
    end;  { if }
end;

procedure TfmDeptDetailFlow.dsDetailDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  grdDetail2.SelectedRows.Clear;
end;

procedure TfmDeptDetailFlow.actBaseGroupsExecute(Sender: TObject);
var
  BaseGroupDataChanged: Boolean;
  i: Integer;
  GroupDeptCode: Integer;
  SelectedProducts: TIntegerArray;
  em: TEditMode;
begin
  inherited;
  LoginContext.CheckUserActivity(uaBaseGroups);

  if (EditMode = emEdit) and LoginContext.HasUserActivity(uaBaseGroupsEdit) then
    em:= emEdit
  else
    em:= emReadOnly;

  cdsDetail2.DisableControls;
  try
    if (grdDetail2.SelectedRows.Count > 0) then
      begin
        // proverka da sa ot edin i susht Dept
        cdsDetail2.Bookmark:= grdDetail2.SelectedRows[0];
        GroupDeptCode:= cdsDetail2GROUP_DEPT_CODE.AsInteger;
        for i:= 1 to grdDetail2.SelectedRows.Count - 1 do
          begin
            cdsDetail2.Bookmark:= grdDetail2.SelectedRows[i];
            if (cdsDetail2GROUP_DEPT_CODE.AsInteger <> GroupDeptCode) then
              raise Exception.Create(SFromDiferentDepts);
          end;  { for }

        // podgotviane na spisaka s produktite
        SetLength(SelectedProducts, grdDetail2.SelectedRows.Count);
        for i:= 0 to grdDetail2.SelectedRows.Count - 1 do
          begin
            cdsDetail2.Bookmark:= grdDetail2.SelectedRows[i];
            SelectedProducts[i]:= cdsDetail2DETAIL_CODE.AsInteger;
          end;  { for }
      end
    else
      begin
        cdsDetail2.Bookmark:= cdsDetail2.Bookmark;
        SelectedProducts:= IntegerArrayOf([cdsDetail2DETAIL_CODE.AsInteger]);
      end;

    BaseGroupDataChanged:=
      TfmBaseGroups.ShowForm(
        dmDocClient,
        cdsDetail2,
        em,
        doNone,
        cdsDetail2GROUP_DEPT_CODE.IsNull,
        SelectedProducts);

    if BaseGroupDataChanged then
      RefreshDataSets;
  finally
    cdsDetail2.EnableControls;
  end;  { try }
end;

procedure TfmDeptDetailFlow.actBaseGroupsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridData.IsEmpty and
    not cdsDetail.IsEmpty and
    not cdsDetail2.IsEmpty;
end;

procedure TfmDeptDetailFlow.cdsDetail2CalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsDetail2GROUP_PRODUCT_CODE.AsVariant:= cdsDetail2DETAIL_GROUP_CODE.AsVariant;

  cdsDetail2GROUP_DEPT_CODE.AsVariant:= cdsDetail2DEPT_CODE.AsVariant;

  if (VarToStr(cdsDetail2MIN_GROUP_TECH_MEASURE_ABBR.AsVariant) = VarToStr(cdsDetail2MAX_GROUP_TECH_MEASURE_ABBR.AsVariant)) then
    begin
      cdsDetail2_GROUP_TECH_MEASURE_ABBR.AsVariant:= cdsDetail2MIN_GROUP_TECH_MEASURE_ABBR.AsVariant;
      cdsDetail2_SUM_GROUP_TECH_QUANTITY.AsVariant:= cdsDetail2SUM_GROUP_TECH_QUANTITY.AsVariant;
    end
  else
    begin
      cdsDetail2_GROUP_TECH_MEASURE_ABBR.Clear;
      cdsDetail2_SUM_GROUP_TECH_QUANTITY.Clear;
    end;
end;

procedure TfmDeptDetailFlow.cdsDetailCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (VarToStr(cdsDetailMIN_TECH_MEASURE_ABBR.AsVariant) = VarToStr(cdsDetailMAX_TECH_MEASURE_ABBR.AsVariant)) then
    begin
      cdsDetail_TECH_MEASURE_ABBR.AsVariant:= cdsDetailMIN_TECH_MEASURE_ABBR.AsVariant;
      cdsDetail_SUM_TECH_QUANTITY.AsVariant:= cdsDetailSUM_TECH_QUANTITY.AsVariant;
    end
  else
    begin
      cdsDetail_TECH_MEASURE_ABBR.Clear;
      cdsDetail_SUM_TECH_QUANTITY.Clear;
    end;
end;

procedure TfmDeptDetailFlow.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if not cdsGridDataDEPT_IS_ACTIVE.AsBoolean then
    AFont.Color:= clGray;
end;

procedure TfmDeptDetailFlow.grdDetail2DblClick(Sender: TObject);
begin
  inherited;
  actBaseGroups.Execute;
end;

procedure TfmDeptDetailFlow.grdDetail2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if not cdsDetail2DETAIL_IS_ACTIVE.AsBoolean then
    AFont.Color:= clGray;
end;

procedure TfmDeptDetailFlow.grdDetailGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if not cdsDetailDETAIL_GROUP_IS_ACTIVE.AsBoolean then
    AFont.Color:= clGray;
end;

procedure TfmDeptDetailFlow.actFormUpdate(Sender: TObject);
begin
  inherited;

  grdData.Columns[3].Title.Caption:=
    OperationCountCaptions[pdsGridDataParamsFLOW_LEVEL.AsInteger];

  grdDetail.Columns[3].Title.Caption:=
    OperationCountCaptions[pdsGridDataParamsFLOW_LEVEL.AsInteger];

  grdDetail2.Columns[6].Title.Caption:=
    OperationCountCaptions[pdsGridDataParamsFLOW_LEVEL.AsInteger];

  grdDetail2.Columns[7].Title.Caption:=
    ModelCountCaptions[pdsGridDataParamsFLOW_TYPE.AsInteger];

  // posledovatelnostta e vajna
  pnlParRelProductsForDetailAndDeptButton.Visible:=
    (pdsGridDataParamsFLOW_TYPE.AsInteger = 2);

  pnlParRelProductsForDeptButton.Visible:=
    (pdsGridDataParamsFLOW_TYPE.AsInteger = 2);

  actDeptToolNeeds.Visible:=
    (pdsGridDataParamsFLOW_LEVEL.AsInteger = 1);

  actDeptDetailGroupToolNeeds.Visible:=
    (pdsGridDataParamsFLOW_LEVEL.AsInteger = 1);

  actDeptDetailToolNeeds.Visible:=
    (pdsGridDataParamsFLOW_LEVEL.AsInteger = 1);
end;

class function TfmDeptDetailFlow.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmDeptDetailFlow.actDeptToolNeedsExecute(Sender: TObject);
begin
  inherited;
  PopupMenuFromButton(btnDeptToolNeeds, pmDeptToolNeeds);
end;

procedure TfmDeptDetailFlow.actDeptToolNeedsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmDeptDetailFlow.actDeptDetailGroupToolNeedsExecute(Sender: TObject);
begin
  inherited;
  PopupMenuFromButton(btnDeptDetailGroupToolNeeds, pmDeptDetailGroupToolNeeds);
end;

procedure TfmDeptDetailFlow.actDeptDetailGroupToolNeedsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmDeptDetailFlow.actDeptDetailToolNeedsExecute(Sender: TObject);
begin
  inherited;
  PopupMenuFromButton(btnDeptDetailToolNeeds, pmDeptDetailToolNeeds);
end;

procedure TfmDeptDetailFlow.actDeptDetailToolNeedsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail2.IsEmpty;
end;

procedure TfmDeptDetailFlow.actDeptDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDeptDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    cdsGridDataDEPT_CODE.AsInteger);
end;

procedure TfmDeptDetailFlow.actDeptDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= cdsGridDataDEPT_HAS_DOC.AsInteger;
end;

procedure TfmDeptDetailFlow.actDetailDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    cdsDetail2DETAIL_CODE.AsInteger);
end;

procedure TfmDeptDetailFlow.actDetailDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= cdsDetail2DETAIL_HAS_DOC.AsInteger;
end;

procedure TfmDeptDetailFlow.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode,
    ADefaultsOrigin, AFilterFormEnabled);

  if Assigned(ADataSet) and
     (AEditMode in [emEdit, emReadOnly]) then
    SetParams(cdsDetail2.Params, ADataSet);
end;

procedure TfmDeptDetailFlow.actCopyToClipboardExecute(Sender: TObject);
begin
  inherited;
  actCopyNoToClipboard.Execute;
end;

procedure TfmDeptDetailFlow.actCopyToClipboardUpdate(Sender: TObject);
begin
  inherited;
  with cdsDetail2 do
    (Sender as TAction).Enabled:=
      Active and
      not (Bof and Eof);
end;

procedure TfmDeptDetailFlow.actCopyNoToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsDetail2DETAIL_NO.AsString;
end;

procedure TfmDeptDetailFlow.actCopyNameToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsDetail2DETAIL_NAME.AsString;
end;

procedure TfmDeptDetailFlow.ShowParRelProducts(AParRelProductsOrientation: TParRelProductsOrientation;
  AIsForDetail: Boolean);
const
  ParRelProductsDeptIncludeKinds: array[0..1] of TParRelProductsDeptIncludeKind = (prpdikStageDept, prpdikOpDept);
  ParRelProductsDeptFieldNames: array[0..1] of string = ('STAGE_DEPT_CODE', 'OP_DEPT_CODE');
var
  ParRelProductsStructurePartIncludeKind: TParRelProductsStructurePartIncludeKind;
  ParRelProductsDeptIncludeKind: TParRelProductsDeptIncludeKind;
begin
  if AIsForDetail then
    ParRelProductsStructurePartIncludeKind:= prpspikDetail
  else
    ParRelProductsStructurePartIncludeKind:= prpspikNone;

  ParRelProductsDeptIncludeKind:=
    ParRelProductsDeptIncludeKinds[pdsGridDataParamsFLOW_LEVEL.AsInteger];

  cdsParRelProductsParams.CreateDataSet;
  try
    cdsParRelProductsParams.Append;
    try
      cdsParRelProductsParamsOBTAINMENT_TYPE_CODE.AsInteger:=
        ObtainmentTypeToInt(otAcquire);

      cdsParRelProductsParamsPRODUCT_COMMON_LEVEL.Assign(
        pdsGridDataParamsPRODUCT_COMMON_LEVEL);

      cdsParRelProductsParamsPRODUCT_COMMON_LEVEL.Assign(
        pdsGridDataParamsPRODUCT_COMMON_LEVEL);

      cdsParRelProductsParamsBEGIN_DATE.Assign(
        pdsGridDataParamsBEGIN_DATE);

      cdsParRelProductsParamsEND_DATE.Assign(
        pdsGridDataParamsEND_DATE);

      cdsParRelProductsParams.FieldByName(ParRelProductsDeptFieldNames[pdsGridDataParamsFLOW_LEVEL.AsInteger]).Assign(
        cdsDetail2DEPT_CODE);

      if AIsForDetail then
        cdsParRelProductsParamsDETAIL_CODE.Assign(
          cdsDetail2DETAIL_CODE);

      cdsParRelProductsParamsMIN_PRP_STATUS_CODE.Assign(pdsGridDataParamsMIN_PRP_STATUS_CODE);
      cdsParRelProductsParamsMAX_PRP_STATUS_CODE.Assign(pdsGridDataParamsMAX_PRP_STATUS_CODE);

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
      AParRelProductsOrientation,
      prpkQuantity,
      ParRelProductsStructurePartIncludeKind,
      ParRelProductsDeptIncludeKind,
      False
    );
  finally
    cdsParRelProductsParams.Close;
  end;  { try }
end;

procedure TfmDeptDetailFlow.actParRelProductsForDeptExecute(Sender: TObject);
begin
  inherited;
  PopupMenuFromButton(btnParRelProductsForDept, pmParRelProductsForDept);
end;

procedure TfmDeptDetailFlow.actParRelProductsForDeptPartnerOrientedExecute(
  Sender: TObject);
begin
  inherited;
  ShowParRelProducts(prpoPartner, False);
end;

procedure TfmDeptDetailFlow.actParRelProductsForDeptPartnerOrientedUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail2.IsEmpty;
end;

procedure TfmDeptDetailFlow.actParRelProductsForDeptProductOrientedExecute(
  Sender: TObject);
begin
  inherited;
  ShowParRelProducts(prpoProduct, False);
end;

procedure TfmDeptDetailFlow.actParRelProductsForDeptProductOrientedUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail2.IsEmpty;
end;

procedure TfmDeptDetailFlow.actParRelProductsForDeptUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail2.IsEmpty;
end;

procedure TfmDeptDetailFlow.actParRelProductsForDetailAndDeptExecute(
  Sender: TObject);
begin
  inherited;
  PopupMenuFromButton(btnParRelProductsForDetailAndDept, pmParRelProductsForDetailAndDept);
end;

procedure TfmDeptDetailFlow.actParRelProductsForDetailAndDeptPartnerOrientedExecute(
  Sender: TObject);
begin
  inherited;
  ShowParRelProducts(prpoPartner, True);
end;

procedure TfmDeptDetailFlow.actParRelProductsForDetailAndDeptPartnerOrientedUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail2.IsEmpty;
end;

procedure TfmDeptDetailFlow.actParRelProductsForDetailAndDeptProductOrientedExecute(
  Sender: TObject);
begin
  inherited;
  ShowParRelProducts(prpoProduct, True);
end;

procedure TfmDeptDetailFlow.actParRelProductsForDetailAndDeptProductOrientedUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail2.IsEmpty;
end;

procedure TfmDeptDetailFlow.actParRelProductsForDetailAndDeptUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail2.IsEmpty;
end;

procedure TfmDeptDetailFlow.actPrintDetailsExecute(Sender: TObject);
begin
  // do not call inherited
  case MessageDlgEx(SConfirmDetail2Print, mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
    mrYes:
      TrptDeptDetailFlowDetails.PrintReport(cdsDetail, cdsGridData, cdsDetail2, OperationCountCaptions[pdsGridDataParamsFLOW_LEVEL.AsInteger]);
    mrNo:
      TrptDeptDetailFlow.PrintReport(cdsDetail, cdsGridData, OperationCountCaptions[pdsGridDataParamsFLOW_LEVEL.AsInteger]);
    mrCancel:
      Abort;
  end;
end;

procedure TfmDeptDetailFlow.actSpecDocStatusExecute(Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient, cdsDetail2SPEC_PRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmDeptDetailFlow.actSpecDocStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail2SPEC_PRODUCT_CODE.IsNull;
end;

procedure TfmDeptDetailFlow.actToolNeedsExecute(Sender: TObject);
var
  a: TToolNeedsAction;
begin
  a:= (Sender as TToolNeedsAction);
  TfmDeptDetailFlowToolNeeds.ShowForm(
    dmDocClient, a.DataSet, EditMode, cdsDetail2.Params, a.ToolType, a.ToolStructPartType);
end;

procedure TfmDeptDetailFlow.actExcelExportExecute(Sender: TObject);
begin
  // do not call inherited
  case MessageDlgBtn(SConfirmExcelExport, mtConfirmation, [SOneLevelExport, STwoLevelsExport, SThreeLevelsExport, SCancel], -1) of
    0: GridExcelExport(grdData);
    1: MasterDetailGridExcelExport(grdData, grdDetail);
    2: MultiLevelExcelExport([grdData, grdDetail, grdDetail2]);
  end;
end;

end.







