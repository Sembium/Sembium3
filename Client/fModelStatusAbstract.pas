unit fModelStatusAbstract;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uClientTypes, Db, Menus, DBClient, AbmesClientDataSet, JvButtons, ImgList,
  ActnList, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh, AbmesDBGrid,
  AbmesFields, fBaseFrame, fDBFrame, fMLBoundProcessObject, Mask, DBCtrls,
  JvDBLookup, JvToolEdit, JvDBControls, PrnDbgeh, ComCtrls, ToolWin, fEditForm,
  dDocClient, fFieldEditFrame, fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fProductFieldEditFrameBald, fDateFieldEditFrame, fDateIntervalFrame,
  JvComponent, JvCaptionButton, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald, JvComponentBase, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh, System.Actions;

type
  TColumnDesc = record
                 ColumnType: Integer; // 0 - edinichna, 1 - mnojestvena
                 FieldName: string;
                 Visible: Boolean;
                 Width: Integer;
                 Title: string;
                 ColumnFont: TFontName;
                 IsFixed: Boolean;
               end;

  TColumnDescs = array of TColumnDesc;

type
  TfmModelStatusAbstract = class(TEditForm)
    cdsModelStatusDetail: TAbmesClientDataSet;
    dsModelStatusDetail: TDataSource;
    actSetVisibleDetail: TAction;
    pnlMain: TPanel;
    pnlModelStatusDetail: TPanel;
    pnlGridHeader: TPanel;
    grdModelStatusDetail: TAbmesDBGrid;
    pnlHeader: TPanel;
    cdsModelStatusDetailPLAN_VS: TAggregateField;
    cdsModelStatusDetailOTCH_VS: TAggregateField;
    actPrintModel: TAction;
    pnlPrintButton: TPanel;
    btnPrint: TBitBtn;
    pgdModelStatusDetail: TPrintDBGridEh;
    grdPrintModelStatusDetail: TAbmesDBGrid;
    pgdSaleModel: TPrintDBGridEh;
    pgdProductionOrderModel: TPrintDBGridEh;
    pgdSaleGroupModel: TPrintDBGridEh;
    actShowUncoveredLines: TAction;
    pnlShowTaskModelButton: TPanel;
    btnShowTaskModel: TBitBtn;
    actShowVIM: TAction;
    tlbTopButtons: TToolBar;
    btnDetailDocumentation: TSpeedButton;
    btnProductDocumentation: TSpeedButton;
    sepBeforeVSCH: TToolButton;
    pnlResizeWorkspaceButton: TPanel;
    pnlClosed: TPanel;
    chbClosed: TCheckBox;
    pnlArchived: TPanel;
    chbArchived: TCheckBox;
    pnlEditNotes: TPanel;
    btnEditNotes: TBitBtn;
    actEditNotes: TAction;
    cdsMlmsObject: TAbmesClientDataSet;
    cdsMlmsObjectMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsMlmsObjectMLMS_OBJECT_CODE: TAbmesFloatField;
    pnlOtherBottomButtons: TPanel;
    cdsDataML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataML_OBJECT_CODE: TAbmesFloatField;
    cdsDataIS_OPERATIONS_MODEL: TAbmesFloatField;
    cdsDataML_STATE_CODE: TAbmesFloatField;
    cdsDataSALE_BRANCH_NO: TAbmesFloatField;
    cdsDataSALE_NO: TAbmesFloatField;
    cdsDataSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsDataSALE_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_DOC_CODE: TAbmesFloatField;
    cdsDataSALE_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsDataMANAGER_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataMANAGER_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsDataMIN_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    cdsDataMAX_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    cdsDataPRODUCTION_START_RESERVE_DAYS: TAbmesFloatField;
    cdsDataSTART_STAGE_COEF: TAbmesFloatField;
    cdsDataMAX_OP_DATE_POSITIVE_DIFF: TAbmesFloatField;
    cdsDataMIN_OP_DATE_NEGATIVE_DIFF: TAbmesFloatField;
    cdsDataTECH_QUANTITY: TAbmesFloatField;
    cdsDataRESULT_STORE_CODE: TAbmesFloatField;
    cdsDataENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField;
    cdsDataENTER_RES_STORE_RESERVE_DAYS: TAbmesFloatField;
    cdsDataMAIN_DEPT_CODE: TAbmesFloatField;
    cdsDataSPEC_VERSION_NO: TAbmesFloatField;
    cdsDataSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsDataOKIDU_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataOKIDU_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsDataLIMITING_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataLIMITING_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsDataLIMITING_DATE: TAbmesSQLTimeStampField;
    cdsDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataMLL_OBJECT_CODE: TAbmesFloatField;
    cdsDataIS_CLOSED: TAbmesFloatField;
    cdsDataIS_ARCHIVED: TAbmesFloatField;
    gbProductionOrder: TGroupBox;
    edtStatus: TDBEdit;
    lblStatus: TLabel;
    lblSaleBranchNo: TLabel;
    edtSaleBranchNo: TDBEdit;
    lblSaleNo: TLabel;
    edtSaleNo: TDBEdit;
    lblSaleType: TLabel;
    edtSaleType: TDBEdit;
    gbManagerEmployee: TGroupBox;
    edtManagerEmployeeName: TDBEdit;
    gbProductionStart: TGroupBox;
    lblProductionStartDate: TLabel;
    lblProductionStartReserveDays: TLabel;
    edtProductionStartReserveDays: TDBEdit;
    edtStartCoef: TDBEdit;
    edtStartCoef2: TLabel;
    lblUncoveredLines: TLabel;
    edtUncoveredLines: TDBEdit;
    btnShowUncoveredLines: TSpeedButton;
    gbProduction: TGroupBox;
    lblLateLines: TLabel;
    lblCapacity: TLabel;
    edtWarningLines: TDBEdit;
    edtCapacity: TDBEdit;
    cdsData_SHOW_UNCOVERED_LINES: TAbmesWideStringField;
    gbProductionFinal: TGroupBox;
    lblResultProduct: TLabel;
    lblTechQuantity: TLabel;
    edtTechQuantity: TDBEdit;
    cdsDataTECH_MEASURE_ABBREV: TAbmesWideStringField;
    txtTechMeasure: TDBText;
    cdsDataRESULT_PRODUCT_CODE: TAbmesFloatField;
    lblEnterResultStoreBeginDate: TLabel;
    lblEnterResultStoreReserveDays: TLabel;
    edtEnterResultStoreReserveDays: TDBEdit;
    gbEngineering: TGroupBox;
    lblSpecVersionNo: TLabel;
    edtSpecVersionNo: TDBEdit;
    lblSpecVersionNo2: TLabel;
    lblSpecModelVariantNo: TLabel;
    lblSpecModelVariantNo2: TLabel;
    edtSpecModelVariantNo: TDBEdit;
    lblOKIDUEmployee: TLabel;
    edtOKIDUEmployeeName: TDBEdit;
    lblLimitingEmployee: TLabel;
    edtLimitingEmployeeName: TDBEdit;
    lblLimitingDate: TLabel;
    cdsDataNOTES: TAbmesWideStringField;
    btnISCH: TSpeedButton;
    btnVSCH: TSpeedButton;
    cdsModelStatusDetail_UNCOVERED_LINES_COUNT: TAggregateField;
    cdsDataSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    actShowWarningsOnly: TAction;
    actFullExpand: TAction;
    actFullShrink: TAction;
    sepBeforeISCH: TToolButton;
    btnDefaultExpand: TToolButton;
    actDefaultExpand: TAction;
    pmExpand: TPopupMenu;
    miFullExpand: TMenuItem;
    miShowWarningsOnly: TMenuItem;
    miFullShrink: TMenuItem;
    cdsModelStatusDetail_WARNING_LINES_COUNT: TAggregateField;
    actShowTaskModel: TAction;
    btnVIM2: TToolButton;
    actShowCapacityGraph: TAction;
    btnShowCapacityGraph: TToolButton;
    frResultProduct: TfrProductFieldEditFrameBald;
    cdsDataMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField;
    cdsModelStatusDetail_UNCOVERED_CAPACITY_STAGE_COUNT: TAggregateField;
    cdsModelStatusDetail_UNCOVERED_CAPACITY_MLMSO_COUNT: TAggregateField;
    lblModelOperationsStatus: TLabel;
    edtModelOperationsStatus: TDBEdit;
    gbPrices: TGroupBox;
    gbNotes: TGroupBox;
    moNotes: TDBMemo;
    lblPlanVS: TLabel;
    edtPlanVS: TDBEdit;
    lblSCA1: TLabel;
    lblOtchVS: TLabel;
    edtOtchVS: TDBEdit;
    lblSCA2: TLabel;
    pmDetailCopy: TPopupMenu;
    miDetailCopyNoToClipboard: TMenuItem;
    miDetailCopyNameToClipboard: TMenuItem;
    pmProductCopy: TPopupMenu;
    miProductlCopyNoToClipboard: TMenuItem;
    miProductCopyNameToClipboard: TMenuItem;
    actDetailCopyNoToClipboard: TAction;
    actDetailCopyNameToClipboard: TAction;
    actProductCopyNoToClipboard: TAction;
    actProductCopyNameToClipboard: TAction;
    actDetailCopyToClipboard: TAction;
    actProductCopyToClipboard: TAction;
    btnDetailCopyToClipboard: TToolButton;
    btnProductCopyToClipboard: TToolButton;
    frProductionStartDate: TfrDateFieldEditFrame;
    frEnterResultStorePeriod: TfrDateIntervalFrame;
    frLimitingDate: TfrDateFieldEditFrame;
    frProductionDept: TfrDeptFieldEditFrameBald;
    lblProductionDept: TLabel;
    cdsDataINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    cdsDataPRODUCTION_WORKDAYS: TAbmesFloatField;
    lblModelLegth: TLabel;
    lblPlanModelLength: TLabel;
    lblRealModelLength: TLabel;
    edtProductionDateDiff: TLabel;
    lblProductionDateDiffMax: TLabel;
    lblProductionDateDiffMin: TLabel;
    edtPlanModelLength: TDBEdit;
    edtRealModelLength: TDBEdit;
    edtProductionDateDiffMax: TDBEdit;
    edtProductionDateDiffMin: TDBEdit;
    frResultStore: TfrDeptFieldEditFrameBald;
    lblShipmentStore: TLabel;
    cdsDataMANUFACTURE_QUANTITY: TAbmesFloatField;
    cdsDataMEASURE_ABBREV: TAbmesWideStringField;
    lblQuantity: TLabel;
    edtQuantity: TDBEdit;
    txtMeasureAbbrev: TDBText;
    txtQuantityDiffMeasure: TDBText;
    lblQuantityDiff: TLabel;
    btnToggleQuantityDiffMeasure: TSpeedButton;
    edtQuantityDiff: TDBEdit;
    cdsDataCOMPLETED_QUANTITY: TAbmesFloatField;
    cdsData_REMAINING_QUANTITY: TAbmesFloatField;
    cdsData_REMAINING_QUANTITY_PERCENT: TAbmesFloatField;
    actToggleQuantityDiffMeasure: TAction;
    cdsData_PERCENT_TEXT: TAbmesWideStringField;
    lblStructureCoef: TLabel;
    edtStructureCoef: TDBEdit;
    lblModelDevelopmentType: TLabel;
    edtModelDevelopmentType: TDBEdit;
    cdsXModelStructStatus: TAbmesClientDataSet;
    cdsXModelStructStatusLEVEL_NO: TAbmesFloatField;
    cdsXModelStructStatusLEVEL_IS_COMPLETE: TAbmesFloatField;
    cdsXModelStructStatusMAX_LEVEL_NO: TAbmesFloatField;
    cdsXModelStructStatusHAS_MISSING_CHILDREN: TAbmesFloatField;
    cdsXModelStructStatus_DISPLAY_TEXT: TAbmesWideStringField;
    dsXModelStructStatus: TDataSource;
    gbWastingSale: TGroupBox;
    gbWastingSaleDetails: TPanel;
    pnlWastingSale: TPanel;
    lblWastingSale: TLabel;
    edtWastingSaleNo: TDBEdit;
    btnWastingSaleModelStatus: TBitBtn;
    edtWastingSaleBranchNo: TDBEdit;
    pnlWasteCompensatorProductionOrders: TPanel;
    btnWasteCompensatorProductionOrders: TBitBtn;
    edtIsWasteCompenstatingOrder: TDBEdit;
    gbPriority: TGroupBox;
    edtPriority: TDBEdit;
    lblInvestedValueDiff: TLabel;
    edtInvestedValueDiff: TDBEdit;
    btnInvestedValueDiff: TSpeedButton;
    cdsData_REMAINING_INVESTED_VALUE: TAbmesFloatField;
    cdsData_REMAINING_INVESTED_VALUE_PCT: TAbmesFloatField;
    cdsDataLINE_COUNT: TAbmesFloatField;
    lblInvestedValueDiffMeasure: TLabel;
    actToggleInvestedValueDiffMeasure: TAction;
    cdsDataIS_WASTE_COMPENSATING_ORDER: TAbmesFloatField;
    cdsDataWASTING_SALE_OBJ_BRANCH_CODE: TAbmesFloatField;
    cdsDataWASTING_SALE_OBJ_CODE: TAbmesFloatField;
    cdsDataWASTING_SALE_BRANCH_NO: TAbmesFloatField;
    cdsDataWASTING_SALE_NO: TAbmesFloatField;
    cdsDataWASTING_ML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataWASTING_ML_OBJECT_CODE: TAbmesFloatField;
    cdsDataPRIORITY_COLOR: TAbmesFloatField;
    cdsDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    actWastingSaleModelStatus: TAction;
    actWasteCompensatorProductionOrders: TAction;
    cdsML: TAbmesClientDataSet;
    cdsMLML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsMLML_OBJECT_CODE: TAbmesFloatField;
    cdsWasteCompensatorsParams: TAbmesClientDataSet;
    cdsWasteCompensatorsParamsIS_WASTE_COMPENSATOR_STATUS: TAbmesFloatField;
    cdsWasteCompensatorsParamsWASTING_SALE_BRANCH_CODE: TAbmesFloatField;
    cdsWasteCompensatorsParamsWASTING_SALE_NO: TAbmesFloatField;
    cdsDataSALE_BRANCH_CODE: TAbmesFloatField;
    lblProductionOrderType: TLabel;
    edtProductionOrderType: TDBEdit;
    cdsDataPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    pnlDocs: TToolBar;
    btnDocs: TSpeedButton;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_WASTE: TAbmesFloatField;
    cdsDataWASTE_COMPENSATOR_COUNT: TAbmesFloatField;
    cdsDataSTART_AFTER_LIMITING_DAYS: TAbmesFloatField;
    lblStartAfterLimitingDays: TLabel;
    edtStartAfterLimitingDays: TDBEdit;
    cdsDataPRIORITY_NO: TAbmesFloatField;
    cdsDataWORK_PRIORITY_NO: TAbmesFloatField;
    gbWorkPriority: TGroupBox;
    edtWorkPriority: TDBEdit;
    cdsWasteCompensatorsParamsMIN_ML_STATE_CODE: TAbmesFloatField;
    cdsWasteCompensatorsParamsMAX_ML_STATE_CODE: TAbmesFloatField;
    cdsDataCOMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    actStageDocs: TAction;
    sepStageDocs: TToolButton;
    tlbStageDocs: TToolBar;
    pnlStageDocs: TPanel;
    btnStageDocs: TToolButton;
    cdsDataMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    cdsDataMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField;
    actSetVisibleProduct: TAction;
    actShowWastingSale: TAction;
    cdsWastingSaleParams: TAbmesClientDataSet;
    cdsWastingSaleParamsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsWastingSaleParamsSALE_OBJECT_CODE: TAbmesFloatField;
    cdsDataPRODUCTION_START_PLAN_DATE: TAbmesSQLTimeStampField;
    actExcelExport: TAction;
    sepExcelExport: TToolButton;
    btnExcelExport: TToolButton;
    procedure cdsModelStatusDetailBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure cdsDataAfterClose(DataSet: TDataSet);
    procedure cdsModelStatusDetailAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrintModelExecute(Sender: TObject);
    procedure actShowVIMUpdate(Sender: TObject);
    procedure actShowVIMExecute(Sender: TObject);
    procedure btnDetailDocumentationClick(Sender: TObject);
    procedure btnProductDocumentationClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actEditNotesUpdate(Sender: TObject);
    procedure actEditNotesExecute(Sender: TObject);
    procedure cdsDataML_STATE_CODEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsDataENTER_RESULT_STORE_BEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actShowUncoveredLinesExecute(Sender: TObject);
    procedure cdsModelStatusDetail_UNCOVERED_LINES_COUNTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure cdsModelStatusDetailBeforeClose(DataSet: TDataSet);
    procedure grdModelStatusDetailCellClick(Column: TColumnEh);
    procedure cdsModelStatusDetailFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actShowWarningsOnlyExecute(Sender: TObject);
    procedure actFullExpandExecute(Sender: TObject);
    procedure actFullShrinkExecute(Sender: TObject);
    procedure actDefaultExpandExecute(Sender: TObject);
    procedure pmExpandPopup(Sender: TObject);
    procedure actShowTaskModelExecute(Sender: TObject);
    procedure actShowCapacityGraphUpdate(Sender: TObject);
    procedure actShowCapacityGraphExecute(Sender: TObject);
    procedure cdsDataMODEL_OPERATIONS_STATUS_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsModelStatusDetail_UNCOVERED_CAPACITY_MLMSO_COUNTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure actDetailCopyNoToClipboardExecute(Sender: TObject);
    procedure actDetailCopyNameToClipboardExecute(Sender: TObject);
    procedure actProductCopyNoToClipboardExecute(Sender: TObject);
    procedure actProductCopyNameToClipboardExecute(Sender: TObject);
    procedure actDetailCopyToClipboardExecute(Sender: TObject);
    procedure actProductCopyToClipboardExecute(Sender: TObject);
    procedure actDetailCopyToClipboardUpdate(Sender: TObject);
    procedure actProductCopyToClipboardUpdate(Sender: TObject);
    procedure actToggleQuantityDiffMeasureUpdate(Sender: TObject);
    procedure actToggleQuantityDiffMeasureExecute(Sender: TObject);
    procedure cdsXModelStructStatusCalcFields(DataSet: TDataSet);
    procedure actToggleInvestedValueDiffMeasureExecute(Sender: TObject);
    procedure actToggleInvestedValueDiffMeasureUpdate(Sender: TObject);
    procedure actWastingSaleModelStatusUpdate(Sender: TObject);
    procedure actWastingSaleModelStatusExecute(Sender: TObject);
    procedure actWasteCompensatorProductionOrdersExecute(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
    procedure cdsDataIS_WASTE_COMPENSATING_ORDERGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actWasteCompensatorProductionOrdersUpdate(Sender: TObject);
    procedure cdsModelStatusDetailReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cdsModelStatusDetailBeforePost(DataSet: TDataSet);
    procedure actStageDocsExecute(Sender: TObject);
    procedure grdModelStatusDetailDblClick(Sender: TObject);
    procedure actStageDocsUpdate(Sender: TObject);
    procedure actSetVisibleDetailExecute(Sender: TObject);
    procedure actSetVisibleProductExecute(Sender: TObject);
    procedure actSetVisibleDetailUpdate(Sender: TObject);
    procedure actSetVisibleProductUpdate(Sender: TObject);
    procedure actShowWastingSaleUpdate(Sender: TObject);
    procedure actShowWastingSaleExecute(Sender: TObject);
    procedure actExcelExportExecute(Sender: TObject);
  private
    FIsVisibleDetail: Boolean;
    FShowUncoveredLines: Boolean;
    FGridColumns: TColumnDescs;
    FColumnDescCount: Integer;
    FDetailColumnsCount: Integer;
    FProductColumnsCount: Integer;
    FShrunkNoAsFormatedTexts: TStringList;
    cdsModelStatusDetailNO_AS_FORMATED_TEXT: TField;
    cdsModelStatusDetailFORK_NO: TField;
    FColumnDescsSet: Boolean;
    procedure SetColumnDescs;
    procedure SetColumnVisibleStatus;
    procedure SetIsVisibleDetail(const Value: Boolean);
    procedure SetPrintModelParams;
    procedure SetShowUncoveredLines(const Value: Boolean);
    function GetVisibleFixedColsCount: Integer;
    function GetGridColumns(Index: Integer): TColumnDesc;
    procedure SetGridColumns(Index: Integer; const Value: TColumnDesc);
    procedure ShowWarningsOnly;
    procedure FullExpandOrShrink(Expand: Boolean);
    function GetRepeatableColumnNo(FieldName: string): Integer;
    procedure SetDetailFrozenCols;
  protected
    class function CanUseDocs: Boolean; override;
    class function CapacityStatus: Boolean; virtual; abstract;
    function GetApplyUpdatesEnabled: Boolean; override;
    procedure DoApplyUpdates; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetColumnByFieldName(FieldName: string): Integer;
    function GetGridColumnsDefault(Index: Integer): TColumnDesc; virtual; abstract;
    function GetDetailColumns(Index: Integer): Integer; virtual; abstract;
    function GetProductColumns(Index: Integer): Integer; virtual; abstract;
    procedure ShowOperationsForm(AMlmsObjectBranchCode, AMlmsObjectCode: Integer);
    function IsMlmsIdentifierCellFocused: Boolean;
    function GetMLMSIdentifierColumnNo: Integer; virtual; abstract;

    property ColumnDescCount: Integer read FColumnDescCount write FColumnDescCount;
    property GridColumnsDefault[Index: Integer]: TColumnDesc read GetGridColumnsDefault;
    property DetailColumnsCount: Integer read FDetailColumnsCount write FDetailColumnsCount;
    property DetailColumns[Index: Integer]: Integer read GetDetailColumns;
    property ProductColumnsCount: Integer read FProductColumnsCount write FProductColumnsCount;
    property ProductColumns[Index: Integer]: Integer read GetProductColumns;
    property GridColumns[Index: Integer]: TColumnDesc read GetGridColumns write SetGridColumns;
  public
    property IsVisibleDetail: Boolean read FIsVisibleDetail write SetIsVisibleDetail;
    property ShowUncoveredLines: Boolean read FShowUncoveredLines write SetShowUncoveredLines;
    property VisibleFixedColsCount: Integer read GetVisibleFixedColsCount;
    class function CanEditOuterDataSet: Boolean; override;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit): Boolean;
  end;

