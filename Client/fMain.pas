unit fMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Menus, ActnList, ComCtrls, ImgList, AppEvnts, fEditForm, uClientTypes,
  uClientLoginContext, Dialogs, ExtCtrls, StdCtrls, DB, JvExControls,
  AbmesFields, DBClient, AbmesClientDataSet, Buttons, uUserActivityConsts,
  fBaseFrame, fTimeline, ToolWin, uProductionOrderTypes, dDocClient,
  JvComponent, JvLabel, uExceptEventClientUtils, uWndProcHooker, JvExExtCtrls,
  JvImage, jpeg, uNestProc, System.Actions, JvExtComponent, JvPanel, JvGradient,
  System.ImageList;

type
  TModelChangeStatus = (
    mcsRequestedChange,
    mcsRejectedChange,
    mcsRequestedMyChange,
    mcsRejectedMyChange,
    mcsMyMlRequestedChange,
    mcsMyMlRejectedChange);

type
  TIndicationType = (itExceptEvent, itExceptEventTask);
  TIndicationProcess = (ipControl, ipRealization);
  TIndicationOwner = (ioAll, ioUser, ioDept);
  TIndicationActivation = (iaActivated, iaNotActivated);
  TIndicationLevel = (ilPrimary, ilSecondary);

type
  TRequestOrReject = (rrRequest, rrReject);

const
  ModelChangeStatusRequestOrReject: array[TModelChangeStatus] of TRequestOrReject =
    (rrRequest, rrReject, rrRequest, rrReject, rrRequest, rrReject);

const
  ModelChangeStatusVisibleUserActivity: array[TModelChangeStatus] of Integer = (
    uaMllcChangeIndicator,
    uaMllcChangeIndicator,
    uaMllcMyChangeIndicator,
    uaMllcMyChangeIndicator,
    uaMllcMyMlChangeIndicator,
    uaMllcMyMlChangeIndicator);

type
  TProcessView = (pvNone, pvFinance, pvSales, pvDeliveries, pvProduction, pvEnvironment);

type
  TDocItem = record
    DocBranchCode: Integer;
    DocCode: Integer;
    DocItemCode: Integer;
  end;

type
  TOnExceptionProc = reference to procedure (const AExceptionMessage, AExceptionClassName: string);

