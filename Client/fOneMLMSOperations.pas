unit fOneMLMSOperations;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, Menus, JvButtons, ParamDataSet, ActnList,
  DB, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, dbcgrids,
  AbmesFields, Mask, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fProductFieldEditFrameBald, JvComponent, JvCaptionButton,
  fDateIntervalFrame, JvComponentBase, DBGridEhGrouping, fEditForm,
  uClientConsts, fDBDataForm, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions,
  DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  [VerticalResizeStep(DualGridRowHeight)]
  [PrintActiveGridEnabled(False)]
  TfmOneMLMSOperations = class(TGridForm)
    pnlHeaderOld: TPanel;
    pnlHeaderSpace: TPanel;
    cdsGridDataMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLMS_OBJECT_CODE: TAbmesFloatField;                                                                 
    cdsGridDataOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsGridDataSHOW_NO: TAbmesWideStringField;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataDEPT_NAME: TAbmesWideStringField;
    cdsGridDataSETUP_PROFESSION_CODE: TAbmesFloatField;
    cdsGridDataSETUP_PROFESSION_NAME: TAbmesWideStringField;
    cdsGridDataPROFESSION_NAME: TAbmesWideStringField;
    cdsGridDataSETUP_EFFORT_COEF: TAbmesFloatField;
    cdsGridDataSETUP_HOUR_PRICE: TAbmesFloatField;
    cdsGridDataSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataEFFORT_COEF: TAbmesFloatField;
    cdsGridDataHOUR_PRICE: TAbmesFloatField;
    cdsGridDataHOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataNOTES: TAbmesWideStringField;
    cdsGridDataIS_SETUP_DONE: TAbmesFloatField;
    cdsGridDataSETUP_WORK_TIME: TAbmesFloatField;
    cdsGridDataIN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataOUT_WASTE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataOUT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataWORK_TIME: TAbmesFloatField;
    pnlTotals: TPanel;
    pnlDataButtons: TPanel;
    btnActiveVariants: TBitBtn;
    btnSetup: TBitBtn;
    btnNewOperationMovement: TBitBtn;
    actActiveVariants: TAction;
    actNewOperationMovement: TAction;
    actSetup: TAction;
    cdsGridData_WORK_TIME_SUM: TAggregateField;
    cdsGridData_WASTE_DETAIL_TECH_QUANTITY_SUM: TAggregateField;
    edtWorkTimeSum: TDBEdit;
    edtWasteDetailTechQuantitySum: TDBEdit;
    lblWorkTimeSum: TLabel;
    cdsGridDataMLMS_OPERATION_NO: TAbmesFloatField;
    cdsGridDataMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsGridData_SHOW_HOUR_TECH_QUANTITY: TAbmesWideStringField;
    btnDeptDoc: TSpeedButton;
    sepBeforeCapacity: TToolButton;
    actWorkWork: TAction;
    actWorkOrganization: TAction;
    actOrganizationOrganization: TAction;
    actOrganizationWork: TAction;
    actWorkWaste: TAction;
    actOrganizationWaste: TAction;
    actRedirection: TAction;
    actShift: TAction;
    pmNewOperationMovement: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    cdsGridDataMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsGridData_MIN_OPERATION_TYPE_CODE: TAggregateField;
    cdsGridData_MAX_OPERATION_TYPE_CODE: TAggregateField;
    cdsGridData_MAX_MLMS_OPERATION_NO: TAggregateField;
    cdsGridData_MAX_MLMS_OPERATION_VARIANT_NO: TAggregateField;
    miOrganizationWaste: TMenuItem;
    cdsNextStageFirstOperation: TAbmesClientDataSet;
    cdsNextStageFirstOperationMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsNextStageFirstOperationMLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsNextStageFirstOperationOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridData_SETUP_STATUS: TAbmesWideStringField;
    cdsGridData_STATUS: TAbmesWideStringField;
    btnOperationDoc: TSpeedButton;
    cdsDataMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataMLMS_OBJECT_CODE: TAbmesFloatField;
    cdsDataSALE_IDENTIFIER: TAbmesWideStringField;
    cdsDataDETAIL_CODE: TAbmesFloatField;
    cdsDataDETAIL_NAME: TAbmesWideStringField;
    cdsDataLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsDataML_MODEL_STAGE_NO: TAbmesFloatField;
    cdsDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDataOUTGOING_WORKDAYS: TAbmesFloatField;
    cdsDataTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsDataTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsDataTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsGridDataTO_ENTER_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataAVAILABLE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataTO_LEAVE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataHAS_SPECIAL_CONTROL: TAbmesFloatField;
    cdsGridDataVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    actShowCapacityGraph: TAction;
    btnShowCapacityGraph: TSpeedButton;
    cdsGridDataHAS_CAPACITY_DEFICIT: TAbmesFloatField;
    cdsDataNO_AS_TEXT: TAbmesWideStringField;
    cdsDataFORK_NO: TAbmesFloatField;
    cdsData_MLL_NO: TAbmesWideStringField;
    cdsGridDataOPERATION_SETUP_ABBREV: TAbmesWideStringField;
    cdsGridDataOPERATION_ABBREV: TAbmesWideStringField;
    cdsGridDataML_MODEL_STAGE_NO: TAbmesFloatField;
    cdsGridDataIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsGridDataIS_AUTO_RECEIVING_OPERATION: TAbmesFloatField;
    cdsGridDataOPERATION_KIND: TAbmesFloatField;
    gbSale: TGroupBox;
    lblSaleIdentifier: TLabel;
    edtSaleIdentifier: TDBEdit;
    gbStage: TGroupBox;
    lblStageNo: TLabel;
    lblMLMSDeptIdentifier: TLabel;
    lblTreatmentInterval: TLabel;
    tlbStageDocs: TToolBar;
    btnStageDocs: TSpeedButton;
    edtStageNo: TDBEdit;
    edtMLMSDeptIdentifier: TDBEdit;
    frTreatmentInterval: TfrDateIntervalFrame;
    gbDetail: TGroupBox;
    txtDetailTechMeasureAbbrev: TDBText;
    lblTreeNodeName: TLabel;
    lblDetailTechQuantity: TLabel;
    lblMllNo: TLabel;
    lblMllForkNo: TLabel;
    edtMllForkNo: TDBEdit;
    edtDetailTechQuantity: TDBEdit;
    frDetail: TfrProductFieldEditFrameBald;
    edtMllNo: TDBEdit;
    cdsDataPRIORITY_COLOR: TAbmesFloatField;
    cdsDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    sepBeforeOperationDoc: TToolButton;
    sepBeforeDeptDoc: TToolButton;
    lblOperationDoc: TLabel;
    lblDeptDoc: TLabel;
    btnProgramToolDoc: TSpeedButton;
    sepBeforeProgramToolDoc: TToolButton;
    btnSpecificToolDoc: TSpeedButton;
    sepBeforeSpecificToolDoc: TToolButton;
    btnSpecificToolSpecDocStatus: TToolButton;
    sepBeforeTypicalToolDoc: TToolButton;
    btnTypicalToolDoc: TSpeedButton;
    btnTypicalToolSpecDocStatus: TToolButton;
    lblProgramToolDoc: TLabel;
    lblSpecificToolDoc: TLabel;
    lblTypicalToolDoc: TLabel;
    lblPriority: TLabel;
    edtPriority: TDBEdit;
    lblWorkPriority: TLabel;
    edtWorkPriority: TDBEdit;
    cdsDataPRIORITY_NO: TAbmesFloatField;
    cdsDataWORK_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsGridDataSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsGridDataTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    actProgramToolSpecDocStatus: TAction;
    actSpecificToolSpecDocStatus: TAction;
    actTypicalToolSpecDocStatus: TAction;
    btnProgramToolSpecDocStatus: TToolButton;
    cdsGridDataPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsGridDataSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsGridDataTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    grdHeader: TAbmesDBGrid;
    cdsGridDataMLMSO_IS_AUTO_SETUP: TAbmesFloatField;
    cdsGridDataMLMSO_IS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    actSpecialControl: TAction;
    miSpecialControl: TMenuItem;
    cdsGridDataLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataIS_BEGIN_STORE_STAGE: TAbmesFloatField;
    cdsGridDataIS_NORMAL_STAGE: TAbmesFloatField;
    cdsGridDataIS_END_STORE_STAGE: TAbmesFloatField;
    cdsGridDataREMAINING_WASTE_QUANTITY: TAbmesFloatField;
    cdsGridDataOP_OLD_IN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataOP_IN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataOP_OUT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataOP_AVAILABLE_DETAIL_TECH_QTY: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure btnStageDocsClick(Sender: TObject);
    procedure actActiveVariantsUpdate(Sender: TObject);
    procedure actActiveVariantsExecute(Sender: TObject);
    procedure actSetupUpdate(Sender: TObject);
    procedure actSetupExecute(Sender: TObject);
    procedure actNewOperationMovementUpdate(Sender: TObject);
    procedure actNewOperationMovementExecute(Sender: TObject);
    procedure cdsGridDataIS_SETUP_DONEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure btnDeptDocClick(Sender: TObject);
    procedure actWorkWorkUpdate(Sender: TObject);
    procedure actWorkOrganizationUpdate(Sender: TObject);
    procedure actOrganizationOrganizationUpdate(Sender: TObject);
    procedure actOrganizationWorkUpdate(Sender: TObject);
    procedure actWorkWasteUpdate(Sender: TObject);
    procedure actOrganizationWasteUpdate(Sender: TObject);
    procedure actRedirectionUpdate(Sender: TObject);
    procedure actShiftUpdate(Sender: TObject);
    procedure actOperationMovementCommon(Sender: TObject);
    procedure btnOperationDocClick(Sender: TObject);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure btnProgramToolDocClick(Sender: TObject);
    procedure btnSpecificToolDocClick(Sender: TObject);
    procedure btnTypicalToolDocClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actShowCapacityGraphUpdate(Sender: TObject);
    procedure actShowCapacityGraphExecute(Sender: TObject);
    procedure cdsGridDataOPERATION_KINDGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure cdsGridDataPROGRAM_TOOL_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataSPECIFIC_TOOL_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataTYPICAL_TOOL_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actProgramToolSpecDocStatusUpdate(Sender: TObject);
    procedure actSpecificToolSpecDocStatusUpdate(Sender: TObject);
    procedure actTypicalToolSpecDocStatusUpdate(Sender: TObject);
    procedure actProgramToolSpecDocStatusExecute(Sender: TObject);
    procedure actSpecificToolSpecDocStatusExecute(Sender: TObject);
    procedure actTypicalToolSpecDocStatusExecute(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdDataDblClick(Sender: TObject);
    procedure grdDataDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure grdHeaderEnter(Sender: TObject);
    procedure actSpecialControlUpdate(Sender: TObject);
  private
  protected
    class function CanUseDocs: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    class function CanEditOuterDataSet: Boolean; override;
  end;

implementation

uses
  dMain, fAnimatedSplash, uExcelExport, uClientTypes,
  fMLMSOperationVariants, uClientUtils, fOperationMovement, uModelMovementTypes,
  uOperationTypes, fMLMSOperationSetup, uUtils, uUserActivityConsts,
  fSpecification, fOperationMovements, fCapacityGraph, uColorConsts,
  uDocUtils, uOperationKinds, uToolRequirements, fSpecDocStatus, uAspectTypes,
  uModelUtils;

{$R *.dfm}

resourcestring
  SCannotReportInfusion = 'Не можете да отчитате настойка преди да е преминало количество към текущата операция';
  SShowDetailTechQuantityFormat = '%s %s/ч';
  SInvestedPriceColumnTitle = 'ВС2 (%s)';
  SOperationSetupAbbrev = 'Н';
  SOperationAbbrev = 'И';
  SNotLoaded = 'Незаред';
  SLoaded = 'Заред.';
  SQty = 'К-во';

{ TfmOneMLMSOperations }

procedure TfmOneMLMSOperations.FormCreate(Sender: TObject);
begin
  inherited;
  frDetail.FieldNames:= 'DETAIL_CODE';
  frTreatmentInterval.FieldNames:= 'TREATMENT_BEGIN_DATE;TREATMENT_END_DATE';
  RegisterDateFields(cdsData);

  RegisterFieldsTextVisibility(
    IsHighLevelInvestedValueVisible,
    [ cdsGridDataHOUR_PRICE,
      cdsGridDataSETUP_HOUR_PRICE]);

  if not LoginContext.FeatureFlagOperationsLoading then
    begin
      grdHeader.Columns[19].Title.Caption:= StringReplace(grdHeader.Columns[19].Title.Caption, SNotLoaded, '-', []);
      grdHeader.Columns[20].Title.Caption:= StringReplace(grdHeader.Columns[20].Title.Caption, SLoaded, SQty, []);
    end;
end;

procedure TfmOneMLMSOperations.btnStageDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnStageDocs, dotRealStage, dsData.DataSet);
end;