resourcestring
  SNoAsFormatedTextColumnTitle = 'Идентификация на ред|Структурен номер';
  SForkNoColumnTitle = 'Идентификация на ред|Рк';
  SMllHasStageDocumentationColumnTitle = 'И И О Т';
  SDetailNameColumnTitle = 'Крайна Структурна Част /КСЧ/|id логически';
  SDetailCustomCodeColumnTitle = 'Крайна Структурна Част /КСЧ/|id цифров';
  SDetailHasDocumentationColumnTitle = 'Крайна Структурна Част /КСЧ/|И И О';
  SDetailMeasureAbbrevColumnTitle = 'Крайна Структурна Част /КСЧ/|Техн. количество|М.ед.';
  SProductNameColumnTitle = 'Начална Структурна Част /НСЧ/|id логически';
  SProductCustomCodeColumnTitle = 'Начална Структурна Част /НСЧ/|id цифров';
  SProductHasDocumentationColumnTitle = 'Начална Структурна Част /НСЧ/|И И О';
  SProductWorkMeasureAbbrevColumnTitle = 'Начална Структурна Част /НСЧ/|Общо (раб.)|М.ед.';
  SProductTechMeasureAbbrevColumnTitle = 'Начална Структурна Част /НСЧ/|За 1 КСЧ (техн.)|М.ед.';
  SDetailTechQuantityColumnTitle = 'Крайна Структурна Част /КСЧ/|Техн. количество|Стр.';
  SLineDetailTechQuantityColumnTitle = 'Крайна Структурна Част /КСЧ/|Техн. количество|Общо';
  SProductTechQuantityColumnTitle = 'Начална Структурна Част /НСЧ/|За 1 КСЧ (техн.)|К-во';
  SLineProductWorkQuantityColumnTitle = 'Начална Структурна Част /НСЧ/|Общо (раб.)|План';
  SPlanTotalPriceColumnTitle = 'Начална Структурна Част /НСЧ/|Стойност|План';
  SPulledQuantityColumnTitle = 'Начална Структурна Част /НСЧ/|Общо (раб.)|Отчет';
  SPulledTotalPriceColumnTitle = 'Начална Структурна Част /НСЧ/|Стойност|Отчет';
  SUncoveredLinesColumnTitle = 'Об';
  SMlmsIdentifierColumnTitle = 'Етап';
  SMovementIntervalColumnTitle = 'Прем.';
  SQuantityColumnTitle = 'Техн. к-во';

