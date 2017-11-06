unit dProcesses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,
  dDBPooledDataModule, WideStrings, DB, SqlExpr, AbmesSQLConnection,
  dPooledDataModule, FMTBcd, Provider, AbmesSQLQuery,
  AbmesFields, DBClient, JvStringHolder, uPrcUtils, AbmesClientDataSet,
  uPrcDeclarations, DBXDevartOracle, uSmartLock;

type
  TdmProcesses = class(TDBPooledDataModule)
    qryProcessActions: TAbmesSQLQuery;
    prvProcessActions: TDataSetProvider;
    qryProcessActionsPRC_ACTION_CODE: TAbmesFloatField;
    qryProcessActionsPRC_ACTION_NO: TAbmesFloatField;
    qryProcessActionsPRC_ACTION_NAME: TAbmesWideStringField;
    qryProcessActionsPRC_ACTION_ABBREV: TAbmesWideStringField;
    qryProcessActionsIS_CONCRETE_ACTION: TAbmesFloatField;
    qryNewProcessActionCode: TAbmesSQLQuery;
    qryNewProcessActionCodeNEW_PRC_ACTION_CODE: TAbmesFloatField;
    qryProcessActionsIS_BASE_ACTION: TAbmesFloatField;
    qryProcessKnowls: TAbmesSQLQuery;
    prvProcessKnowls: TDataSetProvider;
    qryNewProcessKnowlCode: TAbmesSQLQuery;
    qryGetNewProcessKnowlLocalNo: TAbmesSQLQuery;
    mshLocalMacroLibrary: TJvMultiStringHolder;
    qryProcessKnowlsPrintTree: TAbmesSQLQuery;
    prvProcessKnowlsPrintTree: TDataSetProvider;
    qryProcessKnowlsPrintTreeNODE_ID: TAbmesFloatField;
    qryProcessKnowlsPrintTreePARENT_NODE_ID: TAbmesFloatField;
    qryProcessKnowlsPrintTreeNODE_NAME: TAbmesWideStringField;
    qryProcessKnowlsPrintTreeFORMATED_NODE_NO: TAbmesWideStringField;
    qryProcessKnowlsPrintTreeNODE_LEVEL: TAbmesFloatField;
    qryProcessKnowlsPrintTreeNODE_CHILD_COUNT: TAbmesFloatField;
    qryProcessKnowlsPrintTreeNODE_TYPE: TAbmesFloatField;
    qryProcessKnowlsPrintTreeIS_LAST_CHILD: TAbmesFloatField;
    qryProcessKnowlsPrintTreeHAS_CHILDREN: TAbmesFloatField;
    qryProcessFunctions: TAbmesSQLQuery;
    qryProcessFunctionsPRC_FUNC_CODE: TAbmesFloatField;
    qryProcessFunctionsPARENT_PRC_FUNC_CODE: TAbmesFloatField;
    qryProcessFunctionsPRC_FUNC_LOCAL_NO: TAbmesFloatField;
    qryProcessFunctionsPRC_FUNC_NAME: TAbmesWideStringField;
    qryProcessFunctionsPRC_FUNC_SHORT_NAME: TAbmesWideStringField;
    qryProcessFunctionsIS_GROUP: TAbmesFloatField;
    qryProcessFunctionsPRC_FUNC_FULL_NO: TAbmesWideStringField;
    qryProcessFunctionsPRC_FUNC_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryProcessFunctionsDOC_BRANCH_CODE: TAbmesFloatField;
    qryProcessFunctionsDOC_CODE: TAbmesFloatField;
    qryProcessFunctionsHAS_DOC_ITEMS: TAbmesFloatField;
    prvProcessFunctions: TDataSetProvider;
    qryProcessFunction: TAbmesSQLQuery;
    qryProcessFunctionPRC_FUNC_CODE: TAbmesFloatField;
    qryProcessFunctionPARENT_PRC_FUNC_CODE: TAbmesFloatField;
    qryProcessFunctionPRC_FUNC_LOCAL_NO: TAbmesFloatField;
    qryProcessFunctionPRC_FUNC_NAME: TAbmesWideStringField;
    qryProcessFunctionPRC_FUNC_SHORT_NAME: TAbmesWideStringField;
    qryProcessFunctionIS_GROUP: TAbmesFloatField;
    qryProcessFunctionPARENT_FULL_NO: TAbmesWideStringField;
    qryProcessFunctionDOC_BRANCH_CODE: TAbmesFloatField;
    qryProcessFunctionDOC_CODE: TAbmesFloatField;
    qryProcessFunctionHAS_DOC_ITEMS: TAbmesFloatField;
    prvProcessFunction: TDataSetProvider;
    qryNewProcessFunctionCode: TAbmesSQLQuery;
    qryGetNewProcessFunctionLocalNo: TAbmesSQLQuery;
    qryNewProcessFunctionCodeNEW_PRC_FUNC_CODE: TAbmesFloatField;
    qryGetNewProcessFunctionLocalNoNEW_PRC_FUNC_LOCAL_NO: TAbmesFloatField;
    qryProcessFunctionsPrintTree: TAbmesSQLQuery;
    qryProcessFunctionsPrintTreeNODE_ID: TAbmesFloatField;
    qryProcessFunctionsPrintTreePARENT_NODE_ID: TAbmesFloatField;
    qryProcessFunctionsPrintTreeNODE_NAME: TAbmesWideStringField;
    qryProcessFunctionsPrintTreeFORMATED_NODE_NO: TAbmesWideStringField;
    qryProcessFunctionsPrintTreeNODE_LEVEL: TAbmesFloatField;
    qryProcessFunctionsPrintTreeNODE_CHILD_COUNT: TAbmesFloatField;
    qryProcessFunctionsPrintTreeNODE_TYPE: TAbmesFloatField;
    qryProcessFunctionsPrintTreeIS_LAST_CHILD: TAbmesFloatField;
    qryProcessFunctionsPrintTreeHAS_CHILDREN: TAbmesFloatField;
    prvProcessFunctionsPrintTree: TDataSetProvider;
    qryProcessBaseOperations: TAbmesSQLQuery;
    qryProcessBaseOperationsPRC_BASE_OP_CODE: TAbmesFloatField;
    qryProcessBaseOperationsPARENT_PRC_BASE_OP_CODE: TAbmesFloatField;
    qryProcessBaseOperationsPRC_BASE_OP_LOCAL_NO: TAbmesFloatField;
    qryProcessBaseOperationsPRC_BASE_OP_NAME: TAbmesWideStringField;
    qryProcessBaseOperationsPRC_BASE_OP_SHORT_NAME: TAbmesWideStringField;
    qryProcessBaseOperationsIS_GROUP: TAbmesFloatField;
    qryProcessBaseOperationsPRC_BASE_OP_FULL_NO: TAbmesWideStringField;
    qryProcessBaseOperationsPRC_BASE_OP_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryProcessBaseOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    qryProcessBaseOperationsDOC_CODE: TAbmesFloatField;
    qryProcessBaseOperationsHAS_DOC_ITEMS: TAbmesFloatField;
    prvProcessBaseOperations: TDataSetProvider;
    prvProcessBaseOperation: TDataSetProvider;
    qryProcessBaseOperation: TAbmesSQLQuery;
    qryProcessBaseOperationPRC_BASE_OP_CODE: TAbmesFloatField;
    qryProcessBaseOperationPARENT_PRC_BASE_OP_CODE: TAbmesFloatField;
    qryProcessBaseOperationPRC_BASE_OP_LOCAL_NO: TAbmesFloatField;
    qryProcessBaseOperationPRC_BASE_OP_NAME: TAbmesWideStringField;
    qryProcessBaseOperationPRC_BASE_OP_SHORT_NAME: TAbmesWideStringField;
    qryProcessBaseOperationIS_GROUP: TAbmesFloatField;
    qryProcessBaseOperationPARENT_FULL_NO: TAbmesWideStringField;
    qryProcessBaseOperationDOC_BRANCH_CODE: TAbmesFloatField;
    qryProcessBaseOperationDOC_CODE: TAbmesFloatField;
    qryProcessBaseOperationHAS_DOC_ITEMS: TAbmesFloatField;
    qryGetNewProcessBaseOperationCode: TAbmesSQLQuery;
    qryGetNewProcessBaseOperationLocalNo: TAbmesSQLQuery;
    qryProcessBaseOperationsPrintTree: TAbmesSQLQuery;
    prvProcessBaseOperationsPrintTree: TDataSetProvider;
    qryGetNewProcessBaseOperationCodeNEW_PRC_BASE_OP_CODE: TAbmesFloatField;
    qryGetNewProcessBaseOperationLocalNoNEW_PRC_BASE_OP_LOCAL_NO: TAbmesFloatField;
    qryProcessBaseOperationsPrintTreeNODE_ID: TAbmesFloatField;
    qryProcessBaseOperationsPrintTreePARENT_NODE_ID: TAbmesFloatField;
    qryProcessBaseOperationsPrintTreeNODE_NAME: TAbmesWideStringField;
    qryProcessBaseOperationsPrintTreeFORMATED_NODE_NO: TAbmesWideStringField;
    qryProcessBaseOperationsPrintTreeNODE_LEVEL: TAbmesFloatField;
    qryProcessBaseOperationsPrintTreeNODE_CHILD_COUNT: TAbmesFloatField;
    qryProcessBaseOperationsPrintTreeNODE_TYPE: TAbmesFloatField;
    qryProcessBaseOperationsPrintTreeIS_LAST_CHILD: TAbmesFloatField;
    qryProcessBaseOperationsPrintTreeHAS_CHILDREN: TAbmesFloatField;
    qryProcessConcreteOperations: TAbmesSQLQuery;
    qryProcessConcreteOperationsPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    qryProcessConcreteOperationsPARENT_PRC_CONCRETE_OP_CODE: TAbmesFloatField;
    qryProcessConcreteOperationsPRC_CONCRETE_OP_LOCAL_NO: TAbmesFloatField;
    qryProcessConcreteOperationsPRC_CONCRETE_OP_NAME: TAbmesWideStringField;
    qryProcessConcreteOperationsPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField;
    qryProcessConcreteOperationsIS_GROUP: TAbmesFloatField;
    qryProcessConcreteOperationsPRC_CONCRETE_OP_FULL_NO: TAbmesWideStringField;
    qryProcessConcreteOperationsPRC_CONCR_OP_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryProcessConcreteOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    qryProcessConcreteOperationsDOC_CODE: TAbmesFloatField;
    qryProcessConcreteOperationsHAS_DOC_ITEMS: TAbmesFloatField;
    qryProcessConcreteOperation: TAbmesSQLQuery;
    qryProcessConcreteOperationPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    qryProcessConcreteOperationPARENT_PRC_CONCRETE_OP_CODE: TAbmesFloatField;
    qryProcessConcreteOperationPRC_CONCRETE_OP_LOCAL_NO: TAbmesFloatField;
    qryProcessConcreteOperationPRC_CONCRETE_OP_NAME: TAbmesWideStringField;
    qryProcessConcreteOperationPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField;
    qryProcessConcreteOperationIS_GROUP: TAbmesFloatField;
    qryProcessConcreteOperationPARENT_FULL_NO: TAbmesWideStringField;
    qryProcessConcreteOperationDOC_BRANCH_CODE: TAbmesFloatField;
    qryProcessConcreteOperationHAS_DOC_ITEMS: TAbmesFloatField;
    qryGetNewProcessConcreteOperationLocalNo: TAbmesSQLQuery;
    qryGetNewProcessConcreteOperationCode: TAbmesSQLQuery;
    qryGetNewProcessConcreteOperationCodeNEW_PRC_CONCRETE_OP_CODE: TAbmesFloatField;
    qryGetNewProcessConcreteOperationLocalNoNEW_PRC_CONCRETE_OP_LOCAL_NO: TAbmesFloatField;
    qryProcessConcreteOperationsPrintTree: TAbmesSQLQuery;
    qryProcessConcreteOperationsPrintTreeNODE_ID: TAbmesFloatField;
    qryProcessConcreteOperationsPrintTreePARENT_NODE_ID: TAbmesFloatField;
    qryProcessConcreteOperationsPrintTreeNODE_NAME: TAbmesWideStringField;
    qryProcessConcreteOperationsPrintTreeFORMATED_NODE_NO: TAbmesWideStringField;
    qryProcessConcreteOperationsPrintTreeNODE_LEVEL: TAbmesFloatField;
    qryProcessConcreteOperationsPrintTreeNODE_CHILD_COUNT: TAbmesFloatField;
    qryProcessConcreteOperationsPrintTreeNODE_TYPE: TAbmesFloatField;
    qryProcessConcreteOperationsPrintTreeIS_LAST_CHILD: TAbmesFloatField;
    qryProcessConcreteOperationsPrintTreeHAS_CHILDREN: TAbmesFloatField;
    prvProcessConcreteOperations: TDataSetProvider;
    prvProcessConcreteOperation: TDataSetProvider;
    prvProcessConcreteOperationsPrintTree: TDataSetProvider;
    qryProcessBaseOperationsDOC_PRODUCT_CODE: TAbmesFloatField;
    qryProcessBaseOperationDOC_PRODUCT_CODE: TAbmesFloatField;
    qryProcessConcreteOperationsDOC_PRODUCT_CODE: TAbmesFloatField;
    qryProcessConcreteOperationDOC_PRODUCT_CODE: TAbmesFloatField;
    qryProcessBaseOperationsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryProcessBaseOperationsPRODUCT_DOC_CODE: TAbmesFloatField;
    qryProcessBaseOperationsPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    qryProcessConcreteOperationsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryProcessConcreteOperationsPRODUCT_DOC_CODE: TAbmesFloatField;
    qryProcessConcreteOperationsPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    qryProcessConcreteOperationDEACTIVATION_DATE: TAbmesSQLTimeStampField;
    qryProcessConcreteOperationIS_INACTIVE: TAbmesFloatField;
    qryProcessConcreteOperationDOC_CODE: TAbmesFloatField;
    qryProcessConcreteOperationsDEACTIVATION_DATE: TAbmesSQLTimeStampField;
    qryProcessConcreteOperationsIS_INACTIVE: TAbmesFloatField;
    qryGetProcessConcreteOperationIsInstance: TAbmesSQLQuery;
    qryGetProcessConcreteOperationCodeByFullNo: TAbmesSQLQuery;
    qryGetProcessConcreteOperationIsInactive: TAbmesSQLQuery;
    qryGetProcessConcreteOperationIsInstanceIS_INSTANCE: TAbmesFloatField;
    qryGetProcessConcreteOperationIsInactiveIS_INACTIVE: TAbmesFloatField;
    qryGetProcessConcreteOperationCodeByFullNoPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    qryProcessConcreteOperationPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryProcessConcreteOperationPRODUCT_DOC_CODE: TAbmesFloatField;
    qryProcessConcreteOperationPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    qryGetProcessBaseOperationCodeByFullNo: TAbmesSQLQuery;
    qryGetProcessBaseOperationIsInstance: TAbmesSQLQuery;
    qryGetProcessBaseOperationIsInstanceIS_INSTANCE: TAbmesFloatField;
    qryGetProcessBaseOperationCodeByFullNoPRC_BASE_OP_CODE: TAbmesFloatField;
    qryProcessBaseOperationPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryProcessBaseOperationPRODUCT_DOC_CODE: TAbmesFloatField;
    qryProcessBaseOperationPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    dsProcessKnowl: TDataSource;
    qryProcessKnowlDetail: TAbmesSQLQuery;
    qryGetProcessFunctionIsInstance: TAbmesSQLQuery;
    qryGetProcessFunctionCodeByFullNo: TAbmesSQLQuery;
    qryGetProcessFunctionIsInstanceIS_INSTANCE: TAbmesFloatField;
    qryGetProcessFunctionCodeByFullNoPRC_FUNC_CODE: TAbmesFloatField;
    qryGetProcessKnowlIsInstance: TAbmesSQLQuery;
    qryGetProcessKnowlCodeByFullNo: TAbmesSQLQuery;
    mshSQLGenerationMacros: TJvMultiStringHolder;
    qryProcessConcreteOperationPRC_CONCR_OP_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryProcessConcreteOperationPRC_CONCRETE_OP_FULL_NO: TAbmesWideStringField;
    prvPrcOpRegimes: TDataSetProvider;
    qryPrcOpRegimes: TAbmesSQLQuery;
    qryPrcOpRegimesPRC_OP_REGIME_CODE: TAbmesFloatField;
    qryPrcOpRegimesPRC_OP_REGIME_NO: TAbmesFloatField;
    qryPrcOpRegimesPRC_OP_REGIME_NAME: TAbmesWideStringField;
    qryPrcOpRegimesPRC_OP_REGIME_ABBREV: TAbmesWideStringField;
    qryPrcLearningStatuses: TAbmesSQLQuery;
    prvPrcLearningStatuses: TDataSetProvider;
    qryPrcLearningStatusesPRC_LEARNING_STATUS_CODE: TAbmesFloatField;
    qryPrcLearningStatusesPRC_LEARNING_STATUS_NO: TAbmesFloatField;
    qryPrcLearningStatusesPRC_LEARNING_STATUS_NAME: TAbmesWideStringField;
    qryProcessActionsDOC_BRANCH_CODE: TAbmesFloatField;
    qryProcessActionsDOC_CODE: TAbmesFloatField;
    qryProcessActionsHAS_DOC_ITEMS: TAbmesFloatField;
    qryProcessBaseOperationsDOC_SPEC_PRODUCT_CODE: TAbmesFloatField;
    qryProcessConcreteOperationsDOC_SPEC_PRODUCT_CODE: TAbmesFloatField;
    qryProcessKnowlsPRC_KNOWL_CODE: TAbmesFloatField;
    qryProcessKnowlsPARENT_PRC_KNOWL_CODE: TAbmesFloatField;
    qryProcessKnowlsPRC_KNOWL_LOCAL_NO: TAbmesFloatField;
    qryProcessKnowlsPRC_KNOWL_NAME: TAbmesWideStringField;
    qryProcessKnowlsPRC_KNOWL_SHORT_NAME: TAbmesWideStringField;
    qryProcessKnowlsIS_GROUP: TAbmesFloatField;
    qryProcessKnowlsPRC_KNOWL_FULL_NO: TAbmesWideStringField;
    qryProcessKnowlsPRC_KNOWL_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryProcessKnowlsDOC_BRANCH_CODE: TAbmesFloatField;
    qryProcessKnowlsDOC_CODE: TAbmesFloatField;
    qryProcessKnowlsHAS_DOC_ITEMS: TAbmesFloatField;
    qryGetNewProcessKnowlLocalNoNEW_PRC_KNOWL_LOCAL_NO: TAbmesFloatField;
    qryNewProcessKnowlCodeNEW_PRC_KNOWL_CODE: TAbmesFloatField;
    qryGetProcessKnowlIsInstanceIS_INSTANCE: TAbmesFloatField;
    qryGetProcessKnowlCodeByFullNoPRC_KNOWL_CODE: TAbmesFloatField;
    qryProcessKnowl: TAbmesSQLQuery;
    prvProcessKnowl: TDataSetProvider;
    qryProcessKnowlPRC_KNOWL_CODE: TAbmesFloatField;
    qryProcessKnowlPARENT_PRC_KNOWL_CODE: TAbmesFloatField;
    qryProcessKnowlPRC_KNOWL_LOCAL_NO: TAbmesFloatField;
    qryProcessKnowlPRC_KNOWL_NAME: TAbmesWideStringField;
    qryProcessKnowlPRC_KNOWL_SHORT_NAME: TAbmesWideStringField;
    qryProcessKnowlIS_GROUP: TAbmesFloatField;
    qryProcessKnowlPARENT_FULL_NO: TAbmesWideStringField;
    qryProcessKnowlDOC_BRANCH_CODE: TAbmesFloatField;
    qryProcessKnowlDOC_CODE: TAbmesFloatField;
    qryProcessKnowlHAS_DOC_ITEMS: TAbmesFloatField;
    qryProcessKnowlDetailPRC_KNOWL_CODE: TAbmesFloatField;
    qryProcessKnowlDetailPRC_BASE_OP_CODE: TAbmesFloatField;
    qryProcessKnowlDetailPRC_BASE_OP_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryProcessFunctionPRC_DATA: TBlobField;
    qryOrgPrcDataBaseOps: TAbmesSQLQuery;
    prvOrgPrcDataBaseOps: TDataSetProvider;
    qryOrgPrcDataDepts: TAbmesSQLQuery;
    prvOrgPrcDataDepts: TDataSetProvider;
    qryOrgPrcDataOccupations: TAbmesSQLQuery;
    prvOrgPrcDataOccupations: TDataSetProvider;
    qryOrgPrcDataConcreteOps: TAbmesSQLQuery;
    prvOrgPrcDataConcreteOps: TDataSetProvider;
    qryOrgPrcDataOrgTaskProposals: TAbmesSQLQuery;
    prvOrgPrcDataOrgTaskProposals: TDataSetProvider;
    qryOrgPrcDataProfessions: TAbmesSQLQuery;
    prvOrgPrcDataProfessions: TDataSetProvider;
    qryProcessActionsIS_PROJECT_ACTION: TAbmesFloatField;
    qryDeptsPrcDataDepts: TAbmesSQLQuery;
    prvDeptsPrcDataDepts: TDataSetProvider;
    qryDeptsPrcDataDeptsDEPT_CODE: TAbmesFloatField;
    qryDeptsPrcDataDeptsPARENT_CODE: TAbmesFloatField;
    qryDeptsPrcDataDeptsDEPT_NAME: TAbmesWideStringField;
    qryDeptsPrcDataDeptsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryDeptsPrcDataDeptsIS_GROUP: TAbmesFloatField;
    qryDeptsPrcDataDeptsDEPT_IMAGE_INDEX: TAbmesFloatField;
    qryDeptsPrcDataDeptsDOC_BRANCH_CODE: TAbmesFloatField;
    qryDeptsPrcDataDeptsDOC_CODE: TAbmesFloatField;
    qryDeptsPrcDataDeptsHAS_DOC_ITEMS: TAbmesFloatField;
    qryDeptsPrcDataPrcData: TAbmesSQLQuery;
    prvDeptsPrcDataPrcData: TDataSetProvider;
    qryDeptsPrcDataPrcDataDEPT_CODE: TAbmesFloatField;
    qryDeptsPrcDataPrcDataPRC_DATA: TBlobField;
    qryDeptsPrcDataPrcDataIS_GROUP: TAbmesFloatField;
    qryDeptsPrcDataPrcDataBEGIN_DATE: TAbmesSQLTimeStampField;
    qryDeptsPrcDataPrcDataEND_DATE: TAbmesSQLTimeStampField;
    qryDeptsPrcDataPrcDataDEPT_TYPE_CODE: TAbmesFloatField;
    qryDeptsPrcDataPrcDataNODE_NO: TAbmesFloatField;
    qryDeptsPrcDataPrcDataSUFFIX_LETTER: TAbmesWideStringField;
    qryDeptsPrcDataPrcDataNODE_NAME: TAbmesWideStringField;
    qryDeptsPrcDataDeptsTOTAL_DEPT_BASE_ACTIONS: TAbmesFloatField;
    qryDeptsPrcDataDeptsTOTAL_DEPT_CONCRETE_ACTIONS: TAbmesFloatField;
    qryDeptsPrcDataDeptsNOT_DISTRIBUTED_DEPT_ACTIONS: TAbmesFloatField;
    qryDeptsPrcDataDeptsNOT_DISTRIB_OCC_BASE_ACTIONS: TAbmesFloatField;
    qryDeptsPrcDataDeptsNOT_DISTRIB_OCC_CONCR_ACTIONS: TAbmesFloatField;
    qryDeptsPrcDataDeptsDEPT_DAYS_LEFT: TAbmesFloatField;
    qryDeptPrcData: TAbmesSQLQuery;
    prvDeptPrcData: TDataSetProvider;
    qryDeptPrcDataDEPT_CODE: TAbmesFloatField;
    qryDeptPrcDataPRC_DATA: TBlobField;
    qryDeptPrcDataIS_GROUP: TAbmesFloatField;
    qryDeptPrcDataBEGIN_DATE: TAbmesSQLTimeStampField;
    qryDeptPrcDataEND_DATE: TAbmesSQLTimeStampField;
    qryDeptPrcDataPARENT_CODE: TAbmesFloatField;
    qryDeptsPrcDataDeptsOCCUPATION_SHIFT_COUNT: TAbmesFloatField;
    qryDeptsPrcDataDeptsPARALLEL_PROCESS_COUNT: TAbmesFloatField;
    qryDeptsPrcDataDeptsPARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    qryDeptsPrcDataDeptsSORT_FIELD: TAbmesWideStringField;
    qryDeptsPrcDataDeptsIS_FILTER_ACCEPTED: TAbmesFloatField;
    qryDeptPrcDataDEPT_TYPE_CODE: TAbmesFloatField;
    qryDeptPrcDataNODE_NO: TAbmesFloatField;
    qryDeptPrcDataSUFFIX_LETTER: TAbmesWideStringField;
    qryDeptPrcDataNODE_NAME: TAbmesWideStringField;
    dsDeptPrcData: TDataSource;
    qryDeptOWDPriorities: TAbmesSQLQuery;
    qryDeptOWDPrioritiesDEPT_CODE: TAbmesFloatField;
    qryDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    qryDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField;
    qryDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField;
    qryDeptPrcDataHAS_OWD_PRIORITIES_CHANGES: TAbmesFloatField;
    qryDeptPrcDataIS_OWD_PRIORITIES_SET_COMPLETE: TAbmesFloatField;
    qryDeptOWDPrioritiesDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    qryDeptOWDPrioritiesHAS_NOT_COVERED_DESCENDANT: TAbmesFloatField;
    qryDeptsPrcDataOccupations: TAbmesSQLQuery;
    prvDeptsPrcDataOccupations: TDataSetProvider;
    qryDeptsPrcDataOccupationsOCCUPATION_CODE: TAbmesFloatField;
    qryDeptsPrcDataOccupationsDEPT_CODE: TAbmesFloatField;
    qryDeptsPrcDataOccupationsOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    qryDeptsPrcDataOccupationsDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    qryDeptsPrcDataOccupationsSORT_FIELD: TAbmesWideStringField;
    qryDeptsPrcDataOccupationsTREE_DISPLAY_NAME: TAbmesWideStringField;
    qryDeptsPrcDataOccupationsASSIGNMENT_DAYS_LEFT: TAbmesFloatField;
    qryDeptsPrcDataOccupationsOWD_PRIORITY_STATE_CODE: TAbmesFloatField;
    qryDeptsPrcDataOccupationsIS_CAPACITY_GENERATOR: TAbmesFloatField;
    qryDeptsPrcDataOccupationsIS_ACTIVE: TAbmesFloatField;
    qryDeptsPrcDataOccupationsIS_OCCUPIED: TAbmesFloatField;
    qryDeptsPrcDataOccupationsIS_MAIN: TAbmesFloatField;
    qryDeptsPrcDataOccupationsOCCUPATION_PHASE: TAbmesWideStringField;
    qryDeptsPrcDataOccupationsOCCUPATION_LEVEL: TAbmesFloatField;
    qryDeptsPrcDataOccupationsOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryDeptsPrcDataOccupationsOCCUPATION_DAYS_LEFT: TAbmesFloatField;
    qryDeptsPrcDataOccupationsDOC_BRANCH_CODE: TAbmesFloatField;
    qryDeptsPrcDataOccupationsDOC_CODE: TAbmesFloatField;
    qryDeptsPrcDataOccupationsHAS_DOC_ITEMS: TAbmesFloatField;
    qryDeptsPrcDataOccupationsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryDeptsPrcDataOccupationsPRODUCT_DOC_CODE: TAbmesFloatField;
    qryDeptsPrcDataOccupationsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryDeptsPrcDataOccupationsEMPLOYEE_OCCUPATION_PROF_COUNT: TAbmesFloatField;
    qryDeptsPrcDataOccupationsOCCUPATION_PROFESSION_COUNT: TAbmesFloatField;
    qryDeptsPrcDataOccupationsOE_MASTERED_PRC_ACTIONS_COUNT: TAbmesFloatField;
    qryDeptsPrcDataOccupationsOCC_PRC_ACTIONS_COUNT: TAbmesFloatField;
    qryDeptsPrcDataOccupationsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeptsPrcDataOccupationsOWDP_DOC_BRANCH_CODE: TAbmesFloatField;
    qryDeptsPrcDataOccupationsOWDP_DOC_CODE: TAbmesFloatField;
    qryDeptsPrcDataOccupationsOWDP_HAS_DOC_ITEMS: TAbmesFloatField;
    qryDeptsPrcDataOccupationsEMPLOYEE_NAME: TAbmesWideStringField;
    qryDeptsPrcDataOccupationsIS_FILTER_ACCEPTED: TAbmesFloatField;
    qryDeptsPrcDataOccupationsTREE_CODE: TAbmesWideStringField;
    qryDeptsPrcDataOccupationsPARENT_TREE_CODE: TAbmesWideStringField;
    qryDeptsPrcDataOccupationsDEPT_OWDP_COVERING_DEPT: TAbmesWideStringField;
    qryDeptsPrcDataDeptsIS_FIN_STORE: TAbmesFloatField;
    prvDeptOWDPCoveredDepts: TDataSetProvider;
    qryDeptOWDPCoveredDepts: TAbmesSQLQuery;
    qryDeptOWDPCoveredDeptsDEPT_CODE: TAbmesFloatField;
    qryDeptOWDPCoveredDeptsPARENT_CODE: TAbmesFloatField;
    qryDeptOWDPCoveredDeptsDEPT_NAME: TAbmesWideStringField;
    qryDeptOWDPCoveredDeptsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryDeptOWDPCoveredDeptsIS_COVERED: TAbmesFloatField;
    qryDeptOWDPCoveredDeptsIS_FIN_STORE: TAbmesFloatField;
    qryDeptOWDPCoveredDeptsDEPT_IMAGE_INDEX: TAbmesFloatField;
    qryDeptOWDPCoveredDeptsHAS_COVERED_DESCENDANTS: TAbmesFloatField;
    qryDeptOWDPCoveredDeptsSORT_FIELD: TAbmesWideStringField;
    qryDeptsPrcDataOccupationsSHIFT_IDENTIFIER: TAbmesWideStringField;
    qryDeptsPrcDataDeptsHAS_EXEC_EXPL_OWD_PRIORITIES: TAbmesFloatField;
    qryDeptsPrcDataDeptsHAS_MNG_EXPL_OWD_PRIORITIES: TAbmesFloatField;
    qryDeptsPrcDataDeptsHAS_EXEC_SVC_OWD_PRIORITIES: TAbmesFloatField;
    qryDeptsPrcDataDeptsDEPT_OWD_PRIORITY_STATE_CODE: TAbmesFloatField;
    qryDeptOWDPCoveredDeptsIS_DELEGATED: TAbmesFloatField;
    qryDeptOWDPCoveredDeptsHAS_DELEGATED_DESCENDANTS: TAbmesFloatField;
    qryDeptOWDPCoveredDeptsDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    qryDeptsPrcDataOccupationsEMPLOYEE_CODE: TAbmesFloatField;
    qryDeptsPrcDataDeptsDEPT_PRODUCT_CODE: TAbmesFloatField;
    qryProcessConcreteOperationsPRC_CONCRETE_OP_DISPLAY_NAME: TAbmesWideStringField;
    procedure prvProcessActionsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryProcessFunctionAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure prvProcessFunctionAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvProcessFunctionBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryProcessBaseOperationAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure prvProcessBaseOperationAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvProcessBaseOperationBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvProcessActionsBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvProcessActionsAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryProcessActionsAfterProviderStartTransaction(DataSet: TDataSet);
    procedure qryProcessKnowlAfterProviderStartTransaction(DataSet: TDataSet);
    procedure prvProcessKnowlBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvProcessKnowlAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvProcessFunctionAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure prvProcessFunctionGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure qryOrgPrcDataBaseOpsBeforeOpen(DataSet: TDataSet);
    procedure qryOrgPrcDataDeptsBeforeOpen(DataSet: TDataSet);
    procedure qryOrgPrcDataOccupationsBeforeOpen(DataSet: TDataSet);
    procedure qryOrgPrcDataConcreteOpsBeforeOpen(DataSet: TDataSet);
    procedure qryOrgPrcDataOrgTaskProposalsBeforeOpen(DataSet: TDataSet);
    procedure qryOrgPrcDataProfessionsBeforeOpen(DataSet: TDataSet);
    procedure prvDeptsPrcDataPrcDataGetData(Sender: TObject; DataSet: TCustomClientDataSet);
    procedure prvDeptPrcDataGetData(Sender: TObject; DataSet: TCustomClientDataSet);
    procedure prvDeptPrcDataAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure qryDeptsPrcDataDeptsBeforeOpen(DataSet: TDataSet);
    procedure qryDeptsPrcDataDeptsAfterClose(DataSet: TDataSet);
    procedure prvDeptPrcDataBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryDeptPrcDataBeforeProviderEndTransaction(DataSet: TDataSet; Commit: Boolean);
    procedure prvDeptPrcDataBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure prvDeptPrcDataAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure qryDeptsPrcDataOccupationsBeforeOpen(DataSet: TDataSet);
    procedure qryDeptsPrcDataOccupationsAfterClose(DataSet: TDataSet);
  private
    FDocsDelta: Variant;
    FSavedForCapacityGenCheckDeptCode: Integer;
    procedure AssignPrcData(AProcessOwner: TProcessOwner; ADataSet: TDataSet);
    procedure ApplyPrcData(AProcessOwner: TProcessOwner; ADataSet: TDataSet);
    function LoadPrcData(AProcessOwner: TProcessOwner; const AOwnerPrimaryKeyValue: Variant): Variant; overload;
    function LoadPrcData(const AProcessOwnerName: string; const AOwnerPrimaryKeyValue: Variant): Variant; overload;
    procedure SavePrcData(const APrcData: Variant; AProcessOwner: TProcessOwner;
      const AOwnerPrimaryKeyValue: Variant);
    function GetPrcActionsCommaSeparatedList: string;
    procedure SetRollupMacroValue(AQuery: TAbmesSQLQuery);
    procedure SetDetailQueryMacros(AQuery: TAbmesSQLQuery; const ADetailPrefix: string);
    procedure PrepareDetailQuery(ADataSet: TDataSet; const ADetailPrefix: string);
  protected
    function GetNewProcessKnowlCode: Integer;
    function GetNewProcessKnowlLocalNo(AParentProcessKnowlCode: Integer): Integer;
    function GetNewProcessFunctionCode: Integer;
    function GetNewProcessFunctionLocalNo(AParentProcessFunctionCode: Integer): Integer;
    function GetNewProcessBaseOperationCode: Integer;
    function GetNewProcessBaseOperationLocalNo(AParentProcessBaseOperationCode: Integer): Integer;
    function GetNewProcessConcreteOperationCode: Integer;
    function GetNewProcessConcreteOperationLocalNo(AParentProcessConcreteOperationCode: Integer): Integer;
    function GetProcessConcreteOperationCodeByFullNo(const AProcessConcreteOperationFullNo: string): Integer;
    function GetProcessConcreteOperationIsInstance(AProcessConcreteOperationCode: Integer): Boolean;
    function GetProcessConcreteOperationIsInactive(AProcessConcreteOperationCode: Integer): Boolean;
    function GetProcessBaseOperationCodeByFullNo(const AProcessBaseOperationFullNo: string): Integer;
    function GetProcessBaseOperationIsInstance(AProcessBaseOperationCode: Integer): Boolean;
    function GetProcessFunctionCodeByFullNo(const AProcessFunctionFullNo: string): Integer;
    function GetProcessFunctionIsInstance(AProcessFunctionCode: Integer): Boolean;
    function GetProcessKnowlCodeByFullNo(const AProcessKnowlFullNo: string): Integer;
    function GetProcessKnowlIsInstance(AProcessKnowlCode: Integer): Boolean;
  public
    procedure ApplyMacroLibraries(AQuery: TAbmesSQLQuery);
    function GetPrcOrgDistributionStatusSQL(AOwner: TProcessOwner; ALevel: TProcessLevel): string;
    function GetPrcOrgDistributionCountSQL(AOwner: TProcessOwner; ALevel: TProcessLevel): string;
  end;

