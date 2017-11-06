unit fDeficitCoverDecision;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uClientTypes, ImgList, ActnList, Db, StdCtrls, Buttons, ExtCtrls, Mask,
  JvToolEdit, DBClient, DBCtrls, AbmesClientDataSet, AbmesFields,
  AbmesDBCheckBox, fBaseFrame, fDBFrame, fFieldEditFrame,
  Menus, JvButtons, fEditForm, dDocClient,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDeptFieldEditFrameBald,
  fProductFieldEditFrame, fDateFieldEditFrame, fProductFieldEditFrameBald,
  fEmployeeFieldEditFrame, fProductFieldEditFrameLabeled,
  fDeptFieldEditFrameLabeled, ToolWin, ComCtrls, uProducts,
  fEmployeeFieldEditFrameBald, fEmployeeFieldEditFrameLabeled,
  JvExControls, JvComponent, JvDBLookup, JvCaptionButton, JvComponentBase,
  fProductExFieldEditFrame, fDateIntervalFrame, uProductionOrderTypes, fPartnerFieldEditFrameLabeled,
  fPartnerFieldEditFrame, fPartnerExFieldEditFrame, uSection, fDBDataForm, uAttributeUtils, fBaseForm;

type
  [CanUseDocs]
  [CanEditOuterDataSet(False)]
  TfmDeficitCoverDecision = class(TEditForm)
    cdsDataVPD_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDataDEPT_NO: TAbmesFloatField;
    cdsDataDEPT_NAME: TAbmesWideStringField;
    cdsDataPRODUCT_NAME: TAbmesWideStringField;
    cdsDataPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsMeasures: TAbmesClientDataSet;
    dsMeasures: TDataSource;
    cdsDataWORK_MEASURE_CODE: TAbmesFloatField;
    cdsDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsDataWORK_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsBranches: TAbmesClientDataSet;
    dsBranches: TDataSource;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    cdsDataPRODUCT_CUSTOM_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsDataIS_DONE: TAbmesFloatField;
    cdsDataIS_CANCELED: TAbmesFloatField;
    cdsDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataDCD_OBJECT_CODE: TAbmesFloatField;
    pnlFinish: TPanel;
    btnFinish: TBitBtn;
    actFinish: TAction;
    actAnnul: TAction;
    pnlAnnul: TPanel;
    btnAnnul: TBitBtn;
    pnlIsAnnuled: TPanel;
    chkIsAnnuled: TCheckBox;
    pnlIsFinished: TPanel;
    CheckBox1: TCheckBox;
    cdsDataDCD_BRANCH_CODE: TAbmesFloatField;
    cdsDataDCD_CODE: TAbmesFloatField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsData_DCD_BRANCH: TAbmesWideStringField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    grpId: TGroupBox;
    lblDCDBranch: TLabel;
    cbDCDBranch: TJvDBLookupCombo;
    lblDCDCode: TLabel;
    edtDCDCode: TDBEdit;
    pnlDocs: TToolBar;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    frEmployee: TfrEmployeeFieldEditFrameLabeled;
    cdsData_VPD_EMPLOYEE_NO: TAbmesFloatField;
    cdsData_VPD_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsDataASPECT_TYPE_CODE: TAbmesFloatField;
    cdsDataDELIVERY_COUNT: TAbmesFloatField;
    lblType: TLabel;
    cbType: TJvDBLookupCombo;
    cdsAspectTypes: TAbmesClientDataSet;
    cdsAspectTypesASPECT_TYPE_CODE: TAbmesFloatField;
    cdsAspectTypesASPECT_TYPE_ABBREV: TAbmesWideStringField;
    cdsAspectTypesASPECT_TYPE_NAME: TAbmesWideStringField;
    dsAspectTypes: TDataSource;
    lblAspectType: TLabel;
    cbAspectType: TJvDBLookupCombo;
    lblDeliveryCount: TLabel;
    edtDeliveryCount: TDBEdit;
    cdsDeliveryDealTypes: TAbmesClientDataSet;
    dsDeliveryDealTypes: TDataSource;
    cdsDataDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsData_ASPECT_TYPE_ABBREV: TAbmesWideStringField;
    cdsData_DELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsDataHAS_DOC: TAbmesFloatField;
    btnDocs: TToolButton;
    cdsData_STATUS_CODE: TAbmesFloatField;
    cdsDataDP_DECISION_QUANTITY: TAbmesFloatField;
    cdsDataDC_QUANTITY: TAbmesFloatField;
    cdsDataDELIVERY_SD_QUANTITY: TAbmesFloatField;
    cdsDataTOTAL_WORK_QUANTITY: TAbmesFloatField;
    cdsDataTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDateUnits: TAbmesClientDataSet;
    cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    dsDateUnits: TDataSource;
    cdsData_TOTAL_LEASE_QUANTITY: TAbmesFloatField;
    lblStreamType: TLabel;
    cbStreamType: TJvDBLookupCombo;
    cdsStreamTypes: TAbmesClientDataSet;
    dsStreamTypes: TDataSource;
    cdsStreamTypesSTREAM_TYPE_CODE: TAbmesFloatField;
    cdsStreamTypesSTREAM_TYPE_ABBREV: TAbmesWideStringField;
    cdsStreamTypesSTREAM_TYPE_NAME: TAbmesWideStringField;
    cdsDataSTREAM_TYPE_CODE: TAbmesFloatField;
    edtStatus: TDBEdit;
    lblStatus: TLabel;
    cdsData_PRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsData_PROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDCDModes: TAbmesClientDataSet;
    cdsDCDModesDCD_MODE_CODE: TAbmesFloatField;
    cdsDCDModesDCD_MODE_NO: TAbmesFloatField;
    cdsDCDModesDCD_MODE_NAME: TAbmesWideStringField;
    cdsDCDModesDCD_MODE_ABBREV: TAbmesWideStringField;
    gbDCDMode: TGroupBox;
    pnlDCDMode: TPanel;
    cbDCDMode: TJvDBLookupCombo;
    cdsDataDCD_MODE_CODE: TAbmesFloatField;
    cdsData_DCD_MODE_NAME: TAbmesWideStringField;
    pnlDCDObjectMode: TPanel;
    pnlDCDSubjectMode: TPanel;
    frProduct: TfrProductExFieldEditFrame;
    pnlDeliveryLease: TPanel;
    pnlLease: TPanel;
    gbPlanDeliveryQuantity: TGroupBox;
    lblLeaseDateUnitQty: TLabel;
    lblDateUnit: TLabel;
    lblTotalLeaseQuantity: TLabel;
    lblLeaseQuantity: TLabel;
    lblWorkMeasure: TDBText;
    edtLeaseDateUnitQty: TDBEdit;
    cbDateUnit: TJvDBLookupCombo;
    edtTotalLeaseQuantity: TDBEdit;
    edtLeaseQuantity: TDBEdit;
    gbDateIntervals: TGroupBox;
    lblRentTimeInterval: TLabel;
    lblOfferDeadlineDate2: TLabel;
    frLeaseDates: TfrDateIntervalFrame;
    frOfferDeadlineDate2: TfrDateFieldEditFrame;
    pnlDelivery: TPanel;
    gbPlanLeaseQuantity: TGroupBox;
    lblPlanWorkQuantity: TLabel;
    lblPlanWorkQuantityMeasure: TDBText;
    edtPlanWorkQuantity: TDBEdit;
    pnlAccountQuantity: TPanel;
    lblPlanAccountQuantity: TLabel;
    lblPlanAccountQuantityMeasure: TDBText;
    edtPlanAccountQuantity: TDBEdit;
    gbDates: TGroupBox;
    lblDeficitCoverDate: TLabel;
    lblOfferDeadlineDate: TLabel;
    frDeficitCoverDate: TfrDateFieldEditFrame;
    frOfferDeadlineDate: TfrDateFieldEditFrame;
    frStore: TfrDeptFieldEditFrameLabeled;
    frVendor: TfrPartnerExFieldEditFrame;
    frMediator: TfrPartnerFieldEditFrameLabeled;
    gbSubjectiveModeDates: TGroupBox;
    lblPlanPositionDate: TLabel;
    lblPlanVendorPositionDate: TLabel;
    lblPlanDecisionDate: TLabel;
    lblRealPositionDate: TLabel;
    lblRealVendorPositionDate: TLabel;
    lblPositionDatesAxis1: TLabel;
    lblVendorPositionDatesAxis1: TLabel;
    imgArrow3: TImage;
    imgArrow4: TImage;
    dbtPlanVendorPositionDateDiff: TDBText;
    dbtPlanDecisionDateDiff: TDBText;
    imgArrow5: TImage;
    dbtRealVendorPositionDateDiff: TDBText;
    lblPositionDatesAxis2: TLabel;
    lblVendorPositionDatesAxis2: TLabel;
    dbtDatesDeviation: TDBText;
    dbtVendorDatesDeviation: TDBText;
    imgArrow1: TImage;
    dbtRegisterDateDiff: TDBText;
    lblStartDate: TLabel;
    lblRegisterDate: TLabel;
    dbtPlanPositionDateDiff: TDBText;
    imgArrow2: TImage;
    imgArrow7: TImage;
    dbtRealPositionDateDiff: TDBText;
    frPlanPositionDate: TfrDateFieldEditFrame;
    frRealPositionDate: TfrDateFieldEditFrame;
    frPlanVendorPositionDate: TfrDateFieldEditFrame;
    frRealVendorPositionDate: TfrDateFieldEditFrame;
    frPlanDecisionDate: TfrDateFieldEditFrame;
    frStartDate: TfrDateFieldEditFrame;
    frRegisterDate: TfrDateFieldEditFrame;
    cdsDataP_PRODUCT_CODE: TAbmesFloatField;
    cdsDataP_DEFICIT_COVER_DATE: TAbmesSQLTimeStampField;
    cdsDataP_WORK_QUANTITY: TAbmesFloatField;
    cdsDataP_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDataP_PSD_STORE_CODE: TAbmesFloatField;
    cdsDataP_LEASE_DATE_UNIT_QUANTITY: TAbmesFloatField;
    cdsDataP_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDataP_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDataP_RETURN_DATE: TAbmesSQLTimeStampField;
    cdsDataV_VENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsDataV_MEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsDataV_START_DATE: TAbmesSQLTimeStampField;
    cdsDataV_REGISTER_DATE: TAbmesSQLTimeStampField;
    cdsDataV_PLAN_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDataV_REAL_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDataV_PLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDataV_REAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsDataPLAN_DECISION_DATE: TAbmesSQLTimeStampField;
    cdsDataDCD_STATUS_CODE: TAbmesFloatField;
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsDataDEPT_CODEChange(Sender: TField);
    procedure actFinishExecute(Sender: TObject);
    procedure actAnnulExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure actFinishUpdate(Sender: TObject);
    procedure actAnnulUpdate(Sender: TObject);
    procedure cdsDataDCD_BRANCH_CODEChange(Sender: TField);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure btnDocsClick(Sender: TObject);
    procedure cdsData_STATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDataP_WORK_QUANTITYChange(Sender: TField);
    procedure cdsDataP_ACCOUNT_QUANTITYChange(Sender: TField);
    procedure cdsDataP_PRODUCT_CODEChange(Sender: TField);
    procedure cdsDataP_DEFICIT_COVER_DATEChange(Sender: TField);
    procedure cdsDataDCD_MODE_CODEChange(Sender: TField);
    procedure cdsDataDELIVERY_DEAL_TYPE_CODEChange(Sender: TField);
    procedure DatesValidate(Sender: TField);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FHasDetails: Boolean;
    FProdOrderBaseType: TBorderProdOrderBaseType;
    FFrameReadOnly: Boolean;
    FEmployeeReadOnly: Boolean;
    FCanAnnul: Boolean;
    FCanClose: Boolean;
    FStoreReadOnly: Boolean;
    FWorkOrAccountQuantityChanging: TTrySinglePassSection;
    FInsertedDCDBranchCode: Integer;
    FInsertedDCDCode: Integer;
    procedure CalcAccountQuantity;
    procedure CalcWorkQuantity;
    function IsDCDModeField(const AField: TField): Boolean;
  protected
    function GetOriginalFormCaption: string; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function IsQuantityField(const AField: TAbmesFloatField): Boolean; override;
    procedure DoEditApplyUpdates; override;
    procedure DoEditCancelUpdates; override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;

    class function InsertDCD(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      ADefaultsOrigin: TDefaultsOrigin;
      AProdOrderBaseType: TBorderProdOrderBaseType;
      AProductClass: TProductClass;
      var AInsertedDCDBranchCode: Integer;
      var AInsertedDCDCode: Integer): Boolean;

    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AHasDetails: Boolean = False;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProdOrderBaseType: TBorderProdOrderBaseType = pobtSaleCover;
      AProductClass: TProductClass = pcNone): Boolean;

    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AHasDetails: Boolean = False;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProdOrderBaseType: TBorderProdOrderBaseType = pobtSaleCover;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;

    procedure Initialize; override;
  end;

  TfmDeficitCoverDecisionClass = class of TfmDeficitCoverDecision;