implementation

uses
  Variants, dMain, uClientUtils, uSaleOrderTypes, Printers,
  uOpenVIMConsts, AbmesDialogs, PrViewEh, fVIMQuantity,
  uUserActivityConsts, uColorConsts, fOneMLMSOperations, uModelUtils,
  uUtils, StrUtils, fXModel, fCapacityGraph, Clipbrd,
  uDocClientUtils, fModelStatus, fProductionOrders, uDocUtils, uAspectTypes,
  fNotes, uProducts, JclStrings, fProductionOrder, PrvFrmEh, uExcelExport;

{$R *.DFM}

resourcestring
  SPartValue = 'Начална Структурна Част /НСЧ/|Стойност';
  SPlan = 'План';
  SReport = 'Отчет';
  SConfirmPrintScale = 'Желаете ли мащабиране на МОДЕл-а само на един лист A3?';
  SHas = 'Има';
  SHasNot = 'Няма';

  plblTitle1 = 'Следене на МОДЕл: Заявка за производство по ПП';
  plblSBNo = 'Клон';
  plblSTA = 'Вид';
  plblSaleNo = '№';
  plblMainDeptName = 'ТП Реализатор';
  plblOwnerEmployee = 'Пр&Пл Инженер';
  plblOwnerEmployeeCode = 'Код';
  plblOwnerEmployeeName = 'Име';
  plblResultProduct = 'Управляем Обект';
  plblResultProductName = 'id логически';
  plblResultProductNo = 'id цифров';
  plblQuantity = 'Техн. к-во';
  plblBeginDate = 'Постъпление в СОрП';
  plblQuantityDeviationPercent = 'Откл. %';
  plblPlanVS = 'Планова ВС1';
  plblOtchVS = 'Отчетна ВС1';
  plblStartStageCoef = 'Коефициент на старт';
  plblTitle2 = 'Следене на МОДЕл по ID ОПВ';
  plblSaleManager = 'Поръчител';
  plblSaleManagerCode = 'Код';
  plblSaleManagerName = 'Име';

const
  IsShrunkFieldName = 'IS_SHRUNK';
  ShrunkDisplayValues = '+;—';
  ThickDisplayValues = '√;';
  UncoveredLinesDisplayValues = 'Не;';

const
  StageIdentifierFieldNamePrefix = 'MLMS_IDENTIFIER_';
  StageIdentifierFieldNamePrefixLength = Length(StageIdentifierFieldNamePrefix);
  StageDeptCodeFieldNamePrefix = 'MLMS_DEPT_CODE_';
  StagePMMBeginDateFieldNamePrefix = 'PMM_BEGIN_DATE_';

{ TfmModelStatusAbstract }

procedure TfmModelStatusAbstract.cdsModelStatusDetailBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= VarArrayOf([PackageParams(cdsData.Params), ShowUncoveredLines, CapacityStatus]);
end;

