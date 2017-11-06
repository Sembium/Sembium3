unit fModelMovementsOverview;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, Menus, JvButtons, ImgList, ParamDataSet, ActnList,
  Db, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, AbmesFields, Mask, ComCtrls,
  ToolWin, JvComponent, JvCaptionButton, dDocClient, uClientTypes,
  uModelMovementTypes, JvComponentBase;

type
  TfmModelMovementsOverview = class(TGridForm)
    cdsGridDataMM_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMM_CODE: TAbmesFloatField;
    cdsGridDataMM_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataMM_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDETAIL_NAME: TAbmesWideStringField;
    cdsGridDataDETAIL_CUSTOM_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataTOTAL_PRICE: TAbmesFloatField;
    cdsGridDataIS_STORNO: TAbmesFloatField;
    pdsGridDataParamsFROM_STAGE_NO: TAbmesFloatField;
    pdsGridDataParamsTO_STAGE_NO: TAbmesFloatField;
    pdsGridDataParamsSTART_PERIOD_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_PERIOD_DATE: TAbmesSQLTimeStampField;
    pnlEditButton: TPanel;
    btnEdit: TBitBtn;
    pdsGridDataParamsIS_STORNO: TAbmesFloatField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    pdsGridDataParams_OM_BRANCH_CODE_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_NO: TAbmesFloatField;
    pdsGridDataParams_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    pnlPrintButton: TPanel;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_CUSTOM_CODE: TAbmesFloatField;
    cdsGridDataACCOUNT_PRODUCT_QUANTITY: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    actShowAccountData: TAction;
    pdsGridDataParamsMLL_FORK_NO: TAbmesFloatField;
    actToggleProductDisplay: TAction;
    cdsGridDataCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParamsMLL_NO_AS_TEXT: TAbmesWideStringField;
    pdsGridDataParamsSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypes: TAbmesClientDataSet;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_SALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataSUM_DETAIL_TECH_QUANTITY: TAggregateField;
    cdsGridDataSUM_TOTAL_PRICE: TAggregateField;
    cdsGridDataMEASURE_CODE: TAbmesFloatField;
    cdsGridDataAGG_MEASURE_CODE: TAggregateField;
    cdsGridData_SUM_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridData_AGG_MEASURE_ABBREV: TAbmesWideStringField;
    pcMain: TPageControl;
    tsMain: TTabSheet;
    pnlTopRight: TPanel;
    pnlFilter2: TPanel;
    btnFilter2: TSpeedButton;
    navData2: TDBColorNavigator;
    pnlTopRightInner: TPanel;
    btnDetailsData: TSpeedButton;
    btnProductsData: TSpeedButton;
    tlbTopGridButtons2: TToolBar;
    btnExport2: TToolButton;
    btnToggleProductDisplay: TSpeedButton;
    tsSysInfo: TTabSheet;
    grdMain: TAbmesDBGrid;
    grdSysInfo: TAbmesDBGrid;
    pnlFiller: TPanel;
    cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCREATE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataSTORNO_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataSTORNO_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSTORNO_TIME: TAbmesSQLTimeStampField;
    sepBeforeExportButton: TToolButton;
    btnPrintOnNavigator2: TToolButton;
    cdsGridDataOM_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataOM_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField;
    cdsGridDataPRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsGridDataPRIORITY_COLOR: TAbmesFloatField;
    cdsGridDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataFROM_STAGE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataTO_STAGE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataWASTE_INFO: TAbmesWideStringField;
    pdsGridDataParamsPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsTO_STAGE_OR_WASTE: TAbmesFloatField;
    pdsGridDataParamsRESULT_PRODUCT_CHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsDETAIL_CHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsFROM_STAGE_CHOSEN_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsTO_STAGE_CHOSEN_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsTO_WASTE_CHOSEN_DEPTS: TAbmesWideStringField;
    cdsStageInfo: TAbmesClientDataSet;
    cdsStageInfoMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsStageInfoMLMS_OBJECT_CODE: TAbmesFloatField;
    cdsStageInfoSALE_BRANCH_CODE: TAbmesFloatField;
    cdsStageInfoSALE_NO: TAbmesFloatField;
    cdsStageInfoIS_MODEL_ARCHIVED: TAbmesFloatField;
    cdsStageInfoIS_MODEL_CLOSED: TAbmesFloatField;
    cdsStageInfoIS_MODEL_ANNULED: TAbmesFloatField;
    cdsStageInfoMODEL_LIMITING_DATE: TAbmesSQLTimeStampField;
    cdsStageInfoMLL_NO_AS_TEXT: TAbmesWideStringField;
    cdsStageInfoFORK_NO: TAbmesFloatField;
    cdsStageInfoML_MODEL_STAGE_NO: TAbmesFloatField;
    pdsGridDataParamsOM_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsOM_NO: TAbmesFloatField;
    cdsGridDataWORK_PRIORITY_CODE: TAbmesFloatField;
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
    tlbDetailDoc: TToolBar;
    sepBeforeDetailDoc: TToolButton;
    lblDetailDoc: TLabel;
    btnDetailDoc: TToolButton;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC: TAbmesFloatField;
    actMovementDoc: TAction;
    tlbMovementDoc: TToolBar;
    sepBeforeMovementDoc: TToolButton;
    lblMovementDoc: TLabel;
    btnMovementDoc: TToolButton;
    tlbProductDoc: TToolBar;
    sepBeforeProductDoc: TToolButton;
    lblProductDoc: TLabel;
    btnProductDoc: TToolButton;
    sepBeforeDetailsData: TToolButton;
    actModelStatus: TAction;
    btnModelStatus: TBitBtn;
    cdsGridDataML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataML_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_CODE: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actPrintExecute(Sender: TObject);
    procedure actToggleProductDisplayExecute(Sender: TObject);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure pdsGridDataParamsMLL_NO_AS_TEXTValidate(Sender: TField);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure btnDetailsDataClick(Sender: TObject);
    procedure btnProductsDataClick(Sender: TObject);
    procedure cdsGridDataMODEL_CLOSE_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataLIMITING_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataSTORNO_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataCREATE_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actExcelExportExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure actMovementDocExecute(Sender: TObject);
    procedure actMovementDocUpdate(Sender: TObject);
    procedure actDetailDocExecute(Sender: TObject);
    procedure actDetailDocUpdate(Sender: TObject);
    procedure actProductDocExecute(Sender: TObject);
    procedure actProductDocUpdate(Sender: TObject);
    procedure actModelStatusExecute(Sender: TObject);
    procedure actModelStatusUpdate(Sender: TObject);
  private
    FShowAccountData: Boolean;
    FShowClientProductId: Boolean;
    FProductionOrderBaseTypeCode: Integer;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetInsertRecordEnabled: Boolean; override;
    class function CanUseDocs: Boolean; override;
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
  end;

