unit uDBPooledDataModuleHelper;

interface

uses
  dDBPooledDataModule, uUtils, uSessionContext, dPooledDataModule,
  dCommon, dCompanies, dDeficit, dDeliveries, dDeptsTree, dDeptsTreeEditor,
  dGroupSales, dInvoices, dLogin, dAdmin, dCompany, dProductQuantitiesTree,
  dProductsTree, dProductsTreeEditor, dStore, dStoreRequests, dVIM, dSaleOrders,
  dParRelProducts, dSales, dSalesCommon, dSaleReports, dSpecifications,
  dXModels, dMfgReports, dModelMovements, dModelChanges, dModelReports,
  dNonDbUtils, dDoc, dFilter, dNeeds, dProductionProductsTree, dExtensions,
  dProductTreeNodeFilter, dParamProductTreeNodeFilter, dDeptTreeNodeFilter,
  dBaseGroups, dHumanResource, dCapacity, dBudget, dDocItemViewGenerators,
  dShifts, dDocXML, dEngineering, dEmployeeAvailability, dOrganisationTasks,
  dExceptEvents, dFinance, dProcesses, dCompanyFilter;

function SvrAdmin: IdmAdminProxy;
function SvrBaseGroups: IdmBaseGroupsProxy;
function SvrBudget: IdmBudgetProxy;
function SvrCapacity: IdmCapacityProxy;
function SvrCommon: IdmCommonProxy;
function SvrCompanies: IdmCompaniesProxy;
function SvrCompany: IdmCompanyProxy;
function SvrDeficit: IdmDeficitProxy;
function SvrDeliveries: IdmDeliveriesProxy;
function SvrDeptsTree: IdmDeptsTreeProxy;
function SvrDeptsTreeEditor: IdmDeptsTreeEditorProxy;
function SvrDeptTreeNodeFilter: IdmDeptTreeNodeFilterProxy;
function SvrDoc: IdmDocProxy;
function SvrDocItemViewGenerators: IdmDocItemViewGeneratorsProxy;
function SvrDocXML: IdmDocXMLProxy;
function SvrEmployeeAvailability: IdmEmployeeAvailabilityProxy;
function SvrEngineering: IdmEngineeringProxy;
function SvrExceptEvents: IdmExceptEventsProxy;
function SvrExtensions: IdmExtensionsProxy;
function SvrFilter: IdmFilterProxy;
function SvrFinance: IdmFinanceProxy;
function SvrGroupSales: IdmGroupSalesProxy;
function SvrHumanResource: IdmHumanResourceProxy;
function SvrInvoices: IdmInvoicesProxy;
function SvrLogin: IdmLoginProxy;
function SvrMfgReports: IdmMfgReportsProxy;
function SvrModelChanges: IdmModelChangesProxy;
function SvrModelMovements: IdmModelMovementsProxy;
function SvrModelReports: IdmModelReportsProxy;
function SvrNeeds: IdmNeedsProxy;
function SvrNonDbUtils: IdmNonDbUtilsProxy;
function SvrOrganisationTasks: IdmOrganisationTasksProxy;
function SvrParamProductTreeNodeFilter: IdmParamProductTreeNodeFilterProxy;
function SvrParRelProducts: IdmParRelProductsProxy;
function SvrProcesses: IdmProcessesProxy;
function SvrProductionProductsTree: IdmProductionProductsTreeProxy;
function SvrProductQuantitiesTree: IdmProductQuantitiesTreeProxy;
function SvrProductsTree: IdmProductsTreeProxy;
function SvrProductsTreeEditor: IdmProductsTreeEditorProxy;
function SvrProductTreeNodeFilter: IdmProductTreeNodeFilterProxy;
function SvrSaleOrders: IdmSaleOrdersProxy;
function SvrSaleReports: IdmSaleReportsProxy;
function SvrSales: IdmSalesProxy;
function SvrSalesCommon: IdmSalesCommonProxy;
function SvrShifts: IdmShiftsProxy;
function SvrSpecifications: IdmSpecificationsProxy;
function SvrStore: IdmStoreProxy;
function SvrStoreRequests: IdmStoreRequestsProxy;
function SvrVIM: IdmVIMProxy;
function SvrXModels: IdmXModelsProxy;
function SvrCompanyFilter: IdmCompanyFilterProxy;

implementation

function SvrAdmin: IdmAdminProxy;
begin
  Result:= TdmAdminProxy.Singleton;
end;

function SvrBaseGroups: IdmBaseGroupsProxy;
begin
  Result:= TdmBaseGroupsProxy.Singleton;
end;

function SvrBudget: IdmBudgetProxy;
begin
  Result:= TdmBudgetProxy.Singleton;
end;

function SvrCapacity: IdmCapacityProxy;
begin
  Result:= TdmCapacityProxy.Singleton;
end;

function SvrCommon: IdmCommonProxy;
begin
  Result:= TdmCommonProxy.Singleton;
end;

function SvrCompanies: IdmCompaniesProxy;
begin
  Result:= TdmCompaniesProxy.Singleton
end;

function SvrCompanyFilter: IdmCompanyFilterProxy;
begin
  Result:= TdmCompanyFilterProxy.Singleton;
end;

function SvrCompany: IdmCompanyProxy;
begin
  Result:= TdmCompanyProxy.Singleton;
end;

function SvrDeficit: IdmDeficitProxy;
begin
  Result:= TdmDeficitProxy.Singleton;
end;

function SvrDeliveries: IdmDeliveriesProxy;
begin
  Result:= TdmDeliveriesProxy.Singleton;
end;