procedure TfmModelStatusAbstract.cdsModelStatusDetailBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  with DataSet.FieldByName('MLL_OBJECT_BRANCH_CODE') do
    AsInteger:= -Abs(AsInteger);
  with DataSet.FieldByName('MLL_OBJECT_CODE') do
    AsInteger:= -Abs(AsInteger);
end;

procedure TfmModelStatusAbstract.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;

  cdsModelStatusDetail.Open;

  SetParams(cdsXModelStructStatus.Params, cdsData);
  cdsXModelStructStatus.Open;
end;

procedure TfmModelStatusAbstract.cdsDataAfterClose(DataSet: TDataSet);
begin
  inherited;
  cdsXModelStructStatus.Close;
  cdsModelStatusDetail.Close;
end;

class function TfmModelStatusAbstract.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

function TfmModelStatusAbstract.GetColumnByFieldName(FieldName: string): Integer;
var
  i: Integer;
  FieldNameLen: Integer;
begin
  for i:= 1 to ColumnDescCount do
    if GridColumns[i].ColumnType = 0 then
      begin
        if GridColumns[i].FieldName = FieldName then
          begin
            Result:= i;
            Exit;
          end
      end
    else
      begin
        FieldNameLen:= Length(GridColumns[i].FieldName);
        if GridColumns[i].FieldName = Copy(FieldName, 1, FieldNameLen) then
          begin
            Result:= i;
            Exit;
          end;
      end;
  Result:= -1;
end;

procedure TfmModelStatusAbstract.SetColumnDescs;
var
  i: Integer;
  ColumnNo: Integer;
begin
  if FColumnDescsSet then
    Exit;

  FColumnDescsSet:= True;

  grdModelStatusDetail.Columns.BeginUpdate;
  try
    grdPrintModelStatusDetail.Columns.BeginUpdate;
    try
      grdModelStatusDetail.Columns.Clear;
      for i:= 0 to cdsModelStatusDetail.FieldCount - 1 do
        grdModelStatusDetail.Columns.Add.FieldName:= cdsModelStatusDetail.Fields[i].FieldName;

      for i:= 0 to grdModelStatusDetail.Columns.Count - 1 do
        begin
          ColumnNo:= GetColumnByFieldName(grdModelStatusDetail.Columns[i].FieldName);

          if (ColumnNo > -1) then
            begin
              with grdModelStatusDetail.Columns[i] do
                begin
                  Width:= GridColumns[ColumnNo].Width;
                  Title.Caption:= GridColumns[ColumnNo].Title;
                  if (GridColumns[ColumnNo].ColumnFont <> '') then
                    Font.Name:= GridColumns[ColumnNo].ColumnFont;
                  ToolTips:= True;
                end;  { with }

              with grdPrintModelStatusDetail.Columns[i] do
                begin
                  Width:= GridColumns[ColumnNo].Width;
                  Title.Caption:= GridColumns[ColumnNo].Title;
                  if (GridColumns[ColumnNo].ColumnFont <> '') then
                    Font.Name:= GridColumns[ColumnNo].ColumnFont;
                  ToolTips:= True;

                  Visible:= GridColumnsDefault[ColumnNo].Visible;
                end;  { with }
            end;  { if }

          grdModelStatusDetail.Columns[i].AutoFitColWidth:= False;
        end;  { for }
    finally
      grdPrintModelStatusDetail.Columns.EndUpdate;
    end;  { try }
  finally
    grdModelStatusDetail.Columns.EndUpdate;
  end;  { try }

  InitializeAbmesDBGrid(grdModelStatusDetail);
end;

procedure TfmModelStatusAbstract.cdsModelStatusDetailAfterOpen(DataSet: TDataSet);

  procedure SetBooleanField(AFieldName, ADisplayBoolValues: string);
  begin
    with cdsModelStatusDetail.FieldByName(AFieldName) as TAbmesFloatField do
      begin
        FieldValueType:= fvtBoolean;
        DisplayBoolValues:= ADisplayBoolValues;
        Alignment:= taCenter;
      end;  { with }
  end;

begin
  inherited;

  with cdsModelStatusDetail do
    begin
      DisableControls;
      try
        SetColumnDescs;
        SetColumnVisibleStatus;

        SetBooleanField('IS_SHRUNK', ShrunkDisplayValues);
        SetBooleanField('HAS_CHILDREN_WARNINGS', ThickDisplayValues);
        SetBooleanField('HAS_WARNINGS', ThickDisplayValues);
        SetBooleanField('UNCOVERED_LINES', UncoveredLinesDisplayValues);

        cdsModelStatusDetailNO_AS_FORMATED_TEXT:= cdsModelStatusDetail.FieldByName('NO_AS_FORMATED_TEXT');
        cdsModelStatusDetailFORK_NO:= cdsModelStatusDetail.FieldByName('FORK_NO');

        First;
        while not Eof do
          begin
            if not FieldByName(IsShrunkFieldName).IsNull and
               (FShrunkNoAsFormatedTexts.IndexOf(cdsModelStatusDetailNO_AS_FORMATED_TEXT.AsString) >= 0) then
              begin
                Edit;
                try
                  FieldByName(IsShrunkFieldName).AsBoolean:= True;
                  Post;
                except
                  Cancel;
                  raise;
                end;  { try }
              end;

            Next;
          end;  { while }

        Filtered:= True;

        if not Locate('MLL_OBJECT_BRANCH_CODE;MLL_OBJECT_CODE',
           VarArrayOf([cdsDataMLL_OBJECT_BRANCH_CODE.AsFloat, cdsDataMLL_OBJECT_CODE.AsFloat]), []) then
          First;
      finally
        EnableControls;
      end;
    end;  { with }

  SetDetailFrozenCols;

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsModelStatusDetail.FieldByName('PLAN_TOTAL_PRICE'),
      cdsModelStatusDetail.FieldByName('PULLED_TOTAL_PRICE')]);
end;

procedure TfmModelStatusAbstract.SetColumnVisibleStatus;
var
  i: Integer;
  ColumnNo: Integer;
begin
  grdModelStatusDetail.Columns.BeginUpdate;
  try
    for i:= 0 to grdModelStatusDetail.Columns.Count - 1 do
      with grdModelStatusDetail.Columns[i] do
        begin
          ColumnNo:= GetColumnByFieldName(FieldName);
          if (ColumnNo > -1) then
            Visible:= GridColumns[ColumnNo].Visible
          else
            Visible:= False;
        end;  { for, with }
  finally
    grdModelStatusDetail.Columns.EndUpdate;
  end;  { try }

  FixDBGridHorizontalScroller(grdModelStatusDetail);
end;

procedure TfmModelStatusAbstract.SetIsVisibleDetail(const Value: Boolean);
var
  i: Integer;
begin
  if FIsVisibleDetail <> Value then
    begin
      FIsVisibleDetail:= Value;
      if FIsVisibleDetail then
        begin
          for i:= 1 to DetailColumnsCount do
            FGridColumns[DetailColumns[i]].Visible:= True;
          for i:= 1 to ProductColumnsCount do
            FGridColumns[ProductColumns[i]].Visible:= False;
        end
      else
        begin
          for i:= 1 to DetailColumnsCount do
            FGridColumns[DetailColumns[i]].Visible:= False;
          for i:= 1 to ProductColumnsCount do
            FGridColumns[ProductColumns[i]].Visible:= True;
        end;
      cdsModelStatusDetail.DisableControls;
      try
        SetColumnVisibleStatus;
      finally
        cdsModelStatusDetail.EnableControls;
      end;
      SetDetailFrozenCols;
    end;
end;


procedure TfmModelStatusAbstract.FormCreate(Sender: TObject);
var
  i: Integer;
  cd: TColumnDesc;
begin
  inherited;

  FShrunkNoAsFormatedTexts:= TStringList.Create;
  FShrunkNoAsFormatedTexts.Duplicates:= dupIgnore;
  FShrunkNoAsFormatedTexts.Sorted:= True;

  SetLength(FGridColumns, ColumnDescCount+1);

  for i:= 1 to ColumnDescCount do
    FGridColumns[i]:= GridColumnsDefault[i];

  ShowUncoveredLines:= LoginContext.DefaultShowUncoveredLines;
  btnShowUncoveredLines.Down:= LoginContext.DefaultShowUncoveredLines;

  frResultProduct.FieldNames:= 'RESULT_PRODUCT_CODE';
  frResultStore.FieldNames:= 'RESULT_STORE_CODE';
  frResultStore.TreeNodeNameVisible:= False;
  frProductionDept.FieldNames:= 'MAIN_DEPT_CODE';
  frProductionDept.TreeNodeNameVisible:= False;

  RegisterDateFields(cdsData);

  cd:= GridColumns[26];
  cd.Title:= SPartValue + '/ ' + LoginContext.SecondaryCurrencyAbbrev + '/|' + SPlan;
  GridColumns[26]:= cd;

  cd:= GridColumns[28];
  cd.Title:= SPartValue + '/ ' + LoginContext.SecondaryCurrencyAbbrev + '/|' + SReport;
  GridColumns[28]:= cd;

  frProductionStartDate.FieldNames:= 'PRODUCTION_START_PLAN_DATE';
  frEnterResultStorePeriod.FieldNames:= 'ENTER_RESULT_STORE_BEGIN_DATE;ENTER_RESULT_STORE_END_DATE';
  frLimitingDate.FieldNames:= 'LIMITING_DATE';

  if IsAppThemed then
    ClientHeight:= ClientHeight + 1;

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsModelStatusDetailPLAN_VS,
      cdsModelStatusDetailOTCH_VS,
      cdsData_REMAINING_INVESTED_VALUE,
      cdsData_REMAINING_INVESTED_VALUE_PCT]);
