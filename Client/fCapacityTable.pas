unit fCapacityTable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, DB, AbmesFields, ParamDataSet,
  ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  uCapacity, Mask, PrnDbgeh, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateIntervalFrame, JvComponent, JvCaptionButton, JvComponentBase,
  uAspectTypes, uClientTypes, dDocClient, Menus, uParRelProducts,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions,
  EhLibVCL, DBAxisGridsEh;

type
  TfmCapacityTable = class(TGridForm)
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsTIME_UNIT_CODE: TAbmesFloatField;
    pdsGridDataParamsTIME_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_DEPT_PRODUCTS: TAbmesWideStringField;
    cdsTimeUnits: TAbmesClientDataSet;
    cdsTimeUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsTimeUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsTimeUnitsTABLE_NAME: TAbmesWideStringField;
    cdsTimeUnitsKEY_FIELD_NAME: TAbmesWideStringField;
    cdsTimeUnitsYEAR_UNIT_NO_NAME: TAbmesWideStringField;
    cdsTimeUnitsDEFAULT_UNIT_COUNT: TAbmesFloatField;
    cdsTimeUnitsMIN_UNIT_COUNT: TAbmesFloatField;
    cdsTimeUnitsMAX_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParams_TIME_UNIT_NAME: TAbmesWideStringField;
    pdsGridDataParams_TIME_UNIT_DEFAULT_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParams_TIME_UNIT_MIN_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParams_TIME_UNIT_MAX_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParams_END_DATE: TAbmesSQLTimeStampField;
    tlbButtons: TToolBar;
    btnToggleLimitColumnsVisible: TToolButton;
    actToggleLimitColumnsVisible: TAction;
    actToggleLogisticsColumnsVisible: TAction;
    actToggleExploitationColumnsVisible: TAction;
    actToggleFreeColumnsVisible: TAction;
    actToggleExcessColumnsVisible: TAction;
    btnToggleLogisticsColumnsVisible: TToolButton;
    btnToggleExploitationColumnsVisible: TToolButton;
    btnToggleFreeColumnsVisible: TToolButton;
    btnToggleExcessColumnsVisible: TToolButton;
    pdsGridDataParams_CENTER_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsFREE_HOURS_STATE: TAbmesFloatField;
    pdsGridDataParamsEXCESS_HOURS_STATE: TAbmesFloatField;
    pnlFilter: TPanel;
    lblTimeUnit: TLabel;
    lblTimeUnitCount: TLabel;
    edtTimeUnit: TDBEdit;
    edtTimeUnitCount: TDBEdit;
    EhPrint: TPrintDBGridEh;
    EhPrintSaveHeader: TPrintDBGridEh;
    actPrintGrid: TAction;
    cdsOuterFormParams: TAbmesClientDataSet;
    cdsOuterFormParamsDEPT_CODE: TAbmesFloatField;
    cdsOuterFormParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsOuterFormParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsOuterFormParams_IN_SPECIAL_CONTROL_TASKS_MODE: TAbmesFloatField;
    btnPrintGrid: TToolButton;
    cdsOuterFormParamsDEPT_NAME: TAbmesWideStringField;
    cdsOuterFormParamsDEPT_NO: TAbmesWideStringField;
    cdsOuterFormParamsOM_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsOuterFormParamsOM_END_DATE: TAbmesSQLTimeStampField;
    cdsOuterFormParamsCHOSEN_DEPTS: TAbmesWideStringField;
    frDateInterval: TfrDateIntervalFrame;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsLOGISTICS_HOURS_STATE: TAbmesFloatField;
    pdsGridDataParamsEXPLOITATION_HOURS_STATE: TAbmesFloatField;
    pdsGridDataParamsASPECT_TYPE: TAbmesFloatField;
    cdsParRelProductsParams: TAbmesClientDataSet;
    cdsParRelProductsParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsParRelProductsParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsParRelProductsParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsParRelProductsParamsOP_DEPT_CODE: TAbmesFloatField;
    actClientProductParRelProducts: TAction;
    actClientPartnerParRelProducts: TAction;
    actClientParRelProducts: TAction;
    pmClientParRelProducts: TPopupMenu;
    miClientProductParRelProducts: TMenuItem;
    miClientPartnerParRelProducts: TMenuItem;
    btnClientParRelProducts: TBitBtn;
    lblHours: TLabel;
    cdsDeptDetailFlowParams: TAbmesClientDataSet;
    cdsDeptDetailFlowParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDeptDetailFlowParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsDeptDetailFlowParamsFLOW_LEVEL: TAbmesFloatField;
    cdsDeptDetailFlowParamsFLOW_TYPE: TAbmesFloatField;
    cdsDeptDetailFlowParamsCHOSEN_DEPTS: TAbmesWideStringField;
    actDeptDetailFlow: TAction;
    btnDeptDetailFlow: TBitBtn;
    pdsGridDataParams_DEPT_NAME: TAbmesWideStringField;
    pdsGridDataParams_DEPT_CODE: TAbmesFloatField;
    lblDept: TLabel;
    edtDept: TDBEdit;
    pdsGridDataParamsCAPACITY_LIMIT_LEVEL: TAbmesFloatField;
    btnToggleLimitLevelColumnsVisible: TToolButton;
    actToggleLimitLevelColumnsVisible: TAction;
    pdsGridDataParamsCALC_ALL_LIMIT_LEVELS: TAbmesFloatField;
    cdsOuterFormParamsACTIVE_STATE: TAbmesFloatField;
    pdsGridDataParamsMIN_PRP_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_PRP_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductsParamsMIN_PRP_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductsParamsMAX_PRP_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    pdsGridDataParamsPARTNER_COMMON_LEVEL: TAbmesFloatField;
    cdsParRelProductsParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    cdsParRelProductsParamsPARTNER_COMMON_LEVEL: TAbmesFloatField;
    cdsDeptDetailFlowParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    cdsDeptDetailFlowParamsPARTNER_COMMON_LEVEL: TAbmesFloatField;
    cdsOuterFormParamsFROM_MLMSO_CHOSEN_DEPTS: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsTimeUnitsAfterOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure actToggleLimitColumnsVisibleExecute(Sender: TObject);
    procedure actToggleLimitColumnsVisibleUpdate(Sender: TObject);
    procedure actToggleLogisticsColumnsVisibleExecute(Sender: TObject);
    procedure actToggleLogisticsColumnsVisibleUpdate(Sender: TObject);
    procedure actToggleExploitationColumnsVisibleExecute(Sender: TObject);
    procedure actToggleExploitationColumnsVisibleUpdate(Sender: TObject);
    procedure actToggleFreeColumnsVisibleExecute(Sender: TObject);
    procedure actToggleFreeColumnsVisibleUpdate(Sender: TObject);
    procedure actToggleExcessColumnsVisibleExecute(Sender: TObject);
    procedure actToggleExcessColumnsVisibleUpdate(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdDataGetFooterParams(Sender: TObject; DataCol,
      Row: Integer; Column: TColumnEh; AFont: TFont;
      var Background: TColor; var Alignment: TAlignment;
      State: TGridDrawState; var Text: String);
    procedure cdsGridDataAfterClose(DataSet: TDataSet);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure actPrintGridExecute(Sender: TObject);
    procedure actPrintGridUpdate(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
    procedure pdsGridDataParamsBEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure actClientParRelProductsExecute(Sender: TObject);
    procedure actClientProductParRelProductsExecute(Sender: TObject);
    procedure actClientPartnerParRelProductsExecute(Sender: TObject);
    procedure actClientProductParRelProductsUpdate(Sender: TObject);
    procedure actClientPartnerParRelProductsUpdate(Sender: TObject);
    procedure actClientParRelProductsUpdate(Sender: TObject);
    procedure actDeptDetailFlowExecute(Sender: TObject);
    procedure actDeptDetailFlowUpdate(Sender: TObject);
    procedure pdsGridDataParamsCHOSEN_DEPTSChange(Sender: TField);
    procedure actToggleLimitLevelColumnsVisibleExecute(Sender: TObject);
    procedure actToggleLimitLevelColumnsVisibleUpdate(Sender: TObject);
  private
    FVisibleDateColumns: TCapacityFieldTypes;
    FOriginalFormCaption: string;
    FAspectType: TAspectType;
    procedure ShowDeptDetailFlow;
    procedure ShowParRelProducts(AParRelProductsOrientation: TParRelProductsOrientation);
    procedure ShowRealizationForm;
    procedure GetSelectedDateColumnBeginEndDate(out ABeginDate, AEndDate: TDateTime; out AIsPlan: Boolean);
    function DateEstimationActionEnabled: Boolean;
    function IsDateColumnSelected: Boolean;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
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
  dMain, fCapacityTableFilter, uPeriods, uUtils, uCapacityClient, JCLDateTime, Printers,
  uClientUtils, PrViewEh, fOperationalTasks, StrUtils, uTreeClientUtils,
  fOperationMovements, uClientPeriods, uXMLUtils, fCapacityAbstractFilter,
  fParRelProducts, uBorderRelTypes, fDeptDetailFlow, uProductionOrderTypes,
  uProducts, uClientDateTime, fEditForm, PrvFrmEh;

{$R *.dfm}

resourcestring
  SEstAbbrev = 'пг.';
  SPlanAbbrev = 'пл.';
  SRealAbbrev = 'отч.';
  SDeptCode = 'ТП|Код';
  SDeptName = 'ТП|Наименование';
  SSumDeficit = 'Сумарен Дефицит';

  plblBeginDate = 'Период';
  plblTimeUnitName = 'Времева Единица';
  plblTimeUnitCount = 'Брой Единици';
  plblDeptName = 'ТП';

{ TfmCapacityTable }

procedure TfmCapacityTable.FormCreate(Sender: TObject);
var
  CapacityFieldType: TCapacityFieldType;
begin
  inherited;
  FilterFormClass:= TfmCapacityTableFilter;

  for CapacityFieldType:= cftLogisticsHours to cftExcessHours do
    cdsGridData.Params.ParamByName(GetCapacityStateParamName(CapacityFieldType)).AsInteger:= 2;

  FVisibleDateColumns:= [cftExploitationHours, cftExcessHours];

  frDateInterval.FieldNames:= 'BEGIN_DATE;_END_DATE';
  MaximizeStyle:= msStandard;
end;

function TfmCapacityTable.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmCapacityTable.actClientParRelProductsExecute(Sender: TObject);
begin
  inherited;
  PopupMenuFromButton(btnClientParRelProducts, pmClientParRelProducts);
end;

procedure TfmCapacityTable.actClientParRelProductsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= DateEstimationActionEnabled;
  (Sender as TAction).Visible:= (FAspectType = atEstimation);
end;

procedure TfmCapacityTable.actClientPartnerParRelProductsExecute(
  Sender: TObject);
begin
  inherited;
  ShowParRelProducts(prpoPartner);
end;

procedure TfmCapacityTable.actClientPartnerParRelProductsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= DateEstimationActionEnabled;
end;

procedure TfmCapacityTable.actClientProductParRelProductsExecute(
  Sender: TObject);
begin
  inherited;
  ShowParRelProducts(prpoProduct);
end;

procedure TfmCapacityTable.actClientProductParRelProductsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= DateEstimationActionEnabled;
end;

procedure TfmCapacityTable.actDeptDetailFlowExecute(Sender: TObject);
begin
  inherited;
  ShowDeptDetailFlow;
end;

procedure TfmCapacityTable.actDeptDetailFlowUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= DateEstimationActionEnabled;
  (Sender as TAction).Visible:= (FAspectType = atEstimation);
end;

procedure TfmCapacityTable.actFormUpdate(Sender: TObject);
const
  VTitleMargins: array[Boolean] of Integer = (17, 7);
var
  i: Integer;
  IsPlan: Boolean;
  CapacityFieldType: TCapacityFieldType;
  f: TField;
  NewVTitleMargin: Integer;
begin
  inherited;
  for i:= 1 to cdsGridData.Params.ParamByName('TIME_UNIT_COUNT').AsInteger do
    for IsPlan:= Low(IsPlan) to High(IsPlan) do
      for CapacityFieldType:= Succ(Low(TCapacityFieldType)) to High(TCapacityFieldType) do
        begin
          f:= cdsGridData.FindField(GetCapacityDateFieldName(i, IsPlan, CapacityFieldType));
          if Assigned(f) then
            begin
              f.Visible:= (CapacityFieldType in FVisibleDateColumns);
            end;
        end;  { for }

  NewVTitleMargin:= VTitleMargins[cftDeptLevelLimitHours in FVisibleDateColumns];

  if (grdData.VTitleMargin <> NewVTitleMargin) then
    grdData.VTitleMargin:= NewVTitleMargin;
end;

procedure TfmCapacityTable.OpenDataSets;
begin
  cdsTimeUnits.Open;
  inherited OpenDataSets;
end;

procedure TfmCapacityTable.CloseDataSets;
begin
  inherited CloseDataSets;
  cdsTimeUnits.Close;
end;

procedure TfmCapacityTable.cdsTimeUnitsAfterOpen(DataSet: TDataSet);
begin
  inherited;

  if cdsGridData.Params.ParamByName('TIME_UNIT_COUNT').IsNull then
    cdsGridData.Params.ParamByName('TIME_UNIT_COUNT').AsInteger:=
      cdsTimeUnits.Lookup(
        'THE_DATE_UNIT_CODE',
        cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger,
        'DEFAULT_UNIT_COUNT');

  if cdsGridData.Params.ParamByName('BEGIN_DATE').IsNull then
    cdsGridData.Params.ParamByName('BEGIN_DATE').AsDateTime:=
      GetPeriodFirstDate(
        ContextDate,
        GetPeriodValue(cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger)
      );
end;

procedure TfmCapacityTable.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams.Edit;
  try
    pdsGridDataParams_CENTER_DATE.AsDateTime:=
      IncDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger), pdsGridDataParamsTIME_UNIT_COUNT.AsInteger div 2);

    pdsGridDataParams.Post;
  except
    pdsGridDataParams.Cancel;
    raise;
  end;  { try }
