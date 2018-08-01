unit fXModels;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient, GridsEh,
  AbmesClientDataSet, StdCtrls, DBGridEh, AbmesDBGrid, DBCtrls,
  ColorNavigator, Buttons, ExtCtrls, AbmesFields, fBottomButtonGridForm,
  Menus, JvButtons, uClientTypes, ComCtrls, ToolWin, Mask, uProductionOrderTypes,
  dDocClient, JvComponent, JvCaptionButton, JvComponentBase, uProducts,
  uCellParamsSetters, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmXModels = class(TBottomButtonGridForm)
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    actMakeChanges: TAction;
    btnMakeChanges: TBitBtn;
    cdsGridDataSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataENGINEER_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataIS_ANNULED: TAbmesFloatField;
    cdsGridDataIS_FINISHED: TAbmesFloatField;
    cdsGridDataML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataML_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataMAIN_DEPT_CODE: TAbmesFloatField;
    cdsGridDataMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataIS_ARCHIVED: TAbmesFloatField;
    cdsGridDataREQUESTED_CHANGE_COUNT: TAbmesFloatField;
    cdsGridDataREQUESTED_MY_CHANGE_COUNT: TAbmesFloatField;
    cdsGridDataREJECTED_CHANGE_COUNT: TAbmesFloatField;
    cdsGridDataREJECTED_MY_CHANGE_COUNT: TAbmesFloatField;
    pdsGridDataParamsPRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsENGINEER_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsMAIN_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParams_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataIS_LIMITING: TAbmesFloatField;
    cdsGridDataPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPROCESS_OBJECT_CODE: TAbmesFloatField;
    btnEditSale: TBitBtn;
    actEditSale: TAction;
    cdsGridDataDEL_RECORD: TAbmesFloatField;
    cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataMIN_PRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataENGINEER_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCURRENT_TO_LIMITING_DATE_DIFF: TAbmesFloatField;
    cdsGridDataML_STATE_CODE: TAbmesFloatField;
    cdsGridDataSPEC_STATE_CODE: TAbmesFloatField;
    cdsGridDataMANUFACTURE_DAYS: TAbmesFloatField;
    cdsGridDataMANUFACTURE_QUANTITY: TAbmesFloatField;
    pdsGridDataParamsENTER_RESULT_STORE_END_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsENTER_RESULT_STORE_END_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsMIN_PRODUCT_NEED_BEGIN_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsMIN_PRODUCT_NEED_BEGIN_END_DATE: TAbmesSQLTimeStampField;
    pnlClientButtons: TPanel;
    actCopyToClipboard: TAction;
    actCopyNameToClipboard: TAction;
    actCopyNoToClipboard: TAction;
    pmCopy: TPopupMenu;
    miCopyNoToClipboard: TMenuItem;
    miCopyNameToClipboard: TMenuItem;
    tlbTopButtons: TToolBar;
    btnCopy: TToolButton;
    cdsGridDataCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataCLIENT_REQUEST_NO: TAbmesWideStringField;
    actToggleClientData: TAction;
    pdsGridDataParamsMIN_SPEC_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_SPEC_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_ML_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_ML_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsHAS_REQUESTED_CHANGES: TAbmesFloatField;
    pdsGridDataParamsHAS_NOT_REQUESTED_CHANGES: TAbmesFloatField;
    pdsGridDataParamsHAS_REQUESTED_MY_CHANGES: TAbmesFloatField;
    pdsGridDataParamsHAS_NOT_REQUESTED_MY_CHANGES: TAbmesFloatField;
    pdsGridDataParamsHAS_REJECTED_CHANGES: TAbmesFloatField;
    pdsGridDataParamsHAS_NOT_REJECTED_CHANGES: TAbmesFloatField;
    pdsGridDataParamsHAS_REJECTED_MY_CHANGES: TAbmesFloatField;
    pdsGridDataParamsHAS_NOT_REJECTED_MY_CHANGES: TAbmesFloatField;
    btnDocumentation: TSpeedButton;
    pmProductDocumentation: TPopupMenu;
    pdsGridDataParamsUSER_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_TYPE_CODE: TAbmesFloatField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsINCLUDE_DETAIL_CODE: TAbmesFloatField;
    pdsGridDataParamsINCLUDE_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsINCLUDE_DEPT_CODE: TAbmesFloatField;
    cdsGridDataSUM_MANUFACTURE_QUANTITY: TAggregateField;
    cdsGridDataAGG_MEASURE_CODE: TAggregateField;
    cdsGridData_SUM_MANUFACTURE_QUANTITY: TAbmesFloatField;
    cdsGridData_AGG_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataMEASURE_CODE: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataPRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsPriorities: TAbmesClientDataSet;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridData_PRIORITY_COLOR: TAbmesFloatField;
    cdsGridData_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    btnModelCapacityStatus: TBitBtn;
    pdsGridDataParamsPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    sepBeforeXModelDocStatus: TToolButton;
    actModelCapacityStatus: TAction;
    sepBeforeCopyButton: TToolButton;
    actModelStatus: TAction;
    btnModelStatus: TBitBtn;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField;
    actXModelDocStatus: TAction;
    btnXModelDocStatus: TSpeedButton;
    pdsGridDataParamsPRODUCTION_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsGridDataSALE_IDENTIFICATION: TAbmesWideStringField;
    cdsGridDataIS_WASTE_COMPENSATOR: TAbmesFloatField;
    cdsGridDataHAS_WASTE: TAbmesFloatField;
    cdsGridDataCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataOWNER_NAME: TAbmesWideStringField;
    tlbToggleButtons: TToolBar;
    btnToggleOwnerConsumer: TSpeedButton;
    btnToggleProductDisplay: TSpeedButton;
    pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_NO: TAbmesFloatField;
    pdsGridDataParamsIS_WASTE_COMPENSATOR_STATUS: TAbmesFloatField;
    pdsGridDataParamsHAS_WASTE_STATUS: TAbmesFloatField;
    pdsGridDataParamsIS_SALE_STATE: TAbmesFloatField;
    pdsGridDataParamsOWNER_COMPANY_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_SHIPMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsSALE_SHIPMENT_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsOWNER_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_LIMITING_DATE_DIFF: TAbmesFloatField;
    pdsGridDataParamsMAX_LIMITING_DATE_DIFF: TAbmesFloatField;
    cdsGridDataPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataIS_SALE: TAbmesFloatField;
    pnlProductDocsCaption: TPanel;
    sepDocumentation: TToolButton;
    cdsGridDataMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    pnlSaleDocs: TPanel;
    btnSaleDocs: TSpeedButton;
    sepSaleDocs: TToolButton;
    cdsGridDataWORK_PRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsGridDataPRIORITY_NO: TAbmesFloatField;
    cdsGridDataWORK_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataPRIORITY_CODE: TAbmesFloatField;
    cdsGridData_REPORT_TITLE: TAbmesWideStringField;
    cdsGridDataHAS_WASTE_COMPENSATORS: TAbmesFloatField;
    cdsGridData_PRODUCTION_ORDER_POSITION: TAbmesWideStringField;
    cdsModelDevelopmentTypes: TAbmesClientDataSet;
    prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField;
    prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_MODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField;
    sepToggleTreeView: TToolButton;
    btnToggleTreeView: TSpeedButton;
    actToggleTreeView: TAction;
    pnlTreeView: TPanel;
    cdsGridDataSALE_OBJECT_PK: TAbmesWideStringField;
    cdsGridDataWASTING_SALE_OBJ_PK: TAbmesWideStringField;
    navDataRefresh: TDBColorNavigator;
    grdModelsTree: TAbmesDBGrid;
    btnShowInactive: TToolButton;
    actShowInactive: TAction;
    pdsGridDataParamsTOOL_DETAIL_CODE: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure pdsGridDataParamsGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure EmptyZeroGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actMakeChangesUpdate(Sender: TObject);
    procedure actMakeChangesExecute(Sender: TObject);
    procedure pdsGridDataParamsBeforeOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsAfterClose(DataSet: TDataSet);
    procedure actInsertRecordExecute(Sender: TObject);
    procedure actDelRecordExecute(Sender: TObject);
    procedure actEditSaleExecute(Sender: TObject);
    procedure actEditSaleUpdate(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataML_STATE_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataSPEC_STATE_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actCopyToClipboardUpdate(Sender: TObject);
    procedure actCopyToClipboardExecute(Sender: TObject);
    procedure actCopyNameToClipboardExecute(Sender: TObject);
    procedure actCopyNoToClipboardExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure btnDocumentationClick(Sender: TObject);
    procedure pdsGridDataParamsAllWhenNullGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure actModelCapacityStatusUpdate(Sender: TObject);
    procedure actModelCapacityStatusExecute(Sender: TObject);
    procedure actModelStatusUpdate(Sender: TObject);
    procedure actModelStatusExecute(Sender: TObject);
    procedure cdsGridDataMODEL_OPERATIONS_STATUS_CODEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure actXModelDocStatusUpdate(Sender: TObject);
    procedure actXModelDocStatusExecute(Sender: TObject);
    procedure btnSaleDocsClick(Sender: TObject);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure actToggleTreeViewUpdate(Sender: TObject);
    procedure actToggleTreeViewExecute(Sender: TObject);
    procedure tlModelsTreeDblClick(Sender: TObject);
    procedure actExcelExportExecute(Sender: TObject);
    procedure grdModelsTreeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure actShowInactiveExecute(Sender: TObject);
    procedure actShowInactiveUpdate(Sender: TObject);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsGridDataBeforeClose(DataSet: TDataSet);
  private
    FProductClass: TProductClass;
    FProductionOrderBaseTypeCode: Integer;
    FIsTreeViewVisible: Boolean;
    FShowInactive: Boolean;
    procedure SetCellParams(ACellParamsSetter: TCellParamsSetter);
    function GetImageIndex: Integer;
    procedure ConvertGridDataToTreeList;
  protected
    class function CanUseDocs: Boolean; override;
    function GetInsertRecordEnabled: Boolean; override;
    function GetEditRecordEnabled: Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
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
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses
  dMain, uSaleOrderTypes, fXModelsFilter, uClientUtils, Clipbrd, uPeriods,
  fXModel, uUserActivityConsts, uUtils, fSale, fQuickSale, fGroupSale,
  fProductionOrder, uColorConsts, rXModels, AbmesDialogs, uTreeClientUtils,
  uModelUtils, fModelCapacityStatus, fModelStatus, uClientPeriods,
  fXModelDocStatus, Variants, uDocUtils, uToolbarUtils, uExcelExport,
  uTreeListUtils, MemTableDataEh;

{$R *.DFM}

resourcestring
  SXModels               = 'Регистър на Инженерни Разработки по ОПВ %s';
  SSaleID                = 'ОПП';
  SProductionOrderID     = 'ОПВ';
  SLimitingLegend        = 'Л';
  SArchivedLegend        = 'А';
  SConfirmModelDelete    = 'Потвърдете изтриване на Р-МОДЕл?';
  SCannotCreateModelMainDeptIsMissing = 'Не можете да създадете Р-МОДЕл за избрания ОПВ, защото няма определено ТП Реализатор!';
  SCannotCreateModelEngineerEmployeeIsMissing = 'Не можете да създадете Р-МОДЕл за избрания ОПВ, защото няма определен Инженер МОДЕл-иер!';

{ TfmXModels }

procedure TfmXModels.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmXModelsFilter;
  EditFormClass:= TfmXModel;
  ReportClass:= TrptXModels;

  RegisterDateFields(cdsGridData);
end;

procedure TfmXModels.FormShow(Sender: TObject);
begin
  inherited;
  InitializeAbmesDBGrid(grdModelsTree, False);
end;

procedure TfmXModels.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if not VarIsNull(cdsGridDataAGG_MEASURE_CODE.Value) and (cdsGridDataAGG_MEASURE_CODE.Value = 0) then
    begin
      cdsGridData_SUM_MANUFACTURE_QUANTITY.Value:= cdsGridDataSUM_MANUFACTURE_QUANTITY.Value;
      cdsGridData_AGG_MEASURE_ABBREV.Value:= cdsGridDataMEASURE_ABBREV.Value;
    end
  else
    begin
      cdsGridData_SUM_MANUFACTURE_QUANTITY.Clear;
      cdsGridData_AGG_MEASURE_ABBREV.Clear;
    end;

  cdsGridData_REPORT_TITLE.AsString:= Caption;

  cdsGridData_PRODUCTION_ORDER_POSITION.AsString:=
    GetProductionOrderPosition(
      cdsGridDataIS_WASTE_COMPENSATOR.AsBoolean,
      cdsGridDataHAS_WASTE_COMPENSATORS.AsBoolean,
      cdsGridDataHAS_WASTE.AsBoolean);
end;

procedure TfmXModels.cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    not FIsTreeViewVisible or
    FShowInactive or
    (cdsGridDataML_STATE_CODE.AsInteger < ClosedMaxMLState);
end;

procedure TfmXModels.pdsGridDataParamsGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (Sender.AsString = '') then
    Text:= SAllInBrackets
  else
    Text:= Sender.AsString;
end;

function TfmXModels.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  if (AEditMode = emEdit) and
     ( (EditMode = emReadOnly) or
       not ( LoginContext.HasUserActivity(uaXModelEdit) or
             LoginContext.HasUserActivity(uaMakeXModelLimiting) or
             LoginContext.HasUserActivity(uaEditForeignXModel) ) ) then
    AEditMode:= emReadOnly;

  // tova e taka, za da se vika s moia ShowForm, sirech na TfmXModel de
  Result:= TfmXModel.ShowForm(dmDocClient, cdsGridData, AEditMode);
end;

procedure TfmXModels.EmptyZeroGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (Sender.AsInteger = 0) then
    Text:= ''
  else
    Text:= Sender.AsString;
end;

procedure TfmXModels.actMakeChangesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (EditMode <> emReadOnly) and
    not cdsGridDataML_OBJECT_BRANCH_CODE.IsNull and
    not cdsGridDataIS_FINISHED.AsBoolean and
    not cdsGridDataIS_ANNULED.AsBoolean;
end;

procedure TfmXModels.actMakeChangesExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaXModelsMakeChanges);

  if TfmXModel.MakeChanges(dmDocClient, cdsGridData) then
    RefreshDataSet(cdsGridData);