end;

procedure TfmModelStatusAbstract.FormShow(Sender: TObject);
const
  eps = 0.01;
begin
  inherited;
  IsVisibleDetail:= True;
  lblSCA1.Caption:= LoginContext.SecondaryCurrencyAbbrev;
  lblSCA2.Caption:= LoginContext.SecondaryCurrencyAbbrev;

  actDefaultExpand.Execute;

  cdsData.Last;
  cdsData.First;
end;

procedure TfmModelStatusAbstract.SetPrintModelParams;
var
  NewPGD: TPrintDBGridEh;
  CompanyProductNames: string;
begin
  inherited;

  if (cdsDataSALE_ORDER_TYPE_CODE.AsInteger = sotProductionOrder) then
    NewPGD:= pgdProductionOrderModel
  else
    NewPGD:= pgdSaleModel;

  pgdModelStatusDetail.BeforeGridText:= NewPGD.BeforeGridText;

  CompanyProductNames:= cdsDataCOMPANY_PRODUCT_NAMES.DisplayText;
  if (Length(CompanyProductNames) > 40) then
    CompanyProductNames:= LeftStr(CompanyProductNames, 40) + '...';

  pgdModelStatusDetail.SetSubstitutes([
    'ML_STATE_CODE', cdsDataML_STATE_CODE.DisplayText,
    'P_O_T_A', cdsDataPRODUCTION_ORDER_TYPE_ABBREV.DisplayText,
    'S_B_NO', cdsDataSALE_BRANCH_NO.DisplayText,
    'S_T_A', cdsDataSALE_TYPE_ABBREV.DisplayText,
    'SALE_NO', cdsDataSALE_NO.DisplayText,
    'WORK_PRIORITY_NO', cdsDataWORK_PRIORITY_NO.DisplayText,
    'PRIORITY_NO', cdsDataPRIORITY_NO.DisplayText,
    'IS_WASTE_COMPENSATING_ORDER', cdsDataIS_WASTE_COMPENSATING_ORDER.DisplayText,
    'HAS_WASTE_COMPENSATORS', IfThen(cdsDataWASTE_COMPENSATOR_COUNT.AsInteger > 0, SHas, SHasNot),
    'RESULT_PRODUCT_NAME', frResultProduct.cdsTreeNodeNODE_NAME.DisplayText,
    'RESULT_PRODUCT_NO', frResultProduct.cdsTreeNodeNODE_NO.DisplayText,
    'STRUCT_COEF', edtStructureCoef.Text,
    'QUANTITY_DEV', cdsData_REMAINING_QUANTITY.DisplayText,
    'QUANTITY', cdsDataMANUFACTURE_QUANTITY.DisplayText,
    '_RESULT_PRODUCT_MEASURE_ABBREV', cdsDataMEASURE_ABBREV.DisplayText,
    'RESULT_STORE_IDENTIFIER', frResultStore.edtTreeNodeNo.Text,
    'STORE_DATE_INTERVAL', frEnterResultStorePeriod.edtInterval.Text,
    'COMPANY_PRODUCT_NAMES', CompanyProductNames,
    'MAIN_DEPT_IDENTIFIER', frProductionDept.edtTreeNodeNo.Text,
    '_OWNER_EMPLOYEE_NAME', cdsDataOKIDU_EMPLOYEE_NAME.DisplayText,
    'plblTitle1', plblTitle1,
    'plblSBNo', plblSBNo,
    'plblSTA', plblSTA,
    'plblSaleNo', plblSaleNo, 
    'plblMainDeptName', plblMainDeptName, 
    'plblOwnerEmployee', plblOwnerEmployee, 
    'plblOwnerEmployeeCode', plblOwnerEmployeeCode,
    'plblOwnerEmployeeName', plblOwnerEmployeeName,
    'plblResultProduct', plblResultProduct, 
    'plblResultProductName', plblResultProductName,
    'plblResultProductNo', plblResultProductNo,
    'plblQuantity', plblQuantity,
    'plblBeginDate', plblBeginDate,
    'plblQuantityDeviationPercent', plblQuantityDeviationPercent, 
    'plblPlanVS', plblPlanVS,
    'plblOtchVS', plblOtchVS,
    'plblStartStageCoef', plblStartStageCoef,
    'plblTitle2', plblTitle2,
    'plblSaleManager', plblSaleManager,
    'plblSaleManagerCode', plblSaleManagerCode,
    'plblSaleManagerName', plblSaleManagerName
  ]);

end;

procedure TfmModelStatusAbstract.actPrintModelExecute(Sender: TObject);
var
  NewOptions: TPrintDBGridEhOptions;
  SavePage: TPrinterPage;
begin
  inherited;

  NewOptions:= pgdModelStatusDetail.Options;
  case MessageDlgEx(SConfirmPrintScale, mtConfirmation, mbYesNoCancel, 0) of
    mrYes: NewOptions:= NewOptions + [pghFitGridToPageWidth];
    mrNo: NewOptions:= NewOptions - [pghFitGridToPageWidth];
  else
    Abort;
  end;

  pgdModelStatusDetail.Options:= NewOptions;
  SetPrintModelParams;

  SavePage:= SetUpPrinter(DMPAPER_A3, poLandscape, PrinterPreview.Printer);
  try
    pgdModelStatusDetail.PreviewModal;
  finally
    SetUpPrinter(SavePage.PaperSize, SavePage.Orientation, PrinterPreview.Printer);
  end;   { try }
end;

class function TfmModelStatusAbstract.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode): Boolean;
var
  f: TfmModelStatusAbstract;
  SavePage: TPrinterPage;
begin
  SavePage:= SetUpPrinter(DMPAPER_A3, poLandscape);
  try
    f:= CreateEx;
    try
      f.SetDataParams(AdmDocClient, ADataSet, AEditMode);
      f.InternalShowForm;
      Result:= f.IsDataModified;
    finally
      f.ReleaseForm;
    end;  { try }
  finally
    SetUpPrinter(SavePage.PaperSize, SavePage.Orientation);
  end;  { try }
end;

procedure TfmModelStatusAbstract.SetDetailFrozenCols;
begin
  grdModelStatusDetail.FrozenCols:= VisibleFixedColsCount;
end;

procedure TfmModelStatusAbstract.SetShowUncoveredLines(const Value: Boolean);
var
  SaveCursor: TCursor;
  SaveNoAsFormatedText: string;
  SaveForkNo: Integer;
begin
  if FShowUncoveredLines <> Value then
    begin
      FShowUncoveredLines:= Value;
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crHourglass;
      try
        with cdsModelStatusDetail do
          if Active then
            begin
              DisableControls;
              try
                SaveNoAsFormatedText:= cdsModelStatusDetailNO_AS_FORMATED_TEXT.AsString;
                SaveForkNo:= cdsModelStatusDetail.FieldByName('FORK_NO').AsInteger;
                try
                  Filtered:= False;
                  try
                    Close;
                    Open;
                  finally
                    Filtered:= True;
                  end;  { try }
                finally
                  Locate('NO_AS_FORMATED_TEXT; FORK_NO', VarArrayOf([SaveNoAsFormatedText, SaveForkNo]), []);
                end;  { try }
              finally
                EnableControls;
              end;  { try }
            end;
      finally
        Screen.Cursor:= SaveCursor;
      end;
    end;
end;

procedure TfmModelStatusAbstract.actShowVIMUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsModelStatusDetail.Active and
    (not cdsModelStatusDetail.FieldByName('PRODUCT_CODE').IsNull) and
    (not (cdsModelStatusDetail.Bof and cdsModelStatusDetail.Eof));
end;

procedure TfmModelStatusAbstract.actShowVIMExecute(Sender: TObject);
begin
  inherited;
  ShowProductVIM(
    dmDocClient,
    cdsModelStatusDetail.FieldByName('PRODUCT_CODE').AsInteger,
    cdsModelStatusDetail.FieldByName('PRODUCT_NEED_BEGIN_DATE').AsDateTime,
    False,
    vofVIMOpenedFromModel,
    pcNormal);
end;

function TfmModelStatusAbstract.GetVisibleFixedColsCount: Integer;
var
  i: Integer;
  index: Integer;
begin
  Result:= 0;
  for i:= 0 to grdModelStatusDetail.Columns.Count - 1 do
    begin
      index:= GetColumnByFieldName(grdModelStatusDetail.Columns[i].FieldName);
      if (index >= 0) and GridColumns[index].IsFixed then
        Result:= i + 1;
    end;
end;

procedure TfmModelStatusAbstract.btnDetailDocumentationClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, btnDetailDocumentation,
    cdsModelStatusDetail.FieldByName('DETAIL_CODE').AsInteger);
end;

procedure TfmModelStatusAbstract.btnProductDocumentationClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, btnProductDocumentation,
    cdsModelStatusDetail.FieldByName('PRODUCT_CODE').AsInteger);
end;

procedure TfmModelStatusAbstract.actFormUpdate(Sender: TObject);

  procedure SetDiffEditFontColor(edt: TDBEdit);
  begin
    if edt.Field.DataSet.Active and
       (edt.Field.AsFloat < 0) then
      edt.Font.Color:= clRed
    else
      edt.Font.Color:= clWindowText;
  end;