implementation

uses
  dMain, AbmesDialogs, uUtils, uTreeClientUtils, uClientUtils, uDocUtils,
  fTreeSelectForm, uDeliveryUtils, uColorConsts, uDeliveryDealTypes,
  uAspectTypes, uStreamTypes, uProductClientUtils, uClientDateTime,
  uDCDModes, StrUtils, uCompanyKinds, uCompanyStatuses;

{$R *.DFM}

resourcestring
  SZeroAccountQuantityError = 'Счетоводното количество трябва да е по-голямо от 0!';
  SZeroWorkQuantityError = 'Работното количество трябва да е по-голямо от 0!';

  SCannotAnnul =
    'Не можете да анулирате настоящия ПДД, защото по него има активни договорени ОДД';

  SAnnulConfirm =
    'Анулирането на настоящия ПДД автоматично ще маркира като "отказани" всички проектни ОДД по него.' +
    SLineBreak +
    'Желаете ли анулиране?';

  SCannotClose =
    'Не можете да приключите настоящия ПДД, защото по него има активни ОДД!';

  SCloseConfirm =
    'Приключването на настоящия ПДД ще забрани бъдещо създаване на нов ОДД.' +
    SLineBreak +
    'Желаете ли приключване?';

  SDCDSaved =
    'Пакета Диалози с Доставчици е записан под номер %d';

  SIncompatibleStreamTypeAndDeliveryDealType =
    'Не можете да запишете Пакет Диалози за Наемащи доставки с Обратен поток';

  SIncompatibleStreamTypeAndAspectType =
    'Не можете да запишете Пакет Диалози в Аспект Перспектива с Обратен поток';

  SInvalidDates1 =
    'Крайна Дата за Решение по Позиция не може да бъде по-късна от Начална дата на Интервал на Наем';  

  SInvalidDates2 =
    'Крайна Дата за Решение по Позиция не може да бъде по-късна от Дата на Отрицателна Наличност';