type
  TfmMain = class(TForm)
    ApplicationEvents: TApplicationEvents;
    stbMain: TStatusBar;
    alActions: TActionList;
    mmMainMenu: TMainMenu;
    miProgramMenu: TMenuItem;
    miProducts: TMenuItem;
    miDepts: TMenuItem;
    miEnvironmentMenu: TMenuItem;
    miCustomhouses: TMenuItem;
    miShipmentTypes: TMenuItem;
    miEmployees: TMenuItem;
    miCountries: TMenuItem;
    miUsers: TMenuItem;
    miSalesMenu: TMenuItem;
    mlExit: TMenuItem;
    miExit: TMenuItem;
    miObjectsMenu: TMenuItem;
    miNewStoreDealIn: TMenuItem;
    miNewStoreDealOut: TMenuItem;
    miVendorProductNames: TMenuItem;
    mlEmployees: TMenuItem;
    miNoms: TMenuItem;
    miAbout: TMenuItem;
    miLanguages: TMenuItem;
    miMeasures: TMenuItem;
    miConfig: TMenuItem;
    actNewStoreDealIn: TAction;
    actNewStoreDealOut: TAction;
    miSaleOrders: TMenuItem;
    miStoreQuantities: TMenuItem;
    miStoreDeals: TMenuItem;
    miPlannedStoreDeals: TMenuItem;
    mlSalesOverviewShp: TMenuItem;
    miCurrencyRates: TMenuItem;
    actMeasures: TAction;
    actLanguages: TAction;
    actNoms: TAction;
    miPriorities: TMenuItem;
    mlNewStoreRequestIn: TMenuItem;
    mlAbout: TMenuItem;
    actExit: TAction;
    actConfig: TAction;
    actUsers: TAction;
    actAbout: TAction;
    actCurrencyRates: TAction;
    actShipmentTypes: TAction;
    actCountries: TAction;
    actCustomhouses: TAction;
    actProducts: TAction;
    actVendorProductNames: TAction;
    actDepts: TAction;
    actEmployees: TAction;
    actCompanies: TAction;
    actPriorities: TAction;
    actNewStoreDealInInternal: TAction;
    actNewStoreDealOutInternal: TAction;
    actPlannedStoreDeals: TAction;
    actStoreQuantities: TAction;
    actStoreDeals: TAction;
    actNewStoreRequestIn: TAction;
    actStoreRequests: TAction;
    actNewDeficitCoverDecision: TAction;
    actDeficitCoverDecisions: TAction;
    actDeliveries: TAction;
    actSaleOrders: TAction;
    actNewProductionOrder: TAction;
    actSpecifications: TAction;
    ilSmallImages: TImageList;
    mlNewGroupSale: TMenuItem;
    miCurrencies: TMenuItem;
    actCurrencies: TAction;
    ilLargeImages: TImageList;
    actProductQuantitiesTree: TAction;
    miProductQuantitiesTree: TMenuItem;
    mlAppAdministrationSubMenu: TMenuItem;
    miToolbarMenu: TMenuItem;
    pmToolbars: TPopupMenu;
    mlNewStoreDealIn: TMenuItem;
    miWorkMenu: TMenuItem;
    miProductionMenu: TMenuItem;
    actStatusBar: TAction;
    actForm: TAction;
    actCompany: TAction;
    miCompany: TMenuItem;
    actVIMQuantity: TAction;
    actNewStoreRequestOut: TAction;
    actNewGroupSale: TAction;
    miNewGroupSale: TMenuItem;
    actQuantityDeficit: TAction;
    mlPlannedStoreDeals: TMenuItem;
    miNewStoreRequestIn: TMenuItem;
    miNewStoreRequestOut: TMenuItem;
    miStoreRequests: TMenuItem;
    actSaleQuantities: TAction;
    miSaleQuantities: TMenuItem;
    miVIMQuantity: TMenuItem;
    miQuantityDeficit: TMenuItem;
    actNewSpecification: TAction;
    actOutFaktura: TAction;
    actOutDebitnoIzvestie: TAction;
    actOutKreditnoIzvestie: TAction;
    actOutOtchetZaProdajbite: TAction;
    actOutProtokol: TAction;
    miNewSpecification: TMenuItem;
    miSpecifications: TMenuItem;
    miDeliveriesMenu: TMenuItem;
    miDeliveries: TMenuItem;
    miDeficitCoverDecisions: TMenuItem;
    miNewDeficitCoverDecision1: TMenuItem;
    miFinanceMenu: TMenuItem;
    miAppAdministrationSubMenu: TMenuItem;
    mlCurrentDept: TMenuItem;
    miSalesInvoicesSubMenu: TMenuItem;
    actDayOffs: TAction;
    miDaysOff: TMenuItem;
    miSalesOverviewShp: TMenuItem;
    actSalesOverviewShp: TAction;
    actUncoveredPSD: TAction;
    miUncoveredPSD: TMenuItem;
    actUncoveredModels: TAction;
    miUncoveredModels: TMenuItem;
    tmrMllChanges: TTimer;
    actMllcRequestedChanges: TAction;
    actMllcRequestedMyChanges: TAction;
    actMllcMyMlRequestedChanges: TAction;
    actMllcRejectedChanges: TAction;
    actMllcRejectedMyChanges: TAction;
    actMllcMyMlRejectedChanges: TAction;
    actModelMovementsOverview: TAction;
    actConfigUser: TAction;
    miConfigUser: TMenuItem;
    mlUserIdentityProfile: TMenuItem;
    mlVIMQuantity: TMenuItem;
    actRefreshPendingMllChanges: TAction;
    actUnfinishedMfg: TAction;
    mlUnfinishedMfg: TMenuItem;
    miUnfinishedMfg: TMenuItem;
    actDocItemTypes: TAction;
    miDocItemTypes: TMenuItem;
    actUserGroups: TAction;
    miUserGroups: TMenuItem;
    mlUsers: TMenuItem;
    actProfessions: TAction;
    miProfessions: TMenuItem;
    actTeams: TAction;
    miTeams: TMenuItem;
    actMonthTeams: TAction;
    miMonthTeams: TMenuItem;
    cdsXModelsParams: TAbmesClientDataSet;
    cdsXModelsParamsHAS_REQUESTED_CHANGES: TAbmesFloatField;
    cdsXModelsParamsHAS_NOT_REQUESTED_CHANGES: TAbmesFloatField;
    cdsXModelsParamsHAS_REQUESTED_MY_CHANGES: TAbmesFloatField;
    cdsXModelsParamsHAS_NOT_REQUESTED_MY_CHANGES: TAbmesFloatField;
    cdsXModelsParamsHAS_REJECTED_CHANGES: TAbmesFloatField;
    cdsXModelsParamsHAS_NOT_REJECTED_CHANGES: TAbmesFloatField;
    cdsXModelsParamsHAS_REJECTED_MY_CHANGES: TAbmesFloatField;
    cdsXModelsParamsENGINEER_EMPLOYEE_CODE: TAbmesFloatField;
    cdsXModelsParamsHAS_NOT_REJECTED_MY_CHANGES: TAbmesFloatField;
    miSubjectsMenu: TMenuItem;
    miEmployeeEarnings: TMenuItem;
    pnlMain: TPanel;
    actSalesProcessView: TAction;
    actDeliveriesProcessView: TAction;
    actProductionProcessView: TAction;
    actFinanceProcessView: TAction;
    actEnvironmentProcessView: TAction;
    actNoProcessView: TAction;
    pnlInProcessView: TPanel;
    btnNoProcessView: TSpeedButton;
    pnlOutOfProcessView: TPanel;
    btnPVDeliveries: TSpeedButton;
    imgInProcessViewBackground: TImage;
    lblProcessView: TLabel;
    actSql: TAction;
    mlSql: TMenuItem;
    miSql: TMenuItem;
    pmPendingMLLChanges: TPopupMenu;
    miRefreshPendingMllChanges: TMenuItem;
    mlMllcRequestedMyChange: TMenuItem;
    miMllcRequestedMyChange: TMenuItem;
    miMllcRejectedMyChange: TMenuItem;
    miMllcMyMLRequestedChange: TMenuItem;
    miMllcMyMLRejectedChange: TMenuItem;
    miMllcRequestedChange: TMenuItem;
    miMllcRejectedChange: TMenuItem;
    actSaleTypes: TAction;
    miSaleTypes: TMenuItem;
    actOutStoreDealsExport: TAction;
    miOutStoreDealsExport: TMenuItem;
    actDeptTypes: TAction;
    miDeptTypes: TMenuItem;
    actDetailRealNeeds: TAction;
    miDetailRealNeeds: TMenuItem;
    actMaterialRealNeeds: TAction;
    miMaterialRealNeeds: TMenuItem;
    actProductionProductsTree: TAction;
    miProductionProductsTree: TMenuItem;
    mlEstNeeds: TMenuItem;
    actResultProductRealNeeds: TAction;
    miResultProductRealNeeds: TMenuItem;
    pmCaption: TPopupMenu;
    miCaptionToolbarMenu: TMenuItem;
    mlCaptionHumanResourceMenu: TMenuItem;
    miCaptionChangeRequestsMenu: TMenuItem;
    cdsPendingChangeCounts: TAbmesClientDataSet;
    cdsPendingChangeCountsREQUESTED_CHANGE_COUNT: TAbmesFloatField;
    cdsPendingChangeCountsREQUESTED_MY_CHANGE_COUNT: TAbmesFloatField;
    cdsPendingChangeCountsMY_ML_REQUESTED_CHANGE_COUNT: TAbmesFloatField;
    cdsPendingChangeCountsREJECTED_CHANGE_COUNT: TAbmesFloatField;
    cdsPendingChangeCountsREJECTED_MY_CHANGE_COUNT: TAbmesFloatField;
    cdsPendingChangeCountsMY_ML_REJECTED_CHANGE_COUNT: TAbmesFloatField;
    mlMllcMyMLRequestedChange: TMenuItem;
    mlMllcRequestedChange: TMenuItem;
    pmMllcRequestedChanges: TPopupMenu;
    pmMllcRejectedChanges: TPopupMenu;
    pmMllcRequestedMyChanges: TPopupMenu;
    pmMllcRejectedMyChanges: TPopupMenu;
    pmMllcMyMlRequestedChanges: TPopupMenu;
    pmMllcMyMlRejectedChanges: TPopupMenu;
    actOperationMovements: TAction;
    actOperationalTasks: TAction;
    actCurrentDept: TAction;
    miCurrentDept: TMenuItem;
    actDeptDetailFlow: TAction;
    actBaseGroups: TAction;
    miBaseGroups: TMenuItem;
    miDeptDetailFlow: TMenuItem;
    actSpecialControlTasks: TAction;
    mlWorkHours: TMenuItem;
    mlSubjectsBaseDataSubMenu: TMenuItem;
    actEarningModifiers: TAction;
    miEarningModifiers: TMenuItem;
    actEducations: TAction;
    actShifts: TAction;
    miShifts: TMenuItem;
    actWorkHours: TAction;
    miWorkHours: TMenuItem;
    actDisciplineEventTypes: TAction;
    miDisciplineEventTypes: TMenuItem;
    actOccupationsAndEmployees: TAction;
    miOccupationsAndEmployees: TMenuItem;
    miSubjectsBaseDataSubMenu: TMenuItem;
    miEducations: TMenuItem;
    actRealCapacityGraph: TAction;
    miRealCapacityGraph: TMenuItem;
    lblPVDeliveries: TLabel;
    btnPVFinances: TSpeedButton;
    lblPVFinances: TLabel;
    btnPVSales: TSpeedButton;
    lblPVSales: TLabel;
    btnPVProduction: TSpeedButton;
    lblPVProduction: TLabel;
    lblPVEnvironment: TLabel;
    btnPVEnvironment: TSpeedButton;
    actRealCapacityTable: TAction;
    miRealCapacityTable: TMenuItem;
    actProfessionKinds: TAction;
    miProfessionKinds: TMenuItem;
    mlRealCapacityGraph: TMenuItem;
    actOccupationWorkDeptPriorities: TAction;
    miOccupationWorkDeptPriorities: TMenuItem;
    miBudgetClassTree: TMenuItem;
    actBudgetClassesTree: TAction;
    mlFinanceBaseDataSubMenu: TMenuItem;
    actModelsInvestedValues: TAction;
    actDocItemTemplates: TAction;
    miDocItemTemplates: TMenuItem;
    miBudgetOrders: TMenuItem;
    miBudgetProductOrders: TMenuItem;
    miDocItemViewGenerators: TMenuItem;
    actDocItemViewGenerators: TAction;
    actExecuteServers: TAction;
    miExecuteServers: TMenuItem;
    actBudgetExpense: TAction;
    miBudget: TMenuItem;
    actFileExtensions: TAction;
    miFileExtensions: TMenuItem;
    miDocAdministrationSubMenu: TMenuItem;
    actBOICompanyOrdersExpense: TAction;
    miBudgetCompanyOrders: TMenuItem;
    miDateFormat: TMenuItem;
    miMonthDateFormat: TMenuItem;
    miWeekDateFormat: TMenuItem;
    mlBeginEndDateIntervalFormat: TMenuItem;
    mlCaptionToolbarMenu: TMenuItem;
    miBeginWorkdaysDateIntervalFormat: TMenuItem;
    miBeginDaysDateIntervalFormat: TMenuItem;
    miBeginEndDateIntervalFormat: TMenuItem;
    actMonthDateFormat: TAction;
    actWeekDateFormat: TAction;
    actBeginEndDateIntervalFormat: TAction;
    actBeginDaysDateIntervalFormat: TAction;
    actBeginWorkdaysDateIntervalFormat: TAction;
    cdsCustomMenuItems: TAbmesClientDataSet;
    actCustomMenuItems: TAction;
    miCustomMenuItems: TMenuItem;
    cdsCustomMenuItemsCUSTOM_MENU_ITEM_CODE: TAbmesFloatField;
    cdsCustomMenuItemsCUSTOM_MENU_ITEM_NAME: TAbmesWideStringField;
    cdsCustomMenuItemsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsCustomMenuItemsDOC_CODE: TAbmesFloatField;
    cdsCustomMenuItemsRELATIVE_MENU_ITEM_NAME: TAbmesWideStringField;
    cdsCustomMenuItemsIS_BEFORE_MENU_ITEM: TAbmesFloatField;
    cdsCustomMenuItemsHAS_MENU_LINE_BEFORE: TAbmesFloatField;
    cdsCustomMenuItemsHAS_MENU_LINE_AFTER: TAbmesFloatField;
    cdsCustomMenuItemsIS_IN_CAPTION_MENU: TAbmesFloatField;
    cdsCustomMenuItemsIS_SUBMENU: TAbmesFloatField;
    miCompanies: TMenuItem;
    mlPriorities: TMenuItem;
    mlShifts: TMenuItem;
    actEmployeeEarnings: TAction;
    mlBudgetClassTree: TMenuItem;
    actProductionOrders: TAction;
    cdsProductionOrderBaseTypes: TAbmesClientDataSet;
    cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField;
    cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NAME: TAbmesWideStringField;
    cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_ABBREV: TAbmesWideStringField;
    actXModels: TAction;
    cdsPendingChangeCountsPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    actMllChangesDetail: TAction;
    mlOrganisationTaskProposals: TMenuItem;
    miEnvironmentBaseDataSubMenu: TMenuItem;
    miWorkDef: TMenuItem;
    imgCross: TImage;
    shpNoProcessView: TShape;
    actWorkDef: TAction;
    mlEarningModifiers: TMenuItem;
    actCraftTypes: TAction;
    miCraftTypes: TMenuItem;
    actCrafts: TAction;
    miCrafts: TMenuItem;
    actCommonGroups: TAction;
    miCommonGroups: TMenuItem;
    mlCustomhouses: TMenuItem;
    mlObjectsBaseDataSubMenu: TMenuItem;
    miObjectsBaseDataSubMenu: TMenuItem;
    actStageLevelTasks: TAction;
    actWorkPriorities: TAction;
    miWorkPriorities: TMenuItem;
    actEngineeringOrderTypes: TAction;
    miEngineeringOrderTypes: TMenuItem;
    actNewEngineeringOrder: TAction;
    mlNewSpecification: TMenuItem;
    actEngineeringOrders: TAction;
    miNewEngineeringOrder: TMenuItem;
    actBOIWasteOrdersExpense: TAction;
    miBOIWasteOrdersExpense: TMenuItem;
    actBudgetOrdersInvest: TAction;
    actBOIProductOrdersInvest: TAction;
    actBudgetInvest: TAction;
    actBOICompanyOrdersInvest: TAction;
    miInvestBudgetItems: TMenuItem;
    miBudgetInvest: TMenuItem;
    miBudgetOrdersInvest: TMenuItem;
    miBOIProductOrdersInvest: TMenuItem;
    miBOICompanyOrdersInvest: TMenuItem;
    miBeforeBudgetClassesTree: TMenuItem;
    actEmployeeDayAbsenceReasons: TAction;
    miEmployeeDayAbsenceReasons: TMenuItem;
    actEmployeeHourAvailabilityModifierReasons: TAction;
    miEmployeeHourAvailabilityModifierReasons: TMenuItem;
    actEmployeesAvailability: TAction;
    miEmployeesAvailability: TMenuItem;
    actEmployeesTotalAvailability: TAction;
    miEmployeesTotalAvailability: TMenuItem;
    actEmployeesAvailabilityGraph: TAction;
    miEmployeesAvailabilityGraph: TMenuItem;
    mlEmployeesAvailability: TMenuItem;
    actPrecisionLevels: TAction;
    miPrecisionLevels: TMenuItem;
    actSaleRequestGroups: TAction;
    miSaleRequestGroups: TMenuItem;
    actFailedEmployeeMovements: TAction;
    miFailedEmployeeMovements: TMenuItem;
    actPoolManagers: TAction;
    miPoolManagers: TMenuItem;
    mlPoolManagers: TMenuItem;
    actSaleOrdersGroupSaleOrders: TAction;
    miSaleOrdersGroupSaleOrders: TMenuItem;
    actMemoryManager: TAction;
    miMemoryManager: TMenuItem;
    mlNewSaleRequestGroup: TMenuItem;
    miParRelProductsSalesByPartner: TMenuItem;
    miParRelProductsSalesByProduct: TMenuItem;
    miParRelProductsDeliveriesCoveringSalesByPartner: TMenuItem;
    miParRelProductsDeliveriesCoveringSalesByProduct: TMenuItem;
    actParRelProductsSalesByPartner: TAction;
    actParRelProductsSalesByProduct: TAction;
    actParRelProductsDeliveriesCoveringSalesByPartner: TAction;
    actParRelProductsDeliveriesCoveringSalesByProduct: TAction;
    actParRelProductsDeliveriesCoveringEnvByPartner: TAction;
    actParRelProductsDeliveriesCoveringEnvByProduct: TAction;
    miParRelProductsDeliveriesCoveringEnvByPartner: TMenuItem;
    miParRelProductsDeliveriesCoveringEnvByProduct: TMenuItem;
    actNewSaleRequestGroup: TAction;
    miNewSaleRequestGroup: TMenuItem;
    mlSaleQuantities: TMenuItem;
    mlParRelProductsDeliveriesCoveringSalesByPartner: TMenuItem;
    actDeficitCoverDecisions2: TAction;
    miDeficitCoverDecisions2: TMenuItem;
    mlParRelProductsDeliveriesCoveringEnvByPartner: TMenuItem;
    actResultProductEstNeeds: TAction;
    miResultProductEstNeeds: TMenuItem;
    mlRealNeeds: TMenuItem;
    actDetailEstNeeds: TAction;
    actMaterialEstNeeds: TAction;
    miDetailEstNeeds: TMenuItem;
    miMaterialEstNeeds: TMenuItem;
    mlEnvironmentBaseDataSubMenu: TMenuItem;
    actDeliveries2: TAction;
    actDeliveryDialogs: TAction;
    actDeliveryDialogs2: TAction;
    miDeliveries2: TMenuItem;
    mlEstPricesCompareGraphDeliveriesCoveringEnv: TMenuItem;
    miDeliveryDialogs: TMenuItem;
    miDeliveryDialogs2: TMenuItem;
    actOrganisationTaskProposals: TAction;
    miOrganisationTaskProposals: TMenuItem;
    actEstCapacityGraph: TAction;
    actEstCapacityTable: TAction;
    miEstCapacityGraph: TMenuItem;
    miEstCapacityTable: TMenuItem;
    actEstQuantitiesTable: TAction;
    miEstQuantitiesTable: TMenuItem;
    actEstQuantitiesGraph: TAction;
    miEstQuantitiesGraph: TMenuItem;
    mlEstQuantitiesTable: TMenuItem;
    actEstPricesCompareGraphSales: TAction;
    actEstPricesCompareGraphDeliveriesCoveringSales: TAction;
    miEstPricesCompareGraphSales: TMenuItem;
    miEstPricesCompareGraphDeliveriesCoveringSales: TMenuItem;
    actEstPricesCompareGraphDeliveriesCoveringEnv: TAction;
    miEstPricesCompareGraphDeliveriesCoveringEnv: TMenuItem;
    mlNewDeficitCoverDecision1: TMenuItem;
    mlDeliveriesBaseDataSubMenu: TMenuItem;
    miDeliveriesBaseDataSubMenu: TMenuItem;
    miDeliveryTypes: TMenuItem;
    actDeliveryTypes: TAction;
    mlEmployeeDayAbsenceReasons: TMenuItem;
    actDisciplineEvents: TAction;
    miDisciplineEvents: TMenuItem;
    miEngineeringOrders: TMenuItem;
    mlNewEngineeringOrder: TMenuItem;
    miObjectsNeedsSubMenu: TMenuItem;
    mlObjectsNeedsSubMenu: TMenuItem;
    miObjectsQuantitiesSubMenu: TMenuItem;
    mlEngineeringOrderTypes: TMenuItem;
    mlEstCapacityGraph: TMenuItem;
    miEnvironmentProjectsSubMenu: TMenuItem;
    mlWorkDef: TMenuItem;
    miEnvironmentElementsSubMenu: TMenuItem;
    mlParRelProductsSalesByPartner: TMenuItem;
    miOutDebitnoIzvestie: TMenuItem;
    miOutKreditnoIzvestie: TMenuItem;
    miOutOtchetZaProdajbite: TMenuItem;
    miOutProtokolIliDrugDokument: TMenuItem;
    pmProductionOrderMenuTemplate: TPopupMenu;
    miNewProductionOrder: TMenuItem;
    mlStageLevelTasks: TMenuItem;
    miStageLevelTasks: TMenuItem;
    miOperationalTasks: TMenuItem;
    miSpecialControlTasks: TMenuItem;
    mlModelMovementsOverview: TMenuItem;
    miModelMovementsOverview: TMenuItem;
    miOperationMovements: TMenuItem;
    miXModels: TMenuItem;
    miProductionOrders: TMenuItem;
    miModelsInvestedValues: TMenuItem;
    miDeliveriesInputSubMenu: TMenuItem;
    mlNewDeficitCoverDecision2: TMenuItem;
    mlDepts: TMenuItem;
    tlb1: TToolBar;
    btnCompany: TToolButton;
    btnCompanies: TToolButton;
    sepEmployees: TToolButton;
    btnEmployees: TToolButton;
    btnTeams: TToolButton;
    sepWorkHours: TToolButton;
    btnWorkHours: TToolButton;
    btnEmployeeEarnings: TToolButton;
    btnMonthTeams: TToolButton;
    tlb2: TToolBar;
    tlb3: TToolBar;
    btnEmployeesAvailability: TToolButton;
    btnEmployeesTotalAvailability: TToolButton;
    btnEmployeesAvailabilityGraph: TToolButton;
    sepDisciplineEventTypes: TToolButton;
    btnFailedEmployeeMovements: TToolButton;
    btnDisciplineEventTypes: TToolButton;
    btnDisciplineEvents: TToolButton;
    tlb4: TToolBar;
    btnProducts: TToolButton;
    btnCommonGroups: TToolButton;
    btnVendorProductNames: TToolButton;
    sepNewEngineeringOrder: TToolButton;
    btnNewEngineeringOrder: TToolButton;
    btnEngineeringOrders: TToolButton;
    sepNewSpecification: TToolButton;
    btnNewSpecification: TToolButton;
    btnSpecifications: TToolButton;
    btnBaseGroups: TToolButton;
    btnDeptDetailFlow: TToolButton;
    tlb5: TToolBar;
    btnNewStoreDealIn: TToolButton;
    btnNewStoreDealOut: TToolButton;
    btnStoreDeals: TToolButton;
    sepPlannedStoreDeals: TToolButton;
    btnPlannedStoreDeals: TToolButton;
    btnUncoveredPSD: TToolButton;
    btnUncoveredModels: TToolButton;
    sepNewStoreRequestIn: TToolButton;
    btnNewStoreRequestIn: TToolButton;
    btnNewStoreRequestOut: TToolButton;
    btnStoreRequests: TToolButton;
    tlb6: TToolBar;
    btnEstQuantitiesGraph: TToolButton;
    btnEstQuantitiesTable: TToolButton;
    sepVIMQuantity: TToolButton;
    btnVIMQuantity: TToolButton;
    btnQuantityDeficit: TToolButton;
    btnStoreQuantities: TToolButton;
    btnProductQuantitiesTree: TToolButton;
    sepUnfinishedMfg: TToolButton;
    btnUnfinishedMfg: TToolButton;
    btnProductionProductsTree: TToolButton;
    sepResultProductEstNeeds: TToolButton;
    btnResultProductEstNeeds: TToolButton;
    btnDetailEstNeeds: TToolButton;
    btnMaterialEstNeeds: TToolButton;
    sepResultProductRealNeeds: TToolButton;
    btnResultProductRealNeeds: TToolButton;
    btnDetailRealNeeds: TToolButton;
    btnMaterialRealNeeds: TToolButton;
    tlb8: TToolBar;
    tlb9: TToolBar;
    btnDepts: TToolButton;
    btnOccupationsAndEmployees: TToolButton;
    sepEstCapacityGraph: TToolButton;
    btnEstCapacityGraph: TToolButton;
    btnEstCapacityTable: TToolButton;
    btnRealCapacityGraph: TToolButton;
    btnRealCapacityTable: TToolButton;
    tlb11: TToolBar;
    tlb14: TToolBar;
    btnBudgetClassesTree1: TToolButton;
    btnBudgetInvest: TToolButton;
    btnBudgetOrdersInvest: TToolButton;
    btnBOIProductOrdersInvest: TToolButton;
    btnBOICompanyOrdersInvest: TToolButton;
    sepBudgetInvest: TToolButton;
    sepRealCapacityGraph: TToolButton;
    tlb13: TToolBar;
    btnBudgetClassesTree2: TToolButton;
    septBudgetExpense: TToolButton;
    btnBudgetExpense: TToolButton;
    btnBudgetOrdersExpense: TToolButton;
    btnBOIProductOrdersExpense: TToolButton;
    btnBOICompanyOrdersExpense: TToolButton;
    btnBOIWasteOrdersExpense: TToolButton;
    tlb15: TToolBar;
    btnEstPricesCompareGraphSales: TToolButton;
    sepNewGroupSale: TToolButton;
    btnNewGroupSale: TToolButton;
    btnSaleOrdersGroupSaleOrders: TToolButton;
    sepNewSaleRequestGroup: TToolButton;
    btnNewSaleRequestGroup: TToolButton;
    btnSaleRequestGroups: TToolButton;
    btnSaleOrders: TToolButton;
    btnSalesOverviewShp: TToolButton;
    tlbParRelProductsSalesByPartner: TToolButton;
    btnParRelProductsSalesByPartner: TToolButton;
    btnParRelProductsSalesByProduct: TToolButton;
    sepSalesOverviewShp: TToolButton;
    tlb17: TToolBar;
    btnOutFaktura: TToolButton;
    btnOutDebitnoIzvestie: TToolButton;
    btnOutKreditnoIzvestie: TToolButton;
    ToolButton12: TToolButton;
    btnOutOtchetZaProdajbite: TToolButton;
    btnOutProtokolIliDrugDokument: TToolButton;
    ToolButton15: TToolButton;
    btnInvoices1: TToolButton;
    btnEstPricesCompareGraphDeliveriesCoveringSales: TToolButton;
    sepNewDeficitCoverDecision1: TToolButton;
    btnNewDeficitCoverDecision: TToolButton;
    btnDeficitCoverDecisions: TToolButton;
    btnDeliveryDialogs: TToolButton;
    btnDeliveries: TToolButton;
    sepParRelProductsDeliveriesCoveringSalesByPartner: TToolButton;
    btnParRelProductsDeliveriesCoveringSalesByPartner: TToolButton;
    btnParRelProductsDeliveriesCoveringSalesByProduct: TToolButton;
    sepDeliveries: TToolButton;
    cdsToolbars: TAbmesClientDataSet;
    cdsUserToolbars: TAbmesClientDataSet;
    cdsToolbarsCROSS_STATE_CODE: TAbmesFloatField;
    cdsToolbarsTOOLBAR_CODE: TAbmesFloatField;
    cdsToolbarsTOOLBAR_NAME: TAbmesWideStringField;
    cdsUserToolbarsEMPLOYEE_CODE: TAbmesFloatField;
    cdsUserToolbarsCROSS_STATE_CODE: TAbmesFloatField;
    cdsUserToolbarsTOOLBAR_CODE: TAbmesFloatField;
    cdsToolbarsTOOLBAR_CATEGORY_CODE: TAbmesFloatField;
    tlb18: TToolBar;
    btnEstPricesCompareGraphDeliveriesCoveringEnv: TToolButton;
    sepNewDeficitCoverDecision2: TToolButton;
    btnDeficitCoverDecisions2: TToolButton;
    btnNewDeficitCoverDecision2: TToolButton;
    sepDeliveries2: TToolButton;
    btnDeliveryDialogs2: TToolButton;
    btnDeliveries2: TToolButton;
    sepParRelProductsDeliveriesCoveringEnvByPartner: TToolButton;
    btnParRelProductsDeliveriesCoveringEnvByPartner: TToolButton;
    btnParRelProductsDeliveriesCoveringEnvByProduct: TToolButton;
    tlb10: TToolBar;
    lblToolbar10: TJvLabel;
    btnNewProductionOrder5: TToolButton;
    btnProductionOrders5: TToolButton;
    sepNewProductionOrder5: TToolButton;
    sepXModels5: TToolButton;
    btnXModels5: TToolButton;
    btnModelsInvestedValues5: TToolButton;
    sepStageLevelTasks5: TToolButton;
    btnStageLevelTasks5: TToolButton;
    btnOperationalTasks5: TToolButton;
    btnSpecialControlTasks5: TToolButton;
    sepModelMovementsOverview5: TToolButton;
    btnModelMovementsOverview5: TToolButton;
    btnOperationMovements5: TToolButton;
    tlb12: TToolBar;
    lblToolbar12: TJvLabel;
    sepNewProductionOrder2: TToolButton;
    btnNewProductionOrder2: TToolButton;
    btnProductionOrders2: TToolButton;
    sepXModels2: TToolButton;
    btnXModels2: TToolButton;
    btnModelsInvestedValues2: TToolButton;
    sepStageLevelTasks2: TToolButton;
    btnStageLevelTasks2: TToolButton;
    btnOperationalTasks2: TToolButton;
    btnSpecialControlTasks2: TToolButton;
    sepModelMovementsOverview2: TToolButton;
    btnModelMovementsOverview2: TToolButton;
    btnOperationMovements2: TToolButton;
    tlb16: TToolBar;
    lblToolbar16: TJvLabel;
    sepNewProductionOrder4: TToolButton;
    btnNewProductionOrder4: TToolButton;
    btnProductionOrders4: TToolButton;
    sepXModels4: TToolButton;
    btnXModels4: TToolButton;
    btnModelsInvestedValues4: TToolButton;
    sepStageLevelTasks4: TToolButton;
    btnStageLevelTasks4: TToolButton;
    btnOperationalTasks4: TToolButton;
    btnSpecialControlTasks4: TToolButton;
    sepModelMovementsOverview4: TToolButton;
    btnModelMovementsOverview4: TToolButton;
    btnOperationMovements4: TToolButton;
    tlb19: TToolBar;
    lblToolbar19: TJvLabel;
    sepNewProductionOrder1: TToolButton;
    btnNewProductionOrder1: TToolButton;
    btnProductionOrders1: TToolButton;
    sepXModels1: TToolButton;
    btnXModels1: TToolButton;
    btnModelsInvestedValues1: TToolButton;
    sepStageLevelTasks1: TToolButton;
    btnStageLevelTasks1: TToolButton;
    btnOperationalTasks1: TToolButton;
    btnSpecialControlTasks1: TToolButton;
    sepModelMovementsOverview1: TToolButton;
    btnModelMovementsOverview1: TToolButton;
    btnOperationMovements1: TToolButton;
    actOutKoregirashtProtokol: TAction;
    miOutKoregirashtProtokol: TMenuItem;
    sepOutProtokolIliDrugDokument: TToolButton;
    btnOutKoregirashtProtokol: TToolButton;
    miExceptEventTypes: TMenuItem;
    actExceptEventTypes: TAction;
    mlExceptEventTypes: TMenuItem;
    miExceptEventsEnv: TMenuItem;
    actExceptEventsEnv: TAction;
    mlDeliveries2: TMenuItem;
    mlDeliveriesInputSubMenu: TMenuItem;
    mlDeliveries: TMenuItem;
    miNewDeficitCoverDecision2: TMenuItem;
    actNewDeficitCoverDecision2: TAction;
    mlExceptEventsEnv: TMenuItem;
    sepExceptEventsEnv: TToolButton;
    btnExceptEventsEnv: TToolButton;
    actSpecInvestedValueLevelsGraph: TAction;
    miSpecInvestedValueLevelsGraph: TMenuItem;
    actInvoicesOut: TAction;
    miInvoicesOut: TMenuItem;
    actFinancialProducts: TAction;
    actFinancialCommonGroups: TAction;
    actNewFinancialOrder: TAction;
    actFinancialOrders: TAction;
    actPlannedFinancialStoreDeals: TAction;
    actUncoveredPlannedFinancialStoreDeals: TAction;
    actNewFinancialStoreRequest: TAction;
    actFinancialStoreRequests: TAction;
    actNewFinancialStoreDealIn: TAction;
    actNewFinancialStoreDealOut: TAction;
    actFinancialStoreDeals: TAction;
    actFinancialRelationsGraph: TAction;
    actFinancialRelationsTable: TAction;
    actFinancialEstQuantitiesGraph: TAction;
    actFinancialEstQuantitiesTable: TAction;
    actFinancialVIMQuantity: TAction;
    actFinancialQuantityDeficit: TAction;
    actFinancialStoreQuantities: TAction;
    actFinancialProductQuantitiesTree: TAction;
    actFinancialEstPricesCompareGraphSales: TAction;
    actFinancialParRelProductsSalesByPartner: TAction;
    actFinancialParRelProductsSalesByProduct: TAction;
    actNewFinancialSaleRequestGroup: TAction;
    actFinancialSaleRequestGroups: TAction;
    actFinancialSaleOrders: TAction;
    actFinancialSalesOverviewShp: TAction;
    actFinancialEstPricesCompareGraphDeliveries: TAction;
    actFinancialParRelProductsDeliveriesByPartner: TAction;
    actFinancialParRelProductsDeliveriesByProduct: TAction;
    actNewFinancialDeficitCoverDecision: TAction;
    actFinancialDeficitCoverDecisions: TAction;
    actFinancialDeliveryDialogs: TAction;
    actFinancialDeliveries: TAction;
    actFinancialClasses: TAction;
    actFinancialMeasures: TAction;
    actFinancialNoms: TAction;
    mlSalesInvoicesSubMenu: TMenuItem;
    mlOutProtokolIliDrugDokument: TMenuItem;
    mlInvoicesOut: TMenuItem;
    mlDeliveriesInvoicesSubMenu: TMenuItem;
    mlOutOtchetZaProdajbite: TMenuItem;
    miFinancialProducts: TMenuItem;
    miFinancialClasses: TMenuItem;
    miFinanceBaseDataSubMenu: TMenuItem;
    miFinancialCommonGroups: TMenuItem;
    miNewFinancialOrder: TMenuItem;
    mlNewFinancialOrder: TMenuItem;
    miFinancialOrders: TMenuItem;
    miPlannedFinancialStoreDeals: TMenuItem;
    mlPlannedFinancialStoreDeals: TMenuItem;
    miUncoveredPlannedFinancialStoreDeals: TMenuItem;
    miNewFinancialStoreRequest: TMenuItem;
    mlNewFinancialStoreRequest: TMenuItem;
    miFinancialStoreRequests: TMenuItem;
    miNewFinancialStoreDealIn: TMenuItem;
    mlNewFinancialStoreDealIn: TMenuItem;
    miNewFinancialStoreDealOut: TMenuItem;
    miFinancialStoreDeals: TMenuItem;
    miFinanceQuantitiesSubMenu: TMenuItem;
    mlFinanceQuantitiesSubMenu: TMenuItem;
    miFinanceSalesSubMenu: TMenuItem;
    mlFinanceSalesSubMenu: TMenuItem;
    miFinanceDeliveriesSubMenu: TMenuItem;
    miFinancialRelationsGraph: TMenuItem;
    mlFinancialRelationsGraph: TMenuItem;
    miFinancialRelationsTable: TMenuItem;
    miFinancialEstQuantitiesGraph: TMenuItem;
    miFinancialEstQuantitiesTable: TMenuItem;
    miFinancialVIMQuantity: TMenuItem;
    mlFinancialVIMQuantity: TMenuItem;
    miFinancialQuantityDeficit: TMenuItem;
    miFinancialProductQuantitiesTree: TMenuItem;
    miFinancialStoreQuantities: TMenuItem;
    miFinancialMeasures: TMenuItem;
    miFinancialNoms: TMenuItem;
    miFinancialEstPricesCompareGraphDeliveries: TMenuItem;
    miFinancialEstPricesCompareGraphSales: TMenuItem;
    mlFinancialParRelProductsDeliveriesByPartner: TMenuItem;
    miFinancialParRelProductsSalesByPartner: TMenuItem;
    miFinancialParRelProductsSalesByProduct: TMenuItem;
    miNewFinancialSaleRequestGroup: TMenuItem;
    miFinancialSaleRequestGroups: TMenuItem;
    miFinancialSaleOrders: TMenuItem;
    miFinancialSalesOverviewShp: TMenuItem;
    mlFinancialSalesOverviewShp: TMenuItem;
    mlNewFinancialSaleRequestGroup: TMenuItem;
    mlFinancialParRelProductsSalesByPartner: TMenuItem;
    miFinancialParRelProductsDeliveriesByPartner: TMenuItem;
    miFinancialParRelProductsDeliveriesByProduct: TMenuItem;
    miFinancialDeficitCoverDecisions: TMenuItem;
    miNewFinancialDeficitCoverDecision: TMenuItem;
    miFinancialDeliveryDialogs: TMenuItem;
    miFinancialDeliveries: TMenuItem;
    mlFinancialDeliveries: TMenuItem;
    mlNewFinancialDeficitCoverDecision: TMenuItem;
    actSaleDecisionTypes: TAction;
    miSalesBaseDataSubMenu: TMenuItem;
    miSaleDecisionTypes: TMenuItem;
    mlSalesBaseDataSubMenu: TMenuItem;
    actDeliveryDecisionTypes: TAction;
    miDeliveryDecisionTypes: TMenuItem;
    mlFinanceDeliveriesSubMenu: TMenuItem;
    mlCompanyTypes: TMenuItem;
    miCompanyTypes: TMenuItem;
    actCompanyTypes: TAction;
    tmrExceptEventIndicators: TTimer;
    cdsExceptEventIndicatorCounts: TAbmesClientDataSet;
    cdsExceptEventIndicatorCountsEE_NOT_ACCEPTED: TAbmesFloatField;
    cdsExceptEventIndicatorCountsEE_NOT_ACTIVATED: TAbmesFloatField;
    cdsExceptEventIndicatorCountsEE_ACTIVATED: TAbmesFloatField;
    cdsExceptEventIndicatorCountsEE_CTRL_EMP_NOT_ACCEPTED: TAbmesFloatField;
    cdsExceptEventIndicatorCountsEE_CTRL_EMP_NOT_ACTIVATED: TAbmesFloatField;
    cdsExceptEventIndicatorCountsEE_CTRL_EMP_ACTIVATED: TAbmesFloatField;
    cdsExceptEventIndicatorCountsEE_CTRL_DEPT_NOT_ACCEPTED: TAbmesFloatField;
    cdsExceptEventIndicatorCountsEE_CTRL_DEPT_NOT_ACTIVATED: TAbmesFloatField;
    cdsExceptEventIndicatorCountsEE_CTRL_DEPT_ACTIVATED: TAbmesFloatField;
    cdsToolbarsTOOLBAR_CATEGORY_ACTIVITY_CODE: TAbmesFloatField;
    actBudgetProducts: TAction;
    miBudgetProducts: TMenuItem;
    actBudgetNoms: TAction;
    miBudgetNoms: TMenuItem;
    cdsExceptEventTaskIndicatorCounts: TAbmesClientDataSet;
    cdsExceptEventTaskIndicatorCountsEET_REAL_EMP_NOT_ACTIVATED: TAbmesFloatField;
    cdsExceptEventTaskIndicatorCountsEET_REAL_EMP_ACTIVATED: TAbmesFloatField;
    cdsExceptEventTaskIndicatorCountsEET_REAL_EMP_PROBLEMS: TAbmesFloatField;
    cdsExceptEventTaskIndicatorCountsEET_REAL_DEPT_NOT_ACTIVATED: TAbmesFloatField;
    cdsExceptEventTaskIndicatorCountsEET_REAL_DEPT_ACTIVATED: TAbmesFloatField;
    cdsExceptEventTaskIndicatorCountsEET_REAL_DEPT_PROBLEMS: TAbmesFloatField;
    cdsExceptEventTaskIndicatorCountsEET_CTRL_NOT_ACTIVATED: TAbmesFloatField;
    cdsExceptEventTaskIndicatorCountsEET_CTRL_ACTIVATED: TAbmesFloatField;
    cdsExceptEventTaskIndicatorCountsEET_CTRL_PROBLEMS: TAbmesFloatField;
    cdsExceptEventTaskIndicatorCountsEET_CTRL_EMP_NOT_ACTIVATED: TAbmesFloatField;
    cdsExceptEventTaskIndicatorCountsEET_CTRL_EMP_ACTIVATED: TAbmesFloatField;
    cdsExceptEventTaskIndicatorCountsEET_CTRL_EMP_PROBLEMS: TAbmesFloatField;
    cdsExceptEventTaskIndicatorCountsEET_CTRL_DEPT_NOT_ACTIVATED: TAbmesFloatField;
    cdsExceptEventTaskIndicatorCountsEET_CTRL_DEPT_ACTIVATED: TAbmesFloatField;
    cdsExceptEventTaskIndicatorCountsEET_CTRL_DEPT_PROBLEMS: TAbmesFloatField;
    actExceptEventNotActivated: TAction;
    actExceptEventActivated: TAction;
    actExceptEventUserNotActivated: TAction;
    actExceptEventUserActivated: TAction;
    actExceptEventDeptNotActivated: TAction;
    actExceptEventDeptActivated: TAction;
    actExceptEventTaskRealUserNotActivated: TAction;
    actExceptEventTaskRealUserActivated: TAction;
    actExceptEventTaskRealDeptNotActivated: TAction;
    actExceptEventTaskRealDeptActivated: TAction;
    actExceptEventTaskCtrlNotActivated: TAction;
    actExceptEventTaskCtrlActivated: TAction;
    actExceptEventTaskCtrlUserNotActivated: TAction;
    actExceptEventTaskCtrlUserActivated: TAction;
    actExceptEventTaskCtrlDeptNotActivated: TAction;
    actExceptEventTaskCtrlDeptActivated: TAction;
    pmExceptEventIndicators: TPopupMenu;
    actRefreshExceptEventCounts: TAction;
    miRefreshExceptEventCounts: TMenuItem;
    mlExceptEventIndicators: TMenuItem;
    miExceptEventNotActivated: TMenuItem;
    miExceptEventActivated: TMenuItem;
    cdsExceptEventsFromIndicatorParams: TAbmesClientDataSet;
    cdsExceptEventsFromIndicatorParamsMIN_STATE_CODE: TAbmesFloatField;
    cdsExceptEventsFromIndicatorParamsMAX_STATE_CODE: TAbmesFloatField;
    cdsExceptEventsFromIndicatorParamsCTRL_MAIN_EMPLOYEE_CODE: TAbmesFloatField;
    cdsExceptEventsFromIndicatorParamsIS_FILTERED_BY_TASKS: TAbmesFloatField;
    cdsExceptEventsFromIndicatorParamsMIN_TASK_STATE_CODE: TAbmesFloatField;
    cdsExceptEventsFromIndicatorParamsMAX_TASK_STATE_CODE: TAbmesFloatField;
    cdsExceptEventsFromIndicatorParamsTASK_EMPLOYEE_CODE: TAbmesFloatField;
    cdsExceptEventsFromIndicatorParamsCTRL_DEPTS_EMPLOYEE_CODE: TAbmesFloatField;
    cdsExceptEventsFromIndicatorParamsTASK_DEPTS_EMPLOYEE_CODE: TAbmesFloatField;
    pmExceptEventTaskRealIndicators: TPopupMenu;
    mlExceptEventTaskRealUser: TMenuItem;
    actExceptEventTaskRealUserNotActivated1: TMenuItem;
    actExceptEventTaskRealUserActivated1: TMenuItem;
    mlExceptEventTaskRealDept: TMenuItem;
    actExceptEventTaskRealDeptNotActivated1: TMenuItem;
    actExceptEventTaskRealDeptActivated1: TMenuItem;
    miRefreshExceptEventTaskRealCounts: TMenuItem;
    miExceptEventTaskCtrlNotActivated: TMenuItem;
    miExceptEventTaskCtrlActivated: TMenuItem;
    miCaptionExceptEventIndicators: TMenuItem;
    miCaptionExceptEventTaskIndicators: TMenuItem;
    mlExceptEventUserIndicators: TMenuItem;
    miExceptEventUserNotActivated: TMenuItem;
    miExceptEventUserActivated: TMenuItem;
    miExceptEventTaskCtrlUserNotActivated: TMenuItem;
    miExceptEventTaskCtrlUserActivated: TMenuItem;
    mlExceptEventDeptIndicators: TMenuItem;
    miExceptEventDeptNotActivated: TMenuItem;
    miExceptEventDeptActivated: TMenuItem;
    miExceptEventTaskCtrlDeptNotActivated: TMenuItem;
    miExceptEventTaskCtrlDeptActivated: TMenuItem;
    actParRelProductsBudgetDeliveriesByPartner: TAction;
    actParRelProductsBudgetDeliveriesByProduct: TAction;
    miParRelProductsBudgetDeliveriesByPartner: TMenuItem;
    miParRelProductsBudgetDeliveriesByProduct: TMenuItem;
    mlParRelProductsBudgetDeliveriesByPartner: TMenuItem;
    miFinModelLineReasons: TMenuItem;
    actFinModelLineReasons: TAction;
    actRealFinModelLines: TAction;
    miRealFinModelLines: TMenuItem;
    actRealFinModelLineGroups: TAction;
    miRealFinModelLineGroups: TMenuItem;
    actNewFinancialStoreDealInInternal: TAction;
    actNewFinancialStoreDealOutInternal: TAction;
    tlb21: TToolBar;
    lblToolbar21: TJvLabel;
    ToolButton2: TToolButton;
    btnFinancialProducts: TToolButton;
    btnFinancialCommonGroups: TToolButton;
    sepNewFinancialOrder: TToolButton;
    btnCurrencies: TToolButton;
    btnCurrencyRates: TToolButton;
    btnNewFinancialOrder: TToolButton;
    btnFinancialOrders: TToolButton;
    btnRealFinModelLines: TToolButton;
    sepFinancialRelationsGraph: TToolButton;
    btnRealFinModelLineGroups: TToolButton;
    btnFinancialRelationsGraph: TToolButton;
    btnFinancialRelationsTable: TToolButton;
    tlb22: TToolBar;
    lblToolbar22: TJvLabel;
    ToolButton3: TToolButton;
    btnNewFinancialStoreDealIn: TToolButton;
    btnNewFinancialStoreDealOut: TToolButton;
    btnFinancialStoreDeals: TToolButton;
    btnPlannedFinancialStoreDeals: TToolButton;
    sepPlannedFinancialStoreDeals: TToolButton;
    btnUncoveredPlannedFinancialStoreDeals: TToolButton;
    sepNewFinancialStoreRequest: TToolButton;
    btnNewFinancialStoreRequest: TToolButton;
    btnFinancialStoreRequests: TToolButton;
    tlb23: TToolBar;
    lblToolbar23: TJvLabel;
    ToolButton4: TToolButton;
    btnFinancialVIMQuantity: TToolButton;
    btnFinancialQuantityDeficit: TToolButton;
    btnFinancialStoreQuantities: TToolButton;
    btnFinancialProductQuantitiesTree: TToolButton;
    tlb24: TToolBar;
    lblToolbar24: TJvLabel;
    ToolButton5: TToolButton;
    btnFinancialEstPricesCompareGraphSales: TToolButton;
    btnNewFinancialSaleRequestGroup: TToolButton;
    btnFinancialSaleRequestGroups: TToolButton;
    btnFinancialSaleOrders: TToolButton;
    sepNewFinancialSaleRequestGroup: TToolButton;
    sepFinancialSaleOrders: TToolButton;
    sepFinancialSalesOverviewShp: TToolButton;
    btnFinancialSalesOverviewShp: TToolButton;
    sepFinancialParRelProductsSalesByPartner: TToolButton;
    btnFinancialParRelProductsSalesByPartner: TToolButton;
    btnFinancialParRelProductsSalesByProduct: TToolButton;
    tlb25: TToolBar;
    lblToolbar25: TJvLabel;
    ToolButton6: TToolButton;
    btnFinancialEstPricesCompareGraphDeliveries: TToolButton;
    sepNewFinancialDeficitCoverDecision: TToolButton;
    btnNewFinancialDeficitCoverDecision: TToolButton;
    btnFinancialDeficitCoverDecisions: TToolButton;
    sepFinancialDeliveryDialogs: TToolButton;
    btnFinancialDeliveryDialogs: TToolButton;
    sepFinancialDeliveries: TToolButton;
    btnFinancialDeliveries: TToolButton;
    sepFinancialParRelProductsDeliveriesByPartner: TToolButton;
    btnFinancialParRelProductsDeliveriesByPartner: TToolButton;
    btnFinancialParRelProductsDeliveriesByProduct: TToolButton;
    actSysRoles: TAction;
    miSysRoles: TMenuItem;
    actNewDeficitCoverDecision3: TAction;
    actDeficitCoverDecisions3: TAction;
    actDeliveries3: TAction;
    actDeliveryDialogs3: TAction;
    miEmployeeDeliveriesSubMenu: TMenuItem;
    miNewDeficitCoverDecision3: TMenuItem;
    miDeficitCoverDecisions3: TMenuItem;
    miDeliveryDialogs3: TMenuItem;
    mlDeliveries3: TMenuItem;
    miDeliveries3: TMenuItem;
    miEmployeesInputSubMenu: TMenuItem;
    cdsToolbarsTOOLBAR_NO: TAbmesFloatField;
    tlb26: TToolBar;
    btnNewDeficitCoverDecision3: TToolButton;
    btnDeficitCoverDecisions3: TToolButton;
    sepDeliveries3: TToolButton;
    btnDeliveryDialogs3: TToolButton;
    btnDeliveries3: TToolButton;
    tlb27: TToolBar;
    lblToolbar27: TJvLabel;
    ToolButton7: TToolButton;
    btnNewProductionOrder6: TToolButton;
    btnProductionOrders6: TToolButton;
    sepXModels6: TToolButton;
    btnXModels6: TToolButton;
    btnModelsInvestedValues6: TToolButton;
    sepStageLevelTasks6: TToolButton;
    btnStageLevelTasks6: TToolButton;
    btnOperationalTasks6: TToolButton;
    btnSpecialControlTasks6: TToolButton;
    sepModelMovementsOverview6: TToolButton;
    btnModelMovementsOverview6: TToolButton;
    btnOperationMovements6: TToolButton;
    miTestQueries: TMenuItem;
    actTestQueries: TAction;
    cdsExceptEventsParams: TAbmesClientDataSet;
    cdsExceptEventsParamsEXCEPT_EVENT_GEN_TYPE_CODE: TAbmesFloatField;
    cdsExceptEventsParamsOM_BRANCH_CODE: TAbmesFloatField;
    cdsExceptEventsParamsOM_CODE: TAbmesFloatField;
    actExceptEventsSales: TAction;
    mlExceptEventsSales: TMenuItem;
    miExceptEventsSales: TMenuItem;
    miExceptEventsDeliveries: TMenuItem;
    actExceptEventsDeliveries: TAction;
    actExceptEventsFinancial: TAction;
    mlExceptEventsFinancial: TMenuItem;
    miExceptEventsFinancial: TMenuItem;
    actExceptEventsProduction: TAction;
    miExceptEventsProduction: TMenuItem;
    mlExceptEventsProduction: TMenuItem;
    cdsExceptEventsParamsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsExceptEventsParamsSALE_OBJECT_CODE: TAbmesFloatField;
    cdsExceptEventsParamsDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsExceptEventsParamsDCD_OBJECT_CODE: TAbmesFloatField;
    cdsExceptEventsParamsDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsExceptEventsParamsMAX_STATE_CODE: TAbmesFloatField;
    sepExceptEventsSales: TToolButton;
    btnExceptEventsSales: TToolButton;
    sepExceptEventsProduction: TToolButton;
    ToolButton8: TToolButton;
    sepExceptEventsFin: TToolButton;
    btnExceptEventsFin: TToolButton;
    sepExceptEventsDeliveries: TToolButton;
    btnExceptEventsDeliveries: TToolButton;
    cdsExceptEventsFromIndicatorParamsMIN_EXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField;
    sepExceptEventsDeliveriesEnv: TToolButton;
    btnExceptEventsDeliveriesEnv: TToolButton;
    miActiveConnections: TMenuItem;
    actActiveConnections: TAction;
    lblToolbar1: TJvLabel;
    lblToolbar26: TJvLabel;
    lblToolbar2: TJvLabel;
    lblToolbar3: TJvLabel;
    lblToolbar4: TJvLabel;
    lblToolbar5: TJvLabel;
    lblToolbar6: TJvLabel;
    lblToolbar8: TJvLabel;
    lblToolbar9: TJvLabel;
    lblToolbar11: TJvLabel;
    lblToolbar13: TJvLabel;
    lblToolbar14: TJvLabel;
    lblToolbar15: TJvLabel;
    lblToolbar17: TJvLabel;
    lblToolbar18: TJvLabel;
    sepToolbarCaption1: TToolButton;
    sepToolbarCaption26: TToolButton;
    sepToolbarCaption2: TToolButton;
    sepToolbarCaption3: TToolButton;
    sepToolbarCaption4: TToolButton;
    sepToolbarCaption5: TToolButton;
    sepToolbarCaption6: TToolButton;
    sepToolbarCaption8: TToolButton;
    sepToolbarCaption9: TToolButton;
    sepToolbarCaption11: TToolButton;
    sepToolbarCaption13: TToolButton;
    sepToolbarCaption14: TToolButton;
    sepToolbarCaption15: TToolButton;
    sepToolbarCaption17: TToolButton;
    sepToolbarCaption18: TToolButton;
    actDocConfig: TAction;
    miDocConfig: TMenuItem;
    miBOIWasteOrdersInvest: TMenuItem;
    actBOIWasteOrdersInvest: TAction;
    cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NAME_PL: TAbmesWideStringField;
    cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_ABBREV_PL: TAbmesWideStringField;
    pnlToolbar1: TPanel;
    pnlToolbar2: TPanel;
    pnlToolbar3: TPanel;
    pnlToolbar4: TPanel;
    pnlToolbar5: TPanel;
    pnlToolbar6: TPanel;
    pnlToolbar8: TPanel;
    pnlToolbar9: TPanel;
    pnlToolbar10: TPanel;
    pnlToolbar11: TPanel;
    pnlToolbar12: TPanel;
    pnlToolbar13: TPanel;
    pnlToolbar14: TPanel;
    pnlToolbar15: TPanel;
    pnlToolbar16: TPanel;
    pnlToolbar17: TPanel;
    pnlToolbar18: TPanel;
    pnlToolbar19: TPanel;
    pnlToolbar21: TPanel;
    pnlToolbar22: TPanel;
    pnlToolbar23: TPanel;
    pnlToolbar24: TPanel;
    pnlToolbar25: TPanel;
    pnlToolbar26: TPanel;
    pnlToolbar27: TPanel;
    pnlToolbars: TPanel;
    pnlMainMenuAndExceptEventIndicators: TPanel;
    tlbMainMenu: TToolBar;
    btnProgramMenu: TToolButton;
    sepSubjectsMenu: TToolButton;
    btnSubjectsMenu: TToolButton;
    btnObjectsMenu: TToolButton;
    sepEnvironmentMenu: TToolButton;
    btnEnvironmentMenu: TToolButton;
    btnSalesMenu: TToolButton;
    btnProductionMenu: TToolButton;
    btnDeliveriesMenu: TToolButton;
    btnFinancesMenu: TToolButton;
    btnWorkMenu: TToolButton;
    tlbExceptEventTaskRealIndicators: TToolBar;
    btnExceptEventTaskRealUserNotActivated: TToolButton;
    btnExceptEventTaskRealUserActivated: TToolButton;
    btnExceptEventTaskRealDeptNotActivated: TToolButton;
    btnExceptEventTaskRealDeptActivated: TToolButton;
    sepExceptEventTaskRealButtons: TToolButton;
    tlbPendingMllChanges: TToolBar;
    btnRequestedMyChange: TToolButton;
    btnRejectedMyChange: TToolButton;
    btnMyMlRequestedChange: TToolButton;
    btnMyMlRejectedChange: TToolButton;
    btnRequestedChange: TToolButton;
    btnRejectedChange: TToolButton;
    pnlTimeInfo: TPanel;
    lblTodayDate: TLabel;
    pnlTodayDateWeekFormatSep: TPanel;
    bvlTodayDateWeekFormatSep: TBevel;
    pnlTodayDateSep: TPanel;
    bvlTodayDateSep: TBevel;
    pnlDateMargin: TPanel;
    tlbExceptEventIndicators: TToolBar;
    btnExceptEventNotActivated: TToolButton;
    btnExceptEventActivated: TToolButton;
    btnExceptEventTaskCtrlNotActivated: TToolButton;
    btnExceptEventTaskCtrlActivated: TToolButton;
    tlbExceptEventDeptIndicators: TToolBar;
    btnExceptEventDeptNotActivated: TToolButton;
    btnExceptEventDeptActivated: TToolButton;
    btnExceptEventTaskCtrlDeptNotActivated: TToolButton;
    btnExceptEventTaskCtrlDeptActivated: TToolButton;
    sepExceptEventDeptIndicators: TToolButton;
    tlbExceptEventUserIndicators: TToolBar;
    btnExceptEventUserNotActivated: TToolButton;
    btnExceptEventUserActivated: TToolButton;
    btnExceptEventTaskCtrlUserNotActivated: TToolButton;
    btnExceptEventTaskCtrlUserActivated: TToolButton;
    sepExceptEventUserIndicators: TToolButton;
    bvlToolbar1: TBevel;
    bvlToolbar2: TBevel;
    bvlToolbar3: TBevel;
    bvlToolbar4: TBevel;
    bvlToolbar5: TBevel;
    bvlToolbar6: TBevel;
    bvlToolbar8: TBevel;
    bvlToolbar9: TBevel;
    bvlToolbar10: TBevel;
    bvlToolbar11: TBevel;
    bvlToolbar12: TBevel;
    bvlToolbar13: TBevel;
    bvlToolbar14: TBevel;
    bvlToolbar15: TBevel;
    bvlToolbar16: TBevel;
    bvlToolbar17: TBevel;
    bvlToolbar18: TBevel;
    bvlToolbar19: TBevel;
    bvlToolbar21: TBevel;
    bvlToolbar22: TBevel;
    bvlToolbar23: TBevel;
    bvlToolbar24: TBevel;
    bvlToolbar25: TBevel;
    bvlToolbar26: TBevel;
    bvlToolbar27: TBevel;
    bvlTime: TBevel;
    bvlMainMenuAndExceptEventIndicators: TBevel;
    pnlTodayDateWeekFormat: TPanel;
    lblTodayDateWeekFormat: TLabel;
    miProcessActions: TMenuItem;
    miProcesses: TMenuItem;
    actProcessActions: TAction;
    miProcessKnowls: TMenuItem;
    actProcessKnowlsTree: TAction;
    miProcessFunctions: TMenuItem;
    actProcessFunctionsTree: TAction;
    miProcessBaseOperations: TMenuItem;
    actProcessBaseOperations: TAction;
    actProcessConcreteOperations: TAction;
    miProcessConcreteOperations: TMenuItem;
    lblNoProcessView: TLabel;
    pnlTimeSep: TPanel;
    bvlTimeSep: TBevel;
    pnlTime: TPanel;
    lblTime: TLabel;
    tmrClock: TTimer;
    miBOIMarkingOrdersInvest: TMenuItem;
    actBOIMarkingOrdersInvest: TAction;
    miVatPeriods: TMenuItem;
    actVatPeriods: TAction;
    actProductSets: TAction;
    miProductSets: TMenuItem;
    actClientPriceList: TAction;
    actVendorPriceList: TAction;
    miClientPriceList: TMenuItem;
    miVendorPriceList: TMenuItem;
    mlVendorPriceList: TMenuItem;
    mlClientPriceList: TMenuItem;
    pnlDisconnected: TPanel;
    tmrDisconnected: TTimer;
    imgDisconnected: TImage;
    mlOrganisationPrcData: TMenuItem;
    miOrganisationPrcData: TMenuItem;
    actOrganisationPrcData: TAction;
    actOrgPrcDataDistribution: TAction;
    miOrgPrcDataDistribution: TMenuItem;
    actDeptsPrcData: TAction;
    miDeptsPrcData: TMenuItem;
    actOrgWorkActivities: TAction;
    miOrgWorkActivities: TMenuItem;
    mlOWDPriorities: TMenuItem;
    mlSysRoles: TMenuItem;
    btnOrganisationTaskProposals: TToolButton;
    sepOrganisationTaskProposals: TToolButton;
    btnDeptsPrcData: TToolButton;
    btnOrgPrcDataDistribution: TToolButton;
    btnOrganisationPrcData: TToolButton;
    btnProcessFunctionsTree: TToolButton;
    btnProcessKnowlsTree: TToolButton;
    btnProcessBaseOperations: TToolButton;
    btnProcessConcreteOperations: TToolButton;
    sepToolbarProcessFunctions: TToolButton;
    btnProcessActions: TToolButton;
    mlContactTypes: TMenuItem;
    actContactTypes: TAction;
    miContactTypes: TMenuItem;
    pnlTimeLine: TPanel;
    frTimeline: TfrTimeline;
    actVatReasons: TAction;
    miVatReasons: TMenuItem;
    mlBeforeProcessActions: TMenuItem;
    mlBeforeProcessConcreteOperations: TMenuItem;
    actStartNewAppInstance: TAction;
    miStartNewAppInstance: TMenuItem;
    actInvoiceNoGenerators: TAction;
    miInvoiceNoGenerators: TMenuItem;
    miDocProfiles: TMenuItem;
    actDocProfiles: TAction;
    mlDocItemTypes: TMenuItem;
    mlCustomMenuItems: TMenuItem;
    mlDocItemTemplates: TMenuItem;
    actUserDefaultPrinters: TAction;
    actComputerDefaultPrinters: TAction;
    miUserDefaultPrinters: TMenuItem;
    miComputerDefaultPrinters: TMenuItem;
    mlUserDefaultPrinters: TMenuItem;
    miPrintAdministrationSubMenu: TMenuItem;
    actDocItemStorageTypes: TAction;
    miDocItemStorageTypes: TMenuItem;
    actAccessRules: TAction;
    mlAccessRules: TMenuItem;
    miAccessRules: TMenuItem;
    btnBOIMarkingOrdersInvest: TToolButton;
    btnBOIWasteOrdersInvest: TToolButton;
    imgDefaultUserPicture: TImage;
    pnlTop: TPanel;
    pnlCommands: TPanel;
    pnlUserInfo: TJvPanel;
    pnlUserPicture: TJvPanel;
    imgUserPicture: TJvImage;
    pnlUserInfoClient: TPanel;
    mlStartNewAppInstance: TMenuItem;
    grUserInfoBackground: TJvGradient;
    pnlDatabaseInfo: TPanel;
    imgDatabase: TImage;
    pnlDatabaseInfoClient: TPanel;
    lblDatabaseName: TLabel;
    lblUserFullName: TLabel;
    actUserIdentityProfile: TAction;
    miUserIdentityProfile: TMenuItem;
    actInviteUser: TAction;
    miInviteUser: TMenuItem;
    lblLogoAppName: TJvLabel;
    procedure actPrecisionLevelsExecute(Sender: TObject);
    procedure stbMainMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ApplicationEventsHint(Sender: TObject);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
    procedure actStatusBarUpdate(Sender: TObject);
    procedure actStatusBarExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure actUsersExecute(Sender: TObject);
    procedure actMeasuresExecute(Sender: TObject);
    procedure actLanguagesExecute(Sender: TObject);
    procedure actNomsExecute(Sender: TObject);
    procedure actCurrencyRatesExecute(Sender: TObject);
    procedure actShipmentTypesExecute(Sender: TObject);
    procedure actCountriesExecute(Sender: TObject);
    procedure actCustomhousesExecute(Sender: TObject);
    procedure actProductsExecute(Sender: TObject);
    procedure actVendorProductNamesExecute(Sender: TObject);
    procedure actDeptsExecute(Sender: TObject);
    procedure actEmployeesExecute(Sender: TObject);
    procedure actCompaniesExecute(Sender: TObject);
    procedure actPrioritiesExecute(Sender: TObject);
    procedure actNewStoreDealInExecute(Sender: TObject);
    procedure actNewStoreDealOutExecute(Sender: TObject);
    procedure actPlannedStoreDealsExecute(Sender: TObject);
    procedure actStoreDealsExecute(Sender: TObject);
    procedure actNewStoreRequestInExecute(Sender: TObject);
    procedure actStoreRequestsExecute(Sender: TObject);
    procedure actNewDeficitCoverDecisionExecute(Sender: TObject);
    procedure actDeficitCoverDecisionsExecute(Sender: TObject);
    procedure actSaleOrdersExecute(Sender: TObject);
    procedure actNewProductionOrderExecute(Sender: TObject);
    procedure actSpecificationsExecute(Sender: TObject);
    procedure actNewStoreDealInInternalExecute(Sender: TObject);
    procedure actNewStoreDealOutInternalExecute(Sender: TObject);
    procedure actCurrenciesExecute(Sender: TObject);
    procedure actProductQuantitiesTreeExecute(Sender: TObject);
    procedure actConfigExecute(Sender: TObject);
    procedure actAboutExecute(Sender: TObject);
    procedure actFormExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actCompanyExecute(Sender: TObject);
    procedure actVIMQuantityExecute(Sender: TObject);
    procedure actNewStoreRequestOutExecute(Sender: TObject);
    procedure actNewGroupSaleExecute(Sender: TObject);
    procedure actQuantityDeficitExecute(Sender: TObject);
    procedure actSaleQuantitiesExecute(Sender: TObject);
    procedure actNewSpecificationExecute(Sender: TObject);
    procedure actOutFakturaExecute(Sender: TObject);
    procedure actOutDebitnoIzvestieExecute(Sender: TObject);
    procedure actOutKreditnoIzvestieExecute(Sender: TObject);
    procedure actOutOtchetZaProdajbiteExecute(Sender: TObject);
    procedure actOutProtokolExecute(Sender: TObject);
    procedure actDayOffsExecute(Sender: TObject);
    procedure actSalesOverviewShpExecute(Sender: TObject);
    procedure actDeliveriesExecute(Sender: TObject);
    procedure actUncoveredPSDExecute(Sender: TObject);
    procedure actUncoveredModelsExecute(Sender: TObject);
    procedure tmrMllChangesTimer(Sender: TObject);
    procedure actMllcRequestedChangesExecute(Sender: TObject);
    procedure actMllcRejectedChangesExecute(Sender: TObject);
    procedure actMllcRequestedMyChangesExecute(Sender: TObject);
    procedure actMllcRejectedMyChangesExecute(Sender: TObject);
    procedure actMllcMyMlRequestedChangesExecute(Sender: TObject);
    procedure actMllcMyMlRejectedChangesExecute(Sender: TObject);
    procedure actModelMovementsOverviewExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actConfigUserExecute(Sender: TObject);
    procedure actRefreshPendingMllChangesExecute(Sender: TObject);
    procedure actUnfinishedMfgExecute(Sender: TObject);
    procedure actDocItemTypesExecute(Sender: TObject);
    procedure actUserGroupsExecute(Sender: TObject);
    procedure actProfessionsExecute(Sender: TObject);
    procedure actTeamsExecute(Sender: TObject);
    procedure actMonthTeamsExecute(Sender: TObject);
    procedure actSalesProcessViewExecute(Sender: TObject);
    procedure actDeliveriesProcessViewExecute(Sender: TObject);
    procedure actProductionProcessViewExecute(Sender: TObject);
    procedure actEnvironmentProcessViewExecute(Sender: TObject);
    procedure actNoProcessViewExecute(Sender: TObject);
    procedure pnlMainResize(Sender: TObject);
    procedure actFinanceProcessViewExecute(Sender: TObject);
    procedure actSqlExecute(Sender: TObject);
    procedure actSaleTypesExecute(Sender: TObject);
    procedure actOutStoreDealsExportExecute(Sender: TObject);
    procedure actDeptTypesExecute(Sender: TObject);
    procedure actDetailRealNeedsExecute(Sender: TObject);
    procedure actMaterialRealNeedsExecute(Sender: TObject);
    procedure actProductionProductsTreeExecute(Sender: TObject);
    procedure actResultProductRealNeedsExecute(Sender: TObject);
    procedure actStoreQuantitiesExecute(Sender: TObject);
    procedure pmCaptionPopup(Sender: TObject);
    procedure actRefreshPendingMllChangesUpdate(Sender: TObject);
    procedure actMllcRequestedChangesUpdate(Sender: TObject);
    procedure actMllcRequestedMyChangesUpdate(Sender: TObject);
    procedure actMllcMyMlRequestedChangesUpdate(Sender: TObject);
    procedure actMllcRejectedChangesUpdate(Sender: TObject);
    procedure actMllcRejectedMyChangesUpdate(Sender: TObject);
    procedure actMllcMyMlRejectedChangesUpdate(Sender: TObject);
    procedure actOperationMovementsExecute(Sender: TObject);
    procedure actOperationalTasksExecute(Sender: TObject);
    procedure actCurrentDeptExecute(Sender: TObject);
    procedure actDeptDetailFlowExecute(Sender: TObject);
    procedure actBaseGroupsExecute(Sender: TObject);
    procedure actSpecialControlTasksExecute(Sender: TObject);
    procedure actEmployeeEarningsExecute(Sender: TObject);
    procedure actEarningModifiersExecute(Sender: TObject);
    procedure actEducationsExecute(Sender: TObject);
    procedure actShiftsExecute(Sender: TObject);
    procedure actWorkHoursExecute(Sender: TObject);
    procedure actDisciplineEventTypesExecute(Sender: TObject);
    procedure actOccupationsAndEmployeesExecute(Sender: TObject);
    procedure actRealCapacityGraphExecute(Sender: TObject);
    procedure btnPVDeliveriesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPVDeliveriesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPVDeliveriesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnPVFinancesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPVFinancesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPVFinancesMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btnPVSalesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPVSalesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPVSalesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnPVProductionMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnPVProductionMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPVProductionMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btnPVEnvironmentMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnPVEnvironmentMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnPVEnvironmentMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure actRealCapacityTableExecute(Sender: TObject);
    procedure actProfessionKindsExecute(Sender: TObject);
    procedure actOccupationWorkDeptPrioritiesExecute(Sender: TObject);
    procedure actBudgetOrdersExpenseExecute(Sender: TObject);
    procedure actBOIProductOrdersExpenseExecute(Sender: TObject);
    procedure actBudgetClassesTreeExecute(Sender: TObject);
    procedure actModelsInvestedValuesExecute(Sender: TObject);
    procedure actDocItemTemplatesExecute(Sender: TObject);
    procedure actDocItemViewGeneratorsExecute(Sender: TObject);
    procedure actExecuteServersExecute(Sender: TObject);
    procedure actBudgetExpenseExecute(Sender: TObject);
    procedure actFileExtensionsExecute(Sender: TObject);
    procedure actBOICompanyOrdersExpenseExecute(Sender: TObject);
    procedure actMonthDateFormatUpdate(Sender: TObject);
    procedure actWeekDateFormatUpdate(Sender: TObject);
    procedure actBeginEndDateIntervalFormatUpdate(Sender: TObject);
    procedure actBeginDaysDateIntervalFormatUpdate(Sender: TObject);
    procedure actBeginWorkdaysDateIntervalFormatUpdate(Sender: TObject);
    procedure actMonthDateFormatExecute(Sender: TObject);
    procedure actWeekDateFormatExecute(Sender: TObject);
    procedure actBeginEndDateIntervalFormatExecute(Sender: TObject);
    procedure actBeginDaysDateIntervalFormatExecute(Sender: TObject);
    procedure actBeginWorkdaysDateIntervalFormatExecute(Sender: TObject);
    procedure MenuDocItemClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure actCustomMenuItemsExecute(Sender: TObject);
    procedure actProductionOrdersExecute(Sender: TObject);
    procedure actXModelsExecute(Sender: TObject);
    procedure actMllChangesDetailExecute(Sender: TObject);
    procedure actMllChangesDetailUpdate(Sender: TObject);
    procedure actProductionOrdersUpdate(Sender: TObject);
    procedure actXModelsUpdate(Sender: TObject);
    procedure actWorkDefExecute(Sender: TObject);
    procedure actCraftTypesExecute(Sender: TObject);
    procedure actCraftsExecute(Sender: TObject);
    procedure actCommonGroupsExecute(Sender: TObject);
    procedure actStageLevelTasksExecute(Sender: TObject);
    procedure actWorkPrioritiesExecute(Sender: TObject);
    procedure actEngineeringOrderTypesExecute(Sender: TObject);
    procedure actNewEngineeringOrderExecute(Sender: TObject);
    procedure actEngineeringOrdersExecute(Sender: TObject);
    procedure actBOIWasteOrdersExpenseExecute(Sender: TObject);
    procedure actBudgetOrdersInvestExecute(Sender: TObject);
    procedure actBOIProductOrdersInvestExecute(Sender: TObject);
    procedure actBudgetInvestExecute(Sender: TObject);
    procedure actBOICompanyOrdersInvestExecute(Sender: TObject);
    procedure actEmployeeDayAbsenceReasonsExecute(Sender: TObject);
    procedure actEmployeeHourAvailabilityModifierReasonsExecute(
      Sender: TObject);
    procedure actEmployeesAvailabilityExecute(Sender: TObject);
    procedure actEmployeesTotalAvailabilityExecute(Sender: TObject);
    procedure actEmployeesAvailabilityGraphExecute(Sender: TObject);
    procedure actFailedEmployeeMovementsExecute(Sender: TObject);
    procedure actPoolManagersExecute(Sender: TObject);
    procedure actSaleOrdersGroupSaleOrdersExecute(Sender: TObject);
    procedure actMemoryManagerExecute(Sender: TObject);
    procedure actSaleRequestGroupsExecute(Sender: TObject);
    procedure actParRelProductsSalesByPartnerExecute(Sender: TObject);
    procedure actParRelProductsSalesByProductExecute(Sender: TObject);
    procedure actParRelProductsDeliveriesCoveringSalesByPartnerExecute(
      Sender: TObject);
    procedure actParRelProductsDeliveriesCoveringSalesByProductExecute(
      Sender: TObject);
    procedure actParRelProductsDeliveriesCoveringEnvByPartnerExecute(
      Sender: TObject);
    procedure actParRelProductsDeliveriesCoveringEnvByProductExecute(
      Sender: TObject);
    procedure actNewSaleRequestGroupExecute(Sender: TObject);
    procedure actDeficitCoverDecisions2Execute(Sender: TObject);
    procedure actResultProductEstNeedsExecute(Sender: TObject);
    procedure actDetailEstNeedsExecute(Sender: TObject);
    procedure actMaterialEstNeedsExecute(Sender: TObject);
    procedure actDeliveries2Execute(Sender: TObject);
    procedure actDeliveryDialogsExecute(Sender: TObject);
    procedure actDeliveryDialogs2Execute(Sender: TObject);
    procedure actOrganisationTaskProposalsExecute(Sender: TObject);
    procedure actEstCapacityGraphExecute(Sender: TObject);
    procedure actEstCapacityTableExecute(Sender: TObject);
    procedure actEstQuantitiesTableExecute(Sender: TObject);
    procedure actEstQuantitiesGraphExecute(Sender: TObject);
    procedure actEstPricesCompareGraphSalesExecute(Sender: TObject);
    procedure actEstPricesCompareGraphDeliveriesCoveringSalesExecute(Sender: TObject);
    procedure actEstPricesCompareGraphDeliveriesCoveringEnvExecute(
      Sender: TObject);
    procedure actDeliveryTypesExecute(Sender: TObject);
    procedure actDisciplineEventsExecute(Sender: TObject);
    procedure actNewProductionOrderUpdate(Sender: TObject);
    procedure actModelsInvestedValuesUpdate(Sender: TObject);
    procedure actStageLevelTasksUpdate(Sender: TObject);
    procedure actOperationalTasksUpdate(Sender: TObject);
    procedure actSpecialControlTasksUpdate(Sender: TObject);
    procedure actModelMovementsOverviewUpdate(Sender: TObject);
    procedure actOperationMovementsUpdate(Sender: TObject);
    procedure cdsToolbarsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsUserToolbarsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ToolbarItemClick(Sender: TObject);
    procedure ResetToolbarsClick(Sender: TObject);
    procedure cdsUserToolbarsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure FormCreate(Sender: TObject);
    procedure actOutKoregirashtProtokolExecute(Sender: TObject);
    procedure actExceptEventTypesExecute(Sender: TObject);
    procedure actExceptEventsEnvExecute(Sender: TObject);
    procedure actNewDeficitCoverDecision2Execute(Sender: TObject);
    procedure actSpecInvestedValueLevelsGraphExecute(Sender: TObject);
    procedure actInvoicesOutExecute(Sender: TObject);
    procedure actFinancialProductsExecute(Sender: TObject);
    procedure actFinancialCommonGroupsExecute(Sender: TObject);
    procedure actNewFinancialOrderExecute(Sender: TObject);
    procedure actFinancialOrdersExecute(Sender: TObject);
    procedure actPlannedFinancialStoreDealsExecute(Sender: TObject);
    procedure actUncoveredPlannedFinancialStoreDealsExecute(Sender: TObject);
    procedure actNewFinancialStoreRequestExecute(Sender: TObject);
    procedure actFinancialStoreRequestsExecute(Sender: TObject);
    procedure actNewFinancialStoreDealInExecute(Sender: TObject);
    procedure actNewFinancialStoreDealOutExecute(Sender: TObject);
    procedure actFinancialStoreDealsExecute(Sender: TObject);
    procedure actFinancialRelationsGraphExecute(Sender: TObject);
    procedure actFinancialRelationsTableExecute(Sender: TObject);
    procedure actFinancialEstQuantitiesGraphExecute(Sender: TObject);
    procedure actFinancialEstQuantitiesTableExecute(Sender: TObject);
    procedure actFinancialVIMQuantityExecute(Sender: TObject);
    procedure actFinancialQuantityDeficitExecute(Sender: TObject);
    procedure actFinancialStoreQuantitiesExecute(Sender: TObject);
    procedure actFinancialProductQuantitiesTreeExecute(Sender: TObject);
    procedure actFinancialClassesExecute(Sender: TObject);
    procedure actFinancialMeasuresExecute(Sender: TObject);
    procedure actFinancialNomsExecute(Sender: TObject);
    procedure actFinancialEstPricesCompareGraphDeliveriesExecute(
      Sender: TObject);
    procedure actFinancialParRelProductsDeliveriesByPartnerExecute(
      Sender: TObject);
    procedure actFinancialParRelProductsDeliveriesByProductExecute(
      Sender: TObject);
    procedure actNewFinancialDeficitCoverDecisionExecute(Sender: TObject);
    procedure actFinancialDeficitCoverDecisionsExecute(Sender: TObject);
    procedure actFinancialDeliveryDialogsExecute(Sender: TObject);
    procedure actFinancialDeliveriesExecute(Sender: TObject);
    procedure actFinancialEstPricesCompareGraphSalesExecute(Sender: TObject);
    procedure actFinancialParRelProductsSalesByPartnerExecute(Sender: TObject);
    procedure actFinancialParRelProductsSalesByProductExecute(Sender: TObject);
    procedure actNewFinancialSaleRequestGroupExecute(Sender: TObject);
    procedure actFinancialSaleRequestGroupsExecute(Sender: TObject);
    procedure actFinancialSaleOrdersExecute(Sender: TObject);
    procedure actFinancialSalesOverviewShpExecute(Sender: TObject);
    procedure actSaleDecisionTypesExecute(Sender: TObject);
    procedure actDeliveryDecisionTypesExecute(Sender: TObject);
    procedure actCompanyTypesExecute(Sender: TObject);
    procedure tmrExceptEventIndicatorsTimer(Sender: TObject);
    procedure actBudgetProductsExecute(Sender: TObject);
    procedure actBudgetNomsExecute(Sender: TObject);
    procedure actExceptEventActivatedUpdate(Sender: TObject);
    procedure actExceptEventNotActivatedUpdate(Sender: TObject);
    procedure actExceptEventDeptActivatedUpdate(Sender: TObject);
    procedure actExceptEventDeptNotActivatedUpdate(Sender: TObject);
    procedure actExceptEventUserActivatedUpdate(Sender: TObject);
    procedure actExceptEventUserNotActivatedUpdate(Sender: TObject);
    procedure actRefreshExceptEventCountsExecute(Sender: TObject);
    procedure actRefreshExceptEventCountsUpdate(Sender: TObject);
    procedure actExceptEventTaskCtrlActivatedUpdate(Sender: TObject);
    procedure actExceptEventTaskCtrlNotActivatedUpdate(Sender: TObject);
    procedure actExceptEventTaskCtrlDeptActivatedUpdate(Sender: TObject);
    procedure actExceptEventTaskCtrlDeptNotActivatedUpdate(Sender: TObject);
    procedure actExceptEventTaskCtrlUserActivatedUpdate(Sender: TObject);
    procedure actExceptEventTaskCtrlUserNotActivatedUpdate(Sender: TObject);
    procedure actExceptEventTaskRealDeptActivatedUpdate(Sender: TObject);
    procedure actExceptEventTaskRealDeptNotActivatedUpdate(Sender: TObject);
    procedure actExceptEventTaskRealUserActivatedUpdate(Sender: TObject);
    procedure actExceptEventTaskRealUserNotActivatedUpdate(Sender: TObject);
    procedure actExceptEventActivatedExecute(Sender: TObject);
    procedure actExceptEventNotActivatedExecute(Sender: TObject);
    procedure actExceptEventDeptActivatedExecute(Sender: TObject);
    procedure actExceptEventDeptNotActivatedExecute(Sender: TObject);
    procedure actExceptEventUserActivatedExecute(Sender: TObject);
    procedure actExceptEventUserNotActivatedExecute(Sender: TObject);
    procedure actExceptEventTaskCtrlActivatedExecute(Sender: TObject);
    procedure actExceptEventTaskCtrlNotActivatedExecute(Sender: TObject);
    procedure actExceptEventTaskCtrlDeptActivatedExecute(Sender: TObject);
    procedure actExceptEventTaskCtrlDeptNotActivatedExecute(Sender: TObject);
    procedure actExceptEventTaskCtrlUserActivatedExecute(Sender: TObject);
    procedure actExceptEventTaskCtrlUserNotActivatedExecute(Sender: TObject);
    procedure actExceptEventTaskRealDeptActivatedExecute(Sender: TObject);
    procedure actExceptEventTaskRealDeptNotActivatedExecute(Sender: TObject);
    procedure actExceptEventTaskRealUserActivatedExecute(Sender: TObject);
    procedure actExceptEventTaskRealUserNotActivatedExecute(Sender: TObject);
    procedure actParRelProductsBudgetDeliveriesByPartnerExecute(
      Sender: TObject);
    procedure actParRelProductsBudgetDeliveriesByProductExecute(
      Sender: TObject);
    procedure actFinModelLineReasonsExecute(Sender: TObject);
    procedure actRealFinModelLinesExecute(Sender: TObject);
    procedure actRealFinModelLineGroupsExecute(Sender: TObject);
    procedure actNewFinancialStoreDealInInternalExecute(Sender: TObject);
    procedure actNewFinancialStoreDealOutInternalExecute(Sender: TObject);
    procedure actSysRolesExecute(Sender: TObject);
    procedure actNewDeficitCoverDecision3Execute(Sender: TObject);
    procedure actDeficitCoverDecisions3Execute(Sender: TObject);
    procedure actDeliveries3Execute(Sender: TObject);
    procedure actDeliveryDialogs3Execute(Sender: TObject);
    procedure actTestQueriesExecute(Sender: TObject);
    procedure actExceptEventsSalesExecute(Sender: TObject);
    procedure actExceptEventsDeliveriesExecute(Sender: TObject);
    procedure actExceptEventsFinancialExecute(Sender: TObject);
    procedure actExceptEventsProductionExecute(Sender: TObject);
    procedure actExceptEventsProductionUpdate(Sender: TObject);
    procedure actActiveConnectionsExecute(Sender: TObject);
    procedure ApplicationEventsMessage(var Msg: tagMSG; var Handled: Boolean);
    procedure actDocConfigExecute(Sender: TObject);
    procedure actUserGroupsUpdate(Sender: TObject);
    procedure actBOIWasteOrdersInvestExecute(Sender: TObject);
    procedure lblTodayDateDblClick(Sender: TObject);
    procedure lblTodayDateWeekFormatDblClick(Sender: TObject);
    procedure actProcessActionsExecute(Sender: TObject);
    procedure actProcessKnowlsTreeExecute(Sender: TObject);
    procedure actProcessFunctionsTreeExecute(Sender: TObject);
    procedure actProcessBaseOperationsExecute(Sender: TObject);
    procedure actProcessConcreteOperationsExecute(Sender: TObject);
    procedure ProcessLabelMouseEnter(Sender: TObject);
    procedure ProcessLabelMouseLeave(Sender: TObject);
    procedure tmrClockTimer(Sender: TObject);
    procedure actBOIMarkingOrdersInvestExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actVatPeriodsExecute(Sender: TObject);
    procedure stbMainDblClick(Sender: TObject);
    procedure actProductSetsExecute(Sender: TObject);
    procedure actVendorPriceListExecute(Sender: TObject);
    procedure actClientPriceListExecute(Sender: TObject);
    procedure actVendorPriceListEnvCoverExecute(Sender: TObject);
    procedure tmrDisconnectedTimer(Sender: TObject);
    procedure actOrganisationPrcDataExecute(Sender: TObject);
    procedure actOrgPrcDataDistributionExecute(Sender: TObject);
    procedure actDeptsPrcDataExecute(Sender: TObject);
    procedure actOrgWorkActivitiesExecute(Sender: TObject);
    procedure actContactTypesExecute(Sender: TObject);
    procedure actSqlUpdate(Sender: TObject);
    procedure actVatReasonsExecute(Sender: TObject);
    procedure actStartNewAppInstanceExecute(Sender: TObject);
    procedure actInvoiceNoGeneratorsExecute(Sender: TObject);
    procedure actDocProfilesExecute(Sender: TObject);
    procedure actUserDefaultPrintersExecute(Sender: TObject);
    procedure actComputerDefaultPrintersExecute(Sender: TObject);
    procedure actDocItemStorageTypesExecute(Sender: TObject);
    procedure actAccessRulesExecute(Sender: TObject);
    procedure imgUserPictureClick(Sender: TObject);
    procedure lblDatabaseNameMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormResize(Sender: TObject);
    procedure actPoolManagersUpdate(Sender: TObject);
    procedure actMemoryManagerUpdate(Sender: TObject);
    procedure actUserIdentityProfileExecute(Sender: TObject);
    procedure actInviteUserExecute(Sender: TObject);
  private
    FLatestMllcTimestamp: TDateTime;

    FProcessView: TProcessView;

    FRefreshingMllChanges: Boolean;
    FMllChangeCounts: array[TModelChangeStatus, 0..MaxProductionOrderBaseTypeCode] of Integer;

    FRefreshingExceptEvents: Boolean;

    FIndicationCounts: array[
      TIndicationType,
      TIndicationProcess,
      TIndicationOwner,
      TIndicationActivation,
      TIndicationLevel] of Integer;

    FProcessButtonDown: Boolean;
    FProcessLabelVOffset: Integer;

    FdmDocClient: TdmDocClient;

    FCustomMenuItems: array of TDocItem;

    FmiCaptionSalesMenu: TMenuItem;
    FmiCaptionObjectsMenu: TMenuItem;
    FmiCaptionProductionMenu: TMenuItem;
    FmiCaptionDeliveriesMenu: TMenuItem;
    FmiCaptionFinancesMenu: TMenuItem;
    FmiCaptionSubjectsMenu: TMenuItem;
    FmiCaptionSalesInvoicesSubMenu: TMenuItem;
    FPopupsWndProcHooker: TWndProcHooker;
    FActiveMainMenuItemHandle: HMENU;
    FSavedExceptionMessage: string;
    FSavedExceptionClassName: string;
    FOldInactivePingFailed: Boolean;

    FUserPicture: TPicture;
    FUserPictureSet: Boolean;
    FPeekViewBitmap: TBitmap;

    function GetLoginContext: TClientLoginContext;
    function GetUserActivityEditMode(AUserActivityId: Integer): TEditMode;
    function GetStartEditMode(AEditMode: TEditMode): TEditMode;
    procedure ShowAnEditForm(EditFormClass: TEditFormClass;
      ShowUserActivityCode: Integer = 0;
      EditUserActivityCode: Integer = 0);
    procedure ShowXModels(
      const AProductionOrderBaseTypeCode: Integer;
      const AModelChangeStatus: TModelChangeStatus);

    procedure RefreshPendingMllChangeCounts;
    procedure RefreshExceptEventIndicationCounts;
    procedure CheckAllTodayCurrencyRatesEntered;

    function HasAnyChangeIndicatorActivity: Boolean;
    procedure MllChangeActionUpdate(
      AAction: TAction;
      AModelChangeStatus: TModelChangeStatus;
      AProductionOrderBaseTypeCode: Integer);

    procedure IndicatorActionUpdate(
      AAction: TAction;
      AIndicationType: TIndicationType;
      AIndicationProcess: TIndicationProcess;
      AIndicationOwner: TIndicationOwner;
      AIndicationActivation: TIndicationActivation);

    procedure ShowExceptEventsFromIndicator(
      AIndicationType: TIndicationType;
      AIndicationProcess: TIndicationProcess;
      AIndicationOwner: TIndicationOwner;
      AIndicationActivation: TIndicationActivation);

    function HasAnyExceptEventIndicatorActivity: Boolean;
    function HasAnyExceptEventTaskRealActivity: Boolean;
    procedure SetProcessLabelPosition(AProcessLabel: TLabel;
      AProcessSpeedButton: TSpeedButton; AMouseDown: Boolean);

    procedure SetProcessView(const Value: TProcessView);

    procedure LoadProductionOrderBaseTypes;
    procedure GenerateCaptionMenu;

    function ActionProductionOrderBaseTypeCode(Sender: TObject): Integer;
    procedure SetProductionOrderActionCaptionAndHint(Sender: TObject; FmtStr: string);

    procedure LoadUserToolbars;
    procedure SetCrossStateToolbars;
    function FindToolbarPanel(ToolbarCode: Integer): TPanel;
    procedure SetProductionOrderToolbars;
    procedure CheckContextDateSystemEditMode;

    function GetMainMenuButtonWithEmptyMenuItem: TToolButton;
    procedure AfterPopupsWndProc(Sender: TWndProcHooker;
      var AMessage: TMessage);
    procedure BeforePopupsWndProc(Sender: TWndProcHooker;
      var AMessage: TMessage);
    function MainStatusBarPanelIndex(MouseX: Integer): Integer;
    procedure OnExceptionSaveExceptionMessageAndClass(Sender: TObject; E: Exception);
    procedure ActiveFormChange(Sender: TObject);
    procedure PrintPreviewCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);

    property ProcessView: TProcessView read FProcessView write SetProcessView;
    procedure SetDatabaseIcon;
    procedure SetUserPicture;
    procedure WMDwmSendIconicThumbnail(var Message: TMessage);
    procedure CapturePeekViewBitmap;
  protected
    property LoginContext: TClientLoginContext read GetLoginContext;
    procedure Loaded; override;
    procedure DoCreate; override;
  public
    procedure ForceRefreshPendingMllChangeCounts;
    procedure LoadCustomMenuItems;
    procedure ShowExceptEvents(AEditMode: TEditMode; AExceptEventGenType: TExceptEventGenType;
      AGeneratorDataSet: TAbmesClientDataSet = nil);
    function GetInnerFormExceptions(AOnException: TOnExceptionProc): TNestProcRec;
    procedure PopupCaptionMenu;
  end;

