unit fSale;

interface
                                       
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, Mask, JvToolEdit,
  AbmesArrow, fSaleShipments, fBaseSaleForm, AbmesClientDataSet, AbmesFields,
  AbmesDBCheckBox, Menus, JvButtons, fBaseFrame, fDBFrame, fFieldEditFrame,
  Variants, uClientTypes, dDocClient, ToolWin,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDeptFieldEditFrameBald,
  fProductFieldEditFrame, fProductFieldEditFrameBald, fDateIntervalFrame,
  fDateFieldEditFrame, JvExControls, JvComponent,
  JvCaptionButton, DBCtrls, JvDBLookup, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, JvExStdCtrls, JvDBCombobox, JvComponentBase,
  fStatusAbstract, uProducts, fParRelProductStatus, JvCombobox,
  Generics.Collections, System.Actions;

type
  TfmSale = class(TBaseSaleForm)
    chbSosOkidu: TAbmesDBCheckBox;
    pcMain: TPageControl;
    cdsDataCLIENT_SHORT_NAME: TAbmesWideStringField;
    cdsDataREQUEST_SHOW_NO: TAbmesWideStringField;
    cdsDataRECEIVE_PLACE_NAME: TAbmesWideStringField;
    cdsDataCURRENCY_ABBREV: TAbmesWideStringField;
    cdsDataTOTAL_PRICE: TAbmesFloatField;
    cdsDataTOTAL_PRICE_IN_SEC_CURRENCY: TAbmesFloatField;
    cdsDataPAID_PART: TAbmesFloatField;
    cdsDataqrySaleShipments: TDataSetField;
    cdsData_LACK_QUANTITY: TAbmesFloatField;
    saShipmentDate: TAbmesArrow;
    tShipmentDate: TDBText;
    shpShipmentDateLateness: TShape;
    cdsDataSALE_BRANCH_NO: TAbmesFloatField;
    cdsDataSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsDataMEASURE_ABBREV: TAbmesWideStringField;
    saReceiveDate: TAbmesArrow;
    tReceiveDate: TDBText;
    cdsDataRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDataMANAGER_OKIDU_NAME: TAbmesWideStringField;
    cdsData_SHIPMENT_DATE_SHOW: TAbmesSQLTimeStampField;
    cdsData_RECEIVE_DATE_SHOW: TAbmesSQLTimeStampField;
    cdsDataSINGLE_PRICE_IN_SEC_CURRENCY: TAbmesFloatField;
    cdsDataCLIENT_PRODUCT_SIGNATURE: TAbmesWideStringField;
    cdsDataCLIENT_COUNTRY_ABBREV: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    gbSaleOrder: TGroupBox;
    lblRequestBranch: TLabel;
    edtRequestBranch: TDBEdit;
    lblRequestNo: TLabel;
    edtRequestNo: TDBEdit;
    lblRequestLineNo: TLabel;
    edtRequestLineNo: TDBEdit;
    lblClientRequestNo: TLabel;
    edtClientRequestNo: TDBEdit;
    cdsData_REQUEST_BRANCH_IDENTIFIER: TAbmesWideStringField;
    gbSale: TGroupBox;
    lblSaleBranch: TLabel;
    lblSaleNo: TLabel;
    lblSaleType: TLabel;
    edtSaleType: TDBEdit;
    edtSaleNo: TDBEdit;
    edtSaleBranch: TDBEdit;
    cdsData_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    pnlDocs: TToolBar;
    btnDocs: TSpeedButton;
    gbClient: TGroupBox;
    lblClientName: TLabel;
    edtClientName: TDBEdit;
    edtClientNo: TDBEdit;
    lblClientNo: TLabel;
    edtClientCountry: TDBEdit;
    lblClientCountry: TLabel;
    gbProduct: TGroupBox;
    frProduct: TfrProductFieldEditFrameBald;
    lblTreeNodeName: TLabel;
    lblClientProductSignature: TLabel;
    edtClientProductSignature: TDBEdit;
    gbStore: TGroupBox;
    lblShipmentStore: TLabel;
    lblShipmentDate: TLabel;
    edtShipmentDateColor: TEdit;
    frShipmentDate: TfrDateFieldEditFrame;
    lblReceivePlace: TLabel;
    edtReceivePlace: TDBEdit;
    lblTransport: TLabel;
    edtTransport: TDBEdit;
    lblShipmentType: TLabel;
    edtShipmentType: TDBEdit;
    cdsDataPRIORITY_CODE: TAbmesFloatField;
    cdsDataPRIORITY_NO: TAbmesFloatField;
    cdsDataPRIORITY_COLOR: TAbmesFloatField;
    cdsDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    tsProductionOrder: TTabSheet;
    pnlProductionOrder: TPanel;
    gbProductionOrder: TGroupBox;
    lblMLStatus: TLabel;
    lblSaleBranch2: TLabel;
    lblSaleNo2: TLabel;
    lblSaleType2: TLabel;
    lblProductionOrderType: TLabel;
    edtMLStatus: TDBEdit;
    edtSaleBranch2: TDBEdit;
    edtSaleNo2: TDBEdit;
    edtSaleType2: TDBEdit;
    edtPriority: TDBEdit;
    lblPriority: TLabel;
    lblPriority2: TLabel;
    edtPriority2: TDBEdit;
    gbProductionStart: TGroupBox;
    frProductionPlanStartDate: TfrDateFieldEditFrame;
    edtProductionStartPlanDateColor: TEdit;
    lblProductionStartReserveDays: TLabel;
    edtProductionStartDateDiff: TDBEdit;
    edtStartCoef: TDBEdit;
    edtStartCoef1: TLabel;
    lblProductionPlanStartDate: TLabel;
    gbProduction: TGroupBox;
    lblStartAfterLimitingDays: TLabel;
    lblProductionDept: TLabel;
    lblModelLegth: TLabel;
    lblPlanModelLength: TLabel;
    lblRealModelLength: TLabel;
    edtProductionDateDiff: TLabel;
    lblProductionDateDiffMax: TLabel;
    lblProductionDateDiffMin: TLabel;
    edtStartAfterLimitingDays: TDBEdit;
    edtPlanModelLength: TDBEdit;
    edtRealModelLength: TDBEdit;
    edtProductionDateDiffMax: TDBEdit;
    edtProductionDateDiffMin: TDBEdit;
    gbProductionFinal: TGroupBox;
    lblManufactureQuantity: TLabel;
    txtMeasure: TDBText;
    txtQuantityDiffMeasure: TDBText;
    lblQuantityDiff: TLabel;
    lblTreeNodeNo: TLabel;
    lblEnterShStorePlanDate: TLabel;
    lblEnterShipmentStoreDateDiff: TLabel;
    btnToggleQuantityDiffMeasure: TSpeedButton;
    edtManufactureQuantity: TDBEdit;
    frEnterShStorePlanDate: TfrDateIntervalFrame;
    moEnterShStorePlanDateColor: TMemo;
    edtEnterShipmentStoreDateDiff: TDBEdit;
    edtQuantityDiff: TDBEdit;
    gbInvestedValue: TGroupBox;
    lblSecondaryCurrencyAbbrev: TLabel;
    lblPlanInvestedValue: TLabel;
    lblInvestedValueDiff: TLabel;
    btnInvestedValueDiffMeasure: TSpeedButton;
    lblInvestedValueDiffMeasure: TLabel;
    edtPlanInvestedValue: TDBEdit;
    edtInvestedValueDiff: TDBEdit;
    gbModelStatus: TGroupBox;
    btnModelStatus: TBitBtn;
    btnModelCapacityStatus: TBitBtn;
    gbEngineering: TGroupBox;
    lblSpecVersionNo: TLabel;
    lblModelSpecModelVariant: TLabel;
    lblSpecVersionNo2: TLabel;
    lblStructureCoef: TLabel;
    lblIsOperationsModel: TLabel;
    lblModelDevelopmentType: TLabel;
    lblOkidu: TLabel;
    edtSpecVersionNo: TDBEdit;
    cbModelSpecModelVariant: TJvDBLookupCombo;
    edtStructureCoef: TDBEdit;
    edtIsOperationsModel: TDBEdit;
    cbModelDevelopmentType: TJvDBLookupCombo;
    frOkidu: TfrEmployeeFieldEditFrameBald;
    gbWastingSale: TGroupBox;
    lblHasWaste: TLabel;
    cbIsWasteCompensatingOrder: TJvDBComboBox;
    gbWastingSaleDetails: TPanel;
    pnlWastingSale: TPanel;
    lblWastingSale: TLabel;
    cbWastingSaleBranch: TJvDBLookupCombo;
    edtWastingSaleNo: TDBEdit;
    btnWastingSaleModelStatus: TBitBtn;
    pnlWasteCompensatorProductionOrders: TPanel;
    btnWasteCompensatorProductionOrders: TBitBtn;
    edtHasWaste: TDBEdit;
    cdsDataSHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    frShipmentStore2: TfrDeptFieldEditFrameBald;
    frProductionDept: TfrDeptFieldEditFrameBald;
    frShipmentStore: TfrDeptFieldEditFrameBald;
    gbWorkPriority: TGroupBox;
    cbWorkPriority: TJvDBLookupCombo;
    lblTreeNode: TLabel;
    cdsDataSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDataRETURN_DATE: TAbmesSQLTimeStampField;
    lblSaleDealType: TLabel;
    edtSaleDealType: TDBEdit;
    lblSaleDealType2: TLabel;
    edtSaleDealType2: TDBEdit;
    pnlDates: TPanel;
    pnlReceiveDate: TPanel;
    frReceiveDate: TfrDateFieldEditFrame;
    lblReceiveDate: TLabel;
    pnlLeaseDateInterval: TPanel;
    frLeaseDateInterval: TfrDateIntervalFrame;
    lblLeaseDateInterval: TLabel;
    pnlImportDate: TPanel;
    frImportDate: TfrDateFieldEditFrame;
    lblReturnDate: TLabel;
    edtReceiveDateColor: TEdit;
    edtLeaseDateIntervalColor: TEdit;
    edtImportDateColor: TEdit;
    cdsDataSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDataIMPORT_DATE: TAbmesSQLTimeStampField;
    saImportDate: TAbmesArrow;
    tImportDate: TDBText;
    cdsDataLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDataLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsDataTOTAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDataIMPORT_QUANTITY_DIFF: TAbmesFloatField;
    cdsDataACCOUNT_QUANTITY: TAbmesFloatField;
    cdsData_LACK_QUANTITY_PERCENT: TAbmesFloatField;
    edtSaleState: TDBEdit;
    lblSaleState: TLabel;
    btnSaleOrder: TBitBtn;
    actSaleOrder: TAction;
    cdsDataCLIENT_COMPANY_NO: TAbmesFloatField;
    actBoundDeliveries: TAction;
    actBoundDelivery: TAction;
    pnlBoundDeliveries: TPanel;
    btnBoundDeliveries: TBitBtn;
    pnlBoundDelivery: TPanel;
    btnBoundDelivery: TBitBtn;
    cdsDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataDCD_OBJECT_CODE: TAbmesFloatField;
    cdsDataDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsDeliveriesParams: TAbmesClientDataSet;
    cdsDeliveriesParamsHAS_SALE: TAbmesFloatField;
    cdsDeliveriesParamsSALE_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveriesParamsSALE_NO: TAbmesFloatField;
    cdsDeliveriesParamsDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDataBND_DELIVERY_COUNT: TAbmesFloatField;
    cdsData_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveriesParamsMIN_STATUS_CODE: TAbmesFloatField;
    cdsDeliveriesParamsMAX_STATUS_CODE: TAbmesFloatField;
    actNotes: TAction;
    pnlNotes: TPanel;
    btnNotes: TBitBtn;
    gbIBR: TGroupBox;
    btnParRelProduct: TButton;
    frParRelProductStatus: TfrParRelProductStatus;
    tlbParRelProductDocs: TToolBar;
    btnParRelProductDocs: TToolButton;
    cdsDataBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsDataPARTNER_CODE: TAbmesFloatField;
    actParRelProductDoc: TAction;
    cdsDataPRP_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataPRP_DOC_CODE: TAbmesFloatField;
    cdsDataPRP_HAS_DOC_ITEMS: TAbmesFloatField;
    actParRelProduct: TAction;
    cdsDataHAS_PAR_REL_PRODUCT: TAbmesFloatField;
    cdsData_MIN_SALE_SHIPMENT_STATE_TEXT: TAbmesWideStringField;
    cdsData_ENTER_SH_STORE_PERIOD: TAbmesWideStringField;
    cdsData_MODEL_SPEC_MODEL_VARIANT: TAbmesWideStringField;
    cdsData_WORK_PRIORITY_NO: TAbmesFloatField;
    cdsData_SECONDARY_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsData_WASTING_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsDataMANAGER_OKIDU_NO: TAbmesFloatField;
    cdsDataOKIDU_EMPLOYEE_NO: TAbmesFloatField;
    cdsDataCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDataOKIDU_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsDataCONSUME_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataCONSUME_END_DATE: TAbmesSQLTimeStampField;
    cdsDataTRANSIENT_STATUS_NAME: TAbmesWideStringField;
    cdsDataWORKDAYS_TO_EXIST: TAbmesFloatField;
    cdsData_CONSUME_DATES_INTERVAL: TAbmesWideStringField;
    cdsDataREPORT_TAG: TAbmesFloatField;
    cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsData_REMAINING_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsData_REM_TOTAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDataMARKET_SINGLE_PRICE: TAbmesFloatField;
    cdsDataDISCOUNT_PERCENT: TAbmesFloatField;
    cdsDataINVOICES_MODIFIED: TAbmesFloatField;
    cdsDataPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsProductionOrderTypes: TAbmesClientDataSet;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_NAME: TAbmesWideStringField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_TEXT: TAbmesWideStringField;
    cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_NO: TAbmesFloatField;
    cdsProductionOrderTypesIS_REVERSIBLE: TAbmesFloatField;
    dsProductionOrderTypes: TDataSource;
    cbProductionOrderType: TJvDBLookupCombo;
    procedure cdsDataSHIPMENT_STORE_CODEValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataSHIPMENT_DATEChange(Sender: TField);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure actCorrectionsExecute(Sender: TObject);
    procedure actConcludeSaleExecute(Sender: TObject);
    procedure actAnnulSaleExecute(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure cdsDataENTER_SH_STORE_PLAN_BEGIN_DATEChange(Sender: TField);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure btnDocsClick(Sender: TObject);
    procedure frProductactShowProductVIMExecute(Sender: TObject);
    procedure cdsDataSHIPMENT_DATEValidate(Sender: TField);
    procedure cdsDataENTER_SH_STORE_PLAN_END_DATEChange(Sender: TField);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsDataSINGLE_PRICEChange(Sender: TField);
    procedure actToggleQuantityDiffMeasureUpdate(Sender: TObject);
    procedure actInvestedValueDiffMeasureUpdate(Sender: TObject);
    procedure actSaleOrderExecute(Sender: TObject);
    procedure actBoundDeliveryUpdate(Sender: TObject);
    procedure actBoundDeliveryExecute(Sender: TObject);
    procedure actBoundDeliveriesExecute(Sender: TObject);
    procedure actBoundDeliveriesUpdate(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);
    procedure actParRelProductDocUpdate(Sender: TObject);
    procedure actParRelProductDocExecute(Sender: TObject);
    procedure actParRelProductExecute(Sender: TObject);
    procedure actParRelProductUpdate(Sender: TObject);
    procedure cdsDataMODEL_DEVELOPMENT_TYPE_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actPrintExecute(Sender: TObject);
    procedure cdsDataOKIDU_EMPLOYEE_CODEChange(Sender: TField);
    procedure cdsDataMANAGER_EMPLOYEE_CODEChange(Sender: TField);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsProductionOrderTypesFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure actNotesUpdate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FfmSaleShipments: TfmSaleShipments;
    OldShipmentDateValueIsNull: Boolean;
    FShipmentDataChanging: Boolean;
    FOldEnterShipmentStorePlanBeginDate: Variant;
    FOldEnterShipmentStorePlanEndDate: Variant;
    FWasAnnuled: Boolean;
    FForbidShipmentDateClear: Boolean;
    FShowProductionOrder: Boolean;
    procedure AddFirstShipment;
    procedure CheckShipQuantities;
    procedure AfterShipmentPost(DataSet: TDataSet);
    procedure UpdateFirstShipmentDate;
    procedure RecalcShipmentsInternalCalcs(AMergeChangeLog: Boolean);
  protected
    class function CanUseDocs: Boolean; override;
    function GetOriginalFormCaption: string; override;
    procedure GetDateFields(Fields: TList<TField>); override;
    procedure GetArrowsInfo(Infos: TObjectList<TArrowInfo>); override;
    procedure DoApplyUpdates; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure BeforeConclude; override;
    function IsQuantityField(const AField: TAbmesFloatField): Boolean; override;
    procedure DoCancelUpdates; override;
    procedure UpdateTimeGraphic; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AStateCode: Integer = 0;
      AShowProductionOrder: Boolean = False); reintroduce; virtual;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AStateCode: Integer = 0;
      AShowProductionOrder: Boolean = False): Boolean;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uClientUtils,  uUtils, uDealTypes, uUserActivityConsts,
  uColorConsts, uTreeNodes, uDocUtils, Math, StrUtils, uSaleDealTypes,
  uSalesCommon, uSalesClientUtils, fSaleOrder, fDelivery, fDeliveries, uParRelProducts,
  uDeliveryDealTypes, fNotes, uBorderRelTypes, fParRelProduct, rSale,
  uProductionOrderTypes, uProductClientUtils, rSaleLease, uClientDateTime,
  uComboBoxUtils, AbmesDialogs, uFinanceClientUtils;

