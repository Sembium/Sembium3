unit fOperationMovements;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, ParamDataSet, ActnList, DB,
  DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  AbmesFields, dDocClient, uClientTypes, JvComponent, JvCaptionButton,
  uModelMovementTypes, JvComponentBase, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, Vcl.Menus, System.Actions,
  uDocExcelExport;

type
  [DocExcelExport]
  TfmOperationMovements = class(TGridForm)
    pdsGridDataParamsOM_BRANCH_CODE: TAbmesFloatField;                                                              
    pdsGridDataParamsOM_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsOM_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsIS_STORNO: TAbmesFloatField;
    pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_NO: TAbmesFloatField;
    pdsGridDataParamsMLL_NO_AS_TEXT: TAbmesWideStringField;
    pdsGridDataParamsMLL_FORK_NO: TAbmesFloatField;
    pdsGridDataParamsFROM_ML_MODEL_STAGE_NO: TAbmesFloatField;
    pdsGridDataParamsFROM_MLMS_OPERATION_NO: TAbmesFloatField;
    pdsGridDataParamsFROM_MLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    pdsGridDataParamsTO_ML_MODEL_STAGE_NO: TAbmesFloatField;
    pdsGridDataParamsTO_MLMS_OPERATION_NO: TAbmesFloatField;
    pdsGridDataParamsTO_MLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsGridDataOM_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataOM_CODE: TAbmesFloatField;
    cdsGridDataOM_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataOM_DATE: TAbmesSQLTimeStampField;
    cdsGridDataMLL_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataFROM_ML_MODEL_STAGE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataFROM_MLMSO_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataTO_ML_MODEL_STAGE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataTO_MLMSO_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDETAIL_NAME: TAbmesWideStringField;
    cdsGridDataDETAIL_NO: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataWORK_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataWORK_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataPRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataIS_STORNO: TAbmesFloatField;
    cdsGridDataOPERATION_MOVEMENT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataOPERATION_MOVEMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataWASTE_INFO: TAbmesWideStringField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParams_OM_BRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParams_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    btnEditData: TBitBtn;
    pdsGridDataParamsTO_OPERATION_OR_WASTE: TAbmesFloatField;
    cdsMlmsOperationInfo: TAbmesClientDataSet;
    cdsMlmsOperationInfoMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsMlmsOperationInfoMLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsMlmsOperationInfoSALE_BRANCH_CODE: TAbmesFloatField;
    cdsMlmsOperationInfoSALE_NO: TAbmesFloatField;
    cdsMlmsOperationInfoIS_MODEL_ARCHIVED: TAbmesFloatField;
    cdsMlmsOperationInfoIS_MODEL_CLOSED: TAbmesFloatField;
    cdsMlmsOperationInfoIS_MODEL_ANNULED: TAbmesFloatField;
    cdsMlmsOperationInfoMLL_NO_AS_TEXT: TAbmesWideStringField;
    cdsMlmsOperationInfoFORK_NO: TAbmesFloatField;
    cdsMlmsOperationInfoML_MODEL_STAGE_NO: TAbmesFloatField;
    cdsMlmsOperationInfoMLMS_OPERATION_NO: TAbmesFloatField;
    cdsMlmsOperationInfoMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsMlmsOperationInfoMODEL_LIMITING_DATE: TAbmesSQLTimeStampField;
    pcMain: TPageControl;
    tsMain: TTabSheet;
    grdMain: TAbmesDBGrid;
    tsSysInfo: TTabSheet;
    pnlTopRight: TPanel;
    pnlFilter2: TPanel;
    btnFilter2: TSpeedButton;
    navData2: TDBColorNavigator;
    pnlTopRightInner: TPanel;
    btnDetailsData: TSpeedButton;
    btnProductsData: TSpeedButton;
    tlbTopGridButtons2: TToolBar;
    btnExport2: TToolButton;
    grdSysInfo: TAbmesDBGrid;
    cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCREATE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataSTORNO_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataSTORNO_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSTORNO_TIME: TAbmesSQLTimeStampField;
    cdsGridDataDETAIL_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsGridData_AGG_PRODUCT_MEASURE_CODE: TAggregateField;
    cdsGridData_AGG_DETAIL_MEASURE_CODE: TAggregateField;
    cdsGridData_SUM_TOTAL_DETAIL_TECH_QTY: TAggregateField;
    cdsGridData_SUM_WORK_DETAIL_TECH_QTY: TAggregateField;
    cdsGridData_SUM_TOTAL_PRODUCT_TECH_QTY: TAggregateField;
    cdsGridData_SUM_WORK_PRODUCT_TECH_QTY: TAggregateField;
    cdsGridData_PRODUCT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_DETAIL_MEASURE_ABBREV: TAbmesWideStringField;
    sepBeforePrintButtonOnToolbar: TToolButton;
    btnPrint: TToolButton;
    cdsGridDataML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataML_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_CODE: TAbmesFloatField;
    actModelStatus: TAction;
    btnModelStatus: TBitBtn;
    pdsGridDataParams_OM_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParams_OM_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataTOTAL_PRICE: TAbmesFloatField;
    cdsGridData_SUM_TOTAL_PRICE: TAggregateField;
    pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField;
    cdsGridDataPRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsGridDataPRIORITY_COLOR: TAbmesFloatField;
    cdsGridDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    pdsGridDataParamsPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsDETAIL_CODE: TAbmesFloatField;
    cdsSaleTypes: TAbmesClientDataSet;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_SALE_TYPE_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsFROM_MLMSO_CHOSEN_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsTO_MLMSO_CHOSEN_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsTO_WASTE_CHOSEN_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsRESULT_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC: TAbmesFloatField;
    tlbMovementDoc: TToolBar;
    sepBeforeMovementDoc: TToolButton;
    lblMovementDoc: TLabel;
    btnMovementDoc: TToolButton;
    actMovementDoc: TAction;
    pdsGridDataParamsOM_NO: TAbmesFloatField;
    cdsGridDataWORK_PRIORITY_NO: TAbmesFloatField;
    pdsGridDataParamsPRODUCTION_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsGridData_REPORT_TITLE: TAbmesWideStringField;
    cdsGridDataDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_DOC_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_HAS_DOC: TAbmesFloatField;
    cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_HAS_DOC: TAbmesFloatField;
    actDetailDoc: TAction;
    actProductDoc: TAction;
    tlbProductDoc: TToolBar;
    sepBeforeProductDoc: TToolButton;
    lblProductDoc: TLabel;
    btnProductDoc: TToolButton;
    tlbDetailDoc: TToolBar;
    sepBeforeDetailDoc: TToolButton;
    lblDetailDoc: TLabel;
    btnDetailDoc: TToolButton;
    sepBeforeDetailsData: TToolButton;
    cdsGridDataFROM_SETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataFROM_HOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsGridData_FROM_SETUP_TQ_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_FROM_TQ_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataFROM_EMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataFROM_TEAM_NO: TAbmesFloatField;
    cdsGridDataFROM_TEAM_NAME: TAbmesWideStringField;
    cdsGridDataQA_EMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataTO_EMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataTO_TEAM_NO: TAbmesFloatField;
    cdsGridDataFROM_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataQA_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataTO_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataFROM_MLMSO_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataFROM_MLMSO_DOC_CODE: TAbmesFloatField;
    cdsGridDataFROM_MLMSO_HAS_DOC: TAbmesFloatField;
    actOperationDoc: TAction;
    tlbOperationDoc: TToolBar;
    sepOperationDoc: TToolButton;
    lblOperationDoc: TLabel;
    btnOperationDoc: TToolButton;
    cdsGridDataFROM_MLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    pdsGridDataParamsOPERATION_MOVEMENT_TYPE_CODE: TAbmesFloatField;
    cdsOperationMovementTypes: TAbmesClientDataSet;
    cdsOperationMovementTypesOPERATION_MOVEMENT_TYPE_CODE: TAbmesFloatField;
    cdsOperationMovementTypesOPERATION_MOVEMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsOperationMovementTypesOPERATION_MOVEMENT_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_OPERATION_MOVEMENT_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataQA_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataQA_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure pdsGridDataParamsMLL_NO_AS_TEXTValidate(Sender: TField);
    procedure btnProductsDataClick(Sender: TObject);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure cdsGridDataCREATE_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataSTORNO_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataLIMITING_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataMODEL_CLOSE_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_SUM_TOTAL_DETAIL_TECH_QTYGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_SUM_WORK_DETAIL_TECH_QTYGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_SUM_TOTAL_PRODUCT_TECH_QTYGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_SUM_WORK_PRODUCT_TECH_QTYGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actModelStatusExecute(Sender: TObject);
    procedure actModelStatusUpdate(Sender: TObject);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure actExcelExportExecute(Sender: TObject);
    procedure grdMainGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actMovementDocExecute(Sender: TObject);
    procedure actMovementDocUpdate(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure actProductDocExecute(Sender: TObject);
    procedure actProductDocUpdate(Sender: TObject);
    procedure actDetailDocExecute(Sender: TObject);
    procedure actDetailDocUpdate(Sender: TObject);
    procedure actOperationDocUpdate(Sender: TObject);
    procedure actOperationDocExecute(Sender: TObject);
  private
    FProductsDataVisible: Boolean;
    FProductionOrderBaseTypeCode: Integer;
    procedure SetProductsDataVisible(const Value: Boolean);
  protected
    class function CanUseDocs: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetInsertRecordEnabled: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  public
    procedure Initialize; override;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      AMovementsDirection: TMovementsDirection = mdAll;
      AProductionOrderBaseTypeCode: Integer = 0): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      AMovementsDirection: TMovementsDirection = mdAll;
      AProductionOrderBaseTypeCode: Integer = 0); reintroduce; virtual;

    property ProductsDataVisible: Boolean read FProductsDataVisible write SetProductsDataVisible;
  end;