end;

procedure TfmXModels.pdsGridDataParamsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsBranches.Open;
  cdsPriorities.Open;
  cdsModelDevelopmentTypes.Open;
end;

procedure TfmXModels.pdsGridDataParamsBeforePost(DataSet: TDataSet);
begin
  inherited;
  CheckMLStateFilter(pdsGridDataParamsMIN_ML_STATE_CODE.AsInteger, pdsGridDataParamsMAX_ML_STATE_CODE.AsInteger);
end;

procedure TfmXModels.pdsGridDataParamsAfterClose(DataSet: TDataSet);
begin
  inherited;
  cdsModelDevelopmentTypes.Close;
  cdsPriorities.Close;
  cdsBranches.Close;
end;

procedure TfmXModels.actInsertRecordExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaNewXModel);

  if cdsGridDataMAIN_DEPT_CODE.IsNull then
    raise Exception.Create(SCannotCreateModelMainDeptIsMissing);

  if cdsGridDataENGINEER_EMPLOYEE_CODE.IsNull then
    raise Exception.Create(SCannotCreateModelEngineerEmployeeIsMissing);

  inherited;
end;

procedure TfmXModels.actDelRecordExecute(Sender: TObject);
begin
  // do not call inherited

  LoginContext.CheckUserActivity(uaXModelsDelete);

  if (MessageDlgEx(SConfirmModelDelete, mtConfirmation, mbOKCancel, 0) <> mrOk) then
    Exit;

  cdsGridData.Edit;
  try
    cdsGridDataDEL_RECORD.AsBoolean:= True;
    cdsGridData.Post;
  except
    cdsGridData.Cancel;
    raise;
  end;  { try }

  cdsGridData.TempDisableCache/
    procedure begin
      RefreshDataSet(cdsGridData);
    end;
