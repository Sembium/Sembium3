unit uServerMessageIds;

interface




const  // identifikatori na syobshteniq
  SInvalidLoginContextId = 'msgInvalidLoginContext';


  SIncorrectSystemTimeId = 'msgIncorrectSystemTime';
  SNegativeUnfinishedMfgId = 'msgNegativeUnfinishedMfg';

  SNegativeOpUnfinishedMfgId = 'msgNegOpUnfMfg';

  SRelativePathNotEnteredId = 'msgRelativePathNotEntered';
  SWrongRelativePathId = 'msgWrongRelativePath';
  SParamMustHaveValueId = 'msgParamMustHaveValue';
  SCrossedPeriodId = 'msgCrossedPeriod';
  SCrossedDeptPricesPeriodId = 'msgCrossedDeptPricesPeriod';
  SReportSettingWithOldDateId = 'msgReportSettingWithOldDate';
  SReportSettingWithFutureDateId = 'msgReportSettingWithFutureDate';
  SNegativeTechQuantityId = 'msgNegativeTechQuantity';
  SDefaultStoreNotFoundId = 'msgDefaultStoreNotFound';
  SReportMovementWithOldDateId = 'msgReportMovementWithOldDate';
  SReportMovementWithFutDateId = 'msgReportMovementWithFutDate';
  SMeasureOrCoefNotFoundId = 'msgMeasureOrCoefNotFound';
  SProductNotSelfExistingId = 'msgProductNotSelfExisting';
  SProductNotConstTempId = 'msgProductNotConstTemp';
  SProductParamMustHaveValueId = 'msgProductParamMustHaveValue';

  SCannotChangeProductId = 'msgCannotChangeProduct';
  SReportStoreDealWithOldDateId = 'msgReportStoreDealWithOldDate';
  SReportStoreDealWithFutDateId = 'msgReportStoreDealWithFutDate';
  SCannotReportProductId = 'msgCannotReportProduct';
  SBeginingOrgOpNotFoundId = 'msgBeginingOrgOpNotFound';
  SOpVariantNotFoundId = 'msgOpVariantNotFound';
  SInvalidNoAsTextId = 'msgInvalidNoAsText';
  SIncorrectDatePeriodId = 'msgIncorrectDatePeriod';
  SIncorrectIntervalId = 'msgIncorrectInterval';
  SFileDoesNotExistsId = 'msgFileDoesNotExists';
  SGetPeriodTypeNameInvalidPeriodId = 'msgGetPeriodTypeNameInvalidPeriod';
  SGetPeriodConstInvalidArgumentId = 'msgGetPeriodConstInvalidArgument';
  SGetPeriodValueInvalidArgumentId = 'msgGetPeriodValueInvalidArgument';
  SGetPeriodFirstDateInvalidPeriodId = 'msgGetPeriodFirstDateInvalidPeriod';
  SIncDateInvalidPeriodId = 'msgIncDateInvalidPeriod';
  SGetPeriodLabelInvalidPeriodId = 'msgGetPeriodLabelInvalidPeriod';
  SGetTimeUnitsCountIncorectPeriodId = 'msgGetTimeUnitsCountIncorectPeriod';
  SInvalidIntParamValueId = 'msgInvalidIntParamValue';
  SExecSQLErrorId = 'msgExecSQLError';
  SUnknownCompanyKindId = 'msgUnknownCompanyKind';
  SPlannedStoreDealNotCreatedId = 'msgPlannedStoreDealNotCreated';
  SPlannedStoreDealNotUpdatedId = 'msgPlannedStoreDealNotUpdated';
  SPlannedStoreDealNotAnnuledId = 'msgPlannedStoreDealNotAnnuled';
  SPlannedStoreDealNotClosedId  = 'msgPlannedStoreDealNotClosed';
  SCannotAnnulRPDId = 'msgCannotAnnulRPD';
  SCannotAnnulGroupId = 'msgCannotAnnulGroup';
  SCannotCloseGroupId = 'msgCannotCloseGroup';
  SNoCurrencyRateId = 'msgNoCurrencyRate';
  SNoBaseCurrencyRateId = 'msgNoBaseCurrencyRate';
  SStoreDealCustomKeyViolationId = 'msgStoreDealCustomKeyViolation';
  SPlannedStoreDoesnotMatchId = 'msgPlannedStoreDoesnotMatch';
  SBeginOperationNotFoundId = 'msgBeginOperationNotFound';
  SNoTodaySecondaryCurrencyRateId = 'msgNoTodaySecondaryCurrencyRate';
  SNoEstimatedSecPriceId = 'msgNoEstimatedSecPrice';
  SNoAccountMeasureCoefId = 'msgNoAccountMeasureCoef';
  SNotEnoughStoreQuantityId = 'msgNotEnoughStoreQuantity';
  SNoCurrencyRatesId = 'msgNoCurrencyRates';
  SIncorrectModelVariantId = 'msgIncorrectModelVariant';
  SInvoiceRangeExhaustedId = 'msgInvoiceRangeExhausted';
  SUpdateSaleShipmentFailedId = 'msgUpdateSaleShipmentFailed';
  SInvalidInvoiceNoId = 'msgInvalidInvoiceNo';
  SModelExistsForSaleId = 'msgModelExistsForSale';  
  SHasMovementsId = 'msgHasMovements';
  SSmallLineDetailTechQtyId = 'msgSmallLineDetailTechQty';
  SRowsChangedByOtherUserId = 'msgRowsChangedByOtherUser';
  SDocNotFoundId = 'msgIIONotFound';
  SMoreThanOneDocId = 'msgMoreThanOneIIO';
  SLinesWithoutStagesId = 'msgLinesWithoutStages';
  SNormalOperationsFoundId = 'msgNormalOperationsFound';
  SNotLimitingModelId = 'msgNotLimitingModel';
  SCheckOperationsSpecModelId = 'msgCheckOperationsSpecModel';
  SModelNotCreatedId = 'msgModelNotCreated';
  SNoDefaultStoreId = 'msgNoDefaultStore';
  SExpeditionNotInsertedId = 'msgExpeditionNotInserted';
  SExpeditionNotUpdatedId = 'msgExpeditionNotUpdated';
  SQuickSalePSDNotInsertedId = 'msgQuickSalePSDNotInserted';
  SQuickSalePSDNotUpdatedId = 'msgQuickSalePSDNotUpdated';
  SQuickSaleGroupNotInsertedId = 'msgQuickSaleGroupNotInserted';
  SInvalidModelId = 'msgInvalidModel';
  SNoProductDataId = 'msgNoProductData';
  SInactiveProductsId = 'msgInactiveProducts';
  SListNotEnoughStoreQuantityId = 'msgListNotEnoughStoreQuantity';



  SYouHaveNoRightsForThisOperationId = 'msgYouHaveNoRightsForThisOperation';
  SYouHaveNoWorkDeptsForThisOperationId = 'msgYouHaveNoWorkDeptsForThisOperation';
  SUnknownEarningTypeId = 'msgUnknownEarningType';
  SCannotInsertNegativeValueInLocalNoId = 'CHKBC__LOCAL_NO';
  SNegativePresenceId = 'msgNegativePresence';
  SExecuteServerNotFoundId = 'msgExecuteServerNotFound';
  SFreeExecuteServerNotFoundId = 'msgFreeExecuteServerNotFound';
  SExecuteServerConnectionErrorId = 'msgExecuteServerConnectionError';
  SOverlappingBudgetOrderItemsId = 'msgOverlappingBudgetOrderItems';




  SCannotChangeSaleStoreId = 'msgCannotChangeSaleStore';
  SIncorrectOccupationEmployeeId = 'msgIncorrectOccupationEmployee';
  SRecurrentDeptWithMainOccsId = 'msgRecurrentDeptWithMainOccs';
  SIncorrectOWDEnclosureId = 'msgIncorrectOWDEnclosure';
  SCantCrateSDWithInactiveStoreId = 'msgCantCrateSDWithInactiveStore';
  SCantCrateSDWithInactiveDeptId = 'msgCantCrateSDWithInactiveDept';
  SCrossedProductStorePeriodId = 'msgCrossedProductStorePeriod';
  SDateTooBigId = 'msgDateTooBig';
  SInvalidProcessPositionsId = 'msgInvalidProcessPositions';
  SModelIncorrectWasteForksId = 'msgModelIncorrectWasteForks';

  SLineIncorrectWasteForksId = 'msgLineIncorrectWasteForks';
  SThoroughlyEngineeredExistsId = 'msgThoroughlyEngineeredExists';

  SCannotDeleteStoreDealNotStorno = 'msgCannotDeleteStoreDealNotStorno';
  SCannotDeleteOperationMovementNotStorno = 'msgCannotDeleteOperationMovementNotStorno';
  SCrossedOccShiftPeriodId = 'msgCrossedOccShiftPeriod';
  SCrossedOccEmployeePeriodId = 'msgCrossedOccEmployeePeriod';
  SIncorrectOccupationPeriodId = 'msgIncorrectOccupationPeriod';
  SIncorrectOccEmployeePeriodId = 'msgIncorrectOccEmployeePeriod';
  SIncorrectDeptParentPeriodId = 'msgIncorrectDeptParentPeriod';
  SIncorrectDeptChildrenPeriodId = 'msgIncorrectDeptChildrenPeriod';
  SIncorrectDeptOccPeriodId = 'msgIncorrectDeptOccPeriod';
  SIncorrectOccDeptPeriodId = 'msgIncorrectOccDeptPeriod';
  SCrossedShCycleBreakPeriodId = 'msgCrossedShCycleBreakPeriod';
  STooLargePrintTreeId = 'msgTooLargePrintTree';
  SCannotDeleteEmpMovementNotStornoID = 'msgCannotDeleteEmpMovementNotStorno';
  SCrossedEamDayAbsencePeriodId = 'msgCrossedEamDayAbsencePeriod';
  SCannotDeleteEmployeeDisciplineEventNotStornoId = 'msgCannotDeleteEmployeeDisciplineEventNotStorno';
  SSDIncorrectBOIOConsumerDeptId = 'msgSDIncorrectBOIOConsumerDept';
  SConsumerDeptIsNotStoreId = 'msgConsumerDeptIsNotStore';
  SCrossedProfessionPeriodId = 'msgCrossedProfessionPeriod';
  SCrossedOccSalaryPeriodId = 'msgCrossedOccSalaryPeriod';
  SIncorrectDeptPerDeptPeriodId = 'msgIncorrectDeptPerDeptPeriod';
  SIncorrectDeptDeptPerPeriodId = 'msgIncorrectDeptDeptPerPeriod';
  SCrossedEamShiftChangePeriodId = 'msgCrossedEamShiftChangePeriod';
  SAnnuledPSDWithSDNotAllowedId = 'msgAnnuledPSDWithSDNotAllowed';
  SCrossedParRelPeriodPeriodId = 'msgCrossedParRelPeriodPeriod';
  SCrossedProductPeriodId = 'msgCrossedProductPeriod';
  SIncorrectCommonProductPerId = 'msgIncorrectCommonProductPer';
  SIncorrectJoinedProductPerId = 'msgIncorrectJoinedProductPer';
  SCrossedParRelProductPeriodId = 'msgCrossedParRelProductPeriod';
  SIncorrectParRelProdPeriodId = 'msgIncorrectParRelProdPeriod';
  SOTPExEventsMustBeAnnuledId = 'msgOTPExEventsMustBeAnnuled';
  SCrossedDiscEventTypePeriodId = 'msgCrossedDiscEventTypePeriod';

  SExceptEventsMustBeAnnuledId = 'msgExceptEventsMustBeAnnuled';
  SExceptEventHasUnnormAttacksId = 'msgExceptEventHasUnnormAttacks';
  SExceptEventHasUnclosedTasksId = 'msgExceptEventHasUnclosedTasks';
  SEEMustNotBeResolvedId = 'msgEEMustNotBeResolved';
  SEEHasUnannuledTasksId = 'msgEEHasUnannuledTasks';
  SExceptEventMustBeAnnuledId = 'msgExceptEventMustBeAnnuled';
  SExceptEventDamageQtyIsLessId = 'msgExceptEventDamageQtyIsLess';
  SEEDHasAttacksWithGreaterQtyId = 'msgEEDHasAttacksWithGreaterQty';
  SCrossedDeptBPPeriodId = 'msgCrossedDeptBPPeriod';
  SOEBPStatusDateOutOfRangeId = 'msgOEBPStatusDateOutOfRange'; 
  SCantChgRfmlPartnerOrAccountId = 'msgCantChgRfmlPartnerOrAccount';
  SCantDeleteFinStoreId = 'msgCantDeleteFinStore';
  SCannotDeleteEENotAnnulId = 'msgCannotDeleteEENotAnnul';
  SExceptEventsIncorrectQtyId = 'msgExceptEventsIncorrectQty';
  SEEWithIncorrectQtyExistsId = 'msgEEWithIncorrectQtyExists';
  ///////////SMaxConcurrentConnectionsReachedId = 'msgMaxConcurrentConnectionsReached';
  ///////////SMaxNamedConnectionsForComputerReachedId = 'msgMaxNamedConnectionsForComputerReached';
  ///////////SMaxNamedConnectionsReachedId = 'msgMaxNamedConnectionsReached';
  ///////////SMaxInternalConnectionsReachedId = 'msgMaxInternalConnectionsReached';
  SCannotLoginToEarlierDateThanId = 'msgCannotLoginToEarlierDateThan';
  SSaleForOTPIsIncorrectId = 'msgSaleForOTPIsIncorrect';
  SOTPMustBeAnnuledId = 'msgOTPMustBeAnnuled';

  SPOHasUnclosedDescendantsId = 'msgPOHasUnclosedDescendants';
  SParentPOIsClosedId = 'msgParentPOIsClosed';
  SPOHasUnannuledDescendantsId = 'msgPOHasUnannuledDescendants';
  SParentPOIsAnnuledId = 'msgParentPOIsAnnuled';
  SEOHasUnclosedDescendantsId = 'msgEOHasUnclosedDescendants';
  SParentEOIsClosedId = 'msgParentEOIsClosed';
  SEOHasUnannuledDescendantsId = 'msgEOHasUnannuledDescendants';
  SParentEOIsAnnuledId = 'msgParentEOIsAnnuled';
  SBOIOConsumerMustMatchId = 'msgBOIOConsumerMustMatch';
  SBOIOConsumerMustDescendId = 'msgBOIOConsumerMustDescend';
  SDifferentConsumerDeptExistsId = 'msgDifferentConsumerDeptExists';
  SNotDescendantConsDeptExistsId = 'msgNotDescendantConsDeptExists';

  SDptIncorrectPrcActionsExistId = 'msgDptIncorrectPrcActionsExist';
  SOccIncorrectPrcActionsExistId = 'msgOccIncorrectPrcActionsExist';
  
  SOEPBAStatusDateOutOfRangeId = 'msgOEPBAStatusDateOutOfRange';
  SOEPCAStatusDateOutOfRangeId = 'msgOEPCAStatusDateOutOfRange';

  SConcreteToStrategicStateId = 'msgConcreteToStrategicState';

  SAccessBannedId = 'msgAccessBanned';

  SConnectionLockedByServerId = 'msgConnectionLockedByServer';
  SConnectionClosedByServerId = 'msgConnectionClosedByServer';

  SCannotOverrideContextDateOnProductionDbId = 'msgCannotOverrideContextDateOnProductionDb';
  SFieldMustBeGreaterThanId = 'msgFieldMustBeGreaterThan';
  SInvoiceInconsistentSSHId = 'msgInvoiceInconsistentSSH';
  SDeptMustHaveCapacityGeneratorId = 'msgDeptMustHaveCapacityGenerator';

  SErrorInMultiDecisionForDeliveryProjectId = 'msgErrorInMultiDecisionForDeliveryProject';
  SPSDSinglePriceNotSetId = 'msgPSDSinglePriceNotSet';
  SEEMustBeSingleResolvableId = 'msgEEMustBeSingleResolvable';
  SEEHasSingleResolveTasksId = 'msgEEHasSingleResolveTasks';
  SExceptEventHasDamagesId = 'msgExceptEventHasDamages';
  SExceptEventHasTasksId = 'msgExceptEventHasTasks';
  SAccessDeniedId = 'msgAccessDenied';
  SNewComputerLoginNotAllowedId = 'msgNewComputerLoginNotAllowed';

  SCantAddSpecWhenInlineModelsId = 'msgCantAddSpecWhenInlineModels';
  SInvalidInlineModelId = 'msgInvalidInlineModel';

  SUserNotAllowedToDB = 'msgUserNotAllowedToDB';

  SUserAndEmployeeNamesDiffer = 'msgUserAndEmployeeNamesDiffer';
  SParamsExportDataTooLongId = 'msgParamsExportDataTooLong';
  SInvalidOperationVariantsQtyId = 'msgInvalidOperationVariantsQty';
  SIncompatibleExeVersionsId = 'msgIncompatibleExeVersions';

const
  SKeywordDelimiter = '^';

const  // identifikatori na kluchovi dumi
  SAccountMeasureKeywordId = SKeywordDelimiter + 'kwAccountMeasure' + SKeywordDelimiter;
  STechMeasureKeywordId = SKeywordDelimiter + 'kwTechMeasure' + SKeywordDelimiter;
  SEstimatedSecondaryPriceKeywordId = SKeywordDelimiter + 'kwEstimatedSecondaryPrice' + SKeywordDelimiter;

implementation

end.
