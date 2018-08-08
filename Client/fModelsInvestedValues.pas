unit fModelsInvestedValues;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, DB, AbmesFields, ParamDataSet,
  ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  uClientTypes, JvComponent, JvCaptionButton, JvComponentBase, dDocClient,
  uCellParamsSetters, ImgList, Menus, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmModelsInvestedValues = class(TGridForm)
    cdsGridDataML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataML_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataML_STATE_CODE: TAbmesFloatField;
    cdsGridDataSALE_IDENTIFICATION: TAbmesWideStringField;
    cdsGridDataPRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsGridDataOWNER_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataPRODUCT_OTHER_NAME: TAbmesWideStringField;
    cdsGridDataQUANTITY: TAbmesFloatField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataINVESTED_VALUE: TAbmesFloatField;
    cdsGridData_TOTAL_QUANTITY_RAW: TAggregateField;
    cdsGridData_TOTAL_MEASURE_DIFF: TAggregateField;
    cdsGridData_TOTAL_QUANTITY: TAbmesFloatField;
    cdsGridData_TOTAL_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_TOTAL_INVESTED_VALUE: TAggregateField;
    pdsGridDataParamsINVESTED_VALUE_LEVEL: TAbmesFloatField;
    pdsGridDataParamsINVESTED_VALUE_SUM: TAbmesFloatField;
    pdsGridDataParamsINVESTED_VALUE_TYPE: TAbmesFloatField;
    pdsGridDataParamsCURRENCY_CODE: TAbmesFloatField;
    pdsGridDataParamsPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsPROD_START_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsPROD_START_PLAN_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_NO: TAbmesFloatField;
    pdsGridDataParamsMIN_ML_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_ML_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsOWNER_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsOWNER_COMPANY_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_SALE_STATE: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsCurrencies: TAbmesClientDataSet;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    pdsGridDataParams_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsPriorities: TAbmesClientDataSet;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridDataPRIORITY_CODE: TAbmesFloatField;
    cdsGridData_PRIORITY_COLOR: TAbmesFloatField;
    cdsGridData_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridDataMEASURE_CODE: TAbmesFloatField;
    pdsGridDataParamsINVESTED_VALUE_ABBREV: TAbmesWideStringField;
    pdsGridDataParams_SHOW_INVESTED_VALUE: TAbmesWideStringField;
    tlbTopButtons: TToolBar;
    btnDocumentation: TSpeedButton;
    actModelInvestedValues: TAction;
    btnModelInvestedValues: TBitBtn;
    pdsGridDataParams_SHOW_INVESTED_VALUE_AND_CRNCY: TAbmesWideStringField;
    pdsGridDataParamsINVESTED_VALUE_SINGLE: TAbmesFloatField;
    sepDocumentation: TToolButton;
    cdsGridDataIS_WASTE_COMPENSATOR: TAbmesFloatField;
    cdsGridDataHAS_WASTE: TAbmesFloatField;
    cdsGridDataCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField;
    tlbToggleButtons: TToolBar;
    btnToggleOwnerConsumer: TSpeedButton;
    btnToggleProductDisplay: TSpeedButton;
    pnlProductDocsCaption: TPanel;
    pdsGridDataParamsENTER_SH_STORE_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsENTER_SH_STORE_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsIS_WASTE_COMPENSATOR_STATUS: TAbmesFloatField;
    pdsGridDataParamsHAS_WASTE_STATUS: TAbmesFloatField;
    pdsGridDataParamsSALE_SHIPMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsSALE_SHIPMENT_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsOKIDU_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField;
    cdsGridDataIS_SALE: TAbmesFloatField;
    pdsGridDataParamsPRODUCTION_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsGridData_REPORT_TITLE: TAbmesWideStringField;
    cdsGridDataWORK_PRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsGridDataINVESTED_VALUE_IS_INCOMPLETE: TAbmesFloatField;
    cdsGridData_MAX_INVESTED_VALUE_IS_INCOMPLETE: TAggregateField;
    pdsGridDataParamsWASTING_SALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsWASTING_SALE_NO: TAbmesFloatField;
    cdsGridDataHAS_WASTE_COMPENSATORS: TAbmesFloatField;
    cdsGridData_PRODUCTION_ORDER_POSITION: TAbmesWideStringField;
    cdsModelDevelopmentTypes: TAbmesClientDataSet;
    prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField;
    prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_MODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataSALE_OBJECT_PK: TAbmesWideStringField;
    cdsGridDataWASTING_SALE_OBJ_PK: TAbmesWideStringField;
    sepToggleTreeView: TToolButton;
    btnToggleTreeView: TSpeedButton;
    actToggleTreeView: TAction;
    pnlTreeView: TPanel;
    cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField;
    grdModelsInvestedValuesTree: TAbmesDBGrid;
    btnShowInactive: TToolButton;
    actShowInactive: TAction;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataML_STATE_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataENTER_SH_STORE_PLAN_BEGIN_DATEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure pdsGridDataParamsAllGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure pdsGridDataParams_PRODUCTION_ORDER_TYPE_ABBREVGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure btnDocumentationClick(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure actModelInvestedValuesExecute(Sender: TObject);
    procedure actModelInvestedValuesUpdate(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
    procedure grdDataGetFooterParams(Sender: TObject; DataCol,
      Row: Integer; Column: TColumnEh; AFont: TFont;
      var Background: TColor; var Alignment: TAlignment;
      State: TGridDrawState; var Text: string);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure actToggleTreeViewUpdate(Sender: TObject);
    procedure tlModelsInvestedValuesTreeDblClick(Sender: TObject);
    procedure actToggleTreeViewExecute(Sender: TObject);
    procedure actExcelExportExecute(Sender: TObject);
    procedure grdModelsInvestedValuesTreeDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure actShowInactiveExecute(Sender: TObject);
    procedure actShowInactiveUpdate(Sender: TObject);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsGridDataBeforeClose(DataSet: TDataSet);
  private
    FProductionOrderBaseTypeCode: Integer;
    FIsTreeViewVisible: Boolean;
    FShowInactive: Boolean;
    procedure SetCellParams(ACellParamsSetter: TCellParamsSetter);
    function GetImageIndex: Integer;
    procedure ConvertGridDataToTreeList;
  protected
    class function CanUseDocs: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetFilterFormEnabled: Boolean; override;
    function GetPrintEnabled: Boolean; override;
    function MustResortGridDataAfterOpen: Boolean; override;
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
  dMain, uLoginContext, uModelUtils, uClientUtils,
  uUtils, uColorConsts, fModelsInvestedValuesFilter,
  fBaseInvestedValueFilter, fXModelInvestedValueFilter, fXModel,
  uClientPeriods, uPeriods, rModelsInvestedValues, uProductionOrderTypes,
  uExcelExport, uToolbarUtils, uDependantField, uTreeListUtils, MemTableDataEh;

{$R *.dfm}

resourcestring
  SModelInvestedValues = 'Регистър на Инженерни Организационно-Стойностни Анализи по ОПВ %s';

const
  InvestedValueColumnColor: TColor = $00FEF09E;

{ TfmModelsInvestedValues }

procedure TfmModelsInvestedValues.FormCreate(Sender: TObject);
begin
  inherited;

  FilterFormClass:= TfmModelsInvestedValuesFilter;
  EditFormClass:= TfmXModel;
  ReportClass:= TrptModelsInvestedValues;

  RegisterDateFields(cdsGridData);

  cdsGridData.Params.ParamByName('CURRENCY_CODE').AsInteger:=
    LoginContext.BaseCurrencyCode;

  pdsGridDataParamsINVESTED_VALUE_SINGLE.DependsOn:= pdsGridDataParamsINVESTED_VALUE_LEVEL.FieldName;
  pdsGridDataParamsINVESTED_VALUE_TYPE.DependsOn:= pdsGridDataParamsINVESTED_VALUE_LEVEL.FieldName;
  pdsGridDataParamsINVESTED_VALUE_SUM.DependsOn:= pdsGridDataParamsINVESTED_VALUE_LEVEL.FieldName;
  pdsGridDataParamsINVESTED_VALUE_ABBREV.DependsOn:= pdsGridDataParamsINVESTED_VALUE_LEVEL.FieldName;
  pdsGridDataParamsCURRENCY_CODE.DependsOn:= pdsGridDataParamsINVESTED_VALUE_LEVEL.FieldName;
end;

procedure TfmModelsInvestedValues.FormShow(Sender: TObject);
begin
  inherited;
  InitializeAbmesDBGrid(grdModelsInvestedValuesTree, False);
end;

function TfmModelsInvestedValues.GetFilterFormEnabled: Boolean;
begin
  Result:=
    inherited GetFilterFormEnabled and
    not FIsTreeViewVisible;
end;

function TfmModelsInvestedValues.GetImageIndex: Integer;
begin
  Result:= 155 + Ord(not VarIsNull(grdModelsInvestedValuesTree.DataSource.DataSet.FieldByName('WASTING_SALE_OBJ_PK').AsVariant));
end;

function TfmModelsInvestedValues.GetPrintEnabled: Boolean;
begin
  Result:=
    inherited GetPrintEnabled and
    not FIsTreeViewVisible;
end;

procedure TfmModelsInvestedValues.cdsGridDataML_STATE_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if not cdsGridDataML_STATE_CODE.IsNull then
    Text:= MLStateNames[Sender.AsInteger]
  else
    Text:= '';
end;

procedure TfmModelsInvestedValues.cdsGridDataENTER_SH_STORE_PLAN_BEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if not (cdsGridData.Bof and cdsGridData.Eof) then
    Text:= dmMain.GetDateIntervalAsShortString(Sender.AsDateTime, Sender.DataSet.FieldByName('ENTER_SH_STORE_PLAN_END_DATE').AsDateTime)
  else
    Text:= '';
end;

procedure TfmModelsInvestedValues.cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    not FIsTreeViewVisible or
    FShowInactive or
    (cdsGridDataML_STATE_CODE.AsInteger < ClosedMaxMLState);
end;

procedure TfmModelsInvestedValues.actExcelExportExecute(Sender: TObject);
begin
  if FIsTreeViewVisible then
    GridExcelExport(grdModelsInvestedValuesTree)
  else
    inherited;
end;

procedure TfmModelsInvestedValues.actFormUpdate(Sender: TObject);
var
  c: TWinControlArray;
begin
  inherited;
  btnDocumentation.Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);

  c:= NormalizedToolbarToolbarsAndFlowPanels(tlbToggleButtons);
  UpdateColumnsVisibility(grdData, c);
  UpdateColumnsVisibility(grdModelsInvestedValuesTree, c);

  grdData.Visible:= not FIsTreeViewVisible;
  pnlTreeView.Visible:= FIsTreeViewVisible;

  navData.Enabled:= not FIsTreeViewVisible;
end;

procedure TfmModelsInvestedValues.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if (VarToInt(cdsGridData_TOTAL_MEASURE_DIFF.AsVariant) = 0) then
    begin
      cdsGridData_TOTAL_QUANTITY.AsVariant:= cdsGridData_TOTAL_QUANTITY_RAW.AsVariant;
      cdsGridData_TOTAL_MEASURE_ABBREV.AsVariant:= cdsGridDataMEASURE_ABBREV.AsVariant;
    end
  else
    begin
      cdsGridData_TOTAL_QUANTITY.Clear;
      cdsGridData_TOTAL_MEASURE_ABBREV.Clear;
    end;

  cdsGridData_REPORT_TITLE.AsString:= Caption;

  cdsGridData_PRODUCTION_ORDER_POSITION.AsString:=
    GetProductionOrderPosition(
      cdsGridDataIS_WASTE_COMPENSATOR.AsBoolean,
      cdsGridDataHAS_WASTE_COMPENSATORS.AsBoolean,
      cdsGridDataHAS_WASTE.AsBoolean);
end;

procedure TfmModelsInvestedValues.pdsGridDataParamsAllGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmModelsInvestedValues.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if (pdsGridDataParamsIS_WASTE_COMPENSATOR_STATUS.AsInteger = 3) then
    begin
      if not pdsGridDataParamsWASTING_SALE_BRANCH_CODE.IsNull then
        CheckRequiredField(pdsGridDataParamsWASTING_SALE_NO);

      if not pdsGridDataParamsWASTING_SALE_NO.IsNull then
        CheckRequiredField(pdsGridDataParamsWASTING_SALE_BRANCH_CODE);
    end;  { if }
end;

procedure TfmModelsInvestedValues.OpenDataSets;
begin
  cdsPriorities.Open;
  cdsCurrencies.Open;
  cdsModelDevelopmentTypes.Open;
  inherited;
end;

procedure TfmModelsInvestedValues.CloseDataSets;
begin
  inherited;
  cdsModelDevelopmentTypes.Close;
  cdsCurrencies.Close;
  cdsPriorities.Close;
end;

procedure TfmModelsInvestedValues.SetCellParams(ACellParamsSetter: TCellParamsSetter);
begin
  with ACellParamsSetter do
    begin
      if IsSelected then
        Exit;

      if (VarToInt(GetFieldValue('ML_STATE_CODE')) = AnnuledMLState) then
        Background:= ccAnnuledObjectBackground
      else
        begin
          if (CurrentFieldName = 'PRIORITY_FULL_NAME') and
             not VarIsNull(GetFieldValue(CurrentFieldName)) then
            begin
              if not VarIsNull(GetFieldValue('_PRIORITY_COLOR')) then
                Foreground:= VarToInt(GetFieldValue('_PRIORITY_COLOR'));

              if not VarIsNull(GetFieldValue('_PRIORITY_BACKGROUND_COLOR')) then
                Background:= VarToInt(GetFieldValue('_PRIORITY_BACKGROUND_COLOR'));
            end;  { if }

          if (CurrentFieldName = 'ML_STATE_CODE') then
            begin
              if (VarToInt(GetFieldValue('ML_STATE_CODE')) >= Low(ModelStateColors)) and
                 (VarToInt(GetFieldValue('ML_STATE_CODE')) <= High(ModelStateColors)) then
                Background:= ModelStateColors[VarToInt(GetFieldValue('ML_STATE_CODE'))];
            end;  { if }

          if (CurrentFieldName = '_PRODUCTION_ORDER_POSITION') and
             (VarToInt(GetFieldValue('HAS_WASTE')) = 1) then
            begin
              Background:= ccTotalLateNotSelected;
            end;  { if }
        end;

      if (CurrentFieldName = 'INVESTED_VALUE') then
        begin
          Background:= InvestedValueColumnColor;

          if (VarToInt(GetFieldValue('INVESTED_VALUE_IS_INCOMPLETE')) = 1) then
            Foreground:= clRed;
        end;  { if }
    end;  { with }
end;

procedure TfmModelsInvestedValues.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  GridCellParamsSetter: TGridCellParamsSetter;
begin
  inherited;
  GridCellParamsSetter:= TGridCellParamsSetter.Create(Column, AFont, Background, State);
  try
    SetCellParams(GridCellParamsSetter);
  finally
    FreeAndNil(GridCellParamsSetter);
  end;  { try }
end;

procedure TfmModelsInvestedValues.grdDataGetFooterParams(Sender: TObject;
  DataCol, Row: Integer; Column: TColumnEh; AFont: TFont;
  var Background: TColor; var Alignment: TAlignment; State: TGridDrawState;
  var Text: string);
begin
  inherited;

  if (Column.Field = cdsGridDataINVESTED_VALUE) and
     (VarToFloat(cdsGridData_MAX_INVESTED_VALUE_IS_INCOMPLETE.AsVariant) = 1) then
    AFont.Color:= clRed;
end;

procedure TfmModelsInvestedValues.grdModelsInvestedValuesTreeDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;

  with Column.Field.DataSet do
    if BOF and EOF then
      Exit;

  if (Column.FieldName = 'SALE_IDENTIFICATION') then
    DrawTreeImageColumnCell(grdModelsInvestedValuesTree, dmMain.ilActions, GetImageIndex, Rect, Column);
end;
procedure TfmModelsInvestedValues.Initialize;
begin
  inherited;
  Caption:= Format(SModelInvestedValues, [ProductionOrderBaseTypes[FProductionOrderBaseTypeCode].CoveringAbbrevPlural]);
end;

procedure TfmModelsInvestedValues.pdsGridDataParams_PRODUCTION_ORDER_TYPE_ABBREVGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText, True);
end;