implementation

uses
  fOperationMovementsFilter, dMain, uTreeClientUtils, uClientUtils,
  uUtils, fOperationMovement, rOperationalMovements, fModelStatus,
  uExcelExport, uDocUtils, uColorConsts, uProductionOrderTypes, uClientDateTime;

{$R *.dfm}

resourcestring
  SOperationMovements = 'Регистър на Операционни Движения по ОПВ %s';
  SPriceColumnCaption = 'ВС1 /%s/';
  SSetupHourTechQuantityMeasureAbbrev = 'н/ч';
  SHourTechQuantityMeasureAbbrev = '%s/ч';

{ TfmOperationMovements }

class function TfmOperationMovements.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmOperationMovements.FormCreate(Sender: TObject);
begin
  inherited;

  EditFormClass:= TfmOperationMovement;
  FilterFormClass:= TfmOperationMovementsFilter;
  ReportClass:= TrptOperationalMovements;

  with cdsGridData.Params do
    begin
      ParamByName('OM_BEGIN_DATE').AsDateTime:= ContextDate;
      ParamByName('OM_END_DATE').AsDateTime:= ContextDate;
    end;   { with }

  RegisterDateFields(cdsGridData);

  grdMain.Columns[37].Title.Caption:= Format(SPriceColumnCaption, [LoginContext.BaseCurrencyAbbrev]);

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsGridDataTOTAL_PRICE,
      cdsGridData_SUM_TOTAL_PRICE]);