end;

function TfmXModels.GetEditRecordEnabled: Boolean;
begin
  Result:=
    inherited GetEditRecordEnabled and
    not cdsGridDataML_OBJECT_BRANCH_CODE.IsNull;
end;

function TfmXModels.GetFilterFormEnabled: Boolean;
begin
  Result:=
    inherited GetFilterFormEnabled and
    not FIsTreeViewVisible;
end;

function TfmXModels.GetInsertRecordEnabled: Boolean;
begin
  Result:=
    inherited GetInsertRecordEnabled and
    cdsGridDataML_OBJECT_BRANCH_CODE.IsNull and
    not (cdsGridData.Bof and cdsGridData.Eof);
end;

function TfmXModels.GetPrintEnabled: Boolean;
begin
  Result:=
    inherited GetPrintEnabled and
    not FIsTreeViewVisible;
end;

function TfmXModels.GetDelRecordEnabled: Boolean;
begin
  Result:=
    inherited GetDelRecordEnabled and
    not cdsGridDataML_OBJECT_BRANCH_CODE.IsNull;
end;

procedure TfmXModels.actEditSaleExecute(Sender: TObject);
var
  b: Boolean;
  em: TEditMode;
begin
  inherited;

  if LoginContext.HasUserActivity(uaXModelsEditSale) then
    em:= EditMode
  else
    em:= emReadOnly;

  case cdsGridDataSALE_ORDER_TYPE_CODE.AsInteger of
    sotNormalSaleOrder:
      b:= TfmSale.ShowForm(dmDocClient, cdsGridData, em);

    sotProductionOrder:
      b:= TfmProductionOrder.ShowForm(dmDocClient, cdsGridData, em, doNone, FProductionOrderBaseTypeCode);

    sotQuickSaleOrder:
      b:= TfmQuickSale.ShowForm(dmDocClient, cdsGridData, em);

    sotCurrentQuantity, sotFutureQuantity:
      b:= TfmGroupSale.ShowForm(dmDocClient, cdsGridData, em);

    else
      raise Exception.Create('Internal error: Unrecognized SALE_ORDER_TYPE_CODE');
  end;  { case }

  if b then
    RefreshDataSet(cdsGridData);