{$R *.DFM}

resourcestring
  SCantClearShipmentDate = 'Не можете да изтривате плановата дата за експедиция!';
  SSaleStatus = 'ОПП %s';
  SSaleIsDone = 'е приключен';
  SSaleIsAnnuled = 'е анулиран';
  SSaleIsExpectingPayment = 'очаква плащане';
  SSaleIsLate = 'е закъснял';
  SSaleIsActualLate = 'е актуално закъснял';
  SSaleIsActualFuture = 'е актуално предстоящ';
  SSaleIsFuture = 'е бъдещ';

  SPlanQuantityExceeds = 'Сумата от количествата за експедиция (%n) превишава ' +
                         'планираното количество по ОПП за експедиция';

  SPlanQuantityDiffers = 'Сумата от планираните количества за експедиция (%n) се различава от' +
                         'планираното количество по ОПП за експедиция';

  SShipmentStoreRequired = 'Моля въведете първо ТП Задържащо за експедиция';
  SNotFinishedShipment = 'Не можете да приключите ОПП, тъй като има неотчетено разклонение';
  SShipmentStoreNeededForPSD = 'Ще бъде създадено планово постъпление, така че моля въведете ТП Задържащо за експедиция';
  SConfirmFinOrdersClose = 'По някои разклонения има отчетени ОПФ и те също ще бъде приключени.' + SLineBreak + 'Желаете ли да продължите?';
  SModifiedInvoicesWillNotBeCanceled = 'Промените по Фактури няма да бъдат отказани!';