end;

procedure TfmOperationMovements.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if not VarIsNullOrEmpty(cdsGridData_AGG_PRODUCT_MEASURE_CODE.Value) and
     (cdsGridData_AGG_PRODUCT_MEASURE_CODE.Value = 0) then
    cdsGridData_PRODUCT_MEASURE_ABBREV.AsString:= cdsGridDataPRODUCT_TECH_MEASURE_ABBREV.AsString
  else
    cdsGridData_PRODUCT_MEASURE_ABBREV.Clear;

  if not VarIsNullOrEmpty(cdsGridData_AGG_DETAIL_MEASURE_CODE.Value) and
     (cdsGridData_AGG_DETAIL_MEASURE_CODE.Value = 0) then
    cdsGridData_DETAIL_MEASURE_ABBREV.AsString:= cdsGridDataDETAIL_TECH_MEASURE_ABBREV.AsString
  else
    cdsGridData_DETAIL_MEASURE_ABBREV.Clear;

  cdsGridData_REPORT_TITLE.AsString:= Caption;

  cdsGridData_FROM_SETUP_TQ_MEASURE_ABBREV.AsString:= SSetupHourTechQuantityMeasureAbbrev;

  cdsGridData_FROM_TQ_MEASURE_ABBREV.AsString:=
    Format(SHourTechQuantityMeasureAbbrev, [cdsGridDataDETAIL_TECH_MEASURE_ABBREV.AsString]);
