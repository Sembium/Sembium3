create or replace package ServerMessages is

  SInvalidLoginContextId constant Varchar2(50 char) := 'msgInvalidLoginContext';
  SIncorrectSystemTimeId constant Varchar2(50 char) := 'msgIncorrectSystemTime';
  SInvalidServerTimeDeviationId constant Varchar2(50 char) := 'msgInvalidServerTimeDeviation';
  SNegativeUnfinishedMfgId constant Varchar2(50 char) := 'msgNegativeUnfinishedMfg';
  SNegativeOpUnfinishedMfgId constant Varchar2(50 char) := 'msgNegOpUnfMfg';
  SRelativePathNotEnteredId constant Varchar2(50 char) := 'msgRelativePathNotEntered';
  SWrongRelativePathId constant Varchar2(50 char) := 'msgWrongRelativePath';
  SParamMustHaveValueId constant Varchar2(50 char) := 'msgParamMustHaveValue';
  SCrossedPeriodId constant Varchar2(50 char) := 'msgCrossedPeriod';
  SReportSettingWithOldDateId constant Varchar2(50 char) := 'msgReportSettingWithOldDate';
  SReportSettingWithFutureDateId constant Varchar2(50 char) := 'msgReportSettingWithFutureDate';
  SNegativeTechQuantityId constant Varchar2(50 char) := 'msgNegativeTechQuantity';
  SDefaultStoreNotFoundId constant Varchar2(50 char) := 'msgDefaultStoreNotFound';
  SReportMovementWithOldDateId constant Varchar2(50 char) := 'msgReportMovementWithOldDate';
  SReportMovementWithFutDateId constant Varchar2(50 char) := 'msgReportMovementWithFutDate';
  SMeasureOrCoefNotFoundId constant Varchar2(50 char) := 'msgMeasureOrCoefNotFound';
  SProductNotSelfExistingId constant Varchar2(50 char) := 'msgProductNotSelfExisting';
  SProductNotConstTempId constant Varchar2(50 char) := 'msgProductNotConstTemp';
  SProductParamMustHaveValueId constant Varchar2(50 char) := 'msgProductParamMustHaveValue'; 
  SCannotChangeProductId constant Varchar2(50 char) := 'msgCannotChangeProduct'; 
  SReportStoreDealWithOldDateId constant Varchar2(50 char) := 'msgReportStoreDealWithOldDate';
  SReportStoreDealWithFutDateId constant Varchar2(50 char) := 'msgReportStoreDealWithFutDate';
  SCannotReportProductId constant Varchar2(50 char) := 'msgCannotReportProduct';
  SBeginingOrgOpNotFoundId constant Varchar2(50 char) := 'msgBeginingOrgOpNotFound';
  SOpVariantNotFoundId constant Varchar2(50 char) := 'msgOpVariantNotFound';
  SCrossedDeptPricesPeriodId constant Varchar2(50 char) := 'msgCrossedDeptPricesPeriod';
  SNegativePresenceId constant Varchar2(50 char) := 'msgNegativePresence';
  SOverlappingBudgetOrderItemsId constant Varchar2(50 char) := 'msgOverlappingBudgetOrderItems';
  SCannotChangeSaleStoreId constant Varchar2(50 char) := 'msgCannotChangeSaleStore';
  SNotEnoughStoreQuantityId constant Varchar2(50 char) := 'msgNotEnoughStoreQuantity';
  SIncorrectOccupationEmployeeId constant Varchar2(50 char) := 'msgIncorrectOccupationEmployee';
  SRecurrentDeptWithMainOccsId constant Varchar2(50 char) := 'msgRecurrentDeptWithMainOccs';
  SIncorrectOWDEnclosureId constant Varchar2(50 char) := 'msgIncorrectOWDEnclosure';
  SCrossedProductStorePeriodId constant Varchar2(50 char) := 'msgCrossedProductStorePeriod';
  SInvalidProcessPositionsId constant Varchar2(50 char) := 'msgInvalidProcessPositions';
  SLineIncorrectWasteForksId constant Varchar2(50 char) := 'msgLineIncorrectWasteForks';
  SThoroughlyEngineeredExistsId constant Varchar2(50 char) := 'msgThoroughlyEngineeredExists';
  SCannotDeleteSDNotStorno constant Varchar2(50 char) := 'msgCannotDeleteStoreDealNotStorno';
  SCannotDeleteOMNotStorno constant Varchar2(50 char) := 'msgCannotDeleteOperationMovementNotStorno';
  SCrossedOccShiftPeriodId constant Varchar2(50 char) := 'msgCrossedOccShiftPeriod';
  SCrossedOccEmployeePeriodId constant Varchar2(50 char) := 'msgCrossedOccEmployeePeriod';
  SIncorrectOccupationPeriodId constant Varchar2(50 char) := 'msgIncorrectOccupationPeriod';
  SIncorrectOccEmployeePeriodId constant Varchar2(50 char) := 'msgIncorrectOccEmployeePeriod';
  SIncorrectDeptParentPeriodId constant Varchar2(50 char) := 'msgIncorrectDeptParentPeriod';
  SIncorrectDeptChildrenPeriodId constant Varchar2(50 char) := 'msgIncorrectDeptChildrenPeriod';
  SIncorrectDeptOccPeriodId constant Varchar2(50 char) := 'msgIncorrectDeptOccPeriod';
  SIncorrectOccDeptPeriodId constant Varchar2(50 char) := 'msgIncorrectOccDeptPeriod';
  SCrossedShCycleBreakPeriodId constant Varchar2(50 char) := 'msgCrossedShCycleBreakPeriod';
  SCannotDeleteEMNotStorno constant Varchar2(50 char) := 'msgCannotDeleteEmpMovementNotStorno';
  SCrossedEamDayAbsencePeriodId constant Varchar2(50 char) := 'msgCrossedEamDayAbsencePeriod';
  SCannotDeleteEDENotStorno constant Varchar2(50 char) := 'msgCannotDeleteEmployeeDisciplineEventNotStorno';
  SSDIncorrectBOIOConsumerDept constant Varchar2(50 char) := 'msgSDIncorrectBOIOConsumerDept';
  SCrossedProfessionPeriodId constant Varchar2(50 char) := 'msgCrossedProfessionPeriod';
  SCrossedOccSalaryPeriodId constant Varchar2(50 char) := 'msgCrossedOccSalaryPeriod';
  SIncorrectDeptPerDeptPeriodId constant Varchar2(50 char) := 'msgIncorrectDeptPerDeptPeriod';
  SIncorrectDeptDeptPerPeriodId constant Varchar2(50 char) := 'msgIncorrectDeptDeptPerPeriod';
  SCrossedParRelPeriodPeriodId constant Varchar2(50 char) := 'msgCrossedParRelPeriodPeriod';
  SCrossedEamShiftChangePeriodId constant Varchar2(50 char) := 'msgCrossedEamShiftChangePeriod';
  SAnnuledPSDWithSDNotAllowedId constant Varchar2(50 char) := 'msgAnnuledPSDWithSDNotAllowed';
  SCrossedProductPeriodId constant Varchar2(50 char) := 'msgCrossedProductPeriod';
  SIncorrectCommonProductPerId constant Varchar2(50 char) := 'msgIncorrectCommonProductPer';
  SIncorrectJoinedProductPerId constant Varchar2(50 char) := 'msgIncorrectJoinedProductPer';
  SCrossedParRelProductPeriodId constant Varchar2(50 char) := 'msgCrossedParRelProductPeriod';
  SIncorrectParRelProdPeriodId constant Varchar2(50 char) := 'msgIncorrectParRelProdPeriod';
  SCrossedDiscEventTypePeriodId constant Varchar2(50 char) := 'msgCrossedDiscEventTypePeriod';
  SOTPExEventsMustBeAnnuledId constant Varchar2(50 char) := 'msgOTPExEventsMustBeAnnuled';
  SExceptEventsMustBeAnnuledId constant Varchar2(50 char) := 'msgExceptEventsMustBeAnnuled';
  SMinimalEEDeadlineHasPassedId constant Varchar2(50 char) := 'msgMinimalEEDeadlineHasPassed';
  SExceptEventHasUnnormAttacksId constant Varchar2(50 char) := 'msgExceptEventHasUnnormAttacks';
  SExceptEventHasUnclosedTasksId constant Varchar2(50 char) := 'msgExceptEventHasUnclosedTasks';
  SEEMustNotBeResolvedId constant Varchar2(50 char) := 'msgEEMustNotBeResolved';
  SEEHasUnannuledTasksId constant Varchar2(50 char) := 'msgEEHasUnannuledTasks';
  SExceptEventMustBeAnnuledId constant Varchar2(50 char) := 'msgExceptEventMustBeAnnuled';
  SEETDescrDocMustNotBeChangedId constant Varchar2(50 char) := 'msgEETDescrDocMustNotBeChanged';
  SExceptEventDamageQtyIsLessId constant Varchar2(50 char) := 'msgExceptEventDamageQtyIsLess';
  SEEDHasAttacksWithGreaterQtyId constant Varchar2(50 char) := 'msgEEDHasAttacksWithGreaterQty';
  SCrossedDeptBPPeriodId constant Varchar2(50 char) := 'msgCrossedDeptBPPeriod';
  SOEBPStatusDateOutOfRangeId constant Varchar2(50 char) := 'msgOEBPStatusDateOutOfRange';
  SCantChgRfmlPartnerOrAccountId constant Varchar2(50 char) := 'msgCantChgRfmlPartnerOrAccount';
  SCantDeleteFinStoreId constant Varchar2(50 char) := 'msgCantDeleteFinStore';
  SCannotDeleteEENotAnnul constant Varchar2(50 char) := 'msgCannotDeleteEENotAnnul';
  SExceptEventsIncorrectQtyId constant Varchar2(50 char) := 'msgExceptEventsIncorrectQty';
  SEEWithIncorrectQtyExistsId constant Varchar2(50 char) := 'msgEEWithIncorrectQtyExists';
  SSaleForOTPIsIncorrectId constant Varchar2(50 char) := 'msgSaleForOTPIsIncorrect';
  SOTPMustBeAnnuledId constant Varchar2(50 char) := 'msgOTPMustBeAnnuled';

  SPOHasUnclosedDescendantsId constant Varchar2(50 char) := 'msgPOHasUnclosedDescendants';
  SParentPOIsClosedId constant Varchar2(50 char) := 'msgParentPOIsClosed';
  SPOHasUnannuledDescendantsId constant Varchar2(50 char) := 'msgPOHasUnannuledDescendants';
  SParentPOIsAnnuledId constant Varchar2(50 char) := 'msgParentPOIsAnnuled';
  SEOHasUnclosedDescendantsId constant Varchar2(50 char) := 'msgEOHasUnclosedDescendants';
  SParentEOIsClosedId constant Varchar2(50 char) := 'msgParentEOIsClosed';
  SEOHasUnannuledDescendantsId constant Varchar2(50 char) := 'msgEOHasUnannuledDescendants';
  SParentEOIsAnnuledId constant Varchar2(50 char) := 'msgParentEOIsAnnuled';
  SBOIOConsumerMustMatchId constant Varchar2(50 char) := 'msgBOIOConsumerMustMatch';
  SBOIOConsumerMustDescendId constant Varchar2(50 char) := 'msgBOIOConsumerMustDescend';
  SDifferentConsumerDeptExistsId constant Varchar2(50 char) := 'msgDifferentConsumerDeptExists';
  SNotDescendantConsDeptExistsId constant Varchar2(50 char) := 'msgNotDescendantConsDeptExists';

  SDptIncorrectPrcActionsExistId constant Varchar2(50 char) := 'msgDptIncorrectPrcActionsExist';
  SOccIncorrectPrcActionsExistId constant Varchar2(50 char) := 'msgOccIncorrectPrcActionsExist';
  SOccDeptIncorrectPrcActionsId constant Varchar2(50 char) := 'msgOccDeptIncorrectPrcActions';

  SOEPBAStatusDateOutOfRangeId constant Varchar2(50 char) := 'msgOEPBAStatusDateOutOfRange';
  SOEPCAStatusDateOutOfRangeId constant Varchar2(50 char) := 'msgOEPCAStatusDateOutOfRange';
 
  SOEOutsideActionStatusExistsId constant Varchar2(50 char) := 'msgOEOutsideActionStatusExists';
  SActOutsideActionStatExistsId constant Varchar2(50 char) := 'msgActOutsideActionStatExists';
  
  SOEPBAStatDateOutOfActRangeId constant Varchar2(50 char) := 'msgOEPBAStatDateOutOfActRange';
  SOEPCAStatDateOutOfActRangeId constant Varchar2(50 char) := 'msgOEPCAStatDateOutOfActRange';
  
  SConcreteToStrategicStateId constant Varchar2(50 char) := 'msgConcreteToStrategicState';
  
  SSaleHasStoreDealsId constant Varchar2(50 char) := 'msgSaleHasStoreDeals';
  SInvalidProductSetIntervalId constant Varchar2(50 char) := 'msgInvalidProductSetInterval';
  SInvalidPRPerDateIntervalId constant Varchar2(50 char) := 'msgInvalidPRPerDateInterval';
  SEngOrderIsCreatingCycleId constant Varchar2(50 char) := 'msgEngOrderIsCreatingCycle';
  SSaleIsCreatingCycleId constant Varchar2(50 char) := 'msgSaleIsCreatingCycle';
  
  SCantAnnulFinOrderId constant Varchar2(50 char) := 'msgCantAnnulFinOrder';
  SStoreDealRequiresPSDId constant Varchar2(50 char) := 'msgStoreDealRequiresPSD';

  SPRPerMustBeInCommonPRPerId constant Varchar2(50 char) := 'msgPRPerMustBeInCommonPRPer';
  SWrongConcretePRPersExistId constant Varchar2(50 char) := 'msgWrongConcretePRPersExist';

  SCantDeleteFinOrderId constant Varchar2(50 char) := 'msgCantDeleteFinOrder';
  SInconsitentInvoiceSSHId constant Varchar2(50 char) := 'msgInconsitentInvoiceSSH';
  SShpmntIsAlreadyInAnInvoiceId constant Varchar2(50 char) := 'msgShpmntIsAlreadyInAnInvoice';
  SInvalidDateIntervalAsChildId constant Varchar2(50 char) := 'msgInvalidDateIntervalAsChild';
  SInvalidDateIntervalAsParentId constant Varchar2(50 char) := 'msgInvalidDateIntervalAsParent';
  SInvalidProductParentParamsId constant Varchar2(50 char) := 'msgInvalidProductParentParams';

  SInvalidOWDPriorForGroupDeptId constant Varchar2(50 char) := 'msgInvalidOWDPriorForGroupDept';
  SInvalidDOWDPCoverTypeId constant Varchar2(50 char) := 'msgInvalidDOWDPCoverType';
  SInvalidDOWDPCvrTypeExecExplId constant Varchar2(50 char) := 'msgInvalidDOWDPCvrTypeExecExpl';
  SGroupDeptCannotBeStoreId constant Varchar2(50 char) := 'msgGroupDeptCannotBeStore';

  SCantChangeSaleProductId constant Varchar2(50 char) := 'msgCantChangeSaleProduct';
  SDifferentSaleProductId constant Varchar2(50 char) := 'msgDifferentSaleProduct';
  
  SInvalidFinOrderBaseQtyId constant Varchar2(50 char) := 'msgInvalidFinOrderBaseQty';

  SStrategicToNonStrategicId constant Varchar2(50 char) := 'msgStrategicToNonStrategic';
  
  SInvalidInvoiceNoGeneratorId constant Varchar2(50 char) := 'msgInvalidInvoiceNoGenerator';

  SCantDeleteEstSMVId constant Varchar2(50 char) := 'msgCantDeleteEstSMV';
  SEEMustBeSingleResolvableId constant VarChar2(50 char) := 'msgEEMustBeSingleResolvable';
  SEEHasSingleResolveTasksId constant VarChar2(50 char) := 'msgEEHasSingleResolveTasks';
  SExceptEventHasDamagesId constant VarChar2(50 char) := 'msgExceptEventHasDamages';
  SExceptEventHasTasksId constant VarChar2(50 char) := 'msgExceptEventHasTasks';
  
  SCantAddSpecWhenInlineModelsId constant VarChar2(50 char) := 'msgCantAddSpecWhenInlineModels';
  SInvalidInlineModelId constant VarChar2(50 char) := 'msgInvalidInlineModel';
  SParamsExportDataTooLongId constant VarChar2(50 char) := 'msgParamsExportDataTooLong';
  
end ServerMessages;
/
create or replace package body ServerMessages is

  
end ServerMessages;
/