end;

procedure TfmCapacityTable.pdsGridDataParamsCalcFields(DataSet: TDataSet);
begin
  inherited;

  if (pdsGridDataParamsTIME_UNIT_CODE.AsInteger = 0) then
    pdsGridDataParams_END_DATE.Clear
  else
    pdsGridDataParams_END_DATE.AsDateTime:=
      IncDate(
        pdsGridDataParamsBEGIN_DATE.AsDateTime,
        GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger),
        pdsGridDataParamsTIME_UNIT_COUNT.AsInteger);
end;

procedure TfmCapacityTable.pdsGridDataParamsCHOSEN_DEPTSChange(Sender: TField);
begin
  inherited;
  pdsGridDataParams_DEPT_CODE.Clear;
  pdsGridDataParams_DEPT_NAME.Clear;

  if HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_DEPTS.AsString) then
    if IsSingleChosenNodeWithoutParams(pdsGridDataParamsCHOSEN_DEPTS.AsString) then
      begin
        pdsGridDataParams_DEPT_CODE.AsInteger:=
          ChosenNodeXMLToNodeCode(pdsGridDataParamsCHOSEN_DEPTS.AsString);

        DoDeptFieldChanged(
          pdsGridDataParams_DEPT_CODE,
          pdsGridDataParams_DEPT_NAME);
      end
    else
      pdsGridDataParams_DEPT_NAME.AsString:= SDeptsSet;