var
  fmMain: TfmMain;

const
  APP_MENU_SYS_MENU_ITEM = 100;
  NEW_APP_INSTANCE_SYS_MENU_ITEM = 101;

implementation

uses
  Math, JclDateTime, dMain, AbmesDialogs, uClientUtils, uUtils,
  StrUtils, uTreeNodes, uDealTypes, uInvoiceTypes, uClientApp, uClientAppResources,
  fTreeSelectForm, fDeficitCoverDecision,
  fDeficitCoverDecisions, fShipmentTypes, fUsers, fEmployees, fSQL,
  fCountries, fCustomhouses, fProductQuantitiesTree, fUncoveredModels,
  fSaleOrders, fProductionProductsTree, fExecuteServers,
  fProductionOrder, fStageLevelTasks, fOccupationsAndEmployees, fCapacityGraph,
  fPlannedStoreDeals, fQuickSale, fDeptsTreeEditor, fSpecifications,
  fCurrencyRates, fVendorProductSignatures, fCompanies, fProductsTreeEditor,
  fMeasures, fLanguages, fNoms, fPriorities, fXModels,
  fCurrencies, fStoreDealIn, fStoreDealOut, fUserGroups, fStructurePartNeeds,
  fConfig, fAbout, fCompany, fVIMQuantity, fStoreRequest, fStoreQuantities,
  fGroupSale, fStoreRequests, fQuantityDeficit, fSaleQuantities, fDeptTypes,
  fPlannedStoreDealIn, fInvoice, fInvoices, fDocItemTypes, fUncoveredPSDSingle,
  fSpecification, uClientPeriods, fSaleExpGroups, fDaysOff, fDeliveries,
  fModelMovementsOverview, fConfigUser, fSaleTypes, uCompanyKinds,
  fUnfinishedMfg, fOutStoreDealsExport, fBudget, fTeams, fMonthTeams,
  fResultProductNeeds, fProductionOrders, fDeptDetailFlow,
  fOperationMovements, fOperationalTasks, fCurrentDept, fBaseGroups,
  fEmployeeEarnings, fEarningModifiers, fEducations, fShifts, fWorkHours,
  fCapacityTable, fOccupationWorkDeptPriorities,
  fBudgetOrders, fModelsInvestedValues,
  fDocItemTemplates, fDocItemViewGenerators, fFileExtensions,
  fCustomMenuItems, fShiftRegimes, fCraftTypes, fCrafts, fCommonGroups, fWorkPriorities,
  fEngineeringOrderTypes, fEngineeringOrder, fEngineeringOrders,
  fBOIProductOrders, fBOICompanyOrders, fBOIWasteOrders, uBudgetClientUtils,
  fEmployeeDayAbsenceReasons, fEmployeeHourAvailabilityModifierReasons,
  fEmployeesAvailability, fEmployeePresenceDeviation, fEmployeesTotalAvailability,
  fEmployeesAvailabilityGraph, fEmployeeDayAbsences, fPrecisionLevels,
  fSaleRequestGroups, Types, uDocUtils, fFailedEmployeeMovements, fPoolManagers,
  fMemoryManager, fSaleOrdersGroupSaleOrders, fParRelProducts, uBorderRelTypes,
  fSaleRequestGroup, uParRelProducts, uAspectTypes, uNeeds,
  fDeliveryDialogs, fOrganisationTaskProposals,
  fEstQuantitiesTable, fEstQuantitiesGraph, fEstPricesCompareGraph,
  fDeliveryTypes, fDisciplineEventTypesTree, fDisciplineEvents,
  uModelMovementTypes, fExceptEvents, fStoreDeals,
  fSpecInvestedValueLevelsGraph, fCompanyTypes, fDeliveryDecisions,
  fSaleDecisionTypes, uProducts, fFinModelLineReasons,
  fFinClassesTree, fFinOrder, fFinOrders, fRealFinModelLines,
  fRealFinModelLineGroups, fSysRoles, fFinancialRelationsGraph,
  fFinancialRelationsTable, fTestQueries, fActiveConnections, uClientDateTime,
  fProcessActions, fProcessKnowlsTree,
  fProcessFunctionsTree, fProcessBaseOperationsTree,
  fProcessConcreteOperationsTree, fBOIMarkingOrders, fVatPeriods, fProductSets,
  fPriceList, uTreeClientUtils, fOrganisationPrcData, fOrgPrcDataDistribution,
  fProfessionKinds, fDeptsPrcData, fOrgWorkActivities, fContactTypes, fVatReasons,
  fProfessionsTree, qrprev, fBaseForm, fInvoiceNoGenerators, fStoreDeal,
  fDocProfiles, fExceptEventTypesTree, UITypes, uDefaultPrinters, uClientConsts,
  uConnectionUtils, fDocItemStorageTypes, fAccessRules, uTaskBarUtils,
  Winapi.DwmApi, uDatabaseIcons, Vcl.Imaging.pngimage, uPingInfo,
  uClientConnectionInfo, uDocClientUtils, uIdentity.Manager, uScalingUtils,
  JclSysInfo;

{$R *.DFM}

resourcestring
  SBeginWorkdaysDateIntervalFormat = 'Начална дата - работни дни (%s - 1 р.д.)';
  SBeginDaysDateIntervalFormat = 'Начална дата - календарни дни (%s - 1 к.д.)';
  SBeginEndDateIntervalFormat = 'Начална дата - Крайна дата (%s - %s)';
  SWeekDateFormat = 'Седмичен формат (%s)';
  SMonthDateFormat = 'Месечен формат (%s)';

  SConfirmNewStoreDealIn = 'Желаете ли въвеждане на ново постъпление?';
  SConfirmNewStoreDealOut = 'Желаете ли въвеждане на ново теглене?';
  SConfirmNewInput = 'Желаете ли ново въвеждане?';
  SCurrencyRatesNotEntered = 'Не са въведени всички валутни курсове за днес. Работата със системата не може да продължи докато не бъдат въведени.';

  SNoProcessViewName = '';
  SFinanceProcessViewName = 'Финансиране';
  SSalesProcessViewName = 'Продажби';
  SDeliveriesProcessViewName = 'Доставки';
  SProductionProcessViewName = 'Вътрешно Обезпечаване на Продажбите';
  SEnvironmentProcessViewName = 'Осъществяване на Технологичната Среда';

  SNewProductionOrder = 'Нов ОПВ за %0:s%1:s';
  SProductionOrders = 'Регистър на ОПВ за %3:s';
  SXModels = 'Регистър на РИР по ОПВ за %3:s';
  SModelsInvestedValues = 'Регистър на ИнжОрСАн по ОПВ за %3:s';
  SStageLevelTasks = 'Етапни Задания по ОПВ за %3:s';
  SOperationalTasks = 'Операционни Задания по ОПВ за %3:s';
  SSpecialControlTasks = 'Задания за Специализиран Контрол по ОПВ за %3:s';
  SModelMovementsOverview = 'Регистър на Етапни Движения по ОПВ за %3:s';
  SOperationMovements = 'Регистър на Операционни Движения по ОПВ за %3:s';

  SModels = 'Р-МОДЕл-и';
  SModelsOfBaseType = 'Р-МОДЕл-и по ОПВ за %s';
  SDisciplineRating = 'Дисциплинарен статус (отрицателен : положителен)';

  SConnectionToDbHint = 'Връзка ID: %d @ %s';

  SCannotModifyDataInContextDateSystemReadOnlyMode = 'Няма достъп до тази ФП, когато %AppName% е в режим "Преглед", или в режим "Към дата" и не е избран режим за редактиране';

  SAppReadOnlyCaption = 'Преглед';

