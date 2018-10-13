unit fEngineeringOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, ToolWin,
  ComCtrls, JvExControls, JvDBLookup, Mask, DBCtrls, AbmesFields,
  fBaseFrame, fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fDeptFieldEditFrameBald, fDateFieldEditFrame,
  fProductFieldEditFrame, fProductFieldEditFrameBald,
  fEmployeeFieldEditFrame, fEmployeeFieldEditFrameBald, dDocClient,
  uClientTypes, JvComponentBase, JvExStdCtrls, JvDBCombobox, JvCombobox, System.Actions;

type
  TfmEngineeringOrder = class(TEditForm)
    gbEngineeringOrder: TGroupBox;
    lblState: TLabel;
    lblEngineeringBranch: TLabel;
    lblEngineeringNo: TLabel;
    lblEngineeringOrderType: TLabel;
    edtState: TDBEdit;
    cbEngineeringBranch: TJvDBLookupCombo;
    edtEngineeringNo: TDBEdit;
    cbEngineeringOrderType: TJvDBLookupCombo;
    cdsDataENGINEERING_ORDER_CODE: TAbmesFloatField;
    cdsDataENGINEERING_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsDataENGINEERING_ORDER_NO: TAbmesFloatField;
    cdsDataENGINEERING_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsDataPRIORITY_CODE: TAbmesFloatField;
    cdsDataORDER_DEPT_CODE: TAbmesFloatField;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataTHOROUGHLY_ENG_PRODUCT_CODE: TAbmesFloatField;
    cdsDataENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsDataENGINEERING_DEPT_CODE: TAbmesFloatField;
    cdsDataENGINEERING_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataENGINEERING_PLAN_WORKDAYS: TAbmesFloatField;
    cdsDataACTIVATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataACTIVATE_DATE: TAbmesSQLTimeStampField;
    cdsDataACTIVATE_TIME: TAbmesSQLTimeStampField;
    cdsDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCLOSE_DATE: TAbmesSQLTimeStampField;
    cdsDataCLOSE_TIME: TAbmesSQLTimeStampField;
    cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDataCHANGE_COUNT: TAbmesFloatField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    dsBranches: TDataSource;
    cdsEngineeringOrderTypes: TAbmesClientDataSet;
    dsEngineeringOrderTypes: TDataSource;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    gbPriority: TGroupBox;
    cbPriority: TJvDBLookupCombo;
    cdsPriorities: TAbmesClientDataSet;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NO: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    dsPriorities: TDataSource;
    cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsData_PRIORITY_COLOR: TAbmesFloatField;
    cdsData_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    gbOrderDept: TGroupBox;
    gbEngineeringStart: TGroupBox;
    edtEngineeringStartDateDiff: TDBEdit;
    frEngineeringPlanBeginDate: TfrDateFieldEditFrame;
    cdsData_ENGINEERING_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    gbEngineeringFinal: TGroupBox;
    frProduct: TfrProductFieldEditFrameBald;
    lblProduct: TLabel;
    frThoroughlyEngineeredProduct: TfrProductFieldEditFrameBald;
    lblThoroughlyEngineeredProduct: TLabel;
    edtProductCommonStatus: TDBEdit;
    edtProductCommonProductLevels: TDBEdit;
    lblProductCommonStatus: TLabel;
    lblProductCommonProductLevels: TLabel;
    edtThorughlyEngineeredProductCommonStatus: TDBEdit;
    edtThorughlyEngineeredProductCommonProductLevels: TDBEdit;
    lblThorughlyEngineeredProductCommonStatus: TLabel;
    lblThorughlyEngineeredProductCommonProductLevels: TLabel;
    edtProductSpecState: TDBEdit;
    lblProductSpecState: TLabel;
    edtThorughlyEngineeredProductSpecState: TDBEdit;
    lblThorughlyEngineeredProductSpecState: TLabel;
    lblEngineeringPlanBeginDate: TLabel;
    lbledtEngineeringStartDateDiff: TLabel;
    frEngineeringPlanEndDate: TfrDateFieldEditFrame;
    lblEngineeringPlanEndDate: TLabel;
    edtEngineeringFinalDateDiff: TDBEdit;
    lblEngineeringFinalDateDiff: TLabel;
    btnCommonGroups: TBitBtn;
    actCommonGroups: TAction;
    cdsProductEngineering: TAbmesClientDataSet;
    cdsProductEngineeringCOMMON_STATUS_CODE: TAbmesFloatField;
    cdsProductEngineeringCOMMON_PRODUCTS_LEVEL_NO: TAbmesFloatField;
    cdsProductEngineeringCOMMON_PRODUCTS_SUB_LEVELS: TAbmesFloatField;
    cdsProductEngineeringSPEC_STATE_CODE: TAbmesFloatField;
    cdsProductEngineeringSPEC_CREATE_DATE: TAbmesSQLTimeStampField;
    cdsProductEngineeringSPEC_CHANGE_DATE: TAbmesSQLTimeStampField;
    dsProductEngineering: TDataSource;
    cdsProductEngineering_COMMON_PRODUCTS_LEVELS_SHOW: TAbmesWideStringField;
    gbEngineering: TGroupBox;
    frEngineeringEmployee: TfrEmployeeFieldEditFrameBald;
    gbSystemInfo: TGroupBox;
    frCreateDate: TfrDateFieldEditFrame;
    frChangeDate: TfrDateFieldEditFrame;
    lblCreateDate: TLabel;
    lblChangeDate: TLabel;
    edtChangeCount: TDBEdit;
    lblChangeCount: TLabel;
    edtStructureCoef: TDBEdit;
    lblStructureCoef: TLabel;
    imgFromRemainingWorkdays: TImage;
    edtEngineeringPlanWorkdays: TDBEdit;
    edtEngineeringRealWorkdays: TDBEdit;
    lblEngineeringPlanWorkdays: TLabel;
    lblEngineeringRealWorkdays: TLabel;
    edtEngineeringWorkdays: TLabel;
    edtEngineeringWorkdaysDiff: TDBEdit;
    btnToggleEngineeringWorkdaysMeasure: TSpeedButton;
    lblEngineeringWorkdaysDiffMeasure: TLabel;
    lblEngineeringWorkdaysDiff: TLabel;
    lblEngineeringDept: TLabel;
    lblEngineeringEmployee: TLabel;
    cdsProductEngineering_ENGINEERING_START_DATE_DIFF: TAbmesFloatField;
    cdsData_ENGINEERING_FINAL_DATE_DIFF: TAbmesFloatField;
    cdsProductEngineering_ENGINEERING_REAL_WORKDAYS: TAbmesFloatField;
    actToggleEngineeringWorkdaysMeasure: TAction;
    cdsProductEngineering_ENGINEERING_WORKDAYS_DIFF: TAbmesFloatField;
    cdsProductEngineering_ENGINEERING_WORKDAYS_DIFF_PCT: TAbmesFloatField;
    cdsThorughlyEngineeredProductEngineering: TAbmesClientDataSet;
    dsThorughlyEngineeredProductEngineering: TDataSource;
    cdsThorughlyEngineeredProductEngineeringCOMMON_STATUS_CODE: TAbmesFloatField;
    cdsThorughlyEngineeredProductEngineeringCOMMON_PRODUCTS_LEVEL_NO: TAbmesFloatField;
    cdsThorughlyEngineeredProductEngineeringCOMMON_PRODUCTS_SUB_LEVELS: TAbmesFloatField;
    cdsThorughlyEngineeredProductEngineeringSPEC_STATE_CODE: TAbmesFloatField;
    cdsThorughlyEngineeredProductEngineeringSPEC_CREATE_DATE: TAbmesSQLTimeStampField;
    cdsThorughlyEngineeredProductEngineeringSPEC_CHANGE_DATE: TAbmesSQLTimeStampField;
    cdsThorughlyEngineeredProductEngineering_COMMON_PRODUCTS_LEVELS_SHOW: TAbmesWideStringField;
    cdsDataPRODUCT_PARENT_CODE: TAbmesFloatField;
    actSetThoroughlyEngineeredProduct: TAction;
    btnSetThoroughlyEngineeredProduct: TBitBtn;
    cdsSpecStructStatus: TAbmesClientDataSet;
    cdsSpecStructStatusLEVEL_NO: TAbmesFloatField;
    cdsSpecStructStatusLEVEL_IS_COMPLETE: TAbmesFloatField;
    cdsSpecStructStatusMAX_LEVEL_NO: TAbmesFloatField;
    cdsSpecStructStatusHAS_MISSING_CHILDREN: TAbmesFloatField;
    cdsSpecStructStatus_DISPLAY_TEXT: TAbmesWideStringField;
    dsStructStatus: TDataSource;
    actActivateOrder: TAction;
    actCloseOrder: TAction;
    actAnnulOrder: TAction;
    pnlCloseOrder: TPanel;
    btnCloseOrder: TBitBtn;
    pnlAnnulOrder: TPanel;
    btnAnnulOrder: TBitBtn;
    pnlActivateOrder: TPanel;
    btnActivateOrder: TBitBtn;
    pnlOrderAnnuled: TPanel;
    chbOrderAnnuled: TCheckBox;
    pnlOrderClosed: TPanel;
    chbOrderClosed: TCheckBox;
    cdsData_EO_STATE_CODE: TAbmesFloatField;
    cdsEngineeringOrderTypesENGINEERING_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsEngineeringOrderTypesENGINEERING_ORDER_TYPE_NAME: TAbmesWideStringField;
    cdsEngineeringOrderTypesENGINEERING_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    pnlBottomButtonsClient: TPanel;
    pnlPrintCheck: TPanel;
    chbPrint: TCheckBox;
    pnlPrintButton: TPanel;
    btnPrint: TBitBtn;
    frOrderDept: TfrDeptFieldEditFrameBald;
    frEngineeringDept: TfrDeptFieldEditFrameBald;
    cdsDataPARENT_ENGINEERING_ORDER_CODE: TAbmesFloatField;
    cdsDataPARENT_ENG_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsDataPARENT_ENG_ORDER_NO: TAbmesFloatField;
    cdsDataHAS_PARENT_ENGINEERING_ORDER: TAbmesFloatField;
    gbParentEngineering: TGroupBox;
    pnlParentEngineeringLeft: TPanel;
    pnlParentEngineeringRight: TPanel;
    actChildEngineeringOrders: TAction;
    actParentEngineeringOrder: TAction;
    btnChildEngineeringOrders: TBitBtn;
    bvlParentEngineeringLeft: TBevel;
    cbHasParentEngineeringOrder: TJvDBComboBox;
    bvlParentEngineeringRight: TBevel;
    lblParentEngineeringOrder: TLabel;
    cbParentEngineeringOrderBranch: TJvDBLookupCombo;
    edtParentEngineeringOrderNo: TDBEdit;
    btnParentEngineeringOrder: TBitBtn;
    cdsEngineeringOrderParams: TAbmesClientDataSet;
    cdsEngineeringOrderParamsENGINEERING_ORDER_CODE: TAbmesFloatField;
    cdsEngineeringOrdersParams: TAbmesClientDataSet;
    cdsDataHAS_CHILD_ENGINEERING_ORDERS: TAbmesFloatField;
    cdsEngineeringOrdersParamsHAS_PARENT_ENGINEERING_ORDER: TAbmesFloatField;
    cdsEngineeringOrdersParamsPARENT_ENG_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsEngineeringOrdersParamsPARENT_ENG_ORDER_NO: TAbmesFloatField;
    cdsEngineeringOrdersParamsMAX_EO_STATE_CODE: TAbmesFloatField;
    cdsDataNOTES: TAbmesWideStringField;
    gbNotes: TGroupBox;
    edtNotes: TDBEdit;
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
    procedure cbPriorityDropDown(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure actCommonGroupsUpdate(Sender: TObject);
    procedure actCommonGroupsExecute(Sender: TObject);
    procedure cdsDataPRODUCT_CODEChange(Sender: TField);
    procedure COMMON_STATUS_CODEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure SPEC_STATE_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsProductEngineeringCalcFields(DataSet: TDataSet);
    procedure actToggleEngineeringWorkdaysMeasureUpdate(Sender: TObject);
    procedure actToggleEngineeringWorkdaysMeasureExecute(Sender: TObject);
    procedure cdsProductEngineeringBeforeOpen(DataSet: TDataSet);
    procedure cdsThorughlyEngineeredProductEngineeringBeforeOpen(
      DataSet: TDataSet);
    procedure cdsThorughlyEngineeredProductEngineeringCalcFields(
      DataSet: TDataSet);
    procedure actSetThoroughlyEngineeredProductUpdate(Sender: TObject);
    procedure actSetThoroughlyEngineeredProductExecute(Sender: TObject);
    procedure cdsDataTHOROUGHLY_ENG_PRODUCT_CODEChange(Sender: TField);
    procedure cdsSpecStructStatusCalcFields(DataSet: TDataSet);
    procedure cdsSpecStructStatusBeforeOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actActivateOrderExecute(Sender: TObject);
    procedure actCloseOrderExecute(Sender: TObject);
    procedure actAnnulOrderExecute(Sender: TObject);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsData_EO_STATE_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDataENGINEERING_DEPT_CODEChange(Sender: TField);
    procedure cdsDataHAS_PARENT_ENGINEERING_ORDERChange(Sender: TField);
    procedure cdsDataPARENT_ENG_ORDER_BRANCH_CODEChange(Sender: TField);
    procedure cdsDataPARENT_ENG_ORDER_NOChange(Sender: TField);
    procedure actParentEngineeringOrderUpdate(Sender: TObject);
    procedure actParentEngineeringOrderExecute(Sender: TObject);
    procedure actChildEngineeringOrdersUpdate(Sender: TObject);
    procedure actChildEngineeringOrdersExecute(Sender: TObject);
    procedure cdsBranchesBeforeOpen(DataSet: TDataSet);
  private
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    procedure RecalcProductEngineering;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure RefreshProductEngineering;
    procedure RefreshThoroughlyEngineeredProductEngineering;
    procedure RefreshSpecStructStatus;
    function EOStateCode: Integer;
    function CanModifyData: Boolean;
    function CanModifyEngineeringData: Boolean;
    function CanModifyActivatedOrderEngineeringData: Boolean;
    procedure SetParentEngineeringOrderCode;
  protected
    class function CanUseDocs: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure DoApplyUpdates; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;
    procedure Finalize; override;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone): Boolean;
  end;