procedure TfmModelsInvestedValues.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AFilterFormEnabled: Boolean;
  AProductionOrderBaseTypeCode: Integer);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, doNone, AFilterFormEnabled);
  FProductionOrderBaseTypeCode:= AProductionOrderBaseTypeCode;
end;

function TfmModelsInvestedValues.MustResortGridDataAfterOpen: Boolean;
begin
  Result:= Assigned(grdData.DataSource);
end;

class function TfmModelsInvestedValues.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AFilterFormEnabled: Boolean;
  AProductionOrderBaseTypeCode: Integer): Boolean;
var
  f: TfmModelsInvestedValues;
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

procedure TfmModelsInvestedValues.tlModelsInvestedValuesTreeDblClick(Sender: TObject);
begin
  inherited;
  actModelInvestedValues.Execute;
end;

procedure TfmModelsInvestedValues.pdsGridDataParamsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  with pdsGridDataParams do
    begin
      Edit;
      try
        InitializePriorityInterval(pdsGridDataParamsBEGIN_PRIORITY_CODE, pdsGridDataParamsEND_PRIORITY_CODE);
        pdsGridDataParamsINVESTED_VALUE_ABBREV.AsString:= SInvestedValueLevel1Abbrev;
        pdsGridDataParamsPRODUCTION_ORDER_BASE_TYPE_CODE.AsInteger:= FProductionOrderBaseTypeCode;
        Post;
      except
        Cancel;
        raise;
      end;  { try }
    end;  { with }