resourcestring
  SCountRequestedChangesIn = '%d предложения за замяна в %s';
  SCountRejectedChangesIn = '%d отказани предложения за замяна в %s';
  SCountRequestedMyChangesIn = '%d мои предложения за замяна в %s';
  SCountRejectedMyChangesIn = '%d отказани мои предложения за замяна в %s';
  SCountMyMlRequestedChanges = '%d предложения за замяна в мои %s';
  SCountMyMlRejectedChanges = '%d отказани предложения за замяна в мои %s';

  SExceptEventNotActivated = '%d неактивирани Недопустими Отклонения';
  SExceptEventActivated = '%d активирани Недопустими Отклонения';
  SExceptEventUserNotActivated = '%d неактивирани Недопустими Отклонения, за които Потребителя е Главен Отговорник';
  SExceptEventUserActivated = '%d активирани Недопустими Отклонения, за които Потребителя е Главен Отговорник';
  SExceptEventDeptNotActivated = '%d неактивирани Недопустими Отклонения, за които ТП за Преодоляване е в Полеви Обхват на Длъжност на Потребителя';
  SExceptEventDeptActivated = '%d активирани Недопустими Отклонения, за които ТП за Преодоляване е в Полеви Обхват на Длъжност на Потребителя';

  SExceptEventTaskRealUserNotActivated = '%d неактивирани Пакети от Мерки, за които Потребителя е Служител Реализатор';
  SExceptEventTaskRealUserActivated = '%d активирани Пакети от Мерки, за които Потребителя е Служител Реализатор';
  SExceptEventTaskRealDeptNotActivated = '%d неактивирани Пакети от Мерки, за които ТП Реализатор е в Полеви Обхват на Длъжност на Потребителя';
  SExceptEventTaskRealDeptActivated = '%d активирани Пакети от Мерки, за които ТП Реализатор е в Полеви Обхват на Длъжност на Потребителя';
  SExceptEventTaskCtrlNotActivated = '%d неактивирани Пакети от Мерки';
  SExceptEventTaskCtrlActivated = '%d активирани Пакети от Мерки';
  SExceptEventTaskCtrlUserNotActivated = '%d неактивирани Пакети от Мерки по НО, за които Потребителя е Главен Отговорник';
  SExceptEventTaskCtrlUserActivated = '%d активирани Пакети от Мерки по НО, за които Потребителя е Главен Отговорник';
  SExceptEventTaskCtrlDeptNotActivated = '%d неактивирани Пакети от Мерки по НО, за които ТП за Преодоляване е в Полеви Обхват на Длъжност на Потребителя';
  SExceptEventTaskCtrlDeptActivated = '%d активирани Пакети от Мерки по НО, за които ТП за Преодоляване е в Полеви Обхват на Длъжност на Потребителя';

  SExceptEventSecondaryIndicationHint = ' (%d неприхванати)';
  SExceptEventTaskSecondaryIndicationHint = ' (%d с проблеми)';

const
  IndicationHints: array[TIndicationType, TIndicationProcess, TIndicationOwner, TIndicationActivation] of string =
    ( ( ( (SExceptEventActivated, SExceptEventNotActivated),
          (SExceptEventUserActivated, SExceptEventUserNotActivated),
          (SExceptEventDeptActivated, SExceptEventDeptNotActivated)
        ),
        ( ('', ''),
          ('', ''),
          ('', '')
        )
      ),
      ( ( (SExceptEventTaskCtrlActivated, SExceptEventTaskCtrlNotActivated),
          (SExceptEventTaskCtrlUserActivated, SExceptEventTaskCtrlUserNotActivated),
          (SExceptEventTaskCtrlDeptActivated, SExceptEventTaskCtrlDeptNotActivated)
        ),
        ( ('', ''),
          (SExceptEventTaskRealUserActivated, SExceptEventTaskRealUserNotActivated),
          (SExceptEventTaskRealDeptActivated, SExceptEventTaskRealDeptNotActivated)
        )
      )
    );

const
  SecondaryIndicationHints: array[TIndicationType] of string =
    (SExceptEventSecondaryIndicationHint, SExceptEventTaskSecondaryIndicationHint);

const
  DisciplineRatingSeparator = ' : ';

const
  ModelChangeCaptionFormats: array[TModelChangeStatus] of string = (
    SCountRequestedChangesIn,
    SCountRejectedChangesIn,
    SCountRequestedMyChangesIn,
    SCountRejectedMyChangesIn,
    SCountMyMlRequestedChanges,
    SCountMyMlRejectedChanges
  );

const
  ProcessViewNames: array[TProcessView] of string = (
    SNoProcessViewName,
    SFinanceProcessViewName,
    SSalesProcessViewName,
    SDeliveriesProcessViewName,
    SProductionProcessViewName,
    SEnvironmentProcessViewName
  );

// action tag flags
const
  atfCreateObject = 1 shl 0;

const
  RefreshImageIndex = 16;
  HourglassImageIndex = 17;
  BulbOffImageIndex = 13;
  RequestBulbOnImageIndex = 14;
  RejectBulbOnImageIndex = 15;

type
  TIsRefreshing = Boolean;
  TIsEnabled = Boolean;

const
  RefreshImageIndexes: array[TIsRefreshing] of Integer =
    (RefreshImageIndex, HourglassImageIndex);

  MllChangeImageIndexes: array[TIsRefreshing, TIsEnabled, TRequestOrReject] of Integer =
    (
      (
        (BulbOffImageIndex, BulbOffImageIndex),
        (RequestBulbOnImageIndex, RejectBulbOnImageIndex)
      ),
      (
        (HourglassImageIndex, HourglassImageIndex),
        (HourglassImageIndex, HourglassImageIndex)
      )
    );

type
  TProductionOrderBaseTypesDependableMenuItem = class(TDynamicMenuItem);

type
  TProductionOrderBaseTypesDependableAction = class(TDynamicAction)
  private
    FProductionOrderBaseTypeCode: Integer;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    property ProductionOrderBaseTypeCode: Integer read FProductionOrderBaseTypeCode write FProductionOrderBaseTypeCode;
  end;

type
  TProductionOrdersMenuItem = class(TProductionOrderBaseTypesDependableMenuItem);
  TProductionOrdersAction = class(TProductionOrderBaseTypesDependableAction);

type
  TMllChangesDetailMenuItem = class(TProductionOrderBaseTypesDependableMenuItem);

type
  TMllChangesDetailAction = class(TProductionOrderBaseTypesDependableAction)
  private
    FModelChangeStatus: TModelChangeStatus;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    property ModelChangeStatus: TModelChangeStatus read FModelChangeStatus write FModelChangeStatus;
  end;

const
  IndicatorActionCategories: array[TIndicationType] of string =
    ('ExceptEventIndication', 'ExceptEventTaskIndication');

{ TProcessView routines }

function ProcessViewToCrossStateCode(Value: TProcessView): Integer;
const
  CrossStateCodes: array[TProcessView] of Integer = (1, 6, 3, 4, 5, 2);
begin
  Result:= CrossStateCodes[Value];
end;  { ProcessViewToCrossStateCode }

function CrossStateCodeToProcessView(Value: Integer): TProcessView;
const
  ProcessViews: array[1..6] of TProcessView =
    (pvNone, pvEnvironment, pvSales, pvDeliveries, pvProduction, pvFinance);
begin
  Assert(InRange(Value, Low(ProcessViews), High(ProcessViews)));
  Result:= ProcessViews[Value];
end;  { CrossStateCodeToProcessView }

{ TProductionOrderBaseTypesDependableAction }

procedure TProductionOrderBaseTypesDependableAction.AssignTo(
  Dest: TPersistent);
begin
  inherited AssignTo(Dest);
  if (Dest is TProductionOrderBaseTypesDependableAction) then
    with TProductionOrderBaseTypesDependableAction(Dest) do
      begin
        ProductionOrderBaseTypeCode:= Self.ProductionOrderBaseTypeCode;
      end;  { with, if }
end;

{ TMllChangesDetailAction }

procedure TMllChangesDetailAction.AssignTo(Dest: TPersistent);
begin
  inherited AssignTo(Dest);
  if (Dest is TMllChangesDetailAction) then
    with TMllChangesDetailAction(Dest) do
      begin
        ModelChangeStatus:= Self.ModelChangeStatus;
      end;  { with, if }
end;

{ TfmMain }

function TfmMain.GetLoginContext: TClientLoginContext;
begin
  Result:= dmMain.LoginContext;
end;

function TfmMain.GetUserActivityEditMode(
  AUserActivityId: Integer): TEditMode;
begin
  if LoginContext.HasUserActivity(AUserActivityId) then
    Result:= emEdit
  else
    Result:= emReadOnly;
end;

function TfmMain.GetStartEditMode(AEditMode: TEditMode): TEditMode;
begin
  // tui tuka e za da poznava dali se
  // vika ot fmMain ili ot CaptionMenu-to
  // i da prowerqwa dali ne e w readonly rejim sys zadadena data

  if LoginContext.IsSessionReadOnly or
     ((Screen.ActiveForm <> Self) and Assigned(Screen.ActiveForm)) then
    Result:= emReadOnly
  else
    Result:= AEditMode;
end;

procedure TfmMain.ShowAnEditForm(EditFormClass: TEditFormClass;
  ShowUserActivityCode, EditUserActivityCode: Integer);
var
  EditMode: TEditMode;
begin
  if (ShowUserActivityCode <> 0) then
    LoginContext.CheckUserActivity(ShowUserActivityCode);

  if (EditUserActivityCode = 0) then
    EditMode:= emEdit
  else
    EditMode:= GetUserActivityEditMode(EditUserActivityCode);

  EditMode:= GetStartEditMode(EditMode);

  EditFormClass.ShowForm(nil, nil, EditMode);
end;

procedure TfmMain.ApplicationEventsHint(Sender: TObject);
begin
  stbMain.Panels[1].Text:= GetLongHint(Application.Hint);
end;

procedure TfmMain.ApplicationEventsMessage(var Msg: tagMSG;
  var Handled: Boolean);
var
  Message: TMessage;
begin
  if (Msg.Message = WM_SYSCOMMAND) and
     (Msg.wParam = APP_MENU_SYS_MENU_ITEM) then
    PopupCaptionMenu;

  if (Msg.Message = WM_MBUTTONUP) and
     Assigned(Screen.ActiveForm) and
     (Screen.ActiveForm is TBaseForm) and
     (Screen.ActiveForm as TBaseForm).HasCaptionMenu then
    PopupCaptionMenu;

  if (Msg.Message = WM_SYSCOMMAND) and
     (Msg.wParam = NEW_APP_INSTANCE_SYS_MENU_ITEM) then
    dmMain.StartNewAppInstance;

  if (Msg.Message = WM_DWMSENDICONICTHUMBNAIL) then
    begin
      Message:= MsgToMessage(Msg);
      WMDwmSendIconicThumbnail(Message);
      InvalidateCustomPeekView;
      Handled:= (Message.Result = Ord(True));
    end;
end;

procedure TfmMain.ApplicationEventsException(Sender: TObject; E: Exception);
begin
  ShowExceptionMessage(E.Message, E.ClassName);
end;

procedure TfmMain.stbMainDblClick(Sender: TObject);
var
  PanelIndex: Integer;
begin
  PanelIndex:= MainStatusBarPanelIndex(stbMain.ScreenToClient(Mouse.CursorPos).X);

  case PanelIndex of
    0: actCurrentDept.Execute;
  end;  { case }
end;

function TfmMain.MainStatusBarPanelIndex(MouseX: Integer): Integer;
var
  SumX: Integer;
begin
  SumX:= 0;
  Result:= 0;
  while (Result < stbMain.Panels.Count) and (SumX < MouseX) do
    begin
      Inc(SumX, stbMain.Panels[Result].Width);
      Inc(Result);
    end;
  Dec(Result);
end;

procedure TfmMain.stbMainMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  PanelIndex: Integer;
begin
  PanelIndex:= MainStatusBarPanelIndex(X);

  case PanelIndex of
    -1: stbMain.Hint:= '';
  else
    stbMain.Hint:= stbMain.Panels[PanelIndex].Text + '|';
  end;
end;

procedure TfmMain.actStatusBarExecute(Sender: TObject);
begin
  // Do nothing
end;

procedure TfmMain.actStatusBarUpdate(Sender: TObject);

  function DisciplineRatingAsText: string;
  begin
    if (LoginContext.UserNegativeDisciplineRating = 0) and
       (LoginContext.UserPositiveDisciplineRating = 0) then
      Result:= ''
    else
      Result:= Format('%d%s%d', [
        LoginContext.UserNegativeDisciplineRating,
        DisciplineRatingSeparator,
        LoginContext.UserPositiveDisciplineRating
      ]);
  end;  { DisciplineRatingAsText }

begin
  with stbMain do
    begin
      Panels[0].Text:= LoginContext.CurrentDeptFullName;
    end;  { with }
end;

procedure TfmMain.actFormExecute(Sender: TObject);
begin
  // Do nothing
end;

procedure TfmMain.actFormUpdate(Sender: TObject);
var
  MllChangesIndicationVisible: Boolean;
  ExceptEventIndicationVisible: Boolean;
  ExceptEventTaskRealIndicationVisible: Boolean;
  ExceptEventDeptIndicatorsVisible: Boolean;
  ExceptEventUserIndicatorsVisible: Boolean;
begin
  btnObjectsMenu.Visible:=
    LoginContext.HasUserActivity(uaObjectsMenu);
  btnSubjectsMenu.Visible:=
    LoginContext.HasUserActivity(uaSubjectsMenu);
  btnEnvironmentMenu.Visible:=
    LoginContext.HasUserActivity(uaEnvironmentMenu);
  btnSalesMenu.Visible:=
    LoginContext.HasUserActivity(uaSalesMenu) and
    (FProcessView in [pvNone, pvSales, pvFinance]);
  btnProductionMenu.Visible:=
    LoginContext.HasUserActivity(uaProductionMenu) and
    (FProcessView in [pvNone, pvProduction]);
  btnDeliveriesMenu.Visible:=
    LoginContext.HasUserActivity(uaDeliveriesMenu) and
    (FProcessView in [pvNone, pvDeliveries, pvFinance]);
  btnFinancesMenu.Visible:=
    LoginContext.HasUserActivity(uaFinancesMenu) and
    (FProcessView in [pvNone, pvFinance, pvSales, pvDeliveries]);
  btnWorkMenu.Visible:=
    LoginContext.HasUserActivity(uaWorkMenu) and
    (FProcessView = pvNone);

  with dmMain do
    begin
      if Assigned(FmiCaptionSalesMenu) then
        FmiCaptionSalesMenu.Visible:=
          LoggedIn and LoginContext.HasUserActivity(uaSalesMenu);

      if Assigned(FmiCaptionObjectsMenu) then
        FmiCaptionObjectsMenu.Visible:=
          LoggedIn and LoginContext.HasUserActivity(uaObjectsMenu);

      if Assigned(FmiCaptionProductionMenu) then
        FmiCaptionProductionMenu.Visible:=
          LoggedIn and LoginContext.HasUserActivity(uaProductionMenu);

      if Assigned(FmiCaptionDeliveriesMenu) then
        FmiCaptionDeliveriesMenu.Visible:=
          LoggedIn and LoginContext.HasUserActivity(uaDeliveriesMenu);

      if Assigned(FmiCaptionFinancesMenu) then
        FmiCaptionFinancesMenu.Visible:=
          LoggedIn and LoginContext.HasUserActivity(uaFinancesMenu);

      if Assigned(FmiCaptionSubjectsMenu) then
        FmiCaptionSubjectsMenu.Visible:=
          LoggedIn and LoginContext.HasUserActivity(uaSubjectsMenu);

      miCaptionChangeRequestsMenu.Visible:=
        LoggedIn and
        (LoginContext.HasUserActivity(uaMllcChangeIndicator) or
         LoginContext.HasUserActivity(uaMllcMyChangeIndicator) or
         LoginContext.HasUserActivity(uaMllcMyMlChangeIndicator));

      miCaptionExceptEventTaskIndicators.Visible:=
        LoggedIn and
        (LoginContext.HasUserActivity(uaExceptEventTaskRealUserIndicator) or
         LoginContext.HasUserActivity(uaExceptEventTaskRealDeptIndicator));

      miCaptionExceptEventIndicators.Visible:=
        LoggedIn and
        (LoginContext.HasUserActivity(uaExceptEventCtrlIndicator) or
         LoginContext.HasUserActivity(uaExceptEventCtrlUserIndicator) or
         LoginContext.HasUserActivity(uaExceptEventCtrlDeptIndicator));
    end;   { with }

  pnlOutOfProcessView.Visible:= (FProcessView = pvNone);
  pnlInProcessView.Visible:= (FProcessView <> pvNone);

  lblProcessView.Caption:= ProcessViewNames[FProcessView];

  miAppAdministrationSubMenu.Visible:= LoginContext.HasUserActivity(uaAppAdministrationSubMenu);
  miDocAdministrationSubMenu.Visible:= LoginContext.HasUserActivity(uaDocAdministrationSubMenu);
  miPrintAdministrationSubMenu.Visible:= LoginContext.HasUserActivity(uaPrintAdministrationSubMenu);

  MllChangesIndicationVisible:= HasAnyChangeIndicatorActivity;

  tlbPendingMllChanges.Visible:= MllChangesIndicationVisible;

  tmrMllChanges.Interval:= LoginContext.MllcIndicatorRefreshInterval * 60000;  // minutes -> milliseconds
  tmrMllChanges.Enabled:= MllChangesIndicationVisible;

  ExceptEventIndicationVisible:= LoginContext.HasUserActivity(uaExceptEventCtrlIndicator);
  tlbExceptEventIndicators.Visible:= ExceptEventIndicationVisible;

  ExceptEventDeptIndicatorsVisible:= LoginContext.HasUserActivity(uaExceptEventCtrlDeptIndicator);
  tlbExceptEventDeptIndicators.Visible:= ExceptEventDeptIndicatorsVisible;
  sepExceptEventDeptIndicators.Visible:= tlbExceptEventIndicators.Visible;

  ExceptEventUserIndicatorsVisible:= LoginContext.HasUserActivity(uaExceptEventCtrlUserIndicator);
  tlbExceptEventUserIndicators.Visible:= ExceptEventUserIndicatorsVisible;
  sepExceptEventUserIndicators.Visible:= tlbExceptEventDeptIndicators.Visible or tlbExceptEventIndicators.Visible;

  ExceptEventTaskRealIndicationVisible:= HasAnyExceptEventTaskRealActivity;
  tlbExceptEventTaskRealIndicators.Visible:= ExceptEventTaskRealIndicationVisible;
  sepExceptEventTaskRealButtons.Visible:= tlbPendingMllChanges.Visible;

  tmrExceptEventIndicators.Interval:= LoginContext.ExceptEventIndicatorRefreshInterval * 60000;  // minutes -> milliseconds
  tmrExceptEventIndicators.Enabled:=
    ExceptEventIndicationVisible or
    ExceptEventDeptIndicatorsVisible or
    ExceptEventUserIndicatorsVisible or
    ExceptEventTaskRealIndicationVisible;

  miOutStoreDealsExport.Visible:= LoginContext.HasUserActivity(uaOutStoreDealsExport);

  miSalesInvoicesSubMenu.Visible:= LoginContext.IsInvoiceSystemVisible;
  FmiCaptionSalesInvoicesSubMenu.Visible:= LoginContext.IsInvoiceSystemVisible;

  Caption:=
    SAppName +
    IfThen(dmMain.LoggedIn and LoginContext.IsSessionReadOnly, ' - ' + SAppReadOnlyCaption);

  if not FUserPictureSet then
    SetUserPicture;

  pnlToolbars.Height:= pnlToolbars.TotalHeight;
  pnlTop.Height:= pnlCommands.TotalHeight;

  pnlTimeLine.Padding.Right:= pnlUserInfo.Width + 16;
  pnlMainMenuAndExceptEventIndicators.Padding.Right:= pnlUserInfo.Width + 16;

  lblUserFullName.Caption:= WordWrapString(LoginContext.UserFullName, lblUserFullName.Canvas, lblUserFullName.Width);
  lblDatabaseName.Caption:= WordWrapString(UpperCase(dmMain.DBName), lblDatabaseName.Canvas, lblDatabaseName.Width - 4);

  pnlUserInfo.Height:= ClientHeight - stbMain.Height;
  grUserInfoBackground.Width:= pnlUserInfo.Width;
  grUserInfoBackground.Height:= pnlUserInfo.Height;

  if Visible and not Assigned(FPeekViewBitmap) then
    CapturePeekViewBitmap;
end;

procedure TfmMain.actDeliveryDecisionTypesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmDeliveryDecisions, uaDeliveryDecisions, uaDeliveryDecisionsEdit);
end;

procedure TfmMain.actDeliveryDialogs2Execute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaDeliveryDialogsEnvCover);
  TfmDeliveryDialogs.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaDeliveryDialogsEnvCoverEdit)),
    doNone,
    pobtEnvCover,
    pcNormal);
end;

procedure TfmMain.actDeliveryDialogs3Execute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaDeliveryDialogsOccCover);
  TfmDeliveryDialogs.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaDeliveryDialogsOccCoverEdit)),
    doNone,
    pobtOccCover,
    pcNormal);
end;

procedure TfmMain.actDeliveryDialogsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaDeliveryDialogs);
  TfmDeliveryDialogs.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaDeliveryDialogsEdit)),
    doNone,
    pobtSaleCover,
    pcNormal);
end;

procedure TfmMain.actDeliveryTypesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmDeliveryTypes, uaDeliveryTypes, uaDeliveryTypesEdit);
end;

procedure TfmMain.actEstCapacityGraphExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaEstCapacityGraph);
  TfmCapacityGraph.ShowForm(nil, nil, emReadOnly, doNone, True, atEstimation);
end;

procedure TfmMain.actEstCapacityTableExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaEstCapacityTable);
  TfmCapacityTable.ShowForm(nil, nil, emReadOnly, doNone, True, atEstimation);
end;

procedure TfmMain.actEstPricesCompareGraphDeliveriesCoveringEnvExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivities([uaEstPricesCompareGraphDeliveries, uaShowLevelOneInvestedValues]);
  TfmEstPricesCompareGraph.ShowForm(nil, nil, emReadOnly, doNone, True, pcNormal, brtVendor, pobtEnvCover);
end;

procedure TfmMain.actEstPricesCompareGraphDeliveriesCoveringSalesExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivities([uaEstPricesCompareGraphDeliveries, uaShowLevelOneInvestedValues]);
  TfmEstPricesCompareGraph.ShowForm(nil, nil, emReadOnly, doNone, True, pcNormal, brtVendor, pobtSaleCover);
end;

procedure TfmMain.actEstPricesCompareGraphSalesExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivities([uaVIMValueGained, uaShowSalePrices]);
  TfmEstPricesCompareGraph.ShowForm(nil, nil, emReadOnly, doNone, True, pcNormal, brtClient, pobtSaleCover);
end;

procedure TfmMain.actEstQuantitiesGraphExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaEstQuantitiesGraph);
  TfmEstQuantitiesGraph.ShowForm(nil, nil, emReadOnly, doNone, True, pcNormal);
end;

procedure TfmMain.actEstQuantitiesTableExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaEstQuantitiesTable);
  TfmEstQuantitiesTable.ShowForm(nil, nil, emReadOnly, doNone, True, pcNormal);
end;

procedure TfmMain.actExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmMain.actUsersExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmUsers, uaUsers, uaUsersEdit);
  SetCrossStateToolbars;
  dmMain.LoadLoginContext;
  dmMain.LoadUserPicture;
  FUserPictureSet:= False;
  CapturePeekViewBitmap;
end;

procedure TfmMain.actMeasuresExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaMeasures);
  TfmMeasures.ShowForm(nil, nil, GetStartEditMode(GetUserActivityEditMode(uaMeasuresEdit)), doNone, True, pcNormal);
end;

procedure TfmMain.actMemoryManagerExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmMemoryManager, uaMemoryManager);
end;

procedure TfmMain.actMemoryManagerUpdate(Sender: TObject);
begin
  (Sender as TAction).Visible:= LoginContext.IsPowerUser;
end;

procedure TfmMain.actLanguagesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmLanguages, uaLanguages, uaLanguagesEdit);
end;

procedure TfmMain.actNomsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaNoms);
  TfmNoms.ShowForm(nil, nil, GetStartEditMode(GetUserActivityEditMode(uaNomsEdit)), doNone, True, pcNormal);
end;

procedure TfmMain.actCurrencyRatesExecute(Sender: TObject);
var
  EditMode: TEditMode;
  IsStartedFromCaptionMenu: Boolean;
begin
  LoginContext.CheckUserActivity(uaCurrencyRates);
  EditMode:= GetUserActivityEditMode(uaCurrencyRatesEdit);

  IsStartedFromCaptionMenu:= (Screen.ActiveForm <> Self) and Assigned(Screen.ActiveForm);
  if IsStartedFromCaptionMenu then
    EditMode:= emReadOnly;

  TfmCurrencyRates.ShowForm(nil, nil, EditMode);
end;

procedure TfmMain.actShipmentTypesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmShipmentTypes, uaShipmentTypes, uaShipmentTypesEdit);
end;

procedure TfmMain.actCountriesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmCountries, uaCountries, uaCountriesEdit);
end;

procedure TfmMain.actCustomhousesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmCustomhouses, uaCustomhouses, uaCustomhousesEdit);
end;

procedure TfmMain.actProductsExecute(Sender: TObject);
var
  em: TEditMode;
begin
  LoginContext.CheckUserActivity(uaProducts);

  if LoginContext.HasUserActivity(uaProductsEdit) or
     LoginContext.HasUserActivity(uaProductPeriodsEdit) then
    em:= emEdit
  else
    em:= emReadOnly;

  TfmProductsTreeEditor.ShowForm(nil, 0, tnRootProductCode, GetStartEditMode(em), tdsNone, pcNormal);
end;

procedure TfmMain.actVatPeriodsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmVatPeriods, uaVatPeriods, uaVatPeriodsEdit);
end;

procedure TfmMain.actVatReasonsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmVatReasons, uaVatReasons, uaVatReasonsEdit);
end;

procedure TfmMain.actVendorPriceListEnvCoverExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaVendorPriceList);
  TfmPriceList.ShowForm(
    nil,
    nil,
    GetStartEditMode(emEdit),
    doNone,
    True,
    pcNormal,
    brtVendor,
    prpoPartner,
    nil);
end;

procedure TfmMain.actVendorPriceListExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaVendorPriceList);
  TfmPriceList.ShowForm(
    nil,
    nil,
    GetStartEditMode(emEdit),
    doNone,
    True,
    pcNormal,
    brtVendor,
    prpoPartner,
    nil);
end;

procedure TfmMain.actVendorProductNamesExecute(Sender: TObject);
begin
  ShowAnEditForm(
    TfmVendorProductSignatures, uaVendorProductNames, uaVendorProductNamesEdit);
end;

procedure TfmMain.actOrganisationPrcDataExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaOrganisationPrcData);
  TfmOrganisationPrcData.ShowForm(nil, nil, emReadOnly);
end;

procedure TfmMain.actDeptsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaDepts);
  TfmDeptsTreeEditor.ShowForm(nil, 0, tnRootDeptCode,
    GetStartEditMode(GetUserActivityEditMode(uaDeptsEdit)), tdsNone);
  dmMain.RefreshLoginContext;
end;

procedure TfmMain.actDeptsPrcDataExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmDeptsPrcData, uaDeptsPrcData, uaDeptsPrcDataEdit);
end;

procedure TfmMain.actEmployeesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmEmployees, uaEmployees);
end;

procedure TfmMain.actCompaniesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmCompanies, uaAllCompanies, uaAllCompaniesEdit);
end;

procedure TfmMain.actPrecisionLevelsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmPrecisionLevels, uaPrecisionLevels, uaPrecisionLevelsEdit);
end;

procedure TfmMain.actPrioritiesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmPriorities, uaPriorities, uaPrioritiesEdit);
end;

procedure TfmMain.actNewStoreDealInExecute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  CheckNewStoreDealUserActivities(ioIn, LoginContext.CurrentDeptCode, pcNormal);
  RepeatAction(actNewStoreDealInInternal, SConfirmNewStoreDealIn);
end;

procedure TfmMain.actNewStoreDealOutExecute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  CheckNewStoreDealUserActivities(ioOut, LoginContext.CurrentDeptCode, pcNormal);
  RepeatAction(actNewStoreDealOutInternal, SConfirmNewStoreDealOut);
end;

procedure TfmMain.actParRelProductsBudgetDeliveriesByPartnerExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaParRelProductBudgetDeliveries);
  TfmParRelProducts.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaParRelProductBudgetDeliveriesEdit)),
    doNone,
    True,
    pcBudget,
    brtVendor,
    pobtEnvCover,
    prpoPartner,
    prpkQuantity,
    prpspikNone,
    prpdikNone,
    False
  );
end;

procedure TfmMain.actParRelProductsBudgetDeliveriesByProductExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaParRelProductBudgetDeliveries);
  TfmParRelProducts.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaParRelProductBudgetDeliveriesEdit)),
    doNone,
    True,
    pcBudget,
    brtVendor,
    pobtEnvCover,
    prpoProduct,
    prpkQuantity,
    prpspikNone,
    prpdikNone,
    False
  );
end;

procedure TfmMain.actParRelProductsDeliveriesCoveringEnvByPartnerExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaParRelProductDeliveriesEnvCover);
  TfmParRelProducts.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaParRelProductDeliveriesEnvCoverEdit)),
    doNone,
    True,
    pcNormal,
    brtVendor,
    pobtEnvCover,
    prpoPartner,
    prpkQuantity,
    prpspikNone,
    prpdikNone,
    False
  );
end;

procedure TfmMain.actParRelProductsDeliveriesCoveringEnvByProductExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaParRelProductDeliveriesEnvCover);
  TfmParRelProducts.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaParRelProductDeliveriesEnvCoverEdit)),
    doNone,
    True,
    pcNormal,
    brtVendor,
    pobtEnvCover,
    prpoProduct,
    prpkQuantity,
    prpspikNone,
    prpdikNone,
    False
  );
end;

procedure TfmMain.actParRelProductsDeliveriesCoveringSalesByPartnerExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaParRelProductDeliveriesSaleCover);
  TfmParRelProducts.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaParRelProductDeliveriesSaleCoverEdit)),
    doNone,
    True,
    pcNormal,
    brtVendor,
    pobtSaleCover,
    prpoPartner,
    prpkQuantity,
    prpspikNone,
    prpdikNone,
    False
  );
end;

procedure TfmMain.actParRelProductsDeliveriesCoveringSalesByProductExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaParRelProductDeliveriesSaleCover);
  TfmParRelProducts.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaParRelProductDeliveriesSaleCoverEdit)),
    doNone,
    True,
    pcNormal,
    brtVendor,
    pobtSaleCover,
    prpoProduct,
    prpkQuantity,
    prpspikNone,
    prpdikNone,
    False
  );
end;

procedure TfmMain.actParRelProductsSalesByPartnerExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaParRelProductSales);
  TfmParRelProducts.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaParRelProductSalesEdit)),
    doNone,
    True,
    pcNormal,
    brtClient,
    pobtSaleCover,
    prpoPartner,
    prpkQuantity,
    prpspikNone,
    prpdikNone,
    False
  );
end;

procedure TfmMain.actParRelProductsSalesByProductExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaParRelProductSales);
  TfmParRelProducts.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaParRelProductSalesEdit)),
    doNone,
    True,
    pcNormal,
    brtClient,
    pobtSaleCover,
    prpoProduct,
    prpkQuantity,
    prpspikNone,
    prpdikNone,
    False
  );
end;

procedure TfmMain.actPlannedFinancialStoreDealsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinPlannedStoreDeals);
  TfmPlannedStoreDeals.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaFinPlannedStoreDealsEdit)),
    doNone,
    True,
    pcFinancial);
end;

procedure TfmMain.actPlannedStoreDealsExecute(Sender: TObject);
var
  EditMode: TEditMode;
begin
  LoginContext.CheckUserActivity(uaPlannedStoreDeals);
  EditMode:= GetUserActivityEditMode(uaPlannedStoreDealsEdit);
  EditMode:= GetStartEditMode(EditMode);
  TfmPlannedStoreDeals.ShowForm(nil, nil, EditMode, doNone, True, pcNormal);
end;

procedure TfmMain.actPoolManagersExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmPoolManagers, uaPoolManagers);
end;

procedure TfmMain.actPoolManagersUpdate(Sender: TObject);
begin
  (Sender as TAction).Visible:= LoginContext.IsPowerUser;
end;

procedure TfmMain.actStoreDealsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaStoreDeals);
  TfmStoreDeals.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaStoreDealsEdit)),
    doNone,
    True,
    pcNormal);
end;

procedure TfmMain.actNewStoreRequestInExecute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  LoginContext.CheckUserActivity(uaNewStoreRequestIn);
  TfmStoreRequest.ShowForm(nil, nil, emInsert, ioIn);
end;

procedure TfmMain.actNewStoreRequestOutExecute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  LoginContext.CheckUserActivity(uaNewStoreRequestOut);
  TfmStoreRequest.ShowForm(nil, nil, emInsert, ioOut);
end;

procedure TfmMain.actStoreRequestsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaStoreRequests);
  TfmStoreRequests.ShowForm(nil, nil, GetStartEditMode(emEdit));
end;

procedure TfmMain.actSysRolesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmSysRoles, uaSysRoles, uaSysRolesEdit);
  SetCrossStateToolbars;
end;

procedure TfmMain.actNewDeficitCoverDecision2Execute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  LoginContext.CheckUserActivity(uaNewDeficitCoverDecisionEnvCover);
  TfmDeficitCoverDecision.ShowForm(nil, nil, emInsert, False, doNone, pobtEnvCover, pcNormal);
end;

procedure TfmMain.actNewDeficitCoverDecision3Execute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  LoginContext.CheckUserActivity(uaNewDeficitCoverDecisionOccCover);
  TfmDeficitCoverDecision.ShowForm(nil, nil, emInsert, False, doNone, pobtOccCover, pcNormal);
end;