implementation

uses
  dMain, fModelMovementsOverviewFilter, uClientUtils, uExcelExport,
  rModelMovementsOverview, uColorConsts, uUtils, fOperationMovement,
  uProductionOrderTypes, uDocUtils, fModelStatus, uClientDateTime;

{$R *.DFM}

resourcestring
  SModelMovementsOverview = 'Регистър на Етапни Движения по ОПВ %s';
  SPriceColumnCaption = 'ВС1 /%s/';

{ TfmModelMovementsOverview }

procedure TfmModelMovementsOverview.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmModelMovementsOverviewFilter;
  EditFormClass:= TfmOperationMovement;
  ReportClass:= TrptModelMovementsOverview;

  RegisterDateFields(cdsGridData);
  grdMain.Columns[17].Title.Caption:= Format(SPriceColumnCaption, [LoginContext.BaseCurrencyAbbrev]);
  FShowAccountData:= not btnDetailsData.Down;
  FShowClientProductId:= False;

  cdsGridData.Params.ParamByName('START_PERIOD_DATE').Value:= ContextDate;
  cdsGridData.Params.ParamByName('END_PERIOD_DATE').Value:= ContextDate;

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsGridDataTOTAL_PRICE,
      cdsGridDataSUM_TOTAL_PRICE]);