procedure TfmOneMLMSOperations.actActiveVariantsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0) and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger = otNormal);
end;

procedure TfmOneMLMSOperations.actActiveVariantsExecute(Sender: TObject);
begin
  inherited;

  LoginContext.CheckUserActivity(uaSetOperationVariants);
  if TfmMLMSOperationVariants.ShowForm(dmDocClient, cdsGridData, emEdit,
       doNone, True) then
    RefreshDataSet(cdsData);
end;

procedure TfmOneMLMSOperations.actSetupUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0) and
    (not cdsGridDataSETUP_PROFESSION_CODE.IsNull) and
    (EditMode <> emReadOnly);
end;

procedure TfmOneMLMSOperations.actSetupExecute(Sender: TObject);
begin
  inherited;
  
  if not LoginContext.HasUserActivity(uaOwnOperationSetup) then
    LoginContext.CheckUserActivity(uaOperationSetup);

  if cdsGridDataMLMSO_IS_AUTO_SETUP.AsBoolean then
    raise Exception.Create(SCannotReportAutoSetup);

  if (cdsGridDataIN_DETAIL_TECH_QUANTITY.AsFloat <= 0) and
     not cdsGridDataIS_SETUP_DONE.AsBoolean then
    raise Exception.Create(SCannotReportInfusion);

  if TfmMLMSOperationSetup.ShowForm(dmDocClient, cdsGridData, EditMode) then
    RefreshDataSet(cdsGridData);