function SvrDeptsTreeEditor: IdmDeptsTreeEditorProxy;
begin
  Result:= TdmDeptsTreeEditorProxy.Singleton;
end;

function SvrDeptsTree: IdmDeptsTreeProxy;
begin
  Result:= TdmDeptsTreeProxy.Singleton;
end;

function SvrDeptTreeNodeFilter: IdmDeptTreeNodeFilterProxy;
begin
  Result:= TdmDeptTreeNodeFilterProxy.Singleton;
end;

function SvrDocItemViewGenerators: IdmDocItemViewGeneratorsProxy;
begin
  Result:= TdmDocItemViewGeneratorsProxy.Singleton;
end;

function SvrDoc: IdmDocProxy;
begin
  Result:= TdmDocProxy.Singleton;
end;

function SvrDocXML: IdmDocXMLProxy;
begin
  Result:= TdmDocXMLProxy.Singleton;
end;

function SvrEmployeeAvailability: IdmEmployeeAvailabilityProxy;
begin
  Result:= TdmEmployeeAvailabilityProxy.Singleton;
end;

function SvrEngineering: IdmEngineeringProxy;
begin
  Result:= TdmEngineeringProxy.Singleton;
end;

function SvrExceptEvents: IdmExceptEventsProxy;
begin
  Result:= TdmExceptEventsProxy.Singleton;
end;

function SvrExtensions: IdmExtensionsProxy;
begin
  Result:= TdmExtensionsProxy.Singleton;
end;

function SvrFilter: IdmFilterProxy;
begin
  Result:= TdmFilterProxy.Singleton;
end;

function SvrFinance: IdmFinanceProxy;
begin
  Result:= TdmFinanceProxy.Singleton;
end;

function SvrGroupSales: IdmGroupSalesProxy;
begin
  Result:= TdmGroupSalesProxy.Singleton;
end;

function SvrHumanResource: IdmHumanResourceProxy;
begin
  Result:= TdmHumanResourceProxy.Singleton;
end;

function SvrInvoices: IdmInvoicesProxy;
begin
  Result:= TdmInvoicesProxy.Singleton;
end;

function SvrLogin: IdmLoginProxy;
begin
  Result:= TdmLoginProxy.Singleton;
end;

function SvrMfgReports: IdmMfgReportsProxy;
begin
  Result:= TdmMfgReportsProxy.Singleton;
end;

function SvrModelChanges: IdmModelChangesProxy;
begin
  Result:= TdmModelChangesProxy.Singleton;
end;

function SvrModelMovements: IdmModelMovementsProxy;
begin
  Result:= TdmModelMovementsProxy.Singleton;
end;

function SvrModelReports: IdmModelReportsProxy;
begin
  Result:= TdmModelReportsProxy.Singleton;
end;

function SvrNeeds: IdmNeedsProxy;
begin
  Result:= TdmNeedsProxy.Singleton;
end;

function SvrNonDbUtils: IdmNonDbUtilsProxy;
begin
  Result:= TdmNonDbUtilsProxy.Singleton;
end;

function SvrOrganisationTasks: IdmOrganisationTasksProxy;
begin
  Result:= TdmOrganisationTasksProxy.Singleton;
end;

function SvrParamProductTreeNodeFilter: IdmParamProductTreeNodeFilterProxy;
begin
  Result:= TdmParamProductTreeNodeFilterProxy.Singleton;
end;

function SvrParRelProducts: IdmParRelProductsProxy;
begin
  Result:= TdmParRelProductsProxy.Singleton;
end;

function SvrProcesses: IdmProcessesProxy;
begin
  Result:= TdmProcessesProxy.Singleton;
end;

function SvrProductionProductsTree: IdmProductionProductsTreeProxy;
begin
  Result:= TdmProductionProductsTreeProxy.Singleton;
end;

function SvrProductQuantitiesTree: IdmProductQuantitiesTreeProxy;
begin
  Result:= TdmProductQuantitiesTreeProxy.Singleton;
end;

function SvrProductsTreeEditor: IdmProductsTreeEditorProxy;
begin
  Result:= TdmProductsTreeEditorProxy.Singleton;
end;

function SvrProductsTree: IdmProductsTreeProxy;
begin
  Result:= TdmProductsTreeProxy.Singleton;
end;

function SvrProductTreeNodeFilter: IdmProductTreeNodeFilterProxy;
begin
  Result:= TdmProductTreeNodeFilterProxy.Singleton;
end;

function SvrSaleOrders: IdmSaleOrdersProxy;
begin
  Result:= TdmSaleOrdersProxy.Singleton;
end;

function SvrSaleReports: IdmSaleReportsProxy;
begin
  Result:= TdmSaleReportsProxy.Singleton;
end;

function SvrSalesCommon: IdmSalesCommonProxy;
begin
  Result:= TdmSalesCommonProxy.Singleton;
end;

function SvrSales: IdmSalesProxy;
begin
  Result:= TdmSalesProxy.Singleton;
end;

function SvrShifts: IdmShiftsProxy;
begin
  Result:= TdmShiftsProxy.Singleton;
end;

function SvrSpecifications: IdmSpecificationsProxy;
begin
  Result:= TdmSpecificationsProxy.Singleton;
end;

function SvrStore: IdmStoreProxy;
begin
  Result:= TdmStoreProxy.Singleton;
end;

function SvrStoreRequests: IdmStoreRequestsProxy;
begin
  Result:= TdmStoreRequestsProxy.Singleton;
end;

function SvrVIM: IdmVIMProxy;
begin
  Result:= TdmVIMProxy.Singleton;
end;

function SvrXModels: IdmXModelsProxy;
begin
  Result:= TdmXModelsProxy.Singleton;
end;

end.