end;

procedure TfmModelsInvestedValues.pdsGridDataParamsCalcFields(
  DataSet: TDataSet);
const
  InvestedValueTypeAbbrevs: array[0..3] of string =
    (SInvestedValueTypeAbbrevPlan, SInvestedValueTypeAbbrevReal,
     SInvestedValueTypeAbbrevDiversion, SInvestedValueTypeAbbrevWaste);
begin
  inherited;

  pdsGridDataParams_SHOW_INVESTED_VALUE.AsString:=
    Format('%s / %s / %s', [
      pdsGridDataParamsINVESTED_VALUE_ABBREV.AsString,
      InvestedValueTypeAbbrevs[pdsGridDataParamsINVESTED_VALUE_TYPE.AsInteger],
      pdsGridDataParamsINVESTED_VALUE_SINGLE.DisplayText
    ]);

  pdsGridDataParams_SHOW_INVESTED_VALUE_AND_CRNCY.AsString:=
    Format('%s (%s)', [
      pdsGridDataParams_SHOW_INVESTED_VALUE.AsString,
      pdsGridDataParams_CURRENCY_ABBREV.AsString
    ]);
end;

procedure TfmModelsInvestedValues.btnDocumentationClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, btnDocumentation,
    cdsGridDataPRODUCT_CODE.AsInteger);