const
  SaleStatus : array[1..8] of string =
    (SSaleIsDone, SSaleIsAnnuled, SSaleIsExpectingPayment, 'temp_empty_status', SSaleIsLate,
     SSaleIsActualLate, SSaleIsActualFuture, SSaleIsFuture);

class function TfmSale.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmSale.FormCreate(Sender: TObject);

  procedure SetSecCurrencyCaption(Labels: array of TLabel);
  var
    i: Integer;
  begin
    for i:= Low(Labels) to High(Labels) do
      with Labels[i] do
        Caption:= Format(Caption, [LoginContext.SecondaryCurrencyAbbrev]);
  end;

begin
  inherited;

  ReportClass:= TrptSale;

  SetSecCurrencyCaption([lblSecondaryCurrencyAbbrev]);

  FfmSaleShipments:=
    TfmSaleShipments.CreateDockedTo(pcMain, nil, alClient);

  FfmSaleShipments.dsSale.DataSet:=
    cdsData;
  FfmSaleShipments.cdsGridData.DataSetField:=
    cdsDataqrySaleShipments;

  FfmSaleShipments.AfterShipmentPost:= AfterShipmentPost;

  pcMain.Pages[pcMain.PageCount-1].PageIndex:= 0;
  pcMain.ActivePageIndex:= 0;

  RegisterDateFields([
    cdsData_SHIPMENT_DATE_SHOW,
    cdsData_RECEIVE_DATE_SHOW,
    cdsDataIMPORT_DATE,
    cdsDataRECEIVE_DATE,
    cdsDataSALE_LAST_CHANGE_DATE,
    cdsDataSHIPMENT_DATE,
    cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE,
    cdsDataENTER_SH_STORE_PLAN_END_DATE,
    cdsDataCREATE_DATE,
    cdsDataPRODUCTION_START_PLAN_DATE,
    cdsDataMODEL_CREATE_DATE
  ]);

  frProductionDept.FieldNames:= 'PRODUCTION_DEPT_CODE';
  frProductionDept.TreeNodeNameVisible:= False;
  frShipmentStore.FieldNames:= 'SHIPMENT_STORE_CODE';
  frShipmentStore.SelectStore:= True;
  frShipmentStore.TreeNodeNameVisible:= False;
  frShipmentStore2.FieldNames:= 'SHIPMENT_STORE_CODE';
  frShipmentStore2.SelectStore:= True;
  frShipmentStore2.TreeNodeNameVisible:= False;

  frShipmentDate.FieldNames:= 'SHIPMENT_DATE';
  frProductionPlanStartDate.FieldNames:= 'PRODUCTION_START_PLAN_DATE';
  frReceiveDate.FieldNames:= 'RECEIVE_DATE';
  frLeaseDateInterval.FieldNames:= 'RECEIVE_DATE; RETURN_DATE';
  frImportDate.FieldNames:= 'IMPORT_DATE';

  frEnterShStorePlanDate.FieldNames:= 'ENTER_SH_STORE_PLAN_BEGIN_DATE; ENTER_SH_STORE_PLAN_END_DATE';
  frEnterShStorePlanDate.EndDateChanged:= frEnterShStorePlanDateEndDateChanged;

  frOkidu.FieldNames:= 'OKIDU_EMPLOYEE_CODE';
  frOkidu.SpecialProffesionEmployee:= speOkidu;
  frOkidu.DocButtonVisible:= False;

  if IsAppThemed then
    FfmSaleShipments.Color:= clWhite;

  MaximizeStyle:= msVertical;

  RegisterFieldsTextVisibility(
    IsSalePriceVisible,
    [ cdsDataSINGLE_PRICE,
      cdsDataTOTAL_PRICE]);