implementation

uses
  dMain, uDocUtils, uColorConsts, uModelUtils, uProductClientUtils, uProducts,
  AbmesDialogs, StrUtils, fTreeSelectForm, fCommonGroups,
  uUserActivityConsts, uTreeClientUtils, uUtils, uClientUtils,
  uDocClientUtils, fEngineeringOrders, uClientDateTime, uComboBoxUtils;

resourcestring
  SCantSetEngEmployeeWithoutEngDept = 'Не можете да задавате %s без %s';
  SNewEngineeringOrderNo = 'Ордера е записан под номер %d';
  SWorkdays = 'р.д.';
  SCantCloseInactiveOrder = 'Не можете да приключвате неактивиран ОПИР!';
  SConfirmActivation = 'Потвърдете активирането!';
  SActivatingNotAllowed = 'Можете да активирате ОПИР %d работни дни преди старта му.' + SLineBreak +
                          'Днес това е невъзможно!';
  SConfirmClosing = 'Приключването е необратима операция. Преди приключване е необходимо да се убедите в пълнотата и коректността на ПИР.'  + SLineBreak +
                    'Потвърдете приключването!';
  SConfirmAnnul = 'Потвърдете анулирането!';
  SProductMustDifferThoroughlyEngProduct = '"%s" не трябва да съвпада с "%s"';