begin
  inherited;

  pnlHeader.Visible:= (WindowState <> wsMaximized);

  btnDetailDocumentation.Enabled:=
    cdsModelStatusDetail.Active and
    (cdsModelStatusDetail.RecordCount > 0) and
    (not cdsModelStatusDetail.FieldByName('DETAIL_CODE').IsNull);

  btnProductDocumentation.Enabled:=
    cdsModelStatusDetail.Active and
    (cdsModelStatusDetail.RecordCount > 0) and
    (not cdsModelStatusDetail.FieldByName('PRODUCT_CODE').IsNull);

  pnlClosed.Visible:=
    cdsData.Active and
    cdsDataIS_CLOSED.AsBoolean;

  pnlArchived.Visible:=
    cdsData.Active and
    cdsDataIS_ARCHIVED.AsBoolean;

  if cdsModelStatusDetail.Active and
     (VarToInt(cdsModelStatusDetail_UNCOVERED_LINES_COUNT.AsVariant) > 0) then
    edtUncoveredLines.Color:= ccTotalLateNotSelected
  else
    edtUncoveredLines.Color:= clBtnFace;

  if (VarToInt(cdsModelStatusDetail_UNCOVERED_CAPACITY_MLMSO_COUNT.AsVariant) > 0) then
    edtCapacity.Font.Color:= clRed
  else
    edtCapacity.Font.Color:= clWindowText;

  SetDiffEditFontColor(edtProductionDateDiffMax);
  SetDiffEditFontColor(edtProductionDateDiffMin);

  if cdsData.Active then
    begin
      edtPriority.Font.Color:= cdsDataPRIORITY_COLOR.AsInteger;
      edtPriority.Color:= cdsDataPRIORITY_BACKGROUND_COLOR.AsInteger;
    end;

  pnlWastingSale.Visible:=
    cdsData.Active and cdsDataIS_WASTE_COMPENSATING_ORDER.AsBoolean;
  pnlWasteCompensatorProductionOrders.Visible:=
    cdsData.Active and (not cdsDataIS_WASTE_COMPENSATING_ORDER.AsBoolean);

  if (cdsXModelStructStatus_DISPLAY_TEXT.AsString = '') then
    edtStructureCoef.Color:= clBtnFace
  else
    begin
      if IsDocStatusComplete(cdsXModelStructStatus_DISPLAY_TEXT.AsString) then
        edtStructureCoef.Color:= $00C5EFC2
      else
        edtStructureCoef.Color:= ccTotalLateNotSelected;
    end;  { if }
end;

class function TfmModelStatusAbstract.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmModelStatusAbstract.actEditNotesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsModelStatusDetail.Active and
    (cdsModelStatusDetail.RecordCount > 0);

  (Sender as TAction).ImageIndex:= IfThen(cdsModelStatusDetail.FieldByName('NOTES').AsString = '', 207, 57);
end;

procedure TfmModelStatusAbstract.actExcelExportExecute(Sender: TObject);
begin
  inherited;

  cdsModelStatusDetail.TempDisableControls/
    procedure
    var
      i: Integer;
    begin
      grdModelStatusDetail.Columns.BeginUpdate;
      try
        for i:= 1 to DetailColumnsCount do
          FGridColumns[DetailColumns[i]].Visible:= True;
        for i:= 1 to ProductColumnsCount do
          FGridColumns[ProductColumns[i]].Visible:= True;
        try
          SetColumnVisibleStatus;
          GridExcelExport(grdModelStatusDetail, False);
        finally
          IsVisibleDetail:= not IsVisibleDetail;
          IsVisibleDetail:= not IsVisibleDetail;
        end;
      finally
        grdModelStatusDetail.Columns.EndUpdate;
      end;
    end;
end;

procedure TfmModelStatusAbstract.actEditNotesExecute(Sender: TObject);
begin
  inherited;
  if TfmNotes.EditNotesField(cdsModelStatusDetail.FieldByName('NOTES'), EditMode) then
    PostDataSet(cdsModelStatusDetail);
end;

function TfmModelStatusAbstract.GetApplyUpdatesEnabled: Boolean;
begin
  Result:= (cdsModelStatusDetail.ChangeCount > 0);
end;

procedure TfmModelStatusAbstract.DoApplyUpdates;
var
  SaveCursor: TCursor;
begin
//  inherited; new behaviour

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    if (cdsModelStatusDetail.ApplyUpdates(0) > 0) then
      Abort;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TfmModelStatusAbstract.cdsModelStatusDetailReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  ReconcileError(E);
end;

procedure TfmModelStatusAbstract.ShowOperationsForm(AMlmsObjectBranchCode,
  AMlmsObjectCode: Integer);
begin
  LoginContext.CheckUserActivity(uaModelTasksMLMSOperations);

  with cdsMlmsObject do
    begin
      Close;
      CreateDataSet;
      try
        Append;
        try
          cdsMlmsObjectMLMS_OBJECT_BRANCH_CODE.AsInteger:= AMlmsObjectBranchCode;
          cdsMlmsObjectMLMS_OBJECT_CODE.AsInteger:= AMlmsObjectCode;
          Post;
        except
          Cancel;
          raise;
        end;  { try }

        TfmOneMLMSOperations.ShowForm(dmDocClient, cdsMlmsObject, emReadOnly);
      finally
        Close;
      end;  { try }
    end;  { with }
end;

procedure TfmModelStatusAbstract.cdsDataML_STATE_CODEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (Sender.AsInteger >= Low(MLStateNames)) and
     (Sender.AsInteger <= High(MLStateNames)) then
    Text:= MLStateAbbrevs[Sender.AsInteger]
  else
    Text:= '';
end;

procedure TfmModelStatusAbstract.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsData_REMAINING_QUANTITY.AsFloat:=
    cdsDataCOMPLETED_QUANTITY.AsFloat -
    cdsDataMANUFACTURE_QUANTITY.AsFloat;

  if (cdsDataMANUFACTURE_QUANTITY.AsFloat = 0) then
    cdsData_REMAINING_QUANTITY_PERCENT.AsFloat:= 0
  else
    cdsData_REMAINING_QUANTITY_PERCENT.AsFloat:=
      cdsData_REMAINING_QUANTITY.AsFloat / cdsDataMANUFACTURE_QUANTITY.AsFloat * 100;

  cdsData_PERCENT_TEXT.AsString:= '%';

  if cdsModelStatusDetail.Active then
    cdsData_REMAINING_INVESTED_VALUE.AsFloat:=
      VarToFloat(cdsModelStatusDetailOTCH_VS.AsVariant) - VarToFloat(cdsModelStatusDetailPLAN_VS.AsVariant);

  if (VarToFloat(cdsModelStatusDetailPLAN_VS.AsVariant) = 0) then
    cdsData_REMAINING_INVESTED_VALUE_PCT.AsFloat:= 0
  else
    cdsData_REMAINING_INVESTED_VALUE_PCT.AsFloat:=
      cdsData_REMAINING_INVESTED_VALUE.AsFloat / VarToFloat(cdsModelStatusDetailPLAN_VS.AsVariant) * 100;
end;

procedure TfmModelStatusAbstract.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  AFrame.ReadOnly:= True;
end;

procedure TfmModelStatusAbstract.cdsDataENTER_RESULT_STORE_BEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if not (cdsData.Bof and cdsData.Eof) then
    Text:= dmMain.GetDateIntervalAsShortString(Sender.AsDateTime, cdsDataENTER_RESULT_STORE_END_DATE.AsDateTime)
  else
    Text:= '';
end;

procedure TfmModelStatusAbstract.actShowUncoveredLinesExecute(Sender: TObject);
begin
  inherited;
  ShowUncoveredLines:= btnShowUncoveredLines.Down;
end;

procedure TfmModelStatusAbstract.cdsModelStatusDetail_UNCOVERED_LINES_COUNTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if DisplayText then
    begin
      if (VarToInt(Sender.AsVariant) = 0) then
        Text:= ''
      else
        Text:= Format('%d/%d', [VarToInt(Sender.AsVariant), cdsDataLINE_COUNT.AsInteger]);
    end
  else
    Text:= Sender.AsString;
end;

function TfmModelStatusAbstract.GetGridColumns(Index: Integer): TColumnDesc;
begin
  Result:= FGridColumns[Index];
end;

function TfmModelStatusAbstract.GetRepeatableColumnNo(
  FieldName: string): Integer;
begin
  Result:= StrToIntDef(Copy(FieldName, CharLastPos(FieldName, '_') + 1, 100), 0)
end;

procedure TfmModelStatusAbstract.SetGridColumns(Index: Integer;
  const Value: TColumnDesc);
begin
  FGridColumns[Index]:= Value;
end;

procedure TfmModelStatusAbstract.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FShrunkNoAsFormatedTexts);
end;

procedure TfmModelStatusAbstract.cdsModelStatusDetailBeforeClose(
  DataSet: TDataSet);
begin
  inherited;

  cdsModelStatusDetail.Filtered:= False;

  cdsModelStatusDetailNO_AS_FORMATED_TEXT:= nil;
  cdsModelStatusDetailFORK_NO:= nil;
end;

procedure TfmModelStatusAbstract.grdModelStatusDetailCellClick(
  Column: TColumnEh);
var
  NoAsFormatedText: string;
  i: Integer;