procedure TfmMain.actNewDeficitCoverDecisionExecute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  LoginContext.CheckUserActivity(uaNewDeficitCoverDecision);
  TfmDeficitCoverDecision.ShowForm(nil, nil, emInsert, False, doNone, pobtSaleCover, pcNormal);
end;

procedure TfmMain.actDeficitCoverDecisions2Execute(Sender: TObject);
begin
  if LoginContext.HasUserActivity(uaDeficitCoverDecisionsEnvCoverEdit) then
    TfmDeficitCoverDecisions.ShowForm(nil, nil, GetStartEditMode(emEdit), doNone, pobtEnvCover, pcNormal)
  else
    begin
      LoginContext.CheckUserActivity(uaDeficitCoverDecisionsEnvCover);
      TfmDeficitCoverDecisions.ShowForm(nil, nil, emReadOnly, doNone, pobtEnvCover, pcNormal);
    end;
end;

procedure TfmMain.actDeficitCoverDecisions3Execute(Sender: TObject);
begin
  if LoginContext.HasUserActivity(uaDeficitCoverDecisionsOccCoverEdit) then
    TfmDeficitCoverDecisions.ShowForm(nil, nil, GetStartEditMode(emEdit), doNone, pobtOccCover, pcNormal)
  else
    begin
      LoginContext.CheckUserActivity(uaDeficitCoverDecisionsOccCover);
      TfmDeficitCoverDecisions.ShowForm(nil, nil, emReadOnly, doNone, pobtOccCover, pcNormal);
    end;
end;

procedure TfmMain.actDeficitCoverDecisionsExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaDeficitCoverDecisions);
  TfmDeficitCoverDecisions.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaDeficitCoverDecisionsEdit)),
    doNone,
    pobtSaleCover,
    pcNormal);
end;

procedure TfmMain.actSaleDecisionTypesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmSaleDecisionTypes, uaSaleDecisionTypes, uaSaleDecisionTypesEdit);
end;

procedure TfmMain.actSaleOrdersExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaSaleOrders);
  TfmSaleOrders.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaSaleOrdersEdit)),
    doNone,
    True,
    pcNormal);
end;

procedure TfmMain.actSaleOrdersGroupSaleOrdersExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmSaleOrdersGroupSaleOrders, uaGroupSaleRequests, uaEditGroupSaleRequest);
end;

procedure TfmMain.actNewProductionOrderExecute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  LoginContext.CheckUserActivity(uaNewProductionOrderBase + ActionProductionOrderBaseTypeCode(Sender));
  TfmProductionOrder.ShowForm(nil, nil, emInsert, doNone, ActionProductionOrderBaseTypeCode(Sender));
end;

procedure TfmMain.actNewProductionOrderUpdate(Sender: TObject);
begin
  SetProductionOrderActionCaptionAndHint(Sender, SNewProductionOrder);
end;

procedure TfmMain.actSpecificationsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaSpecifications);
  TfmSpecifications.ShowForm(nil, nil, GetStartEditMode(emEdit));
end;

procedure TfmMain.actSpecInvestedValueLevelsGraphExecute(Sender: TObject);
begin
  TfmSpecInvestedValueLevelsGraph.ShowForm;
end;

procedure TfmMain.actCurrenciesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmCurrencies, uaCurrencies, uaCurrenciesEdit);
end;

procedure TfmMain.actNewStoreDealInInternalExecute(Sender: TObject);
begin
  if (LoginContext.CurrentDeptCode = 0) then
    raise Exception.Create(SMissingCurrentDept);

  if not dmMain.SvrDeptsTree.IsDeptStore(LoginContext.CurrentDeptCode) then
    raise Exception.Create(SCurrentDeptIsNotStore);

  TfmStoreDealIn.ShowForm(nil, nil, emInsert, doNone, pcNormal);
end;

procedure TfmMain.actNewStoreDealOutInternalExecute(Sender: TObject);
begin
  if (LoginContext.CurrentDeptCode = 0) then
    raise Exception.Create(SMissingCurrentDept);

  if not dmMain.SvrDeptsTree.IsDeptStore(LoginContext.CurrentDeptCode) then
    raise Exception.Create(SCurrentDeptIsNotStore);

  TfmStoreDealOut.ShowForm(nil, nil, emInsert, doNone, pcNormal);
end;

procedure TfmMain.actProductQuantitiesTreeExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaProductQuantitiesTree);
  TfmProductQuantitiesTree.ShowForm(nil, 0, tnRootProductCode, tdsNone);
end;

procedure TfmMain.actProductSetsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmProductSets, uaProductSets, uaProductSetsEdit);
end;

procedure TfmMain.actConfigExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaConfig);
  if TfmConfig.ShowForm(nil, nil, GetStartEditMode(GetUserActivityEditMode(uaConfigEdit)), doNone, False) then
    begin
      dmMain.LoadLoginContext;
      SetDatabaseIcon;
      CapturePeekViewBitmap;
    end;
end;

procedure TfmMain.actAboutExecute(Sender: TObject);
begin
  TfmAbout.ShowForm;
end;

procedure TfmMain.actCompanyExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaCompany);
  TfmCompany.ShowForm(nil, nil, 0,
    GetStartEditMode(GetUserActivityEditMode(uaCompanyEdit)));
end;

procedure TfmMain.actCompanyTypesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmCompanyTypes, uaCompanyTypes, uaCompanyTypesEdit);
end;

procedure TfmMain.actComputerDefaultPrintersExecute(Sender: TObject);
begin
  LaunchEditDefaultPrinters(dplComputer);
end;

procedure TfmMain.actVIMQuantityExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaVIMQuantity);
  TfmVIMQuantity.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaVIMQuantityEdit)),
    True,
    0,
    pcNormal);
end;

procedure TfmMain.actNewGroupSaleExecute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  LoginContext.CheckUserActivity(uaNewGroupSaleRequest);
  TfmGroupSale.ShowForm(nil, nil, emInsert);
end;

procedure TfmMain.actQuantityDeficitExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaQuantityDeficit);
  TfmQuantityDeficit.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaQuantityDeficitEdit)),
    doNone,
    True,
    pcNormal);
end;

procedure TfmMain.actSaleQuantitiesExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaSaleQuantities);
  TfmSaleQuantities.ShowForm;
end;

procedure TfmMain.actSaleRequestGroupsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaSaleRequestGroups);
  TfmSaleRequestGroups.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaSaleRequestGroupsEdit)),
    doNone,
    True,
    pcNormal);
end;

procedure TfmMain.actNewSaleRequestGroupExecute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  LoginContext.CheckUserActivity(uaNewSaleRequestGroup);
  TfmSaleRequestGroup.ShowForm(nil, nil, emInsert, doNone, pcNormal);
end;

procedure TfmMain.actNewSpecificationExecute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  LoginContext.CheckUserActivity(uaNewSpecification);
  TfmSpecification.ShowForm(nil, nil, emInsert);
end;

procedure TfmMain.actClientPriceListExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaClientPriceList);
  TfmPriceList.ShowForm(
    nil,
    nil,
    GetStartEditMode(emEdit),
    doNone,
    True,
    pcNormal,
    brtClient,
    prpoPartner,
    nil);
end;

procedure TfmMain.actInviteUserExecute(Sender: TObject);
begin
  ExecURI(SInviteUserUrl);
end;

procedure TfmMain.actInvoiceNoGeneratorsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmInvoiceNoGenerators, uaInvoiceNoGenerators, uaInvoiceNoGeneratorsEdit);
end;

procedure TfmMain.actInvoicesOutExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaInvoicesOut);
  TfmInvoices.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaInvoiceOutEdit)),
    doNone,
    True,
    iioOut);
end;

procedure TfmMain.actOutFakturaExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaOutFaktura);
  TfmInvoice.ShowForm(nil, nil, emInsert, iiotOut, itFaktura);
end;

procedure TfmMain.actOutDebitnoIzvestieExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaOutDebitnoIzvestie);
  TfmInvoice.ShowForm(nil, nil, emInsert, iiotOut, itDebitnoIzvestie);
end;

procedure TfmMain.actOutKoregirashtProtokolExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaOutKoregirashtProtokol);
  TfmInvoice.ShowForm(nil, nil, emInsert, iiotOut, itKorigirashtProtokol);
end;

procedure TfmMain.actOutKreditnoIzvestieExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaOutKreditnoIzvestie);
  TfmInvoice.ShowForm(nil, nil, emInsert, iiotOut, itKreditnoIzvestie);
end;

procedure TfmMain.actOutOtchetZaProdajbiteExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaOutOtchetZaProdajbite);
  TfmInvoice.ShowForm(nil, nil, emInsert, iiotOut, itOtchetZaProdajbite);
end;

procedure TfmMain.actOutProtokolExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaOutProtokol);
  TfmInvoice.ShowForm(nil, nil, emInsert, iiotOut, itProtokol);
end;

procedure TfmMain.actDayOffsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmDaysOff, uaDaysOff, uaDaysOffEdit);
end;

procedure TfmMain.actSalesOverviewShpExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaSalesOverviewExp);
  TfmSaleExpGroups.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaSalesOverviewExpEdit)),
    True,
    pcNormal);
end;

procedure TfmMain.actDeliveries2Execute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaDeliveriesEnvCover);
  TfmDeliveries.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaDeliveriesEnvCoverEdit)),
    doNone,
    pobtEnvCover,
    True,
    False,
    pcNormal);
end;

procedure TfmMain.actDeliveries3Execute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaDeliveriesOccCover);
  TfmDeliveries.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaDeliveriesOccCoverEdit)),
    doNone,
    pobtOccCover,
    True,
    False,
    pcNormal);
end;

procedure TfmMain.actDeliveriesExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaDeliveries);
  TfmDeliveries.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaDeliveriesEdit)),
    doNone,
    pobtSaleCover,
    True,
    False,
    pcNormal);
end;

procedure TfmMain.actUncoveredPlannedFinancialStoreDealsExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinUncoveredPSDSingle);
  TfmUncoveredPSDSingle.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaFinUncoveredPSDSingleEdit)),
    doNone,
    True,
    pcFinancial);
end;

procedure TfmMain.actUncoveredPSDExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaUncoveredPSD);
  TfmUncoveredPSDSingle.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaUncoveredPSDEdit)),
    doNone,
    True,
    pcNormal);
end;

procedure TfmMain.actUncoveredModelsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmUncoveredModels, uaUncoveredModels, uaUncoveredModelsEdit);
end;

procedure TfmMain.ForceRefreshPendingMllChangeCounts;
begin
  FLatestMllcTimestamp:= 0;
  RefreshPendingMllChangeCounts;
end;

procedure TfmMain.RefreshExceptEventIndicationCounts;

  procedure UpdateIndicatorActions;
  var
    i: Integer;
  begin
    for i:= 0 to alActions.ActionCount - 1 do
      if AnsiStartsStr(IndicatorActionCategories[itExceptEvent], alActions.Actions[i].Category) or
         AnsiStartsStr(IndicatorActionCategories[itExceptEventTask], alActions.Actions[i].Category) then
        begin
          alActions.Actions[i].Update;
        end;  { if }
    Application.ProcessMessages;
  end;

  procedure ResetIndicationCounts;
  var
    IndicationType: TIndicationType;
    IndicationProcess: TIndicationProcess;
    IndicationOwner: TIndicationOwner;
    IndicationActivation: TIndicationActivation;
    IndicationLevel: TIndicationLevel;
  begin
    for IndicationType:= Low(TIndicationType) to High(TIndicationType) do
      for IndicationProcess:= Low(TIndicationProcess) to High(TIndicationProcess) do
        for IndicationOwner:= Low(TIndicationOwner) to High(TIndicationOwner) do
          for IndicationActivation:= Low(TIndicationActivation) to High(TIndicationActivation) do
            for IndicationLevel:= Low(TIndicationLevel) to High(TIndicationLevel) do
              FIndicationCounts[
                IndicationType,
                IndicationProcess,
                IndicationOwner,
                IndicationActivation,
                IndicationLevel]:= 0
  end;

  procedure FillExceptEventIndicationCounts;
  begin
    cdsExceptEventIndicatorCounts.Params.ParamByName('USER_CODE').AsInteger:= LoginContext.UserCode;
    cdsExceptEventIndicatorCounts.Open;
    try
      FIndicationCounts[itExceptEvent, ipControl, ioAll, iaNotActivated, ilPrimary]:= cdsExceptEventIndicatorCountsEE_NOT_ACTIVATED.AsInteger;
      FIndicationCounts[itExceptEvent, ipControl, ioAll, iaNotActivated, ilSecondary]:= cdsExceptEventIndicatorCountsEE_NOT_ACCEPTED.AsInteger;
      FIndicationCounts[itExceptEvent, ipControl, ioAll, iaActivated, ilPrimary]:= cdsExceptEventIndicatorCountsEE_ACTIVATED.AsInteger;

      FIndicationCounts[itExceptEvent, ipControl, ioUser, iaNotActivated, ilPrimary]:= cdsExceptEventIndicatorCountsEE_CTRL_EMP_NOT_ACTIVATED.AsInteger;
      FIndicationCounts[itExceptEvent, ipControl, ioUser, iaNotActivated, ilSecondary]:= cdsExceptEventIndicatorCountsEE_CTRL_EMP_NOT_ACCEPTED.AsInteger;
      FIndicationCounts[itExceptEvent, ipControl, ioUser, iaActivated, ilPrimary]:= cdsExceptEventIndicatorCountsEE_CTRL_EMP_ACTIVATED.AsInteger;

      FIndicationCounts[itExceptEvent, ipControl, ioDept, iaNotActivated, ilPrimary]:= cdsExceptEventIndicatorCountsEE_CTRL_DEPT_NOT_ACTIVATED.AsInteger;
      FIndicationCounts[itExceptEvent, ipControl, ioDept, iaNotActivated, ilSecondary]:= cdsExceptEventIndicatorCountsEE_CTRL_DEPT_NOT_ACCEPTED.AsInteger;
      FIndicationCounts[itExceptEvent, ipControl, ioDept, iaActivated, ilPrimary]:= cdsExceptEventIndicatorCountsEE_CTRL_DEPT_ACTIVATED.AsInteger;
    finally
      cdsExceptEventIndicatorCounts.Close;
    end;  { try }
  end;

  procedure FillExceptEventTaskIndicationCounts;
  begin
    cdsExceptEventTaskIndicatorCounts.Params.ParamByName('USER_CODE').AsInteger:= LoginContext.UserCode;
    cdsExceptEventTaskIndicatorCounts.Open;
    try
      FIndicationCounts[itExceptEventTask, ipRealization, ioUser, iaNotActivated, ilPrimary]:= cdsExceptEventTaskIndicatorCountsEET_REAL_EMP_NOT_ACTIVATED.AsInteger;
      FIndicationCounts[itExceptEventTask, ipRealization, ioUser, iaActivated, ilPrimary]:= cdsExceptEventTaskIndicatorCountsEET_REAL_EMP_ACTIVATED.AsInteger;
      FIndicationCounts[itExceptEventTask, ipRealization, ioUser, iaActivated, ilSecondary]:= cdsExceptEventTaskIndicatorCountsEET_REAL_EMP_PROBLEMS.AsInteger;

      FIndicationCounts[itExceptEventTask, ipRealization, ioDept, iaNotActivated, ilPrimary]:= cdsExceptEventTaskIndicatorCountsEET_REAL_DEPT_NOT_ACTIVATED.AsInteger;
      FIndicationCounts[itExceptEventTask, ipRealization, ioDept, iaActivated, ilPrimary]:= cdsExceptEventTaskIndicatorCountsEET_REAL_DEPT_ACTIVATED.AsInteger;
      FIndicationCounts[itExceptEventTask, ipRealization, ioDept, iaActivated, ilSecondary]:= cdsExceptEventTaskIndicatorCountsEET_REAL_DEPT_PROBLEMS.AsInteger;

      FIndicationCounts[itExceptEventTask, ipControl, ioAll, iaNotActivated, ilPrimary]:= cdsExceptEventTaskIndicatorCountsEET_CTRL_NOT_ACTIVATED.AsInteger;
      FIndicationCounts[itExceptEventTask, ipControl, ioAll, iaActivated, ilPrimary]:= cdsExceptEventTaskIndicatorCountsEET_CTRL_ACTIVATED.AsInteger;
      FIndicationCounts[itExceptEventTask, ipControl, ioAll, iaActivated, ilSecondary]:= cdsExceptEventTaskIndicatorCountsEET_CTRL_PROBLEMS.AsInteger;

      FIndicationCounts[itExceptEventTask, ipControl, ioUser, iaNotActivated, ilPrimary]:= cdsExceptEventTaskIndicatorCountsEET_CTRL_EMP_NOT_ACTIVATED.AsInteger;
      FIndicationCounts[itExceptEventTask, ipControl, ioUser, iaActivated, ilPrimary]:= cdsExceptEventTaskIndicatorCountsEET_CTRL_EMP_ACTIVATED.AsInteger;
      FIndicationCounts[itExceptEventTask, ipControl, ioUser, iaActivated, ilSecondary]:= cdsExceptEventTaskIndicatorCountsEET_CTRL_EMP_PROBLEMS.AsInteger;

      FIndicationCounts[itExceptEventTask, ipControl, ioDept, iaNotActivated, ilPrimary]:= cdsExceptEventTaskIndicatorCountsEET_CTRL_DEPT_NOT_ACTIVATED.AsInteger;
      FIndicationCounts[itExceptEventTask, ipControl, ioDept, iaActivated, ilPrimary]:= cdsExceptEventTaskIndicatorCountsEET_CTRL_DEPT_ACTIVATED.AsInteger;
      FIndicationCounts[itExceptEventTask, ipControl, ioDept, iaActivated, ilSecondary]:= cdsExceptEventTaskIndicatorCountsEET_CTRL_DEPT_PROBLEMS.AsInteger;
    finally
      cdsExceptEventTaskIndicatorCounts.Close;
    end;  { try }
  end;

  procedure SetRefreshing(AValue: Boolean);
  var
    OldRefreshing: Boolean;
  begin
    OldRefreshing:= FRefreshingExceptEvents;

    FRefreshingExceptEvents:= AValue;
    try
      UpdateIndicatorActions;
    except
      FRefreshingExceptEvents:= OldRefreshing;
      raise;
    end;  { try }
  end;

begin
  // narochno ne se prawi kursora na hourglass
  SetRefreshing(True);
  try
    ResetIndicationCounts;

    FillExceptEventTaskIndicationCounts;

    if HasAnyExceptEventIndicatorActivity then
      FillExceptEventIndicationCounts;
  finally
    SetRefreshing(False);
  end;  { try }
end;

procedure TfmMain.RefreshPendingMllChangeCounts;

  procedure ClearAllChanges;
  begin
    FillChar(FMllChangeCounts, SizeOf(FMllChangeCounts), 0);
  end;

  procedure UpdateMllChangeActions;
  var
    i: Integer;
  begin
    for i:= 0 to alActions.ActionCount - 1 do
      if AnsiStartsStr('MllChanges', alActions.Actions[i].Category) then
        alActions.Actions[i].Update;
  end;

var
  NewLatestMllcTimestamp: TDateTime;
  ProductionOrderBaseTypeCode: Integer;
begin
  // smiana na kursora s hourglass ne triabva da se pravi, zashtoto ako si v menu-to, kursora ostava hourglass nakraia
  FRefreshingMllChanges:= True;
  try
    UpdateMllChangeActions;

    NewLatestMllcTimestamp:= dmMain.SvrModelChanges.GetLatestMllcTimestamp;
    if (NewLatestMllcTimestamp > FLatestMllcTimestamp) then
      begin
        ClearAllChanges;

        cdsPendingChangeCounts.Params.ParamByName('USER_CODE').AsInteger:= LoginContext.UserCode;
        cdsPendingChangeCounts.Open;
        try
          while not cdsPendingChangeCounts.Eof do
            begin
              ProductionOrderBaseTypeCode:= cdsPendingChangeCountsPROD_ORDER_BASE_TYPE_CODE.AsInteger;

              FMllChangeCounts[mcsRequestedChange, ProductionOrderBaseTypeCode]:= cdsPendingChangeCountsREQUESTED_CHANGE_COUNT.AsInteger;
              FMllChangeCounts[mcsRejectedChange, ProductionOrderBaseTypeCode]:= cdsPendingChangeCountsREJECTED_CHANGE_COUNT.AsInteger;
              FMllChangeCounts[mcsRequestedMyChange, ProductionOrderBaseTypeCode]:= cdsPendingChangeCountsREQUESTED_MY_CHANGE_COUNT.AsInteger;
              FMllChangeCounts[mcsRejectedMyChange, ProductionOrderBaseTypeCode]:= cdsPendingChangeCountsREJECTED_MY_CHANGE_COUNT.AsInteger;
              FMllChangeCounts[mcsMyMlRequestedChange, ProductionOrderBaseTypeCode]:= cdsPendingChangeCountsMY_ML_REQUESTED_CHANGE_COUNT.AsInteger;
              FMllChangeCounts[mcsMyMlRejectedChange, ProductionOrderBaseTypeCode]:= cdsPendingChangeCountsMY_ML_REJECTED_CHANGE_COUNT.AsInteger;
              cdsPendingChangeCounts.Next;
            end;  { while }

          FMllChangeCounts[mcsRequestedChange, 0]:= SumInt(FMllChangeCounts[mcsRequestedChange]);
          FMllChangeCounts[mcsRejectedChange, 0]:= SumInt(FMllChangeCounts[mcsRejectedChange]);
          FMllChangeCounts[mcsRequestedMyChange, 0]:= SumInt(FMllChangeCounts[mcsRequestedMyChange]);
          FMllChangeCounts[mcsRejectedMyChange, 0]:= SumInt(FMllChangeCounts[mcsRejectedMyChange]);
          FMllChangeCounts[mcsMyMlRequestedChange, 0]:= SumInt(FMllChangeCounts[mcsMyMlRequestedChange]);
          FMllChangeCounts[mcsMyMlRejectedChange, 0]:= SumInt(FMllChangeCounts[mcsMyMlRejectedChange]);

          FLatestMllcTimestamp:= NewLatestMllcTimestamp;
        finally
          cdsPendingChangeCounts.Close;
        end;  { try }
      end;  { if }
  finally
    FRefreshingMllChanges:= False;
    UpdateMllChangeActions;
  end;  { try }
end;

procedure TfmMain.ResetToolbarsClick(Sender: TObject);
begin
  dmMain.SvrLogin.ResetUserToolbars(LoginContext.UserCode, ProcessViewToCrossStateCode(ProcessView));
  LoadUserToolbars;
  CapturePeekViewBitmap;
end;

procedure TfmMain.ShowXModels(const AProductionOrderBaseTypeCode: Integer; const AModelChangeStatus: TModelChangeStatus);
begin
  LoginContext.CheckUserActivity(uaXModelsBase + AProductionOrderBaseTypeCode);

  cdsXModelsParams.CreateDataSet;
  try
    cdsXModelsParams.Insert;
    try
      if (AModelChangeStatus in [mcsMyMlRequestedChange, mcsMyMlRejectedChange]) then
        cdsXModelsParamsENGINEER_EMPLOYEE_CODE.Value:= LoginContext.UserCode
      else
        cdsXModelsParamsENGINEER_EMPLOYEE_CODE.Clear;

      cdsXModelsParamsHAS_REQUESTED_CHANGES.AsBoolean:= True;
      cdsXModelsParamsHAS_NOT_REQUESTED_CHANGES.AsBoolean:= not (AModelChangeStatus in [mcsRequestedChange, mcsMyMlRequestedChange]);
      cdsXModelsParamsHAS_REQUESTED_MY_CHANGES.AsBoolean:= True;
      cdsXModelsParamsHAS_NOT_REQUESTED_MY_CHANGES.AsBoolean:= (AModelChangeStatus <> mcsRequestedMyChange);
      cdsXModelsParamsHAS_REJECTED_CHANGES.AsBoolean:= True;
      cdsXModelsParamsHAS_NOT_REJECTED_CHANGES.AsBoolean:= not (AModelChangeStatus in [mcsRejectedChange, mcsMyMlRejectedChange]);
      cdsXModelsParamsHAS_REJECTED_MY_CHANGES.AsBoolean:= True;
      cdsXModelsParamsHAS_NOT_REJECTED_MY_CHANGES.AsBoolean:= (AModelChangeStatus <> mcsRejectedMyChange);

      cdsXModelsParams.Post;
    except
      cdsXModelsParams.Cancel;
      raise;
    end;  { try }

    TfmXModels.ShowForm(nil, cdsXModelsParams, GetStartEditMode(emEdit), False, AProductionOrderBaseTypeCode);
  finally
    cdsXModelsParams.Close;
  end;  { try }
end;

procedure TfmMain.MllChangeActionUpdate(
  AAction: TAction;
  AModelChangeStatus: TModelChangeStatus;
  AProductionOrderBaseTypeCode: Integer);

  function ProductionOrderBaseTypeModelName(AProductionOrderBaseTypeCode: Integer): string;
  begin
    if (AProductionOrderBaseTypeCode = 0) then
      Result:= SModels
    else
      Result:=
        Format(
          SModelsOfBaseType,
          [ProductionOrderBaseTypes[AProductionOrderBaseTypeCode].AbbrevPlural]);
  end;
var
  s: string;
begin
  with AAction do
    begin
      Visible:= LoginContext.HasUserActivity(ModelChangeStatusVisibleUserActivity[AModelChangeStatus]);
      Enabled:= (FMllChangeCounts[AModelChangeStatus, AProductionOrderBaseTypeCode] > 0);

      ImageIndex:=
        MllChangeImageIndexes[
          FRefreshingMllChanges,
          Enabled,
          ModelChangeStatusRequestOrReject[AModelChangeStatus]];

      s:=
        Format(
          ModelChangeCaptionFormats[AModelChangeStatus],
          [ FMllChangeCounts[AModelChangeStatus, AProductionOrderBaseTypeCode],
            ProductionOrderBaseTypeModelName(AProductionOrderBaseTypeCode)
          ]);

      if (AProductionOrderBaseTypeCode = 0) then
        Caption:= s
      else
        Caption:= s + cDialogSuffix;

      Hint:= s;
    end;  { with }
end;

procedure TfmMain.tmrMllChangesTimer(Sender: TObject);
begin
  dmMain.TempIgnoreConnectionError/
    procedure begin
      RefreshPendingMllChangeCounts;
    end;
end;

procedure TfmMain.tmrClockTimer(Sender: TObject);
begin
  if dmMain.LoggedIn then
    begin
      lblTodayDateWeekFormat.Caption:= JclDateTime.FormatDateTime(dmMain.GetWeekDateFormat, ContextDate);
      lblTodayDate.Caption:= JclDateTime.FormatDateTime(dmMain.GetDateFormat, ContextDate);
      lblTime.Caption:= FormatDateTime('hh:nn', ContextTime);
    end
  else
    begin
      lblTodayDateWeekFormat.Caption:= 'xx\x\xxxx';
      lblTodayDate.Caption:= 'xx-xx-xxxx';
      lblTime.Caption:= 'xx:xx';
    end;

  pnlTodayDateWeekFormat.Width:= lblTodayDateWeekFormat.Width;
end;

procedure TfmMain.tmrDisconnectedTimer(Sender: TObject);
begin
//  pnlDisconnected.Visible:=
//    dmMain.conDatasnap.InactivePingFailed;

  if (PingInfo.InactivePingFailed <> FOldInactivePingFailed) then
    begin
      FOldInactivePingFailed:= PingInfo.InactivePingFailed;
      stbMain.Invalidate;
    end;
end;

procedure TfmMain.tmrExceptEventIndicatorsTimer(Sender: TObject);
begin
  dmMain.TempIgnoreConnectionError/
    procedure begin
      RefreshExceptEventIndicationCounts;
    end;
end;

procedure TfmMain.ToolbarItemClick(Sender: TObject);

  procedure SetToolbarMenuItemChecked(AMenu: TMenuITem;
    AToolbarCode: Integer; AChecked: Boolean);
  var
    i: Integer;
  begin
    for i:= 0 to AMenu.Count - 1 do
      if (AMenu.Items[i].Tag = AToolbarCode) then
        AMenu.Items[i].Checked:= AChecked;
  end;  { SetToolbarMenuItemChecked }

var
  mi: TMenuItem;
  pnl: TPanel;
  NewChecked: Boolean;
begin
  mi:= Sender as TMenuItem;
  Assert(mi.Tag > 0);

  pnl:= FindToolbarPanel(mi.Tag);
  if not Assigned(pnl) then
    Exit;

  if mi.Checked then
    begin
      cdsUserToolbars.First;
      if cdsUserToolbars.Locate('TOOLBAR_CODE', mi.Tag, []) then
        begin
          cdsUserToolbars.Delete;
          cdsUserToolbars.ApplyUpdates(0);
        end;
    end
  else
    begin
      cdsUserToolbars.Append;
      try
        cdsUserToolbarsEMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
        cdsUserToolbarsCROSS_STATE_CODE.AsInteger:= ProcessViewToCrossStateCode(PRocessView);
        cdsUserToolbarsTOOLBAR_CODE.AsInteger:= mi.Tag;
      except
        cdsUserToolbars.Cancel;
        raise;
      end;
      cdsUserToolbars.ApplyUpdates(0);
    end;  { if }

  NewChecked:= not mi.Checked;

  SetToolbarMenuItemChecked(pmToolbars.Items, mi.Tag, NewChecked);
  SetToolbarMenuItemChecked(miToolbarMenu, mi.Tag, NewChecked);

  pnl.Visible:= NewChecked;

  CapturePeekViewBitmap;
end;

procedure TfmMain.WMDwmSendIconicThumbnail(var Message: TMessage);
const
  UserPicturePreviewSize = 50;
  UserFullNameHeight = 16;
  DatabaseIconMargin = 5;
var
  bmp: TBitmap;
  hbm: HBITMAP;
  R: TRect;
  fm: TForm;
  m: Extended;
  UserPictureMaxSize: Integer;
  UserPictureWidth: Integer;
  UserPictureHeight: Integer;
  x: Integer;
  DatabaseIconHeight: Integer;
begin
  Message.Result:= Ord(False);

  if Visible then
    fm:= Self
  else
    fm:= Screen.ActiveForm;

  if not Assigned(fm) then
    Exit;

  if Assigned(FPeekViewBitmap) then
    begin
      bmp:= TBitmap.Create;
      bmp.Assign(FPeekViewBitmap);
    end
  else
    bmp:= CaptureWinControlImage(fm);
  try
    m:= Min(1, Min(Message.LParamHi / bmp.Width, Message.LParamLo / bmp.Height));

    R.Left:= 0;
    R.Top:= 0;
    R.Width:= Min(Message.LParamHi, Trunc(SimpleRoundTo(bmp.Width * m)));
    R.Height:= Min(Message.LParamLo, Trunc(SimpleRoundTo(bmp.Height * m)));

    bmp.Canvas.StretchDraw(R, bmp);
    bmp.SetSize(R.Width, R.Height);

    if Assigned(dmMain.DatabaseIcon) then
      DatabaseIconHeight:= dmMain.DatabaseIcon.Height
    else
      DatabaseIconHeight:= 0;

    UserPictureMaxSize:=
      Min(
        UserPicturePreviewSize,
        bmp.Height -
          IfThen(dmMain.LoggedIn, UserFullNameHeight) -  // bottom user full name height
          (DatabaseIconHeight + DatabaseIconMargin)
      );

    // draw user picture
    if Assigned(FUserPicture) and Assigned(FUserPicture.Graphic) then
      begin
        R:= bmp.Canvas.ClipRect;

        UserPictureWidth:= Trunc(SimpleRoundTo(UserPictureMaxSize * FUserPicture.Graphic.Width / Max(FUserPicture.Graphic.Width, FUserPicture.Graphic.Height)));
        UserPictureHeight:= Trunc(SimpleRoundTo(UserPictureMaxSize * FUserPicture.Graphic.Height / Max(FUserPicture.Graphic.Width, FUserPicture.Graphic.Height)));

        R.Left:= R.Right - UserPictureWidth + 1;
        R.Bottom:= UserPictureHeight - 1;

        bmp.Canvas.StretchDraw(R, FUserPicture.Graphic);
      end
    else
      begin
        UserPictureWidth:= 0;
        UserPictureHeight:= 0;
      end;

    // draw database icon
    if Assigned(dmMain.DatabaseIcon) then
      begin
        x:= dmMain.DatabaseIcon.Width + Max(2, (UserPictureWidth - dmMain.DatabaseIcon.Width) div 2);
        bmp.Canvas.Draw(bmp.Canvas.ClipRect.Right - x + 1, UserPictureHeight + DatabaseIconMargin, dmMain.DatabaseIcon);
      end;

    // draw user full name
    if dmMain.LoggedIn then
      begin
        R:= bmp.Canvas.ClipRect;
        R.Top:= R.Bottom - UserFullNameHeight;

        bmp.Canvas.Font.Color:= clWindowText;
        bmp.Canvas.Brush.Color:= clBtnFace;

        bmp.Canvas.TextRect(R, R.Left + 4, R.Top, LoginContext.UserFullName);
      end;

    bmp.PixelFormat:= pf32bit;

    hbm:= bmp.ReleaseHandle;
  finally
    FreeAndNil(bmp);
  end;

  if (hbm <> 0) then
    begin
      DwmSetIconicThumbnail(Application.Handle, hbm, 0);
      DeleteObject(hbm);
    end;

  Message.Result:= Ord(True);
end;

procedure TfmMain.actRefreshExceptEventCountsExecute(Sender: TObject);
begin
  RefreshExceptEventIndicationCounts;

  // reset na timer-a
  tmrExceptEventIndicators.Enabled:= False;
  tmrExceptEventIndicators.Enabled:= True;
end;

procedure TfmMain.actRefreshExceptEventCountsUpdate(Sender: TObject);
begin
  (Sender as TAction).ImageIndex:= RefreshImageIndexes[FRefreshingExceptEvents];
end;

procedure TfmMain.actRefreshPendingMllChangesExecute(Sender: TObject);
begin
  RefreshPendingMllChangeCounts;

  // reset na timer-a
  tmrMllChanges.Enabled:= False;
  tmrMllChanges.Enabled:= True;
end;

procedure TfmMain.actRefreshPendingMllChangesUpdate(Sender: TObject);
begin
  (Sender as TAction).ImageIndex:= RefreshImageIndexes[FRefreshingMllChanges];
end;