end;

procedure TfmOneMLMSOperations.actNewOperationMovementUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0) and
    (EditMode <> emReadOnly) and
    (not cdsGridDataIS_AUTO_MOVEMENT.AsBoolean);
end;

procedure TfmOneMLMSOperations.actNewOperationMovementExecute(
  Sender: TObject);
begin
  inherited;

  if not LoginContext.HasUserActivity(uaNewOwnOperationMovement) then
    LoginContext.CheckUserActivity(uaNewOperationMovement);

  if cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean then
    raise Exception.Create(SCannotReportAutoMovement);

  if (not cdsGridDataSETUP_PROFESSION_CODE.IsNull) and
     (not cdsGridDataIS_SETUP_DONE.AsBoolean) then
    raise Exception.Create(SSetupNotDone);

  PopupMenuFromButton(btnNewOperationMovement, pmNewOperationMovement);
end;

procedure TfmOneMLMSOperations.cdsGridDataIS_SETUP_DONEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
var
  s: string;
begin
  inherited;
  if DisplayText then
    begin
      if cdsGridDataSETUP_PROFESSION_CODE.IsNull or Sender.IsNull then
        s:= ''
      else
        begin
          with Sender as TAbmesFloatField do
            if (FieldValueType = fvtBoolean) then
              s:= AsString
            else
              s:= FormatFloat(DisplayFormat, AsFloat);
        end;
    end
  else
    s:= Sender.AsString;
  Text:= s;