end;

procedure TfmCapacityTable.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Aggregates.Clear;
  cdsGridData.Params.ParamByName('ASPECT_TYPE').AsInteger:= AspectTypeToInt(FAspectType);
end;

procedure TfmCapacityTable.cdsGridDataAfterOpen(DataSet: TDataSet);

  procedure SetCapacityDateFieldProperties(ADateNo: Integer; AIsPlan: Boolean; ACapacityFieldType: TCapacityFieldType);
  const
    PlanTypeLabels: array[TAspectType, Boolean] of string = (('', ''), (SRealAbbrev, SEstAbbrev), (SRealAbbrev, SPlanAbbrev));
  var
    f: TField;
  begin
    f:= cdsGridData.FindField(GetCapacityDateFieldName(ADateNo, AIsPlan, ACapacityFieldType));
    if Assigned(f) then
      begin
        (f as TAbmesFloatField).DisplayFormat:= ',0.0';
        f.Visible:= (ACapacityFieldType in FVisibleDateColumns);
        f.DisplayLabel:=
          Format(
            '%s %s|%s',
            [ GetPeriodLabel(
                IncDate(
                  cdsGridData.Params.ParamByName('BEGIN_DATE').AsDateTime,
                  GetPeriodValue(cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger),
                  (ADateNo - 1)),
                GetPeriodValue(cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger)),
              PlanTypeLabels[FAspectType, AIsPlan],
              GetCapacityFieldTypeDisplayLabel(ACapacityFieldType, AIsPlan)]);
      end;  { if }
  end;

  procedure CreateSumAggregateOnField(AFieldName: string);
  var
    a: TAggregate;
  begin
    a:= cdsGridData.Aggregates.Add;
    a.AggregateName:= 'SUM_' + AFieldName;
    a.Expression:= Format('Sum(%s)', [AFieldName]);
    a.Visible:= True;
    a.Active:= True;
  end;

  procedure CreateCapacityDateAggregate(ADateNo: Integer; AIsPlan: Boolean; ACapacityFieldType: TCapacityFieldType);
  var
    f: TField;
  begin
    f:= cdsGridData.FindField(GetCapacityDateFieldName(ADateNo, AIsPlan, ACapacityFieldType));
    if Assigned(f) then
      CreateSumAggregateOnField(f.FieldName);
  end;

  procedure DestroyAllAggregates;
  begin
    cdsGridData.Aggregates.Clear;
  end;