{$R *.dfm}

{ TfmEngineeringOrder }

class function TfmEngineeringOrder.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmEngineeringOrder.OpenDataSets;
begin
  cdsBranches.Open;
  cdsEngineeringOrderTypes.Open;
  cdsPriorities.Open;
  inherited;
end;

procedure TfmEngineeringOrder.CloseDataSets;
begin
  inherited;

  cdsPriorities.Open;
  cdsEngineeringOrderTypes.Close;
  cdsBranches.Close;

  cdsProductEngineering.Close;
  cdsThorughlyEngineeredProductEngineering.Close;
  cdsSpecStructStatus.Close;
end;

procedure TfmEngineeringOrder.cdsDataNewRecord(DataSet: TDataSet);
begin
  cdsDataHAS_PARENT_ENGINEERING_ORDER.AsBoolean:= False;

  inherited;

  cdsDataENGINEERING_ORDER_CODE.AsInteger:=
    dmMain.SvrEngineering.NewEngineeringOrderCode;
  cdsDataENGINEERING_ORDER_NO.AsInteger:=
    dmMain.SvrEngineering.NewEngineeringOrderNo;
  cdsDataCREATE_DATE.AsDateTime:= ContextDate;

  cdsDataCHANGE_EMPLOYEE_CODE.Clear;
  cdsDataCHANGE_DATE.Clear;
  cdsDataCHANGE_TIME.Clear;
  cdsDataCHANGE_COUNT.Clear;

  cdsDataACTIVATE_EMPLOYEE_CODE.Clear;
  cdsDataACTIVATE_DATE.Clear;
  cdsDataACTIVATE_TIME.Clear;

  cdsDataCLOSE_EMPLOYEE_CODE.Clear;
  cdsDataCLOSE_DATE.Clear;
  cdsDataCLOSE_TIME.Clear;

  cdsDataANNUL_EMPLOYEE_CODE.Clear;
  cdsDataANNUL_DATE.Clear;
  cdsDataANNUL_TIME.Clear;

  cdsDataHAS_CHILD_ENGINEERING_ORDERS.AsBoolean:= False;