end;

procedure TfmOneMLMSOperations.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsGridDataHOUR_TECH_QUANTITY.IsNull then
    cdsGridData_SHOW_HOUR_TECH_QUANTITY.Clear
  else
    cdsGridData_SHOW_HOUR_TECH_QUANTITY.AsString:=
      Format(SShowDetailTechQuantityFormat, [
        cdsGridDataHOUR_TECH_QUANTITY.DisplayText,
        txtDetailTechMeasureAbbrev.Caption]);

  if cdsGridDataIS_SETUP_DONE.AsBoolean then
    cdsGridData_SETUP_STATUS.AsString:= SOtch
  else
    cdsGridData_SETUP_STATUS.AsString:= SPlan;

  if (cdsGridDataIN_DETAIL_TECH_QUANTITY.AsFloat = 0) then
    cdsGridData_STATUS.AsString:= SPlan
  else
    begin
      if (cdsGridDataTO_LEAVE_DETAIL_TECH_QUANTITY.AsFloat > 0) then
        cdsGridData_STATUS.AsString:= SPlanOtch
      else
        cdsGridData_STATUS.AsString:= SOtch;
    end;

  cdsGridDataOPERATION_SETUP_ABBREV.AsString:= SOperationSetupAbbrev;
  cdsGridDataOPERATION_ABBREV.AsString:= SOperationAbbrev;
