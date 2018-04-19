unit fStageLevelTasks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponent, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls, fDBFrame, JvComponentBase, dDocClient,
  uClientTypes, Mask, fBaseFrame, fFieldEditFrame, fDateIntervalFrame, Menus,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions,
  EhLibVCL, DBAxisGridsEh;

type
  TfmStageLevelTasks = class(TGridForm)
    cdsGridDataMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLMS_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataML_MODEL_STAGE_NO: TAbmesFloatField;
    cdsGridDataIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsGridDataIS_AUTO_RECEIVING_STAGE: TAbmesFloatField;
    cdsGridDataTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataIS_LATE: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataNO_AS_TEXT: TAbmesWideStringField;
    cdsGridDataNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsGridDataNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField;
    cdsGridDataFORK_NO: TAbmesFloatField;
    cdsGridDataDETAIL_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_NAME: TAbmesWideStringField;
    cdsGridDataDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataCLIENT_DETAIL_NAME: TAbmesWideStringField;
    cdsGridDataLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataML_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataSALE_BRANCH_NO: TAbmesFloatField;
    cdsGridDataIS_WASTE_COMPENSATOR: TAbmesFloatField;
    cdsGridDataPRIORITY_CODE: TAbmesFloatField;
    cdsGridDataPRIORITY_COLOR: TAbmesFloatField;
    cdsGridDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridDataSTAGE_DEPT_CODE: TAbmesFloatField;
    cdsGridDataSTAGE_DEPT_NAME: TAbmesWideStringField;
    cdsGridDataSTAGE_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_DOC_CODE: TAbmesFloatField;
    cdsGridDataIS_FIRST_STAGE_IN_MLL: TAbmesFloatField;
    cdsGridDataIS_LAST_STAGE_IN_MLL: TAbmesFloatField;
    cdsGridDataNEXT_OPERATION_TYPE_CODE: TAbmesFloatField;
    cdsGridDataWASTED_BEFORE_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataIN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataOUT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataOUT_WASTE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataIS_RECORD_CHANGED: TAbmesFloatField;
    cdsGridDataTO_ENTER_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataAVAILABLE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataTO_LEAVE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridData_STATUS: TAbmesWideStringField;
    cdsGridDataEFFECTIVE_TREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEFFECTIVE_TREATMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEFFECTIVE_TREATMENT_WORKDAYS: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_NO: TAbmesFloatField;
    pdsGridDataParamsSALE_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsMLL_NO_AS_TEXT: TAbmesWideStringField;
    pdsGridDataParamsMLL_FORK_NO: TAbmesFloatField;
    pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsOPERATION_STATUS: TAbmesFloatField;
    pdsGridDataParamsAVAILABLE_QUANTITY_STATUS: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsSaleTypes: TAbmesClientDataSet;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParams_SALE_TYPE_ABBREV: TAbmesWideStringField;
    actToggleClientData: TAction;
    btnToggleClientData: TSpeedButton;
    sepBeforeDoc: TToolButton;
    lblDetailDoc: TLabel;
    btnDetailDoc: TSpeedButton;
    sepBeforeStageDoc: TToolButton;
    lblStageDoc: TLabel;
    btnStageDoc: TSpeedButton;
    pdsGridDataParamsRESULT_PRODUCT_CHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsDETAIL_CHOSEN_PRODUCTS: TAbmesWideStringField;
    actModelStatus: TAction;
    btnModelStatus: TBitBtn;
    actOperations: TAction;
    btnOperations: TButton;
    cdsGridDataTREATMENT_WORKDAYS: TAbmesFloatField;
    actNewOrganizationMovement: TAction;
    btnNewMovement: TBitBtn;
    cdsGridDataMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataOPERATION_TYPE_CODE: TAbmesFloatField;
    actInputOutput: TAction;
    btnInputOutput: TBitBtn;
    cdsGridDataPRIORITY_NO: TAbmesFloatField;
    cdsGridDataWORK_PRIORITY_CODE: TAbmesFloatField;
    cdsGridDataWORK_PRIORITY_NO: TAbmesFloatField;
    pdsGridDataParamsPRODUCTION_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsGridData_REPORT_TITLE: TAbmesWideStringField;
    pnlHeader: TPanel;
    grpPeriod: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    gbDept: TGroupBox;
    edtChosenDeptName: TDBEdit;
    edtChosenDeptNo: TDBEdit;
    pdsGridDataParams_CHOSEN_NODE_CODE: TAbmesFloatField;
    pdsGridDataParams_CHOSEN_NODE_NAME: TAbmesWideStringField;
    pdsGridDataParams_CHOSEN_NODE_NO: TAbmesWideStringField;
    pdsGridDataParams_DATE_INTERVAL: TAbmesWideStringField;
    pmNewMovement: TPopupMenu;
    actNewWasteMovement: TAction;
    actNewMovement: TAction;
    miNewOrganizationMovement: TMenuItem;
    miNewWasteMovement: TMenuItem;
    pdsGridDataParamsIS_SALE_STATE: TAbmesFloatField;
    pdsGridDataParamsOWNER_COMPANY_CODE: TAbmesFloatField;
    pdsGridDataParamsOWNER_EMPLOYEE_CODE: TAbmesFloatField;
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure actToggleClientDataExecute(Sender: TObject);
    procedure actToggleClientDataUpdate(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnDetailDocClick(Sender: TObject);
    procedure btnStageDocClick(Sender: TObject);
    procedure actModelStatusExecute(Sender: TObject);
    procedure actModelStatusUpdate(Sender: TObject);
    procedure actOperationsExecute(Sender: TObject);
    procedure actOperationsUpdate(Sender: TObject);
    procedure actNewOrganizationMovementExecute(Sender: TObject);
    procedure actNewOrganizationMovementUpdate(Sender: TObject);
    procedure actInputOutputExecute(Sender: TObject);
    procedure actInputOutputUpdate(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure pdsGridDataParamsCHOSEN_DEPTSChange(Sender: TField);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure actNewWasteMovementUpdate(Sender: TObject);
    procedure actNewWasteMovementExecute(Sender: TObject);
    procedure actNewMovementExecute(Sender: TObject);
    procedure actNewMovementUpdate(Sender: TObject);
  private
    FShowClientData: Boolean;
    FProductionOrderBaseTypeCode: Integer;
    function NewOrganizationMovementEnabled: Boolean;
    function NewWasteMovementEnabled: Boolean;
  protected
    class function CanUseDocs: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    procedure Initialize; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; AFilterFormEnabled: Boolean = True;
      AProductionOrderBaseTypeCode: Integer = 0); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; AFilterFormEnabled: Boolean = True;
      AProductionOrderBaseTypeCode: Integer = 0): Boolean;
  end;