end;

procedure TfmEngineeringOrder.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  btnDocs.ImageIndex:= cdsDataHAS_DOC_ITEMS.AsInteger;

  if cdsData.Active and
     (not cdsData_PRIORITY_COLOR.IsNull) and
     (not cbPriority.Focused) then
    cbPriority.Font.Color:= cdsData_PRIORITY_COLOR.AsInteger
  else
    cbPriority.Font.Color:= clWindowText;

  if cdsData.Active and
     (not cdsData_PRIORITY_BACKGROUND_COLOR.IsNull) and
     (not cbPriority.Focused) then
    cbPriority.Color:= cdsData_PRIORITY_BACKGROUND_COLOR.AsInteger
  else
    cbPriority.Color:= clWindow;

  if cdsProductEngineering.Active and
     (not cdsProductEngineeringSPEC_STATE_CODE.IsNull) and
     (Low(SpecStateColors) <= cdsProductEngineeringSPEC_STATE_CODE.AsInteger) and
     (cdsProductEngineeringSPEC_STATE_CODE.AsInteger <= High(SpecStateColors)) then
    edtProductSpecState.Color:= SpecStateColors[cdsProductEngineeringSPEC_STATE_CODE.AsInteger]
  else
    edtProductSpecState.Color:= clBtnFace;

  if cdsThorughlyEngineeredProductEngineering.Active and
     (not cdsThorughlyEngineeredProductEngineeringSPEC_STATE_CODE.IsNull) and 
     (Low(SpecStateColors) <= cdsThorughlyEngineeredProductEngineeringSPEC_STATE_CODE.AsInteger) and
     (cdsThorughlyEngineeredProductEngineeringSPEC_STATE_CODE.AsInteger <= High(SpecStateColors)) then
    edtThorughlyEngineeredProductSpecState.Color:= SpecStateColors[cdsThorughlyEngineeredProductEngineeringSPEC_STATE_CODE.AsInteger]
  else
    edtThorughlyEngineeredProductSpecState.Color:= clBtnFace;

  if cdsSpecStructStatus.Active and
     (not cdsSpecStructStatusLEVEL_NO.IsNull) and
     (cdsSpecStructStatusLEVEL_NO.AsInteger = cdsSpecStructStatusMAX_LEVEL_NO.AsInteger) then
    edtStructureCoef.Color:= $00C5EFC2
  else
    edtStructureCoef.Color:= ccTotalLateNotSelected;

  pnlPrintCheck.Visible:=
    GetPrintEnabled and
    cdsData.Active and
    (cdsData.State in dsEditModes);
  pnlPrintButton.Visible:=
    GetPrintEnabled and
    cdsData.Active and
    not (cdsData.State in dsEditModes);

  pnlActivateOrder.Visible:=
    cdsData.Active and
    cdsDataACTIVATE_EMPLOYEE_CODE.IsNull and
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    (EditMode <> emReadOnly);

  pnlCloseOrder.Visible:=
    cdsData.Active and
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    (EditMode = emEdit);

  pnlAnnulOrder.Visible:=
    cdsData.Active and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    (EditMode = emEdit);

  pnlOrderClosed.Visible:=
    cdsData.Active and
    (not cdsDataCLOSE_EMPLOYEE_CODE.IsNull);

  pnlOrderAnnuled.Visible:=
    cdsData.Active and
    (not cdsDataANNUL_EMPLOYEE_CODE.IsNull);

  ro:= not CanModifyData;

  cbPriority.ReadOnly:= ro;  // izwyn SetControlsReadOnly za da ne mu smenq cweta

  SetControlsReadOnly(
    not CanModifyData,
    [ cbEngineeringBranch,
      cbEngineeringOrderType,
      cbParentEngineeringOrderBranch,
      edtParentEngineeringOrderNo,
      edtNotes]);

  with ReplacedDBComboBox(cbHasParentEngineeringOrder) do
    begin
      XReadOnly:= ro;
      XColor:= ReadOnlyColors[ro];
      pnlParentEngineeringRight.Visible:= (XItemIndex = 1);
    end;

  SetControlReadOnly(not CanModifyEngineeringData, edtEngineeringPlanWorkdays);

  if cdsData.Active and
     (cdsData_EO_STATE_CODE.AsInteger in [Low(TEOStates)..High(TEOStates)]) and
     (EOStateColors[cdsData_EO_STATE_CODE.AsInteger] <> clWindow) then
    edtState.Color:= EOStateColors[cdsData_EO_STATE_CODE.AsInteger]
  else
    edtState.Color:= clBtnFace;
end;

procedure TfmEngineeringOrder.actParentEngineeringOrderExecute(Sender: TObject);
begin
  inherited;
  cdsEngineeringOrderParams.CreateDataSet;
  try
    cdsEngineeringOrderParams.AppendRecord([cdsDataPARENT_ENGINEERING_ORDER_CODE.AsInteger]);
    TfmEngineeringOrder.ShowForm(nil, cdsEngineeringOrderParams, emReadOnly);
  finally
    cdsEngineeringOrderParams.Close;
  end;