end;

procedure TfmOperationMovements.OpenDataSets;
begin
  cdsBranches.Open;
  cdsSaleTypes.Open;
  cdsOperationMovementTypes.Open;
  inherited;
end;

procedure TfmOperationMovements.CloseDataSets;
begin
  inherited;
  cdsOperationMovementTypes.Close;
  cdsSaleTypes.Close;
  cdsBranches.Close;
end;

procedure TfmOperationMovements.pdsGridDataParamsMLL_NO_AS_TEXTValidate(
  Sender: TField);
begin
  inherited;
  CheckNoAsTextField(Sender, False);
end;

procedure TfmOperationMovements.SetProductsDataVisible(
  const Value: Boolean);
const
  ColumnCount = 6;
  ProductColumns: array[False..True, 1..ColumnCount] of Integer =
    ((25, 26, 29, 30, 31, 32), (27, 28, 33, 34, 35, 36));
var
  i: Integer;
begin
  if (Value <> FProductsDataVisible) then
    begin
      for i:= 1 to ColumnCount do
        grdMain.Columns[ProductColumns[FProductsDataVisible, i]].Visible:= False;

      FProductsDataVisible:= Value;

      for i:= 1 to ColumnCount do
        grdMain.Columns[ProductColumns[FProductsDataVisible, i]].Visible:= True;
    end;  { if }
end;

procedure TfmOperationMovements.btnProductsDataClick(Sender: TObject);
begin
  inherited;
  ProductsDataVisible:= btnProductsData.Down;
end;

procedure TfmOperationMovements.pdsGridDataParamsAfterOpen(
  DataSet: TDataSet);
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

procedure TfmOperationMovements.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  CheckRequiredFields(DataSet, 'OM_BEGIN_DATE; OM_END_DATE');
end;

procedure TfmOperationMovements.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean;
  AMovementsDirection: TMovementsDirection;
  AProductionOrderBaseTypeCode: Integer);
var
  Prefix: string;
  ParamsDataSet: TDataSet;
begin
  if (AMovementsDirection = mdAll) then
    ParamsDataSet:= ADataSet
  else
    ParamsDataSet:= nil;

  inherited SetDataParams(AdmDocClient, ParamsDataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);

  if (AMovementsDirection <> mdAll) then
    begin
      Assert(Assigned(ADataSet));

      with cdsMlmsOperationInfo do
        begin
          SetParams(Params, ADataSet);
          Open;
          try
            SetParams(cdsGridData.Params, cdsMlmsOperationInfo);

            cdsGridData.Params.ParamByName('OM_BEGIN_DATE').AsDateTime:=
              cdsMlmsOperationInfoMODEL_LIMITING_DATE.AsDateTime;
            cdsGridData.Params.ParamByName('OM_END_DATE').AsDateTime:=
              ContextDate;

            case AMovementsDirection of
              mdIn: Prefix:= 'TO_';
              mdOut, mdWaste, mdOutAndWaste: Prefix:= 'FROM_';
            else
              Prefix:= '';
            end;

            if (Prefix <> '') then
              begin
                cdsGridData.Params.ParamByName(Prefix + 'ML_MODEL_STAGE_NO').AsInteger:=
                  cdsMlmsOperationInfoML_MODEL_STAGE_NO.AsInteger;
                cdsGridData.Params.ParamByName(Prefix + 'MLMS_OPERATION_NO').AsInteger:=
                  cdsMlmsOperationInfoMLMS_OPERATION_NO.AsInteger;
                cdsGridData.Params.ParamByName(Prefix + 'MLMS_OPERATION_VARIANT_NO').AsInteger:=
                  cdsMlmsOperationInfoMLMS_OPERATION_VARIANT_NO.AsInteger;
              end;  { if }
          finally
            Close;
          end;  { try }
        end;  { with }
    end;  { if }

  case AMovementsDirection of
    mdIn, mdOut:
      cdsGridData.Params.ParamByName('TO_OPERATION_OR_WASTE').AsInteger:= toOperation;
    mdWaste:
      cdsGridData.Params.ParamByName('TO_OPERATION_OR_WASTE').AsInteger:= toWaste;
  else
    cdsGridData.Params.ParamByName('TO_OPERATION_OR_WASTE').Clear;
  end;  { case }

  FProductionOrderBaseTypeCode:= AProductionOrderBaseTypeCode;