type
  IdmProcessesProxy = interface(IDBPooledDataModuleProxy)
    procedure AssignPrcData(AProcessOwner: TProcessOwner; ADataSet: TDataSet);
    procedure ApplyPrcData(AProcessOwner: TProcessOwner; ADataSet: TDataSet);
  end;

type
  TdmProcessesProxy = class(TDBPooledDataModuleProxy, IdmProcessesProxy)
  private
    class var FSingleton: TdmProcessesProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmProcesses>;
  strict protected
    property LockedInstance: ISmartLock<TdmProcesses> read GetLockedInstance;
  protected
    procedure AssignPrcData(AProcessOwner: TProcessOwner; ADataSet: TDataSet);
    procedure ApplyPrcData(AProcessOwner: TProcessOwner; ADataSet: TDataSet);
  public
    class property Singleton: TdmProcessesProxy read FSingleton;

    function LoadPrcData(const AProcessOwnerName: string; AOwnerPrimaryKeyValue: OleVariant): OleVariant;
    function GetNewProcessKnowlCode: Integer;
    function GetNewProcessKnowlLocalNo(AParentProcessKnowlCode: Integer): Integer;
    function GetNewProcessFunctionCode: Integer;
    function GetNewProcessFunctionLocalNo(AParentProcessFunctionCode: Integer): Integer;
    function GetNewProcessBaseOperationCode: Integer;
    function GetNewProcessBaseOperationLocalNo(AParentProcessBaseOperationCode: Integer): Integer;
    function GetNewProcessConcreteOperationCode: Integer;
    function GetNewProcessConcreteOperationLocalNo(AParentProcessConcreteOperationCode: Integer): Integer;
    function GetProcessConcreteOperationCodeByFullNo(const AProcessConcreteOperationFullNo: string): Integer;
    function GetProcessConcreteOperationIsInstance(AProcessConcreteOperationCode: Integer): Boolean;
    function GetProcessConcreteOperationIsInactive(AProcessConcreteOperationCode: Integer): Boolean;
    function GetProcessBaseOperationCodeByFullNo(const AProcessBaseOperationFullNo: string): Integer;
    function GetProcessBaseOperationIsInstance(AProcessBaseOperationCode: Integer): Boolean;
    function GetProcessFunctionCodeByFullNo(const AProcessFunctionFullNo: string): Integer;
    function GetProcessFunctionIsInstance(AProcessFunctionCode: Integer): Boolean;
    function GetProcessKnowlCodeByFullNo(const AProcessKnowlFullNo: string): Integer;
    function GetProcessKnowlIsInstance(AProcessKnowlCode: Integer): Boolean;
  end;