end;

procedure TfmSale.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FfmSaleShipments);
  inherited;
end;

procedure TfmSale.FormShow(Sender: TObject);
begin
  inherited;
  FfmSaleShipments.FixColumnWidths;
end;

procedure TfmSale.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  if cdsData.Active then
    begin
//      tsProduction.TabVisible:=
//        LoginContext.HasUserActivity(uaSaleProduction) or
//        (cdsDataMANUFACTURE_QUANTITY.AsFloat <> 0);

      ro:= ( (not cdsDataANNUL_EMPLOYEE_CODE.IsNull) and
             (not CanCorrect) ) or
           cdsDataMANUFACTURE_DECISION_EXPECTED.AsBoolean;

      FfmSaleShipments.cdsGridData.ReadOnly:= ro;

      SetControlReadOnly(ro, edtManufactureQuantity);

      edtMLStatus.Hint:= cdsData_ML_STATE_FULL_NAME.AsString;
      edtMLStatus.Color:= cdsData_ML_STATE_COLOR.AsInteger;

      if not cdsDataPRIORITY_COLOR.IsNull then
        edtPriority.Font.Color:= cdsDataPRIORITY_COLOR.AsInteger;
      if not cdsDataPRIORITY_BACKGROUND_COLOR.IsNull then
        edtPriority.Color:= cdsDataPRIORITY_BACKGROUND_COLOR.AsInteger;

      if not cdsDataPRIORITY_COLOR.IsNull then
        edtPriority2.Font.Color:= cdsDataPRIORITY_COLOR.AsInteger;
      if not cdsDataPRIORITY_BACKGROUND_COLOR.IsNull then
        edtPriority2.Color:= cdsDataPRIORITY_BACKGROUND_COLOR.AsInteger;

      frEnterShStorePlanDate.BeginDateReadOnly:=
        HadModel or (not cdsDataMODEL_SPEC_MODEL_VARIANT_NO.IsNull);
      frEnterShStorePlanDate.PeriodDaysReadOnly:=
        frEnterShStorePlanDate.BeginDateReadOnly;

      ro:=
        (not cdsData.Active) or
        (not CanCorrect) or
        (EditMode <> emEdit);

      SetControlsReadOnly(ro, [cbProductionOrderType, cbWorkPriority, cbModelDevelopmentType]);

      SetControlReadOnly(
        ( ro or
          HadModel or
          cdsDataMANUFACTURE_QUANTITY.IsNull or
          not LoginContext.HasUserActivity(uaSelectDefaultSpecModelVariant)
        ),
        cbModelSpecModelVariant);

      ro:= (not cdsData.Active) or
           ((not cdsDataFINISH_EMPLOYEE_CODE.IsNull or
             not cdsDataANNUL_EMPLOYEE_CODE.IsNull) and
            not CanCorrect and
            (EditMode = emEdit)
           ) or
           (EditMode = emReadOnly) or
           (ReplacedDBComboBox(cbIsWasteCompensatingOrder).XItemIndex <> 1) or
           (EditMode <> emInsert);

      SetControlsReadOnly(ro, [cbWastingSaleBranch, edtWastingSaleNo]);

      pnlWastingSale.Visible:= (ReplacedDBComboBox(cbIsWasteCompensatingOrder).XItemIndex = 1);
      pnlWasteCompensatorProductionOrders.Visible:= not pnlWastingSale.Visible;

      pnlReceiveDate.Visible:= (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtSale);
      pnlLeaseDateInterval.Visible:= (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtLease);
      pnlImportDate.Visible:= (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtLease);
    end;   { if }

  SetDiffEditFontColor(edtProductionStartDateDiff);
  SetDiffEditFontColor(edtEnterShipmentStoreDateDiff);
  SetDiffEditFontColor(edtProductionDateDiffMax);
  SetDiffEditFontColor(edtProductionDateDiffMin);

  if Assigned(edtSaleState.Field) and
     edtSaleState.Field.DataSet.Active and
     ValidSaleState(VarToInt(edtSaleState.Field.AsVariant)) and
     (edtSaleState.Text <> '') then
    edtSaleState.Color:= SaleStateBackgroundColors[VarToInt(edtSaleState.Field.AsVariant)]
  else
    edtSaleState.Color:= clBtnFace;

  lblClientProductSignature.Visible:= (FProductClass = pcNormal);
  edtClientProductSignature.Visible:= lblClientProductSignature.Visible;