var
  i: Integer;
  IsPlan: Boolean;
  CapacityFieldType: TCapacityFieldType;

begin
  inherited;

  // set dataset field props

  cdsGridData.FieldByName('DEPT_CODE').Visible:= False;

  cdsGridData.FieldByName('DEPT_NAME').DisplayLabel:= SDeptName;
  cdsGridData.FieldByName('DEPT_NAME').DisplayWidth:= 25;

  cdsGridData.FieldByName('DEPT_IDENTIFIER').DisplayLabel:= SDeptCode;
  cdsGridData.FieldByName('DEPT_IDENTIFIER').DisplayWidth:= 10;

  for i:= 1 to cdsGridData.Params.ParamByName('TIME_UNIT_COUNT').AsInteger do
    for IsPlan:= Low(IsPlan) to High(IsPlan) do
      for CapacityFieldType:= Succ(Low(TCapacityFieldType)) to High(TCapacityFieldType) do
        SetCapacityDateFieldProperties(i, IsPlan, CapacityFieldType);

  cdsGridData.FieldByName('TOTAL_PLAN_EXCESS_HOURS').DisplayLabel:= SSumDeficit;
  (cdsGridData.FieldByName('TOTAL_PLAN_EXCESS_HOURS') as TAbmesFloatField).DisplayFormat:= ',0.0';

  // create aggregates

  DestroyAllAggregates;

  for i:= 1 to cdsGridData.Params.ParamByName('TIME_UNIT_COUNT').AsInteger do
    for IsPlan:= Low(IsPlan) to High(IsPlan) do
      for CapacityFieldType:= Succ(Low(TCapacityFieldType)) to High(TCapacityFieldType) do
        CreateCapacityDateAggregate(i, IsPlan, CapacityFieldType);

  CreateSumAggregateOnField('TOTAL_PLAN_EXCESS_HOURS');

  if not pdsGridDataParamsCALC_ALL_LIMIT_LEVELS.AsBoolean then
    FVisibleDateColumns:= FVisibleDateColumns - AllLevelsLimitHoursFieldTypes;
