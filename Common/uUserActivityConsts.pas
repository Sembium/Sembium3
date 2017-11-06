unit uUserActivityConsts;

interface

// principno predlojenie: kogato syzdavate novi prava, mai e dobra ideia (nomera_na_pravoto mod 100) < 50, zashtoto
// (prava za modificirane na default filter variant = pravoto za pokazvane na spravkata + 50) i taka riska ot kolizii
// sys syshtestvuvashti prava shte e po-malyk

const
  UserGroupAllUsersCode = 999999999;

const
// menu activity consts
  uaAppAdministrationSubMenu            = 1000;
  uaEnvironmentMenu                     = 1001;
  uaSalesMenu                           = 1002;
  uaObjectsMenu                         = 1003;
  uaProductionMenu                      = 1004;
  uaDeliveriesMenu                      = 1007;
  uaFinancesMenu                        = 1009;
  uaWorkMenu                            = 1010;
  uaSubjectsMenu                        = 1011;
  uaDocAdministrationSubMenu            = 1012;
  uaPrintAdministrationSubMenu          = 1013;

  uaUsers                               = 1100;
  uaConfig                              = 1101;
  uaDaysOff                             = 1103;
  uaUserGroups                          = 1104;
  uaSQLEditor                           = 1105;
  uaSQLEditorModifyStatement            = 1106;
  uaCustomMenuItems                     = 1107;
  uaSysRoles                            = 1108;
  uaDocConfig                           = 1111;
  uaAccessRules                         = 1112;

  uaCurrencyRates                       = 1200;
  uaProducts                            = 1201;
  uaVendorProductNames                  = 1204;
  uaDepts                               = 1205;
  uaEmployees                           = 1210;
  uaAllCompanies                        = 1211;
  uaParRel                              = 1212;
  uaPriorities                          = 1222;
  uaCountries                           = 1223;
  uaLanguages                           = 1224;
  uaCustomhouses                        = 1226;
  uaCurrencies                          = 1227;
  uaMeasures                            = 1228;
  uaShipmentTypes                       = 1229;
  uaNoms                                = 1230;
  uaCompany                             = 1231;
  uaDocItemTypes                        = 1233;
  uaProfessions                         = 1235;
  uaTeams                               = 1236;
  uaMonthTeams                          = 1237;
  uaSaleTypes                           = 1238;
  uaDeptTypes                           = 1239;
  uaDocItemViewGenerators               = 1240;
  uaWorkPriorities                      = 1245;
  uaPrecisionLevels                     = 1246;
  uaDocItemSysRoles                     = 1247;
  uaProductPeriods                      = 1248;
  uaProductSets                         = 1255;
  uaContactTypes                        = 1257;

  uaCrafts                              = 1305;
  uaCraftTypes                          = 1306;

  uaEducations                          = 1243;

  uaExecuteServers                      = 1250;
  uaFileExtensions                      = 1251;
  uaDocItemTemplates                    = 1252;
  uaDocProfiles                         = 1253;
                                        // 1254 e zaeto
                                        // 1255 e zaeto
                                        // 1256 e zaeto
                                        // 1257 e zaeto
  uaDocItemStorageTypes                 = 1258;

  uaChangeCurrentDept                   = 1290;
  uaChangeCurrentOccupationWorkDept     = 1291;

  uaVIMValueGained                      = 1300;
  uaNewSaleRequestGroup                 = 1301;
  uaSaleOrders                          = 1302;
  uaSalesOverviewExp                    = 2100;

  uaNewStoreDealIn                      = 1401;
  uaNewStoreDealOut                     = 1402;
  uaProductQuantitiesTree               = 1403;
  uaStoreQuantities                     = 1404;
  uaStoreDeals                          = 1405;
  uaPlannedStoreDeals                   = 1406;
  uaStoreRequests                       = 1410;
  uaNewStoreRequestIn                   = 1411;
  uaNewStoreRequestOut                  = 1412;
  uaEditStoreRequestIn                  = 1413;
  uaEditStoreRequestOut                 = 1414;
  uaStoreDealsFromStoreRequestIn        = 1415;
  uaStoreDealsFromStoreRequestOut       = 1416;
  uaFinishStoreRequest                  = 1417;
  uaAnnulStoreReqest                    = 1418;
  uaVIMQuantity                         = 1420;
  uaQuantityDeficit                     = 1421;
  uaNewWorkStoreDealIn                  = 1424;
  uaNewWorkStoreDealOut                 = 1425;
  uaWorkStoreDealsFromStoreRequestIn    = 1426;
  uaWorkStoreDealsFromStoreRequestOut   = 1427;
  uaNewPastStoreDeal                    = 1428;
  uaNewPastFinStoreDeal                 = 1429;
  uaUncoveredPSD                        = 2200;

  uaUncoveredModels                     = 1550;
  uaOutStoreDealsExport                 = 1564;
  uaProductionProductsTree              = 1565;
  uaNewOperationMovement                = 1568;
  uaOwnOperationSetup                   = 1569;
  uaOperationSetup                      = 1571;
  uaSetOperationVariants                = 1562;
  uaNewOwnOperationMovement             = 1572;
  uaStornoForeignOperationMovement      = 1573;
  uaStornoForeignOperationSetup         = 1574;
  uaStornoWasteOperationMovement        = 1575;
  uaStornoForeignOperationMovementDocs  = 1576;
  uaStornoWasteOperationMovementDocs    = 1577;

  uaUnfinishedMfg                       = 1580;
  uaUnfinishedMfgToAnyDate              = 1581;
  uaRealCapacityGraph                   = 1591;
  uaModelCapacityStatus                 = 1592;
  uaRealCapacityTable                   = 1593;
  uaEstCapacityGraph                    = 1594;
  uaEstCapacityTable                    = 1595;

  uaSpecifications                      = 1601;
  uaNewSpecification                    = 1602;
  uaNewXModel                           = 1603;
  uaBaseGroups                          = 1604;
  uaDeptDetailFlow                      = 1605;
  uaCommonGroups                        = 1606;

  uaNewDeficitCoverDecision             = 1800;
  uaDeficitCoverDecisions               = 1801;
  uaDeliveries                          = 1802;
  uaDeliveriesEnvCover                  = 1803;
  uaDeliveriesOccCover                  = 1808;
  uaNewDeficitCoverDecisionEnvCover     = 1804;
  uaDeficitCoverDecisionsEnvCover       = 1805;
  uaNewDeficitCoverDecisionOccCover     = 1806;
  uaDeficitCoverDecisionsOccCover       = 1807;

  uaNewProductionOrderBase              = 1910;
  uaNewProductionOrderCoveringSales     = 1911;
  uaNewProductionOrderCoveringEnv       = 1912;
  uaNewProductionOrderCoveringDelivery  = 1914;
  uaNewProductionOrderCoveringProject   = 1915;
  uaNewProductionOrderCoveringOccupation= 1916;

  uaProductionOrdersBase                = 1920;
  uaProductionOrdersCoveringSales       = 1921;
  uaProductionOrdersCoveringEnv         = 1922;
  uaProductionOrdersCoveringDelivery    = 1924;
  uaProductionOrdersCoveringProject     = 1925;
  uaProductionOrdersCoveringOccupation  = 1926;

  uaXModelsBase                         = 1930;
  uaXModelsCoveringSales                = 1931;
  uaXModelsCoveringEnv                  = 1932;
  uaXModelsCoveringDelivery             = 1934;
  uaXModelsCoveringProject              = 1935;
  uaXModelsCoveringOccupation           = 1936;

  uaModelsInvestedValuesBase            = 1940;
  uaModelsInvestedValuesCoveringSales   = 1941;
  uaModelsInvestedValuesCoveringEnv     = 1942;
  uaModelsInvestedValuesCoveringDelivery= 1944;
  uaModelsInvestedValuesCoveringProject = 1945;
  uaModelsInvestedValuesCoveringOccupation = 1946;

  uaStageLevelTasksBase                 = 1950;
  uaStageLevelTasksCoveringSales        = 1951;
  uaStageLevelTasksCoveringEnv          = 1952;
  uaStageLevelTasksCoveringDelivery     = 1954;
  uaStageLevelTasksCoveringProject      = 1955;
  uaStageLevelTasksCoveringOccupation   = 1956;

  uaOperationalTasksBase                = 1960;
  uaOperationalTasksCoveringSales       = 1961;
  uaOperationalTasksCoveringEnv         = 1962;
  uaOperationalTasksCoveringDelivery    = 1964;
  uaOperationalTasksCoveringProject     = 1965;
  uaOperationalTasksCoveringOccupation  = 1966;

  uaSpecialControlTasksBase             = 1970;
  uaSpecialControlTasksCoveringSales    = 1971;
  uaSpecialControlTasksCoveringEnv      = 1972;
  uaSpecialControlTasksCoveringDelivery = 1974;
  uaSpecialControlTasksCoveringProject  = 1975;
  uaSpecialControlTasksCoveringOccupation = 1976;

  uaModelMovementsBase                  = 1980;
  uaModelMovementsCoveringSales         = 1981;
  uaModelMovementsCoveringEnv           = 1982;
  uaModelMovementsCoveringDelivery      = 1984;
  uaModelMovementsCoveringProject       = 1985;
  uaModelMovementsCoveringOccupation    = 1986;

  uaOperationMovementsBase              = 1990;
  uaOperationMovementsCoveringSales     = 1991;
  uaOperationMovementsCoveringEnv       = 1992;
  uaOperationMovementsCoveringDelivery  = 1994;
  uaOperationMovementsCoveringProject   = 1995;
  uaOperationMovementsCoveringOccupation = 1996;

  uaInvoicesOut                         = 2002;

  uaOutFaktura                          = 2005;
  uaOutDebitnoIzvestie                  = 2006;
  uaOutKreditnoIzvestie                 = 2007;
  uaOutOtchetZaProdajbite               = 2012;
  uaOutProtokol                         = 2013;
  uaOutKoregirashtProtokol              = 2008;

  uaBudgetOrdersExpense                 = 2030;
  uaBudgetOrdersInvest                  = 2031;
  uaBOIOrdersExpense                    = 2032;
  uaBOIOrdersInvest                     = 2033;

  uaBudgetClassesTree                   = 2040;
  uaBudgetClassesTreeEdit               = 2041;
  uaBudgetNoms                          = 2042;
  uaBudgetNomsEdit                      = 2043;

  uaBudgetExpense                       = 2045;
  uaBudgetInvest                        = 2046;

  uaEmployeeEarnings                    = 2301;
  uaEarningModifiers                    = 2303;
  uaShifts                              = 2304;
  uaWorkHours                           = 2305;
  uaDisciplineEventTypes                = 2306;
  uaOccupationsAndEmployees             = 2307;
  uaProfessionKinds                     = 2308;
  uaOccupationWorkDeptPriorities        = 2309;
  uaShiftRegimes                        = 2311;
  uaDisciplineEvents                    = 2312;
  uaOrgWorkActivities                   = 2313;

  uaResultProductRealNeeds              = 2410;
  uaResultProductEstNeeds               = 2411;
  uaDetailRealNeeds                     = 2420;
  uaDetailEstNeeds                      = 2421;
  uaMaterialRealNeeds                   = 2430;
  uaMaterialEstNeeds                    = 2431;

  uaNewEngineeringOrder                 = 1620;
  uaEngineeringOrders                   = 1621;
  uaEngineeringOrderTypes               = 1622;

  uaEmployeeDayAbsenceReasons           = 1730;
  uaEmployeeHourAvailabilityModifierReasons = 1731;
  uaEmployeesAvailbility                = 1732;
  uaEmployeePresenceDeviation           = 1733;
  uaEmployeesTotalAvailbility           = 1734;
  uaEmployeeDayAbsences                 = 1735;
  uaEmployeesAvailabilityGraph          = 1736;
  uaFailedEmployeeMovements             = 1737;

  uaOrganisationTaskProposals           = 2501;

  uaDeliveryTypes                       = 2550;

  uaExceptEventTypes                    = 2560;
  uaExceptEvents                        = 2561;

  uaCompanyTypes                        = 2580;
  uaDeliveryDecisions                   = 2581;
  uaSaleDecisionTypes                   = 2582;

  uaFinModelLineReasons                 = 2601;
  uaFinClasses                          = 2602;
  uaFinancialProducts                   = 2603;
  uaFinancialCommonGroups               = 2604;
  uaNewFinancialOrder                   = 2605;
  uaFinancialOrders                     = 2606;
  uaRealFinModelLines                   = 2607;
  uaRealFinModelLineGroups              = 2608;

  uaFinPlannedStoreDeals                = 2609;
  uaFinUncoveredPSDSingle               = 2610;
  uaFinStoreDeals                       = 2612;
  uaFinStoreRequests                    = 2613;
  uaFinVIMQuantity                      = 2614;
  uaFinQuantityDeficit                  = 2615;
  uaFinStoreQuantities                  = 2616;
  uaFinVIMValueGained                   = 2617;
  uaFinParRelProductSales               = 2618;
  uaFinSaleRequestGroups                = 2619;
  uaFinSalesOverviewExp                 = 2620;
  uaFinEstPricesCompareGraph            = 2621;
  uaFinParRelProductDeliveries          = 2622;
  uaFinDeficitCoverDecisions            = 2623;
  uaFinSaleOrders                       = 2624;
  uaFinDeliveryDialogs                  = 2625;
  uaFinDeliveries                       = 2626;
  uaFinNoms                             = 2627;
  uaFinMeasures                         = 2628;
  uaFinProductQuantitiesTree            = 2629;
  uaFinancialRelationsGraph             = 2633;
  uaFinancialRelationsTable             = 2634;

  uaDeliveryDialogs                     = 2630;
  uaDeliveryDialogsEnvCover             = 2631;
  uaDeliveryDialogsOccCover             = 2635;
  uaSaleRequestGroups                   = 2632;
  uaProcessActions                      = 2637;
  uaProcessKnowlsTree                   = 2638;
  uaProcessFunctionsTree                = 2639;
  uaProcessBaseOperationsTree           = 2640;
  uaProcessConcreteOperationsTree       = 2641;

  uaVatPeriods                          = 2642;

  uaOrganisationPrcData                 = 2643;
  uaOrgPrcDataDistribution              = 2644;
  uaDeptsPrcData                        = 2645;

  uaVatReasons                          = 2646;
  uaInvoiceNoGenerators                 = 2647;


  // edit activity consts
  uaUsersEdit                           = 3100;
  uaConfigEdit                          = 3101;
  uaUserActivitiesEdit                  = 3102;
  uaConfigAnyUser                       = 3103;
  uaUserGroupsEdit                      = 3104;
  uaUserGroupActivitiesEdit             = 3105;
  uaSysRolesEdit                        = 3106;
  uaDocConfigEdit                       = 3111;
  uaDaysOffEdit                         = 3112;
  uaAccessRulesEdit                     = 3113;

  uaCurrencyRatesEdit                   = 3200;
  uaProductsEdit                        = 3201;
  uaVendorProductNamesEdit              = 3204;
  uaDeptsEdit                           = 3205;
  uaEmployeesEdit                       = 3210;
  uaAllCompaniesEdit                    = 3211;
  uaPrioritiesEdit                      = 3222;
  uaCountriesEdit                       = 3223;
  uaLanguagesEdit                       = 3224;
  uaCustomhousesEdit                    = 3226;
  uaCurrenciesEdit                      = 3227;
  uaMeasuresEdit                        = 3228;
  uaShipmentTypesEdit                   = 3229;
  uaNomsEdit                            = 3230;
  uaCompanyEdit                         = 3231;
  uaDocItemTypesEdit                    = 3233;
  uaProfessionsEdit                     = 3235;
  uaTeamsEdit                           = 3236;
  uaMonthTeamsEdit                      = 3237;
  uaSaleTypesEdit                       = 3238;
  uaDeptTypesEdit                       = 3239;
  uaManageProductGroups                 = 3241;
  uaEducationsEdit                      = 3243;
  uaDocItemViewGeneratorsEdit           = 3244;
  uaExecuteServersEdit                  = 3245;
  uaFileExtensionsEdit                  = 3246;
  uaDocItemTemplatesEdit                = 3252;
  uaWorkPrioritiesEdit                  = 3253;
  uaPrecisionLevelsEdit                 = 3254;
  uaEmployeeDisciplineEventsOnlyEdit    = 3255;
  uaPerson                              = 3256;
  uaProductPeriodsEdit                  = 3257;
  uaPastOrCurrentProductPeriodEdit      = 3258;
  uaPastOrCurrentParRelPeriodEdit       = 3259;
  uaPastOrCurrentParRelProductPeriodEdit= 3260;
  uaParRelPeriodPriceModifiersEdit      = 3261;
  uaProductSetsEdit                     = 3262;
  uaContactTypesEdit                    = 3264;
  uaDocProfilesEdit                     = 3265;
  uaParRelEdit                          = 3266;
  uaDocItemStorageTypesEdit             = 3267;

  uaCraftsEdit                          = 3305;
  uaCraftTypesEdit                      = 3306;

  uaSaleOrdersEdit                      = 3300;

  uaStoreDealsEdit                      = 3401;
  uaPlannedStoreDealsEdit               = 3402;