end;

procedure TfmSale.cdsDataSHIPMENT_DATEChange(Sender: TField);
begin
  FForbidShipmentDateClear:= True;

  if cdsDataSHIPMENT_STORE_CODE.IsNull and not frShipmentDate.ReadOnly then
    raise Exception.Create(SShipmentStoreRequired);

  if FShipmentDataChanging then
    Exit;

  FShipmentDataChanging:= True;
  try
    if OldShipmentDateValueIsNull then
      begin
        AddFirstShipment;
        OldShipmentDateValueIsNull:= False;
      end
    else
      UpdateFirstShipmentDate;

    inherited;
  finally
    FShipmentDataChanging:= False;
  end;   { try }
end;

procedure TfmSale.AddFirstShipment;
begin
  with FfmSaleShipments, cdsGridData do
    begin
      Append;
      try
        cdsGridDataSHIPMENT_PLAN_DATE.Assign(cdsDataSHIPMENT_DATE);
        cdsGridDataPLAN_QUANTITY.Assign(cdsDataQUANTITY);
        Post;
      except
        Cancel;
        raise;
      end;   { try }
    end;   { with }
end;

procedure TfmSale.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  FProductClass:= IntToProductClass(cdsDataPRODUCT_CLASS_CODE.AsInteger);

  with cdsData do       // RecalcFields
    begin
      DisableControls;
      try
        Last;
        First;
      finally
        EnableControls;
      end;   { try }
    end;   { with }

  FfmSaleShipments.OuterdmDocClient:= dmDocClient;
  FfmSaleShipments.OuterEditMode:= EditMode;

  RecalcShipmentsInternalCalcs(True);

  edtSaleState.DataSource:= FfmSaleShipments.dsGridData;

  frProduct.ProductClass:= FProductClass;
  if (FProductClass <> pcNormal) then
    tsProductionOrder.TabVisible:= False;

  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  MsgParams:=
    uParRelProducts.CreateCommonMsgParams(
      LoginContext,
      FProductClass,
      brtClient,
      pobtSaleCover,
      prpoProduct,
      prpkQuantity,
      prpspikNone,
      prpdikNone,
      False);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  FOriginalFormCaption:= actForm.Caption;

  pcMain.Pages[0].TabVisible:= False;
  Application.ProcessMessages;
  pcMain.Pages[0].TabVisible:= True;
  pcMain.ActivePageIndex:= 0;

  frProduct.PartnerCode:= cdsDataCLIENT_COMPANY_CODE.AsInteger;
  frShipmentStore.SelectFinancialStore:= (FProductClass = pcFinancial);

  if FShowProductionOrder then
    pcMain.ActivePageIndex:= 1;
end;

function TfmSale.IsQuantityField(const AField: TAbmesFloatField): Boolean;
begin
  Result:= False;
end;

procedure TfmSale.OpenDataSets;
begin
  cdsProductionOrderTypes.Open;
  inherited;
end;

procedure TfmSale.SetDataParams(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  AStateCode: Integer;
  AShowProductionOrder: Boolean);
var
  f: TField;
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);

  f:= OuterDataSet.FindField('SALE_SHIPMENT_NO');
  if Assigned(f) then
    FfmSaleShipments.ShipmentNo:= f.AsInteger;

  FShowProductionOrder:= AShowProductionOrder;
end;

class function TfmSale.ShowForm(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  AStateCode: Integer;
  AShowProductionOrder: Boolean): Boolean;
var
  f: TfmSale;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, AStateCode, AShowProductionOrder);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmSale.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;

  OldShipmentDateValueIsNull:= cdsDataSHIPMENT_DATE.IsNull;
  FOldEnterShipmentStorePlanBeginDate:=
    cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE.AsVariant;
  FOldEnterShipmentStorePlanEndDate:=
    cdsDataENTER_SH_STORE_PLAN_END_DATE.AsVariant;
  FWasAnnuled:=
    not cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

procedure TfmSale.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (ModalResult = mrOK) and cdsDataANNUL_EMPLOYEE_CODE.IsNull then
    CheckShipQuantities;

  inherited;
end;

procedure TfmSale.CheckShipQuantities;
var
  q: Real;
begin
  if (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtSale) then
    with FfmSaleShipments do
      begin
        q:= VarToFloat(cdsGridData_SUM_CHECK_QUANTITY.Value);
        if (q > cdsDataQUANTITY.AsFloat) then
          raise Exception.CreateFmt(SPlanQuantityExceeds, [q]);

        q:= VarToFloat(cdsGridData_SUM_PLAN_QUANTITY.Value);
        if (q <> cdsDataQUANTITY.AsFloat) then
          raise Exception.CreateFmt(SPlanQuantityDiffers, [q]);
      end;
end;

procedure TfmSale.CloseDataSets;
begin
  inherited;
  cdsProductionOrderTypes.Close;
end;

procedure TfmSale.cdsDataCalcFields(DataSet: TDataSet);
var
  TotalShippedQuantity: Real;