end;

procedure TfmCapacityTable.cdsGridDataAfterClose(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Aggregates.Clear;
end;

procedure TfmCapacityTable.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  CapacityFieldType: TCapacityFieldType;
begin
  inherited;
  if (gdSelected in State) then
    Exit;

  CapacityFieldType:= GetCapacityFieldType(Column.Field);
  if (CapacityFieldType <> cftUnknown) then
    Background:=
      GetCapacityFieldTypeColor(
        CapacityFieldType,
        GetCapacityFieldIsPlan(Column.Field),
        not Column.Field.IsNull);
end;

procedure TfmCapacityTable.grdDataGetFooterParams(Sender: TObject; DataCol,
  Row: Integer; Column: TColumnEh; AFont: TFont; var Background: TColor;
  var Alignment: TAlignment; State: TGridDrawState; var Text: String);
var
  a: TAggregate;
begin
  inherited;
  a:= cdsGridData.Aggregates.Find('SUM_' + Column.FieldName);
  if Assigned(a) and not VarIsNullOrEmpty(a.Value) then
    Text:= FormatFloat(',0.0', VarToFloat(a.Value));
end;

procedure TfmCapacityTable.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  MsgParams:= uCapacityClient.CreateCommonMsgParams(LoginContext, FAspectType);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

function TfmCapacityTable.IsDateColumnSelected: Boolean;
begin
  Result:= (LeftStr(grdData.Columns[grdData.Col - 1].FieldName, 2) = 'D_');
end;

procedure TfmCapacityTable.actToggleLimitColumnsVisibleExecute(
  Sender: TObject);
begin
  inherited;
  ToggleSetElement(FVisibleDateColumns, cftLimitHours);
end;

procedure TfmCapacityTable.actToggleLimitColumnsVisibleUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= (cftLimitHours in FVisibleDateColumns);
end;

procedure TfmCapacityTable.actToggleLimitLevelColumnsVisibleExecute(
  Sender: TObject);
begin
  inherited;
  ToggleSetElement(FVisibleDateColumns, cftDeptLevelLimitHours);
  ToggleSetElement(FVisibleDateColumns, cftOccupationLevelLimitHoursDiff);
  ToggleSetElement(FVisibleDateColumns, cftOccupationLevelLimitHours);
  ToggleSetElement(FVisibleDateColumns, cftOccupationAssignmentLevelLimitHoursDiff);
  ToggleSetElement(FVisibleDateColumns, cftOccupationAssignmentLevelLimitHours);
  ToggleSetElement(FVisibleDateColumns, cftEmployeeAvailabilityLevelLimitHoursDiff);
  ToggleSetElement(FVisibleDateColumns, cftEmployeeAvailabilityLevelLimitHours);
end;

procedure TfmCapacityTable.actToggleLimitLevelColumnsVisibleUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= (cftDeptLevelLimitHours in FVisibleDateColumns);
  (Sender as TAction).Enabled:= pdsGridDataParamsCALC_ALL_LIMIT_LEVELS.AsBoolean;
end;

procedure TfmCapacityTable.actToggleLogisticsColumnsVisibleExecute(
  Sender: TObject);
begin
  inherited;
  ToggleSetElement(FVisibleDateColumns, cftLogisticsHours);
end;

procedure TfmCapacityTable.actToggleLogisticsColumnsVisibleUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= (cftLogisticsHours in FVisibleDateColumns);
  (Sender as TAction).Visible:= (FAspectType = atRealization);
end;

procedure TfmCapacityTable.actToggleExploitationColumnsVisibleExecute(
  Sender: TObject);
begin
  inherited;
  ToggleSetElement(FVisibleDateColumns, cftExploitationHours);
end;

procedure TfmCapacityTable.actToggleExploitationColumnsVisibleUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= (cftExploitationHours in FVisibleDateColumns);
end;

procedure TfmCapacityTable.actToggleFreeColumnsVisibleExecute(
  Sender: TObject);
begin
  inherited;
  ToggleSetElement(FVisibleDateColumns, cftFreeHours);
end;

procedure TfmCapacityTable.actToggleFreeColumnsVisibleUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= (cftFreeHours in FVisibleDateColumns);
end;

procedure TfmCapacityTable.actToggleExcessColumnsVisibleExecute(
  Sender: TObject);
begin
  inherited;
  ToggleSetElement(FVisibleDateColumns, cftExcessHours);
end;

procedure TfmCapacityTable.actToggleExcessColumnsVisibleUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= (cftExcessHours in FVisibleDateColumns);
end;

procedure TfmCapacityTable.actPrintGridExecute(Sender: TObject);
var
  SaveCursor: TCursor;
  SavePage: TPrinterPage;
begin
  inherited;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsGridData.DisableControls;
    try
      EhPrintSaveHeader.BeforeGridText:= EhPrint.BeforeGridText;
      try
        EhPrint.SetSubstitutes([
          '%Caption%', Caption,
          'BEGIN_DATE', pdsGridDataParamsBEGIN_DATE.DisplayText,
          '_TIME_UNIT_NAME', pdsGridDataParams_TIME_UNIT_NAME.DisplayText,
          'TIME_UNIT_COUNT', pdsGridDataParamsTIME_UNIT_COUNT.DisplayText,
          '_DEPT_NAME', pdsGridDataParams_DEPT_NAME.DisplayText,
          'plblBeginDate', plblBeginDate,
          'plblTimeUnitName', plblTimeUnitName,
          'plblTimeUnitCount', plblTimeUnitCount,
          'plblDeptName', plblDeptName
        ]);

        SavePage:= SetUpPrinter(0, poLandscape, PrinterPreview.Printer);
        try
          EhPrint.PreviewModal;
        finally
          SetUpPrinter(SavePage.PaperSize, SavePage.Orientation, PrinterPreview.Printer);
        end;   { try }
      finally
        EhPrint.BeforeGridText:= EhPrintSaveHeader.BeforeGridText;
      end;
    finally
      cdsGridData.EnableControls;
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TfmCapacityTable.actPrintGridUpdate(Sender: TObject);
begin
  inherited;
  with grdData do
    (Sender as TAction).Enabled:=
      Assigned(DataSource) and
      DataSource.DataSet.Active and
      (DataSource.DataSet.RecordCount > 0);
end;

procedure TfmCapacityTable.ShowParRelProducts(AParRelProductsOrientation: TParRelProductsOrientation);
var
  BeginDate: TDateTime;
  EndDate: TDateTime;
  IsPlan: Boolean;
begin
  if IsDateColumnSelected then
    begin
      GetSelectedDateColumnBeginEndDate(BeginDate, EndDate, IsPlan);

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

          cdsParRelProductsParamsBEGIN_DATE.AsDateTime:=
            BeginDate;

          cdsParRelProductsParamsEND_DATE.AsDateTime:=
            EndDate;

          cdsParRelProductsParams.FieldByName('OP_DEPT_CODE').Assign(
            cdsGridData.FieldByName('DEPT_CODE'));

          cdsParRelProductsParamsMIN_PRP_STATUS_CODE.AsVariant:= pdsGridDataParamsMIN_PRP_STATUS_CODE.AsVariant;
          cdsParRelProductsParamsMAX_PRP_STATUS_CODE.AsVariant:= pdsGridDataParamsMAX_PRP_STATUS_CODE.AsVariant;

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
          prpspikNone,
          prpdikOpDept,
          False
        );
      finally
        cdsParRelProductsParams.Close;
      end;  { try }
    end;  { if }