implementation

uses
  dMain, uClientConsts, fStageLevelTasksFilter, uUtils, 
  uDocUtils, fModelStatus, fOneMLMSOperations, fStageInputOutput,
  uUserActivityConsts, fOperationMovement, uModelMovementTypes,
  fModelMovementsOverview, rStageLevelTasks, uXMLUtils,
  uProductionOrderTypes, uClientUtils, uTreeClientUtils, uClientDateTime,
  fBaseGroups;

{$R *.dfm}

resourcestring
  SStageLevelTasks = 'Етапни Задания по ОПВ %s';

{ TfmStageLevelTasks }

procedure TfmStageLevelTasks.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmStageLevelTasksFilter;
  ReportClass:= TrptStageLevelTasks;
  RegisterDateFields(cdsGridData);

  with cdsGridData.Params do
    begin
      ParamByName('BEGIN_DATE').AsDateTime:= ContextDate;
      ParamByName('END_DATE').AsDateTime:= ContextDate;
      ParamByName('OPERATION_STATUS').AsInteger:= 1;
      ParamByName('AVAILABLE_QUANTITY_STATUS').AsInteger:= 0;
    end;  { with }
end;

procedure TfmStageLevelTasks.OpenDataSets;
begin
  cdsBranches.Open;
  cdsSaleTypes.Open;
  inherited;
end;

procedure TfmStageLevelTasks.CloseDataSets;
begin
  inherited;
  cdsSaleTypes.Close;
  cdsBranches.Close;
end;

class function TfmStageLevelTasks.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmStageLevelTasks.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AFilterFormEnabled: Boolean;
  AProductionOrderBaseTypeCode: Integer);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, doNone, AFilterFormEnabled);
  FProductionOrderBaseTypeCode:= AProductionOrderBaseTypeCode;
end;

procedure TfmStageLevelTasks.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  // do not call inherited - sichko da stava readonly
  AFrame.ReadOnly:= True;
end;

class function TfmStageLevelTasks.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AFilterFormEnabled: Boolean;
  AProductionOrderBaseTypeCode: Integer): Boolean;