begin
  if FfmSaleShipments.cdsGridData.Active then
    begin
      TotalShippedQuantity:=
        VarToFloat(FfmSaleShipments.cdsGridData_SUM_SHIPMENT_OUT_QUANTITY.Value);

      cdsData_MIN_SALE_SHIPMENT_STATE_TEXT.AsString:=
        FfmSaleShipments.cdsGridData_MIN_SALE_SHIPMENT_STATE_CODE.DisplayText;

      cdsData_REMAINING_LEASE_DATE_UNIT_QTY.AsVariant:=
        FfmSaleShipments.cdsGridData_REMAINING_LEASE_DATE_UNIT_QTY.AsVariant;
      cdsData_REM_TOTAL_LEASE_DATE_UNIT_QTY.AsVariant:=
        FfmSaleShipments.cdsGridData_REM_TOTAL_LEASE_DATE_UNIT_QTY.AsVariant;
    end
  else
    begin
      TotalShippedQuantity:= 0;
      cdsData_MIN_SALE_SHIPMENT_STATE_TEXT.Clear;

      cdsData_REMAINING_LEASE_DATE_UNIT_QTY.Clear;
      cdsData_REM_TOTAL_LEASE_DATE_UNIT_QTY.Clear;
    end;

  cdsData_REMAINING_QUANTITY.Value:=
    cdsDataQUANTITY.Value - TotalShippedQuantity;

  inherited;

  cdsData_LACK_QUANTITY.Value:=
    cdsDataSHIPMENT_STORE_CURR_QUANTITY.AsFloat -
    cdsDataMANUFACTURE_QUANTITY.AsFloat;

  if (cdsDataMANUFACTURE_QUANTITY.AsFloat = 0) then
    cdsData_LACK_QUANTITY_PERCENT.AsFloat:= 0
  else
    cdsData_LACK_QUANTITY_PERCENT.AsFloat:=
      cdsData_LACK_QUANTITY.AsFloat / cdsDataMANUFACTURE_QUANTITY.AsFloat * 100;

  cdsData_SHIPMENT_DATE_SHOW.Assign(cdsDataSHIPMENT_DATE);
  cdsData_RECEIVE_DATE_SHOW.Assign(cdsDataRECEIVE_DATE);

  if (cdsDataACCOUNT_MEASURE_COEF.AsFloat = 0) or
     cdsDataSINGLE_PRICE.IsNull then
    cdsData_ACCOUNT_SINGLE_PRICE.Clear
  else
    cdsData_ACCOUNT_SINGLE_PRICE.AsFloat:=
      cdsDataSINGLE_PRICE.AsFloat /
      cdsDataACCOUNT_MEASURE_COEF.AsFloat;

  cdsDataPARTNER_CODE.AsInteger:= cdsDataCLIENT_COMPANY_CODE.AsInteger;
  cdsDataBORDER_REL_TYPE_CODE.AsInteger:= BorderRelTypeToInt(brtClient);

  cdsData_ENTER_SH_STORE_PERIOD.AsString:=
    dmMain.GetDateIntervalAsString(cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE.AsDateTime, cdsDataENTER_SH_STORE_PLAN_END_DATE.AsDateTime);

  cdsData_SECONDARY_CURRENCY_ABBREV.AsString:= LoginContext.SecondaryCurrencyAbbrev;

  cdsData_CONSUME_DATES_INTERVAL.AsString:=
    dmMain.GetDateIntervalAsString(cdsDataCONSUME_BEGIN_DATE.AsDateTime, cdsDataCONSUME_END_DATE.AsDateTime);

  if (cdsDataSALE_DEAL_TYPE_CODE.AsInteger <> sdtLease) then
    begin
      if FfmSaleShipments.sbtnWorkMeasure.Down then
        cdsDataREPORT_TAG.AsInteger:= 1
      else
        cdsDataREPORT_TAG.AsInteger:= 3;
    end
  else
    cdsDataREPORT_TAG.AsInteger:= 2;

  if FfmSaleShipments.actToggleCurrency.Checked then
    cdsDataREPORT_TAG.AsInteger:= cdsDataREPORT_TAG.AsInteger + 3;
end;

procedure TfmSale.AfterShipmentPost(DataSet: TDataSet);
begin
  UpdateTimeGraphic;
  RefreshDBEdit(edtSaleState);
end;

procedure TfmSale.BeforeConclude;
var
  b: TBookmark;
  HasCompletedFinOrder: Boolean;
begin
  inherited;

  with cdsDataqrySaleShipments.NestedDataSet do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          HasCompletedFinOrder:= False;
          First;
          while not EOF do
            begin
              if FieldByName('FO_IS_COMPLETED').AsBoolean then
                begin
                  HasCompletedFinOrder:= True;
                  Break;
                end;
              Next;
            end;   { while }

          if HasCompletedFinOrder and
             (MessageDlgEx(SConfirmFinOrdersClose, mtConfirmation, mbOkCancel, 0) <> mrOk) then
            Abort;

          First;
          while not EOF do
            begin
              if FieldByName('FO_IS_COMPLETED').AsBoolean then
                cdsDataqrySaleShipments.NestedDataSet.SafeEdit/
                  procedure begin
                    FieldByName('FO_CLOSE_REQUESTED').AsBoolean:= True;
                  end;

              Next;
            end;   { while }
        finally
          Bookmark:= b;
        end;   { try }
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

procedure TfmSale.actApplyUpdatesExecute(Sender: TObject);
var
  b: TBookmark;
  us: TUpdateStatus;
begin
  with cdsDataqrySaleShipments.NestedDataSet as TCustomClientDataSet do
    begin
      SetOptionalParam('CORRECTIONS', CanCorrect, True);

      if CanCorrect then
        begin
          b:= Bookmark;
          try
            First;
            while not EOF do
              begin
                us:= UpdateStatus;
                Edit;
                try
                  FieldByName('UPDATE_STATUS').AsInteger:= Ord(us);

                  if (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtLease) then
                    begin
                      FieldByName('PLAN_QUANTITY').Assign(cdsDataQUANTITY);
                      FieldByName('SHIPMENT_PLAN_DATE').Assign(cdsDataSHIPMENT_DATE);
                      FieldByName('IMPORT_PLAN_DATE').Assign(cdsDAtaIMPORT_DATE);
                    end;

                  Post;
                except
                  Cancel;
                  raise;
                end;   { try }

                Next;
              end;   { while }
          finally
            Bookmark:= b;
          end;   { try }
        end;   { if }
    end;   { with }

  inherited;
end;

procedure TfmSale.DoCancelUpdates;
begin
  if cdsDataINVOICES_MODIFIED.AsBoolean then
    ConfirmAction(SModifiedInvoicesWillNotBeCanceled);

  inherited;
end;

procedure TfmSale.actBoundDeliveriesExecute(Sender: TObject);
begin
  inherited;
  cdsDeliveriesParams.CreateDataSet;
  try
    cdsDeliveriesParams.AppendRecord([1, 6, ddtImport, 1, cdsDataSALE_BRANCH_CODE.AsInteger, cdsDataSALE_NO.AsInteger]);
    TfmDeliveries.ShowForm(nil, cdsDeliveriesParams, emReadOnly, doNone, pobtSaleCover, False, True, FProductClass);
  finally
    cdsDeliveriesParams.Close;
  end;
end;

procedure TfmSale.actBoundDeliveriesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    (cdsDataBND_DELIVERY_COUNT.AsInteger > 0);
end;

procedure TfmSale.actBoundDeliveryExecute(Sender: TObject);
begin
  inherited;
  TfmDelivery.ShowForm(nil, cdsData, emReadOnly, doNone, nil, FProductClass);
end;

procedure TfmSale.actBoundDeliveryUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    not cdsDataDELIVERY_PROJECT_CODE.IsNull;
end;

procedure TfmSale.GetDateFields(Fields: TList<TField>);
begin
  inherited;
  Fields.Add(cdsDataSHIPMENT_DATE);
  Fields.Add(cdsDataRECEIVE_DATE);
  Fields.Add(cdsDataIMPORT_DATE);
end;

function TfmSale.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmSale.GetArrowsInfo(Infos: TObjectList<TArrowInfo>);

  function FixAggregateDate(ADateField: TAggregateField): TDateTime;
  begin
    if VarIsNullOrEmpty(ADateField.AsVariant) then
      Result:= ContextDate
    else
      Result:= ADateField.AsVariant;
  end;