end;

procedure TfmEngineeringOrder.actParentEngineeringOrderUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    not cdsDataPARENT_ENGINEERING_ORDER_CODE.IsNull;
end;

procedure TfmEngineeringOrder.btnDocsClick(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if not CanModifyData then
    em:= emReadOnly
  else
    em:= EditMode;

  dmDocClient.DSOpenDoc(em, (Sender as TControl), dotEngineeringOrder, cdsData);
end;

class function TfmEngineeringOrder.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmEngineeringOrder.cbPriorityDropDown(Sender: TObject);
begin
  inherited;
  actForm.Update;
end;

procedure TfmEngineeringOrder.FormCreate(Sender: TObject);
begin
  inherited;

  frOrderDept.FieldNames:= 'ORDER_DEPT_CODE';
  frEngineeringPlanBeginDate.FieldNames:= '_ENGINEERING_PLAN_BEGIN_DATE';
  frProduct.FieldNames:= 'PRODUCT_CODE';
  frProduct.TreeDetailSelection:= tdsInstance;
  frThoroughlyEngineeredProduct.FieldNames:= 'THOROUGHLY_ENG_PRODUCT_CODE';
  frThoroughlyEngineeredProduct.TreeDetailSelection:= tdsInstance;
  frEngineeringPlanEndDate.FieldNames:= 'ENGINEERING_PLAN_END_DATE';
  frEngineeringDept.FieldNames:= 'ENGINEERING_DEPT_CODE';
  frEngineeringEmployee.FieldNames:= 'ENGINEERING_EMPLOYEE_CODE';
  frEngineeringEmployee.SpecialProffesionEmployee:= speOkidu;
  frEngineeringEmployee.DocButtonVisible:= False;
  frCreateDate.FieldNames:= 'CREATE_DATE';
  frChangeDate.FieldNames:= 'CHANGE_DATE';
end;

procedure TfmEngineeringOrder.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frEngineeringPlanBeginDate) or
     (AFrame = frCreateDate) or
     (AFrame = frChangeDate) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  if (AFrame = frOrderDept) then
    begin
      AFrame.ReadOnly:= not CanModifyData;
      Exit;
    end;  { if }

  if (AFrame = frProduct) or
     (AFrame = frThoroughlyEngineeredProduct) then
    begin
      AFrame.ReadOnly:= not CanModifyEngineeringData;
      Exit;
    end;  { if }

  if (AFrame = frEngineeringDept) then
    begin
      AFrame.ReadOnly:= not CanModifyActivatedOrderEngineeringData;
      Exit;
    end;  { if }

  if (AFrame = frEngineeringPlanEndDate) then
    begin
      AFrame.ReadOnly:= not CanModifyData;
      Exit;
    end;  { if }

   if (AFrame = frEngineeringEmployee) then
    begin
      AFrame.ReadOnly:=
        (not CanModifyActivatedOrderEngineeringData) or
        cdsDataENGINEERING_DEPT_CODE.IsNull;
      Exit;
    end;  { if }

  inherited;
end;

procedure TfmEngineeringOrder.SetParentEngineeringOrderCode;
var
  EngineeringOrderCode: Integer;
begin
  if cdsDataPARENT_ENG_ORDER_BRANCH_CODE.IsNull or
     cdsDataPARENT_ENG_ORDER_NO.IsNull then
    cdsDataPARENT_ENGINEERING_ORDER_CODE.Clear
  else
    begin
      EngineeringOrderCode:=
        dmMain.SvrEngineering.GetEngineeringOrderCode(
          cdsDataPARENT_ENG_ORDER_BRANCH_CODE.AsInteger,
          cdsDataPARENT_ENG_ORDER_NO.AsInteger
        );

      if (EngineeringOrderCode = 0) then
        begin
          cdsDataPARENT_ENG_ORDER_NO.FocusControl;
          raise Exception.Create('Не съществува ОПИР с тавака идентификация')
        end;

      cdsDataPARENT_ENGINEERING_ORDER_CODE.AsInteger:= EngineeringOrderCode;
    end;
end;