procedure TfmMain.actMllcRequestedChangesExecute(Sender: TObject);
begin
  if ((Sender as TAction).ActionComponent is TControl) then
    PopupMenuFromButton(((Sender as TAction).ActionComponent as TControl), pmMllcRequestedChanges);
end;

procedure TfmMain.actMllcRequestedChangesUpdate(Sender: TObject);
begin
  MllChangeActionUpdate(
    (Sender as TAction),
    mcsRequestedChange,
    0);
end;

procedure TfmMain.actMllcRejectedChangesExecute(Sender: TObject);
begin
  if ((Sender as TAction).ActionComponent is TControl) then
    PopupMenuFromButton(((Sender as TAction).ActionComponent as TControl), pmMllcRejectedChanges);
end;

procedure TfmMain.actMllcRejectedChangesUpdate(Sender: TObject);
begin
  MllChangeActionUpdate(
    (Sender as TAction),
    mcsRejectedChange,
    0);
end;

procedure TfmMain.actMllcRequestedMyChangesExecute(Sender: TObject);
begin
  if ((Sender as TAction).ActionComponent is TControl) then
    PopupMenuFromButton(((Sender as TAction).ActionComponent as TControl), pmMllcRequestedMyChanges);
end;

procedure TfmMain.actMllcRequestedMyChangesUpdate(Sender: TObject);
begin
  MllChangeActionUpdate(
    (Sender as TAction),
    mcsRequestedMyChange,
    0);
end;

procedure TfmMain.actMllcRejectedMyChangesExecute(Sender: TObject);
begin
  if ((Sender as TAction).ActionComponent is TControl) then
    PopupMenuFromButton(((Sender as TAction).ActionComponent as TControl), pmMllcRejectedMyChanges);
end;

procedure TfmMain.actMllcRejectedMyChangesUpdate(Sender: TObject);
begin
  MllChangeActionUpdate(
    (Sender as TAction),
    mcsRejectedMyChange,
    0);
end;

procedure TfmMain.actMllcMyMlRequestedChangesExecute(Sender: TObject);
begin
  if ((Sender as TAction).ActionComponent is TControl) then
    PopupMenuFromButton(((Sender as TAction).ActionComponent as TControl), pmMllcMyMlRequestedChanges);
end;

procedure TfmMain.actMllcMyMlRequestedChangesUpdate(Sender: TObject);
begin
  MllChangeActionUpdate(
    (Sender as TAction),
    mcsMyMlRequestedChange,
    0);
end;

procedure TfmMain.actMllcMyMlRejectedChangesExecute(Sender: TObject);
begin
  if ((Sender as TAction).ActionComponent is TControl) then
    PopupMenuFromButton(((Sender as TAction).ActionComponent as TControl), pmMllcMyMlRejectedChanges);
end;

procedure TfmMain.actMllcMyMlRejectedChangesUpdate(Sender: TObject);
begin
  MllChangeActionUpdate(
    (Sender as TAction),
    mcsMyMlRejectedChange,
    0);
end;

procedure TfmMain.actModelMovementsOverviewExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaModelMovementsBase + ActionProductionOrderBaseTypeCode(Sender));
  TfmModelMovementsOverview.ShowForm(
    nil,
    nil,
    GetStartEditMode(emEdit),
    doNone,
    True,
    mdAll,
    ActionProductionOrderBaseTypeCode(Sender)
  );
end;

procedure TfmMain.actModelMovementsOverviewUpdate(Sender: TObject);
begin
  SetProductionOrderActionCaptionAndHint(Sender, SModelMovementsOverview);
end;

procedure TfmMain.CheckAllTodayCurrencyRatesEntered;
begin
  if not dmMain.SvrCommon.AreAllTodayCurrencyRatesEntered then
    begin
      ShowMessageEx(SCurrencyRatesNotEntered);
      try
        actCurrencyRates.Execute;
      except
        on E: Exception do
          ShowExceptionMessage(E.Message, E.ClassName);
      end;  { try }

      if not dmMain.SvrCommon.AreAllTodayCurrencyRatesEntered then
        PostMessage(Handle, WM_CLOSE, 0, 0);
    end;  { if }
end;

procedure TfmMain.FormShow(Sender: TObject);
begin
  if HasAnyChangeIndicatorActivity then
    ForceRefreshPendingMllChangeCounts;

  if HasAnyExceptEventIndicatorActivity or HasAnyExceptEventTaskRealActivity then
    RefreshExceptEventIndicationCounts;

  CheckAllTodayCurrencyRatesEntered;
  frTimeline.Initialize;

  actWeekDateFormat.Checked:= LoginContext.WeekDateFormatting;

  case IntegerToDateIntervalFormat(LoginContext.DateIntervalFormatCode) of
    didsBeginDateEndDate:
      actBeginEndDateIntervalFormat.Checked:= True;
    didsBeginDateDays:
      actBeginDaysDateIntervalFormat.Checked:= True;
    didsBeginDateWorkdays:
      actBeginWorkdaysDateIntervalFormat.Checked:= True;
  else
    raise Exception.Create('Unknown date interval format');
  end;  { case }

  dmMain.DateIntervalFormat:= IntegerToDateIntervalFormat(LoginContext.DateIntervalFormatCode);
  if LoginContext.WeekDateFormatting then
    dmMain.DateFormat:= diWeek
  else
    dmMain.DateFormat:= diMonth;

  LoadProductionOrderBaseTypes;

  FdmDocClient:= TdmDocClient.Create(nil);
  GenerateCaptionMenu;
  LoadCustomMenuItems;

  cdsToolbars.Open;
  LoadUserToolbars;

  SetDatabaseIcon;

  SetActiveWindow(Application.Handle);
end;

procedure TfmMain.actConfigUserExecute(Sender: TObject);
begin
  if TfmConfigUser.ShowForm(nil, LoginContext.UserCode, GetStartEditMode(emEdit), (Sender as TAction).Tag = 1) then
    begin
      dmMain.LoadLoginContext;
      dmMain.LoadUserPicture;
      FUserPictureSet:= False;
      CapturePeekViewBitmap;
    end;
end;

procedure TfmMain.actContactTypesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmContactTypes, uaContactTypes, uaContactTypesEdit);
end;

procedure TfmMain.actUnfinishedMfgExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmUnfinishedMfg, uaUnfinishedMfg);
end;

procedure TfmMain.GenerateCaptionMenu;

  procedure ClearCaptionMenu;
  var
    i: Integer;
  begin
    i:= 0;
    while (i < pmCaption.Items.Count) do
      if (pmCaption.Items[i].Tag = 1) then
        pmCaption.Items[i].Free
      else
        Inc(i);
  end;

  procedure CopyMenuItemsIntoCaptionMenuItem(ASource, ADest: TMenuItem);
  const
    SCaption = 'Caption';
  var
    i: Integer;
    mi: TMenuItem;
    NewName: string;
  begin
    for i:= 0 to ASource.Count - 1 do
      if (ASource[i].Tag = 0) and not (ASource[i] is TDocMenuItem) then
        begin
          mi:= TMenuItemClass(ASource[i].ClassType).Create(Self);
          try
            if (ASource[i].Name <> '') then
              begin
                NewName:= ASource[i].Name;
                if StartsStr('mi', NewName) or StartsStr('mi', NewName) then
                  Insert(SCaption, NewName, 3)
                else
                  NewName:= SCaption + NewName;

                mi.Name:= NewName;
              end;

            mi.AssignMenuItem(ASource[i]);
            mi.Tag:= 1;

            ADest.Add(mi);
            CopyMenuItemsIntoCaptionMenuItem(ASource[i], mi);
          except
            FreeAndNil(mi);
            raise;
          end;  { try }
        end;  { if }
  end;

begin
  FmiCaptionSalesMenu:= nil;
  FmiCaptionObjectsMenu:= nil;
  FmiCaptionProductionMenu:= nil;
  FmiCaptionDeliveriesMenu:= nil;
  FmiCaptionFinancesMenu:= nil;
  FmiCaptionSubjectsMenu:= nil;
  FmiCaptionSalesInvoicesSubMenu:= nil;

  ClearCaptionMenu;
  CopyMenuItemsIntoCaptionMenuItem(mmMainMenu.Items, pmCaption.Items);

  FmiCaptionSalesMenu:= FindComponent('miCaptionSalesMenu') as TMenuItem;
  FmiCaptionObjectsMenu:= FindComponent('miCaptionObjectsMenu') as TMenuItem;
  FmiCaptionProductionMenu:= FindComponent('miCaptionProductionMenu') as TMenuItem;
  FmiCaptionDeliveriesMenu:= FindComponent('miCaptionDeliveriesMenu') as TMenuItem;
  FmiCaptionFinancesMenu:= FindComponent('miCaptionFinancesMenu') as TMenuItem;
  FmiCaptionSubjectsMenu:= FindComponent('miCaptionSubjectsMenu') as TMenuItem;

  FmiCaptionSalesInvoicesSubMenu:= FindComponent('miCaptionSalesInvoicesSubMenu') as TMenuItem;
end;

procedure TfmMain.actDocItemTypesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmDocItemTypes, uaDocItemTypes, uaDocItemTypesEdit);
end;

procedure TfmMain.actUserDefaultPrintersExecute(Sender: TObject);
begin
  LaunchEditDefaultPrinters(dplUser);
end;

procedure TfmMain.actUserGroupsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmUserGroups, uaUserGroups, uaUserGroupsEdit);
  SetCrossStateToolbars;
end;

procedure TfmMain.actUserGroupsUpdate(Sender: TObject);
begin
  (Sender as TAction).Visible:= LoginContext.IsOldActivitySystemVisible;
end;

procedure TfmMain.actUserIdentityProfileExecute(Sender: TObject);
begin
  ExecURI(SUserIdentityProfileUrl);
end;

procedure TfmMain.actProfessionsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmProfessionsTree, uaProfessions, uaProfessionsEdit);
end;

procedure TfmMain.actTeamsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmTeams, uaTeams, uaTeamsEdit);
end;

procedure TfmMain.actTestQueriesExecute(Sender: TObject);
begin
  TfmTestQueries.ShowForm(nil, nil, emReadOnly, doNone, False);
end;

procedure TfmMain.actMonthTeamsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmMonthTeams, uaMonthTeams, uaMonthTeamsEdit);
end;

procedure TfmMain.actSalesProcessViewExecute(Sender: TObject);
begin
  ProcessView:= pvSales;
end;

procedure TfmMain.actDeliveriesProcessViewExecute(Sender: TObject);
begin
  ProcessView:= pvDeliveries;
end;

procedure TfmMain.actProductionProcessViewExecute(Sender: TObject);
begin
  ProcessView:= pvProduction;
end;

procedure TfmMain.actEnvironmentProcessViewExecute(Sender: TObject);
begin
  ProcessView:= pvEnvironment;
end;

procedure TfmMain.actFinanceProcessViewExecute(Sender: TObject);
begin
  ProcessView:= pvFinance;
end;

procedure TfmMain.actFinancialClassesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmFinClassesTree, uaFinClasses, uaFinClassesEdit);
end;

procedure TfmMain.actFinancialCommonGroupsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinancialCommonGroups);
  TfmCommonGroups.ShowForm(nil, nil, GetStartEditMode(GetUserActivityEditMode(uaFinancialCommonGroupsEdit)), doNone, True, nil, pcFinancial);
end;

procedure TfmMain.actFinancialDeficitCoverDecisionsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinDeficitCoverDecisions);
  TfmDeficitCoverDecisions.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaFinDeficitCoverDecisionsEdit)),
    doNone,
    pobtSaleCover,
    pcFinancial);
end;

procedure TfmMain.actFinancialDeliveriesExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinDeliveries);
  TfmDeliveries.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaFinDeliveriesEdit)),
    doNone,
    pobtSaleCover,
    True,
    False,
    pcFinancial);
end;

procedure TfmMain.actFinancialDeliveryDialogsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinDeliveryDialogs);
  TfmDeliveryDialogs.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaFinDeliveryDialogsEdit)),
    doNone,
    pobtSaleCover,
    pcFinancial);
end;

procedure TfmMain.actFinancialEstPricesCompareGraphDeliveriesExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinEstPricesCompareGraph);
  TfmEstPricesCompareGraph.ShowForm(nil, nil, emReadOnly, doNone, True, pcFinancial, brtVendor, pobtSaleCover);
end;

procedure TfmMain.actFinancialEstPricesCompareGraphSalesExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinVIMValueGained);
  TfmEstPricesCompareGraph.ShowForm(nil, nil, emReadOnly, doNone, True, pcFinancial, brtClient, pobtSaleCover);
end;

procedure TfmMain.actFinancialEstQuantitiesGraphExecute(Sender: TObject);
begin
//  LoginContext.CheckUserActivity(uaTempFinanceFeel);
//  TfmEstQuantitiesGraph.ShowForm(nil, nil, emReadOnly, doNone, True, pcFinancial);
end;

procedure TfmMain.actFinancialEstQuantitiesTableExecute(Sender: TObject);
begin
//  LoginContext.CheckUserActivity(uaTempFinanceFeel);
//  TfmEstQuantitiesTable.ShowForm(nil, nil, emReadOnly, doNone, True, pcFinancial);
end;

procedure TfmMain.actFinancialMeasuresExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinMeasures);
  TfmMeasures.ShowForm(nil, nil, GetStartEditMode(GetUserActivityEditMode(uaFinMeasuresEdit)), doNone, True, pcFinancial);
end;

procedure TfmMain.actFinancialNomsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinNoms);
  TfmNoms.ShowForm(nil, nil, GetStartEditMode(GetUserActivityEditMode(uaFinNomsEdit)), doNone, True, pcFinancial);
end;

procedure TfmMain.actFinancialOrdersExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinancialOrders);
  TfmFinOrders.ShowForm(nil, nil, GetStartEditMode(emEdit));
end;

procedure TfmMain.actFinancialParRelProductsDeliveriesByPartnerExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinParRelProductDeliveries);
  TfmParRelProducts.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaFinParRelProductDeliveriesEdit)),
    doNone,
    True,
    pcFinancial,
    brtVendor,
    pobtSaleCover,
    prpoPartner,
    prpkQuantity,
    prpspikNone,
    prpdikNone,
    False
  );
end;

procedure TfmMain.actFinancialParRelProductsDeliveriesByProductExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinParRelProductDeliveries);
  TfmParRelProducts.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaFinParRelProductDeliveriesEdit)),
    doNone,
    True,
    pcFinancial,
    brtVendor,
    pobtSaleCover,
    prpoProduct,
    prpkQuantity,
    prpspikNone,
    prpdikNone,
    False
  );
end;

procedure TfmMain.actFinancialParRelProductsSalesByPartnerExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinParRelProductSales);
  TfmParRelProducts.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaFinParRelProductSalesEdit)),
    doNone,
    True,
    pcFinancial,
    brtClient,
    pobtSaleCover,
    prpoPartner,
    prpkQuantity,
    prpspikNone,
    prpdikNone,
    False
  );
end;

procedure TfmMain.actFinancialParRelProductsSalesByProductExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinParRelProductSales);
  TfmParRelProducts.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaFinParRelProductSalesEdit)),
    doNone,
    True,
    pcFinancial,
    brtClient,
    pobtSaleCover,
    prpoProduct,
    prpkQuantity,
    prpspikNone,
    prpdikNone,
    False
  );
end;

procedure TfmMain.actFinancialProductQuantitiesTreeExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinProductQuantitiesTree);
  TfmProductQuantitiesTree.ShowForm(nil, 0, tnRootProductCode, tdsNone, pcFinancial);
end;

procedure TfmMain.actFinancialProductsExecute(Sender: TObject);
var
  em: TEditMode;
begin
  LoginContext.CheckUserActivity(uaFinancialProducts);

  if LoginContext.HasUserActivity(uaFinancialProductsEdit) or
     LoginContext.HasUserActivity(uaFinancialProductPeriodsEdit) then
    em:= emEdit
  else
    em:= emReadOnly;

  TfmProductsTreeEditor.ShowForm(nil, 0, tnRootProductCode, GetStartEditMode(em), tdsNone, pcFinancial);
end;

procedure TfmMain.actFinancialQuantityDeficitExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinQuantityDeficit);
  TfmQuantityDeficit.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaFinQuantityDeficitEdit)),
    doNone,
    True,
    pcFinancial);
end;

procedure TfmMain.actFinancialRelationsGraphExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinancialRelationsGraphFilter);
  TfmFinancialRelationsGraph.ShowForm;
end;

procedure TfmMain.actFinancialRelationsTableExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinancialRelationsTableFilter);
  TfmFinancialRelationsTable.ShowForm;
end;

procedure TfmMain.actFinancialSaleOrdersExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinSaleOrders);
  TfmSaleOrders.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaFinSaleOrdersEdit)),
    doNone,
    True,
    pcFinancial);
end;

procedure TfmMain.actFinancialSaleRequestGroupsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinSaleRequestGroups);
  TfmSaleRequestGroups.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaFinSaleRequestGroupsEdit)),
    doNone,
    True,
    pcFinancial);
end;

procedure TfmMain.actFinancialSalesOverviewShpExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinSalesOverviewExp);
  TfmSaleExpGroups.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaFinSalesOverviewExpEdit)),
    True,
    pcFinancial);
end;

procedure TfmMain.actFinancialStoreDealsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinStoreDeals);
  TfmStoreDeals.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaFinStoreDealsEdit)),
    doNone,
    True,
    pcFinancial);
end;

procedure TfmMain.actFinancialStoreQuantitiesExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinStoreQuantities);
  TfmStoreQuantities.ShowForm(
    nil,
    nil,
    emEdit,
    doNone,
    True,
    pcFinancial
  );
end;

procedure TfmMain.actFinancialStoreRequestsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinStoreRequests);
  TfmStoreRequests.ShowForm(nil, nil, GetStartEditMode(emEdit), doNone, True, pcFinancial);
end;

procedure TfmMain.actFinancialVIMQuantityExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaFinVIMQuantity);
  TfmVIMQuantity.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaFinVIMQuantityEdit)),
    True,
    0,
    pcFinancial);
end;

procedure TfmMain.actFinModelLineReasonsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmFinModelLineReasons, uaFinModelLineReasons, uaFinModelLineReasonsEdit);
end;

procedure TfmMain.actNoProcessViewExecute(Sender: TObject);
begin
  ProcessView:= pvNone;
end;

procedure TfmMain.pnlMainResize(Sender: TObject);
begin
  pnlOutOfProcessView.Top:=
    (pnlMain.Height - pnlOutOfProcessView.Height) div 2;
  pnlOutOfProcessView.Left:=
    (pnlMain.Width - pnlOutOfProcessView.Width) div 2;

  pnlInProcessView.Top:=
    (pnlMain.Height - pnlInProcessView.Height) - 2;
  pnlInProcessView.Left:=
    (pnlMain.Width - pnlInProcessView.Width - pnlUserInfo.Width) - 2;

  pnlDisconnected.Top:=
    (pnlMain.Height - pnlDisconnected.Height) - 2;
  pnlDisconnected.Left:= 2;

  CapturePeekViewBitmap;
end;

procedure TfmMain.ProcessLabelMouseEnter(Sender: TObject);
begin
  with (Sender as TLabel).Font do
    begin
      Color:= clGray;
      Style:= Style + [fsBold];
    end;
end;

procedure TfmMain.ProcessLabelMouseLeave(Sender: TObject);
begin
  with (Sender as TLabel).Font do
    begin
      Color:= clWindowText;
      Style:= Style - [fsBold];
    end;
end;

procedure TfmMain.actSqlExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaSQLEditor);
  TfmSQL.ShowForm;
end;

procedure TfmMain.actSqlUpdate(Sender: TObject);
begin
  (Sender as TAction).Visible:= LoginContext.IsPowerUser;
  (Sender as TAction).Enabled:= not LoginContext.IsSessionReadOnly;
end;

procedure TfmMain.actSaleTypesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmSaleTypes, uaSaleTypes, uaSaleTypesEdit);
end;

procedure TfmMain.actOutStoreDealsExportExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaOutStoreDealsExport);
  TfmOutStoreDealsExport.ShowForm;
end;

procedure TfmMain.actOrgWorkActivitiesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmOrgWorkActivities, uaOrgWorkActivities, uaOrgWorkActivitiesEdit);
end;

procedure TfmMain.actDeptTypesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmDeptTypes, uaDeptTypes, uaDeptTypesEdit);
end;

procedure TfmMain.actDetailEstNeedsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaDetailEstNeeds);
  TfmStructurePartNeeds.ShowForm(nil, nil, GetStartEditMode(emEdit), doNone, True, atEstimation, spkDetail);
end;

procedure TfmMain.actDetailRealNeedsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaDetailRealNeeds);
  TfmStructurePartNeeds.ShowForm(nil, nil, GetStartEditMode(emEdit), doNone, True, atRealization, spkDetail);
end;

procedure TfmMain.actMaterialEstNeedsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaMaterialEstNeeds);
  TfmStructurePartNeeds.ShowForm(nil, nil, GetStartEditMode(emEdit), doNone, True, atEstimation, spkMaterial);
end;

procedure TfmMain.actMaterialRealNeedsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaMaterialRealNeeds);
  TfmStructurePartNeeds.ShowForm(nil, nil, GetStartEditMode(emEdit), doNone, True, atRealization, spkMaterial);
end;

procedure TfmMain.actResultProductEstNeedsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaResultProductEstNeeds);
  TfmResultProductNeeds.ShowForm(nil, nil, GetStartEditMode(emEdit), doNone, True, atEstimation);
end;

procedure TfmMain.actResultProductRealNeedsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaResultProductRealNeeds);
  TfmResultProductNeeds.ShowForm(nil, nil, GetStartEditMode(emEdit), doNone, True, atRealization);
end;

procedure TfmMain.actProductionProductsTreeExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaProductionProductsTree);
  TfmProductionProductsTree.ShowForm(nil, 0, tnRootProductCode, tdsNone);
end;

procedure TfmMain.actStoreQuantitiesExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaStoreQuantities);
  TfmStoreQuantities.ShowForm(
    nil,
    nil,
    emEdit,
    doNone,
    True,
    pcNormal
  );
end;

procedure TfmMain.pmCaptionPopup(Sender: TObject);

  procedure AddToolbarActions(AToolbar: TToolBar);
  var
    SubMenu: TMenuItem;
    i: Integer;
    act: TBasicAction;
    mi: TMenuItem;
  begin
    SubMenu:= TMenuItem.Create(Self);
    try
      Assert(cdsToolbars.Locate('TOOLBAR_CODE', AToolbar.Tag, []));
      SubMenu.Caption:= cdsToolbarsTOOLBAR_NAME.AsString;
      miCaptionToolbarMenu.Add(SubMenu);
    except
      FreeAndNil(SubMenu);
      raise;
    end;

    for i:= 0 to AToolbar.ButtonCount - 1 do
      if (AToolbar.Buttons[i].ClassName = TToolButton.ClassName) then
        begin
          act:= AToolbar.Buttons[i].Action;

          Assert((AToolbar.Buttons[i].Style = tbsSeparator) or Assigned(act));

          if not (Assigned(act) and (act.Tag and atfCreateObject <> 0)) then
            begin
              mi:= TMenuItem.Create(Self);
              try
                if (AToolbar.Buttons[i].Style = tbsSeparator) then
                  mi.Caption:= '-'
                else
                  mi.Action:= AToolbar.Buttons[i].Action;

                SubMenu.Add(mi);
              except
                FreeAndNil(mi);
                raise;
              end;   { try }
            end;   { if }
        end;   { if }
  end;  { AddToolbarActions }

var
  pnl: TPanel;
  c: TControl;
  tlb: TToolbar;
begin
  miCaptionToolbarMenu.Visible:=
    (cdsUserToolbars.RecordCount > 0);

  if miCaptionToolbarMenu.Visible then
    begin
      miCaptionToolbarMenu.Clear;

      cdsUserToolbars.First;
      while not cdsUserToolbars.Eof do
        begin
          pnl:= FindToolbarPanel(cdsUserToolbarsTOOLBAR_CODE.AsInteger);

          if Assigned(pnl) then
            begin
              tlb:= nil;
              for c in pnl.AllControls do
                if (c is TToolBar) then
                  begin
                    tlb:= c as TToolBar;
                    Break;
                  end;  { for }

              Assert(Assigned(tlb));

              AddToolbarActions(tlb);
            end;

          cdsUserToolbars.Next;
        end;  { while }
    end;  { if }
end;

procedure TfmMain.Loaded;
begin
  inherited Loaded;
  TClientComponentChecker.CheckForDisconnectedEventHandlers(Self);
end;

procedure TfmMain.DoCreate;
begin
  TClientComponentChecker.CheckComponentsNotConnected(Self);
  inherited DoCreate;
end;

procedure TfmMain.actOperationMovementsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaOperationMovementsBase + ActionProductionOrderBaseTypeCode(Sender));
  TfmOperationMovements.ShowForm(
    nil,
    nil,
    GetStartEditMode(emEdit),
    doNone,
    True,
    mdAll,
    ActionProductionOrderBaseTypeCode(Sender)
  );
end;

procedure TfmMain.actOperationMovementsUpdate(Sender: TObject);
begin
  SetProductionOrderActionCaptionAndHint(Sender, SOperationMovements);
end;

procedure TfmMain.actOrganisationTaskProposalsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmOrganisationTaskProposals, uaOrganisationTaskProposals, uaOrganisationTaskProposalsEdit);
end;

procedure TfmMain.actOrgPrcDataDistributionExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmOrgPrcDataDistribution, uaOrgPrcDataDistribution);
end;

procedure TfmMain.actOperationalTasksExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaOperationalTasksBase + ActionProductionOrderBaseTypeCode(Sender));
  TfmOperationalTasks.ShowForm(
    nil,
    nil,
    GetStartEditMode(emEdit),
    doNone,
    True,
    False,
    ActionProductionOrderBaseTypeCode(Sender)
  );
end;

procedure TfmMain.actOperationalTasksUpdate(Sender: TObject);
begin
  SetProductionOrderActionCaptionAndHint(Sender, SOperationalTasks);
end;

procedure TfmMain.actCurrentDeptExecute(Sender: TObject);
begin
  if not LoginContext.HasUserActivity(uaChangeCurrentDept) then
    LoginContext.CheckUserActivity(uaChangeCurrentOccupationWorkDept);

  ShowAnEditForm(TfmCurrentDept);
end;

procedure TfmMain.actDeptDetailFlowExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaDeptDetailFlow);
  TfmDeptDetailFlow.ShowForm;
end;

procedure TfmMain.actAccessRulesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmAccessRules, uaAccessRules, uaAccessRulesEdit);
end;

procedure TfmMain.actActiveConnectionsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmActiveConnections, uaActiveConnections, uaActiveConnectionsEdit);
end;

procedure TfmMain.actBaseGroupsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmBaseGroups, uaBaseGroups, uaBaseGroupsEdit);
end;

procedure TfmMain.actSpecialControlTasksExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaSpecialControlTasksBase + ActionProductionOrderBaseTypeCode(Sender));

  TfmOperationalTasks.ShowForm(
    nil,
    nil,
    GetStartEditMode(emEdit),
    doNone,
    True,
    True,
    ActionProductionOrderBaseTypeCode(Sender)
  );
end;

procedure TfmMain.actSpecialControlTasksUpdate(Sender: TObject);
begin
  SetProductionOrderActionCaptionAndHint(Sender, SSpecialControlTasks);
end;

procedure TfmMain.actEmployeeEarningsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaEmployeeEarnings);
  TfmEmployeeEarnings.ShowForm;
end;

procedure TfmMain.actEarningModifiersExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmEarningModifiers, uaEarningModifiers);
end;

procedure TfmMain.actEducationsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmEducations, uaEducations, uaEducationsEdit);
end;

procedure TfmMain.actShiftsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmShifts, uaShifts, uaShiftsEdit);
end;

procedure TfmMain.actWorkHoursExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmWorkHours, uaWorkHours);
end;

procedure TfmMain.actDisciplineEventsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmDisciplineEvents, uaDisciplineEvents);
end;

procedure TfmMain.actDisciplineEventTypesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmDisciplineEventTypesTree, uaDisciplineEventTypes, uaDisciplineEventTYpesEdit);
  dmMain.RefreshLoginContext;
end;

procedure TfmMain.actOccupationsAndEmployeesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmOccupationsAndEmployees, uaOccupationsAndEmployees, uaOccupationsAndEmployeesEdit);
end;

procedure TfmMain.actRealCapacityGraphExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaRealCapacityGraph);
  TfmCapacityGraph.ShowForm(nil, nil, emReadOnly, doNone, True, atRealization);
end;

procedure TfmMain.actRealCapacityTableExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaRealCapacityTable);
  TfmCapacityTable.ShowForm(nil, nil, emReadOnly, doNone, True, atRealization);
end;

procedure TfmMain.actRealFinModelLineGroupsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaRealFinModelLineGroups);
  TfmRealFinModelLineGroups.ShowForm(nil, nil, GetStartEditMode(emEdit));
end;

procedure TfmMain.actRealFinModelLinesExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaRealFinModelLines);
  TfmRealFinModelLines.ShowForm(nil, nil, GetStartEditMode(emEdit));
end;

function TfmMain.FindToolbarPanel(ToolbarCode: Integer): TPanel;
var
  i: Integer;
begin
  Assert(ToolbarCode > 0);

  Result:= nil;
  for i:= 0 to pnlToolbars.ControlCount - 1 do
    if (pnlToolbars.Controls[i] is TPanel) and
       ((pnlToolbars.Controls[i] as TPanel).Tag = ToolbarCode) then
      begin
        Result:= (pnlToolbars.Controls[i] as TPanel);
        Exit;
      end;
end;  { FindToolbar }

procedure TfmMain.SetCrossStateToolbars;

  procedure GenerateToolbarsMenu;
  var
    PriorToolbarCategoryCode: Integer;
    mi: TMenuItem;
  begin
    pmToolbars.Items.Clear;

    cdsToolbars.Filtered:= False;
    cdsToolbars.Filtered:= True;

    cdsToolbars.First;
    PriorToolbarCategoryCode:= cdsToolbarsTOOLBAR_CATEGORY_CODE.AsInteger;
    while not cdsToolbars.Eof do
      begin
        if (cdsToolbarsTOOLBAR_CATEGORY_CODE.AsInteger <> PriorToolbarCategoryCode) then
          pmToolbars.Items.NewBottomLine;

        if LoginContext.HasUserActivity(cdsToolbarsTOOLBAR_CATEGORY_ACTIVITY_CODE.AsInteger) then
          begin
            mi:= TMenuItem.Create(Self);
            try
              mi.Caption:= cdsToolbarsTOOLBAR_NAME.AsString;
              mi.Tag:= cdsToolbarsTOOLBAR_CODE.AsInteger;
              mi.OnClick:= ToolbarItemClick;

              pmToolbars.Items.Add(mi);
            except
              FreeAndNil(mi);
              raise;
            end;
          end;

        PriorToolbarCategoryCode:= cdsToolbarsTOOLBAR_CATEGORY_CODE.AsInteger;
        cdsToolbars.Next;
      end;  { while }


    pmToolbars.Items.NewBottomLine;

    mi:= TMenuItem.Create(Self);
    try
      mi.Caption:= SDefault;
      mi.OnClick:= ResetToolbarsClick;

      pmToolbars.Items.Add(mi);
    except
      FreeAndNil(mi);
      raise;
    end;
  end;  { GenerateToolbarsMenu }

  procedure HideAllToolbars;
  var
    i: Integer;
  begin
    for i:= 0 to pnlToolbars.ControlCount - 1 do
      if (pnlToolbars.Controls[i] is TPanel) and
         ((pnlToolbars.Controls[i] as TPanel).Tag > 0) then
        pnlToolbars.Controls[i].Visible:= False;
  end;  { HideAllToolbars }

  procedure ShowUserToolbars;

    function FindToolbarMenuItem(ToolbarCode: Integer): TMenuItem;
    var
      i: Integer;
    begin
      Assert(ToolbarCode > 0);

      Result:= nil;
      for i:= 0 to pmToolbars.Items.Count - 1 do
        if (pmToolbars.Items[i].Tag = ToolbarCode) then
          begin
            Result:= pmToolbars.Items[i];
            Exit;
          end;
    end;  { FindToolbarMenuItem }

  var
    pnl: TPanel;
    mi: TMenuItem;
  begin
    cdsUserToolbars.Filtered:= False;
    cdsUserToolbars.Filtered:= True;

    cdsUserToolbars.First;
    while not cdsUserToolbars.Eof do
      begin
        pnl:= FindToolbarPanel(cdsUserToolbarsTOOLBAR_CODE.AsInteger);
        mi:= FindToolbarMenuItem(cdsUserToolbarsTOOLBAR_CODE.AsInteger);

        if Assigned(pnl) and Assigned(mi) then
          pnl.Visible:= True;

        if Assigned(mi) then
          mi.Checked:= True;

        cdsUserToolbars.Next;
      end;  { while }
  end;  { ShowUserToolbars }

  procedure CopyToolbarsPopupMenuToMainMenuToolbarMenu;
  var
    mi: TMenuItem;
    i: Integer;
  begin
    miToolbarMenu.Clear;
    for i:= 0 to pmToolbars.Items.Count - 1 do
      begin
        mi:= TMenuItem.Create(Self);
        try
          mi.AssignMenuItem(pmToolbars.Items[i]);
          miToolbarMenu.Add(mi);
        except
          FreeAndNil(mi);
          raise;
        end;
      end;
  end;  { CopyToolbarsPopupMenuToMainMenuToolbarMenu }

begin
  GenerateToolbarsMenu;

  HideAllToolbars;
  ShowUserToolbars;
  CopyToolbarsPopupMenuToMainMenuToolbarMenu;
end;

procedure TfmMain.SetDatabaseIcon;
var
  ico: TIcon;
begin
  dmMain.SetDatabaseIcon;

  if (LoginContext.DatabaseIconIndex = 0) then
    imgDatabase.Picture:= nil
  else
    begin
      ico:= TDatabaseIconLoader.LoadLargeDatabaseIcon<TIcon>(LoginContext.DatabaseIconIndex + High(TDatabaseIconIndex) * Ord(LoginContext.IsSessionTest));
      try
        imgDatabase.Picture.Assign(ico);
      finally
        FreeAndNil(ico);
      end;
    end;

  imgDatabase.Visible:= (LoginContext.DatabaseIconIndex > 0);
end;

procedure TfmMain.SetProcessLabelPosition(
  AProcessLabel: TLabel;
  AProcessSpeedButton: TSpeedButton;
  AMouseDown: Boolean);