{ TfmDeficitCoverDecision }

procedure TfmDeficitCoverDecision.cdsDataNewRecord(DataSet: TDataSet);
begin
  cdsDataDCD_MODE_CODE.AsDCDMode:= IntToDCDMode(LoginContext.DefaultDCDModeCode);

  inherited;

  cdsDataIS_DONE.AsBoolean:= False;
  cdsDataIS_CANCELED.AsBoolean:= False;
  cdsDataHAS_DOC.AsBoolean:= False;

  if (FProductClass = pcFinancial) then
    cdsDataDELIVERY_DEAL_TYPE_CODE.AsInteger:= ddtDeliveryForSales;

  if (FProdOrderBaseType = pobtOccCover) then
    begin
      cdsDataDELIVERY_DEAL_TYPE_CODE.AsInteger:= ddtDeliveryForOccupations;
      cdsDataSTREAM_TYPE_CODE.AsInteger:= stStraight;
      cdsDataASPECT_TYPE_CODE.AsInteger:= AspectTypeToInt(atRealization);
    end;

  cdsDataPRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmDeficitCoverDecision.FormCreate(Sender: TObject);
begin
  inherited;
  HasDocItemsField:= cdsDataHAS_DOC;

  frProduct.FieldNames:= 'P_PRODUCT_CODE';
  frProduct.TreeDetailSelection:= tdsInstance;
  frProduct.DocButtonVisible:= True;
  frProduct.SpecStateVisible:= False;
  frProduct.PriorityVisible:= True;
  frProduct.PartnerProductNamesVisible:= False;
  frProduct.ProductPeriodsButtonVisible:= True;

  FCanAnnul:= True;
  FCanClose:= True;
  FFrameReadOnly:= False;
  FEmployeeReadOnly:= False;

  frEmployee.FieldNames:= 'VPD_EMPLOYEE_CODE';

  frStore.FieldNames:= 'P_PSD_STORE_CODE';
  frDeficitCoverDate.FieldNames:= 'P_DEFICIT_COVER_DATE';
  frOfferDeadlineDate.FieldNames:= 'PLAN_DECISION_DATE';
  frOfferDeadlineDate2.FieldNames:= 'PLAN_DECISION_DATE';
  frLeaseDates.FieldNames:= 'P_RECEIVE_DATE;P_RETURN_DATE';

  frVendor.FieldNames:= 'V_VENDOR_COMPANY_CODE';
  frVendor.CountryVisible:= True;
  frVendor.ParRelButtonVisible:= True;
  frVendor.ShownCompanyStatuses:= ActiveCompanyStatuses;

  frMediator.FieldNames:= 'V_MEDIATOR_COMPANY_CODE';
  frMediator.FilterCompanyKind:= ckMediator;
  frStartDate.FieldNames:= 'V_START_DATE';
  frRegisterDate.FieldNames:= 'V_REGISTER_DATE';
  frPlanPositionDate.FieldNames:= 'V_PLAN_POSITION_DATE';
  frRealPositionDate.FieldNames:= 'V_REAL_POSITION_DATE';
  frPlanVendorPositionDate.FieldNames:= 'V_PLAN_VENDOR_POSITION_DATE';
  frRealVendorPositionDate.FieldNames:= 'V_REAL_VENDOR_POSITION_DATE';
  frPlanDecisionDate.FieldNames:= 'PLAN_DECISION_DATE';