end;

class function TfmModelsInvestedValues.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmModelsInvestedValues.cdsGridDataAfterOpen(DataSet: TDataSet);
var
  s: string;
begin
  inherited;

  s:= pdsGridDataParams_SHOW_INVESTED_VALUE_AND_CRNCY.AsString;
  s:= StringReplace(s, '/ ', '/' + SLineBreak, []);
  s:= StringReplace(s, ' (', SLineBreak + '(', []);

  grdData.Columns[13].Title.Caption:= s;
  grdModelsInvestedValuesTree.Columns[12].Title.Caption:= s;

  UnregisterFieldsTextVisibility(
    [ cdsGridDataINVESTED_VALUE,
      cdsGridData_TOTAL_INVESTED_VALUE]);

  if (pdsGridDataParamsINVESTED_VALUE_LEVEL.AsInteger = 1) then
    RegisterFieldsTextVisibility(
      IsLevelOneInvestedValueVisible,
      [ cdsGridDataINVESTED_VALUE,
        cdsGridData_TOTAL_INVESTED_VALUE])
  else
    if (pdsGridDataParamsINVESTED_VALUE_SUM.AsInteger = 2) then
      RegisterFieldsTextVisibility(
        IsFullInvestedValueVisible,
        [ cdsGridDataINVESTED_VALUE,
          cdsGridData_TOTAL_INVESTED_VALUE])
    else
      RegisterFieldsTextVisibility(
        IsHighLevelInvestedValueVisible,
        [ cdsGridDataINVESTED_VALUE,
          cdsGridData_TOTAL_INVESTED_VALUE]);

  if (cdsGridData.IndexName = '') then
    begin
      cdsGridData.IndexName:= cdsGridData.IndexDefs[0].Name;
      cdsGridData.First;
    end;

  if FIsTreeViewVisible then
    ConvertGridDataToTreeList;