//  uaStoreRequestsEdit                   = 3403; - iztrito

  uaProductionOrdersEdit                = 3500;
  uaUncoveredModelsEdit                 = 3550;

  uaProductionProductEdit               = 3571;

  uaXModelEdit                          = 3600;
  uaSpecificationsEdit                  = 3601;
  uaCommonGroupsEdit                    = 3602;

  uaDeficitCoverDecisionsEdit           = 3800;
  uaDeliveriesEdit                      = 3802;
  uaDeliveriesEnvCoverEdit              = 3803;
  uaDeliveriesOccCoverEdit              = 3804;
  uaDeficitCoverDecisionsEnvCoverEdit   = 3805;
  uaDeficitCoverDecisionsOccCoverEdit   = 3806;

  uaInvoiceOutEdit                      = 4000;
  uaInvoiceManualInvoiceNo              = 4001;
  uaUnapproveInvoice                    = 4002;

  uaBudgetOrderExpenseEdit              = 4030;
  uaBudgetOrderInvestEdit               = 4031;
  uaBudgetOrderExpenseDecision          = 4032;
  uaBudgetOrderInvestDecision           = 4033;
  uaBOIOrderExpenseEdit                 = 4034;
  uaBOIOrderInvestEdit                  = 4035;
  uaBOIOrderExpenseDecision             = 4036;
  uaBOIOrderInvestDecision              = 4037;

  uaVIMQuantityEdit                     = 3420;
  uaQuantityDeficitEdit                 = 3421;