begin
  inherited;

  if (Column.FieldName = IsShrunkFieldName) and (not Column.Field.IsNull) then
    with cdsModelStatusDetail do
      begin
        DisableControls;
        try
          NoAsFormatedText:= cdsModelStatusDetailNO_AS_FORMATED_TEXT.AsString;
          try
            Edit;
            try
              with FieldByName(IsShrunkFieldName) do
                begin
                  AsBoolean:= not AsBoolean;

                  if AsBoolean then
                    FShrunkNoAsFormatedTexts.Add(NoAsFormatedText)
                  else
                    begin
                      i:= FShrunkNoAsFormatedTexts.IndexOf(NoAsFormatedText);
                      if (i >= 0) then
                        FShrunkNoAsFormatedTexts.Delete(i);
                    end;
                end;
              Post;
            except
              Cancel;
              raise;
            end;  { try }

            Filtered:= False;
            Filtered:= True;
          finally
            First;
            Locate(cdsModelStatusDetailNO_AS_FORMATED_TEXT.FieldName, NoAsFormatedText, []);
          end;  { try }
        finally
          EnableControls;
        end;  { try }
      end;  { with }
end;

procedure TfmModelStatusAbstract.grdModelStatusDetailDblClick(Sender: TObject);
begin
  inherited;

  with grdModelStatusDetail do
    if IsMlmsIdentifierCellFocused then
      ShowOperationsForm(Columns[Col-4].Field.AsInteger, Columns[Col-3].Field.AsInteger);
end;

function TfmModelStatusAbstract.IsMlmsIdentifierCellFocused: Boolean;
begin
  with grdModelStatusDetail do
    Result:=
      (GetColumnByFieldName(Columns[Col-1].FieldName) = GetMLMSIdentifierColumnNo) and
      not cdsModelStatusDetail.FieldByName(Columns[Col-1].FieldName).IsNull;
end;

procedure TfmModelStatusAbstract.cdsModelStatusDetailFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var
  i: Integer;
  HasShrunkPrefix: Boolean;
begin
  inherited;

  HasShrunkPrefix:= False;
  for i:= 0 to FShrunkNoAsFormatedTexts.Count - 1 do
    if (cdsModelStatusDetailNO_AS_FORMATED_TEXT.AsString <> FShrunkNoAsFormatedTexts[i]) and
       AnsiStartsStr(FShrunkNoAsFormatedTexts[i], cdsModelStatusDetailNO_AS_FORMATED_TEXT.AsString) then
      begin
        HasShrunkPrefix:= True;
        Break;
      end;

  Accept:=
    (not HasShrunkPrefix) and
    ( (cdsModelStatusDetailFORK_NO.AsInteger = 0) or
      (FShrunkNoAsFormatedTexts.IndexOf(cdsModelStatusDetailNO_AS_FORMATED_TEXT.AsString) < 0) );
end;

procedure TfmModelStatusAbstract.ShowWarningsOnly;
var
  ShrankLines: TStringList;
  i: Integer;
  IsShrank: Boolean;
  HasShrunkPrefix: Boolean;
  SaveNoAsFormatedText: string;
  SaveForkNo: Integer;
begin
  ShrankLines:= TStringList.Create;
  try
    ShrankLines.Duplicates:= dupIgnore;
    ShrankLines.Sorted:= True;

    with cdsModelStatusDetail do
      begin
        DisableControls;
        try
          SaveNoAsFormatedText:= cdsModelStatusDetailNO_AS_FORMATED_TEXT.AsString;
          SaveForkNo:= cdsModelStatusDetail.FieldByName('FORK_NO').AsInteger;
          try
            Filtered:= False;
            try
              FShrunkNoAsFormatedTexts.Clear;

              First;
              while not Eof do
                begin
                  HasShrunkPrefix:= False;
                  for i:= 0 to ShrankLines.Count - 1 do
                    if AnsiStartsStr(ShrankLines[i], cdsModelStatusDetailNO_AS_FORMATED_TEXT.AsString) then
                      begin
                        HasShrunkPrefix:= True;
                        Break;
                      end;

                  IsShrank:=
                    (not HasShrunkPrefix) and
                    (not FieldByName(IsShrunkFieldName).IsNull) and
                    (not FieldByName('HAS_CHILDREN_WARNINGS').AsBoolean);

                  with FieldByName(IsShrunkFieldName) do
                    if (not IsNull) and (AsBoolean <> IsShrank) then
                      begin
                        Edit;
                        try
                          AsBoolean:= IsShrank;
                          Post;
                        except
                          Cancel;
                          raise;
                        end;  { try }
                      end;

                  if IsShrank then
                    begin
                      ShrankLines.Add(cdsModelStatusDetailNO_AS_FORMATED_TEXT.AsString);
                      FShrunkNoAsFormatedTexts.Add(cdsModelStatusDetailNO_AS_FORMATED_TEXT.AsString)
                    end;

                  Next;
                end;  { while }
            finally
              Filtered:= True;
            end;  { try }
          finally
            cdsModelStatusDetail.Locate('NO_AS_FORMATED_TEXT; FORK_NO',
              VarArrayOf([SaveNoAsFormatedText, SaveForkNo]), []);
          end;  { try }
        finally
          EnableControls;
        end;  { try }
      end;  { with }
  finally
    FreeAndNil(ShrankLines);
  end;  { try }
end;

procedure TfmModelStatusAbstract.FullExpandOrShrink(Expand: Boolean);
var
  SaveNoAsFormatedText: string;
  SaveForkNo: Integer;
begin
  with cdsModelStatusDetail do
    begin
      DisableControls;
      try
        SaveNoAsFormatedText:= cdsModelStatusDetailNO_AS_FORMATED_TEXT.AsString;
        SaveForkNo:= cdsModelStatusDetail.FieldByName('FORK_NO').AsInteger;
        try
          Filtered:= False;
          try
            FShrunkNoAsFormatedTexts.Clear;

            First;
            while not Eof do
              begin
                with FieldByName(IsShrunkFieldName) do
                  if (not IsNull) then
                    begin
                      if (AsBoolean = Expand) then
                        begin
                          Edit;
                          try
                            AsBoolean:= not Expand;
                            Post;
                          except
                            Cancel;
                            raise;
                          end;  { try }
                        end;

                      if not Expand then
                        FShrunkNoAsFormatedTexts.Add(cdsModelStatusDetailNO_AS_FORMATED_TEXT.AsString);
                    end;

                Next;
              end;  { while }
          finally
            Filtered:= True;
          end;  { try }
        finally
          cdsModelStatusDetail.Locate('NO_AS_FORMATED_TEXT; FORK_NO',
            VarArrayOf([SaveNoAsFormatedText, SaveForkNo]), []);
        end;  { try }
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmModelStatusAbstract.actShowWarningsOnlyExecute(
  Sender: TObject);
begin
  inherited;
  ShowWarningsOnly;
end;

procedure TfmModelStatusAbstract.actShowWastingSaleExecute(Sender: TObject);
begin
  inherited;
  cdsWastingSaleParams.CreateDataSet;
  try
    cdsWastingSaleParams.AppendRecord([
      cdsDataWASTING_SALE_OBJ_BRANCH_CODE.AsInteger,
      cdsDataWASTING_SALE_OBJ_CODE.AsInteger]);

    TfmProductionOrder.ShowForm(dmDocClient, cdsWastingSaleParams, emReadOnly);
  finally
    cdsWastingSaleParams.Close;
  end;  { try }
end;

procedure TfmModelStatusAbstract.actShowWastingSaleUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    not cdsDataWASTING_SALE_OBJ_BRANCH_CODE.IsNull;
end;

procedure TfmModelStatusAbstract.actStageDocsExecute(Sender: TObject);
var
  RepeatableColumnNo: Integer;
begin
  inherited;
  if IsMlmsIdentifierCellFocused then
    begin
      RepeatableColumnNo:=
        GetRepeatableColumnNo(grdModelStatusDetail.Columns[grdModelStatusDetail.Col-1].FieldName);
      dmDocClient.DSOpenDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl), dotRealStage,
        cdsModelStatusDetail.FieldByName(Format('MLMS_DOC_BRANCH_CODE_%d', [RepeatableColumnNo])),
        cdsModelStatusDetail.FieldByName(Format('MLMS_DOC_CODE_%d', [RepeatableColumnNo]))
      );
    end;
end;

procedure TfmModelStatusAbstract.actStageDocsUpdate(Sender: TObject);
var
  RepeatableColumnNo: Integer;
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:= IsMlmsIdentifierCellFocused;

      if Enabled then
        begin
          RepeatableColumnNo:=
            GetRepeatableColumnNo(grdModelStatusDetail.Columns[grdModelStatusDetail.Col-1].FieldName);
          ImageIndex:=
            cdsModelStatusDetail.FieldByName(Format('MLMS_HAS_DOC_ITEMS_%d', [RepeatableColumnNo])).AsInteger;
        end
      else
        ImageIndex:= 1;                                                                               
    end;
end;

procedure TfmModelStatusAbstract.actFullExpandExecute(Sender: TObject);
begin
  inherited;
  FullExpandOrShrink(True);
end;

procedure TfmModelStatusAbstract.actFullShrinkExecute(Sender: TObject);
begin
  inherited;
  FullExpandOrShrink(False);
end;