end;

class function TfmOperationMovements.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean;
  AMovementsDirection: TMovementsDirection;
  AProductionOrderBaseTypeCode: Integer): Boolean;
var
  f: TfmOperationMovements;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled,
      AMovementsDirection, AProductionOrderBaseTypeCode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmOperationMovements.cdsGridDataCREATE_TIMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOperationMovements.cdsGridDataSTORNO_TIMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOperationMovements.cdsGridDataLIMITING_TIMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOperationMovements.cdsGridDataMODEL_CLOSE_TIMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOperationMovements.cdsGridData_SUM_TOTAL_DETAIL_TECH_QTYGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if not VarIsNullOrEmpty(cdsGridData_AGG_DETAIL_MEASURE_CODE.Value) and
     (cdsGridData_AGG_DETAIL_MEASURE_CODE.Value = 0) then
    NumericFieldGetText(Sender, Text, DisplayText)
  else
    Text:= '';
end;

procedure TfmOperationMovements.cdsGridData_SUM_WORK_DETAIL_TECH_QTYGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if not VarIsNullOrEmpty(cdsGridData_AGG_DETAIL_MEASURE_CODE.Value) and
     (cdsGridData_AGG_DETAIL_MEASURE_CODE.Value = 0) then
    NumericFieldGetText(Sender, Text, DisplayText)
  else
    Text:= '';
end;

procedure TfmOperationMovements.cdsGridData_SUM_TOTAL_PRODUCT_TECH_QTYGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if not VarIsNullOrEmpty(cdsGridData_AGG_PRODUCT_MEASURE_CODE.Value) and
     (cdsGridData_AGG_PRODUCT_MEASURE_CODE.Value = 0) then
    NumericFieldGetText(Sender, Text, DisplayText)
  else
    Text:= '';
end;

procedure TfmOperationMovements.cdsGridData_SUM_WORK_PRODUCT_TECH_QTYGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if not VarIsNullOrEmpty(cdsGridData_AGG_PRODUCT_MEASURE_CODE.Value) and
     (cdsGridData_AGG_PRODUCT_MEASURE_CODE.Value = 0) then
    NumericFieldGetText(Sender, Text, DisplayText)
  else
    Text:= '';
end;

function TfmOperationMovements.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= TfmOperationMovement.ShowForm(dmDocClient, cdsGridData, AEditMode);
end;

function TfmOperationMovements.GetInsertRecordEnabled: Boolean;
begin
  Result:= False;
end;

procedure TfmOperationMovements.actModelStatusExecute(Sender: TObject);
begin
  inherited;
  TfmModelStatus.ShowForm(dmDocClient, cdsGridData, emReadOnly);
end;

procedure TfmOperationMovements.actModelStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmOperationMovements.pdsGridDataParamsCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams_OM_BEGIN_DATE.AsVariant:= pdsGridDataParamsOM_BEGIN_DATE.AsVariant;
  pdsGridDataParams_OM_END_DATE.AsVariant:= pdsGridDataParamsOM_END_DATE.AsVariant;
end;