end;

procedure TfmOneMLMSOperations.btnDeptDocClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDeptDoc(emReadOnly, (Sender as TControl), cdsGridDataDEPT_CODE.AsInteger);
end;

procedure TfmOneMLMSOperations.actWorkWorkUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger = otNormal) and
    ( (cdsGridDataMLMS_OPERATION_NO.AsInteger <
        VarToInt(cdsGridData_MAX_MLMS_OPERATION_NO.AsVariant) -
        Ord(VarToInt(cdsGridData_MAX_OPERATION_TYPE_CODE.AsVariant) = otEnd)) or
      ( (cdsGridDataMLMS_OPERATION_NO.AsInteger = VarToInt(cdsGridData_MAX_MLMS_OPERATION_NO.AsVariant)) and
        (cdsNextStageFirstOperationOPERATION_TYPE_CODE.AsInteger = otNormal)));
end;

procedure TfmOneMLMSOperations.actWorkOrganizationUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger = otNormal) and
    ( ( (VarToInt(cdsGridData_MAX_OPERATION_TYPE_CODE.AsVariant) = otEnd) and
        (cdsGridDataMLMS_OPERATION_NO.AsInteger + 1 = VarToInt(cdsGridData_MAX_MLMS_OPERATION_NO.AsVariant))) or
      ( (cdsGridDataMLMS_OPERATION_NO.AsInteger = VarToInt(cdsGridData_MAX_MLMS_OPERATION_NO.AsVariant)) and
        (cdsNextStageFirstOperationOPERATION_TYPE_CODE.AsInteger in [otBegin, otEnd])));
end;

procedure TfmOneMLMSOperations.actOrganizationOrganizationUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    ( ( (cdsGridDataOPERATION_TYPE_CODE.AsInteger = otBegin) and
        (VarToInt(cdsGridData_MAX_OPERATION_TYPE_CODE.AsVariant) = otEnd) and
        (cdsGridDataMLMS_OPERATION_NO.AsInteger + 1 = VarToInt(cdsGridData_MAX_MLMS_OPERATION_NO.AsVariant))) or
      ( (cdsGridDataOPERATION_TYPE_CODE.AsInteger in [otBegin, otEnd]) and
        (cdsGridDataMLMS_OPERATION_NO.AsInteger = VarToInt(cdsGridData_MAX_MLMS_OPERATION_NO.AsVariant)) and
        (cdsNextStageFirstOperationOPERATION_TYPE_CODE.AsInteger in [otBegin, otEnd])));
end;

procedure TfmOneMLMSOperations.actOrganizationWorkUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    ( ( (cdsGridDataOPERATION_TYPE_CODE.AsInteger = otBegin) and
        (cdsGridDataMLMS_OPERATION_NO.AsInteger <
          VarToInt(cdsGridData_MAX_MLMS_OPERATION_NO.AsVariant) -
          Ord(VarToInt(cdsGridData_MAX_OPERATION_TYPE_CODE.AsVariant) = otEnd))) or
      ( (cdsGridDataOPERATION_TYPE_CODE.AsInteger in [otBegin, otEnd]) and
        (cdsGridDataMLMS_OPERATION_NO.AsInteger = VarToInt(cdsGridData_MAX_MLMS_OPERATION_NO.AsVariant)) and
        (cdsNextStageFirstOperationOPERATION_TYPE_CODE.AsInteger = otNormal)));
end;

procedure TfmOneMLMSOperations.actProgramToolSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient,
    cdsGridDataPROGRAM_TOOL_PRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmOneMLMSOperations.actProgramToolSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridDataPROGRAM_TOOL_PRODUCT_CODE.IsNull;
end;

procedure TfmOneMLMSOperations.actWorkWasteUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger = otNormal);
end;

procedure TfmOneMLMSOperations.actOrganizationWasteUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger <> otNormal);
end;

procedure TfmOneMLMSOperations.actRedirectionUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (VarToInt(cdsGridData_MAX_MLMS_OPERATION_VARIANT_NO.AsVariant) > 0);
end;