end;

procedure TfmModelMovementsOverview.grdDataGetCellParams(Sender: TObject;
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

procedure TfmModelMovementsOverview.Initialize;
begin
  inherited;
  Caption:= Format(SModelMovementsOverview, [ProductionOrderBaseTypes[FProductionOrderBaseTypeCode].CoveringAbbrevPlural]);
end;

procedure TfmModelMovementsOverview.actPrintExecute(Sender: TObject);
begin
  TrptModelMovementsOverview.PrintReport(cdsGridData, pdsGridDataParams, FShowAccountData);
end;

procedure TfmModelMovementsOverview.actProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProduct,
    cdsGridDataPRODUCT_DOC_BRANCH_CODE, cdsGridDataPRODUCT_DOC_CODE);
end;

procedure TfmModelMovementsOverview.actProductDocUpdate(Sender: TObject);
begin
  inherited;
  
  (Sender as TAction).Enabled:=
    cdsGridData.Active and not cdsGridData.IsEmpty and not cdsGridDataPRODUCT_NAME.IsNull;

  (Sender as TAction).ImageIndex:= cdsGridDataPRODUCT_HAS_DOC.AsInteger;
end;

procedure TfmModelMovementsOverview.actToggleProductDisplayExecute(
  Sender: TObject);
begin
  inherited;
  FShowClientProductId:= btnToggleProductDisplay.Down;
end;

procedure TfmModelMovementsOverview.CloseDataSets;
begin
  inherited;
  cdsBranches.Close;
  cdsSaleTypes.Close;
end;

procedure TfmModelMovementsOverview.OpenDataSets;
begin
  inherited;
  cdsBranches.Open;
  cdsSaleTypes.Open;
end;

procedure TfmModelMovementsOverview.pdsGridDataParamsAfterOpen(
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

procedure TfmModelMovementsOverview.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  CheckRequiredFields([
    pdsGridDataParamsSTART_PERIOD_DATE,
    pdsGridDataParamsEND_PERIOD_DATE]);
end;

procedure TfmModelMovementsOverview.pdsGridDataParamsMLL_NO_AS_TEXTValidate(
  Sender: TField);
begin
  inherited;
  CheckNoAsTextField(Sender, False);
end;

procedure TfmModelMovementsOverview.cdsGridDataCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if (VarToInt(cdsGridDataAGG_MEASURE_CODE.AsVariant) = 0) then
    begin
      cdsGridData_SUM_DETAIL_TECH_QUANTITY.AsVariant:= cdsGridDataSUM_DETAIL_TECH_QUANTITY.AsVariant;
      cdsGridData_AGG_MEASURE_ABBREV.AsVariant:= cdsGridDataMEASURE_ABBREV.AsVariant;
    end
  else
    begin
      cdsGridData_SUM_DETAIL_TECH_QUANTITY.Clear;
      cdsGridData_AGG_MEASURE_ABBREV.Clear;
    end;

  cdsGridData_REPORT_TITLE.AsString:= Caption;
end;

procedure TfmModelMovementsOverview.btnDetailsDataClick(Sender: TObject);
begin
  inherited;
  FShowAccountData:= not btnDetailsData.Down;
end;

procedure TfmModelMovementsOverview.btnProductsDataClick(Sender: TObject);
begin
  inherited;
  FShowAccountData:= btnProductsData.Down;
end;

class function TfmModelMovementsOverview.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmModelMovementsOverview.cdsGridDataMODEL_CLOSE_TIMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmModelMovementsOverview.cdsGridDataLIMITING_TIMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmModelMovementsOverview.cdsGridDataSTORNO_TIMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmModelMovementsOverview.cdsGridDataCREATE_TIMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmModelMovementsOverview.actDetailDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProduct,
    cdsGridDataDETAIL_DOC_BRANCH_CODE, cdsGridDataDETAIL_DOC_CODE);