var
  DownInButton: Boolean;
begin
  DownInButton:=
    AMouseDown and
    PtInRect(AProcessSpeedButton.ClientRect, AProcessSpeedButton.ScreenToClient(Mouse.CursorPos));

  if FProcessButtonDown then
    begin
      AProcessLabel.Left:= AProcessSpeedButton.Left + Ord(DownInButton);
      AProcessLabel.Top:= AProcessSpeedButton.Top + FProcessLabelVOffset + Ord(DownInButton);
    end;
end;

procedure TfmMain.SetProcessView(const Value: TProcessView);
begin
  if (Value <> FProcessView) then
    begin
      FProcessView:= Value;
      SetCrossStateToolbars;
    end;  { if }
end;

procedure TfmMain.SetProductionOrderActionCaptionAndHint(Sender: TObject;
  FmtStr: string);
var
  s: string;
begin
  if (Sender is TProductionOrdersAction) then
    with ProductionOrderBaseTypes[(Sender as TProductionOrdersAction).ProductionOrderBaseTypeCode] do
      s:=
        Format(
          FmtStr,
          [ Name,
            IfThen(Abbrev <> Name, ' (' + Abbrev + ')'),
            NamePlural,
            AbbrevPlural
          ]
        )
  else
    s:= FmtStr;

  with Sender as TAction do
    begin
      Hint:= s;
      Caption:= Hint + cDialogSuffix;
    end;  { with, if }
end;

procedure TfmMain.SetProductionOrderToolbars;

  procedure SetProductionOrderToolbar(AToolbar: TToolBar;
    AProductionOrderBaseTypeCode: Integer);
  var
    a: TAction;
    i: Integer;
    c: string;
  begin
    for i:= 0 to AToolbar.ButtonCount - 1 do
      if Assigned(AToolbar.Buttons[i].Action) then
        begin
          a:= FindComponent(AToolbar.Buttons[i].Action.Name + '_' + IntToStr(AProductionOrderBaseTypeCode)) as TAction;
          if Assigned(a) then
            begin
              c:= AToolbar.Buttons[i].Caption;
              AToolbar.Buttons[i].Action:= a;
              AToolbar.Buttons[i].Caption:= c;
            end;
        end;
  end;  { SetProductionOrderToolbar }

begin
  SetProductionOrderToolbar(tlb10, ProdOrderBaseTypeToInt(pobtProjectCover));
  SetProductionOrderToolbar(tlb12, ProdOrderBaseTypeToInt(pobtEnvCover));
  SetProductionOrderToolbar(tlb16, ProdOrderBaseTypeToInt(pobtSaleCover));
  SetProductionOrderToolbar(tlb19, ProdOrderBaseTypeToInt(pobtDeliveryCover));
  SetProductionOrderToolbar(tlb27, ProdOrderBaseTypeToInt(pobtOccCover));
end;

procedure TfmMain.btnPVDeliveriesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FProcessButtonDown:= True;
  FProcessLabelVOffset:= lblPVDeliveries.Top - btnPVDeliveries.Top;
  SetProcessLabelPosition(lblPVDeliveries, btnPVDeliveries, True);
end;

procedure TfmMain.btnPVDeliveriesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetProcessLabelPosition(lblPVDeliveries, btnPVDeliveries, False);
  FProcessButtonDown:= False;
end;

procedure TfmMain.btnPVDeliveriesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SetProcessLabelPosition(lblPVDeliveries, btnPVDeliveries, FProcessButtonDown);
end;

procedure TfmMain.btnPVFinancesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FProcessButtonDown:= True;
  FProcessLabelVOffset:= lblPVFinances.Top - btnPVFinances.Top;
  SetProcessLabelPosition(lblPVFinances, btnPVFinances, True);
end;

procedure TfmMain.btnPVFinancesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetProcessLabelPosition(lblPVFinances, btnPVFinances, False);
  FProcessButtonDown:= False;
end;

procedure TfmMain.btnPVFinancesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SetProcessLabelPosition(lblPVFinances, btnPVFinances, FProcessButtonDown);
end;

procedure TfmMain.btnPVSalesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FProcessButtonDown:= True;
  FProcessLabelVOffset:= lblPVSales.Top - btnPVSales.Top;
  SetProcessLabelPosition(lblPVSales, btnPVSales, True);
end;

procedure TfmMain.btnPVSalesMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SetProcessLabelPosition(lblPVSales, btnPVSales, False);
  FProcessButtonDown:= False;
end;

procedure TfmMain.cdsToolbarsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept:=
    (cdsToolbarsCROSS_STATE_CODE.AsInteger = ProcessViewToCrossStateCode(ProcessView));
end;

procedure TfmMain.cdsUserToolbarsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept:=
    (cdsUserToolbarsCROSS_STATE_CODE.AsInteger = ProcessViewToCrossStateCode(ProcessView));
end;

procedure TfmMain.cdsUserToolbarsReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ReconcileError(E);
end;

procedure TfmMain.btnPVSalesMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  SetProcessLabelPosition(lblPVSales, btnPVSales, FProcessButtonDown);
end;

procedure TfmMain.btnPVProductionMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FProcessButtonDown:= True;
  FProcessLabelVOffset:= lblPVProduction.Top - btnPVProduction.Top;
  SetProcessLabelPosition(lblPVProduction, btnPVProduction, True);
end;

procedure TfmMain.btnPVProductionMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetProcessLabelPosition(lblPVProduction, btnPVProduction, False);
  FProcessButtonDown:= False;
end;

procedure TfmMain.btnPVProductionMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SetProcessLabelPosition(lblPVProduction, btnPVProduction, FProcessButtonDown);
end;

procedure TfmMain.btnPVEnvironmentMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FProcessButtonDown:= True;
  FProcessLabelVOffset:= lblPVEnvironment.Top - btnPVEnvironment.Top;
  SetProcessLabelPosition(lblPVEnvironment, btnPVEnvironment, True);
end;

procedure TfmMain.btnPVEnvironmentMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetProcessLabelPosition(lblPVEnvironment, btnPVEnvironment, False);
  FProcessButtonDown:= False;
end;

procedure TfmMain.btnPVEnvironmentMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SetProcessLabelPosition(lblPVEnvironment, btnPVEnvironment, FProcessButtonDown);
end;

procedure TfmMain.actProfessionKindsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmProfessionKinds, uaProfessionKinds, uaProfessionKindsEdit);
end;

procedure TfmMain.actOccupationWorkDeptPrioritiesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmOccupationWorkDeptPriorities, uaOccupationWorkDeptPriorities, uaOccupationWorkDeptPrioritiesEdit);
end;

procedure TfmMain.actBOIProductOrdersExpenseExecute(Sender: TObject);
var
  EditMode: TEditMode;
begin
  LoginContext.CheckUserActivity(uaBOIOrdersExpense);
  EditMode:= GetUserActivityEditMode(uaBOIOrderExpenseEdit);
  EditMode:= GetStartEditMode(EditMode);
  TfmBOIProductOrders.ShowForm(nil, nil, EditMode, doNone, True, bmExpense);
end;

procedure TfmMain.actBudgetClassesTreeExecute(Sender: TObject);
var
  em: TEditMode;
begin
  LoginContext.CheckUserActivity(uaBudgetClassesTree);

  if LoginContext.HasUserActivity(uaBudgetClassesTreeEdit) then
    em:= emEdit
  else
    em:= emReadOnly;

  TfmProductsTreeEditor.ShowForm(nil, 0, tnRootProductCode, GetStartEditMode(em), tdsNone, pcBudget);
end;

procedure TfmMain.actModelsInvestedValuesExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaModelsInvestedValuesBase + ActionProductionOrderBaseTypeCode(Sender));
  TfmModelsInvestedValues.ShowForm(
    nil,
    nil,
    GetStartEditMode(emEdit),
    True,
    ActionProductionOrderBaseTypeCode(Sender)
  );
end;

procedure TfmMain.actModelsInvestedValuesUpdate(Sender: TObject);
begin
  SetProductionOrderActionCaptionAndHint(Sender, SModelsInvestedValues);
end;

procedure TfmMain.actDocConfigExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaDocConfig);
  if TfmConfig.ShowForm(nil, nil, GetStartEditMode(GetUserActivityEditMode(uaDocConfigEdit)), doNone, True) then
    dmMain.LoadLoginContext;
end;

procedure TfmMain.actDocItemStorageTypesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmDocItemStorageTypes, uaDocItemStorageTypes, uaDocItemStorageTypesEdit);
end;

procedure TfmMain.actDocItemTemplatesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmDocItemTemplates, uaDocItemTemplates, uaDocItemTemplatesEdit);
end;

procedure TfmMain.actDocItemViewGeneratorsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmDocItemViewGenerators, uaDocItemViewGenerators, uaDocItemViewGeneratorsEdit);
end;

procedure TfmMain.actDocProfilesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmDocProfiles, uaDocProfiles, uaDocProfilesEdit);
end;

function TfmMain.HasAnyChangeIndicatorActivity: Boolean;
begin
  Result:=
    LoginContext.HasUserActivity(uaMllcChangeIndicator) or
    LoginContext.HasUserActivity(uaMllcMyChangeIndicator) or
    LoginContext.HasUserActivity(uaMllcMyMlChangeIndicator);
end;

function TfmMain.HasAnyExceptEventIndicatorActivity: Boolean;
begin
  Result:=
    LoginContext.HasUserActivity(uaExceptEventCtrlIndicator) or
    LoginContext.HasUserActivity(uaExceptEventCtrlDeptIndicator) or
    LoginContext.HasUserActivity(uaExceptEventCtrlUserIndicator);
end;

function TfmMain.HasAnyExceptEventTaskRealActivity: Boolean;
begin
  Result:=
    LoginContext.HasUserActivity(uaExceptEventTaskRealUserIndicator) or
    LoginContext.HasUserActivity(uaExceptEventTaskRealDeptIndicator);
end;

procedure TfmMain.imgUserPictureClick(Sender: TObject);
begin
  actConfigUser.Tag:= 1;
  try
    actConfigUser.Execute;
  finally
    actConfigUser.Tag:= 0;
  end;
end;

procedure TfmMain.IndicatorActionUpdate(
  AAction: TAction;
  AIndicationType: TIndicationType;
  AIndicationProcess: TIndicationProcess;
  AIndicationOwner: TIndicationOwner;
  AIndicationActivation: TIndicationActivation);

const
  IndicationActivities: array[TIndicationType, TIndicationProcess, TIndicationOwner] of Integer =
    ( ( (uaExceptEventCtrlIndicator, uaExceptEventCtrlUserIndicator, uaExceptEventCtrlDeptIndicator),
        (0, 0, 0)
      ),
      ( (uaExceptEventCtrlIndicator, uaExceptEventCtrlUserIndicator, uaExceptEventCtrlDeptIndicator),
        (0, uaExceptEventTaskRealUserIndicator, uaExceptEventTaskRealDeptIndicator)
      )
    );

type
  TIsRefreshing = Boolean;
  TIsPrimaryCountPositive = Boolean;
  TIsSecondaryCountPositive = Boolean;
  TIndicationColor = (icWhite, icOrange, icYeloow, icRed);

const
  EEWhiteImageIndex = 25;
  EEOrangeImageIndex = 26;
  EERedImageIndex = 27;
  EEYellowImageIndex = 28;

  EETWhiteImageIndex = 29;
  EETOrangeImageIndex = 30;
  EETRedImageIndex = 31;
  EETYellowImageIndex = 32;

const
  IndicationImageColors: array[TIsPrimaryCountPositive, TIndicationType, TIndicationActivation, TIsSecondaryCountPositive] of TIndicationColor =
    ( ( ( (icWhite, icWhite),
          (icWhite, icWhite)
        ),
        ( (icWhite, icWhite),
          (icWhite, icWhite)
        )
      ),
      ( ( (icYeloow, icYeloow),
          (icOrange, icRed)
        ),
        ( (icYeloow, icRed),
          (icOrange, icOrange)
        )
      )
    );

  IndicationImageIndexes: array[TIndicationProcess, TIndicationColor] of Integer =
    ( (EEWhiteImageIndex, EEOrangeImageIndex, EEYellowImageIndex, EERedImageIndex),
      (EETWhiteImageIndex, EETOrangeImageIndex, EETYellowImageIndex, EETRedImageIndex)
    );

var
  s: string;
  IndicationActivity: Integer;
  PrimaryCount: Integer;
  SecondaryCount: Integer;
begin
  IndicationActivity:= IndicationActivities[AIndicationType, AIndicationProcess, AIndicationOwner];
  Assert(IndicationActivity > 0);

  with AAction do
    begin
      PrimaryCount:= FIndicationCounts[AIndicationType, AIndicationProcess, AIndicationOwner, AIndicationActivation, ilPrimary];
      SecondaryCount:= FIndicationCounts[AIndicationType, AIndicationProcess, AIndicationOwner, AIndicationActivation, ilSecondary];

      Visible:= LoginContext.HasUserActivity(IndicationActivity);
      Enabled:= (PrimaryCount > 0) or (SecondaryCount > 0);

      if FRefreshingExceptEvents then
        ImageIndex:= HourglassImageIndex
      else
        ImageIndex:=
          IndicationImageIndexes[
            AIndicationProcess,
            IndicationImageColors[
              (PrimaryCount > 0),
              AIndicationType,
              AIndicationActivation,
              (SecondaryCount > 0)]];

      s:= Format(
        IndicationHints[
          AIndicationType,
          AIndicationProcess,
          AIndicationOwner,
          AIndicationActivation],
        [PrimaryCount]);

      if (SecondaryCount > 0) then
        s:= s + Format(SecondaryIndicationHints[AIndicationType], [SecondaryCount]);

      Caption:= s + cDialogSuffix;
      Hint:= s;
    end;  { with }
end;

procedure TfmMain.lblDatabaseNameMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  lblDatabaseName.Hint:=
    Format(
      SConnectionToDbHint,
      [ LoginContext.ConnectionId,
        IfThen(PingInfo.InactivePingFailed, '(X)') + HostOf(ClientConnectionInfo.ActiveServerName)
      ]);
end;

procedure TfmMain.lblTodayDateDblClick(Sender: TObject);
begin
  actDayOffs.Execute;
end;

procedure TfmMain.lblTodayDateWeekFormatDblClick(Sender: TObject);
begin
  actDayOffs.Execute;
end;

procedure TfmMain.ShowExceptEventsFromIndicator(
  AIndicationType: TIndicationType;
  AIndicationProcess: TIndicationProcess;
  AIndicationOwner: TIndicationOwner;
  AIndicationActivation: TIndicationActivation);

var
  em: TEditMode;
  ExceptEventStartDetailType: TDetailType;
begin
  Assert(
    (AIndicationType = itExceptEventTask) or
    ( (AIndicationType = itExceptEvent) and
      (AIndicationProcess = ipControl)
    )
  );

  LoginContext.CheckUserActivity(uaExceptEvents);

  cdsExceptEventsFromIndicatorParams.Close;
  cdsExceptEventsFromIndicatorParams.CreateDataSet;
  try
    cdsExceptEventsFromIndicatorParams.Append;
    try
      cdsExceptEventsFromIndicatorParamsMIN_EXCEPT_EVENT_LEVEL_CODE.AsInteger:= ExceptEventLevelToInt(eelMinimal);

      cdsExceptEventsFromIndicatorParamsMIN_STATE_CODE.AsInteger:= MinExceptEventStateCode;
      cdsExceptEventsFromIndicatorParamsMAX_STATE_CODE.AsInteger:= MaxExceptEventActivatedStateCode;

      if (AIndicationType = itExceptEvent) then
        if (AIndicationActivation = iaActivated) then
          cdsExceptEventsFromIndicatorParamsMIN_STATE_CODE.AsInteger:= MinExceptEventActivatedStateCode
        else
          cdsExceptEventsFromIndicatorParamsMAX_STATE_CODE.AsInteger:= MaxExceptEventNotActivatedStateCode;

      if (AIndicationProcess = ipControl) then
        begin
          if (AIndicationOwner = ioUser) then
            cdsExceptEventsFromIndicatorParamsCTRL_MAIN_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;

          if (AIndicationOwner = ioDept) then
            cdsExceptEventsFromIndicatorParamsCTRL_DEPTS_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
        end;  { if }

      cdsExceptEventsFromIndicatorParamsIS_FILTERED_BY_TASKS.AsBoolean:= (AIndicationType = itExceptEventTask);

      if (AIndicationType = itExceptEventTask) then
        begin
          if (AIndicationActivation = iaActivated) then
            begin
              cdsExceptEventsFromIndicatorParamsMIN_TASK_STATE_CODE.AsInteger:= MinExceptEventTaskActivatedStateCode;
              cdsExceptEventsFromIndicatorParamsMAX_TASK_STATE_CODE.AsInteger:= MaxExceptEventTaskActivatedStateCode;
            end
          else
            begin
              cdsExceptEventsFromIndicatorParamsMIN_TASK_STATE_CODE.AsInteger:= MinExceptEventTaskStateCode;
              cdsExceptEventsFromIndicatorParamsMAX_TASK_STATE_CODE.AsInteger:= MaxExceptEventTaskNotActivatedStateCode;
            end;

          if (AIndicationProcess = ipRealization) then
            begin
              if (AIndicationOwner = ioUser) then
                cdsExceptEventsFromIndicatorParamsTASK_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;

              if (AIndicationOwner = ioDept) then
                cdsExceptEventsFromIndicatorParamsTASK_DEPTS_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
            end;  { if }
        end;  { if }

      cdsExceptEventsFromIndicatorParams.Post;
    except
      cdsExceptEventsFromIndicatorParams.Cancel;
      raise;
    end;  { try }

    if LoginContext.HasUserActivity(uaExceptEventsEdit) then
      em:= emEdit
    else
      em:= emReadOnly;

    //ExceptEventStartDetailType:= Utils.IfThen(AIndicationType = itExceptEventTask, dtExceptEventTask, dtExceptEventDamage);
    ExceptEventStartDetailType:= dtExceptEventTask;

    TfmExceptEvents.ShowForm(nil, cdsExceptEventsFromIndicatorParams, GetStartEditMode(em), doNone, False, ExceptEventStartDetailType);
  finally
    cdsExceptEventsFromIndicatorParams.Close;
  end;  { try }
end;

procedure TfmMain.actExceptEventActivatedExecute(Sender: TObject);
begin
  ShowExceptEventsFromIndicator(itExceptEvent, ipControl, ioAll, iaActivated);
end;

procedure TfmMain.actExceptEventActivatedUpdate(Sender: TObject);
begin
  IndicatorActionUpdate((Sender as TAction), itExceptEvent, ipControl, ioAll, iaActivated);
end;

procedure TfmMain.actExceptEventDeptActivatedExecute(Sender: TObject);
begin
  ShowExceptEventsFromIndicator(itExceptEvent, ipControl, ioDept, iaActivated);
end;

procedure TfmMain.actExceptEventDeptActivatedUpdate(Sender: TObject);
begin
  IndicatorActionUpdate((Sender as TAction), itExceptEvent, ipControl, ioDept, iaActivated);
end;

procedure TfmMain.actExceptEventDeptNotActivatedExecute(Sender: TObject);
begin
  ShowExceptEventsFromIndicator(itExceptEvent, ipControl, ioDept, iaNotActivated);
end;

procedure TfmMain.actExceptEventDeptNotActivatedUpdate(Sender: TObject);
begin
  IndicatorActionUpdate((Sender as TAction), itExceptEvent, ipControl, ioDept, iaNotActivated);
end;

procedure TfmMain.actExceptEventNotActivatedExecute(Sender: TObject);
begin
  ShowExceptEventsFromIndicator(itExceptEvent, ipControl, ioAll, iaNotActivated);
end;

procedure TfmMain.actExceptEventNotActivatedUpdate(Sender: TObject);
begin
  IndicatorActionUpdate((Sender as TAction), itExceptEvent, ipControl, ioAll, iaNotActivated);
end;

procedure TfmMain.ShowExceptEvents(
  AEditMode: TEditMode;
  AExceptEventGenType: TExceptEventGenType;
  AGeneratorDataSet: TAbmesClientDataSet);
var
  ShowFilterForm: Boolean;
begin
  ShowFilterForm:= not Assigned(AGeneratorDataSet);

  cdsExceptEventsParams.Close;
  cdsExceptEventsParams.CreateDataSet;
  try
    cdsExceptEventsParams.Append;
    try
      cdsExceptEventsParamsMAX_STATE_CODE.AsInteger:= MaxExceptEventActivatedStateCode;
      cdsExceptEventsParamsEXCEPT_EVENT_GEN_TYPE_CODE.AsInteger:=
        ExceptEventGenTypeToInt(AExceptEventGenType);

      if Assigned(AGeneratorDataSet) then
        begin
          cdsExceptEventsParamsMAX_STATE_CODE.AsInteger:= High(TExceptEventStates);
          AssignFields(AGeneratorDataSet, cdsExceptEventsParams);
        end;  { if }

      cdsExceptEventsParams.Post;
    except
      cdsExceptEventsParams.Cancel;
      raise;
    end;  { try }

    TfmExceptEvents.ShowForm(nil, cdsExceptEventsParams, AEditMode, doNone, ShowFilterForm);
  finally
    cdsExceptEventsParams.Close;
  end;  { try }
end;

procedure TfmMain.actExceptEventsDeliveriesExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaExceptEvents);
  ShowExceptEvents(GetStartEditMode(GetUserActivityEditMode(uaExceptEventsEdit)), eegtDeliveries);
end;

procedure TfmMain.actExceptEventsEnvExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaExceptEvents);
  ShowExceptEvents(GetStartEditMode(GetUserActivityEditMode(uaExceptEventsEdit)), eegtEnvironment);
end;

procedure TfmMain.actExceptEventsFinancialExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaExceptEvents);
  ShowExceptEvents(GetStartEditMode(GetUserActivityEditMode(uaExceptEventsEdit)), eegtFinancial);
end;

procedure TfmMain.actExceptEventsProductionExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaExceptEvents);
  ShowExceptEvents(GetStartEditMode(GetUserActivityEditMode(uaExceptEventsEdit)), eegtProduction);
end;

procedure TfmMain.actExceptEventsProductionUpdate(Sender: TObject);
begin
  (Sender as TAction).Visible:= (IntToProdOrderBaseType(ActionProductionOrderBaseTypeCode(Sender)) = pobtSaleCover);
  (Sender as TAction).Enabled:= (IntToProdOrderBaseType(ActionProductionOrderBaseTypeCode(Sender)) = pobtSaleCover);
end;

procedure TfmMain.actExceptEventsSalesExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaExceptEvents);
  ShowExceptEvents(GetStartEditMode(GetUserActivityEditMode(uaExceptEventsEdit)), eegtSales);
end;

procedure TfmMain.actExceptEventTaskCtrlActivatedExecute(Sender: TObject);
begin
  ShowExceptEventsFromIndicator(itExceptEventTask, ipControl, ioAll, iaActivated);
end;

procedure TfmMain.actExceptEventTaskCtrlActivatedUpdate(Sender: TObject);
begin
  IndicatorActionUpdate((Sender as TAction), itExceptEventTask, ipControl, ioAll, iaActivated);
end;

procedure TfmMain.actExceptEventTaskCtrlDeptActivatedExecute(Sender: TObject);
begin
  ShowExceptEventsFromIndicator(itExceptEventTask, ipControl, ioDept, iaActivated);
end;

procedure TfmMain.actExceptEventTaskCtrlDeptActivatedUpdate(Sender: TObject);
begin
  IndicatorActionUpdate((Sender as TAction), itExceptEventTask, ipControl, ioDept, iaActivated);
end;

procedure TfmMain.actExceptEventTaskCtrlDeptNotActivatedExecute(
  Sender: TObject);
begin
  ShowExceptEventsFromIndicator(itExceptEventTask, ipControl, ioDept, iaNotActivated);
end;

procedure TfmMain.actExceptEventTaskCtrlDeptNotActivatedUpdate(Sender: TObject);
begin
  IndicatorActionUpdate((Sender as TAction), itExceptEventTask, ipControl, ioDept, iaNotActivated);
end;

procedure TfmMain.actExceptEventTaskCtrlNotActivatedExecute(Sender: TObject);
begin
  ShowExceptEventsFromIndicator(itExceptEventTask, ipControl, ioAll, iaNotActivated);
end;

procedure TfmMain.actExceptEventTaskCtrlNotActivatedUpdate(Sender: TObject);
begin
  IndicatorActionUpdate((Sender as TAction), itExceptEventTask, ipControl, ioAll, iaNotActivated);
end;

procedure TfmMain.actExceptEventTaskCtrlUserActivatedExecute(Sender: TObject);
begin
  ShowExceptEventsFromIndicator(itExceptEventTask, ipControl, ioUser, iaActivated);
end;

procedure TfmMain.actExceptEventTaskCtrlUserActivatedUpdate(Sender: TObject);
begin
  IndicatorActionUpdate((Sender as TAction), itExceptEventTask, ipControl, ioUser, iaActivated);
end;

procedure TfmMain.actExceptEventTaskCtrlUserNotActivatedExecute(
  Sender: TObject);
begin
  ShowExceptEventsFromIndicator(itExceptEventTask, ipControl, ioUser, iaNotActivated);
end;

procedure TfmMain.actExceptEventTaskCtrlUserNotActivatedUpdate(Sender: TObject);
begin
  IndicatorActionUpdate((Sender as TAction), itExceptEventTask, ipControl, ioUser, iaNotActivated);
end;

procedure TfmMain.actExceptEventTaskRealDeptActivatedExecute(Sender: TObject);
begin
  ShowExceptEventsFromIndicator(itExceptEventTask, ipRealization, ioDept, iaActivated);
end;

procedure TfmMain.actExceptEventTaskRealDeptActivatedUpdate(Sender: TObject);
begin
  IndicatorActionUpdate((Sender as TAction), itExceptEventTask, ipRealization, ioDept, iaActivated);
end;

procedure TfmMain.actExceptEventTaskRealDeptNotActivatedExecute(
  Sender: TObject);
begin
  ShowExceptEventsFromIndicator(itExceptEventTask, ipRealization, ioDept, iaNotActivated);
end;

procedure TfmMain.actExceptEventTaskRealDeptNotActivatedUpdate(Sender: TObject);
begin
  IndicatorActionUpdate((Sender as TAction), itExceptEventTask, ipRealization, ioDept, iaNotActivated);
end;

procedure TfmMain.actExceptEventTaskRealUserActivatedExecute(Sender: TObject);
begin
  ShowExceptEventsFromIndicator(itExceptEventTask, ipRealization, ioUser, iaActivated);
end;

procedure TfmMain.actExceptEventTaskRealUserActivatedUpdate(Sender: TObject);
begin
  IndicatorActionUpdate((Sender as TAction), itExceptEventTask, ipRealization, ioUser, iaActivated);
end;

procedure TfmMain.actExceptEventTaskRealUserNotActivatedExecute(
  Sender: TObject);
begin
  ShowExceptEventsFromIndicator(itExceptEventTask, ipRealization, ioUser, iaNotActivated);
end;

procedure TfmMain.actExceptEventTaskRealUserNotActivatedUpdate(Sender: TObject);
begin
  IndicatorActionUpdate((Sender as TAction), itExceptEventTask, ipRealization, ioUser, iaNotActivated);
end;

procedure TfmMain.actExceptEventTypesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmExceptEventTypesTree, uaExceptEventTypes, uaExceptEventTypesEdit);
end;

procedure TfmMain.actExceptEventUserActivatedExecute(Sender: TObject);
begin
  ShowExceptEventsFromIndicator(itExceptEvent, ipControl, ioUser, iaActivated);
end;

procedure TfmMain.actExceptEventUserActivatedUpdate(Sender: TObject);
begin
  IndicatorActionUpdate((Sender as TAction), itExceptEvent, ipControl, ioUser, iaActivated);
end;

procedure TfmMain.actExceptEventUserNotActivatedExecute(Sender: TObject);
begin
  ShowExceptEventsFromIndicator(itExceptEvent, ipControl, ioUser, iaNotActivated);
end;

procedure TfmMain.actExceptEventUserNotActivatedUpdate(Sender: TObject);
begin
  IndicatorActionUpdate((Sender as TAction), itExceptEvent, ipControl, ioUser, iaNotActivated);
end;

procedure TfmMain.actExecuteServersExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmExecuteServers, uaExecuteServers, uaExecuteServersEdit);
end;

procedure TfmMain.actBudgetExpenseExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaBudgetExpense);
  TfmBudget.ShowForm(nil, nil, emEdit, doNone, True, bmExpense);
end;

procedure TfmMain.actFailedEmployeeMovementsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmFailedEmployeeMovements, uaFailedEmployeeMovements);
end;

procedure TfmMain.actFileExtensionsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmFileExtensions, uaFileExtensions, uaFileExtensionsEdit);
end;

procedure TfmMain.actBOICompanyOrdersExpenseExecute(Sender: TObject);
var
  EditMode: TEditMode;
begin
  LoginContext.CheckUserActivity(uaBOIOrdersExpense);
  EditMode:= GetUserActivityEditMode(uaBOIOrderExpenseEdit);
  EditMode:= GetStartEditMode(EditMode);
  TfmBOICompanyOrders.ShowForm(nil, nil, EditMode, doNone, True, bmExpense);
end;

procedure TfmMain.actMonthDateFormatUpdate(Sender: TObject);
begin
  (Sender as TAction).Caption:= Format(SMonthDateFormat, [JclDateTime.FormatDateTime(dmMain.GetDateFormat, ContextDate)]);
end;

procedure TfmMain.actWeekDateFormatUpdate(Sender: TObject);
begin
  (Sender as TAction).Caption:= Format(SWeekDateFormat, [JclDateTime.FormatDateTime(dmMain.GetWeekDateFormat, ContextDate)]);
end;

procedure TfmMain.actBeginEndDateIntervalFormatUpdate(Sender: TObject);
begin
  (Sender as TAction).Caption:= Format(SBeginEndDateIntervalFormat,
    [JclDateTime.FormatDateTime(dmMain.GetIntervalDateDisplayFormat, ContextDate), JclDateTime.FormatDateTime(dmMain.GetIntervalDateDisplayFormat, ContextDate + 1)]);
end;

procedure TfmMain.actBeginDaysDateIntervalFormatUpdate(Sender: TObject);
begin
  (Sender as TAction).Caption:= Format(SBeginDaysDateIntervalFormat, [JclDateTime.FormatDateTime(dmMain.GetIntervalDateDisplayFormat, ContextDate)]);
end;

procedure TfmMain.actBeginWorkdaysDateIntervalFormatUpdate(
  Sender: TObject);
begin
  (Sender as TAction).Caption:= Format(SBeginWorkdaysDateIntervalFormat, [JclDateTime.FormatDateTime(dmMain.GetIntervalDateDisplayFormat, ContextDate)]);
end;

procedure TfmMain.actMonthDateFormatExecute(Sender: TObject);
begin
  dmMain.DateFormat:= diMonth;
end;

procedure TfmMain.actWeekDateFormatExecute(Sender: TObject);
begin
  dmMain.DateFormat:= diWeek;
end;

procedure TfmMain.actBeginEndDateIntervalFormatExecute(Sender: TObject);
begin
  dmMain.DateIntervalFormat:= didsBeginDateEndDate;
end;

procedure TfmMain.actBeginDaysDateIntervalFormatExecute(Sender: TObject);
begin
  dmMain.DateIntervalFormat:= didsBeginDateDays;
end;

procedure TfmMain.actBeginWorkdaysDateIntervalFormatExecute(
  Sender: TObject);
begin
  dmMain.DateIntervalFormat:= didsBeginDateWorkdays;
end;

procedure TfmMain.LoadCustomMenuItems;

  procedure AddToRelative(ARelativeMenuItemName: string);
  const
    DocItemImageIndex = 21;
    SecretImageIndexes: array[Boolean, Boolean] of Integer = ((DocItemImageIndex, 20), (-1, 20));
  var
    RelativeMenuItem: TMenuItem;
    NewMenuItem: TMenuItem;
    ParentMenuItem: TMenuItem;
    AddAfterIndex: Integer;
    DocItemNo: Integer;
  begin
    RelativeMenuItem:= TMenuItem(FindComponent(ARelativeMenuItemName));

    if Assigned(RelativeMenuItem) then
      begin
        NewMenuItem:= TDocMenuItem.Create(RelativeMenuItem.Owner);
        NewMenuItem.Caption:= cdsCustomMenuItemsCUSTOM_MENU_ITEM_NAME.AsString;
        NewMenuItem.Tag:= -1;

        RelativeMenuItem.Parent.Insert(
          RelativeMenuItem.MenuIndex + Ord(not cdsCustomMenuItemsIS_BEFORE_MENU_ITEM.AsBoolean),
          NewMenuItem
        );

        RelativeMenuItem:= NewMenuItem;

        if cdsCustomMenuItemsHAS_MENU_LINE_BEFORE.AsBoolean then
          begin
            NewMenuItem:= TDocMenuItem.Create(RelativeMenuItem.Owner);
            NewMenuItem.Caption:= '-';
            NewMenuItem.Tag:= -1;

            RelativeMenuItem.Parent.Insert(RelativeMenuItem.MenuIndex, NewMenuItem);
          end;

        if cdsCustomMenuItemsHAS_MENU_LINE_AFTER.AsBoolean then
          begin
            NewMenuItem:= TDocMenuItem.Create(RelativeMenuItem.Owner);
            NewMenuItem.Caption:= '-';
            NewMenuItem.Tag:= -1;

            RelativeMenuItem.Parent.Insert(RelativeMenuItem.MenuIndex + 1, NewMenuItem);
          end;

        if cdsCustomMenuItemsIS_SUBMENU.AsBoolean then
          begin
            ParentMenuItem:= RelativeMenuItem;
            RelativeMenuItem.ImageIndex:= DocItemImageIndex;
            AddAfterIndex:= -1;
          end
        else
          begin
            ParentMenuItem:= RelativeMenuItem.Parent;
            AddAfterIndex:= RelativeMenuItem.MenuIndex;
          end;


        if FdmDocClient.LoadDoc(cdsCustomMenuItemsDOC_BRANCH_CODE.AsInteger, cdsCustomMenuItemsDOC_CODE.AsInteger) and
           (FdmDocClient.cdsDocItems.RecordCount > 0) then
          begin
            DocItemNo:= 1;
            FdmDocClient.cdsDocItems.First;
            while not FdmDocClient.cdsDocItems.Eof do
              begin
                if not FdmDocClient.cdsDocItemsIS_INACTIVE.AsBoolean and
                   FdmDocClient.UserHasAccessToDocItem(dialList) then
                  begin
                    NewMenuItem:= TDocMenuItem.Create(ParentMenuItem.Owner);
                    NewMenuItem.Caption:= FdmDocClient.cdsDocItemsDOC_ITEM_NAME.AsString;
                    NewMenuItem.Hint:= FdmDocClient.cdsDocItemsNOTES.AsString;
                    NewMenuItem.ImageIndex:=
                      SecretImageIndexes[cdsCustomMenuItemsIS_SUBMENU.AsBoolean, not FdmDocClient.UserHasAccessToDocItem(dialView)];
                    NewMenuItem.Enabled:= not FdmDocClient.cdsDocItemsAPPROVE_EMPLOYEE_CODE.IsNull;
                    NewMenuItem.OnClick:= MenuDocItemClick;

                    SetLength(FCustomMenuItems, Length(FCustomMenuItems)+1);
                    with FCustomMenuItems[Length(FCustomMenuItems)-1] do
                      begin
                        DocBranchCode:= FdmDocClient.cdsDocItemsDOC_BRANCH_CODE.AsInteger;
                        DocCode:= FdmDocClient.cdsDocItemsDOC_CODE.AsInteger;
                        DocItemCode:= FdmDocClient.cdsDocItemsDOC_ITEM_CODE.AsInteger;
                      end;

                    NewMenuItem.Tag:= Length(FCustomMenuItems);

                    ParentMenuItem.Insert(AddAfterIndex + DocItemNo, NewMenuItem);
                    Inc(DocItemNo);
                  end;

                FdmDocClient.cdsDocItems.Next;
              end;  { while }

            if not cdsCustomMenuItemsIS_SUBMENU.AsBoolean then
              RelativeMenuItem.Free;
          end
        else
          RelativeMenuItem.Enabled:= False;
      end;
  end;

  procedure LoadDocs;
  var
    Docs: TDocs;
  begin
    SetLength(Docs, cdsCustomMenuItems.RecordCount);
    cdsCustomMenuItems.ForEach/
      procedure begin
        Docs[cdsCustomMenuItems.RecNo-1]:=
          TDoc.Create(cdsCustomMenuItemsDOC_BRANCH_CODE.AsInteger, cdsCustomMenuItemsDOC_CODE.AsInteger);
      end;
    FdmDocClient.LoadDocs(Docs);
  end;

