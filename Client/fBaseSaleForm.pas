unit fBaseSaleForm;

// poleto SHIPMENT_STORE_CURRENT_QUANTITY pokazva kakvo k-vo e postupilo

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uClientTypes, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  JvDBLookup, Mask, DBCtrls, ComCtrls, AbmesArrow, JvCaptionButton,
  AbmesClientDataSet, AbmesFields, Menus, JvButtons, fEditForm, fBaseFrame,
  fDBFrame, fFieldEditFrame, fDateFieldEditFrame, JvExControls, JvComponent,
  JvComponentBase, Generics.Collections, System.Actions;
 
type
  TArrowInfo = class;

  TBaseSaleForm = class(TEditForm)
    cdsDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsDataSALE_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsDataREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsDataREQUEST_NO: TAbmesFloatField;
    cdsDataREQUEST_LINE_NO: TAbmesFloatField;
    cdsDataCLIENT_COMPANY_CODE: TAbmesFloatField;
    cdsDataCLIENT_REQUEST_NO: TAbmesWideStringField;
    cdsDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    cdsDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    cdsDataOFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsDataOFFER_SEND_DATE: TAbmesSQLTimeStampField;
    cdsDataOFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsDataOFFER_ANSWER_DATE: TAbmesSQLTimeStampField;
    cdsDataDECISION_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsDataDECISION_DATE: TAbmesSQLTimeStampField;
    cdsDataDECISION_TYPE_CODE: TAbmesFloatField;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataQUANTITY: TAbmesFloatField;
    cdsDataMANUFACTURE_QUANTITY: TAbmesFloatField;
    cdsDataMANUFACTURE_DECISION_EXPECTED: TAbmesFloatField;
    cdsDataSINGLE_WEIGHT: TAbmesFloatField;
    cdsDataCURRENCY_CODE: TAbmesFloatField;
    cdsDataSINGLE_PRICE: TAbmesFloatField;
    cdsDataOUR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    cdsDataCL_OFFER_SINGLE_PRICE: TAbmesFloatField;
    cdsDataCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDataOUR_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDataRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    cdsDataIS_VENDOR_TRANSPORT: TAbmesFloatField;
    cdsDataSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsDataCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsDataNOTES: TAbmesWideStringField;
    cdsDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDataSALE_NO: TAbmesFloatField;
    cdsDataSALE_TYPE_CODE: TAbmesFloatField;
    cdsDataOKIDU_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataSOS_OKIDU: TAbmesFloatField;
    cdsDataSHIPMENT_DATE: TAbmesSQLTimeStampField;
    cdsDataSHIPMENT_STORE_CODE: TAbmesFloatField;
    cdsDataIS_ML_ENTRUSTED: TAbmesFloatField;
    cdsDataIS_ML_NOT_NEEDED: TAbmesFloatField;
    cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsDataFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataFINISH_DATE: TAbmesSQLTimeStampField;
    cdsDataFINISH_TIME: TAbmesSQLTimeStampField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataPRODUCT_NAME: TAbmesWideStringField;
    cdsDataSALE_LAST_CHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDataPLANNED_INVESTED_SEC_PRICE: TAbmesFloatField;
    cdsDataACCOUNT_INVESTED_SEC_PRICE: TAbmesFloatField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    actConcludeSale: TAction;
    actAnnulSale: TAction;
    pnlConcludeSale: TPanel;
    btnConcludeSale: TBitBtn;
    pnlAnnulSale: TPanel;
    btnAnnulSale: TBitBtn;
    pnlConcludeInfo: TPanel;
    lblFinishDate: TLabel;
    pnlSaleCommonData: TPanel;
    pnlTimeLine: TPanel;
    saTimeLine: TAbmesArrow;
    shpTimeStart: TShape;
    saToday: TAbmesArrow;
    saProductionStartPlanDate: TAbmesArrow;
    saShipmentStorePlanEnterEndDate: TAbmesArrow;
    tShipmentStorePlanEnterEndDate: TDBText;
    tProductionStartPlanDate: TDBText;
    shpProductionStartPlanDateLateness: TShape;
    shpShipmentStorePlanEnterEndDateLateness: TShape;
    cdsDataLAST_SHIPMENT_STORE_IN_DATE: TAbmesSQLTimeStampField;
    cdsDataFIRST_OUT_DATE: TAbmesSQLTimeStampField;
    cdsDataSHIPMENT_STORE_CURR_QUANTITY: TAbmesFloatField;
    cdsDataMANAGER_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataPRODUCTION_START_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsDataSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsDataOUR_OFFER_QUANTITY: TAbmesFloatField;
    cdsDataCL_OFFER_QUANTITY: TAbmesFloatField;
    cdsDataACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsDataPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    cdsDataPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    cdsDataPSD_PRIORITY_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsDataPRODUCT_NO: TAbmesFloatField;
    cdsData_ENTER_SH_STORE_PLAN_PERIOD_PART: TAbmesFloatField;
    cdsData_COMPLETED_QUANTITY_PART: TAbmesFloatField;
    cdsDataMODEL_SPEC_VERSION_NO: TAbmesFloatField;
    cdsDataMODEL_SPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsDataMODEL_CREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataMODEL_ACCOMPLISHMENT_COEF: TAbmesFloatField;
    cdsData_HAS_MODEL: TBooleanField;
    cdsSpecModelVariants: TAbmesClientDataSet;
    dsSpecModelVariants: TDataSource;
    cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsSpecModelVariantsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsSpecModelVariantsSPEC_VERSION_NO: TAbmesFloatField;
    cdsSpecModelVariantsPRODUCTION_WORKDAYS: TAbmesFloatField;
    cdsSpecModelVariantsENTER_RESULT_STORE_WORKDAYS: TAbmesFloatField;
    cdsSpecModelVariantsRESULT_STORE_CODE: TAbmesFloatField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    pnlPrintButton: TPanel;
    btnPrint: TBitBtn;
    pnlPrintCheckBox: TPanel;
    chbPrint: TCheckBox;
    cdsData_SALE_BRANCH_NO: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsData_PRODUCTION_START_PLAN_DATE_SHOW: TAbmesSQLTimeStampField;
    cdsData_ENTER_SH_STORE_PLAN_END_DATE_SHOW: TAbmesSQLTimeStampField;
    cdsData_TODAY: TAbmesSQLTimeStampField;
    lToday: TDBText;
    cdsDataPRODUCTION_DEPT_CODE: TAbmesFloatField;
    cdsDataPRODUCTION_DEPT_NAME: TAbmesWideStringField;
    cdsDataML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataML_OBJECT_CODE: TAbmesFloatField;
    actModelStatus: TAction;
    cdsDataPRODUCTION_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDataPRODUCTION_WORKDAYS: TAbmesFloatField;
    cdsDataENTER_RESULT_STORE_WORKDAYS: TAbmesFloatField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    cdsDataML_STATE_CODE: TAbmesFloatField;
    cdsData_ML_STATE_ABBREV: TAbmesWideStringField;
    cdsData_ML_STATE_FULL_NAME: TAbmesWideStringField;
    cdsData_ML_STATE_COLOR: TAbmesFloatField;
    cdsDataIS_OPERATIONS_MODEL: TAbmesFloatField;
    actModelCapacityStatus: TAction;
    cdsDataSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsData_INVESTED_PRICE_DIFF_PERCENT: TAbmesFloatField;
    cdsSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField;
    cdsSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField;
    cdsSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField;
    cdsSpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    cdsSpecModelVariantsMIN_WORK_QUANTITY: TAbmesFloatField;
    cdsSpecModelVariantsMAX_WORK_QUANTITY: TAbmesFloatField;
    frFinishDate: TfrDateFieldEditFrame;
    cdsDataWORK_PRIORITY_CODE: TAbmesFloatField;
    cdsWorkPriorities: TAbmesClientDataSet;
    cdsWorkPrioritiesWORK_PRIORITY_CODE: TAbmesFloatField;
    cdsWorkPrioritiesWORK_PRIORITY_NO: TAbmesFloatField;
    cdsWorkPrioritiesWORK_PRIORITY_NAME: TAbmesWideStringField;
    dsWorkPriorities: TDataSource;
    cdsDataMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    cdsModelDevelopmentTypes: TAbmesClientDataSet;
    dsModelDevelopmentTypes: TDataSource;
    cdsDataMIN_MLL_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    cdsData_PRODUCTION_START_DATE_DIFF: TAbmesFloatField;
    cdsDataSTART_STAGE_COEF: TAbmesFloatField;
    cdsDataSTART_AFTER_LIMITING_DAYS: TAbmesFloatField;
    cdsDataREAL_PRODUCTION_WORKDAYS: TAbmesFloatField;
    cdsDataMAX_OP_DATE_POSITIVE_DIFF: TAbmesFloatField;
    cdsDataMIN_OP_DATE_NEGATIVE_DIFF: TAbmesFloatField;
    cdsDataINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    cdsData_ENTER_SH_STORE_DATE_DIFF: TAbmesFloatField;
    cdsData_REMAINING_QUANTITY: TAbmesFloatField;
    cdsData_MEASURE_ABBREV: TAbmesWideStringField;
    cdsMeasures: TAbmesClientDataSet;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    actToggleQuantityDiffMeasure: TAction;
    cdsData_REMAINING_QUANTITY_PERCENT: TAbmesFloatField;
    cdsData_PERCENT_TEXT: TAbmesWideStringField;
    cdsDataMEASURE_CODE: TAbmesFloatField;
    cdsData_INVESTED_VALUE_DIFF: TAbmesFloatField;
    actInvestedValueDiffMeasure: TAction;
    cdsSpecStructStatus: TAbmesClientDataSet;
    cdsSpecStructStatusLEVEL_NO: TAbmesFloatField;
    cdsSpecStructStatusLEVEL_IS_COMPLETE: TAbmesFloatField;
    cdsSpecStructStatusMAX_LEVEL_NO: TAbmesFloatField;
    cdsSpecStructStatusHAS_MISSING_CHILDREN: TAbmesFloatField;
    cdsSpecStructStatus_DISPLAY_TEXT: TAbmesWideStringField;
    cdsXModelStructStatus: TAbmesClientDataSet;
    cdsXModelStructStatusLEVEL_NO: TAbmesFloatField;
    cdsXModelStructStatusLEVEL_IS_COMPLETE: TAbmesFloatField;
    cdsXModelStructStatusMAX_LEVEL_NO: TAbmesFloatField;
    cdsXModelStructStatusHAS_MISSING_CHILDREN: TAbmesFloatField;
    cdsXModelStructStatus_DISPLAY_TEXT: TAbmesWideStringField;
    dsStructStatus: TDataSource;
    cdsData_STRUCT_STATUS: TAbmesWideStringField;
    cdsDataMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField;
    cdsSpecModelVariants_SHOW_IDENTIFIER: TAbmesWideStringField;
    cdsDataWASTING_SALE_OBJ_BRANCH_CODE: TAbmesFloatField;
    cdsDataWASTING_SALE_OBJ_CODE: TAbmesFloatField;
    cdsDataIS_WASTE_COMPENSATING_ORDER: TAbmesFloatField;
    cdsDataWASTING_SALE_BRANCH_CODE: TAbmesFloatField;
    cdsDataWASTING_SALE_NO: TAbmesFloatField;
    cdsDataWASTING_ML_OJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataWASTING_ML_OJECT_CODE: TAbmesFloatField;
    cdsDataWASTE_COMPENSATOR_COUNT: TAbmesFloatField;
    cdsDataHAS_WASTE: TAbmesFloatField;
    dsBranches: TDataSource;
    actWastingSaleModelStatus: TAction;
    cdsWasteCompensatorsParams: TAbmesClientDataSet;
    cdsWasteCompensatorsParamsIS_WASTE_COMPENSATOR_STATUS: TAbmesFloatField;
    cdsWasteCompensatorsParamsWASTING_SALE_BRANCH_CODE: TAbmesFloatField;
    cdsWasteCompensatorsParamsWASTING_SALE_NO: TAbmesFloatField;
    cdsWasteCompensatorsParamsMIN_ML_STATE_CODE: TAbmesFloatField;
    cdsWasteCompensatorsParamsMAX_ML_STATE_CODE: TAbmesFloatField;
    cdsML: TAbmesClientDataSet;
    cdsMLML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsMLML_OBJECT_CODE: TAbmesFloatField;
    cdsSaleAndML: TAbmesClientDataSet;
    cdsSaleAndMLSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsSaleAndMLSALE_OBJECT_CODE: TAbmesFloatField;
    cdsSaleAndMLML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsSaleAndMLML_OBJECT_CODE: TAbmesFloatField;
    actWasteCompensatorProductionOrders: TAction;
    prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField;
    prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_NAME: TAbmesWideStringField;
    cdsData_MODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsWastingSaleParams: TAbmesClientDataSet;
    cdsWastingSaleParamsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsWastingSaleParamsSALE_OBJECT_CODE: TAbmesFloatField;
    actShowWastingSale: TAction;
    cdsDataWASTING_SALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsSaleAndMLSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsSpecModelVariantsIS_EST_VARIANT: TAbmesFloatField;
    cdsSpecModelVariantsNOTES: TAbmesWideStringField;
    procedure actFormUpdate(Sender: TObject);
    procedure actConcludeSaleExecute(Sender: TObject);
    procedure actAnnulSaleExecute(Sender: TObject);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsDataENTER_SH_STORE_PLAN_BEGIN_DATEChange(Sender: TField);
    procedure cdsDataENTER_SH_STORE_PLAN_END_DATEChange(Sender: TField);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsData_ENTER_SH_STORE_PLAN_PERIOD_PARTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsDataMODEL_SPEC_MODEL_VARIANT_NOChange(Sender: TField);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure CalcProductionStartPlanDate;
    procedure cdsBranchesBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsDataPRODUCTION_DEPT_CODEChange(Sender: TField);
    procedure actModelStatusUpdate(Sender: TObject);
    procedure actModelStatusExecute(Sender: TObject);
    procedure actModelCapacityStatusUpdate(Sender: TObject);
    procedure actModelCapacityStatusExecute(Sender: TObject);
    procedure cdsDataSHIPMENT_STORE_CODEChange(Sender: TField);
    procedure cdsSpecModelVariantsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsDataMANUFACTURE_QUANTITYChange(Sender: TField);
    procedure actToggleQuantityDiffMeasureExecute(Sender: TObject);
    procedure actInvestedValueDiffMeasureExecute(Sender: TObject);
    procedure cdsSpecStructStatusBeforeOpen(DataSet: TDataSet);
    procedure cdsDataPRODUCT_CODEChange(Sender: TField);
    procedure cdsDataBeforeClose(DataSet: TDataSet);
    procedure cdsStructStatusCalcFields(DataSet: TDataSet);
    procedure cdsDataMODEL_OPERATIONS_STATUS_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsSpecModelVariantsCalcFields(DataSet: TDataSet);
    procedure actWastingSaleModelStatusUpdate(Sender: TObject);
    procedure actWastingSaleModelStatusExecute(Sender: TObject);
    procedure actWasteCompensatorProductionOrdersUpdate(Sender: TObject);
    procedure actWasteCompensatorProductionOrdersExecute(Sender: TObject);
    procedure actShowWastingSaleUpdate(Sender: TObject);
    procedure actShowWastingSaleExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
  private
    FSynchronizing: Boolean;
    FOpeningDataSet: Boolean;
    FHadModel: Boolean;
    FFirstOnActivateTriggered: Boolean;
    FStartQuantity: Real;
    FStartProductionDeptCode: Integer;
    FStartProductCode: Integer;
    FStartEnterShipmentStorePlanEndDate: TDateTime;
    procedure RefilterSpecModelVariants;
    procedure SetWastingSaleProcessObjectID;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure UpdateTimeGraphic; virtual;
    procedure GetDateFields(Fields: TList<TField>); virtual;
    procedure GetArrowsInfo(Infos: TObjectList<TArrowInfo>); virtual;
    function CheckProductData: Boolean;
    procedure RefreshSpecModelVariants;
    procedure DoApplyUpdates; override;
    class function CanUseDocs: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure CalcEnterShipmentStorePlanBeginDate(
      ABeginDateField, AEndDateField: TField);
    procedure frEnterShStorePlanDateEndDateChanged(Sender: TObject;
      BeginDate, EndDate: TField);
    procedure SetDiffEditFontColor(edt: TDBEdit);
    function CanCorrect: Boolean;
    procedure BeforeConclude; virtual;

    property HadModel: Boolean read FHadModel;
  public
    procedure Initialize; override;
  end;

  TArrowInfo = class
  private
    FArrow: TAbmesArrow;
    FLabel: TControl;
    FVisible: Boolean;
    FDate: TDateTime;
    FLateness: Real;
    FLatenessShape: TShape;
  public
    constructor Create(AArrow: TAbmesArrow;
      ALabel: TControl;
      AVisible: Boolean;
      ADate: TDateTime;
      ALateness: Real = 0;
      ALatenessShape: TShape = nil);

    property TheArrow: TAbmesArrow read FArrow;
    property TheLabel: TControl read FLabel;
    property TheVisible: Boolean read FVisible;
    property TheDate: TDateTime read FDate;
    property TheLateness: Real read FLateness;
    property TheLatenessShape: TShape read FLatenessShape;
  end;