end;

procedure TfmXModels.actEditSaleUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= inherited GetEditRecordEnabled;  // niama greshka - inherited triabva
end;

procedure TfmXModels.actExcelExportExecute(Sender: TObject);
begin
  if FIsTreeViewVisible then
    GridExcelExport(grdModelsTree)
  else
    inherited;
end;

procedure TfmXModels.grdDataDblClick(Sender: TObject);
begin
  // do not call inherited
  if actEditRecord.Enabled then
    actEditRecord.Execute
  else
    actEditSale.Execute;
end;

procedure TfmXModels.SetCellParams(ACellParamsSetter: TCellParamsSetter);
begin
  with ACellParamsSetter do
    begin
      if IsSelected then
        Exit;

        if (VarToInt(GetFieldValue('ML_STATE_CODE')) = AnnuledMLState) then
          Background:= ccAnnuledObjectBackground
        else
          begin
            if (CurrentFieldName = 'SPEC_STATE_CODE') and
               not VarIsNull(GetFieldValue(CurrentFieldName)) then
              begin
                if (VarToInt(GetFieldValue('SPEC_STATE_CODE')) >= Low(SpecStateColors)) and
                   (VarToInt(GetFieldValue('SPEC_STATE_CODE')) <= High(SpecStateColors)) then
                  begin
                    if (VarToInt(GetFieldValue('ML_STATE_CODE')) <= 3) then
                      Background:= SpecStateColors[VarToInt(GetFieldValue('SPEC_STATE_CODE'))]
                    else
                      begin
                        Background:= SpecStateLightColors[VarToInt(GetFieldValue('SPEC_STATE_CODE'))];
                        Foreground:= clSilver;
                      end;
                  end;  { if }
              end;  { if }

            if (CurrentFieldName = 'ML_STATE_CODE') and
               not VarIsNull(GetFieldValue(CurrentFieldName)) then
              begin
                if (VarToInt(GetFieldValue('ML_STATE_CODE')) >= Low(ModelStateColors)) and
                   (VarToInt(GetFieldValue('ML_STATE_CODE')) <= High(ModelStateColors)) then
                  Background:= ModelStateColors[VarToInt(GetFieldValue('ML_STATE_CODE'))];
              end;  { if }

            if (CurrentFieldName = 'PRIORITY_FULL_NAME') and
               not VarIsNull(GetFieldValue(CurrentFieldName)) then
              begin
                if not VarIsNull(GetFieldValue('_PRIORITY_COLOR')) then
                  Foreground:= VarToInt(GetFieldValue('_PRIORITY_COLOR'));

                if not VarIsNull(GetFieldValue('_PRIORITY_BACKGROUND_COLOR')) then
                  Background:= VarToInt(GetFieldValue('_PRIORITY_BACKGROUND_COLOR'));
              end;  { if }

            if (CurrentFieldName = '_PRODUCTION_ORDER_POSITION') and
               not VarIsNull(GetFieldValue(CurrentFieldName)) then
              begin
                if (VarToInt(GetFieldValue('HAS_WASTE')) = 1) then
                  Background:= ccTotalLateNotSelected;
              end;  { if }
          end;
    end;  { with }