end;

procedure TfmCapacityTable.ShowRealizationForm;
var
  BeginDate: TDateTime;
  EndDate: TDateTime;
  IsPlan: Boolean;
begin
  if IsDateColumnSelected then
    begin
      GetSelectedDateColumnBeginEndDate(BeginDate, EndDate, IsPlan);

      cdsOuterFormParams.CreateDataSet;
      try
        cdsOuterFormParams.Append;
        try
          cdsOuterFormParamsDEPT_CODE.AsFloat:= cdsGridData.FieldByName('DEPT_CODE').AsFloat;
          cdsOuterFormParamsCHOSEN_DEPTS.AsString:= ChosenNodeCodeToXML(cdsOuterFormParamsDEPT_CODE.AsInteger);
          cdsOuterFormParamsFROM_MLMSO_CHOSEN_DEPTS.AsString:= cdsOuterFormParamsCHOSEN_DEPTS.AsString;
          cdsOuterFormParamsBEGIN_DATE.AsDateTime:= BeginDate;
          cdsOuterFormParamsEND_DATE.AsDateTime:= EndDate;
          cdsOuterFormParamsOM_BEGIN_DATE.AsDateTime:= BeginDate;
          cdsOuterFormParamsOM_END_DATE.AsDateTime:= EndDate;
          cdsOuterFormParams_IN_SPECIAL_CONTROL_TASKS_MODE.AsBoolean:= False;
          cdsOuterFormParamsACTIVE_STATE.AsInteger:= 1;  // wsichki

          DoDeptFieldChanged(
            cdsOuterFormParamsDEPT_CODE,
            cdsOuterFormParamsDEPT_NAME,
            cdsOuterFormParamsDEPT_NO);

          cdsOuterFormParams.Post;
        except
          cdsOuterFormParams.Cancel;
          raise;
        end;  { try }

        if IsPlan then
          TfmOperationalTasks.ShowForm(dmDocClient, cdsOuterFormParams, EditMode, doNone, False)
        else
          TfmOperationMovements.ShowForm(dmDocClient, cdsOuterFormParams, EditMode, doNone, False);
      finally
        cdsOuterFormParams.Close;
      end;  { try }
    end;  { if }
