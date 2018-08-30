﻿program SembiumServer;

{$APPTYPE CONSOLE}

{$R 'SembiumServerManifest.res' 'SembiumServerManifest.rc'}
{$R 'ServerVersionInfo.res' '..\..\App\ServerVersionInfo.rc'}

uses
  uLocaleFix in '..\Common\uLocaleFix.pas',
  Windows,
  DBXDynalink,
  MidasLib,
  fSvrMain in 'fSvrMain.pas' {fmSvrMain},
  uObjParams in 'ServerConfig\uObjParams.pas',
  uLoginContext in '..\Common\uLoginContext.pas',
  uDBLoginContext in 'uDBLoginContext.pas',
  uUtils in '..\Common\uUtils.pas',
  uSvrUtils in 'uSvrUtils.pas',
  uProcessObjectIdentifierFormats in 'uProcessObjectIdentifierFormats.pas',
  uSvrTreeNodeParams in 'uSvrTreeNodeParams.pas',
  uSaleOrderTypes in '..\Common\uSaleOrderTypes.pas',
  uTreeNodeParams in '..\Common\uTreeNodeParams.pas',
  uCompanyKinds in '..\Common\uCompanyKinds.pas',
  uSaleChangeTypes in '..\Common\uSaleChangeTypes.pas',
  uProcesses in '..\Common\uProcesses.pas',
  uPeriods in '..\Common\uPeriods.pas',
  uQuantityDeficitFieldNames in '..\Common\uQuantityDeficitFieldNames.pas',
  uDealTypes in '..\Common\uDealTypes.pas',
  uGroupSales in '..\Common\uGroupSales.pas',
  uTreeNodes in '..\Common\uTreeNodes.pas',
  dPooledDataModule in 'dPooledDataModule.pas' {PooledDataModule: TDataModule},
  dDBPooledDataModule in 'dDBPooledDataModule.pas' {DBPooledDataModule: TRemoteDataModule},
  dDBDataModule in 'dDBDataModule.pas' {DBDataModule: TRemoteDataModule},
  dTree in 'dTree.pas' {dmTree: TDataModule},
  dNomTree in 'dNomTree.pas' {dmNomTree: TDataModule},
  dNomWithParamsTree in 'dNomWithParamsTree.pas' {dmNomWithParamsTree: TDataModule},
  dLogin in 'dLogin.pas' {dmLogin: TDataModule},
  dCommon in 'dCommon.pas' {dmCommon: TDataModule},
  dCompanies in 'dCompanies.pas' {dmCompanies: TDataModule},
  dCompany in 'dCompany.pas' {dmCompany: TDataModule},
  dDeficit in 'dDeficit.pas' {dmDeficit: TDataModule},
  dDeliveries in 'dDeliveries.pas' {dmDeliveries: TDataModule},
  dStore in 'dStore.pas' {dmStore: TDataModule},
  dGroupSales in 'dGroupSales.pas' {dmGroupSales: TDataModule},
  dStoreRequests in 'dStoreRequests.pas' {dmStoreRequests: TDataModule},
  dDeptsTree in 'dDeptsTree.pas' {dmDeptsTree: TDataModule},
  dDeptsTreeEditor in 'dDeptsTreeEditor.pas' {dmDeptsTreeEditor: TDataModule},
  dProductsTreeEditor in 'dProductsTreeEditor.pas' {dmProductsTreeEditor: TDataModule},
  dProductsTree in 'dProductsTree.pas' {dmProductsTree: TDataModule},
  dProductQuantitiesTree in 'dProductQuantitiesTree.pas' {dmProductQuantitiesTree: TDataModule},
  dSpecifications in 'dSpecifications.pas' {dmSpecifications: TDataModule},
  dInvoices in 'dInvoices.pas' {dmInvoices: TDataModule},
  dSalesCommon in 'dSalesCommon.pas' {dmSalesCommon: TDataModule},
  dSaleOrders in 'dSaleOrders.pas' {dmSaleOrders: TDataModule},
  dParRelProducts in 'dParRelProducts.pas' {dmParRelProducts: TDataModule},
  dSales in 'dSales.pas' {dmSales: TDataModule},
  dVIM in 'dVIM.pas' {dmVIM: TDataModule},
  dAdmin in 'dAdmin.pas' {dmAdmin: TDataModule},
  dSaleReports in 'dSaleReports.pas' {dmSaleReports: TDataModule},
  dXModels in 'dXModels.pas' {dmXModels: TDataModule},
  dMfgReports in 'dMfgReports.pas' {dmMfgReports: TDataModule},
  dModelMovements in 'dModelMovements.pas' {dmModelMovements: TDataModule},
  dModelChanges in 'dModelChanges.pas' {dmModelChanges: TDataModule},
  dModelReports in 'dModelReports.pas' {dmModelReports: TDataModule},
  uMaterialListLineChanges in '..\Common\uMaterialListLineChanges.pas',
  dNonDbUtils in 'dNonDbUtils.pas' {dmNonDbUtils: TDataModule},
  uProducts in '..\Common\uProducts.pas',
  dDoc in 'dDoc.pas' {dmDoc: TDataModule},
  dFilter in 'dFilter.pas' {dmFilter: TDataModule},
  dProductionProductsTree in 'dProductionProductsTree.pas' {dmProductionProductsTree: TDataModule},
  dNeeds in 'dNeeds.pas' {dmNeeds: TDataModule},
  uSpecTypes in '..\Common\uSpecTypes.pas',
  uProductionLevels in '..\Common\uProductionLevels.pas',
  uOperationTypes in '..\Common\uOperationTypes.pas',
  dExtensions in 'dExtensions.pas' {dmExtensions: TDataModule},
  uXMLUtils in '..\Common\uXMLUtils.pas',
  xChosenNodes in '..\Common\xChosenNodes.pas',
  dTreeNodeFilter in 'dTreeNodeFilter.pas' {dmTreeNodeFilter: TDataModule},
  dProductTreeNodeFilter in 'dProductTreeNodeFilter.pas' {dmProductTreeNodeFilter: TDataModule},
  dParamProductTreeNodeFilter in 'dParamProductTreeNodeFilter.pas' {dmParamProductTreeNodeFilter: TDataModule},
  dDeptTreeNodeFilter in 'dDeptTreeNodeFilter.pas' {dmDeptTreeNodeFilter: TDataModule},
  dBaseGroups in 'dBaseGroups.pas' {dmBaseGroups: TDataModule},
  dHumanResource in 'dHumanResource.pas' {dmHumanResource: TDataModule},
  uCapacity in '..\Common\uCapacity.pas',
  uServerMessageIds in '..\Common\uServerMessageIds.pas',
  uMessageUtils in '..\Common\uMessageUtils.pas',
  uEarningTypes in '..\Common\uEarningTypes.pas',
  dCapacity in 'dCapacity.pas' {dmCapacity: TDataModule},
  dBudget in 'dBudget.pas' {dmBudget: TDataModule},
  uDocUtils in '..\Common\uDocUtils.pas',
  dDocItemViewGenerators in 'dDocItemViewGenerators.pas' {dmDocItemViewGenerators: TDataModule},
  dShifts in 'dShifts.pas' {dmShifts: TDataModule},
  dDocXML in 'dDocXML.pas' {dmDocXML: TDataModule},
  dEngineering in 'dEngineering.pas' {dmEngineering: TRemoteDataModule} {dmEngineering: CoClass},
  xDeptDocItem in 'xDeptDocItem.pas',
  xEmployeeDocItem in 'xEmployeeDocItem.pas',
  xProfessionDocItem in 'xProfessionDocItem.pas',
  xTeamDocItem in 'xTeamDocItem.pas',
  xOccupationDocItem in 'xOccupationDocItem.pas',
  xTModelStage in 'xTModelStage.pas',
  xModelStageDocItem in 'xModelStageDocItem.pas',
  xModelOperationDocItem in 'xModelOperationDocItem.pas',
  xBaseGroupDocItem in 'xBaseGroupDocItem.pas',
  xProductStoreDocItem in 'xProductStoreDocItem.pas',
  xEngineeringOrderDocItem in 'xEngineeringOrderDocItem.pas',
  xStoreDealDocItem in 'xStoreDealDocItem.pas',
  xOperationMovementDocItem in 'xOperationMovementDocItem.pas',
  xTModelOperation in 'xTModelOperation.pas',
  xTTreeNode in 'xTTreeNode.pas',
  xTMeasure in 'xTMeasure.pas',
  xTSelfExistentStatus in 'xTSelfExistentStatus.pas',
  xTTransientStatus in 'xTTransientStatus.pas',
  xTPriority in 'xTPriority.pas',
  xTProductOrigin in 'xTProductOrigin.pas',
  xTPartnerClass in 'xTPartnerClass.pas',
  xTProfession in 'xTProfession.pas',
  xTTeam in 'xTTeam.pas',
  xTOperationType in 'xTOperationType.pas',
  xTBaseGroup in 'xTBaseGroup.pas',
  xTOperationMovementType in 'xTOperationMovementType.pas',
  xTStoreDealType in 'xTStoreDealType.pas',
  xTCurrency in 'xTCurrency.pas',
  xTProcess in 'xTProcess.pas',
  xTProductionOrderBaseType in 'xTProductionOrderBaseType.pas',
  xTProductionOrderType in 'xTProductionOrderType.pas',
  xTEngineeringOrderType in 'xTEngineeringOrderType.pas',
  xTCraftType in 'xTCraftType.pas',
  xTCraft in 'xTCraft.pas',
  xTOccupationPhase in 'xTOccupationPhase.pas',
  xTShift in 'xTShift.pas',
  xTCountry in 'xTCountry.pas',
  xTLanguage in 'xTLanguage.pas',
  xTEducation in 'xTEducation.pas',
  xPartnerDocItem in 'xPartnerDocItem.pas',
  xTDate in 'xTDate.pas',
  xTProductStore in 'xTProductStore.pas',
  xTProcessObject in 'xTProcessObject.pas',
  xTCompanyType in 'xTCompanyType.pas',
  xTDateInterval in 'xTDateInterval.pas',
  dEmployeeAvailability in 'dEmployeeAvailability.pas' {dmEmployeeAvailability: TDataModule},
  uSvrEmployeeAvailability in 'uSvrEmployeeAvailability.pas',
  uEmployeeAvailability in '..\Common\uEmployeeAvailability.pas',
  xTDept in 'xTDept.pas',
  xTPartner in 'xTPartner.pas',
  xBaseObjectDocItem in 'xBaseObjectDocItem.pas',
  xTEmpDayAbsenceReason in 'xTEmpDayAbsenceReason.pas',
  xTEmpDayAbsenceDocType in 'xTEmpDayAbsenceDocType.pas',
  xTEmpHourAvailModifierReason in 'xTEmpHourAvailModifierReason.pas',
  xEmpAvailModifierDocItem in 'xEmpAvailModifierDocItem.pas',
  xTEmpAvailModifierType in 'xTEmpAvailModifierType.pas',
  xTTime in 'xTTime.pas',
  xTTimeInterval in 'xTTimeInterval.pas',
  xTDateTime in 'xTDateTime.pas',
  xTEmpAvailModifier in 'xTEmpAvailModifier.pas',
  xTEngineeringOrder in 'xTEngineeringOrder.pas',
  xTOperationMovement in 'xTOperationMovement.pas',
  xTStoreDeal in 'xTStoreDeal.pas',
  xTBOIOrderType in 'xTBOIOrderType.pas',
  xTBudgetOrderClass in 'xTBudgetOrderClass.pas',
  xTBudgetOrderRegularityType in 'xTBudgetOrderRegularityType.pas',
  xBudgetOrderDocItem in 'xBudgetOrderDocItem.pas',
  xTBOIDistributionType in 'xTBOIDistributionType.pas',
  xBudgetOrderItemDocItem in 'xBudgetOrderItemDocItem.pas',
  xTDateUnit in 'xTDateUnit.pas',
  xTBudgetOrder in 'xTBudgetOrder.pas',
  xEmployeeDisciplineEventDocItem in 'xEmployeeDisciplineEventDocItem.pas',
  uUserActivityConsts in '..\Common\uUserActivityConsts.pas',
  xTDocItemActiveFieldsDefinition in 'xTDocItemActiveFieldsDefinition.pas',
  xTModelLine in 'xTModelLine.pas',
  xTProductEx in 'xTProductEx.pas',
  xProductDocItem in 'xProductDocItem.pas',
  uSaleDealTypes in '..\Common\uSaleDealTypes.pas',
  xTGlobals in 'xTGlobals.pas',
  xTEmployeeDisciplineEvent in 'xTEmployeeDisciplineEvent.pas',
  xTDocItem in 'xTDocItem.pas',
  xTOccupationEmployeeAssignmentRegime in 'xTOccupationEmployeeAssignmentRegime.pas',
  xOccupationEmployeeAssignmentDocItem in 'xOccupationEmployeeAssignmentDocItem.pas',
  xTFloatRange in 'xTFloatRange.pas',
  xTOccupationEmployeeAssignment in 'xTOccupationEmployeeAssignment.pas',
  xTOccupation in 'xTOccupation.pas',
  xTEmployee in 'xTEmployee.pas',
  xTEmployeeDisciplineRating in 'xTEmployeeDisciplineRating.pas',
  xTDisciplineEventType in 'xTDisciplineEventType.pas',
  uIntToText in '..\Common\uIntToText.pas',
  dSvrMain in 'dSvrMain.pas' {dmSvrMain: TDataModule},
  xTSalary in 'xTSalary.pas',
  dOrganisationTasks in 'dOrganisationTasks.pas' {dmOrganisationTasks: TDataModule},
  uOrganisationTaskUtils in '..\Common\uOrganisationTaskUtils.pas',
  uDeliveryDealTypes in '..\Common\uDeliveryDealTypes.pas',
  uAspectTypes in '..\Common\uAspectTypes.pas',
  uStreamTypes in '..\Common\uStreamTypes.pas',
  dExceptEvents in 'dExceptEvents.pas' {dmExceptEvents: TDataModule},
  uInvoiceTypes in '..\Common\uInvoiceTypes.pas',
  uBOIOrderTypes in '..\Common\uBOIOrderTypes.pas',
  uBOIDistributionTypes in '..\Common\uBOIDistributionTypes.pas',
  dFinance in 'dFinance.pas' {dmFinance: TDataModule},
  sMain in 'sMain.pas' {svcMain},
  uServiceUtils in 'uServiceUtils.pas',
  uOccupationUtils in '..\Common\uOccupationUtils.pas',
  xTBudgetOrderItem in 'xTBudgetOrderItem.pas',
  xTProduct in 'xTProduct.pas',
  uDeptDetailFlow in '..\Common\uDeptDetailFlow.pas',
  fSvrConfig in 'ServerConfig\fSvrConfig.pas' {fmSvrConfig},
  uLicenseUtils in '..\Common\uLicenseUtils.pas',
  dProcesses in 'dProcesses.pas' {dmProcesses: TDataModule},
  uPrcDeclarations in '..\Common\uPrcDeclarations.pas',
  uPrcUtils in '..\Common\uPrcUtils.pas',
  uPrcData in '..\Common\uPrcData.pas',
  uDBPrcData in 'uDBPrcData.pas',
  uTimeZoneUtils in 'uTimeZoneUtils.pas',
  uServerLoginContext in 'uServerLoginContext.pas',
  uBudgetUtils in '..\Common\uBudgetUtils.pas',
  fLockAllConnections in 'ServerConfig\fLockAllConnections.pas' {fmLockAllConnections},
  uSvrExecuteClient in 'uSvrExecuteClient.pas',
  uNestProc in '..\Common\uNestProc.pas',
  uDBPooledDataModuleHelper in 'uDBPooledDataModuleHelper.pas',
  uSessionContext in 'uSessionContext.pas',
  uBaseSessionContext in 'uBaseSessionContext.pas',
  uEnumeratorUtils in '..\Common\uEnumeratorUtils.pas',
  uExecuteServers in 'uExecuteServers.pas',
  uXMLEnumerators in '..\Common\uXMLEnumerators.pas',
  uChosenNodes in '..\Common\uChosenNodes.pas',
  uCompanyClasses in '..\Common\uCompanyClasses.pas',
  dSession in 'dSession.pas' {dmSession: TDataModule},
  uCompanyUtils in '..\Common\uCompanyUtils.pas',
  uSection in '..\Common\uSection.pas',
  uAttachedProperty in '..\Common\uAttachedProperty.pas',
  uDBUtils in 'uDBUtils.pas',
  uWindowsServiceUtils in 'uWindowsServiceUtils.pas',
  uAttributeUtils in '..\Common\uAttributeUtils.pas',
  uFuncUtils in '..\Common\uFuncUtils.pas',
  fSQLScriptor in 'SQLScriptor\fSQLScriptor.pas' {fmSQLScriptor},
  uSQLScriptor in 'SQLScriptor\uSQLScriptor.pas',
  uSQLScriptor.Variables in 'SQLScriptor\uSQLScriptor.Variables.pas',
  uSQLScriptor.Logger in 'SQLScriptor\uSQLScriptor.Logger.pas',
  uSQLScriptor.FilePosition in 'SQLScriptor\uSQLScriptor.FilePosition.pas',
  uSQLScriptor.StatementExecutor in 'SQLScriptor\uSQLScriptor.StatementExecutor.pas',
  uSQLScriptor.Parser in 'SQLScriptor\uSQLScriptor.Parser.pas',
  dCompanyFilter in 'dCompanyFilter.pas' {dmCompanyFilter: TProviderDataModule},
  uSvrCommand in 'ServerConfig\uSvrCommand.pas',
  uOWDPriorityTypes in '..\Common\uOWDPriorityTypes.pas',
  uAbmesClientDataSetHelper in '..\Common\uAbmesClientDataSetHelper.pas',
  uParallelUtils in '..\Common\uParallelUtils.pas',
  uDocItemStorageTypes in '..\Common\uDocItemStorageTypes.pas',
  uDCDModes in '..\Common\uDCDModes.pas',
  uSimpleDictionaries in '..\Common\uSimpleDictionaries.pas',
  uRttiUtils in '..\Common\uRttiUtils.pas',
  uSystemLocaleUtils in '..\Common\uSystemLocaleUtils.pas',
  xTVatReason in 'xTVatReason.pas',
  xTInvoiceItem in 'xTInvoiceItem.pas',
  xTInvoiceItems in 'xTInvoiceItems.pas',
  xTInvoice in 'xTInvoice.pas',
  xInvoiceDocItem in 'xInvoiceDocItem.pas',
  xTDocItems in 'xTDocItems.pas',
  xTDoc in 'xTDoc.pas',
  xTSaleShipment in 'xTSaleShipment.pas',
  xSaleShipmentDocItem in 'xSaleShipmentDocItem.pas',
  xTSaleShipments in 'xTSaleShipments.pas',
  xTSaleOrderType in 'xTSaleOrderType.pas',
  xTBorderDealType in 'xTBorderDealType.pas',
  xTShipmentType in 'xTShipmentType.pas',
  xTSaleType in 'xTSaleType.pas',
  xTAspectType in 'xTAspectType.pas',
  xTStreamType in 'xTStreamType.pas',
  xTSale in 'xTSale.pas',
  xSaleDocItem in 'xSaleDocItem.pas',
  xTSales in 'xTSales.pas',
  xTSaleRequestGroup in 'xTSaleRequestGroup.pas',
  xSaleRequestGroupDocItem in 'xSaleRequestGroupDocItem.pas',
  uSQLMonitorUtils in 'uSQLMonitorUtils.pas',
  xTModel in 'xTModel.pas',
  xTExceptEventType in 'xTExceptEventType.pas',
  xTExceptEventGenType in 'xTExceptEventGenType.pas',
  xTExceptEventLevel in 'xTExceptEventLevel.pas',
  xTExceptEvent in 'xTExceptEvent.pas',
  xExceptEventDocItem in 'xExceptEventDocItem.pas',
  xDeliveryProjectDocItem in 'xDeliveryProjectDocItem.pas',
  xTDeliveryType in 'xTDeliveryType.pas',
  xTDeliveryProject in 'xTDeliveryProject.pas',
  uIPAddressUtils in '..\Common\uIPAddressUtils.pas',
  uServerCallsLogger in 'uServerCallsLogger.pas',
  uJsonUtils in '..\Common\uJsonUtils.pas',
  uContentStorage.Contents in 'uContentStorage.Contents.pas',
  uSvrDocUtils in 'uSvrDocUtils.pas',
  uContentStorageLocatorsCache in 'uContentStorageLocatorsCache.pas',
  uDocItemStorageBaseTypes in '..\Common\uDocItemStorageBaseTypes.pas',
  uAuthenticationToken in 'uAuthenticationToken.pas',
  uConnectionContext in 'uConnectionContext.pas',
  uConnectionUtils in '..\Common\uConnectionUtils.pas',
  uObjectPool in 'uObjectPool.pas',
  uSmartLock in 'uSmartLock.pas',
  uServiceState in 'uServiceState.pas',
  uIdentityServer.Constants in '..\Common\uIdentityServer.Constants.pas',
  uIdentityModel.IntrospectionClient in '..\Common\uIdentityModel.IntrospectionClient.pas',
  uContentStorage.Results in '..\Common\uContentStorage.Results.pas',
  uCommonApp in '..\..\App\uCommonApp.pas',
  uSvrApp in '..\..\App\uSvrApp.pas',
  uDBConfigRepository in 'ServerConfig\uDBConfigRepository.pas',
  uServerConfigRepository in 'ServerConfig\uServerConfigRepository.pas',
  uServiceStateRepository in 'ServerConfig\uServiceStateRepository.pas',
  uHttpClientProxyUtils in '..\Common\uHttpClientProxyUtils.pas',
  uServerConfig in 'uServerConfig.pas',
  HttpUtils in '..\Common\HttpUtils.pas',
  uSvrConsole in 'uSvrConsole.pas',
  Console in 'Console.pas';

{$R *.RES}

const
  ConfigSwitchName = 'config';
  SqlScriptorSwitchName = 'sqlscriptor';
  CommandSwitchName = 'command';
  ConsoleSwitchName = 'console';

begin
  StartServer(
    SServerAppDisplayName,
    [ TComponentRef.Create(TfmSvrMain),
      TComponentRef.Create(TdmSvrMain, @dmSvrMain),
      TComponentRef.Create(TsvcMain, @svcMain)],
    [ TCustomSwitchInfo.Create([ConfigSwitchName], True, [TComponentRef.Create(TfmSvrConfig)]),
      TCustomSwitchInfo.Create([SqlScriptorSwitchName], False, [TComponentRef.Create(TfmSQLScriptor)]),
      TCustomSwitchInfo.Create([CommandSwitchName], False, [], StartInCommandMode),
      TCustomSwitchInfo.Create([ConsoleSwitchName], False, [TComponentRef.Create(TdmSvrMain, @dmSvrMain)], StartInConsoleMode)
    ],
    GetHome,
    GetHomeSwitch);
end.