end;

procedure TfmXModels.grdDataGetCellParams(Sender: TObject;
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

procedure TfmXModels.grdModelsTreeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;

  with Column.Field.DataSet do
    if BOF and EOF then
      Exit;

  if (Column.FieldName = 'SALE_IDENTIFICATION') then
    DrawTreeImageColumnCell(grdModelsTree, dmMain.ilActions, GetImageIndex, Rect, Column);
end;

procedure TfmXModels.cdsGridDataML_STATE_CODEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text:= MLStateNames[Sender.AsInteger]
  else
    Text:= '';
end;

procedure TfmXModels.cdsGridDataSPEC_STATE_CODEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text:= SpecStateAbbrevs[Sender.AsInteger]
  else
    Text:= '';
end;

procedure TfmXModels.actCopyToClipboardUpdate(Sender: TObject);
begin
  inherited;

  with cdsGridData do
    (Sender as TAction).Enabled:=
      Active and
      not (Bof and Eof);
end;

procedure TfmXModels.actCopyToClipboardExecute(Sender: TObject);
begin
  inherited;
  actCopyNoToClipboard.Execute;
end;

procedure TfmXModels.actCopyNameToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataPRODUCT_NAME.AsString;
end;

procedure TfmXModels.actCopyNoToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataPRODUCT_NO.AsString;
end;

procedure TfmXModels.actFormUpdate(Sender: TObject);
var
  c: TWinControlArray;
begin
  inherited;

  btnDocumentation.Enabled:=
    cdsGridData.Active and
    cdsGridDataPRODUCT_HAS_DOC_ITEMS.AsBoolean;

  btnSaleDocs.Enabled:=
    cdsGridData.Active and
    cdsGridDataHAS_DOC_ITEMS.AsBoolean;

  c:= NormalizedToolbarToolbarsAndFlowPanels(tlbToggleButtons);
  UpdateColumnsVisibility(grdData, c);
  UpdateColumnsVisibility(grdModelsTree, c);

  grdData.Visible:= not FIsTreeViewVisible;
  pnlTreeView.Visible:= FIsTreeViewVisible;

  navData.Enabled:= not FIsTreeViewVisible;
end;

procedure TfmXModels.btnDocumentationClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, btnDocumentation,
    cdsGridDataPRODUCT_CODE.AsInteger);