const
  MaxPartsDiff = 20;

resourcestring
  SNoProductionBranch = 'Не сте задали Клон за Производство!';
  SNoSuchProductionOrder = 'Не съществува такъв ID ОПВ!';

implementation

uses
  uUtils, uClientUtils, uSaleOrderTypes, dMain, AbmesDialogs, uTreeClientUtils,
  uLoginContext, uProductionLevels, uUserActivityConsts, uModelUtils,
  StrUtils, uColorConsts, fModelCapacityStatus, fModelStatus,
  uDocClientUtils, fProductionOrders, uClientDateTime, fProductionOrder,
  uDocUtils, fSale, uScalingUtils;

{$R *.DFM}

resourcestring
  SAccountInvestedValueDiffersFromPlanConfirmation = 'Отчетната Вложена Стойност се различава с повече от %d%% от плановата. Желаете ли приключване?';
  SConfirmConclude = 'Потвърдете приключване?';
  SConfirmAnnul = 'Потвърдете анулиране?';
  SInvalidValuesOfEnterShStoreDates = 'Некоректна стойност на ВрмИнт за постъпване в СПГП';
  SIncorrectProductData = 'Не са въведени Цена на придобиване на Управляемия Обект и/или Счетоводен коефициент';
  SAMaterialListFromDefaultSpecWillBeCreated =
    'Ще бъде създаден МОДЕл от Принципния МОДЕл по подразбиране за Управляемия Обект';
  SManufactureQuantityNeeded =
    'За да създадете МОДЕл, трябва да въведете количество за ОПВ';
  SEnterShipmentStoreEndDateNeeded =
    'За да създадете МОДЕл, трябва да въведете крайна дата на ВрмИнт за постъпване в СГП';
  SOkiduEmployeeNeeded =
    'За да създадете МОДЕл, трябва да въведете Пр&Пл Инженер';
  SPart = 'Част: %d%%';
  SInvalidOkiduCode = 'Некоректен код на Пр&Пл Инженер';
  SCantChangeModelVariant = 'МОДЕл-ът не може да бъде променен (трябва да се употреби ' + sLineBreak +
                            'друг Вариант на Принципния МОДЕл), тъй като по него има' + sLineBreak +
                            'разклонения или тегления!';
  SConfirmChangeRequestDeletion = 'Предложенията за замяна ще бъдат изтрити!';
  SConfirmOperationsModel = 'Какъв МОДЕл желаете да създадете?';
  SOperationsModel = 'Операционен';
  SStagesModel = 'Етапен';
  SCantMakeLateLimiting = 'Не можете да създавате активиран МОДЕл със задна дата на старт';
  SLateLimiting = 'МОДЕл-ът, който ще създадете ще е със задна дата на старт!' + SLineBreak +
                  'Желаете ли да продължите?';