end;

procedure TfmModelsInvestedValues.cdsGridDataBeforeClose(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.IndexName:= '';
end;

procedure TfmModelsInvestedValues.ConvertGridDataToTreeList;
begin
  SortGrid(grdData, SortIndexName, SortFilteredDetails);

  grdModelsInvestedValuesTree.ConvertToTreeList('SALE_OBJECT_PK', 'WASTING_SALE_OBJ_PK');

  InitializeTreeNodesExpandedState(
    grdModelsInvestedValuesTree,
    function (AMemoryRecordEh: TMemoryRecordEh): Boolean begin
      Result:= (AMemoryRecordEh.DataValues['ML_STATE_CODE', dvvCurValueEh] >= ClosedMaxMLState);
    end);
end;

procedure TfmModelsInvestedValues.actModelInvestedValuesExecute(
  Sender: TObject);
begin
  inherited;
  TfmXModel.ShowInvestedValues(
    dmDocClient,
    cdsGridDataML_OBJECT_BRANCH_CODE.AsInteger,
    cdsGridDataML_OBJECT_CODE.AsInteger,
    pdsGridDataParams);
end;

procedure TfmModelsInvestedValues.actModelInvestedValuesUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmModelsInvestedValues.actShowInactiveExecute(Sender: TObject);
begin
  inherited;
  FShowInactive:= not FShowInactive;
  (Sender as TAction).Checked:= FShowInactive;
  RefilterDataSet(cdsGridData);
  ConvertGridDataToTreeList;
end;

procedure TfmModelsInvestedValues.actShowInactiveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= FIsTreeViewVisible;
end;

procedure TfmModelsInvestedValues.actToggleTreeViewExecute(Sender: TObject);
var
  SavedSaleObjectBranchCode: Integer;
  SavedSaleObjectCode: Integer;
begin
  inherited;

  if FIsTreeViewVisible then
    begin
      SavedSaleObjectBranchCode:= cdsGridData.Params.ParamByName('TREE_SALE_OBJECT_BRANCH_CODE').AsInteger;
      SavedSaleObjectCode:= cdsGridData.Params.ParamByName('TREE_SALE_OBJECT_CODE').AsInteger;
    end
  else
    begin
      SavedSaleObjectBranchCode:= cdsGridDataSALE_OBJECT_BRANCH_CODE.AsInteger;
      SavedSaleObjectCode:= cdsGridDataSALE_OBJECT_CODE.AsInteger;
    end;

  FIsTreeViewVisible:= not FIsTreeViewVisible;

  cdsGridData.Params.ParamByName('GET_SALE_OBJECT_TREE').AsInteger:= Ord(FIsTreeViewVisible);

  if FIsTreeViewVisible then
    begin
      cdsGridData.Params.ParamByName('TREE_SALE_OBJECT_BRANCH_CODE').AsInteger:= cdsGridDataSALE_OBJECT_BRANCH_CODE.AsInteger;
      cdsGridData.Params.ParamByName('TREE_SALE_OBJECT_CODE').AsInteger:= cdsGridDataSALE_OBJECT_CODE.AsInteger;
    end
  else
    begin
      cdsGridData.Params.ParamByName('TREE_SALE_OBJECT_BRANCH_CODE').Clear;
      cdsGridData.Params.ParamByName('TREE_SALE_OBJECT_CODE').Clear;
    end;

  cdsGridData.TempDisableControls/
    procedure begin
      RefreshDataSet(cdsGridData);
      cdsGridData.Locate(
        'SALE_OBJECT_BRANCH_CODE; SALE_OBJECT_CODE',
        VarArrayOf([
          SavedSaleObjectBranchCode,
          SavedSaleObjectCode]),
        []);
    end;

  actForm.Update;
  ActiveControl:= (IfThen(FIsTreeViewVisible, grdModelsInvestedValuesTree, grdData) as TWinControl);

  FixDBGridEhColumnWidths(grdData);
end;

procedure TfmModelsInvestedValues.actToggleTreeViewUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    FIsTreeViewVisible or
    ( not cdsGridData.IsEmpty and
      (cdsGridDataML_STATE_CODE.AsInteger <> AnnuledMLState)
    );
end;

procedure TfmModelsInvestedValues.grdDataDblClick(Sender: TObject);
begin
  actModelInvestedValues.Execute;
end;

end.