end;

procedure TfmXModels.pdsGridDataParamsAllWhenNullGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmXModels.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams.Edit;
  try
    InitializePriorityInterval(pdsGridDataParamsBEGIN_PRIORITY_CODE, pdsGridDataParamsEND_PRIORITY_CODE);
    pdsGridDataParamsPRODUCTION_ORDER_BASE_TYPE_CODE.AsInteger:= FProductionOrderBaseTypeCode;
    pdsGridDataParams.Post;
  except
    pdsGridDataParams.Cancel;
    raise;
  end;  { try }
end;

class function TfmXModels.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmXModels.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AFilterFormEnabled: Boolean;
  AProductionOrderBaseTypeCode: Integer);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, doNone, AFilterFormEnabled);
  FProductionOrderBaseTypeCode:= AProductionOrderBaseTypeCode;
end;

class function TfmXModels.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AFilterFormEnabled: Boolean;
  AProductionOrderBaseTypeCode: Integer): Boolean;
var
  f: TfmXModels;
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

procedure TfmXModels.tlModelsTreeDblClick(Sender: TObject);
begin
  inherited;
  if actEditRecord.Enabled then
    actEditRecord.Execute
  else
    actEditSale.Execute;
end;

function TfmXModels.GetImageIndex: Integer;
begin
  inherited;
  Result:= 155 + Ord(not VarIsNull(grdModelsTree.DataSource.DataSet.FieldByName('WASTING_SALE_OBJ_PK').AsVariant));