{ TArrowInfo }

constructor TArrowInfo.Create(AArrow: TAbmesArrow; ALabel: TControl;
  AVisible: Boolean; ADate: TDateTime; ALateness: Real;
  ALatenessShape: TShape);
begin
  inherited Create;

  FArrow:= AArrow;
  FLabel:= ALabel;
  FVisible:= AVisible;
  FDate:= ADate;
  FLateness:= ALateness;
  FLatenessShape:= ALatenessShape;
end;

{ TBaseSaleForm }

procedure TBaseSaleForm.OpenDataSets;
begin
  FOpeningDataSet:= True;
  try
    cdsModelDevelopmentTypes.Open;
    cdsBranches.Open;
    cdsWorkPriorities.Open;
    cdsMeasures.Open;

    inherited;
  finally
    FOpeningDataSet:= False;
  end;   { try }
end;

procedure TBaseSaleForm.CloseDataSets;
begin
  inherited;

  cdsMeasures.Close;
  cdsWorkPriorities.Close;
  cdsBranches.Close;
  cdsModelDevelopmentTypes.Close;
end;

procedure TBaseSaleForm.actFormUpdate(Sender: TObject);
var
  cds: TClientDataSet;
begin
  inherited;

  if cdsData.Active then
    begin
      pnlAnnulSale.Visible:=
        cdsDataANNUL_EMPLOYEE_CODE.IsNull and
        (EditMode = emEdit);
      pnlConcludeSale.Visible:=
        cdsDataFINISH_EMPLOYEE_CODE.IsNull and
        cdsDataANNUL_EMPLOYEE_CODE.IsNull and
        (EditMode <> emReadOnly);
      pnlConcludeInfo.Visible:=
        not cdsDataFINISH_EMPLOYEE_CODE.IsNull;

      pnlPrintCheckBox.Visible:=
        cdsData.Active and
        (EditMode = emInsert) or
        (cdsData.ChangeCount > 0) or
        (cdsData.State in dsEditModes);

      pnlPrintButton.Visible:=
        not pnlPrintCheckBox.Visible;
    end;   { if }

  if HadModel then
    cds:= cdsXModelStructStatus
  else
    cds:= cdsSpecStructStatus;

  if (dsStructStatus.DataSet <> cds) then
    dsStructStatus.DataSet:= cds;