//  uaVIMValueGainedEdit                  = 4300;
  uaOccupationsAndEmployeesEdit         = 4307;
  uaShiftsEdit                          = 4308;
  uaProfessionKindsEdit                 = 4309;
  uaShiftRegimesEdit                    = 4311;
  uaShiftRegimesActiveEdit              = 4312;
  uaSalesOverviewExpEdit                = 4100;
  uaUncoveredPSDEdit                    = 4200;
  uaProductMinQuantitiesEdit            = 4010;
  uaEngineeringOrdersEdit               = 4020;
  uaEngineeringOrderTypesEdit           = 4025;
  uaParRelProductSalesEdit              = 4027;
  uaParRelProductDeliveriesSaleCoverEdit = 4028;
  uaParRelProductDeliveriesEnvCoverEdit = 4029;

  uaEmployeeDayAbsenceReasonsEdit       = 4040;
  uaEmployeeHourAvailabilityModifierReasonsEdit = 4041;
  uaEmployeeMovementsEdit               = 4042;
  uaEmployeeAvailabilityModifiersEdit   = 4043;
  uaEmployeeAvailabilityModifierStorno  = 4044;

  uaOrganisationTaskProposalsEdit       = 4101;
  uaOrganisationTaskProposalsResultEdit = 4102;

  uaDeliveryTypesEdit                   = 4160;

  uaDisciplineEventTypesEdit            = 4170;

  uaExceptEventTypesEdit                = 4180;
  uaExceptEventTasksEdit                = 4185;
  uaExceptEventDamagesEdit              = 4186;
  uaExceptEventsEdit                    = 4187;
  uaExceptEventsControl                 = 4188;
  uaExceptEventsControlDeptRequired     = 4189;
  uaExceptEventsEditOTP                 = 4190;
  uaExceptEventSetInformativeLevel      = 4198;

  uaCompanyTypesEdit                    = 4195;
  uaDeliveryDecisionsEdit               = 4196;
  uaSaleDecisionTypesEdit               = 4197;

  uaFinModelLineReasonsEdit             = 4201;
  uaFinClassesEdit                      = 4202;

  uaOccupationWorkDeptPrioritiesEdit    = 4212;
  uaOrgWorkActivitiesEdit               = 4213;

  uaFinancialProductsEdit               = 4301;
  uaFinancialProductPeriodsEdit         = 4302;
  uaFinancialCommonGroupsEdit           = 4303;
  uaFinancialOrderEdit                  = 4304;
  uaRealFinancialModelEdit              = 4305;
  uaActivateFinancialModel              = 4317;
  uaRFMLEditBeforeActivation            = 4318;
  uaRFMLEditBeforeAndAfterActivation    = 4319;

  uaFinPlannedStoreDealsEdit            = 4306;
  uaFinUncoveredPSDSingleEdit           = 4321;
  uaFinStoreDealsEdit                   = 4322;
  uaNewFinStoreDealIn                   = 4323;
  uaNewFinWorkStoreDealIn               = 4324;
  uaNewFinStoreDealOut                  = 4325;
  uaNewFinWorkStoreDealOut              = 4326;
  uaNewFinStoreRequest                  = 4327;
  uaEditFinStoreRequestIn               = 4328;
  uaEditFinStoreRequestOut              = 4329;
  uaFinishFinStoreRequest               = 4330;
  uaAnnulFinStoreRequest                = 4331;
  uaFinWorkStoreDealsFromStoreRequestIn = 4332;
  uaFinWorkStoreDealsFromStoreRequestOut = 4333;
  uaFinStoreDealsFromStoreRequestIn     = 4334;
  uaFinStoreDealsFromStoreRequestOut    = 4335;
  uaFinVIMQuantityEdit                  = 4336;
  uaFinQuantityDeficitEdit              = 4337;
  uaFinParRelProductSalesEdit           = 4338;
  uaNewFinSaleRequestGroup              = 4339;
  uaFinSaleRequestGroupsEdit            = 4340;
  uaFinSalesOverviewExpEdit             = 4341;
  uaFinSaleCorrect                      = 4342;
  uaFinSaleConclude                     = 4343;
  uaFinSaleAnnul                        = 4344;
  uaFinParRelProductDeliveriesEdit      = 4345;
  uaNewFinDeficitCoverDecision          = 4346;
  uaFinDeficitCoverDecisionsEdit        = 4347;
  uaFinSaleOrdersEdit                   = 4348;
  uaFinDeliveryDialogsEdit              = 4349;
  uaFinDeliveriesEdit                   = 4350;
  uaFinNomsEdit                         = 4351;
  uaFinMeasuresEdit                     = 4352;

  uaDeliveryDialogsEdit                 = 4353;
  uaDeliveryDialogsEnvCoverEdit         = 4354;
  uaDeliveryDialogsOccCoverEdit         = 4356;
  uaSaleRequestGroupsEdit               = 4355;
  uaBaseGroupsEdit                      = 4357;
  uaProcessActionsEdit                  = 4359;
  uaProcessKnowlsTreeEdit               = 4360;
  uaProcessFunctionsTreeEdit            = 4361;
  uaProcessBaseOperationsTreeEdit       = 4362;
  uaProcessConcreteOperationsTreeEdit   = 4363;

  uaVatPeriodsEdit                      = 4364;
  uaDeptsPrcDataEdit                    = 4365;
  uaVatReasonsEdit                      = 4366;
  uaInvoiceNoGeneratorsEdit             = 4367;