end;

procedure TfmModelMovementsOverview.actDetailDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsGridData.Active and not cdsGridData.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsGridDataDETAIL_HAS_DOC.AsInteger;
end;

procedure TfmModelMovementsOverview.actExcelExportExecute(Sender: TObject);
begin
  // do not call inherited
  MultiGridExcelExport([grdMain, grdSysInfo]);
end;

function TfmModelMovementsOverview.GetInsertRecordEnabled: Boolean;
begin
  Result:= False;
end;

procedure TfmModelMovementsOverview.actFormUpdate(Sender: TObject);
var
  DetailVisible: Boolean;
  ProductVisible: Boolean;
  ResultProductVisible: Boolean;
  i: Integer;
begin
  inherited;
  DetailVisible:= not FShowClientProductId and not FShowAccountData;
  ProductVisible:= not FShowClientProductId and FShowAccountData;
  ResultProductVisible:= FShowClientProductId;

  for i:= 8 to 11 do
    grdMain.Columns[i].Visible:= DetailVisible;

  for i:= 12 to 15 do
    grdMain.Columns[i].Visible:= ProductVisible;

  grdMain.Columns[16].Visible:= ResultProductVisible;
end;

procedure TfmModelMovementsOverview.actModelStatusExecute(Sender: TObject);
begin
  inherited;
  TfmModelStatus.ShowForm(dmDocClient, cdsGridData, emReadOnly);
end;

procedure TfmModelMovementsOverview.actModelStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmModelMovementsOverview.actMovementDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotOperationMovement,
    cdsGridData);
end;

procedure TfmModelMovementsOverview.actMovementDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsGridData.Active and not cdsGridData.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsGridDataHAS_DOC.AsInteger;
end;

procedure TfmModelMovementsOverview.SetDataParams(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
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

      with cdsStageInfo do
        begin
          SetParams(Params, ADataSet);
          Open;
          try
            SetParams(cdsGridData.Params, cdsStageInfo);

            cdsGridData.Params.ParamByName('START_PERIOD_DATE').AsDateTime:=
              cdsStageInfoMODEL_LIMITING_DATE.AsDateTime;
            cdsGridData.Params.ParamByName('END_PERIOD_DATE').AsDateTime:=
              ContextDate;

            case AMovementsDirection of
              mdIn: Prefix:= 'TO_';
              mdOut, mdWaste, mdOutAndWaste: Prefix:= 'FROM_';
            else
              Prefix:= '';
            end;

            if (Prefix <> '') then
              begin
                cdsGridData.Params.ParamByName(Prefix + 'STAGE_NO').AsInteger:=
                  cdsStageInfoML_MODEL_STAGE_NO.AsInteger;
              end;  { if }
          finally
            Close;
          end;  { try }
        end;  { with }
    end;  { if }

  case AMovementsDirection of
    mdIn, mdOut:
      cdsGridData.Params.ParamByName('TO_STAGE_OR_WASTE').AsInteger:= toStage;
    mdWaste:
      cdsGridData.Params.ParamByName('TO_STAGE_OR_WASTE').AsInteger:= toWaste;
  else
    cdsGridData.Params.ParamByName('TO_STAGE_OR_WASTE').Clear;
  end;  { case }

  FProductionOrderBaseTypeCode:= AProductionOrderBaseTypeCode;
end;

class function TfmModelMovementsOverview.ShowForm(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
  AMovementsDirection: TMovementsDirection;
  AProductionOrderBaseTypeCode: Integer): Boolean;
var
  f: TfmModelMovementsOverview;
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

end.