end;

procedure TBaseSaleForm.actConcludeSaleExecute(Sender: TObject);
var
  AcceptableDeviation: Real;
begin
  inherited;

  if (MessageDlgEx(SConfirmConclude, mtConfirmation, mbOkCancel, 0) <> mrOK) then
    Exit;

  AcceptableDeviation:= cdsDataPLANNED_INVESTED_SEC_PRICE.AsFloat * LoginContext.MaxSaleInvestedValueDiffPercent;
  if (Abs(cdsDataPLANNED_INVESTED_SEC_PRICE.AsFloat - cdsDataACCOUNT_INVESTED_SEC_PRICE.AsFloat) > AcceptableDeviation) then
    begin
      if ( MessageDlgFmtEx(
             SAccountInvestedValueDiffersFromPlanConfirmation,
             [RealRound(LoginContext.MaxSaleInvestedValueDiffPercent * 100)],
             mtConfirmation,
             mbOkCancel,
             0
            ) <> mrOk
         ) then
        Abort;
    end;

  BeforeConclude;

  CheckEditMode(cdsData);
  cdsDataFINISH_EMPLOYEE_CODE.Value:=
    LoginContext.UserCode;
  cdsDataFINISH_DATE.AsDateTime:= ContextDate;

  actForm.Update;
end;

procedure TBaseSaleForm.actAnnulSaleExecute(Sender: TObject);
begin
  inherited;

  if (MessageDlgEx(SConfirmAnnul, mtConfirmation, mbOkCancel, 0) <> mrOK) then
    Exit;

  CheckEditMode(cdsData);
  cdsDataANNUL_EMPLOYEE_CODE.Value:=
    LoginContext.UserCode;

  actForm.Update;
end;

procedure TBaseSaleForm.actApplyUpdatesExecute(Sender: TObject);
begin
  cdsData.SetOptionalParam('CORRECTIONS', CanCorrect, True);

  inherited;

  if chbPrint.Checked then
    actPrint.Execute;
end;

procedure TBaseSaleForm.UpdateTimeGraphic;
var
  StartDatePoint: Integer;
  EndDatePoint: Integer;
  DateCoef: Real;
  MinDate: TDateTime;
  MaxDate: TDateTime;
  ArrowsInfo: TObjectList<TArrowInfo>;

  procedure GetMinMaxDate(out MinDate, MaxDate: TDateTime);
  var
    Dates: array[1..7] of TDateTime;
    DateCount: Integer;
    i: Integer;
    Fields: TList<TField>;
    f: TField;
  begin
    DateCount:= 1;
    Dates[DateCount]:= ContextDate;

    Fields:= TList<TField>.Create;
    try
      GetDateFields(Fields);

      for f in Fields do
        if not f.IsNull then
          begin
            Inc(DateCount);
            Dates[DateCount]:= f.AsDateTime;
          end;   { if }
    finally
      FreeAndNil(Fields);
    end;

    MinDate:= Dates[1];
    MaxDate:= Dates[1];

    for i:= 2 to DateCount do
      begin
        if (Dates[i] < MinDate) then
          MinDate:= Dates[i];

        if (Dates[i] > MaxDate) then
          MaxDate:= Dates[i];
      end;   { for }
  end;

  procedure SetArrow(AArrow: TAbmesArrow; ALabel: TControl;
    AVisible: Boolean;
    ADate: TDateTime;
    ALateness: Real = 0;
    ALatenessShape: TShape = nil);   { Lateness in days}
  const
    MaxOverDate = 10;
  var
    DateDiff: Real;
    NewPoint: Real;
    DatePoint: Integer;
    NewWidthReal: Real;
    NewWidthInt: Integer;
  begin
    SetVisible([AArrow, ALabel], AVisible);
    if Assigned(ALatenessShape) then
      ALatenessShape.Visible:= AVisible;

    if not AVisible then Exit;  // niama nujda ot smetka shtom ne se vijda

    DateDiff:= ADate - MinDate;
    NewPoint:= StartDatePoint + DateDiff * DateCoef;

    DatePoint:= Trunc(NewPoint);
    if (Frac(NewPoint) >= 0.5) then Inc(DatePoint);

    if (DatePoint > EndDatePoint) then
      DatePoint:= EndDatePoint;

    with AArrow do
      Left:= DatePoint - Points[1].X;

    with ALabel do
      Left:= DatePoint - (Width div 2);

    if Assigned(ALatenessShape) then
      with ALatenessShape do
        begin
          Left:= AArrow.Left + AArrow.Points[1].X + 1;

          if (ALateness < 0) then
            Width:= 0
          else
            begin
              NewWidthReal:= ALateness * DateCoef;
               if (0 < NewWidthReal) and (NewWidthReal < 1) then
                 NewWidthInt:= 1
               else
                 begin
                   NewWidthInt:= Trunc(NewWidthReal);
                   if (Frac(NewWidthReal) >= 0.5) then
                     NewWidthInt:= NewWidthInt + 1;
                 end;

               if (Left + NewWidthInt > EndDatePoint + MaxOverDate) then
                 Width:= EndDatePoint + MaxOverDate - Left
               else
                 Width:= NewWidthInt;
            end;   { if }
        end;   { if, with }
  end;

var
  ai: TArrowInfo;

begin
  // цялата работа не я скалираме

  shpTimeStart.BoundsRect:= Rect(13, 15, 19, 59);

  saTimeLine.BoundsRect:=
    Rect(
      shpTimeStart.BoundsRect.Right-1,
      shpTimeStart.Top,
      pnlTimeLine.Width - 8,
      shpTimeStart.BoundsRect.Bottom
    );
  saTimeLine.Points[1].X:= saTimeLine.Width;

  StartDatePoint:= saTimeLine.Left + 13;  // =31
  EndDatePoint:= saTimeLine.Left + saTimeLine.Width - 46;  // =675;

  shpShipmentStorePlanEnterEndDateLateness.Height:= 4;
  shpShipmentStorePlanEnterEndDateLateness.Top:= 35;
  shpProductionStartPlanDateLateness.Height:= 4;
  shpProductionStartPlanDateLateness.Top:= 38;

  GetMinMaxDate(MinDate, MaxDate);

  if (MaxDate = MinDate) then
    DateCoef:= 0
  else
    DateCoef:=
      (EndDatePoint - StartDatePoint + 1) /
      (MaxDate - MinDate);

  ArrowsInfo:= TObjectList<TArrowInfo>.Create;
  try
    GetArrowsInfo(ArrowsInfo);

    for ai in ArrowsInfo do
      begin
        SetArrow(
          ai.TheArrow, ai.TheLabel, ai.TheVisible, ai.TheDate, ai.TheLateness, ai.TheLatenessShape);
        ai.TheArrow.Top:= 41;
        ai.TheLabel.Top:= ai.TheArrow.Top + ai.TheArrow.Height;// ai.TheArrow.Points[1].Y;
        ai.TheLabel.Left:= ai.TheLabel.Left - 20 + ScalePixels(20);
      end;
  finally
    FreeAndNil(ArrowsInfo);
  end;

  SetArrow(saToday, lToday, True, ContextDate);
  saToday.Top:= 6;

  with saToday do
    if (Left < 100) then
      begin
        Points[0].X:= Width;
        lToday.Left:= Left + Width + 3;
      end
    else
      begin
        Points[0].X:= 0;
        lToday.Left:= Left - lToday.Width - 3;
      end;
end;