end;

procedure TfmCapacityTable.ShowDeptDetailFlow;
const
  FlowTypes: array[TAspectType] of Integer = (0, 2, 1);
var
  BeginDate: TDateTime;
  EndDate: TDateTime;
  IsPlan: Boolean;
begin
  if IsDateColumnSelected then
    begin
      GetSelectedDateColumnBeginEndDate(BeginDate, EndDate, IsPlan);

      cdsDeptDetailFlowParams.CreateDataSet;
      try
        cdsDeptDetailFlowParams.Append;
        try
          cdsDeptDetailFlowParamsFLOW_LEVEL.AsInteger:= 1;

          cdsDeptDetailFlowParamsFLOW_TYPE.AsInteger:= FlowTypes[FAspectType];

          cdsDeptDetailFlowParamsPRODUCT_COMMON_LEVEL.Assign(
            pdsGridDataParamsPRODUCT_COMMON_LEVEL);

          cdsDeptDetailFlowParamsPARTNER_COMMON_LEVEL.Assign(
            pdsGridDataParamsPARTNER_COMMON_LEVEL);

          cdsDeptDetailFlowParamsBEGIN_DATE.AsDateTime:=
            BeginDate;

          cdsDeptDetailFlowParamsEND_DATE.AsDateTime:=
            EndDate;

          cdsDeptDetailFlowParamsCHOSEN_DEPTS.AsString:=
            ChosenNodeCodeToXML(cdsGridData.FieldByName('DEPT_CODE').AsInteger);

          cdsDeptDetailFlowParams.Post;
        except
          cdsDeptDetailFlowParams.Cancel;
          raise;
        end;  { try }

        TfmDeptDetailFlow.ShowForm(
          dmDocClient,
          cdsDeptDetailFlowParams,
          emReadOnly,
          doNone,
          False);
      finally
        cdsDeptDetailFlowParams.Close;
      end;  { try }
    end;  { if }