implementation

uses
  uDBPooledDataModuleHelper, StrUtils, uDBPrcData, uUtils, uSvrUtils;

{$R *.dfm}

{ TdmProcessesProxy }

function TdmProcessesProxy.GetLockedInstance: ISmartLock<TdmProcesses>;
begin
  Result:= ISmartLock<TdmProcesses>(inherited LockedInstance);
end;

function TdmProcessesProxy.GetNewProcessConcreteOperationCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewProcessConcreteOperationCode;
end;

function TdmProcessesProxy.GetNewProcessConcreteOperationLocalNo(
  AParentProcessConcreteOperationCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewProcessConcreteOperationLocalNo(AParentProcessConcreteOperationCode);
end;

function TdmProcessesProxy.GetNewProcessBaseOperationCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewProcessBaseOperationCode;
end;

function TdmProcessesProxy.GetNewProcessBaseOperationLocalNo(
  AParentProcessBaseOperationCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewProcessBaseOperationLocalNo(AParentProcessBaseOperationCode);
end;

function TdmProcessesProxy.GetNewProcessFunctionCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewProcessFunctionCode;
end;

function TdmProcessesProxy.GetNewProcessFunctionLocalNo(
  AParentProcessFunctionCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewProcessFunctionLocalNo(AParentProcessFunctionCode);
end;

function TdmProcessesProxy.GetNewProcessKnowlCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewProcessKnowlCode;
end;

function TdmProcessesProxy.GetNewProcessKnowlLocalNo(
  AParentProcessKnowlCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewProcessKnowlLocalNo(AParentProcessKnowlCode);
end;

function TdmProcessesProxy.GetProcessBaseOperationCodeByFullNo(
  const AProcessBaseOperationFullNo: string): Integer;
begin
  Result:= LockedInstance.Value.GetProcessBaseOperationCodeByFullNo(AProcessBaseOperationFullNo);
end;

function TdmProcessesProxy.GetProcessBaseOperationIsInstance(
  AProcessBaseOperationCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.GetProcessBaseOperationIsInstance(AProcessBaseOperationCode);
end;

function TdmProcessesProxy.GetProcessConcreteOperationCodeByFullNo(
  const AProcessConcreteOperationFullNo: string): Integer;
begin
  Result:= LockedInstance.Value.GetProcessConcreteOperationCodeByFullNo(AProcessConcreteOperationFullNo);
end;

function TdmProcessesProxy.GetProcessConcreteOperationIsInactive(
  AProcessConcreteOperationCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.GetProcessConcreteOperationIsInactive(AProcessConcreteOperationCode);
end;

function TdmProcessesProxy.GetProcessConcreteOperationIsInstance(
  AProcessConcreteOperationCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.GetProcessConcreteOperationIsInstance(AProcessConcreteOperationCode);
end;

function TdmProcessesProxy.GetProcessFunctionCodeByFullNo(
  const AProcessFunctionFullNo: string): Integer;
begin
  Result:= LockedInstance.Value.GetProcessFunctionCodeByFullNo(AProcessFunctionFullNo);
end;

function TdmProcessesProxy.GetProcessFunctionIsInstance(
  AProcessFunctionCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.GetProcessFunctionIsInstance(AProcessFunctionCode);
end;

function TdmProcessesProxy.GetProcessKnowlCodeByFullNo(
  const AProcessKnowlFullNo: string): Integer;
begin
  Result:= LockedInstance.Value.GetProcessKnowlCodeByFullNo(AProcessKnowlFullNo);
end;

function TdmProcessesProxy.GetProcessKnowlIsInstance(
  AProcessKnowlCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.GetProcessKnowlIsInstance(AProcessKnowlCode);
end;

function TdmProcessesProxy.LoadPrcData(const AProcessOwnerName: string; AOwnerPrimaryKeyValue: OleVariant): OleVariant;
begin
  Result:= LockedInstance.Value.LoadPrcData(AProcessOwnerName, AOwnerPrimaryKeyValue);
end;

procedure TdmProcessesProxy.AssignPrcData(AProcessOwner: TProcessOwner; ADataSet: TDataSet);
begin
  LockedInstance.Value.AssignPrcData(AProcessOwner, ADataSet);
end;

procedure TdmProcessesProxy.ApplyPrcData(AProcessOwner: TProcessOwner; ADataSet: TDataSet);
begin
  LockedInstance.Value.ApplyPrcData(AProcessOwner, ADataSet);
end;

{ TdmProcesses }

function TdmProcesses.GetNewProcessKnowlLocalNo(AParentProcessKnowlCode: Integer): Integer;
begin
  qryGetNewProcessKnowlLocalNo.ParamByName('PARENT_PRC_KNOWL_CODE').AsInteger:= AParentProcessKnowlCode;
  Result:=
    qryGetNewProcessKnowlLocalNo.TempOpen/
      qryGetNewProcessKnowlLocalNoNEW_PRC_KNOWL_LOCAL_NO.AsIntegerFunc;
end;

function TdmProcesses.GetProcessBaseOperationCodeByFullNo(const AProcessBaseOperationFullNo: string): Integer;
begin
  qryGetProcessBaseOperationCodeByFullNo.ParamByName('PRC_BASE_OP_FULL_NO').AsString:= AProcessBaseOperationFullNo;
  Result:=
    qryGetProcessBaseOperationCodeByFullNo.TempOpen/
      qryGetProcessBaseOperationCodeByFullNoPRC_BASE_OP_CODE.AsIntegerFunc;
end;

function TdmProcesses.GetProcessBaseOperationIsInstance(AProcessBaseOperationCode: Integer): Boolean;
begin
  qryGetProcessBaseOperationIsInstance.ParamByName('PRC_BASE_OP_CODE').AsInteger:= AProcessBaseOperationCode;
  Result:=
    qryGetProcessBaseOperationIsInstance.TempOpen/
      qryGetProcessBaseOperationIsInstanceIS_INSTANCE.AsBooleanFunc;
end;

function TdmProcesses.GetProcessConcreteOperationCodeByFullNo(const AProcessConcreteOperationFullNo: string): Integer;
begin
  qryGetProcessConcreteOperationCodeByFullNo.ParamByName('PRC_CONCRETE_OP_FULL_NO').AsString:= AProcessConcreteOperationFullNo;
  Result:=
    qryGetProcessConcreteOperationCodeByFullNo.TempOpen/
      qryGetProcessConcreteOperationCodeByFullNoPRC_CONCRETE_OP_CODE.AsIntegerFunc;
end;

function TdmProcesses.GetProcessConcreteOperationIsInactive(AProcessConcreteOperationCode: Integer): Boolean;
begin
  qryGetProcessConcreteOperationIsInactive.ParamByName('PRC_CONCRETE_OP_CODE').AsInteger:= AProcessConcreteOperationCode;
  Result:=
    qryGetProcessConcreteOperationIsInactive.TempOpen/
      qryGetProcessConcreteOperationIsInactiveIS_INACTIVE.AsBooleanFunc;
end;

function TdmProcesses.GetProcessConcreteOperationIsInstance(AProcessConcreteOperationCode: Integer): Boolean;
begin
  qryGetProcessConcreteOperationIsInstance.ParamByName('PRC_CONCRETE_OP_CODE').AsInteger:= AProcessConcreteOperationCode;
  Result:=
    qryGetProcessConcreteOperationIsInstance.TempOpen/
      qryGetProcessConcreteOperationIsInstanceIS_INSTANCE.AsBooleanFunc;
end;

function TdmProcesses.GetProcessFunctionCodeByFullNo(const AProcessFunctionFullNo: string): Integer;
begin
  qryGetProcessFunctionCodeByFullNo.ParamByName('PRC_FUNC_FULL_NO').AsString:= AProcessFunctionFullNo;
  Result:=
    qryGetProcessFunctionCodeByFullNo.TempOpen/
      qryGetProcessFunctionCodeByFullNoPRC_FUNC_CODE.AsIntegerFunc;
end;

function TdmProcesses.GetProcessFunctionIsInstance(AProcessFunctionCode: Integer): Boolean;
begin
  qryGetProcessFunctionIsInstance.ParamByName('PRC_FUNC_CODE').AsInteger:= AProcessFunctionCode;
  Result:=
    qryGetProcessFunctionIsInstance.TempOpen/
      qryGetProcessFunctionIsInstanceIS_INSTANCE.AsBooleanFunc;
end;

function TdmProcesses.GetProcessKnowlCodeByFullNo(const AProcessKnowlFullNo: string): Integer;
begin
  qryGetProcessKnowlCodeByFullNo.ParamByName('PRC_KNOWL_FULL_NO').AsString:= AProcessKnowlFullNo;
  Result:=
    qryGetProcessKnowlCodeByFullNo.TempOpen/
      qryGetProcessKnowlCodeByFullNoPRC_KNOWL_CODE.AsIntegerFunc;
end;

function TdmProcesses.GetProcessKnowlIsInstance(AProcessKnowlCode: Integer): Boolean;
begin
  qryGetProcessKnowlIsInstance.ParamByName('PRC_KNOWL_CODE').AsInteger:= AProcessKnowlCode;
  Result:=
    qryGetProcessKnowlIsInstance.TempOpen/
      qryGetProcessKnowlIsInstanceIS_INSTANCE.AsBooleanFunc;
end;

procedure TdmProcesses.DataModuleCreate(Sender: TObject);
begin
  RegisterMacroLibrary(mshLocalMacroLibrary);
  inherited;
end;

procedure TdmProcesses.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  UnregisterMacroLibrary(mshLocalMacroLibrary);
end;

function TdmProcesses.GetNewProcessConcreteOperationCode: Integer;
begin
  Result:=
    qryGetNewProcessConcreteOperationCode.TempOpen/
      qryGetNewProcessConcreteOperationCodeNEW_PRC_CONCRETE_OP_CODE.AsIntegerFunc;
end;

function TdmProcesses.GetNewProcessConcreteOperationLocalNo(AParentProcessConcreteOperationCode: Integer): Integer;
begin
  qryGetNewProcessConcreteOperationLocalNo.ParamByName('PARENT_PRC_CONCRETE_OP_CODE').AsInteger:= AParentProcessConcreteOperationCode;
  Result:=
    qryGetNewProcessConcreteOperationLocalNo.TempOpen/
      qryGetNewProcessConcreteOperationLocalNoNEW_PRC_CONCRETE_OP_LOCAL_NO.AsIntegerFunc;
end;

function TdmProcesses.GetNewProcessBaseOperationCode: Integer;
begin
  Result:=
    qryGetNewProcessBaseOperationCode.TempOpen/
      qryGetNewProcessBaseOperationCodeNEW_PRC_BASE_OP_CODE.AsIntegerFunc;
end;

function TdmProcesses.GetNewProcessBaseOperationLocalNo(AParentProcessBaseOperationCode: Integer): Integer;
begin
  qryGetNewProcessBaseOperationLocalNo.ParamByName('PARENT_PRC_BASE_OP_CODE').AsInteger:= AParentProcessBaseOperationCode;
  Result:=
    qryGetNewProcessBaseOperationLocalNo.TempOpen/
      qryGetNewProcessBaseOperationLocalNoNEW_PRC_BASE_OP_LOCAL_NO.AsIntegerFunc;
end;

function TdmProcesses.GetNewProcessFunctionCode: Integer;
begin
  Result:=
    qryNewProcessFunctionCode.TempOpen/
      qryNewProcessFunctionCodeNEW_PRC_FUNC_CODE.AsIntegerFunc;
end;

function TdmProcesses.GetNewProcessFunctionLocalNo(AParentProcessFunctionCode: Integer): Integer;
begin
  qryGetNewProcessFunctionLocalNo.ParamByName('PARENT_PRC_FUNC_CODE').AsInteger:= AParentProcessFunctionCode;
  Result:=
    qryGetNewProcessFunctionLocalNo.TempOpen/
      qryGetNewProcessFunctionLocalNoNEW_PRC_FUNC_LOCAL_NO.AsIntegerFunc;
end;

function TdmProcesses.GetNewProcessKnowlCode: Integer;
begin
  Result:=
    qryNewProcessKnowlCode.TempOpen/
      qryNewProcessKnowlCodeNEW_PRC_KNOWL_CODE.AsIntegerFunc;
end;

procedure TdmProcesses.prvDeptPrcDataAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FSavedForCapacityGenCheckDeptCode:= 0;
end;

procedure TdmProcesses.prvDeptPrcDataAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
  DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  inherited;
  if (SourceDS = qryDeptPrcData) then
    begin
      Assert(UpdateKind = ukModify);

      if (VarToInt(GetFieldValue(DeltaDS.FieldByName('IS_GROUP'))) = 1) then
        ApplyPrcData(ProcessOwners.GroupDept, DeltaDS)
      else
        ApplyPrcData(ProcessOwners.DefiniteDept, DeltaDS);
    end;
end;

procedure TdmProcesses.prvDeptPrcDataBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FSavedForCapacityGenCheckDeptCode:= 0;
end;

procedure TdmProcesses.prvDeptPrcDataBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
  DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  // save DeptCode for later check in BeforeProviderEndTransaction
  if (SourceDS = qryDeptPrcData) then
    if not GetBoolValue(DeltaDS.FieldByName('IS_GROUP')) then
      FSavedForCapacityGenCheckDeptCode:= GetFieldValue(DeltaDS.FieldByName('DEPT_CODE'));
end;

procedure TdmProcesses.prvDeptPrcDataGetData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  inherited;

  if DataSet.IsEmpty then
    Exit;

  if (VarToInt(GetFieldValue(DataSet.FieldByName('IS_GROUP'))) = 1) then
    AssignPrcData(ProcessOwners.GroupDept, DataSet)
  else
    AssignPrcData(ProcessOwners.DefiniteDept, DataSet);
end;

procedure TdmProcesses.prvDeptsPrcDataPrcDataGetData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  inherited;

  if DataSet.IsEmpty then
    Exit;

  if (VarToInt(GetFieldValue(DataSet.FieldByName('IS_GROUP'))) = 1) then
    AssignPrcData(ProcessOwners.GroupDept, DataSet)
  else
    AssignPrcData(ProcessOwners.DefiniteDept, DataSet);
end;

procedure TdmProcesses.prvProcessActionsAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmProcesses.prvProcessActionsBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmProcesses.prvProcessActionsBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  if (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('PRC_ACTION_CODE').NewValue:=
      qryNewProcessActionCode.TempOpen/
        qryNewProcessActionCodeNEW_PRC_ACTION_CODE.AsIntegerFunc;
end;

procedure TdmProcesses.prvProcessBaseOperationAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmProcesses.prvProcessBaseOperationBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmProcesses.prvProcessFunctionAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmProcesses.prvProcessFunctionAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  inherited;
  ApplyPrcData(ProcessOwners.Func, DeltaDS);
end;

procedure TdmProcesses.prvProcessFunctionBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmProcesses.prvProcessFunctionGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  inherited;
  AssignPrcData(ProcessOwners.Func, DataSet);
end;

procedure TdmProcesses.prvProcessKnowlAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmProcesses.prvProcessKnowlBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmProcesses.qryProcessActionsAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmProcesses.qryProcessBaseOperationAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmProcesses.qryProcessFunctionAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmProcesses.qryProcessKnowlAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmProcesses.ApplyMacroLibraries(AQuery: TAbmesSQLQuery);
begin
  inherited ApplyMacroLibraries(AQuery);
end;

function TdmProcesses.LoadPrcData(const AProcessOwnerName: string; const AOwnerPrimaryKeyValue: Variant): Variant;
begin
  Result:= LoadPrcData(ProcessOwners.ProcessOwnerByName(AProcessOwnerName), AOwnerPrimaryKeyValue);
end;

function TdmProcesses.LoadPrcData(AProcessOwner: TProcessOwner; const AOwnerPrimaryKeyValue: Variant): Variant;
var
  Res: Variant;
begin
  Utils.Using(TDBProcessOwnerData.Create(AProcessOwner, Self, AOwnerPrimaryKeyValue))/
    procedure (pod: TDBProcessOwnerData) begin
      pod.LoadFromDatabase;
      Res:= pod.AsVariant;
    end;

  Result:= Res;
end;

procedure TdmProcesses.SavePrcData(const APrcData: Variant; AProcessOwner: TProcessOwner; const AOwnerPrimaryKeyValue: Variant);
var
  PrcData: Variant;
begin
  PrcData:= APrcData;
  Utils.Using(TDBProcessOwnerData.Create(AProcessOwner, Self, AOwnerPrimaryKeyValue))/
    procedure (pod: TDBProcessOwnerData) begin
      pod.AsVariant:= PrcData;
      pod.SaveToDatabase;
    end;
end;

procedure TdmProcesses.AssignPrcData(AProcessOwner: TProcessOwner; ADataSet: TDataSet);
var
  PrcDataField: TField;
  PrimaryKeyValue: Variant;
begin
  Assert(Assigned(AProcessOwner));
  Assert(Assigned(ADataSet));

  if (ADataSet.RecordCount > 0) then
    begin
      PrcDataField:= ADataSet.FindField(PrcDataFieldName);
      Assert(Assigned(PrcDataField));

      PrimaryKeyValue:= ADataSet.FieldByName(AProcessOwner.KeyFieldName).AsVariant;

      ADataSet.SafeEdit/
        procedure begin
          WriteVariantToBlobField(LoadPrcData(AProcessOwner, PrimaryKeyValue), PrcDataField);
        end;
    end;  { if }
end;

procedure TdmProcesses.ApplyPrcData(AProcessOwner: TProcessOwner; ADataSet: TDataSet);
var
  PrcDataField: TField;
  PrimaryKeyValue: Variant;
begin
  Assert(Assigned(AProcessOwner));
  Assert(Assigned(ADataSet));

  PrcDataField:= ADataSet.FindField(PrcDataFieldName);
  Assert(Assigned(PrcDataField));

  PrimaryKeyValue:= GetFieldValue(ADataSet.FieldByName(AProcessOwner.KeyFieldName));

  if not PrcDataField.IsNull then
    SavePrcData(ReadVariantFromBlobField(PrcDataField), AProcessOwner, PrimaryKeyValue);
end;

{ PrcDistribution }

function TdmProcesses.GetPrcOrgDistributionStatusSQL(AOwner: TProcessOwner; ALevel: TProcessLevel): string;
begin
  if (AOwner.Name = 'GROUP_DEPT') and (ALevel.Name = 'PRC_BASE_ACTIONS') then
    Exit(mshSQLGenerationMacros.StringsByName['GROUP_DEPT_PBA_STATUS_CODE'].Text);

  if (AOwner.Name = 'DEFINITE_DEPT') and (ALevel.Name = 'PRC_BASE_ACTIONS') then
    Exit(mshSQLGenerationMacros.StringsByName['DEFINITE_DEPT_PBA_STATUS_CODE'].Text);

  if (AOwner.Name = 'OCC') and (ALevel.Name = 'PRC_BASE_ACTIONS') then
    Exit(mshSQLGenerationMacros.StringsByName['OCC_PBA_STATUS_CODE'].Text);

  if (AOwner.Name = 'OE') and (ALevel.Name = 'PRC_BASE_ACTIONS') then
    Exit(mshSQLGenerationMacros.StringsByName['OE_PBA_STATUS_CODE'].Text);


  if (AOwner.Name = 'DEFINITE_DEPT') and (ALevel.Name = 'PRC_CONCRETE_ACTIONS') then
    Exit(mshSQLGenerationMacros.StringsByName['DEFINITE_DEPT_PCA_STATUS_CODE'].Text);

  if (AOwner.Name = 'OCC') and (ALevel.Name = 'PRC_CONCRETE_ACTIONS') then
    Exit(mshSQLGenerationMacros.StringsByName['OCC_PCA_STATUS_CODE'].Text);

  if (AOwner.Name = 'OE') and (ALevel.Name = 'PRC_CONCRETE_ACTIONS') then
    Exit(mshSQLGenerationMacros.StringsByName['OE_PCA_STATUS_CODE'].Text);


  Result:= '';
end;

function TdmProcesses.GetPrcOrgDistributionCountSQL(AOwner: TProcessOwner; ALevel: TProcessLevel): string;
begin
  if (AOwner.Name = 'GROUP_DEPT') and (ALevel.Name = 'PRC_BASE_ACTIONS') then
    Exit(mshSQLGenerationMacros.StringsByName['GROUP_DEPT_PBA_DISTRIBUTION_COUNT'].Text);

  Result:= '';
end;

function TdmProcesses.GetPrcActionsCommaSeparatedList: string;
begin
  Result:=
    Utils.Using(TStringList.Create)/
      function (sl: TStringList): string begin
        sl.Delimiter:= ',';
        qryProcessActions.TempOpen/
          qryProcessActions.ForEach/
            procedure begin
              sl.Add(qryProcessActionsPRC_ACTION_CODE.AsString);
            end;

        Result:= sl.DelimitedText;
      end;
end;

procedure TdmProcesses.SetRollupMacroValue(AQuery: TAbmesSQLQuery);
begin
  AQuery.MacroByName('PRC_ACTION_CODES').AsString:= GetPrcActionsCommaSeparatedList;
end;

procedure TdmProcesses.SetDetailQueryMacros(AQuery: TAbmesSQLQuery; const ADetailPrefix: string);
const
  PrcActionTableNames: array[TProcessActionType] of string = ('', 'PRC_BASE_ACTIONS', 'PRC_CONCRETE_ACTIONS', '');
  PrcActionCodeParams: array[TProcessActionType] of string = ('', ':PRC_BASE_ACTION_CODE', ':PRC_CONCRETE_ACTION_CODE', '');
  PrcMasterCodeParamsMacroNames: array[TProcessActionType] of string = ('', 'PRC_BASE_OP_MASTER_CODE_PARAMS', 'PRC_CONCRETE_OP_MASTER_CODE_PARAMS', '');
  PrcDeptPrcActionStatusMacroNames: array[TProcessActionType] of string = ('', 'PRC_BASE_ACTION_STATUS_MACRO', 'PRC_CONCRETE_ACTION_STATUS_MACRO', '');
  DeptPrcActionsOuterJoinMacroNames: array[TProcessActionType] of string = ('', 'DEPT_PRC_BASE_ACTIONS_OUTER_JOIN', 'DEPT_PRC_CONCRETE_ACTIONS_OUTER_JOIN', '');

var
  ProcessActionType: TProcessActionType;
begin
  ProcessActionType:= IntToProcessActionType(AQuery.CustomParams.ParamByName('PROCESS_ACTION_TYPE').AsInteger);

  AQuery.MacroByName('PRC_ACTIONS_TABLE_NAME').AsString:= Format('%s_%s', [ADetailPrefix, PrcActionTableNames[ProcessActionType]]);
  AQuery.MacroByName('PRC_ACTION_CODE_PARAM').AsString:= PrcActionCodeParams[ProcessActionType];
  AQuery.MacroByName('PRC_MASTER_CODE_PARAMS').AsString:= mshSQLGenerationMacros.StringsByName[PrcMasterCodeParamsMacroNames[ProcessActionType]].Text;
  AQuery.MacroByName('PRC_ACTION_STATUS_MACRO').AsString:= mshLocalMacroLibrary.StringsByName[Format('%s_%s', [ADetailPrefix, PrcDeptPrcActionStatusMacroNames[ProcessActionType]])].Text;

  if Assigned(AQuery.Macros.FindParam('DEPT_PRC_ACTIONS_OUTER_JOIN')) then
    AQuery.MacroByName('DEPT_PRC_ACTIONS_OUTER_JOIN').AsString:= mshSQLGenerationMacros.StringsByName[DeptPrcActionsOuterJoinMacroNames[ProcessActionType]].Text;
end;

procedure TdmProcesses.qryOrgPrcDataBaseOpsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetRollupMacroValue(DataSet as TAbmesSQLQuery);
end;

procedure TdmProcesses.qryOrgPrcDataConcreteOpsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetRollupMacroValue(DataSet as TAbmesSQLQuery);
end;

procedure TdmProcesses.PrepareDetailQuery(ADataSet: TDataSet; const ADetailPrefix: string);
begin
  SetRollupMacroValue(ADataSet as TAbmesSQLQuery);
  SetDetailQueryMacros(ADataSet as TAbmesSQLQuery, ADetailPrefix);
end;

procedure TdmProcesses.qryOrgPrcDataDeptsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  PrepareDetailQuery(DataSet, 'DEPT');
end;

procedure TdmProcesses.qryOrgPrcDataOccupationsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  PrepareDetailQuery(DataSet, 'OCC');
end;

procedure TdmProcesses.qryOrgPrcDataOrgTaskProposalsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  PrepareDetailQuery(DataSet, 'OTP');
end;

procedure TdmProcesses.qryOrgPrcDataProfessionsBeforeOpen(DataSet: TDataSet);
const
  ProfessionOpsTableNames: array[TProcessActionType] of string = ('', 'PROFESSION_BASE_OPS', 'PROFESSION_CONCRETE_OPS', '');
  ProfessionOpCodeJoins: array[TProcessActionType] of string = ('', '(po.PRC_BASE_OP_CODE = :PRC_BASE_OP_CODE)', '(po.PRC_CONCRETE_OP_CODE = :PRC_CONCRETE_OP_CODE)', '');

var
  ProcessActionType: TProcessActionType;
begin
  inherited;

  ProcessActionType:= IntToProcessActionType(qryOrgPrcDataProfessions.CustomParams.ParamByName('PROCESS_ACTION_TYPE').AsInteger);

  qryOrgPrcDataProfessions.MacroByName('PROFESSION_OPS_TABLE_NAME').AsString:= ProfessionOpsTableNames[ProcessActionType];
  qryOrgPrcDataProfessions.MacroByName('PROFESSION_OP_CODE_JOIN').AsString:= ProfessionOpCodeJoins[ProcessActionType];
end;

procedure TdmProcesses.qryDeptsPrcDataDeptsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.PrepareFilteredNodes((DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes((DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
  SvrDeptTreeNodeFilter.PrepareFilteredNodes((DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_OCCUPATION_DEPTS'), [(DataSet as TAbmesSQLQuery)], 2);
end;

procedure TdmProcesses.qryDeptPrcDataBeforeProviderEndTransaction(DataSet: TDataSet; Commit: Boolean);
begin
  inherited;
  if Commit and (FSavedForCapacityGenCheckDeptCode > 0) then
    SvrDeptsTreeEditor.CheckDeptHasCapacityGeneratorOWDPriority(FSavedForCapacityGenCheckDeptCode);
end;

procedure TdmProcesses.qryDeptsPrcDataDeptsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes((DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_OCCUPATION_DEPTS'), [(DataSet as TAbmesSQLQuery)], 2);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes((DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes((DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmProcesses.qryDeptsPrcDataOccupationsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.PrepareFilteredNodes((DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_OCCUPATION_DEPTS'), [(DataSet as TAbmesSQLQuery)], 2);
end;

procedure TdmProcesses.qryDeptsPrcDataOccupationsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes((DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_OCCUPATION_DEPTS'), [(DataSet as TAbmesSQLQuery)], 2);
end;

initialization
  TdmProcessesProxy.FSingleton:= TdmProcessesProxy.Create(TdmProcesses);

finalization
  FreeAndNil(TdmProcessesProxy.FSingleton);
end.