procedure TBaseSaleForm.GetDateFields(Fields: TList<TField>);
begin
  Fields.Add(cdsDataPRODUCTION_START_PLAN_DATE);
  Fields.Add(cdsDataENTER_SH_STORE_PLAN_END_DATE);
end;

procedure TBaseSaleForm.GetArrowsInfo(Infos: TObjectList<TArrowInfo>);

  function FixDate(ADateField: TAbmesSQLTimeStampField): TDateTime;
  begin
    Assert(Assigned(ADateField));

    if ADateField.IsNull then
      Result:= ContextDate
    else
      Result:= ADateField.AsDateTime;
  end;

begin
  Infos.Add(TArrowInfo.Create(
    saProductionStartPlanDate,
    tProductionStartPlanDate,
    not cdsDataPRODUCTION_START_PLAN_DATE.IsNull,
    cdsDataPRODUCTION_START_PLAN_DATE.AsDateTime,
    FixDate(cdsDataFIRST_OUT_DATE) - cdsDataPRODUCTION_START_PLAN_DATE.AsDateTime,
    shpProductionStartPlanDateLateness
  ));

  Infos.Add(TArrowInfo.Create(
    saShipmentStorePlanEnterEndDate,
    tShipmentStorePlanEnterEndDate,
    not cdsDataENTER_SH_STORE_PLAN_END_DATE.IsNull,
    cdsDataENTER_SH_STORE_PLAN_END_DATE.AsDateTime,
    FixDate(cdsDataLAST_SHIPMENT_STORE_IN_DATE) - cdsDataENTER_SH_STORE_PLAN_END_DATE.AsDateTime,
    shpShipmentStorePlanEnterEndDateLateness
  ));
end;

procedure TBaseSaleForm.dsDataDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if (Field = cdsDataSHIPMENT_DATE) or
     (Field = cdsDataENTER_SH_STORE_PLAN_END_DATE) or
     (Field = cdsDataPRODUCTION_START_PLAN_DATE) then
    UpdateTimeGraphic;
end;

procedure TBaseSaleForm.cdsDataCalcFields(DataSet: TDataSet);
var
  PeriodLength: Integer;
  Gone: Integer;
begin
  inherited;

  cdsData_HAS_MODEL.AsBoolean:=
    not cdsDataMODEL_SPEC_MODEL_VARIANT_NO.IsNull;

  if cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE.IsNull or
     cdsDataENTER_SH_STORE_PLAN_END_DATE.IsNull then
    cdsData_ENTER_SH_STORE_PLAN_PERIOD_PART.Value:= 0
  else
    begin
      PeriodLength:=
        RealRound(cdsDataENTER_SH_STORE_PLAN_END_DATE.AsDateTime -
              cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE.AsDateTime) + 1;
      Gone:=
        Trunc(ContextDate - cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE.AsDateTime) + 1;

      if (Gone < 0) then Gone:= 0;

      if (Gone >= PeriodLength) then
        cdsData_ENTER_SH_STORE_PLAN_PERIOD_PART.Value:= 100
      else
        cdsData_ENTER_SH_STORE_PLAN_PERIOD_PART.Value:=
          Trunc(Gone / PeriodLength * 100);
    end;

  if (cdsDataQUANTITY.AsFloat = 0) then
    cdsData_COMPLETED_QUANTITY_PART.Value:= 0
  else
    cdsData_COMPLETED_QUANTITY_PART.Value:=
      RealRound(cdsDataSHIPMENT_STORE_CURR_QUANTITY.Value /
            cdsDataQUANTITY.Value * 100);

  cdsData_PRODUCTION_START_PLAN_DATE_SHOW.Assign(cdsDataPRODUCTION_START_PLAN_DATE);
  cdsData_ENTER_SH_STORE_PLAN_END_DATE_SHOW.Assign(cdsDataENTER_SH_STORE_PLAN_END_DATE);
  cdsData_TODAY.AsDateTime:= ContextDate;

  if (cdsDataML_STATE_CODE.AsInteger >= Low(MLStateNames)) and
     (cdsDataML_STATE_CODE.AsInteger <= High(MLStateNames)) then
    begin
      cdsData_ML_STATE_FULL_NAME.AsString:= MLStateNames[cdsDataML_STATE_CODE.AsInteger];
      cdsData_ML_STATE_ABBREV.AsString:= LeftStr(MLStateNames[cdsDataML_STATE_CODE.AsInteger], Pos(' ', MLStateNames[cdsDataML_STATE_CODE.AsInteger]) - 1);
      cdsData_ML_STATE_COLOR.AsInteger:= ModelStateColors[cdsDataML_STATE_CODE.AsInteger];
    end
  else
    begin
      cdsData_ML_STATE_FULL_NAME.Clear;
      cdsData_ML_STATE_ABBREV.Clear;
      cdsData_ML_STATE_COLOR.AsInteger:= clWindow;
    end;

  if (cdsDataPLANNED_INVESTED_SEC_PRICE.AsFloat = 0) then
    cdsData_INVESTED_PRICE_DIFF_PERCENT.Clear
  else
    cdsData_INVESTED_PRICE_DIFF_PERCENT.AsFloat:=
      (1 - (cdsDataACCOUNT_INVESTED_SEC_PRICE.AsFloat / cdsDataPLANNED_INVESTED_SEC_PRICE.AsFloat)) * 100;

  if cdsDataPRODUCTION_START_PLAN_DATE.IsNull or not cdsDataANNUL_EMPLOYEE_CODE.IsNull then
    cdsData_PRODUCTION_START_DATE_DIFF.Clear
  else
    begin
      if cdsDataMIN_MLL_STORE_DEAL_DATE.IsNull then
        cdsData_PRODUCTION_START_DATE_DIFF.AsInteger:=
          Trunc(cdsDataPRODUCTION_START_PLAN_DATE.AsDateTime - ContextDate)
      else
        cdsData_PRODUCTION_START_DATE_DIFF.AsInteger:=
          Trunc(cdsDataPRODUCTION_START_PLAN_DATE.AsDateTime - cdsDataMIN_MLL_STORE_DEAL_DATE.AsDateTime);
    end;

  if cdsDataENTER_SH_STORE_PLAN_END_DATE.IsNull or not cdsDataANNUL_EMPLOYEE_CODE.IsNull then
    cdsData_ENTER_SH_STORE_DATE_DIFF.Clear
  else
    begin
      if cdsDataLAST_SHIPMENT_STORE_IN_DATE.IsNull or (cdsData_REMAINING_QUANTITY.AsFloat < 0) then
        begin
          if cdsDataFINISH_DATE.IsNull then
            cdsData_ENTER_SH_STORE_DATE_DIFF.AsInteger:=
              Trunc(cdsDataENTER_SH_STORE_PLAN_END_DATE.AsDateTime - ContextDate)
          else
            cdsData_ENTER_SH_STORE_DATE_DIFF.AsInteger:=
              Trunc(cdsDataENTER_SH_STORE_PLAN_END_DATE.AsDateTime - cdsDataFINISH_DATE.AsDateTime);
        end
      else
        cdsData_ENTER_SH_STORE_DATE_DIFF.AsInteger:=
          Trunc(cdsDataENTER_SH_STORE_PLAN_END_DATE.AsDateTime - cdsDataLAST_SHIPMENT_STORE_IN_DATE.AsDateTime);
    end;

  if (cdsDataQUANTITY.AsFloat = 0) then
    cdsData_REMAINING_QUANTITY_PERCENT.AsFloat:= 0
  else
    cdsData_REMAINING_QUANTITY_PERCENT.AsFloat:=
      cdsData_REMAINING_QUANTITY.AsFloat / cdsDataQUANTITY.AsFloat * 100;

  cdsData_PERCENT_TEXT.AsString:= '%';

  cdsData_INVESTED_VALUE_DIFF.AsFloat:=
    cdsDataACCOUNT_INVESTED_SEC_PRICE.AsFloat - cdsDataPLANNED_INVESTED_SEC_PRICE.AsFloat;

  if dsStructStatus.DataSet.Active then
    cdsData_STRUCT_STATUS.AsString:= dsStructStatus.DataSet.FieldByName('_DISPLAY_TEXT').AsString;