end;

class function TfmDeficitCoverDecision.ShowForm(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  AHasDetails: Boolean;
  ADefaultsOrigin: TDefaultsOrigin;
  AProdOrderBaseType: TBorderProdOrderBaseType;
  AProductClass: TProductClass): Boolean;
var
  f: TfmDeficitCoverDecision;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, AHasDetails, ADefaultsOrigin, AProdOrderBaseType, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

class function TfmDeficitCoverDecision.InsertDCD(AdmDocClient: TdmDocClient; ADataSet: TDataSet; ADefaultsOrigin: TDefaultsOrigin;
  AProdOrderBaseType: TBorderProdOrderBaseType; AProductClass: TProductClass; var AInsertedDCDBranchCode: Integer; var AInsertedDCDCode: Integer): Boolean;
var
  f: TfmDeficitCoverDecision;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, emInsert, False, ADefaultsOrigin, AProdOrderBaseType, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
    if Result then
      begin
        AInsertedDCDBranchCode:= f.FInsertedDCDBranchCode;
        AInsertedDCDCode:= f.FInsertedDCDCode;
      end;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmDeficitCoverDecision.SetDataParams(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode;
  AHasDetails: Boolean;
  ADefaultsOrigin: TDefaultsOrigin;
  AProdOrderBaseType: TBorderProdOrderBaseType;
  AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FHasDetails:= AHasDetails;
  FProdOrderBaseType:= AProdOrderBaseType;
  FProductClass:= AProductClass;
end;

procedure TfmDeficitCoverDecision.cdsDataBeforePost(DataSet: TDataSet);

  function GetVisibleWorkQuantityEdit: TDBEdit;
  begin
    Result:= Utils.IfThen(cdsDataDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease, edtLeaseQuantity, edtPlanWorkQuantity);
  end;

  function GetVisibleAccountWorkQuantityEdit: TDBEdit;
  begin
    Result:= Utils.IfThen(not (cdsDataDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease), edtPlanAccountQuantity);
  end;

begin
  inherited;

  if (cdsDataSTREAM_TYPE_CODE.AsInteger = stReverse) and
     (cdsDataDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease) then
    raise Exception.Create(SIncompatibleStreamTypeAndDeliveryDealType);

  if (cdsDataSTREAM_TYPE_CODE.AsInteger = stReverse) and
     (cdsDataASPECT_TYPE_CODE.AsInteger = AspectTypeToInt(atEstimation)) then
    raise Exception.Create(SIncompatibleStreamTypeAndAspectType);

  if (cdsDataDCD_MODE_CODE.AsDCDMode = dcdmObjective) then
    begin
      CheckRequiredFields([cdsDataP_PRODUCT_CODE, cdsDataP_PSD_STORE_CODE]);

      if (EditMode = emInsert) then
        begin
          if (cdsDataDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease) then
            begin
              CheckRequiredFields([cdsDataP_RECEIVE_DATE, cdsDataP_RETURN_DATE, cdsDataP_LEASE_DATE_UNIT_QUANTITY, cdsDataP_LEASE_DATE_UNIT_CODE]);
              if (cdsDataPLAN_DECISION_DATE.AsDateTime > cdsDataP_RECEIVE_DATE.AsDateTime) then
                raise Exception.Create(SInvalidDates1);
            end
          else
            begin
              CheckRequiredField(cdsDataP_DEFICIT_COVER_DATE);
              if (cdsDataPLAN_DECISION_DATE.AsDateTime > cdsDataP_DEFICIT_COVER_DATE.AsDateTime) then
                raise Exception.Create(SInvalidDates2);
            end;
        end;  { if }

      if (cdsDataP_WORK_QUANTITY.AsFloat <= 0) then
        DoControlValueError(GetVisibleWorkQuantityEdit, SZeroWorkQuantityError);

      if (cdsDataP_ACCOUNT_QUANTITY.AsFloat <= 0) then
        DoControlValueError(GetVisibleAccountWorkQuantityEdit, SZeroAccountQuantityError);
    end;

  if (cdsDataDCD_MODE_CODE.AsDCDMode = dcdmSubjective) then
    begin
      CheckRequiredFields([
        cdsDataV_VENDOR_COMPANY_CODE,
        cdsDataV_START_DATE,
        cdsDataV_REGISTER_DATE]);
    end;
end;

procedure TfmDeficitCoverDecision.cdsData_STATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= DCDStatuses[Sender.AsInteger];
end;

procedure TfmDeficitCoverDecision.cdsDataDEPT_CODEChange(Sender: TField);
begin
  inherited;
  dsData.DataSet.FieldByName('DEPT_NO').AsVariant:=
    cdsBranches.FieldByName('BRANCH_NO').AsVariant;
end;

procedure TfmDeficitCoverDecision.CloseDataSets;
begin
  inherited;
  cdsDateUnits.Close;
  cdsDeliveryDealTypes.Close;
  cdsBranches.Close;
  cdsMeasures.Close;
  cdsStreamTypes.Close;
  cdsAspectTypes.Close;
end;

procedure TfmDeficitCoverDecision.OpenDataSets;
begin
  inherited;
  cdsAspectTypes.Open;
  cdsStreamTypes.Open;
  cdsMeasures.Open;
  cdsBranches.Open;
  cdsDeliveryDealTypes.Open;
  cdsDateUnits.Open;

  if (FProdOrderBaseType <> pobtEmpty) then
    cdsDeliveryDealTypes.Filter:= Format('(PROD_ORDER_BASE_TYPE_CODE = %d)', [ProdOrderBaseTypeToInt(FProdOrderBaseType)])
  else
    cdsDeliveryDealTypes.Filter:= '';

  cdsDeliveryDealTypes.Filtered:= (cdsDeliveryDealTypes.Filter <> '');
end;

procedure TfmDeficitCoverDecision.actFinishExecute(Sender: TObject);
begin
  inherited;

  if not FCanClose then
    raise Exception.Create(SCannotClose);

  ConfirmAction(SCloseConfirm);
  CheckEditMode(cdsData);
  cdsDataIS_DONE.AsBoolean:= True;
  actApplyUpdates.Execute;
end;

procedure TfmDeficitCoverDecision.actAnnulExecute(Sender: TObject);
begin
  inherited;

  if not FCanAnnul then
    raise Exception.Create(SCannotAnnul);

  ConfirmAction(SAnnulConfirm);
  CheckEditMode(cdsData);
  cdsDataIS_CANCELED.AsBoolean:= True;
  actApplyUpdates.Execute;
end;

procedure TfmDeficitCoverDecision.actFormUpdate(Sender: TObject);
var
  IsAnnuled, IsFinished: Boolean;
begin
  inherited;

  pnlLease.Visible:= (cdsDataDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease);
  pnlDelivery.Visible:= not pnlLease.Visible;

  IsAnnuled:= cdsDataIS_CANCELED.AsBoolean;
  IsFinished:= cdsDataIS_DONE.AsBoolean;

  btnDocs.ImageIndex:= cdsDataHAS_DOC.AsInteger;

  SetControlReadOnly(
    (EditMode <> emInsert) or (FProductClass = pcFinancial) or (FProdOrderBaseType = pobtOccCover),
    cbType);

  SetControlReadOnly((EditMode <> emInsert), cbDCDBranch);

  SetControlsReadOnly((EditMode <> emInsert) or (FProdOrderBaseType = pobtOccCover), [cbStreamType, cbAspectType]);

  pnlAnnul.Visible:= not IsFinished and not IsAnnuled and not (EditMode = emInsert);
  pnlFinish.Visible:= not IsFinished and not IsAnnuled and not (EditMode = emInsert);

  pnlIsAnnuled.Visible:= IsAnnuled;
  pnlIsFinished.Visible:= IsFinished;

  if (cdsDataASPECT_TYPE_CODE.AsInteger = AspectTypeToInt(atEstimation)) then
    SetControlsReadOnly((EditMode = emReadOnly) or IsAnnuled or IsFinished, [edtPlanWorkQuantity, edtPlanAccountQuantity])
  else
    SetControlsReadOnly((EditMode = emReadOnly) or IsAnnuled or IsFinished or FHasDetails, [edtPlanWorkQuantity, edtPlanAccountQuantity]);

  FFrameReadOnly:= (EditMode = emReadOnly) or IsAnnuled or IsFinished or FHasDetails;
  FEmployeeReadOnly:= (EditMode = emReadOnly) or IsAnnuled or IsFinished;
  FStoreReadOnly:= (EditMode = emReadOnly) or IsAnnuled or IsFinished;

  pnlClose.Visible:= IsAnnuled or IsFinished or (EditMode = emReadOnly);
  pnlOKCancel.Visible:= not pnlClose.Visible;

  if not cdsData_STATUS_CODE.IsNull then
    edtStatus.Color:= DCDStatusColors[cdsData_STATUS_CODE.AsInteger]
  else
    edtStatus.Color:= clBtnFace;

  pnlAccountQuantity.Visible:= (FProductClass <> pcFinancial);

  pnlDCDObjectMode.Visible:= (cdsDataDCD_MODE_CODE.AsDCDMode = dcdmObjective);
  pnlDCDSubjectMode.Visible:= (cdsDataDCD_MODE_CODE.AsDCDMode = dcdmSubjective);

  SetControlReadOnly(EditMode <> emInsert, cbDCDMode);
end;

procedure TfmDeficitCoverDecision.actApplyUpdatesExecute(Sender: TObject);
var
  DCDCode: Integer;
begin
  DCDCode:= cdsDataDCD_CODE.AsInteger;
  inherited;
  if (cdsDataDCD_CODE.AsInteger <> DCDCode) then
    ShowMessageFmtEx(SDCDSaved, [cdsDataDCD_CODE.AsInteger]);
end;

procedure TfmDeficitCoverDecision.actFinishUpdate(Sender: TObject);
begin
  inherited;
  actFinish.Enabled:= (EditMode <> emReadOnly);
end;

procedure TfmDeficitCoverDecision.actAnnulUpdate(Sender: TObject);
begin
  inherited;
  actAnnul.Enabled:= (EditMode <> emReadOnly);
end;

procedure TfmDeficitCoverDecision.cdsDataDCD_BRANCH_CODEChange(Sender: TField);
begin
  inherited;
  if cdsDataDCD_BRANCH_CODE.IsNull then
    cdsDataDCD_CODE.Clear
  else
    cdsDataDCD_CODE.AsInteger:= dmMain.SvrDeliveries.GetNewDeficitCoverDecisionCode(cdsDataDCD_BRANCH_CODE.AsInteger);
end;

procedure TfmDeficitCoverDecision.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  // do not call inherited
  if (AFrame = frEmployee) then
    AFrame.ReadOnly:= FEmployeeReadOnly
  else
    if (AFrame = frStore) then
      AFrame.ReadOnly:= FStoreReadOnly
    else
      AFrame.ReadOnly:= FFrameReadOnly;
end;

procedure TfmDeficitCoverDecision.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if not cdsDataDCD_MODE_CODE.IsNull then
    if (cdsDataDCD_MODE_CODE.AsDCDMode = dcdmObjective) then
      cdsData_STATUS_CODE.AsInteger:=
        CalcObjectiveDCDStatusCode(
          cdsDataPLAN_DECISION_DATE,
          cdsDataP_WORK_QUANTITY,
          cdsDataDP_DECISION_QUANTITY,
          cdsDataDC_QUANTITY,
          cdsDataDELIVERY_SD_QUANTITY,
          cdsDataP_DEFICIT_COVER_DATE,
          cdsDataIS_DONE,
          cdsDataIS_CANCELED)
    else
      cdsData_STATUS_CODE.AsInteger:=
        CalcSubjectiveDCDStatusCode(
          cdsDataDCD_STATUS_CODE,
          cdsDataPLAN_DECISION_DATE,
          cdsDataIS_DONE,
          cdsDataIS_CANCELED);

  cdsData_TOTAL_LEASE_QUANTITY.AsVariant:= cdsDataP_WORK_QUANTITY.AsVariant * cdsDataP_LEASE_DATE_UNIT_QUANTITY.AsVariant;
  cdsData_PRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
  cdsData_PROD_ORDER_BASE_TYPE_CODE.AsInteger:= ProdOrderBaseTypeToInt(FProdOrderBaseType);
end;

procedure TfmDeficitCoverDecision.CalcWorkQuantity;
begin
  FWorkOrAccountQuantityChanging.TempEnter/
    procedure begin
      cdsDataP_WORK_QUANTITY.AsVarFloat:= VarToFloat(SafeDiv(cdsDataP_ACCOUNT_QUANTITY, cdsDataPRODUCT_ACCOUNT_MEASURE_COEF));
    end;
end;

procedure TfmDeficitCoverDecision.CalcAccountQuantity;
begin
  FWorkOrAccountQuantityChanging.TempEnter/
    procedure begin
      cdsDataP_ACCOUNT_QUANTITY.AsVarFloat:= cdsDataP_WORK_QUANTITY.AsFloat * cdsDataPRODUCT_ACCOUNT_MEASURE_COEF.AsFloat;
    end;
end;

function TfmDeficitCoverDecision.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmDeficitCoverDecision.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  Assert(FProductClass in [pcNormal, pcFinancial]);

  MsgParams:=
    uDeliveryUtils.CreateCommonMsgParams(FProdOrderBaseType, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    if (FProdOrderBaseType = pobtOccCover) then
      OccupationProductFixCommonMsgParams(MsgParams);

    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;

  frProduct.ProductClass:= FProductClass;

  if (FProdOrderBaseType = pobtOccCover) then
    begin
      frProduct.ProductOriginVisible:= False;
      frProduct.ProductPeriodsButtonVisible:= False;
      if (LoginContext.OccupationRootProductCode > 0) then
        frProduct.RootCode:= LoginContext.OccupationRootProductCode;
    end;

  frStore.SelectStore:= True;
  frStore.SelectFinancialStore:= (FProductClass = pcFinancial);

  cdsDataP_PRODUCT_CODE.DisplayLabel:= Trim(frProduct.gbTreeNode.Caption);
  cdsBranches.Filtered:= (EditMode = emInsert);

  if (EditMode = emEdit) then
    begin
      Assert(not cdsDataDCD_OBJECT_BRANCH_CODE.IsNull);
      Assert(not cdsDataDCD_OBJECT_CODE.IsNull);

      FCanAnnul:= dmMain.SvrDeliveries.RPDCanAnnul(cdsDataDCD_OBJECT_BRANCH_CODE.AsInteger, cdsDataDCD_OBJECT_CODE.AsInteger);
      FCanClose:= dmMain.SvrDeliveries.RPDCanClose(cdsDataDCD_OBJECT_BRANCH_CODE.AsInteger, cdsDataDCD_OBJECT_CODE.AsInteger);
    end;

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotDeficitCoverDecision, cdsData);
end;

function TfmDeficitCoverDecision.IsQuantityField(const AField: TAbmesFloatField): Boolean;
begin
  Result:= False;
end;

procedure TfmDeficitCoverDecision.cdsDataBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmDeficitCoverDecision.btnDocsClick(Sender: TObject);
var
  AEditMode: TEditMode;
begin
  inherited;

  if pnlClose.Visible then
    AEditMode:= emReadOnly
  else
    AEditMode:= EditMode;

  if (AEditMode = emEdit) then
    CheckEditMode(cdsData);

  dmDocClient.DSOpenDoc(AEditMode, btnDocs, dotDeficitCoverDecision, cdsData);
end;

// ------------------

procedure TfmDeficitCoverDecision.cdsDataP_PRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  DoProductFieldChanged(
    Sender,
    cdsDataPRODUCT_NAME,
    cdsDataPRODUCT_CUSTOM_CODE,
    cdsDataWORK_MEASURE_CODE,
    cdsDataACCOUNT_MEASURE_CODE,
    cdsDataPRODUCT_ACCOUNT_MEASURE_COEF);

  CalcAccountQuantity;
end;

procedure TfmDeficitCoverDecision.cdsDataP_ACCOUNT_QUANTITYChange(Sender: TField);
begin
  inherited;
  CalcWorkQuantity;
end;

procedure TfmDeficitCoverDecision.cdsDataP_WORK_QUANTITYChange(Sender: TField);
begin
  inherited;
  CalcAccountQuantity;
end;

procedure TfmDeficitCoverDecision.cdsDataP_DEFICIT_COVER_DATEChange(Sender: TField);
begin
  inherited;
  if cdsDataP_DEFICIT_COVER_DATE.IsNull then
    frProduct.VIMDate:= ContextDate
  else
    frProduct.VIMDate:= cdsDataP_DEFICIT_COVER_DATE.AsDateTime;
end;

function TfmDeficitCoverDecision.IsDCDModeField(const AField: TField): Boolean;
begin
  Result:= StartsStr('P_', AField.FieldName) or StartsStr('V_', AField.FieldName);
end;

procedure TfmDeficitCoverDecision.cdsDataDCD_MODE_CODEChange(Sender: TField);
var
  f: TField;
begin
  inherited;

  for f in cdsData.Fields.Filter(IsDCDModeField) do
    f.Clear;
end;

procedure TfmDeficitCoverDecision.cdsDataDELIVERY_DEAL_TYPE_CODEChange(Sender: TField);
begin
  inherited;
  if (cdsDataDELIVERY_DEAL_TYPE_CODE.AsInteger = ddtImport) then
    begin
      frVendor.FilterCompanyKind:= ckClient;
      frVendor.PriorityCompanyKind:= ckClient;
    end
  else
    begin
      frVendor.FilterCompanyKind:= ckVendor;
      frVendor.PriorityCompanyKind:= ckVendor;
    end;
end;

procedure TfmDeficitCoverDecision.DatesValidate(Sender: TField);
begin
  CheckDatesAreInOrder(cdsDataV_START_DATE, cdsDataV_REGISTER_DATE);
  CheckDatesAreInOrder(cdsDataV_REGISTER_DATE, cdsDataV_PLAN_POSITION_DATE);
  CheckDatesAreInOrder(cdsDataV_PLAN_POSITION_DATE, cdsDataV_PLAN_VENDOR_POSITION_DATE);
  CheckDatesAreInOrder(cdsDataV_REAL_POSITION_DATE, cdsDataV_REAL_VENDOR_POSITION_DATE);
  CheckDatesAreInOrder(cdsDataV_PLAN_POSITION_DATE, cdsDataPLAN_DECISION_DATE);
  CheckDatesAreInOrder(cdsDataV_PLAN_VENDOR_POSITION_DATE, cdsDataPLAN_DECISION_DATE);
end;

procedure TfmDeficitCoverDecision.DoEditApplyUpdates;
begin
  inherited;
  if (EditMode = emInsert) then
    begin
      FInsertedDCDBranchCode:= cdsDataDCD_BRANCH_CODE.AsInteger;
      FInsertedDCDCode:= cdsDataDCD_CODE.AsInteger;
    end;
end;

procedure TfmDeficitCoverDecision.DoEditCancelUpdates;
begin
  FInsertedDCDBranchCode:= 0;
  FInsertedDCDCode:= 0;
  inherited;
end;

end.