procedure TfmModelStatusAbstract.actDefaultExpandExecute(Sender: TObject);
begin
  inherited;
  case LoginContext.DefaultModelStatusExpandState of
    msesExpanded: actFullExpand.Execute;
    msesWarningsOnly: actShowWarningsOnly.Execute;
    msesShrunk: actFullShrink.Execute;
  end;
end;

procedure TfmModelStatusAbstract.pmExpandPopup(Sender: TObject);
begin
  inherited;

  miFullExpand.Default:=
    (LoginContext.DefaultModelStatusExpandState = msesExpanded);
  miShowWarningsOnly.Default:=
    (LoginContext.DefaultModelStatusExpandState = msesWarningsOnly);
  miFullShrink.Default:=
    (LoginContext.DefaultModelStatusExpandState = msesShrunk);
end;

procedure TfmModelStatusAbstract.actShowTaskModelExecute(Sender: TObject);
begin
  inherited;
  TfmXModel.ShowTaskModel(dmDocClient, cdsData);
end;

procedure TfmModelStatusAbstract.actShowCapacityGraphUpdate(
  Sender: TObject);
var
  FName: string;
begin
  inherited;

  with grdModelStatusDetail do
    if (SelectedIndex > -1) then
      FName:= Columns[SelectedIndex].FieldName
    else
      FName:= '';

  (Sender as TAction).Enabled:=
    cdsModelStatusDetail.Active and
    (grdModelStatusDetail.SelectedIndex > 0) and
    (LeftStr(FName, StageIdentifierFieldNamePrefixLength) = StageIdentifierFieldNamePrefix) and
    not grdModelStatusDetail.SelectedField.IsNull and
    Assigned(
      cdsModelStatusDetail.FindField(
        StringReplace(FName, StageIdentifierFieldNamePrefix, StagePMMBeginDateFieldNamePrefix, [])
      )
    );
end;

procedure TfmModelStatusAbstract.actSetVisibleDetailExecute(Sender: TObject);
begin
  inherited;
  IsVisibleDetail:= True;
  (Sender as TAction).Update;
end;

procedure TfmModelStatusAbstract.actSetVisibleDetailUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= IsVisibleDetail;
  btnISCH.Down:= IsVisibleDetail;
end;

procedure TfmModelStatusAbstract.actSetVisibleProductExecute(Sender: TObject);
begin
  inherited;
  IsVisibleDetail:= False;
  (Sender as TAction).Update;
end;

procedure TfmModelStatusAbstract.actSetVisibleProductUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= not IsVisibleDetail;
  btnVSCH.Down:= not IsVisibleDetail;
end;

procedure TfmModelStatusAbstract.actShowCapacityGraphExecute(
  Sender: TObject);
var
  FName: string;
begin
  inherited;

  FName:= grdModelStatusDetail.Columns[grdModelStatusDetail.SelectedIndex].FieldName;

  TfmCapacityGraph.ShowGraph(
    dmDocClient,
    atRealization,
    cdsModelStatusDetail.FieldByName(StringReplace(FName, StageIdentifierFieldNamePrefix, StageDeptCodeFieldNamePrefix, [])).AsInteger,
    cdsModelStatusDetail.FieldByName(StringReplace(FName, StageIdentifierFieldNamePrefix, StagePMMBeginDateFieldNamePrefix, [])).AsDateTime
  );
end;

procedure TfmModelStatusAbstract.cdsDataMODEL_OPERATIONS_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  ModelOperationsStatusFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmModelStatusAbstract.cdsModelStatusDetail_UNCOVERED_CAPACITY_MLMSO_COUNTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (VarToInt(Sender.AsVariant) = 0) then
    Text:= ''
  else
    Text:=
      Format('%d/%d', [
        VarToInt(cdsModelStatusDetail_UNCOVERED_CAPACITY_MLMSO_COUNT.AsVariant),
        VarToInt(cdsModelStatusDetail_UNCOVERED_CAPACITY_STAGE_COUNT.AsVariant)
      ]);
end;

procedure TfmModelStatusAbstract.actDetailCopyNoToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsModelStatusDetail.FieldByName('DETAIL_CUSTOM_CODE').AsString;
end;

procedure TfmModelStatusAbstract.actDetailCopyNameToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsModelStatusDetail.FieldByName('DETAIL_NAME').AsString;
end;

procedure TfmModelStatusAbstract.actProductCopyNoToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsModelStatusDetail.FieldByName('PRODUCT_CUSTOM_CODE').AsString;
end;

procedure TfmModelStatusAbstract.actProductCopyNameToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsModelStatusDetail.FieldByName('PRODUCT_NAME').AsString;
end;

procedure TfmModelStatusAbstract.actDetailCopyToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  actDetailCopyNoToClipboard.Execute;
end;

procedure TfmModelStatusAbstract.actProductCopyToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  actProductCopyNoToClipboard.Execute;
end;

procedure TfmModelStatusAbstract.actDetailCopyToClipboardUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsModelStatusDetail.Active and
    (cdsModelStatusDetail.RecordCount > 0) and
    (not cdsModelStatusDetail.FieldByName('DETAIL_CODE').IsNull);
end;

procedure TfmModelStatusAbstract.actProductCopyToClipboardUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsModelStatusDetail.Active and
    (cdsModelStatusDetail.RecordCount > 0) and
    (not cdsModelStatusDetail.FieldByName('PRODUCT_CODE').IsNull);
end;

procedure TfmModelStatusAbstract.actToggleQuantityDiffMeasureUpdate(
  Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      edtQuantityDiff.DataField:=
        IfThen(Checked, cdsData_REMAINING_QUANTITY_PERCENT.FieldName, cdsData_REMAINING_QUANTITY.FieldName);
      txtQuantityDiffMeasure.DataField:=
        IfThen(Checked, cdsData_PERCENT_TEXT.FieldName, cdsDataMEASURE_ABBREV.FieldName);
    end;  { with }
end;

procedure TfmModelStatusAbstract.actToggleQuantityDiffMeasureExecute(
  Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    Checked:= not Checked;
end;

procedure TfmModelStatusAbstract.cdsXModelStructStatusCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if cdsXModelStructStatusLEVEL_NO.IsNull then
    cdsXModelStructStatus_DISPLAY_TEXT.Clear
  else
    cdsXModelStructStatus_DISPLAY_TEXT.AsString:=
      DocStatusToStr(
        cdsXModelStructStatusLEVEL_NO.AsInteger,
        cdsXModelStructStatusLEVEL_IS_COMPLETE.AsBoolean,
        cdsXModelStructStatusMAX_LEVEL_NO.AsInteger,
        cdsXModelStructStatusHAS_MISSING_CHILDREN.AsBoolean
      );
end;

procedure TfmModelStatusAbstract.actToggleInvestedValueDiffMeasureExecute(
  Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    Checked:= not Checked;
end;

procedure TfmModelStatusAbstract.actToggleInvestedValueDiffMeasureUpdate(
  Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      edtInvestedValueDiff.DataField:=
        IfThen(Checked, cdsData_REMAINING_INVESTED_VALUE_PCT.FieldName, cdsData_REMAINING_INVESTED_VALUE.FieldName);
      lblInvestedValueDiffMeasure.Caption:=
        IfThen(Checked, '%', LoginContext.SecondaryCurrencyAbbrev);
    end;  { with }
end;

procedure TfmModelStatusAbstract.actWastingSaleModelStatusUpdate(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    cdsData.Active and
    (not cdsDataWASTING_ML_OBJECT_BRANCH_CODE.IsNull) and
    (not cdsDataWASTING_ML_OBJECT_CODE.IsNull);
end;

procedure TfmModelStatusAbstract.actWastingSaleModelStatusExecute(
  Sender: TObject);
begin
  inherited;
  if cdsDataWASTING_ML_OBJECT_CODE.IsNull then
    actShowWastingSale.Execute
  else
    begin
      cdsML.CreateDataSet;
      try
        cdsML.AppendRecord([
          cdsDataWASTING_ML_OBJECT_BRANCH_CODE.AsInteger,
          cdsDataWASTING_ML_OBJECT_CODE.AsInteger
        ]);
        TfmModelStatus.ShowForm(dmDocClient, cdsML, emReadOnly);
      finally
        cdsML.Close;
      end;  { try }
    end;
end;

procedure TfmModelStatusAbstract.actWasteCompensatorProductionOrdersExecute(
  Sender: TObject);
begin
  inherited;

  cdsWasteCompensatorsParams.CreateDataSet;
  try
    cdsWasteCompensatorsParams.AppendRecord([
      3,
      cdsDataSALE_BRANCH_CODE.AsInteger, cdsDataSALE_NO.AsInteger,
      Low(TMLStateNames), High(TMLStateNames)-1
    ]);

    TfmProductionOrders.ShowForm(dmDocClient, cdsWasteCompensatorsParams, emReadOnly, False, 0);
  finally
    cdsWasteCompensatorsParams.Close;
  end;  { try }
end;

procedure TfmModelStatusAbstract.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnDocs, dotSale, cdsData);
end;

procedure TfmModelStatusAbstract.cdsDataIS_WASTE_COMPENSATING_ORDERGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:=
    Sender.AsString +
    cdsDataHAS_WASTE.AsString +
    IfThen(cdsDataWASTE_COMPENSATOR_COUNT.AsInteger > 0, '*', '');
end;

procedure TfmModelStatusAbstract.actWasteCompensatorProductionOrdersUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    (cdsDataWASTE_COMPENSATOR_COUNT.AsInteger > 0);
end;

end.