procedure TfmOneMLMSOperations.actShiftUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsGridData.Active;
end;

procedure TfmOneMLMSOperations.actOperationMovementCommon(Sender: TObject);
begin
  inherited;

  if TfmOperationMovement.ShowForm(dmDocClient, cdsGridData,
       emInsert, doNone, (Sender as TAction).Tag) then
    RefreshDataSet(cdsGridData);
end;

procedure TfmOneMLMSOperations.OpenDataSets;
begin
  SetParams(cdsNextStageFirstOperation.Params, OuterDataSet);
  cdsNextStageFirstOperation.Open;
  inherited;
end;

procedure TfmOneMLMSOperations.CloseDataSets;
begin
  inherited;
  cdsNextStageFirstOperation.Close;
end;

procedure TfmOneMLMSOperations.btnOperationDocClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TControl), dotRealOperation,
    cdsGridDataDOC_BRANCH_CODE,
    cdsGridDataDOC_CODE,
    cdsGridDataMLMS_OPERATION_VARIANT_NO.AsInteger);
end;

class function TfmOneMLMSOperations.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmOneMLMSOperations.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsData_MLL_NO.AsString:=
    cdsDataNO_AS_TEXT.AsString + '/' + cdsDataFORK_NO.AsString; 
end;

procedure TfmOneMLMSOperations.btnProgramToolDocClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TControl),
    cdsGridDataPROGRAM_TOOL_PRODUCT_CODE.AsInteger);
end;

procedure TfmOneMLMSOperations.btnSpecificToolDocClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TControl),
    cdsGridDataSPECIFIC_TOOL_PRODUCT_CODE.AsInteger);
end;

procedure TfmOneMLMSOperations.btnTypicalToolDocClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TControl),
    cdsGridDataTYPICAL_TOOL_PRODUCT_CODE.AsInteger);
end;

procedure TfmOneMLMSOperations.grdDataDblClick(Sender: TObject);

  procedure ShowMovements(AMovementsDirection: TMovementsDirection);
  begin
    TfmOperationMovements.ShowForm(dmDocClient, cdsGridData, EditMode, doNone, False,
      AMovementsDirection);
  end;

var
  Column: TColumnEh;
begin
  inherited;

  Column:= GetColumnOnMouse(grdData);
  if not Assigned(Column) then
    Exit;

  if (Column.Field = cdsGridDataTO_ENTER_DETAIL_TECH_QUANTITY) then
    ShowMovements(mdIn);

  if (Column.Field = cdsGridDataTO_LEAVE_DETAIL_TECH_QUANTITY) then
    ShowMovements(mdOutAndWaste);

  if (Column.Field = cdsGridDataOUT_WASTE_DETAIL_TECH_QUANTITY) then
    ShowMovements(mdWaste);
end;

procedure TfmOneMLMSOperations.grdDataDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
//  inherited; do nothing
end;

procedure TfmOneMLMSOperations.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);

  procedure SetToolRequirementFont(ToolRequirementField, ToolIsCompleteField: TField);
  var
    ToolIsComplete: Boolean;
  begin
    ToolIsComplete:= (ToolIsCompleteField.AsInteger = 1);

    if ToolIsComplete then
      AFont.Color:= clGreen
    else
      AFont.Color:= clRed;
  end;

begin
  inherited;

  if (Column.Field = cdsGridDataHAS_CAPACITY_DEFICIT) and
     (Column.Field.AsInteger = 1) and
     (Background = clWindow) then
    Background:= ccTotalLateNotSelected;

  if (Column.Field = cdsGridDataPROGRAM_TOOL_REQUIREMENT_CODE) then
    SetToolRequirementFont(Column.Field, cdsGridDataPROGRAM_TOOL_IS_COMPLETE);

  if (Column.Field = cdsGridDataSPECIFIC_TOOL_REQUIREMENT_CODE) then
    SetToolRequirementFont(Column.Field, cdsGridDataSPECIFIC_TOOL_IS_COMPLETE);

  if (Column.Field = cdsGridDataTYPICAL_TOOL_REQUIREMENT_CODE) then
    SetToolRequirementFont(Column.Field, cdsGridDataTYPICAL_TOOL_IS_COMPLETE);

  if (Column.Index = 5) and // setup operation kind
     cdsGridDataIS_AUTO_MOVEMENT.AsBoolean then
    Background:= $00DECCC0;

  if (Column.Field = cdsGridDataAVAILABLE_DETAIL_TECH_QUANTITY) then
    begin
      if cdsGridDataIS_AUTO_RECEIVING_OPERATION.AsBoolean and
         ((cdsGridDataOPERATION_TYPE_CODE.AsInteger <> otNormal) or not LoginContext.FeatureFlagOperationsLoading) then
        Background:= clGray
      else
        if cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean then
          AFont.Color:= clGray;
    end;

  if (Column.Field = cdsGridDataOP_AVAILABLE_DETAIL_TECH_QTY) and
     cdsGridDataIS_AUTO_RECEIVING_OPERATION.AsBoolean and
     LoginContext.FeatureFlagOperationsLoading then
    Background:= clGray;