end;

procedure TBaseSaleForm.cdsDataENTER_SH_STORE_PLAN_BEGIN_DATEChange(
  Sender: TField);
begin
  inherited;

  if FSynchronizing or
     not cdsDataENTER_SH_STORE_PLAN_END_DATE.CanModify then
    Exit;

  FSynchronizing:= True;
  try
    SyncFields(Sender, cdsDataENTER_SH_STORE_PLAN_END_DATE);
  finally
    FSynchronizing:= False;
  end;   { try }
end;

procedure TBaseSaleForm.cdsDataENTER_SH_STORE_PLAN_END_DATEChange(
  Sender: TField);
begin
  inherited;

  if FSynchronizing or
     not cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE.CanModify then
    Exit;

  FSynchronizing:= True;
  try
    SyncFields(Sender, cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE);
  finally
    FSynchronizing:= False;
  end;   { try }

  CalcProductionStartPlanDate;

  RefreshSpecModelVariants;
end;

procedure TBaseSaleForm.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE.IsNull <> cdsDataENTER_SH_STORE_PLAN_END_DATE.IsNull) or
     (cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE.AsDateTime > cdsDataENTER_SH_STORE_PLAN_END_DATE.AsDateTime) then
    begin
      cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE.FocusControl;
      raise Exception.Create(SInvalidValuesOfEnterShStoreDates);
    end;

  SetWastingSaleProcessObjectID;
end;

function TBaseSaleForm.CheckProductData: Boolean;
begin
  Result:=
    cdsDataPRODUCT_CODE.IsNull or
    (not cdsDataACCOUNT_MEASURE_COEF.IsNull);

  if not Result then
    ShowMessageEx(SIncorrectProductData);
end;

procedure TBaseSaleForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (ModalResult = mrOK) then
    begin
      ActiveControl:= btnOK;

      if not CheckProductData then Abort;

      if not cdsDataMODEL_SPEC_MODEL_VARIANT_NO.IsNull then
        begin
          if (cdsDataMANUFACTURE_QUANTITY.AsFloat = 0) then
            begin
              cdsDataMANUFACTURE_QUANTITY.FocusControl;
              raise Exception.Create(SManufactureQuantityNeeded);
            end;

          if cdsDataENTER_SH_STORE_PLAN_END_DATE.IsNull then
            begin
              cdsDataENTER_SH_STORE_PLAN_END_DATE.FocusControl;
              raise Exception.Create(SEnterShipmentStoreEndDateNeeded);
            end;

          if cdsDataOKIDU_EMPLOYEE_CODE.IsNull then
            begin
              cdsDataOKIDU_EMPLOYEE_CODE.FocusControl;
              raise Exception.Create(SOkiduEmployeeNeeded);
            end;

          if not FHadModel then
            begin
              if LoginContext.AutoLimitedDefaultModels and
                 (ContextDate > cdsDataPRODUCTION_START_PLAN_DATE.AsDateTime) then
                begin
                  if not LoginContext.AllowLateMLLimiting then
                    raise Exception.Create(SCantMakeLateLimiting);

                  if (MessageDlgEx(SLateLimiting, mtWarning, mbOKCancel, 0) <> mrOk) then
                    Abort;
                end;

              case MessageDlgBtn(SConfirmOperationsModel, mtConfirmation, [SStagesModel, SOperationsModel, bcCancel], 0) of
                0: cdsDataIS_OPERATIONS_MODEL.AsBoolean:= False;
                1: cdsDataIS_OPERATIONS_MODEL.AsBoolean:= True;
              else
                Abort;
              end;
            end;
        end;   { if }
    end;

  inherited;
end;

procedure TBaseSaleForm.cdsData_ENTER_SH_STORE_PLAN_PERIOD_PARTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= Format(SPart, [Sender.AsInteger]);
end;

procedure TBaseSaleForm.cdsDataMODEL_SPEC_MODEL_VARIANT_NOChange(
  Sender: TField);
begin
  inherited;

  if cdsDataMODEL_SPEC_MODEL_VARIANT_NO.IsNull then
    begin
      cdsDataMODEL_SPEC_VERSION_NO.Clear;
      cdsDataPRODUCTION_WORKDAYS.Clear;
    end
  else   { if }
    begin
      cdsDataMODEL_SPEC_VERSION_NO.AsVariant:=
        cdsSpecModelVariants.Lookup('SPEC_MODEL_VARIANT_NO',
          cdsDataMODEL_SPEC_MODEL_VARIANT_NO.AsInteger, 'SPEC_VERSION_NO');

      cdsDataSHIPMENT_STORE_CODE.Assign(cdsSpecModelVariantsRESULT_STORE_CODE);
      cdsDataPRODUCTION_WORKDAYS.Assign(cdsSpecModelVariantsPRODUCTION_WORKDAYS);
      cdsDataENTER_RESULT_STORE_WORKDAYS.Assign(cdsSpecModelVariantsENTER_RESULT_STORE_WORKDAYS);
    end;

  CalcProductionStartPlanDate;
  CalcEnterShipmentStorePlanBeginDate(
    cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE, cdsDataENTER_SH_STORE_PLAN_END_DATE);
end;

procedure TBaseSaleForm.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataSHIPMENT_STORE_CURR_QUANTITY.Clear;
  cdsDataPLANNED_INVESTED_SEC_PRICE.Clear;
  cdsDataACCOUNT_INVESTED_SEC_PRICE.Clear;
  cdsDataML_OBJECT_CODE.Clear;
  cdsDataML_OBJECT_BRANCH_CODE.Clear;
  FHadModel:= False;
end;

procedure TBaseSaleForm.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;

  FHadModel:= (not cdsDataMODEL_CREATE_DATE.IsNull);
  FStartQuantity:= cdsDataQUANTITY.AsFloat;
  FStartProductionDeptCode:= cdsDataPRODUCTION_DEPT_CODE.AsInteger;
  FStartProductCode:= cdsDataPRODUCT_CODE.AsInteger;
  FStartEnterShipmentStorePlanEndDate:= cdsDataENTER_SH_STORE_PLAN_END_DATE.AsDateTime;

  RefreshSpecModelVariants;

  cdsSpecStructStatus.Open;
  SetParams(cdsXModelStructStatus.Params, cdsData);
  cdsXModelStructStatus.Open;
end;

procedure TBaseSaleForm.RefreshSpecModelVariants;
begin
  with cdsSpecModelVariants do
    begin
      Close;

      Params.ParamByName('SPEC_PRODUCT_CODE').AsInteger:=
        cdsDataPRODUCT_CODE.AsInteger;
      Params.ParamByName('AUTHORIZATION_OF_OPERATIONS').AsInteger:=
        Ord(LoginContext.ProductionLevelCode = plOperation);
      Params.ParamByName('TO_DATE').AsDateTime:=
        cdsDataENTER_SH_STORE_PLAN_END_DATE.AsDateTime;

      Open;
    end;  { with }
end;