begin
  inherited;

  Infos.Add(TArrowInfo.Create(
    saShipmentDate,
    tShipmentDate,
    not cdsDataSHIPMENT_DATE.IsNull,
    cdsDataSHIPMENT_DATE.AsDateTime,
    FixAggregateDate(FfmSaleShipments.cdsGridData_LAST_SHIPMENT_DATE) - cdsDataSHIPMENT_DATE.AsDateTime,
    shpShipmentDateLateness
  ));

  Infos.Add(TArrowInfo.Create(
    saReceiveDate, tReceiveDate,
    not cdsDataRECEIVE_DATE.IsNull,
    cdsDataRECEIVE_DATE.AsDateTime
  ));

  Infos.Add(TArrowInfo.Create(
    saImportDate, tImportDate,
    not cdsDataIMPORT_DATE.IsNull,
    cdsDataIMPORT_DATE.AsDateTime
  ));
end;

procedure TfmSale.actCorrectionsExecute(Sender: TObject);
const
  SaleCorrectActivities: array[TProductClass] of Integer = (0, uaSaleCorrect, uaFinSaleCorrect, 0);
begin
  LoginContext.CheckUserActivity(SaleCorrectActivities[FProductClass]);
  inherited;
end;

procedure TfmSale.actConcludeSaleExecute(Sender: TObject);
const
  SaleConcludeActivities: array[TProductClass] of Integer = (0, uaSaleConclude, uaFinSaleConclude, 0);
var
  b: TBookmark;
begin
  LoginContext.CheckUserActivity(SaleConcludeActivities[FProductClass]);

  with cdsDataqrySaleShipments.NestedDataSet do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          First;
          while not EOF do
            begin
              if FieldByName('SHIPMENT_DATE').IsNull or
                 FieldByName('RECEIVE_DATE').IsNull then
                begin
                  pcMain.ActivePageIndex:= 0;
                  ActiveControl:= FfmSaleShipments.grdData;

                  b:= Bookmark;

                  raise Exception.Create(SNotFinishedShipment);
                end;

              if FieldByName('FO_IS_COMPLETED').AsBoolean then
                begin
                  cdsDataqrySaleShipments.NestedDataSet.SafeEdit/
                    procedure begin
                      FieldByName('FO_CLOSE_REQUESTED').AsBoolean:= True;
                    end;
                end
              else
                CheckClosingWithFinOrder(FieldByName('FO_STATUS_CODE').AsInteger);

              Next;
            end;   { while }
        finally
          Bookmark:= b;
        end;   { try }
      finally
        EnableControls;
      end;   { try }
    end;   { with }

  inherited;
end;

procedure TfmSale.actAnnulSaleExecute(Sender: TObject);
const
  SaleAnnulActivities: array[TProductClass] of Integer = (0, uaSaleAnnul, uaFinSaleAnnul, 0);
begin
  LoginContext.CheckUserActivity(SaleAnnulActivities[FProductClass]);
  inherited;
end;

procedure TfmSale.dsDataDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (Field = cdsDataRECEIVE_DATE) or
     (Field = cdsDataIMPORT_DATE) then
    UpdateTimeGraphic;
end;

procedure TfmSale.UpdateFirstShipmentDate;
var
  b: TBookmark;
  ShipmentDate: TDateTime;
begin
  with cdsDataqrySaleShipments.NestedDataSet do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          First;
          Edit;
          try
            FieldByName('SHIPMENT_PLAN_DATE').Assign(cdsDataSHIPMENT_DATE);
            Post;

            ShipmentDate:= cdsDataSHIPMENT_DATE.AsDateTime;
            with (FieldByName('qryShipmentPlannedStoreDeals') as TDataSetField).NestedDataSet do
              begin
                First;
                while not EOF do
                  begin
                    Edit;
                    try
                      FieldByName('STORE_DEAL_BEGIN_DATE').AsDateTime:= ShipmentDate;
                      FieldByName('STORE_DEAL_END_DATE').AsDateTime:= ShipmentDate;
                      Post;
                    except
                      Cancel;
                      raise;
                    end;   { try }
                    Next;
                  end;   { while }
              end;   { with }
          except
            Cancel;
            raise;
          end;   { try }
        finally
          Bookmark:= b;
        end;   { try }
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

procedure TfmSale.UpdateTimeGraphic;
begin
  inherited;
  // don't scale
  shpShipmentDateLateness.Height:= 4;
  shpShipmentDateLateness.Top:= 43;
end;

procedure TfmSale.cdsDataENTER_SH_STORE_PLAN_BEGIN_DATEChange(
  Sender: TField);

  procedure ProcessField(Field: TField; OldValue: Variant);
  begin
    if (Field.AsVariant = OldValue) then
      Field.Tag:= 0
    else
      begin
        if VarIsNull(OldValue) then
          Field.Tag:= 2
        else
          Field.Tag:= 1;
      end;
  end;

begin
  inherited;

  if (Sender = cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE) then
    ProcessField(Sender, FOldEnterShipmentStorePlanBeginDate)
  else
    if (Sender = cdsDataENTER_SH_STORE_PLAN_END_DATE) then
      ProcessField(Sender, FOldEnterShipmentStorePlanEndDate);
end;

procedure TfmSale.DoApplyUpdates;
begin
  if not cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE.IsNull and
     cdsDataSHIPMENT_STORE_CODE.IsNull then
    begin
      frShipmentStore.SetFocus;
      raise Exception.Create(SShipmentStoreNeededForPSD);
    end;

  inherited;
end;

procedure TfmSale.SetDBFrameReadOnly(AFrame: TDBFrame);
var
  ro: Boolean;
begin
  if (AFrame = frProduct) or
     (AFrame = frProductionPlanStartDate) or
     (AFrame = frReceiveDate) or
     (AFrame = frShipmentStore2) or
     (AFrame = frLeaseDateInterval) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  ro:=
    (not cdsDataFINISH_EMPLOYEE_CODE.IsNull or not cdsDataANNUL_EMPLOYEE_CODE.IsNull) and
    (not CanCorrect) and
    (EditMode = emEdit);

  if (AFrame = frProductionDept) then
    begin
      AFrame.ReadOnly:=
        ro or
        HadModel;

      Exit;
    end;   { if }

  if (AFrame = frEnterShStorePlanDate) or
     (AFrame = frShipmentStore) or
     (AFrame = frShipmentDate) then
    begin
      AFrame.ReadOnly:=
        ( ( not cdsDataFINISH_EMPLOYEE_CODE.IsNull or
            not cdsDataANNUL_EMPLOYEE_CODE.IsNull ) and
          not CanCorrect and
         (EditMode = emEdit)
        ) or
       (EditMode = emReadOnly);

      Exit;
    end;

  if (AFrame = frOkidu) then
    begin
      AFrame.ReadOnly:=
        ( ( not cdsDataFINISH_EMPLOYEE_CODE.IsNull or
            not cdsDataANNUL_EMPLOYEE_CODE.IsNull ) and
          not CanCorrect and
         (EditMode = emEdit)
        ) or
        (EditMode = emReadOnly) or
        (not LoginContext.HasUserActivity(uaSelectOKIDU));

      Exit;
    end;

  inherited;