end;

procedure TfmCapacityTable.GetSelectedDateColumnBeginEndDate(out ABeginDate,
  AEndDate: TDateTime; out AIsPlan: Boolean);
  function CountVisibleCapacityCols: Integer;
  begin
    Result:=
      7*Ord(actToggleLimitLevelColumnsVisible.Checked) +
      Ord(actToggleLimitColumnsVisible.Checked) +
      Ord(actToggleLogisticsColumnsVisible.Checked) +
      Ord(actToggleExploitationColumnsVisible.Checked) +
      Ord(actToggleFreeColumnsVisible.Checked) +
      Ord(actToggleExcessColumnsVisible.Checked);
  end;
var
  DateNo: Integer;
  PerItem: TPeriod;
  TheDate: TDateTime;
  IsTodayShownTwice: Boolean;
  FilterBeginDate: TDateTime;
  CurrentDate: TDateTime;
begin
  Assert(IsDateColumnSelected);

  DateNo:= (grdData.Col - grdData.FrozenCols - 1) div CountVisibleCapacityCols;
  AIsPlan:= (grdData.Columns[grdData.Col - 1].FieldName[6] = 'P');

  PerItem:= GetPeriodValue(cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger);

  CurrentDate:= ContextDate;
  FilterBeginDate:= cdsGridData.Params.ParamByName('BEGIN_DATE').AsDateTime;

  IsTodayShownTwice:=
    (FAspectType = atRealization) and
    (CurrentDate >= FilterBeginDate) and
    (CurrentDate <= IncDate(FilterBeginDate, PerItem, cdsGridData.Params.ParamByName('TIME_UNIT_COUNT').AsInteger));

  TheDate:= IncDate(FilterBeginDate, PerItem, DateNo - Ord(AIsPlan and IsTodayShownTwice));

  ABeginDate:= GetPeriodFirstDate(TheDate, PerItem);
  AEndDate:= GetPeriodLastDate(TheDate, PerItem);
end;

procedure TfmCapacityTable.grdDataDblClick(Sender: TObject);
const
  ShiftParRelProductsOrientations: array[Boolean] of TParRelProductsOrientation = (prpoProduct, prpoPartner);
begin
  inherited;
  case FAspectType of
    atEstimation:
      ShowParRelProducts(ShiftParRelProductsOrientations[ShiftIsPressed]);
    atRealization:
      ShowRealizationForm;
  end;  { case }
end;

function TfmCapacityTable.DateEstimationActionEnabled: Boolean;
begin
  Result:=
    (FAspectType = atEstimation) and
    not cdsGridData.IsEmpty and
    IsDateColumnSelected;
end;

procedure TfmCapacityTable.pdsGridDataParamsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if pdsGridDataParamsCHOSEN_DEPTS.Required and
     (not HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_DEPTS.AsString)) then
    raise Exception.Create(SDeptsRequired);
end;

procedure TfmCapacityTable.pdsGridDataParamsBEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= dmMain.GetDateIntervalAsString(Sender.AsDateTime, pdsGridDataParams_END_DATE.AsDateTime);
end;

procedure TfmCapacityTable.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AAspectType: TAspectType);
begin
  FAspectType:= AAspectType;

  cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger:=
    GetPeriodConst(DefaultCapacityTimeUnits[FAspectType]);

  case FAspectType of
    atEstimation:
      cdsGridData.Params.ParamByName('CAPACITY_LIMIT_LEVEL').AsInteger:= 1;
    atRealization:
      cdsGridData.Params.ParamByName('CAPACITY_LIMIT_LEVEL').AsInteger:= 4;
  end;  { case }

  // narochno inherited-a e nakraia - inache se precakva poluchavaneto na parametri otvun

  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
end;

procedure TfmCapacityTable.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDateInterval) then
    AFrame.ReadOnly:= True
  else
    inherited;
end;

function TfmCapacityTable.ShowFilterForm: Boolean;
begin
  if FilterFormClass.InheritsFrom(TfmCapacityAbstractFilter) then
    Result:=
      TfmCapacityAbstractFilterClass(FilterFormClass).ShowForm(
        dmDocClient,
        pdsGridDataParams,
        emEdit,
        doNone,
        FAspectType)
  else
    Result:= inherited ShowFilterForm;
end;

class function TfmCapacityTable.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AAspectType: TAspectType): Boolean;
var
  f: TfmCapacityTable;
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

end.