procedure TBaseSaleForm.FormActivate(Sender: TObject);
begin
  inherited;

  if FFirstOnActivateTriggered then Exit;
  FFirstOnActivateTriggered:= True;

  actForm.Update;
  Application.ProcessMessages;

  if (EditMode <> emInsert) then
    CheckProductData;

  UpdateTimeGraphic;
end;

procedure TBaseSaleForm.CalcProductionStartPlanDate;
begin
  if cdsDataPRODUCTION_WORKDAYS.IsNull or
     cdsDataENTER_SH_STORE_PLAN_END_DATE.IsNull then
    cdsDataPRODUCTION_START_PLAN_DATE.Clear
  else   { if }
    cdsDataPRODUCTION_START_PLAN_DATE.AsDateTime:=
      dmMain.IncDateByWorkdays(cdsDataENTER_SH_STORE_PLAN_END_DATE.AsDateTime + 1,
        -cdsDataPRODUCTION_WORKDAYS.AsInteger);
end;

procedure TBaseSaleForm.cdsBranchesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsBranches.Filtered:= (EditMode = emInsert);
end;

procedure TBaseSaleForm.FormCreate(Sender: TObject);
begin
  inherited;

  RegisterDateFields([
    cdsData_PRODUCTION_START_PLAN_DATE_SHOW,
    cdsData_ENTER_SH_STORE_PLAN_END_DATE_SHOW,
    cdsData_TODAY]);

  frFinishDate.FieldNames:= 'FINISH_DATE';

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsDataPLANNED_INVESTED_SEC_PRICE,
      cdsDataACCOUNT_INVESTED_SEC_PRICE,
      cdsData_INVESTED_VALUE_DIFF,
      cdsData_INVESTED_PRICE_DIFF_PERCENT]);
end;

procedure TBaseSaleForm.FormShow(Sender: TObject);
begin
  inherited;
  UpdateTimeGraphic;
end;

procedure TBaseSaleForm.cdsDataPRODUCTION_DEPT_CODEChange(Sender: TField);
begin
  inherited;

  DoDeptFieldChanged(cdsDataPRODUCTION_DEPT_CODE,
    cdsDataPRODUCTION_DEPT_NAME, cdsDataPRODUCTION_DEPT_IDENTIFIER);

  RefilterSpecModelVariants;
end;

procedure TBaseSaleForm.actModelStatusUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    cdsData.Active and
    (not cdsDataML_OBJECT_CODE.IsNull);
end;

procedure TBaseSaleForm.actShowWastingSaleExecute(Sender: TObject);
begin
  inherited;
  cdsWastingSaleParams.CreateDataSet;
  try
    cdsWastingSaleParams.AppendRecord([cdsDataWASTING_SALE_OBJ_BRANCH_CODE.AsInteger, cdsDataWASTING_SALE_OBJ_CODE.AsInteger]);

    if (cdsDataWASTING_SALE_ORDER_TYPE_CODE.AsInteger = sotNormalSaleOrder) then
      TfmSale.ShowForm(dmDocClient, cdsWastingSaleParams, emReadOnly, 0, True)
    else
      TfmProductionOrder.ShowForm(dmDocClient, cdsWastingSaleParams, emReadOnly);
  finally
    cdsWastingSaleParams.Close;
  end;  { try }
end;

procedure TBaseSaleForm.actShowWastingSaleUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    not cdsDataWASTING_SALE_OBJ_BRANCH_CODE.IsNull;
end;

procedure TBaseSaleForm.actModelStatusExecute(Sender: TObject);
begin
  inherited;
  TfmModelStatus.ShowForm(nil, cdsData, EditMode);
end;

procedure TBaseSaleForm.Initialize;
begin
  inherited;
  cdsSpecModelVariants.Filtered:= True;

  if (EditMode = emInsert) and cdsData.FieldByName('DOC_CODE').IsNull then
    dmDocClient.DSInitDoc(dotSale, cdsData);
end;

procedure TBaseSaleForm.DoApplyUpdates;
var
  StartSpecModelVariantNo: Integer;
  NeededSpecModelVariantNo: Integer;
  ForkCount: Integer;
  OutStoreDealCount: Integer;
  WaitingChangeRequestCount: Integer;
  SaveCursor: TCursor;
begin
  if FHadModel and
     (EditMode = emEdit) and
     ( (FStartQuantity <> cdsDataQUANTITY.AsFloat) or
       (FStartProductionDeptCode <> cdsDataPRODUCTION_DEPT_CODE.AsInteger) or
       (FStartProductCode <> cdsDataPRODUCT_CODE.AsInteger) ) then
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crHourGlass;
      try
        StartSpecModelVariantNo:=
          dmMain.SvrXModels.GetNeededSpecModelVariantNo(
            FStartProductCode,
            FStartProductionDeptCode,
            FStartQuantity,
            FStartEnterShipmentStorePlanEndDate);

        NeededSpecModelVariantNo:=
          dmMain.SvrXModels.GetNeededSpecModelVariantNo(
            cdsDataPRODUCT_CODE.AsInteger,
            cdsDataPRODUCTION_DEPT_CODE.AsInteger,
            cdsDataQUANTITY.AsFloat,
            cdsDataENTER_SH_STORE_PLAN_END_DATE.AsDateTime);
      finally
        Screen.Cursor:= SaveCursor;
      end;   { try SaveCursor }

      if (NeededSpecModelVariantNo > 0) and
         (StartSpecModelVariantNo <> NeededSpecModelVariantNo) then
        begin
          SaveCursor:= Screen.Cursor;
          Screen.Cursor:= crHourGlass;
          try
            dmMain.SvrXModels.GetModelInfo(
              cdsDataML_OBJECT_BRANCH_CODE.AsInteger,
              cdsDataML_OBJECT_CODE.AsInteger,
              ForkCount,
              OutStoreDealCount,
              WaitingChangeRequestCount);
          finally
            Screen.Cursor:= SaveCursor;
          end;   { try SaveCursor }

          if (ForkCount > 0) or (OutStoreDealCount > 0) then
            raise Exception.Create(SCantChangeModelVariant);

          if (WaitingChangeRequestCount > 0) and
             (MessageDlgEx(SConfirmChangeRequestDeletion, mtWarning, mbOKCancel, 0) <> mrOk) then
            Abort;

          CheckEditMode(cdsData);
          cdsDataMODEL_SPEC_MODEL_VARIANT_NO.AsInteger:= NeededSpecModelVariantNo;
        end;   { if }
    end;

  inherited;
end;

function TBaseSaleForm.CanCorrect: Boolean;
begin
  Result:=
    cdsDataFINISH_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

class function TBaseSaleForm.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TBaseSaleForm.actModelCapacityStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    (not cdsDataML_OBJECT_CODE.IsNull);
end;

procedure TBaseSaleForm.actModelCapacityStatusExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaModelCapacityStatus);
  TfmModelCapacityStatus.ShowForm(nil, cdsData, EditMode);
end;

procedure TBaseSaleForm.cdsDataSHIPMENT_STORE_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsDataSHIPMENT_STORE_CODE, nil, cdsDataSHIPMENT_STORE_IDENTIFIER);
end;

procedure TBaseSaleForm.cdsSpecModelVariantsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=
    HadModel or
    ( (cdsSpecModelVariantsMAIN_DEPT_CODE.AsInteger = cdsDataPRODUCTION_DEPT_CODE.AsInteger) and
      (cdsSpecModelVariantsMIN_WORK_QUANTITY.AsFloat < cdsDataMANUFACTURE_QUANTITY.AsFloat) and
      (cdsDataMANUFACTURE_QUANTITY.AsFloat <= cdsSpecModelVariantsMAX_WORK_QUANTITY.AsFloat) );