class function TfmEngineeringOrder.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean;
begin
  case AEditMode of
    emInsert:
      dmMain.LoginContext.CheckUserActivity(uaNewEngineeringOrder);
    emEdit:
      dmMain.LoginContext.CheckUserActivity(uaEngineeringOrdersEdit);
  end;  { case }

  Result:= inherited ShowForm(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
end;

procedure TfmEngineeringOrder.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsDataENGINEERING_PLAN_END_DATE.IsNull or
     cdsDataENGINEERING_PLAN_WORKDAYS.IsNull then
    cdsData_ENGINEERING_PLAN_BEGIN_DATE.Clear
  else
    cdsData_ENGINEERING_PLAN_BEGIN_DATE.AsDateTime:=
      dmMain.IncDateByWorkdays(
        cdsDataENGINEERING_PLAN_END_DATE.AsDateTime + 1,
        -cdsDataENGINEERING_PLAN_WORKDAYS.AsInteger);

  if cdsDataENGINEERING_PLAN_END_DATE.IsNull then
    cdsData_ENGINEERING_FINAL_DATE_DIFF.Clear
  else
    begin
      if cdsDataCLOSE_DATE.IsNull then
        cdsData_ENGINEERING_FINAL_DATE_DIFF.AsInteger:=
          Trunc(cdsDataENGINEERING_PLAN_END_DATE.AsDateTime - ContextDate)
      else
        cdsData_ENGINEERING_FINAL_DATE_DIFF.AsInteger:=
          Trunc(
            cdsDataENGINEERING_PLAN_END_DATE.AsDateTime -
            cdsDataCLOSE_DATE.AsDateTime
          );
    end;

  cdsData_EO_STATE_CODE.AsInteger:= EOStateCode;

  RecalcProductEngineering;
end;

procedure TfmEngineeringOrder.actCommonGroupsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsDataPRODUCT_CODE.IsNull;
end;

procedure TfmEngineeringOrder.actCommonGroupsExecute(Sender: TObject);
begin
  inherited;
  TfmCommonGroups.ShowForm(nil, cdsDataPRODUCT_PARENT_CODE.AsInteger, cdsDataPRODUCT_CODE.AsInteger);
end;

procedure TfmEngineeringOrder.cdsDataPARENT_ENG_ORDER_BRANCH_CODEChange(
  Sender: TField);
begin
  inherited;
  SetParentEngineeringOrderCode;
end;

procedure TfmEngineeringOrder.cdsDataPARENT_ENG_ORDER_NOChange(Sender: TField);
begin
  inherited;
  SetParentEngineeringOrderCode;
end;

procedure TfmEngineeringOrder.cdsDataPRODUCT_CODEChange(Sender: TField);
begin
  inherited;

  DoProductFieldChanged(cdsDataPRODUCT_CODE,
    nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
    cdsDataPRODUCT_PARENT_CODE);

  RefreshProductEngineering;
  RefreshSpecStructStatus;

  actSetThoroughlyEngineeredProduct.Execute;
end;

procedure TfmEngineeringOrder.COMMON_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text:= ProductCommonStatusAbbrevs[Sender.AsInteger];
end;

procedure TfmEngineeringOrder.SPEC_STATE_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (not Sender.IsNull) and
     (Low(SpecNoQuantityStateAbbrevs) <= Sender.AsInteger) and
     (Sender.AsInteger <= High(SpecNoQuantityStateAbbrevs)) then
    Text:= SpecNoQuantityStateAbbrevs[Sender.AsInteger];
end;

procedure TfmEngineeringOrder.cdsProductEngineeringCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  CalcCommonProductsLevelsShow(DataSet);

  if cdsData_ENGINEERING_PLAN_BEGIN_DATE.IsNull then
    cdsProductEngineering_ENGINEERING_START_DATE_DIFF.Clear
  else
    begin
      if cdsDataACTIVATE_DATE.IsNull then
        cdsProductEngineering_ENGINEERING_START_DATE_DIFF.AsInteger:=
          Trunc(cdsData_ENGINEERING_PLAN_BEGIN_DATE.AsDateTime - ContextDate)
      else
        cdsProductEngineering_ENGINEERING_START_DATE_DIFF.AsInteger:=
          Trunc(
            cdsData_ENGINEERING_PLAN_BEGIN_DATE.AsDateTime -
            cdsDataACTIVATE_DATE.AsDateTime
          );
    end;

  if cdsDataACTIVATE_DATE.IsNull then
    cdsProductEngineering_ENGINEERING_REAL_WORKDAYS.AsInteger:= 0
  else
    begin
      if cdsDataCLOSE_DATE.IsNull then
        cdsProductEngineering_ENGINEERING_REAL_WORKDAYS.AsInteger:=
          dmMain.CountWorkdays(cdsDataACTIVATE_DATE.AsDateTime, ContextDate)
      else
        cdsProductEngineering_ENGINEERING_REAL_WORKDAYS.AsInteger:=
          dmMain.CountWorkdays(cdsDataACTIVATE_DATE.AsDateTime, cdsDataCLOSE_DATE.AsDateTime);
    end;

  if cdsDataENGINEERING_PLAN_WORKDAYS.IsNull then
    cdsProductEngineering_ENGINEERING_WORKDAYS_DIFF.Clear
  else
    cdsProductEngineering_ENGINEERING_WORKDAYS_DIFF.AsInteger:=
      cdsDataENGINEERING_PLAN_WORKDAYS.AsInteger -
      cdsProductEngineering_ENGINEERING_REAL_WORKDAYS.AsInteger;

  if cdsDataENGINEERING_PLAN_WORKDAYS.IsNull or
     cdsProductEngineering_ENGINEERING_WORKDAYS_DIFF.IsNull then
    cdsProductEngineering_ENGINEERING_WORKDAYS_DIFF_PCT.Clear
  else
    begin
      if (cdsDataENGINEERING_PLAN_WORKDAYS.AsInteger = 0) then
        cdsProductEngineering_ENGINEERING_WORKDAYS_DIFF_PCT.AsInteger:= 0
      else
        cdsProductEngineering_ENGINEERING_WORKDAYS_DIFF_PCT.AsFloat:=
          cdsProductEngineering_ENGINEERING_WORKDAYS_DIFF.AsInteger /
          cdsDataENGINEERING_PLAN_WORKDAYS.AsInteger * 100;
    end;
end;

procedure TfmEngineeringOrder.DoApplyUpdates;
var
  EngineeringOrderNo: Integer;
begin
  EngineeringOrderNo:= cdsDataENGINEERING_ORDER_NO.AsInteger;

  inherited;

  if (EngineeringOrderNo <> cdsDataENGINEERING_ORDER_NO.AsInteger) then
    ShowMessageFmtEx(SNewEngineeringOrderNo, [cdsDataENGINEERING_ORDER_NO.AsInteger]);
end;

procedure TfmEngineeringOrder.RecalcProductEngineering;
begin
  with cdsProductEngineering do
    if Active then
      begin
        Last;
        First;
      end;
end;

procedure TfmEngineeringOrder.actToggleEngineeringWorkdaysMeasureUpdate(
  Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      edtEngineeringWorkdaysDiff.DataField:=
        IfThen(Checked, cdsProductEngineering_ENGINEERING_WORKDAYS_DIFF_PCT.FieldName, cdsProductEngineering_ENGINEERING_WORKDAYS_DIFF.FieldName);
      lblEngineeringWorkdaysDiffMeasure.Caption:=
        IfThen(Checked, '%', SWorkdays);
    end;  { with }
end;

procedure TfmEngineeringOrder.actToggleEngineeringWorkdaysMeasureExecute(
  Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    Checked:= not Checked;
end;

procedure TfmEngineeringOrder.cdsProductEngineeringBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsProductEngineering.Params.ParamByName('PRODUCT_CODE').AsInteger:=
    cdsDataPRODUCT_CODE.AsInteger;
end;

procedure TfmEngineeringOrder.cdsThorughlyEngineeredProductEngineeringBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsThorughlyEngineeredProductEngineering.Params.ParamByName('PRODUCT_CODE').AsInteger:=
    cdsDataTHOROUGHLY_ENG_PRODUCT_CODE.AsInteger;
end;

procedure TfmEngineeringOrder.cdsThorughlyEngineeredProductEngineeringCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CalcCommonProductsLevelsShow(DataSet);
end;

procedure TfmEngineeringOrder.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(dsData.DataSet.FieldByName('HAS_DOC_ITEMS'));
end;

procedure TfmEngineeringOrder.Initialize;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  RefreshProductEngineering;

  if (EditMode <> emInsert) then
    begin
      cdsData.Last;
      cdsData.First;
    end;

  RefreshSpecStructStatus;
  RefreshThoroughlyEngineeredProductEngineering;

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotEngineeringOrder, dsData.DataSet);
end;

procedure TfmEngineeringOrder.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

procedure TfmEngineeringOrder.RefreshProductEngineering;
begin
  with cdsProductEngineering do
    begin
      DisableControls;
      try
        Close;
        Open;
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmEngineeringOrder.actSetThoroughlyEngineeredProductUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanModifyEngineeringData and
    (not cdsDataPRODUCT_CODE.IsNull) and
    cdsDataTHOROUGHLY_ENG_PRODUCT_CODE.IsNull;
end;

procedure TfmEngineeringOrder.actSetThoroughlyEngineeredProductExecute(
  Sender: TObject);
begin
  inherited;

  CheckEditMode(cdsData);
  cdsDataTHOROUGHLY_ENG_PRODUCT_CODE.AsVariant:=
    IntToVar(dmMain.SvrEngineering.GetProductThoroughlyEngineeredProduct(cdsDataPRODUCT_CODE.AsInteger));
end;

procedure TfmEngineeringOrder.RefreshThoroughlyEngineeredProductEngineering;
begin
  with cdsThorughlyEngineeredProductEngineering do
    begin
      DisableControls;
      try
        Close;
        Open;
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmEngineeringOrder.cdsDataTHOROUGHLY_ENG_PRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  RefreshThoroughlyEngineeredProductEngineering;
end;

procedure TfmEngineeringOrder.cdsSpecStructStatusCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if DataSet.FieldByName('LEVEL_NO').IsNull then
    DataSet.FieldByName('_DISPLAY_TEXT').Clear
  else
    DataSet.FieldByName('_DISPLAY_TEXT').AsString:=
      DocStatusToStr(
        DataSet.FieldByName('LEVEL_NO').AsInteger,
        DataSet.FieldByName('LEVEL_IS_COMPLETE').AsBoolean,
        DataSet.FieldByName('MAX_LEVEL_NO').AsInteger,
        DataSet.FieldByName('HAS_MISSING_CHILDREN').AsBoolean
      );
end;

procedure TfmEngineeringOrder.cdsSpecStructStatusBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsSpecStructStatus.Params.ParamByName('SPEC_PRODUCT_CODE').AsInteger:=
    cdsDataPRODUCT_CODE.AsInteger;
end;

procedure TfmEngineeringOrder.RefreshSpecStructStatus;
begin
  with cdsSpecStructStatus do
    begin
      DisableControls;
      try
        Close;
        Open;
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmEngineeringOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  OriginalModalResult: Integer;
begin
  OriginalModalResult:= ModalResult;

  inherited;

  if (OriginalModalResult = mrOK) and chbPrint.Checked then
    actPrint.Execute;
end;

procedure TfmEngineeringOrder.actActivateOrderExecute(Sender: TObject);
begin
  inherited;

  LoginContext.CheckUserActivity(uaEngineeringOrderActivate);

  CheckRequiredFields(cdsData);
  CheckRequiredFields([cdsDataENGINEERING_DEPT_CODE, cdsDataENGINEERING_EMPLOYEE_CODE]);

  if (dmMain.IncDateByWorkdays(cdsData_ENGINEERING_PLAN_BEGIN_DATE.AsDateTime,
        -LoginContext.EOActivatingWorkdays) > ContextDate) then
    raise Exception.CreateFmt(SActivatingNotAllowed, [LoginContext.EOActivatingWorkdays]);

  if (MessageDlgEx(SConfirmActivation, mtConfirmation, [mbOK, mbCancel], 0) <> mrOK) then
    Abort;

  CheckEditMode(cdsData);
  cdsDataACTIVATE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataACTIVATE_DATE.AsDateTime:= ContextDate;
  cdsDataACTIVATE_TIME.AsDateTime:= ContextTime;
end;

procedure TfmEngineeringOrder.actChildEngineeringOrdersExecute(Sender: TObject);
begin
  inherited;

  cdsEngineeringOrdersParams.CreateDataSet;
  try
    cdsEngineeringOrdersParams.AppendRecord([
      3,
      cdsDataENGINEERING_ORDER_BRANCH_CODE.AsInteger,
      cdsDataENGINEERING_ORDER_NO.AsInteger,
      ClosedEOStateCode
    ]);

    TfmEngineeringOrders.ShowForm(nil, cdsEngineeringOrdersParams, emReadOnly, doNone, False);
  finally
    cdsEngineeringOrdersParams.Close;
  end;
end;

procedure TfmEngineeringOrder.actChildEngineeringOrdersUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    cdsDataHAS_CHILD_ENGINEERING_ORDERS.AsBoolean;
end;

procedure TfmEngineeringOrder.actCloseOrderExecute(Sender: TObject);
begin
  inherited;

  LoginContext.CheckUserActivity(uaEngineeringOrderClose);

  if cdsDataACTIVATE_EMPLOYEE_CODE.IsNull then
    raise Exception.Create(SCantCloseInactiveOrder);

  if (MessageDlgEx(SConfirmClosing, mtConfirmation, [mbOK, mbCancel], 0) <> mrOK) then
    Abort;

  CheckEditMode(cdsData);
  cdsDataCLOSE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataCLOSE_DATE.AsDateTime:= ContextDate;
  cdsDataCLOSE_TIME.AsDateTime:= ContextTime;
end;

procedure TfmEngineeringOrder.actAnnulOrderExecute(Sender: TObject);
begin
  inherited;

  LoginContext.CheckUserActivity(uaEngineeringOrderAnnul);

  if (MessageDlgEx(SConfirmAnnul, mtConfirmation, [mbOK, mbCancel], 0) <> mrOK) then
    Abort;

  CheckEditMode(cdsData);
  cdsDataANNUL_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataANNUL_DATE.AsDateTime:= ContextDate;
  cdsDataANNUL_TIME.AsDateTime:= ContextTime;
end;

procedure TfmEngineeringOrder.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  if cdsDataHAS_PARENT_ENGINEERING_ORDER.AsBoolean then
    CheckRequiredFields([cdsDataPARENT_ENG_ORDER_BRANCH_CODE, cdsDataPARENT_ENG_ORDER_NO]);

  if cdsDataENGINEERING_DEPT_CODE.IsNull and not cdsDataENGINEERING_EMPLOYEE_CODE.IsNull then
    begin
      cdsDataENGINEERING_DEPT_CODE.FocusControl;
      raise Exception.CreateFmt(SCantSetEngEmployeeWithoutEngDept,
              [lblEngineeringEmployee.Caption, lblEngineeringDept.Caption]);
    end;

  if (cdsDataTHOROUGHLY_ENG_PRODUCT_CODE.AsInteger = cdsDataPRODUCT_CODE.AsInteger) then
    begin
      cdsDataTHOROUGHLY_ENG_PRODUCT_CODE.FocusControl;
      raise Exception.CreateFmt(SProductMustDifferThoroughlyEngProduct,
              [cdsDataPRODUCT_CODE.DisplayLabel, cdsDataTHOROUGHLY_ENG_PRODUCT_CODE.DisplayLabel]);
    end;

  if not cdsDataACTIVATE_EMPLOYEE_CODE.IsNull then
    CheckRequiredFields([cdsDataENGINEERING_DEPT_CODE, cdsDataENGINEERING_EMPLOYEE_CODE]);
end;

function TfmEngineeringOrder.EOStateCode: Integer;
begin
  if not cdsDataANNUL_EMPLOYEE_CODE.IsNull then
    Result:= 8
  else if not cdsDataCLOSE_EMPLOYEE_CODE.IsNull then
    Result:= 7
  else if (not cdsDataACTIVATE_EMPLOYEE_CODE.IsNull) then
    begin
      if cdsDataPRODUCT_CODE.IsNull or
         (cdsProductEngineeringSPEC_STATE_CODE.AsInteger <> 6) then
        Result:= 5
      else
        Result:= 6;
    end
  else if cdsDataENGINEERING_DEPT_CODE.IsNull then
    Result:= 1
  else if cdsDataENGINEERING_EMPLOYEE_CODE.IsNull then
    Result:= 2
  else
    begin
      if cdsData_ENGINEERING_PLAN_BEGIN_DATE.IsNull or
         (cdsData_ENGINEERING_PLAN_BEGIN_DATE.AsDateTime > ContextDate) then
        Result:= 3
      else
        Result:= 4;
    end;
end;

function TfmEngineeringOrder.CanModifyData: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    cdsData.Active and
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

function TfmEngineeringOrder.CanModifyEngineeringData: Boolean;
begin
  Result:=
    CanModifyData and
    cdsDataACTIVATE_EMPLOYEE_CODE.IsNull;
end;

function TfmEngineeringOrder.CanModifyActivatedOrderEngineeringData: Boolean;
begin
  Result:=
    CanModifyData and
    ( cdsDataACTIVATE_EMPLOYEE_CODE.IsNull or
      dmMain.LoginContext.HasUserActivity(uaEngineeringOrderEditActivated));
end;

procedure TfmEngineeringOrder.cdsBranchesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsBranches.Filtered:= (EditMode = emInsert);
end;

procedure TfmEngineeringOrder.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmEngineeringOrder.cdsData_EO_STATE_CODEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;

  if (Sender.AsInteger in [Low(TEOStates)..High(TEOStates)]) then
    Text:= EOStateAbbrevs[Sender.AsInteger];
end;

procedure TfmEngineeringOrder.cdsDataENGINEERING_DEPT_CODEChange(
  Sender: TField);
begin
  inherited;
  cdsDataENGINEERING_EMPLOYEE_CODE.Clear;
end;

procedure TfmEngineeringOrder.cdsDataHAS_PARENT_ENGINEERING_ORDERChange(
  Sender: TField);
begin
  inherited;
  if not Sender.AsBoolean then
    begin
      cdsDataPARENT_ENG_ORDER_BRANCH_CODE.Clear;
      cdsDataPARENT_ENG_ORDER_NO.Clear;
    end;
end;

end.