end;

procedure TfmOneMLMSOperations.grdHeaderEnter(Sender: TObject);
begin
  inherited;
  ActiveControl:= grdData;
end;

procedure TfmOneMLMSOperations.actFormUpdate(Sender: TObject);
begin
  inherited;
  edtPriority.Font.Color:= cdsDataPRIORITY_COLOR.AsInteger;
  edtPriority.Color:= cdsDataPRIORITY_BACKGROUND_COLOR.AsInteger;

  btnOperationDoc.Enabled:= not cdsGridData.IsEmpty;
  btnDeptDoc.Enabled:= not cdsGridData.IsEmpty;

  btnProgramToolDoc.Enabled:= not cdsGridDataPROGRAM_TOOL_PRODUCT_CODE.IsNull;
  btnSpecificToolDoc.Enabled:= not cdsGridDataSPECIFIC_TOOL_PRODUCT_CODE.IsNull;
  btnTypicalToolDoc.Enabled:= not cdsGridDataTYPICAL_TOOL_PRODUCT_CODE.IsNull;
end;

class function TfmOneMLMSOperations.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmOneMLMSOperations.actShowCapacityGraphUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmOneMLMSOperations.actSpecialControlUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsGridData.Active;
end;

procedure TfmOneMLMSOperations.actSpecificToolSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient,
    cdsGridDataSPECIFIC_TOOL_PRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmOneMLMSOperations.actSpecificToolSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridDataSPECIFIC_TOOL_PRODUCT_CODE.IsNull;
end;

procedure TfmOneMLMSOperations.actTypicalToolSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient,
    cdsGridDataTYPICAL_TOOL_PRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmOneMLMSOperations.actTypicalToolSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridDataTYPICAL_TOOL_PRODUCT_CODE.IsNull;
end;

procedure TfmOneMLMSOperations.actShowCapacityGraphExecute(
  Sender: TObject);
begin
  inherited;
  TfmCapacityGraph.ShowGraph(
    dmDocClient,
    atRealization,
    cdsGridDataDEPT_CODE.AsInteger,
    cdsDataTREATMENT_BEGIN_DATE.AsDateTime
  );
end;

procedure TfmOneMLMSOperations.cdsGridDataSPECIFIC_TOOL_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ToolRequirementFieldGetText(Sender, cdsGridDataSPECIFIC_TOOL_IS_COMPLETE, cdsGridDataOPERATION_TYPE_CODE,
    Text, DisplayText);
end;

procedure TfmOneMLMSOperations.cdsGridDataTYPICAL_TOOL_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ToolRequirementFieldGetText(Sender, cdsGridDataTYPICAL_TOOL_IS_COMPLETE, cdsGridDataOPERATION_TYPE_CODE,
    Text, DisplayText);
end;

procedure TfmOneMLMSOperations.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  AFrame.ReadOnly:= True;  // vsichko e readonly
end;

procedure TfmOneMLMSOperations.cdsGridDataOPERATION_KINDGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= OperationKindAbbrevs[IntToOperationKind(Sender.AsInteger)];
end;

procedure TfmOneMLMSOperations.cdsGridDataPROGRAM_TOOL_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;

  ToolRequirementFieldGetText(Sender, cdsGridDataPROGRAM_TOOL_IS_COMPLETE, cdsGridDataOPERATION_TYPE_CODE,
    Text, DisplayText);
end;

procedure TfmOneMLMSOperations.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsGridData.Params, cdsData);
end;

end.