var
  RelativeMenuItemName: string;
begin
  DeleteMenuItemsOfType(mmMainMenu.Items, TDocMenuItem);
  DeleteMenuItemsOfType(pmCaption.Items, TDocMenuItem);

  FreeAndNil(FdmDocClient);
  FdmDocClient:= TdmDocClient.Create(nil);

  cdsCustomMenuItems.Open;
  try
    LoadDocs;

    SetLength(FCustomMenuItems, 0);

    cdsCustomMenuItems.Last;
    while not cdsCustomMenuItems.Bof do
      begin
        RelativeMenuItemName:= cdsCustomMenuItemsRELATIVE_MENU_ITEM_NAME.AsString;
        AddToRelative(RelativeMenuItemName);

        if cdsCustomMenuItemsIS_IN_CAPTION_MENU.AsBoolean then
          begin
            Insert('Caption', RelativeMenuItemName, 3);
            AddToRelative(RelativeMenuItemName);
          end;  { if }

        cdsCustomMenuItems.Prior;
      end;  { while }
  finally
    cdsCustomMenuItems.Close;
  end;  { try }
end;

procedure TfmMain.MenuDocItemClick(Sender: TObject);
begin
  with FCustomMenuItems[(Sender as TMenuItem).Tag - 1] do
    if not (FdmDocClient.LoadDoc(DocBranchCode, DocCode) and
            FdmDocClient.cdsDocItems.Locate('DOC_ITEM_CODE', DocItemCode, [])) then
      raise Exception.Create('Could not load menu doc item');

  FdmDocClient.ExecDocItemDataReadOnly;
end;

function TfmMain.ActionProductionOrderBaseTypeCode(
  Sender: TObject): Integer;
begin
  if (Sender is TProductionOrdersAction) then
    Result:= (Sender as TProductionOrdersAction).ProductionOrderBaseTypeCode
  else
    Result:= 0;
end;

procedure TfmMain.ActiveFormChange(Sender: TObject);
begin
  if Screen.ActiveForm is TQRStandardPreview then
    begin
      Screen.ActiveForm.BorderIcons:= [biSystemMenu];
      Screen.ActiveForm.BorderStyle:= bsDialog;
      Screen.ActiveForm.OnCanResize:= PrintPreviewCanResize;
    end;

  if Assigned(Screen) and Assigned(Screen.ActiveForm) and
     not (Screen.ActiveForm is TBaseForm) then
    ForceForegroundWindow(Screen.ActiveForm.Handle);
end;

procedure TfmMain.PrintPreviewCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  Resize:= False;
end;

procedure TfmMain.FormCreate(Sender: TObject);
var
  bvl: TBevel;
begin
  lblLogoAppName.Caption:= ReplaceAppParams(lblLogoAppName.Caption);
  TryLoadPictureFromResource(imgCross.Picture, AppCrossBitmapResourceName);

  SetDataSetsGetFieldValueAsStringEvent(Self);
  InitializeScale(Canvas);
  ilSmallImages.Rescale;
  ilLargeImages.Rescale;
  Rescale;

  for bvl in AllComponents.OfType<TBevel> do
    if StartsStr('bvlToolbar', bvl.Name) then
      bvl.Height:= 2;

  bvlTime.Top:= pnlTimeInfo.Height;
  bvlTime.Height:= 2;

  bvlMainMenuAndExceptEventIndicators.Top:=
    pnlTimeInfo.Height + bvlTime.Height + pnlMainMenuAndExceptEventIndicators.Height;

  pnlToolbars.AutoSize:= True;

  FPopupsWndProcHooker:= TWndProcHooker.Create(PopupList.Window);
  FPopupsWndProcHooker.AfterWndProc:= AfterPopupsWndProc;
  FPopupsWndProcHooker.BeforeWndProc:= BeforePopupsWndProc;

  AbmesDialogs.SetApplicationTitle(Application.Title);

  Screen.OnActiveFormChange:= ActiveFormChange;

  EnableCustomPeekView;

  pnlUserInfo.BringToFront;

  ReplaceAppParams(Self);
end;

procedure TfmMain.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FPopupsWndProcHooker);

  if Assigned(FPeekViewBitmap) then
    FreeAndNil(FPeekViewBitmap);
end;

function TfmMain.GetMainMenuButtonWithEmptyMenuItem: TToolButton;
var
  b: TToolButton;
begin
  Result:= nil;
  for b in tlbMainMenu do
    if (b.Style in [tbsButton, tbsCheck]) and Assigned(b.MenuItem) and (b.MenuItem.Count = 0) then
      begin
        Result:= b;
        Exit;
      end;  { if, for }
end;

procedure TfmMain.AfterPopupsWndProc(Sender: TWndProcHooker; var AMessage: TMessage);
var
  ActiveMainMenuButton: TToolButton;
begin
  if (AMessage.Msg = WM_INITMENUPOPUP) and (FActiveMainMenuItemHandle = 0) then
    begin
      FActiveMainMenuItemHandle:= TWMInitMenuPopup(AMessage).MenuPopup;
      ActiveMainMenuButton:= GetMainMenuButtonWithEmptyMenuItem;
      if Assigned(ActiveMainMenuButton) then
        ActiveMainMenuButton.Down:= True;
    end;  { if }
end;

procedure TfmMain.BeforePopupsWndProc(Sender: TWndProcHooker; var AMessage: TMessage);
var
  ActiveMainMenuButton: TToolButton;
begin
  if (AMessage.Msg = WM_UNINITMENUPOPUP) and (TWMInitMenuPopup(AMessage).MenuPopup = FActiveMainMenuItemHandle) then
    begin
      FActiveMainMenuItemHandle:= 0;
      ActiveMainMenuButton:= GetMainMenuButtonWithEmptyMenuItem;
      if Assigned(ActiveMainMenuButton) then
        ActiveMainMenuButton.Down:= False;
    end;  { if }
end;

procedure TfmMain.FormHide(Sender: TObject);
begin
  cdsToolbars.Close;

  if not IsDataModuleReleased(FdmDocClient) then
    FreeAndNil(FdmDocClient);
end;

procedure TfmMain.FormResize(Sender: TObject);
begin
  CapturePeekViewBitmap;
end;

procedure TfmMain.actCustomMenuItemsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaCustomMenuItems);
  TfmCustomMenuItems.ShowForm;
  LoadCustomMenuItems;
end;

procedure TfmMain.LoadProductionOrderBaseTypes;

  function CreateProductionOrdersAction(
    ASourceAction: TAction;
    AProductionOrderBaseTypeCode: Integer
  ): TProductionOrdersAction;
  begin
    Assert(Assigned(ASourceAction));

    Result:= TProductionOrdersAction.Create(Self);
    try
      Result.Name:= ASourceAction.Name + '_' + IntToStr(AProductionOrderBaseTypeCode);
      Result.Assign(ASourceAction);
      Result.Tag:= ASourceAction.Tag;
      Result.ProductionOrderBaseTypeCode:= AProductionOrderBaseTypeCode;
    except
      FreeAndNil(Result);
      raise;
    end;  { try }
  end;

  function CreateMllChangesDetailAction(
    ASourceAction: TAction;
    AModelChangeStatus: TModelChangeStatus;
    AProductionOrderBaseTypeCode: Integer
  ): TMllChangesDetailAction;
  begin
    Assert(Assigned(ASourceAction));

    Result:= TMllChangesDetailAction.Create(Self);
    try
      Result.Name:=
        ASourceAction.Name +
        '_' +
        IntToStr(Ord(AModelChangeStatus)) +
        '_' +
        IntToStr(AProductionOrderBaseTypeCode);

      Result.Assign(ASourceAction);
      Result.ModelChangeStatus:= AModelChangeStatus;
      Result.ProductionOrderBaseTypeCode:= AProductionOrderBaseTypeCode;
    except
      FreeAndNil(Result);
      raise;
    end;  { try }
  end;

  type
    TInsertLocation = (ilBefore, ilIn, ilAfter);

  function InsertNewMenuItemOfType(AMenuItemClass: TMenuItemClass; AAction: TAction;
    AInsertLocation: TInsertLocation; AExistingMenuItem: TMenuItem): TMenuItem;
  const
    ActionNamePrefix = 'act';
    MenuItemNamePrefix = 'mi';
    MenuLineNamePrefix = 'ml';
    CaptionPrefix = 'Caption';
    CaptionMenuItemNamePrefix = MenuItemNamePrefix + CaptionPrefix;
    CaptionMenuLineNamePrefix = MenuLineNamePrefix + CaptionPrefix;
  begin
    Assert(Assigned(AAction));
    Assert(Pos(ActionNamePrefix, AAction.Name) = 1);

    Result:= AMenuItemClass.Create(Self);
    try
      Result.Action:= AAction;
      if (Pos(CaptionMenuItemNamePrefix, AExistingMenuItem.Name) = 1) or
         (Pos(CaptionMenuLineNamePrefix, AExistingMenuItem.Name) = 1) then
        Result.Name:= StringReplace(AAction.Name, ActionNamePrefix, CaptionMenuItemNamePrefix, [])
      else
        Result.Name:= StringReplace(AAction.Name, ActionNamePrefix, MenuItemNamePrefix, []);

      case AInsertLocation of
        ilBefore:
          AExistingMenuItem.Parent.Insert(AExistingMenuItem.MenuIndex, Result);
        ilIn:
          AExistingMenuItem.Add(Result);
        ilAfter:
          AExistingMenuItem.Parent.Insert(AExistingMenuItem.MenuIndex + 1, Result);
      else
        raise Exception.Create('Invalid InsertLocation');
      end;  { case }
    except
      FreeAndNil(Result);
      raise;
    end;  { try }
  end;

  procedure InsertProductionOrdersMenuItems(
    ASourceAction: TAction;
    AProductionOrderBaseTypeCode: Integer;
    AExistingMenuItemsAfter: array of TMenuItem
  );
  var
    NewAction: TAction;
    i: Integer;
  begin
    NewAction:=
      CreateProductionOrdersAction(ASourceAction, AProductionOrderBaseTypeCode);

    for i:= Low(AExistingMenuItemsAfter) to High(AExistingMenuItemsAfter) do
      InsertNewMenuItemOfType(TProductionOrdersMenuItem, NewAction, ilBefore, AExistingMenuItemsAfter[i]);
  end;

  function GetMllcDetailsPopupMenu(AModelChangeStatus: TModelChangeStatus): TPopupMenu;
  begin
    case AModelChangeStatus of
      mcsRequestedChange:
        Result:= pmMllcRequestedChanges;
      mcsRejectedChange:
        Result:= pmMllcRejectedChanges;
      mcsRequestedMyChange:
        Result:= pmMllcRequestedMyChanges;
      mcsRejectedMyChange:
        Result:= pmMllcRejectedMyChanges;
      mcsMyMlRequestedChange:
        Result:= pmMllcMyMlRequestedChanges;
      mcsMyMlRejectedChange:
        Result:= pmMllcMyMlRejectedChanges;
      else
        raise Exception.Create('Invalid ModelChangeStatus');
    end;  { case }
  end;

  procedure InsertMllChangesDetailMenuItem(
    ASourceAction: TAction;
    AModelChangeStatus: TModelChangeStatus;
    AProductionOrderBaseTypeCode: Integer
  );
  var
    NewAction: TAction;
  begin
    NewAction:=
      CreateMllChangesDetailAction(ASourceAction, AModelChangeStatus, AProductionOrderBaseTypeCode);
    try
      InsertNewMenuItemOfType(TMllChangesDetailMenuItem, NewAction, ilIn, GetMllcDetailsPopupMenu(AModelChangeStatus).Items);
    except
      FreeAndNil(NewAction);
      raise;
    end;  { try }
  end;

  procedure InsertMllChangesDetailMenuItems(AProductionOrderBaseTypeCode: Integer);
  var
    ModelChangeStatus: TModelChangeStatus;
  begin
    for ModelCHangeStatus:= Low(TModelChangeStatus) to High(TModelChangeStatus) do
      InsertMllChangesDetailMenuItem(
        actMllChangesDetail, ModelChangeStatus, AProductionOrderBaseTypeCode);
  end;

  procedure ClearProductionOrderBaseTypeData;
  var
    i: Integer;
  begin
    for i:= Low(ProductionOrderBaseTypes) to High(ProductionOrderBaseTypes) do
      with ProductionOrderBaseTypes[i] do
        begin
          No:= 0;
          Name:= '';
          Abbrev:= '';
          NamePlural:= '';
          AbbrevPlural:= '';
        end;  { with, for }
  end;

  procedure ClearMllcDetailPopupMenus;
  var
    ModelChangeStatus: TModelChangeStatus;
  begin
    for ModelCHangeStatus:= Low(TModelChangeStatus) to High(TModelChangeStatus) do
      GetMllcDetailsPopupMenu(ModelChangeStatus).Items.Clear;
  end;

  procedure CreateProductionOrdersSubMenu(AMenuItem: TMenuItem;
    AProductionOrderBaseTypeCode: Integer);
  var
    mi: TMenuItem;
    NewAction: TAction;
    NewMenuItem: TMenuItem;
  begin
    for mi in pmProductionOrderMenuTemplate.Items do
      if Assigned(mi.Action) then
        begin
          NewAction:= CreateProductionOrdersAction((mi.Action as TAction), AProductionOrderBaseTypeCode);
          InsertNewMenuItemOfType(TProductionOrdersMenuItem, NewAction, ilIn, AMenuItem).Tag:= mi.Tag;
        end
      else
        begin
          NewMenuItem:= TMenuItem.Create(Self);
          try
            NewMenuItem.AssignMenuItem(mi);
            AMenuItem.Add(NewMenuItem);
          except
            FreeAndNil(NewMenuItem);
            raise;
          end;
        end;
  end;  { CreateProductionOrdersSubMenu }

  function ProductionOrderBaseTypeLocation(AProductionOrderBaseTypeCode: Integer): TMenuItem;
  begin
    case IntToProdOrderBaseType(AProductionOrderBaseTypeCode) of
      pobtSaleCover:
        Result:= miProductionMenu;
      pobtEnvCover:
        Result:= miEnvironmentElementsSubMenu;
      pobtDeliveryCover:
        Result:= miDeliveriesInputSubMenu;
      pobtProjectCover:
        Result:= miEnvironmentProjectsSubMenu;
      pobtOccCover:
        Result:= miEmployeesInputSubMenu;
    else
      Result:= nil;
    end;
  end;  { ProductionOrderBaseTypeLocation }

var
  ProductionOrderBaseTypeCode: Integer;
begin
  ClearMllcDetailPopupMenus;
  DeleteMenuItemsOfType(mmMainMenu.Items, TProductionOrderBaseTypesDependableMenuItem);
  DeleteMenuItemsOfType(pmCaption.Items, TProductionOrderBaseTypesDependableMenuItem);
  DeleteMenuItemsOfType(pmPendingMLLChanges.Items, TProductionOrderBaseTypesDependableMenuItem);
  FreeComponentsOfType(Self, TProductionOrderBaseTypesDependableAction);
  ClearProductionOrderBaseTypeData;

  cdsProductionOrderBaseTypes.Open;
  try
    while not cdsProductionOrderBaseTypes.Eof do
      begin
        ProductionOrderBaseTypeCode:=
          cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_CODE.AsInteger;

        ProductionOrderBaseTypes[ProductionOrderBaseTypeCode].No:=
          cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NO.AsInteger;

        ProductionOrderBaseTypes[ProductionOrderBaseTypeCode].Name:=
          cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NAME.AsString;

        ProductionOrderBaseTypes[ProductionOrderBaseTypeCode].Abbrev:=
          cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_ABBREV.AsString;

        ProductionOrderBaseTypes[ProductionOrderBaseTypeCode].NamePlural:=
          cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NAME_PL.AsString;

        ProductionOrderBaseTypes[ProductionOrderBaseTypeCode].AbbrevPlural:=
          cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_ABBREV_PL.AsString;

        InsertMllChangesDetailMenuItems(ProductionOrderBaseTypeCode);

        if Assigned(ProductionOrderBaseTypeLocation(ProductionOrderBaseTypeCode)) then
          CreateProductionOrdersSubMenu(
            ProductionOrderBaseTypeLocation(ProductionOrderBaseTypeCode),
            ProductionOrderBaseTypeCode
          );

        cdsProductionOrderBaseTypes.Next;
      end;  { while }
  finally
    cdsProductionOrderBaseTypes.Close;
  end;  { try }

  CopyMenuItemsIntoMenuItem(pmMllcRequestedChanges.Items, miMllcRequestedChange);
  CopyMenuItemsIntoMenuItem(pmMllcRejectedChanges.Items, miMllcRejectedChange);
  CopyMenuItemsIntoMenuItem(pmMllcRequestedMyChanges.Items, miMllcRequestedMyChange);
  CopyMenuItemsIntoMenuItem(pmMllcRejectedMyChanges.Items, miMllcRejectedMyChange);
  CopyMenuItemsIntoMenuItem(pmMllcMyMlRequestedChanges.Items, miMllcMyMlRequestedChange);
  CopyMenuItemsIntoMenuItem(pmMllcMyMlRejectedChanges.Items, miMllcMyMlRejectedChange);

  CopyMenuItemsIntoMenuItem(pmPendingMLLChanges.Items, miCaptionChangeRequestsMenu);

  CopyMenuItemsIntoMenuItem(pmExceptEventIndicators.Items, miCaptionExceptEventIndicators);
  CopyMenuItemsIntoMenuItem(pmExceptEventTaskRealIndicators.Items, miCaptionExceptEventTaskIndicators);

  SetProductionOrderToolbars;
end;

procedure TfmMain.LoadUserToolbars;
var
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsUserToolbars.Close;
    cdsUserToolbars.Params.ParamByName('USER_CODE').AsInteger:= LoginContext.UserCode;
    cdsUserToolbars.Open;

    SetCrossStateToolbars;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TfmMain.actProcessActionsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmProcessActions, uaProcessActions, uaProcessActionsEdit);
end;

procedure TfmMain.actProcessBaseOperationsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmProcessBaseOperationsTree, uaProcessBaseOperationsTree, uaProcessBaseOperationsTreeEdit);
end;

procedure TfmMain.actProcessConcreteOperationsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmProcessConcreteOperationsTree, uaProcessConcreteOperationsTree, uaProcessConcreteOperationsTreeEdit);
end;

procedure TfmMain.actProcessFunctionsTreeExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmProcessFunctionsTree, uaProcessFunctionsTree, uaProcessFunctionsTreeEdit);
end;

procedure TfmMain.actProcessKnowlsTreeExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmProcessKnowlsTree, uaProcessKnowlsTree, uaProcessKnowlsTreeEdit);
end;

procedure TfmMain.actProductionOrdersExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaProductionOrdersBase + ActionProductionOrderBaseTypeCode(Sender));
  TfmProductionOrders.ShowForm(
    nil,
    nil,
    GetStartEditMode(GetUserActivityEditMode(uaProductionOrdersEdit)),
    True,
    ActionProductionOrderBaseTypeCode(Sender)
  );
end;

procedure TfmMain.actProductionOrdersUpdate(Sender: TObject);
begin
  SetProductionOrderActionCaptionAndHint(Sender, SProductionOrders);
end;

procedure TfmMain.actXModelsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaXModelsBase + ActionProductionOrderBaseTypeCode(Sender));
  TfmXModels.ShowForm(
    nil,
    nil,
    GetStartEditMode(emEdit),
    True,
    ActionProductionOrderBaseTypeCode(Sender)
  );
end;

procedure TfmMain.actXModelsUpdate(Sender: TObject);
begin
  SetProductionOrderActionCaptionAndHint(Sender, SXModels);
end;

procedure TfmMain.actMllChangesDetailExecute(Sender: TObject);
begin
  if (Sender is TMllChangesDetailAction) then
    with (Sender as TMllChangesDetailAction) do
      ShowXModels(ProductionOrderBaseTypeCode, ModelChangeStatus);
end;

procedure TfmMain.actMllChangesDetailUpdate(Sender: TObject);
begin
  if (Sender is TMllChangesDetailAction) then
    with (Sender as TMllChangesDetailAction) do
      MllChangeActionUpdate(
        (Sender as TMllChangesDetailAction),
        ModelChangeStatus,
        ProductionOrderBaseTypeCode);
end;

procedure TfmMain.actWorkDefExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmShiftRegimes, uaShiftRegimes, uaShiftRegimesEdit);
end;

procedure TfmMain.actCraftTypesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmCraftTypes, uaCraftTypes, uaCraftTypesEdit);
end;

procedure TfmMain.actCraftsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmCrafts, uaCrafts, uaCraftsEdit);
end;

procedure TfmMain.actCommonGroupsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaCommonGroups);
  TfmCommonGroups.ShowForm(nil, nil, GetStartEditMode(GetUserActivityEditMode(uaCommonGroupsEdit)), doNone, True, nil, pcNormal);
end;

procedure TfmMain.actStageLevelTasksExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaStageLevelTasksBase + ActionProductionOrderBaseTypeCode(Sender));
  TfmStageLevelTasks.ShowForm(
    nil,
    nil,
    GetStartEditMode(emEdit),
    True,
    ActionProductionOrderBaseTypeCode(Sender)
  );
end;

procedure TfmMain.actStageLevelTasksUpdate(Sender: TObject);
begin
  SetProductionOrderActionCaptionAndHint(Sender, SStageLevelTasks);
end;

procedure TfmMain.actStartNewAppInstanceExecute(Sender: TObject);
begin
  dmMain.StartNewAppInstance;
end;

procedure TfmMain.actWorkPrioritiesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmWorkPriorities, uaWorkPriorities, uaWorkPrioritiesEdit);
end;

procedure TfmMain.actEngineeringOrderTypesExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmEngineeringOrderTypes, uaEngineeringOrderTypes, uaEngineeringOrderTypesEdit);
end;

procedure TfmMain.actNewEngineeringOrderExecute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  TfmEngineeringOrder.ShowForm(nil, nil, emInsert);
end;

procedure TfmMain.actNewFinancialDeficitCoverDecisionExecute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  LoginContext.CheckUserActivity(uaNewFinDeficitCoverDecision);
  TfmDeficitCoverDecision.ShowForm(nil, nil, emInsert, False, doNone, pobtSaleCover, pcFinancial);
end;

procedure TfmMain.actNewFinancialOrderExecute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  LoginContext.CheckUserActivity(uaNewFinancialOrder);
  TfmFinOrder.ShowForm(nil, nil, emInsert);
end;

procedure TfmMain.actNewFinancialSaleRequestGroupExecute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  LoginContext.CheckUserActivity(uaNewFinSaleRequestGroup);
  TfmSaleRequestGroup.ShowForm(nil, nil, emInsert, doNone, pcFinancial);
end;

procedure TfmMain.actNewFinancialStoreDealInExecute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  CheckNewStoreDealUserActivities(ioIn, LoginContext.CurrentDeptCode, pcFinancial);
  RepeatAction(actNewFinancialStoreDealInInternal, SConfirmNewStoreDealIn);
end;

procedure TfmMain.actNewFinancialStoreDealInInternalExecute(Sender: TObject);
begin
  if (LoginContext.CurrentDeptCode = 0) then
    raise Exception.Create(SMissingCurrentDept);

  if not dmMain.SvrDeptsTree.IsDeptStore(LoginContext.CurrentDeptCode) then
    raise Exception.Create(SCurrentDeptIsNotStore);

  TfmStoreDealIn.ShowForm(nil, nil, emInsert, doNone, pcFinancial);
end;

procedure TfmMain.actNewFinancialStoreDealOutExecute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  CheckNewStoreDealUserActivities(ioOut, LoginContext.CurrentDeptCode, pcFinancial);
  RepeatAction(actNewFinancialStoreDealOutInternal, SConfirmNewStoreDealOut);
end;

procedure TfmMain.actNewFinancialStoreDealOutInternalExecute(Sender: TObject);
begin
  if (LoginContext.CurrentDeptCode = 0) then
    raise Exception.Create(SMissingCurrentDept);

  if not dmMain.SvrDeptsTree.IsDeptStore(LoginContext.CurrentDeptCode) then
    raise Exception.Create(SCurrentDeptIsNotStore);

  TfmStoreDealOut.ShowForm(nil, nil, emInsert, doNone, pcFinancial);
end;

procedure TfmMain.actNewFinancialStoreRequestExecute(Sender: TObject);
begin
  CheckContextDateSystemEditMode;
  LoginContext.CheckUserActivity(uaNewFinStoreRequest);
  TfmStoreRequest.ShowForm(nil, nil, emInsert, 0, 0, nil, nil, nil, nil, pcFinancial);
end;

procedure TfmMain.actEngineeringOrdersExecute(Sender: TObject);
begin
  TfmEngineeringOrders.ShowForm(nil, nil, GetStartEditMode(emEdit));
end;

procedure TfmMain.actBOIWasteOrdersExpenseExecute(Sender: TObject);
var
  EditMode: TEditMode;
begin
  LoginContext.CheckUserActivity(uaBOIOrdersExpense);
  EditMode:= GetUserActivityEditMode(uaBOIOrderExpenseEdit);
  EditMode:= GetStartEditMode(EditMode);
  TfmBOIWasteOrders.ShowForm(nil, nil, EditMode, doNone, True, bmExpense);
end;

procedure TfmMain.actBOIWasteOrdersInvestExecute(Sender: TObject);
var
  EditMode: TEditMode;
begin
  LoginContext.CheckUserActivity(uaBOIOrdersInvest);
  EditMode:= GetUserActivityEditMode(uaBOIOrderInvestEdit);
  EditMode:= GetStartEditMode(EditMode);
  TfmBOIWasteOrders.ShowForm(nil, nil, EditMode, doNone, True, bmInvest);
end;

procedure TfmMain.actBudgetOrdersInvestExecute(Sender: TObject);
var
  EditMode: TEditMode;
begin
  LoginContext.CheckUserActivity(uaBudgetOrdersInvest);
  EditMode:= GetUserActivityEditMode(uaBudgetOrderInvestEdit);
  EditMode:= GetStartEditMode(EditMode);
  TfmBudgetOrders.ShowForm(nil, nil, EditMode, doNone, True, bmInvest);
end;

procedure TfmMain.actBudgetProductsExecute(Sender: TObject);
var
  em: TEditMode;
begin
  LoginContext.CheckUserActivity(uaBudgetClassesTree);

  if LoginContext.HasUserActivity(uaBudgetClassesTreeEdit) then
    em:= emEdit
  else
    em:= emReadOnly;

  TfmProductsTreeEditor.ShowForm(nil, 0, tnRootProductCode, GetStartEditMode(em), tdsNone, pcBudget);
end;

procedure TfmMain.actBOIProductOrdersInvestExecute(Sender: TObject);
var
  EditMode: TEditMode;
begin
  LoginContext.CheckUserActivity(uaBOIOrdersInvest);
  EditMode:= GetUserActivityEditMode(uaBOIOrderInvestEdit);
  EditMode:= GetStartEditMode(EditMode);
  TfmBOIProductOrders.ShowForm(nil, nil, EditMode, doNone, True, bmInvest);
end;

procedure TfmMain.actBudgetInvestExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaBudgetInvest);
  TfmBudget.ShowForm(nil, nil, emEdit, doNone, True, bmInvest);
end;

procedure TfmMain.actBudgetNomsExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaBudgetNoms);
  TfmNoms.ShowForm(nil, nil, GetStartEditMode(GetUserActivityEditMode(uaBudgetNomsEdit)), doNone, True, pcBudget);
end;

procedure TfmMain.actBOICompanyOrdersInvestExecute(Sender: TObject);
var
  EditMode: TEditMode;
begin
  LoginContext.CheckUserActivity(uaBOIOrdersInvest);
  EditMode:= GetUserActivityEditMode(uaBOIOrderInvestEdit);
  EditMode:= GetStartEditMode(EditMode);
  TfmBOICompanyOrders.ShowForm(nil, nil, EditMode, doNone, True, bmInvest);
end;

procedure TfmMain.actBOIMarkingOrdersInvestExecute(Sender: TObject);
var
  EditMode: TEditMode;
begin
  LoginContext.CheckUserActivity(uaBOIOrdersInvest);
  EditMode:= GetUserActivityEditMode(uaBOIOrderInvestEdit);
  EditMode:= GetStartEditMode(EditMode);
  TfmBOIMarkingOrders.ShowForm(nil, nil, EditMode, doNone, True, bmInvest);
end;

procedure TfmMain.actBudgetOrdersExpenseExecute(Sender: TObject);
var
  EditMode: TEditMode;
begin
  LoginContext.CheckUserActivity(uaBudgetOrdersExpense);
  EditMode:= GetUserActivityEditMode(uaBudgetOrderExpenseEdit);
  EditMode:= GetStartEditMode(EditMode);
  TfmBudgetOrders.ShowForm(nil, nil, EditMode, doNone, True, bmExpense);
end;

procedure TfmMain.actEmployeeDayAbsenceReasonsExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmEmployeeDayAbsenceReasons,
    uaEmployeeDayAbsenceReasons, uaEmployeeDayAbsenceReasonsEdit);
end;

procedure TfmMain.actEmployeeHourAvailabilityModifierReasonsExecute(
  Sender: TObject);
begin
  ShowAnEditForm(TfmEmployeeHourAvailabilityModifierReasons,
    uaEmployeeHourAvailabilityModifierReasons, uaEmployeeHourAvailabilityModifierReasonsEdit);
end;

procedure TfmMain.actEmployeesAvailabilityExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmEmployeesAvailability, uaEmployeesAvailbility);
end;

procedure TfmMain.actEmployeesTotalAvailabilityExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaEmployeesTotalAvailbility);
  TfmEmployeesTotalAvailability.ShowForm;
end;

procedure TfmMain.actEmployeesAvailabilityGraphExecute(Sender: TObject);
begin
  ShowAnEditForm(TfmEmployeesAvailabilityGraph, uaEmployeesAvailabilityGraph);
end;

procedure TfmMain.CheckContextDateSystemEditMode;
begin
  if LoginContext.IsSessionReadOnly then
    raise Exception.Create(uClientApp.ReplaceAppParams(SCannotModifyDataInContextDateSystemReadOnlyMode));
end;

procedure TfmMain.OnExceptionSaveExceptionMessageAndClass(Sender: TObject; E: Exception);
begin
  FSavedExceptionMessage:= E.Message;
  FSavedExceptionClassName:= E.ClassName;
end;

function TfmMain.GetInnerFormExceptions(AOnException: TOnExceptionProc): TNestProcRec;
begin
  Result:=
    TNestProcRec.Create(
      procedure (AProc: TProc)
      var
        SavedOnException: TExceptionEvent;
      begin
        FSavedExceptionMessage:= '';
        FSavedExceptionClassName:= '';

        SavedOnException:= ApplicationEvents.OnException;
        fmMain.ApplicationEvents.OnException:= OnExceptionSaveExceptionMessageAndClass;
        try
          AProc;
        finally
          fmMain.ApplicationEvents.OnException:= SavedOnException;
        end;

        if (FSavedExceptionMessage <> '') or (FSavedExceptionClassName <> '') then
          try
            AOnException(FSavedExceptionMessage, FSavedExceptionClassName);
          finally
            FSavedExceptionMessage:= '';
            FSavedExceptionClassName:= '';
          end;
      end);
end;

procedure TfmMain.PopupCaptionMenu;
begin
  pmCaption.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TfmMain.CapturePeekViewBitmap;
begin
  if Assigned(FPeekViewBitmap) then
    FreeAndNil(FPeekViewBitmap);

  Application.ProcessMessages;
  FPeekViewBitmap:= CaptureWinControlImage(Self);
end;

procedure TfmMain.SetUserPicture;
begin
  if Assigned(dmMain.UserPicture) then
    FUserPicture:= dmMain.UserPicture
  else
    FUserPicture:= imgDefaultUserPicture.Picture;

  pnlUserPicture.Height:= Trunc(SimpleRoundTo(imgUserPicture.Width * FUserPicture.Graphic.Height / FUserPicture.Graphic.Width));

  imgUserPicture.Picture:= FUserPicture;
  imgUserPicture.Visible:= False;
  imgUserPicture.Visible:= True;

  FUserPictureSet:= True;
end;

end.