procedure TfmOperationMovements.actDetailDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProduct,
    cdsGridDataDETAIL_DOC_BRANCH_CODE, cdsGridDataDETAIL_DOC_CODE);
end;

procedure TfmOperationMovements.actDetailDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsGridData.Active and not cdsGridData.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsGridDataDETAIL_HAS_DOC.AsInteger;
end;

procedure TfmOperationMovements.actExcelExportExecute(Sender: TObject);
begin
  // do not call inherited
  MultiGridDocExcelExport([grdMain, grdSysInfo], True, False, nil, '', ExcelExportDocDefs, DocExcelExportDNCOnlyDefault);
end;

procedure TfmOperationMovements.grdMainGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  Highlight: Boolean;
  Field: TField;
begin
  inherited;

  Highlight:= (gdSelected in State);
  Field:= Column.Field;

  if Field.DataSet.Bof and Field.DataSet.Eof then
    Exit;

  if not Highlight then
    begin
      if (Field.DataSet.FieldByName('IS_STORNO').AsFloat = 1)  then
        Background:= ccAnnuledObjectBackground
      else
        begin
          if (Field = cdsGridDataPRIORITY_FULL_NAME) then
            begin
              if not cdsGridDataPRIORITY_COLOR.IsNull then
                AFont.Color:= cdsGridDataPRIORITY_COLOR.AsInteger;

              if not cdsGridDataPRIORITY_BACKGROUND_COLOR.IsNull then
                Background:= cdsGridDataPRIORITY_BACKGROUND_COLOR.AsInteger;
            end;
        end;
    end;
end;

procedure TfmOperationMovements.Initialize;
begin
  inherited;
  Caption:= Format(SOperationMovements, [ProductionOrderBaseTypes[FProductionOrderBaseTypeCode].CoveringAbbrevPlural]);

  RegisterExcelExportDoc('FROM_MLMSO_DOC_BRANCH_CODE', 'FROM_MLMSO_DOC_CODE', 'FROM_MLMSO_HAS_DOC', Trim(lblOperationDoc.Caption));
  RegisterExcelExportDoc('DETAIL_DOC_BRANCH_CODE', 'DETAIL_DOC_CODE', 'DETAIL_HAS_DOC', Trim(lblDetailDoc.Caption));
  RegisterExcelExportDoc('PRODUCT_DOC_BRANCH_CODE', 'PRODUCT_DOC_CODE', 'PRODUCT_HAS_DOC', Trim(lblProductDoc.Caption));
end;

procedure TfmOperationMovements.actMovementDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotOperationMovement,
    cdsGridData);
end;

procedure TfmOperationMovements.actMovementDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsGridData.Active and not cdsGridData.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsGridDataHAS_DOC.AsInteger;
end;

procedure TfmOperationMovements.actOperationDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotRealOperation,
    cdsGridDataFROM_MLMSO_DOC_BRANCH_CODE,
    cdsGridDataFROM_MLMSO_DOC_CODE,
    cdsGridDataFROM_MLMS_OPERATION_VARIANT_NO.AsInteger
  );
end;

procedure TfmOperationMovements.actOperationDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and not cdsGridData.IsEmpty;

  (Sender as TAction).ImageIndex:= cdsGridDataFROM_MLMSO_HAS_DOC.AsInteger;
end;

procedure TfmOperationMovements.actPrintExecute(Sender: TObject);
begin
  // do not call inherited
  TrptOperationalMovements.PrintReport(cdsGridData, pdsGridDataParams, ProductsDataVisible);
end;

procedure TfmOperationMovements.actProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProduct,
    cdsGridDataPRODUCT_DOC_BRANCH_CODE, cdsGridDataPRODUCT_DOC_CODE);
end;

procedure TfmOperationMovements.actProductDocUpdate(Sender: TObject);
begin
  inherited;
  
  (Sender as TAction).Enabled:=
    cdsGridData.Active and not cdsGridData.IsEmpty and not cdsGridDataPRODUCT_NAME.IsNull;
    
  (Sender as TAction).ImageIndex:= cdsGridDataPRODUCT_HAS_DOC.AsInteger;
end;

end.