end;

procedure TfmXModels.Initialize;
begin
  FProductClass:= pcNormal;
  inherited;
  Caption:= Format(SXModels, [ProductionOrderBaseTypes[FProductionOrderBaseTypeCode].CoveringAbbrevPlural]);
end;

function TfmXModels.MustResortGridDataAfterOpen: Boolean;
begin
  Result:= Assigned(grdData.DataSource);
end;

procedure TfmXModels.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;

  if (cdsGridData.IndexName = '') then
    begin
      cdsGridData.IndexName:= cdsGridData.IndexDefs[0].Name;
      cdsGridData.First;
    end;

  if FIsTreeViewVisible then
    ConvertGridDataToTreeList;
end;

procedure TfmXModels.cdsGridDataBeforeClose(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.IndexName:= '';
end;

procedure TfmXModels.ConvertGridDataToTreeList;
begin
  cdsGridData.IndexName:= cdsGridData.IndexDefs[0].Name;
  grdModelsTree.ConvertToTreeList('SALE_OBJECT_PK', 'WASTING_SALE_OBJ_PK');

  InitializeTreeNodesExpandedState(
    grdModelsTree,
    function (AMemoryRecordEh: TMemoryRecordEh): Boolean begin
      Result:= (AMemoryRecordEh.DataValues['ML_STATE_CODE', dvvCurValueEh] >= ClosedMaxMLState);
    end);
end;

procedure TfmXModels.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger:= FProductionOrderBaseTypeCode;
end;

procedure TfmXModels.actModelCapacityStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (not cdsGridDataML_OBJECT_BRANCH_CODE.IsNull);
end;

procedure TfmXModels.actModelCapacityStatusExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaModelCapacityStatus);
  TfmModelCapacityStatus.ShowForm(dmDocClient, cdsGridData, emReadOnly);
end;

procedure TfmXModels.actModelStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (not cdsGridDataML_OBJECT_BRANCH_CODE.IsNull);
end;

procedure TfmXModels.actShowInactiveExecute(Sender: TObject);
begin
  inherited;
  FShowInactive:= not FShowInactive;
  (Sender as TAction).Checked:= FShowInactive;
  RefilterDataSet(cdsGridData);
  ConvertGridDataToTreeList;
end;

procedure TfmXModels.actShowInactiveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= FIsTreeViewVisible;
end;

procedure TfmXModels.actToggleTreeViewExecute(Sender: TObject);
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
  ActiveControl:= (IfThen(FIsTreeViewVisible, grdModelsTree, grdData) as TWinControl);

  FixDBGridEhColumnWidths(grdData);
end;

procedure TfmXModels.actToggleTreeViewUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    FIsTreeViewVisible or
    ( not cdsGridData.IsEmpty and
      (cdsGridDataML_STATE_CODE.AsInteger <> AnnuledMLState)
    );
end;

procedure TfmXModels.actModelStatusExecute(Sender: TObject);
begin
  inherited;
  TfmModelStatus.ShowForm(dmDocClient, cdsGridData, emReadOnly)
end;

procedure TfmXModels.cdsGridDataMODEL_OPERATIONS_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  ModelOperationsStatusFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmXModels.actXModelDocStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (not cdsGridDataML_OBJECT_CODE.IsNull);
end;

procedure TfmXModels.actXModelDocStatusExecute(Sender: TObject);
begin
  inherited;
  TfmXModelDocStatus.ShowForm(dmDocClient,
    cdsGridDataML_OBJECT_BRANCH_CODE.AsInteger, cdsGridDataML_OBJECT_CODE.AsInteger, EditMode);
end;

procedure TfmXModels.btnSaleDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TControl), dotSale, cdsGridData);
end;

end.