// delete activity consts
  uaSpecificationsDelete                = 6602;
  uaXModelsDelete                       = 6603;

///////////////////////////////
  uaSaleCorrect                         = 5010;
  uaSaleConclude                        = 5011;
  uaSaleAnnul                           = 5012;
  uaProductionOrderConclude             = 5014;
  uaProductionOrderAnnul                = 5015;

  uaShowLevelOneInvestedValues          = 5016;
  uaShowHighLevelInvestedValues         = 5008;
  uaShowSalePrices                      = 5009;
  uaEditSalePrice                       = 5006;
  uaEditSaleDiscount                    = 5007;

  uaSaveFilterVariants                  = 5017;
  uaShowEGN                             = 5018;
  uaShowSalary                          = 5019;

  uaNewGroupSaleRequest                 = 5020;
  uaEditGroupSaleRequest                = 5021;
  uaAnnulGroupSaleRequest               = 5022;
  uaCreateGroupSale                     = 5023;
  uaEditGroupSale                       = 5024;
  uaAnnulGroupSale                      = 5025;
  uaFinishGroupSale                     = 5026;
  uaAnnulFinishedGroupSale              = 5027;
  uaGroupSaleRequests                   = 5028;

  uaSaleQuantities                      = 5030;
  uaAuthorizeSpecModelVariant           = 5040;
  uaAuthorizeSpecification              = 5041;
  uaReplaceProductInSpecifications      = 5042;
  uaEditExternalWorkPrice               = 5043;
  uaParRelProductSales                  = 5044;
  uaParRelProductDeliveriesSaleCover    = 5045;
  uaEstQuantitiesTable                  = 5046;
  uaEstQuantitiesGraph                  = 5047;
  uaEstPricesCompareGraphDeliveries     = 5048;
  uaParRelProductDeliveriesEnvCover     = 5049;
  uaShowFinStores                       = 5050;
  uaClientPriceList                     = 5051;
  uaVendorPriceList                     = 5052;
  uaShowOccupationWorkDeptFinStores     = 5053;

  uaParRelProductBudgetDeliveries       = 5105;
  uaParRelProductBudgetDeliveriesEdit   = 5106;

  uaMllChangeRequest                    = 5221;
  uaMllChangeReplyInNotOwnMll           = 5222;
  uaMllChangeReplyAcceptInNotOwnRequest = 5223;
  uaMllStoreChange                      = 5226;

  uaMllcChangeIndicator                 = 5231;
  uaMllcMyChangeIndicator               = 5232;
  uaMllcMyMlChangeIndicator             = 5233;

  uaUpdateImportedSpecInOthers          = 5240;

  uaMakeXModelLimiting                  = 5250;
  uaEditLimitingXModel                  = 5251;
  uaEditForeignXModel                   = 5252;
  uaXModelsMakeChanges                  = 5253;
  uaXModelsEditSale                     = 5254;
  uaCloseXModel                         = 5255;
  uaArchiveXModel                       = 5256;
  uaModelTasksMLMSOperations            = 5257;

  uaSelectOKIDU                         = 5260;
  uaSelectDefaultSpecModelVariant       = 5261;
  uaEditForeignSpecification            = 5262;
  uaDeleteForeignSpecification          = 5263;
  uaEditSpecificationModel              = 5264;
  uaSpecClearStructChanges              = 5265;

  uaEngineeringOrderActivate            = 5300;
  uaEngineeringOrderClose               = 5310;
  uaEngineeringOrderAnnul               = 5320;

  uaFarEmployeeMovement                 = 5330;

  uaExceptEventCtrlIndicator            = 5340;
  uaExceptEventCtrlDeptIndicator        = 5341;
  uaExceptEventCtrlUserIndicator        = 5342;

  uaExceptEventTaskRealUserIndicator    = 5343;
  uaExceptEventTaskRealDeptIndicator    = 5344;