end;

class function TfmSale.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmSale.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= VarArrayCreate([0, 1], varVariant);
  OwnerData[0]:= DocsDelta;
end;

procedure TfmSale.btnDocsClick(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if not CanCorrect then
    em:= emReadOnly
  else
    em:= EditMode;

  dmDocClient.DSOpenDoc(em, btnDocs, dotSale, cdsData);
end;

procedure TfmSale.frProductactShowProductVIMExecute(Sender: TObject);
begin
  if cdsDataSHIPMENT_DATE.IsNull then
    frProduct.VIMDate:= ContextDate
  else
    frProduct.VIMDate:= cdsDataSHIPMENT_DATE.AsDateTime;

  inherited;
  frProduct.actShowProductVIMExecute(Sender);
end;

procedure TfmSale.cdsDataSHIPMENT_DATEValidate(Sender: TField);
begin
  inherited;
  if FForbidShipmentDateClear and Sender.IsNull then
    raise Exception.Create(SCantClearShipmentDate);
end;

procedure TfmSale.cdsDataSHIPMENT_STORE_CODEValidate(Sender: TField);
begin
  inherited;
  if (Sender.IsNull) and (not cdsDataSHIPMENT_DATE.IsNull) then
    CheckRequiredField(Sender);
end;

procedure TfmSale.cdsDataENTER_SH_STORE_PLAN_END_DATEChange(
  Sender: TField);
begin
  inherited;
  CalcEnterShipmentStorePlanBeginDate(
    cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE, cdsDataENTER_SH_STORE_PLAN_END_DATE);
end;

procedure TfmSale.cdsDataMODEL_DEVELOPMENT_TYPE_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= cbModelDevelopmentType.Text;
end;

procedure TfmSale.cdsDataMANAGER_EMPLOYEE_CODEChange(Sender: TField);
begin
  inherited;
  DoEmployeeFieldChanged(Sender, cdsDataMANAGER_OKIDU_NO, cdsDataMANAGER_OKIDU_NAME);
end;

procedure TfmSale.cdsDataOKIDU_EMPLOYEE_CODEChange(Sender: TField);
begin
  inherited;
  DoEmployeeFieldChanged(Sender, cdsDataOKIDU_EMPLOYEE_NO, cdsDataOKIDU_EMPLOYEE_NAME);
end;

procedure TfmSale.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (cdsDataMANUFACTURE_QUANTITY.AsFloat > 0) then
    CheckRequiredFields([cdsDataPRODUCTION_ORDER_TYPE_CODE, cdsDataWORK_PRIORITY_CODE]);

  if (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtLease) and
     not cdsDataSHIPMENT_DATE.IsNull then
    CheckRequiredField(cdsDataIMPORT_DATE);
end;

procedure TfmSale.RecalcShipmentsInternalCalcs(AMergeChangeLog: Boolean);
var
  SaveReadOnly: Boolean;
begin
  Assert(AMergeChangeLog or (not cdsData.ReadOnly));

  SaveReadOnly:= cdsData.ReadOnly;
  cdsData.ReadOnly:= False;
  try
    with cdsDataqrySaleShipments.NestedDataSet as TCustomClientDataSet do
      if not IsEmpty then
        begin
          Edit;
          try
            with FieldByName('UPDATE_STATUS') do
              AsInteger:= Min(AsInteger, 0) - 1;

            Post;
          finally
            Cancel;
          end;  { try }

          if AMergeChangeLog then
            cdsData.MergeChangeLog;
        end;  { if }
  finally
    cdsData.ReadOnly:= SaveReadOnly;
  end;  { try }
end;

procedure TfmSale.cdsDataSINGLE_PRICEChange(Sender: TField);
begin
  inherited;
  RecalcShipmentsInternalCalcs(False);
end;

procedure TfmSale.cdsProductionOrderTypesFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    (IntToProdOrderBaseType(cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE.AsInteger) = pobtSaleCover);
end;

procedure TfmSale.actToggleQuantityDiffMeasureUpdate(Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      edtQuantityDiff.DataField:=
        IfThen(Checked, cdsData_LACK_QUANTITY_PERCENT.FieldName, cdsData_LACK_QUANTITY.FieldName);
      txtQuantityDiffMeasure.DataField:=
        IfThen(Checked, cdsData_PERCENT_TEXT.FieldName, cdsData_MEASURE_ABBREV.FieldName);
    end;  { with }
end;

procedure TfmSale.actInvestedValueDiffMeasureUpdate(Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      edtInvestedValueDiff.DataField:=
        IfThen(Checked, cdsData_INVESTED_PRICE_DIFF_PERCENT.FieldName, cdsData_INVESTED_VALUE_DIFF.FieldName);
      lblInvestedValueDiffMeasure.Caption:=
        IfThen(Checked, '%', LoginContext.SecondaryCurrencyAbbrev);
    end;  { with }
end;

procedure TfmSale.actNotesExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if (not cdsDataFINISH_EMPLOYEE_CODE.IsNull or not cdsDataANNUL_EMPLOYEE_CODE.IsNull) and
     (not CanCorrect) then
    em:= emReadOnly
  else
    em:= EditMode;

  TfmNotes.EditNotesField(cdsDataNOTES, em);
end;

procedure TfmSale.actNotesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= IfThen(cdsDataNOTES.AsString = '', 207, 57);
end;

procedure TfmSale.actParRelProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotParRelProduct,
    cdsDataPRP_DOC_BRANCH_CODE,
    cdsDataPRP_DOC_CODE
  );
end;

procedure TfmSale.actParRelProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and cdsDataHAS_PAR_REL_PRODUCT.AsBoolean;
  (Sender as TAction).ImageIndex:=
    cdsDataPRP_HAS_DOC_ITEMS.AsInteger;
end;

procedure TfmSale.actParRelProductExecute(Sender: TObject);
begin
  inherited;
  TfmParRelProduct.ShowForm(nil, cdsData, emReadOnly);
end;

procedure TfmSale.actParRelProductUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    cdsDataHAS_PAR_REL_PRODUCT.AsBoolean;
end;

procedure TfmSale.actPrintExecute(Sender: TObject);
begin
  // do not call inherited
  if (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtLease) then
    TrptSaleLease.PrintReport(nil, cdsData)
  else
    TrptSale.PrintReport(nil, cdsData);
end;

procedure TfmSale.actSaleOrderExecute(Sender: TObject);
begin
  inherited;
  TfmSaleOrder.ShowForm(nil, cdsData, emReadOnly, doNone, FProductClass);
end;

end.