end;

procedure TBaseSaleForm.RefilterSpecModelVariants;
begin
  with cdsSpecModelVariants do
    begin
      DisableControls;
      try
        Filtered:= False;
        Filtered:= True;

        if (cdsDataMODEL_SPEC_MODEL_VARIANT_NO.AsInteger > 0) and
           not Locate('SPEC_MODEL_VARIANT_NO', cdsDataMODEL_SPEC_MODEL_VARIANT_NO.AsInteger, []) then
          begin
            Assert(cdsData.State in dsEditModes);
            cdsDataMODEL_SPEC_MODEL_VARIANT_NO.Clear;
          end;
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TBaseSaleForm.cdsDataMANUFACTURE_QUANTITYChange(Sender: TField);
begin
  inherited;
  RefilterSpecModelVariants;
end;

procedure TBaseSaleForm.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frFinishDate) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  inherited;
end;

procedure TBaseSaleForm.CalcEnterShipmentStorePlanBeginDate(
  ABeginDateField, AEndDateField: TField);
begin
  if (not AEndDateField.IsNull) and
     (not cdsDataENTER_RESULT_STORE_WORKDAYS.IsNull) then
   ABeginDateField.AsDateTime:=
      dmMain.IncDateByWorkdays(AEndDateField.AsDateTime + 1,
        -cdsDataENTER_RESULT_STORE_WORKDAYS.AsInteger);
end;

procedure TBaseSaleForm.frEnterShStorePlanDateEndDateChanged(
  Sender: TObject; BeginDate, EndDate: TField);
begin
  if HadModel or (not cdsDataMODEL_SPEC_MODEL_VARIANT_NO.IsNull) then
    begin
      if EndDate.IsNull then
        BeginDate.Clear
      else
        CalcEnterShipmentStorePlanBeginDate(BeginDate, EndDate);
    end;
end;

procedure TBaseSaleForm.actToggleQuantityDiffMeasureExecute(
  Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    Checked:= not Checked;
end;

procedure TBaseSaleForm.actInvestedValueDiffMeasureExecute(
  Sender: TObject);
begin
  inherited;
  
  with Sender as TAction do
    Checked:= not Checked;
end;

procedure TBaseSaleForm.cdsSpecStructStatusBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsSpecStructStatus.Params.ParamByName('SPEC_PRODUCT_CODE').AsInteger:=
    cdsDataPRODUCT_CODE.AsInteger;
end;

procedure TBaseSaleForm.cdsDataPRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  cdsSpecStructStatus.Close;
  cdsSpecStructStatus.Open;
end;

procedure TBaseSaleForm.cdsDataBeforeClose(DataSet: TDataSet);
begin
  inherited;
  cdsXModelStructStatus.Close;
  cdsSpecStructStatus.Close;
end;

procedure TBaseSaleForm.cdsStructStatusCalcFields(DataSet: TDataSet);
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

procedure TBaseSaleForm.cdsDataMODEL_OPERATIONS_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  ModelOperationsStatusFieldGetText(Sender, Text, DisplayText);
end;

procedure TBaseSaleForm.SetDiffEditFontColor(edt: TDBEdit);
begin
  if edt.Field.DataSet.Active and
     (edt.Field.AsFloat < 0) then
    edt.Font.Color:= clRed
  else
    edt.Font.Color:= clWindowText;
end;

procedure TBaseSaleForm.cdsSpecModelVariantsCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsSpecModelVariants_SHOW_IDENTIFIER.AsString:=
    cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsString + '. ' +
    cdsSpecModelVariantsMODEL_VARIANT_IDENTIFIER.AsString;
end;

procedure TBaseSaleForm.actWastingSaleModelStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    (not cdsDataWASTING_SALE_BRANCH_CODE.IsNull) and
    (not cdsDataWASTING_SALE_NO.IsNull);
end;

procedure TBaseSaleForm.BeforeConclude;
begin
  // do nothing
end;

procedure TBaseSaleForm.actWastingSaleModelStatusExecute(Sender: TObject);
begin
  inherited;

  SetWastingSaleProcessObjectID;

  if cdsDataWASTING_ML_OJECT_CODE.IsNull then
    actShowWastingSale.Execute
  else
    begin
      cdsML.CreateDataSet;
      try
        cdsML.AppendRecord([cdsDataWASTING_ML_OJECT_BRANCH_CODE.AsInteger, cdsDataWASTING_ML_OJECT_CODE.AsInteger]);

        TfmModelStatus.ShowForm(dmDocClient, cdsML, emReadOnly);
      finally
        cdsML.Close;
      end;  { try }
    end;
end;

procedure TBaseSaleForm.actWasteCompensatorProductionOrdersUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    (cdsDataWASTE_COMPENSATOR_COUNT.AsInteger > 0);
end;

procedure TBaseSaleForm.actWasteCompensatorProductionOrdersExecute(
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

    TfmProductionOrders.ShowForm(nil, cdsWasteCompensatorsParams, emReadOnly, False, 0);
  finally
    cdsWasteCompensatorsParams.Close;
  end;  { try }
end;

procedure TBaseSaleForm.SetWastingSaleProcessObjectID;
begin
  if (cdsData.State in dsEditModes) then
    with cdsSaleAndML do
      begin
        if not cdsDataWASTING_SALE_BRANCH_CODE.IsNull then
          CheckRequiredField(cdsDataWASTING_SALE_NO);

        if not cdsDataWASTING_SALE_NO.IsNull then
          CheckRequiredField(cdsDataWASTING_SALE_BRANCH_CODE);

        if cdsDataWASTING_SALE_BRANCH_CODE.IsNull and cdsDataWASTING_SALE_NO.IsNull then
          begin
            cdsDataWASTING_SALE_OBJ_BRANCH_CODE.Clear;
            cdsDataWASTING_SALE_OBJ_CODE.Clear;
            cdsDataWASTING_ML_OJECT_BRANCH_CODE.Clear;
            cdsDataWASTING_ML_OJECT_CODE.Clear;
          end
        else
          begin
            Params.ParamByName('SALE_BRANCH_CODE').AsInteger:= cdsDataWASTING_SALE_BRANCH_CODE.AsInteger;
            Params.ParamByName('SALE_NO').AsInteger:= cdsDataWASTING_SALE_NO.AsInteger;

            Open;
            try
              if (RecordCount = 0) then
                begin
                  cdsDataWASTING_SALE_BRANCH_CODE.FocusControl;
                  raise Exception.Create(SNoSuchProductionOrder);
                end;

              cdsDataWASTING_SALE_OBJ_BRANCH_CODE.AsInteger:= cdsSaleAndMLSALE_OBJECT_BRANCH_CODE.AsInteger;
              cdsDataWASTING_SALE_OBJ_CODE.AsInteger:= cdsSaleAndMLSALE_OBJECT_CODE.AsInteger;
              cdsDataWASTING_ML_OJECT_BRANCH_CODE.AsVariant:= cdsSaleAndMLML_OBJECT_BRANCH_CODE.AsVariant;
              cdsDataWASTING_ML_OJECT_CODE.AsVariant:= cdsSaleAndMLML_OBJECT_CODE.AsVariant;
              cdsDataWASTING_SALE_ORDER_TYPE_CODE.AsVariant:= cdsSaleAndMLSALE_ORDER_TYPE_CODE.AsVariant;
            finally
              Close;
            end;  { try }
          end;
      end;  { with }
end;

end.