// prava za modificirane na default filter variant = pravoto za pokazvane na spravkata + 50 s 2 izkliuchenia
  uaEmployeesModifyFilter               = 1260;
  uaAllCompaniesModifyFilter            = 1261;
  uaTeamsModifyFilter                   = 1286;
  uaMonthTeamsModifyFilter              = 1287;
  uaVIMValueGainedModifyFilter          = 1350;
  uaSaleOrdersModifyFilter              = 1352;       // tova pravo e za 2 filtyra
  uaStoreQuantitiesModifyFilter         = 1454;       // tova pravo e za 2 filtyra
  uaStoreDealsModfiyFilter              = 1455;
  uaPlannedStoreDealsModifyFilter       = 1456;
  uaStoreRequestsModifyFilter           = 1460;
  uaVIMQuantityModifyFilter             = 1470;
  uaQuantityDeficitModifyFilter         = 1471;
  uaUncoveredModelsModifyFilter         = 1610;       // tova pravo se razlichava s 60 zaradi kolizia

//  da se razkarat starite i da se slojat novite prava za svobodno filtrirane

  uaUnfinishedMfgModifyFilter           = 1630;
  uaRealCapacityGraphModifyFilter       = 1641;
  uaRealCapacityTableModifyFilter       = 1643;
  uaEstCapacityGraphModifyFilter        = 1644;
  uaEstCapacityTableModifyFilter        = 1645;
  uaSpecificationsModifyFilter          = 1651;
  uaBaseGroupsModifyFilter              = 1654;
  uaDeptDetailFlowModifyFilter          = 1655;
  uaCommonGroupsModifyFilter            = 1657;
  uaDeficitCoverDecisionsModifyFilter   = 1851;
  uaDeliveriesModifyFilter              = 1852;       // tova pravo e za 3 filtyra
  uaDeliveriesEnvCoverModifyFilter      = 1853;
  uaDeliveriesOccCoverModifyFilter      = 1854;
  uaDeficitCoverDecisionsEnvCoverModifyFilter = 1855;
  uaDeficitCoverDecisionsOccCoverModifyFilter = 1856;
  uaInvoicesOutModifyFilter             = 2052;
  uaBudgetOrdersExpenseModifyFilter     = 2080;
  uaBudgetOrdersInvestModifyFilter      = 2081;
  uaBOIOrdersExpenseModifyFilter        = 2082;
  uaBOIOrdersInvestModifyFilter         = 2083;
  uaBudgetExpenseModifyFilter           = 2095;
  uaBudgetInvestModifyFilter            = 2096;
  uaSalesOverviewExpModifyFilter        = 2150;       // tova pravo e za 2 filtyra
  uaUncoveredPSDModifyFilter            = 2250;
  uaEmployeeEarningsModifyFilter        = 2351;
  uaWorkHoursModifyFilter               = 2355;
  uaOccupationsAndEmployeesFilter       = 2356;
  uaResultProductNeedsModifyFilter      = 2460;
  uaDetailNeedsModifyFilter             = 2470;
  uaMaterialNeedsModifyFilter           = 2480;
  uaSaleQuantitiesModifyFilter          = 5080;
  uaEngineeringOrdersModifyFilter       = 1671;
  uaEmployeesAvailbilityFilter          = 1782;
  uaEmployeesAvailabilityGraphModifyFilter = 1786;
  uaEstQuantitiesTableModifyFilter      = 1787;
  uaEstQuantitiesGraphModifyFilter      = 1788;
  uaEstPricesCompareGraphDeliveriesModifyFilter = 1789;
  uaExceptEventsModifyFilter            = 2611;
  uaOrganisationTaskProposalsModifyFilter = 2551;
  uaVendorProductSignaturesModifyFilter = 1254;
  uaDisciplineEventsModifyFilter        = 2362;
  uaFinancialCommonGroupsModifyFilter   = 2363;
  uaFinancialOrdersModifyFilter         = 2364;
  uaRealFinModelLinesModifyFilter       = 2365;
  uaRealFinModelLineGroupsModifyFilter  = 2366;

  uaFinPlannedStoreDealsModifyFilter    = 2367;
  uaFinUncoveredPSDSingleModifyFilter   = 2368;
  uaFinStoreDealsModifyFilter           = 2369;
  uaFinStoreRequestsModifyFilter        = 2370;
  uaFinVIMQuantityModifyFilter          = 2371;
  uaFinQuantityDeficitModifyFilter      = 2372;
  uaFinStoreQuantitiesModifyFilter      = 2373;
  uaFinVIMValueGainedModifyFilter       = 2374;
  uaFinSaleRequestGroupsModifyFilter    = 2375;
  uaFinSalesOverviewExpModifyFilter     = 2376;
  uaFinEstPricesCompareGraphModifyFilter = 2377;
  uaFinDeficitCoverDecisionsModifyFilter = 2378;
  uaFinSaleOrdersModifyFilter           = 2379;
  uaFinDeliveryDialogsModifyFilter      = 2380;
  uaFinDeliveriesModifyFilter           = 2381;

  uaDeliveryDialogsModifyFilter         = 2382;
  uaDeliveryDialogsEnvCoverModifyFilter = 2383;
  uaDeliveryDialogsOccCoverModifyFilter = 2392;
  uaSaleRequestGroupsModifyFilter       = 2384;

  uaFinancialRelationsGraphFilter       = 2385;
  uaFinancialRelationsTableFilter       = 2386;

  uaParRelProductSalesModifyFilter      = 2387;
  uaParRelProductDeliveriesSaleCoverModifyFilter = 2388;
  uaParRelProductDeliveriesEnvCoverModifyFilter = 2389;
  uaFinParRelProductSalesModifyFilter   = 2390;
  uaFinParRelProductDeliveriesModifyFilter = 2391;

  uaStoreRequestMuldiEditInModifyFilter = 4097;
  uaStoreRequestMultiEditOutModifyFilter = 4103;
  uaFinStoreRequestMultiEditModifyFilter = 4161;

  uaClientPriceListModifyFilter          = 4162;
  uaVendorPriceListModifyFilter          = 4163;
  uaOrgPrcDataDistributionModifyFilter   = 4164;
  uaDeptsProcDataModifyFilter            = 4165;

  uaEditGroupSaleRequestModifyFilter     = 4166;

  uaEditDoc                             = 5902;

  uaCanChangeMirrorsDirectoryStructure  = 5903;
  uaPoolManagers                        = 5904;
  uaMemoryManager                       = 5905;
  uaAutomatedAddEmployeeMovement        = 5906;
  uaActiveConnections                   = 5907;
  uaActiveConnectionsEdit               = 5908;

  uaDevelopDocItem                      = 5911;
  uaAuthorizeDocItem                    = 5912;
  uaApproveDocItem                      = 5913;
  uaUnapproveDocItem                    = 5914;
  uaUnauthorizeDocItem                  = 5915;

const
  RealFinancialModelEditActivities: array[0..3] of Integer =
    (uaRealFinancialModelEdit, uaActivateFinancialModel, uaRFMLEditBeforeActivation, uaRFMLEditBeforeAndAfterActivation);

implementation

end.