var
  f: TfmStageLevelTasks;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, AFilterFormEnabled, AProductionOrderBaseTypeCode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmStageLevelTasks.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (cdsGridDataIN_DETAIL_TECH_QUANTITY.AsFloat = 0) then
    cdsGridData_STATUS.AsString:= SPlan
  else
    begin
      if (cdsGridDataTO_LEAVE_DETAIL_TECH_QUANTITY.AsFloat > 0) then
        cdsGridData_STATUS.AsString:= SPlanOtch
      else
        cdsGridData_STATUS.AsString:= SOtch;
    end;

  cdsGridData_REPORT_TITLE.AsString:= Caption;
end;

procedure TfmStageLevelTasks.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  with pdsGridDataParams do
    begin
      Edit;
      try
        InitializePriorityInterval(pdsGridDataParamsBEGIN_PRIORITY_CODE, pdsGridDataParamsEND_PRIORITY_CODE);
        pdsGridDataParamsPRODUCTION_ORDER_BASE_TYPE_CODE.AsInteger:= FProductionOrderBaseTypeCode;
        Post;
      except
        Cancel;
        raise;
      end;  { try }
    end;  { with }
end;

procedure TfmStageLevelTasks.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  if pdsGridDataParamsCHOSEN_DEPTS.Required and
     (not HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_DEPTS.AsString)) then
    raise Exception.Create(SDeptsRequired);

  CheckRequiredFields([pdsGridDataParamsBEGIN_DATE, pdsGridDataParamsEND_DATE]);
  CheckDatePeriod(pdsGridDataParamsBEGIN_DATE, pdsGridDataParamsEND_DATE);
end;

procedure TfmStageLevelTasks.pdsGridDataParamsCalcFields(DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams_DATE_INTERVAL.AsString:=
    dmMain.GetDateIntervalAsString(pdsGridDataParamsBEGIN_DATE.AsDateTime, pdsGridDataParamsEND_DATE.AsDateTime)
end;

procedure TfmStageLevelTasks.pdsGridDataParamsCHOSEN_DEPTSChange(
  Sender: TField);
begin
  inherited;
  
  pdsGridDataParams_CHOSEN_NODE_CODE.Clear;
  pdsGridDataParams_CHOSEN_NODE_NAME.Clear;
  pdsGridDataParams_CHOSEN_NODE_NO.Clear;

  if HasChosenNodesOrParams(Sender.AsString) then
    if IsSingleChosenNodeWithoutParams(Sender.AsString) then
      begin
        pdsGridDataParams_CHOSEN_NODE_CODE.AsInteger:=
          ChosenNodeXMLToNodeCode(Sender.AsString);

        DoDeptFieldChanged(
          pdsGridDataParams_CHOSEN_NODE_CODE,
          pdsGridDataParams_CHOSEN_NODE_NAME,
          pdsGridDataParams_CHOSEN_NODE_NO);
      end
    else
      pdsGridDataParams_CHOSEN_NODE_NAME.AsString:= SDeptsSet;
end;

procedure TfmStageLevelTasks.actFormUpdate(Sender: TObject);
begin
  inherited;
  grdData.Columns[9].Visible:= not FShowClientData;
  grdData.Columns[10].Visible:= FShowClientData;

  btnDetailDoc.Enabled:= not cdsGridData.IsEmpty;
  btnStageDoc.Enabled:= cdsGridDataHAS_DOCUMENTATION.AsBoolean;
end;

procedure TfmStageLevelTasks.actToggleClientDataExecute(Sender: TObject);
begin
  inherited;
  FShowClientData:= not FShowClientData;
end;

procedure TfmStageLevelTasks.actToggleClientDataUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= FShowClientData;
end;

procedure TfmStageLevelTasks.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if ( (Column.Field = cdsGridDataEFFECTIVE_TREATMENT_BEGIN_DATE) or
       (Column.Field = cdsGridDataEFFECTIVE_TREATMENT_END_DATE) or
       (Column.Field = cdsGridDataEFFECTIVE_TREATMENT_WORKDAYS) ) and
     cdsGridDataIS_LATE.AsBoolean then
    begin
      Background:= clRed;
    end;  { if }

  if (Column.Field = cdsGridDataPRIORITY_NO) then
    begin
      if not cdsGridDataPRIORITY_COLOR.IsNull then
        AFont.Color:= cdsGridDataPRIORITY_COLOR.AsInteger;

      if not cdsGridDataPRIORITY_BACKGROUND_COLOR.IsNull then
        Background:= cdsGridDataPRIORITY_BACKGROUND_COLOR.AsInteger;
    end;  { if }
end;

procedure TfmStageLevelTasks.Initialize;
begin
  inherited;
  Caption:= Format(SStageLevelTasks, [ProductionOrderBaseTypes[FProductionOrderBaseTypeCode].CoveringAbbrevPlural]);
end;

procedure TfmStageLevelTasks.btnDetailDocClick(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TControl),
    dotProduct,
    cdsGridDataDETAIL_DOC_BRANCH_CODE,
    cdsGridDataDETAIL_DOC_CODE);
end;

procedure TfmStageLevelTasks.btnStageDocClick(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TControl),
    dotRealStage,
    cdsGridDataDOC_BRANCH_CODE,
    cdsGridDataDOC_CODE);
end;

procedure TfmStageLevelTasks.actModelStatusExecute(Sender: TObject);
begin
  inherited;
  if TfmModelStatus.ShowForm(dmDocClient, cdsGridData, EditMode) then
    RefreshDataSet(cdsGridData);
end;

procedure TfmStageLevelTasks.actModelStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmStageLevelTasks.actOperationsExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaModelTasksMLMSOperations);
  TfmOneMLMSOperations.ShowForm(dmDocClient, cdsGridData, emReadOnly);
end;

procedure TfmStageLevelTasks.actOperationsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridDataTREATMENT_WORKDAYS.AsInteger > 0) and
    (cdsGridDataML_MODEL_STAGE_NO.AsInteger > 0);
end;

procedure TfmStageLevelTasks.actPrintExecute(Sender: TObject);
begin
  // do not call inherited
  TrptStageLevelTasks.PrintReport(cdsGridData, pdsGridDataParams, FShowClientData);
end;

procedure TfmStageLevelTasks.actNewMovementExecute(Sender: TObject);
begin
  inherited;
  PopupMenuFromButton(btnNewMovement, pmNewMovement);
end;

procedure TfmStageLevelTasks.actNewMovementUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    NewOrganizationMovementEnabled or
    NewWasteMovementEnabled;
end;

procedure TfmStageLevelTasks.actNewOrganizationMovementExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaNewOperationMovement);

  if TfmOperationMovement.ShowForm(dmDocClient, cdsGridData,
       emInsert, doNone, omtOrganizationOrganization) then
    RefreshDataSet(cdsGridData);
end;

function TfmStageLevelTasks.NewOrganizationMovementEnabled: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0) and
    (cdsGridDataML_MODEL_STAGE_NO.AsInteger > 0) and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger = 1) and
    (cdsGridDataNEXT_OPERATION_TYPE_CODE.AsInteger = 1) and
    not cdsGridDataIS_AUTO_MOVEMENT.AsBoolean;
end;

function TfmStageLevelTasks.NewWasteMovementEnabled: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0) and
    (cdsGridDataML_MODEL_STAGE_NO.AsInteger > 0) and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger = 1) and
    (cdsGridDataNEXT_OPERATION_TYPE_CODE.AsInteger = 1) and
    not cdsGridDataIS_AUTO_MOVEMENT.AsBoolean;
end;

procedure TfmStageLevelTasks.actNewOrganizationMovementUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= NewOrganizationMovementEnabled;
end;

procedure TfmStageLevelTasks.actNewWasteMovementExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaNewOperationMovement);

  if TfmOperationMovement.ShowForm(dmDocClient, cdsGridData,
       emInsert, doNone, omtOrganizationWaste) then
    RefreshDataSet(cdsGridData);
end;

procedure TfmStageLevelTasks.actNewWasteMovementUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= NewWasteMovementEnabled;
end;

procedure TfmStageLevelTasks.actInputOutputExecute(Sender: TObject);
begin
  inherited;
  TfmStageInputOutput.ShowForm(dmDocClient, cdsGridData, EditMode);
end;

procedure TfmStageLevelTasks.actInputOutputUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    not cdsGridData.IsEmpty;
end;

procedure TfmStageLevelTasks.grdDataDblClick(Sender: TObject);
var
  Field: TField;
begin
  inherited;
  Field:= grdData.Columns[grdData.Col - 1].Field;

  if (Field = cdsGridDataTO_ENTER_DETAIL_TECH_QUANTITY) then
    TfmModelMovementsOverview.ShowForm(dmDocClient, cdsGridData, EditMode, doNone, False, mdIn)
  else
    begin
      if (Field = cdsGridDataTO_LEAVE_DETAIL_TECH_QUANTITY) then
        TfmModelMovementsOverview.ShowForm(dmDocClient, cdsGridData, EditMode, doNone, False, mdOutAndWaste)
      else
        actInputOutput.Execute;
    end;
end;

end.
