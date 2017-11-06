unit dNeeds;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection,
  DBXDevartOracle, uSmartLock;

type
  TdmNeeds = class(TDBPooledDataModule)
    qryDetailRealNeeds: TAbmesSQLQuery;
    qryDetailRealNeedsPRODUCT_CODE: TAbmesFloatField;
    qryDetailRealNeedsPRODUCT_NO: TAbmesFloatField;
    qryDetailRealNeedsPRODUCT_NAME: TAbmesWideStringField;
    qryDetailRealNeedsQUANTITY: TAbmesFloatField;
    qryDetailRealNeedsDIRECT_SALE_QUANTITY: TAbmesFloatField;
    qryDetailRealNeedsMEASURE_ABBREV: TAbmesWideStringField;
    qryDetailRealNeedsSALE_COUNT: TAbmesFloatField;
    qryDetailRealNeedsSPEC_PRODUCT_COUNT: TAbmesFloatField;
    prvDetailRealNeeds: TDataSetProvider;
    qryDetailRealNeedsByResultProduct: TAbmesSQLQuery;
    qryDetailRealNeedsByResultProductPRODUCT_CODE: TAbmesFloatField;
    qryDetailRealNeedsByResultProductPRODUCT_NO: TAbmesFloatField;
    qryDetailRealNeedsByResultProductPRODUCT_NAME: TAbmesWideStringField;
    qryDetailRealNeedsByResultProductSALE_COUNT: TAbmesFloatField;
    qryDetailRealNeedsByResultProductQUANTITY: TAbmesFloatField;
    qryDetailRealNeedsByResultProductMEASURE_ABBREV: TAbmesWideStringField;
    prvDetailRealNeedsByResultProduct: TDataSetProvider;
    qryDetailRealNeedsByParentDetail: TAbmesSQLQuery;
    qryDetailRealNeedsByParentDetailPRODUCT_CODE: TAbmesFloatField;
    qryDetailRealNeedsByParentDetailPRODUCT_NO: TAbmesFloatField;
    qryDetailRealNeedsByParentDetailPRODUCT_NAME: TAbmesWideStringField;
    qryDetailRealNeedsByParentDetailQUANTITY: TAbmesFloatField;
    qryDetailRealNeedsByParentDetailMEASURE_ABBREV: TAbmesWideStringField;
    prvDetailRealNeedsByParentDetail: TDataSetProvider;
    qryDetailRealNeedsBySale: TAbmesSQLQuery;
    qryDetailRealNeedsBySaleSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDetailRealNeedsBySaleSALE_OBJECT_CODE: TAbmesFloatField;
    qryDetailRealNeedsBySaleSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qryDetailRealNeedsBySaleSALE_IDENTIFIER: TAbmesWideStringField;
    qryDetailRealNeedsBySaleCLIENT_COMPANY_CODE: TAbmesFloatField;
    qryDetailRealNeedsBySaleCLIENT_SHORT_NAME: TAbmesWideStringField;
    qryDetailRealNeedsBySaleSHIPMENT_DATE: TAbmesSQLTimeStampField;
    qryDetailRealNeedsBySaleQUANTITY: TAbmesFloatField;
    qryDetailRealNeedsBySalePRODUCT_CODE: TAbmesFloatField;
    qryDetailRealNeedsBySalePRODUCT_NO: TAbmesFloatField;
    qryDetailRealNeedsBySalePRODUCT_NAME: TAbmesWideStringField;
    qryDetailRealNeedsBySaleMEASURE_ABBREV: TAbmesWideStringField;
    prvDetailRealNeedsBySale: TDataSetProvider;
    qryMaterialRealNeeds: TAbmesSQLQuery;
    prvMaterialRealNeeds: TDataSetProvider;
    qryMaterialRealNeedsPRODUCT_CODE: TAbmesFloatField;
    qryMaterialRealNeedsPRODUCT_NO: TAbmesFloatField;
    qryMaterialRealNeedsPRODUCT_NAME: TAbmesWideStringField;
    qryMaterialRealNeedsQUANTITY: TAbmesFloatField;
    qryMaterialRealNeedsDIRECT_SALE_QUANTITY: TAbmesFloatField;
    qryMaterialRealNeedsMEASURE_ABBREV: TAbmesWideStringField;
    qryMaterialRealNeedsSALE_COUNT: TAbmesFloatField;
    qryMaterialRealNeedsSPEC_PRODUCT_COUNT: TAbmesFloatField;
    qryMaterialRealNeedsBySale: TAbmesSQLQuery;
    prvMaterialRealNeedsBySale: TDataSetProvider;
    qryMaterialRealNeedsBySaleSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMaterialRealNeedsBySaleSALE_OBJECT_CODE: TAbmesFloatField;
    qryMaterialRealNeedsBySaleSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qryMaterialRealNeedsBySaleSALE_IDENTIFIER: TAbmesWideStringField;
    qryMaterialRealNeedsBySaleCLIENT_COMPANY_CODE: TAbmesFloatField;
    qryMaterialRealNeedsBySaleCLIENT_SHORT_NAME: TAbmesWideStringField;
    qryMaterialRealNeedsBySaleSHIPMENT_DATE: TAbmesSQLTimeStampField;
    qryMaterialRealNeedsBySaleQUANTITY: TAbmesFloatField;
    qryMaterialRealNeedsBySalePRODUCT_CODE: TAbmesFloatField;
    qryMaterialRealNeedsBySalePRODUCT_NO: TAbmesFloatField;
    qryMaterialRealNeedsBySalePRODUCT_NAME: TAbmesWideStringField;
    qryMaterialRealNeedsBySaleMEASURE_ABBREV: TAbmesWideStringField;
    qryMaterialRealNeedsByResultProduct: TAbmesSQLQuery;
    prvMaterialRealNeedsByResultProduct: TDataSetProvider;
    qryMaterialRealNeedsByResultProductPRODUCT_CODE: TAbmesFloatField;
    qryMaterialRealNeedsByResultProductPRODUCT_NO: TAbmesFloatField;
    qryMaterialRealNeedsByResultProductPRODUCT_NAME: TAbmesWideStringField;
    qryMaterialRealNeedsByResultProductSALE_COUNT: TAbmesFloatField;
    qryMaterialRealNeedsByResultProductQUANTITY: TAbmesFloatField;
    qryMaterialRealNeedsByResultProductMEASURE_ABBREV: TAbmesWideStringField;
    qryMaterialRealNeedsByDetail: TAbmesSQLQuery;
    prvMaterialRealNeedsByDetail: TDataSetProvider;
    qryMaterialRealNeedsByDetailPRODUCT_CODE: TAbmesFloatField;
    qryMaterialRealNeedsByDetailPRODUCT_NO: TAbmesFloatField;
    qryMaterialRealNeedsByDetailPRODUCT_NAME: TAbmesWideStringField;
    qryMaterialRealNeedsByDetailQUANTITY: TAbmesFloatField;
    qryMaterialRealNeedsByDetailMEASURE_ABBREV: TAbmesWideStringField;
    qryResultProductRealNeeds: TAbmesSQLQuery;
    prvResultProductRealNeeds: TDataSetProvider;
    qryResultProductRealNeedsPRODUCT_CODE: TAbmesFloatField;
    qryResultProductRealNeedsPRODUCT_NO: TAbmesFloatField;
    qryResultProductRealNeedsPRODUCT_NAME: TAbmesWideStringField;
    qryResultProductRealNeedsMEASURE_ABBREV: TAbmesWideStringField;
    qryResultProductRealNeedsSALE_COUNT: TAbmesFloatField;
    qryResultProductRealNeedsQUANTITY: TAbmesFloatField;
    qryResultProductRealNeedsDETAIL_QUANTITY: TAbmesFloatField;
    qryResultProductRealNeedsMATERIAL_QUANTITY: TAbmesFloatField;
    qryResultProductRealNeedsBySale: TAbmesSQLQuery;
    prvResultProductRealNeedsBySale: TDataSetProvider;
    qryResultProductRealNeedsBySaleSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryResultProductRealNeedsBySaleSALE_OBJECT_CODE: TAbmesFloatField;
    qryResultProductRealNeedsBySaleSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qryResultProductRealNeedsBySaleSALE_IDENTIFIER: TAbmesWideStringField;
    qryResultProductRealNeedsBySaleCLIENT_COMPANY_CODE: TAbmesFloatField;
    qryResultProductRealNeedsBySaleCLIENT_SHORT_NAME: TAbmesWideStringField;
    qryResultProductRealNeedsBySaleSHIPMENT_DATE: TAbmesSQLTimeStampField;
    qryResultProductRealNeedsBySaleQUANTITY: TAbmesFloatField;
    qryResultProductRealNeedsBySalePRODUCT_CODE: TAbmesFloatField;
    qryResultProductRealNeedsBySalePRODUCT_NO: TAbmesFloatField;
    qryResultProductRealNeedsBySalePRODUCT_NAME: TAbmesWideStringField;
    qryResultProductRealNeedsBySaleMEASURE_ABBREV: TAbmesWideStringField;
    qryDetailRealNeedsIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    qryResultProductRealNeedsACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryResultProductRealNeedsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryResultProductRealNeedsBySaleACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryResultProductRealNeedsBySaleACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryDetailRealNeedsACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryDetailRealNeedsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryResultProductRealNeedsMEASURE_CODE: TAbmesFloatField;
    qryResultProductRealNeedsACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryDetailRealNeedsMEASURE_CODE: TAbmesFloatField;
    qryDetailRealNeedsACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryMaterialRealNeedsMEASURE_CODE: TAbmesFloatField;
    qryMaterialRealNeedsACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryMaterialRealNeedsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryMaterialRealNeedsACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryDetailRealNeedsBySaleREQUEST_BRANCH_CODE: TAbmesFloatField;
    qryDetailRealNeedsBySaleREQUEST_NO: TAbmesFloatField;
    qryResultProductRealNeedsBySaleREQUEST_BRANCH_CODE: TAbmesFloatField;
    qryResultProductRealNeedsBySaleREQUEST_NO: TAbmesFloatField;
    qryMaterialRealNeedsBySaleREQUEST_BRANCH_CODE: TAbmesFloatField;
    qryMaterialRealNeedsBySaleREQUEST_NO: TAbmesFloatField;
    qryResultProductRealNeedsPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryDetailRealNeedsPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryDetailRealNeedsByResultProductPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryDetailRealNeedsByParentDetailPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryMaterialRealNeedsPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryMaterialRealNeedsByResultProductPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryMaterialRealNeedsByDetailPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryResultProductRealNeedsBySaleCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    qryDetailRealNeedsBySaleCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    qryMaterialRealNeedsBySaleCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    qryModelOpDeptDetailFlow: TAbmesSQLQuery;
    qrySpecOpDeptDetailFlow: TAbmesSQLQuery;
    prvDeptDetailFlow: TDataSetProvider;
    qryModelOpDeptDetailFlowDEPT_CODE: TAbmesFloatField;
    qryModelOpDeptDetailFlowDEPT_IDENTIFIER: TAbmesWideStringField;
    qryModelOpDeptDetailFlowDEPT_NAME: TAbmesWideStringField;
    qryModelOpDeptDetailFlowDEPT_HAS_DOC: TAbmesFloatField;
    qryModelOpDeptDetailFlowDETAIL_GROUP_CODE: TAbmesFloatField;
    qryModelOpDeptDetailFlowDETAIL_GROUP_NO: TAbmesFloatField;
    qryModelOpDeptDetailFlowDETAIL_GROUP_NAME: TAbmesWideStringField;
    qryModelOpDeptDetailFlowDETAIL_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField;
    qryModelOpDeptDetailFlowDETAIL_CODE: TAbmesFloatField;
    qryModelOpDeptDetailFlowDETAIL_NO: TAbmesFloatField;
    qryModelOpDeptDetailFlowDETAIL_NAME: TAbmesWideStringField;
    qryModelOpDeptDetailFlowDETAIL_HAS_DOC: TAbmesFloatField;
    qryModelOpDeptDetailFlowDETAIL_TECH_MEASURE_ABBR: TAbmesWideStringField;
    qryModelOpDeptDetailFlowTECH_QUANTITY: TAbmesFloatField;
    qryModelOpDeptDetailFlowOPERATION_COUNT: TAbmesFloatField;
    qryModelOpDeptDetailFlowMODEL_COUNT: TAbmesFloatField;
    qrySpecOpDeptDetailFlowDEPT_CODE: TAbmesFloatField;
    qrySpecOpDeptDetailFlowDEPT_IDENTIFIER: TAbmesWideStringField;
    qrySpecOpDeptDetailFlowDEPT_NAME: TAbmesWideStringField;
    qrySpecOpDeptDetailFlowDEPT_HAS_DOC: TAbmesFloatField;
    qrySpecOpDeptDetailFlowDETAIL_GROUP_CODE: TAbmesFloatField;
    qrySpecOpDeptDetailFlowDETAIL_GROUP_NO: TAbmesFloatField;
    qrySpecOpDeptDetailFlowDETAIL_GROUP_NAME: TAbmesWideStringField;
    qrySpecOpDeptDetailFlowDETAIL_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField;
    qrySpecOpDeptDetailFlowDETAIL_CODE: TAbmesFloatField;
    qrySpecOpDeptDetailFlowDETAIL_NO: TAbmesFloatField;
    qrySpecOpDeptDetailFlowDETAIL_NAME: TAbmesWideStringField;
    qrySpecOpDeptDetailFlowDETAIL_HAS_DOC: TAbmesFloatField;
    qrySpecOpDeptDetailFlowDETAIL_TECH_MEASURE_ABBR: TAbmesWideStringField;
    qrySpecOpDeptDetailFlowTECH_QUANTITY: TAbmesFloatField;
    qrySpecOpDeptDetailFlowOPERATION_COUNT: TAbmesFloatField;
    qrySpecOpDeptDetailFlowMODEL_COUNT: TAbmesFloatField;
    qrySpecStageDeptDetailFlow: TAbmesSQLQuery;
    qrySpecStageDeptDetailFlowDEPT_CODE: TAbmesFloatField;
    qrySpecStageDeptDetailFlowDEPT_IDENTIFIER: TAbmesWideStringField;
    qrySpecStageDeptDetailFlowDEPT_NAME: TAbmesWideStringField;
    qrySpecStageDeptDetailFlowDEPT_HAS_DOC: TAbmesFloatField;
    qrySpecStageDeptDetailFlowDETAIL_GROUP_CODE: TAbmesFloatField;
    qrySpecStageDeptDetailFlowDETAIL_GROUP_NO: TAbmesFloatField;
    qrySpecStageDeptDetailFlowDETAIL_GROUP_NAME: TAbmesWideStringField;
    qrySpecStageDeptDetailFlowDETAIL_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField;
    qrySpecStageDeptDetailFlowDETAIL_CODE: TAbmesFloatField;
    qrySpecStageDeptDetailFlowDETAIL_NO: TAbmesFloatField;
    qrySpecStageDeptDetailFlowDETAIL_NAME: TAbmesWideStringField;
    qrySpecStageDeptDetailFlowDETAIL_HAS_DOC: TAbmesFloatField;
    qrySpecStageDeptDetailFlowDETAIL_TECH_MEASURE_ABBR: TAbmesWideStringField;
    qrySpecStageDeptDetailFlowTECH_QUANTITY: TAbmesFloatField;
    qrySpecStageDeptDetailFlowOPERATION_COUNT: TAbmesFloatField;
    qrySpecStageDeptDetailFlowMODEL_COUNT: TAbmesFloatField;
    qryModelStageDeptDetailFlow: TAbmesSQLQuery;
    qryModelStageDeptDetailFlowDEPT_CODE: TAbmesFloatField;
    qryModelStageDeptDetailFlowDEPT_IDENTIFIER: TAbmesWideStringField;
    qryModelStageDeptDetailFlowDEPT_NAME: TAbmesWideStringField;
    qryModelStageDeptDetailFlowDEPT_HAS_DOC: TAbmesFloatField;
    qryModelStageDeptDetailFlowDETAIL_GROUP_CODE: TAbmesFloatField;
    qryModelStageDeptDetailFlowDETAIL_GROUP_NO: TAbmesFloatField;
    qryModelStageDeptDetailFlowDETAIL_GROUP_NAME: TAbmesWideStringField;
    qryModelStageDeptDetailFlowDETAIL_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField;
    qryModelStageDeptDetailFlowDETAIL_CODE: TAbmesFloatField;
    qryModelStageDeptDetailFlowDETAIL_NO: TAbmesFloatField;
    qryModelStageDeptDetailFlowDETAIL_NAME: TAbmesWideStringField;
    qryModelStageDeptDetailFlowDETAIL_HAS_DOC: TAbmesFloatField;
    qryModelStageDeptDetailFlowDETAIL_TECH_MEASURE_ABBR: TAbmesWideStringField;
    qryModelStageDeptDetailFlowTECH_QUANTITY: TAbmesFloatField;
    qryModelStageDeptDetailFlowOPERATION_COUNT: TAbmesFloatField;
    qryModelStageDeptDetailFlowMODEL_COUNT: TAbmesFloatField;
    qryResultProductRealNeedsDOC_BRANCH_CODE: TAbmesFloatField;
    qryResultProductRealNeedsDOC_CODE: TAbmesFloatField;
    qryResultProductRealNeedsHAS_DOC: TAbmesFloatField;
    qryDetailRealNeedsDOC_BRANCH_CODE: TAbmesFloatField;
    qryDetailRealNeedsDOC_CODE: TAbmesFloatField;
    qryDetailRealNeedsHAS_DOC: TAbmesFloatField;
    qryMaterialRealNeedsDOC_BRANCH_CODE: TAbmesFloatField;
    qryMaterialRealNeedsDOC_CODE: TAbmesFloatField;
    qryMaterialRealNeedsHAS_DOC: TAbmesFloatField;
    qryDetailRealNeedsBySaleDOC_BRANCH_CODE: TAbmesFloatField;
    qryDetailRealNeedsBySaleDOC_CODE: TAbmesFloatField;
    qryDetailRealNeedsBySaleHAS_DOC: TAbmesFloatField;
    qryDetailRealNeedsByResultProductDOC_BRANCH_CODE: TAbmesFloatField;
    qryDetailRealNeedsByResultProductDOC_CODE: TAbmesFloatField;
    qryDetailRealNeedsByResultProductHAS_DOC: TAbmesFloatField;
    qryDetailRealNeedsByParentDetailDOC_BRANCH_CODE: TAbmesFloatField;
    qryDetailRealNeedsByParentDetailDOC_CODE: TAbmesFloatField;
    qryDetailRealNeedsByParentDetailHAS_DOC: TAbmesFloatField;
    qryMaterialRealNeedsBySaleDOC_BRANCH_CODE: TAbmesFloatField;
    qryMaterialRealNeedsBySaleDOC_CODE: TAbmesFloatField;
    qryMaterialRealNeedsBySaleHAS_DOC: TAbmesFloatField;
    qryMaterialRealNeedsByResultProductDOC_BRANCH_CODE: TAbmesFloatField;
    qryMaterialRealNeedsByResultProductDOC_CODE: TAbmesFloatField;
    qryMaterialRealNeedsByResultProductHAS_DOC: TAbmesFloatField;
    qryMaterialRealNeedsByDetailDOC_BRANCH_CODE: TAbmesFloatField;
    qryMaterialRealNeedsByDetailDOC_CODE: TAbmesFloatField;
    qryMaterialRealNeedsByDetailHAS_DOC: TAbmesFloatField;
    qryResultProductEstNeeds: TAbmesSQLQuery;
    prvResultProductEstNeeds: TDataSetProvider;
    qryResultProductEstNeedsPRODUCT_CODE: TAbmesFloatField;
    qryResultProductEstNeedsPRODUCT_NO: TAbmesFloatField;
    qryResultProductEstNeedsPRODUCT_NAME: TAbmesWideStringField;
    qryResultProductEstNeedsACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryResultProductEstNeedsPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryResultProductEstNeedsDOC_BRANCH_CODE: TAbmesFloatField;
    qryResultProductEstNeedsDOC_CODE: TAbmesFloatField;
    qryResultProductEstNeedsHAS_DOC: TAbmesFloatField;
    qryResultProductEstNeedsMEASURE_CODE: TAbmesFloatField;
    qryResultProductEstNeedsMEASURE_ABBREV: TAbmesWideStringField;
    qryResultProductEstNeedsACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryResultProductEstNeedsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryResultProductEstNeedsSALE_COUNT: TAbmesFloatField;
    qryResultProductEstNeedsQUANTITY: TAbmesFloatField;
    qryResultProductEstNeedsDETAIL_QUANTITY: TAbmesFloatField;
    qryResultProductEstNeedsMATERIAL_QUANTITY: TAbmesFloatField;
    qryDetailRealNeedsUPPER_LEVEL_STRUCT_PART_COUNT: TAbmesFloatField;
    qryMaterialRealNeedsUPPER_LEVEL_STRUCT_PART_COUNT: TAbmesFloatField;
    qryMaterialRealNeedsIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    qryDetailRealNeedsBySaleSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField;
    qryDetailRealNeedsBySaleSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField;
    qryDetailRealNeedsBySaleSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField;
    qryDetailRealNeedsByResultProductSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField;
    qryDetailRealNeedsByResultProductSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField;
    qryDetailRealNeedsByResultProductSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField;
    qryDetailRealNeedsByParentDetailSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField;
    qryDetailRealNeedsByParentDetailSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField;
    qryDetailRealNeedsByParentDetailSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField;
    qryMaterialRealNeedsBySaleSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField;
    qryMaterialRealNeedsBySaleSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField;
    qryMaterialRealNeedsBySaleSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField;
    qryMaterialRealNeedsByResultProductSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField;
    qryMaterialRealNeedsByResultProductSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField;
    qryMaterialRealNeedsByResultProductSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField;
    qryMaterialRealNeedsByDetailSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField;
    qryMaterialRealNeedsByDetailSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField;
    qryMaterialRealNeedsByDetailSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField;
    qryDetailEstNeeds: TAbmesSQLQuery;
    prvDetailEstNeeds: TDataSetProvider;
    qryDetailEstNeedsPRODUCT_CODE: TAbmesFloatField;
    qryDetailEstNeedsPRODUCT_NO: TAbmesFloatField;
    qryDetailEstNeedsPRODUCT_NAME: TAbmesWideStringField;
    qryDetailEstNeedsPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryDetailEstNeedsDOC_BRANCH_CODE: TAbmesFloatField;
    qryDetailEstNeedsDOC_CODE: TAbmesFloatField;
    qryDetailEstNeedsHAS_DOC: TAbmesFloatField;
    qryDetailEstNeedsIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    qryDetailEstNeedsMEASURE_CODE: TAbmesFloatField;
    qryDetailEstNeedsMEASURE_ABBREV: TAbmesWideStringField;
    qryDetailEstNeedsACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryDetailEstNeedsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryDetailEstNeedsACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryDetailEstNeedsQUANTITY: TAbmesFloatField;
    qryDetailEstNeedsDIRECT_SALE_QUANTITY: TAbmesFloatField;
    qryDetailEstNeedsSALE_COUNT: TAbmesFloatField;
    qryDetailEstNeedsSPEC_PRODUCT_COUNT: TAbmesFloatField;
    qryDetailEstNeedsUPPER_LEVEL_STRUCT_PART_COUNT: TAbmesFloatField;
    prvMaterialEstNeeds: TDataSetProvider;
    qryMaterialEstNeeds: TAbmesSQLQuery;
    qryMaterialEstNeedsPRODUCT_CODE: TAbmesFloatField;
    qryMaterialEstNeedsPRODUCT_NO: TAbmesFloatField;
    qryMaterialEstNeedsPRODUCT_NAME: TAbmesWideStringField;
    qryMaterialEstNeedsPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryMaterialEstNeedsDOC_BRANCH_CODE: TAbmesFloatField;
    qryMaterialEstNeedsDOC_CODE: TAbmesFloatField;
    qryMaterialEstNeedsHAS_DOC: TAbmesFloatField;
    qryMaterialEstNeedsIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    qryMaterialEstNeedsMEASURE_CODE: TAbmesFloatField;
    qryMaterialEstNeedsMEASURE_ABBREV: TAbmesWideStringField;
    qryMaterialEstNeedsACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryMaterialEstNeedsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryMaterialEstNeedsACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryMaterialEstNeedsQUANTITY: TAbmesFloatField;
    qryMaterialEstNeedsDIRECT_SALE_QUANTITY: TAbmesFloatField;
    qryMaterialEstNeedsSALE_COUNT: TAbmesFloatField;
    qryMaterialEstNeedsSPEC_PRODUCT_COUNT: TAbmesFloatField;
    qryMaterialEstNeedsUPPER_LEVEL_STRUCT_PART_COUNT: TAbmesFloatField;
    qryDetailEstNeedsByResultProduct: TAbmesSQLQuery;
    prvDetailEstNeedsByResultProduct: TDataSetProvider;
    qryDetailEstNeedsByResultProductPRODUCT_CODE: TAbmesFloatField;
    qryDetailEstNeedsByResultProductPRODUCT_NO: TAbmesFloatField;
    qryDetailEstNeedsByResultProductPRODUCT_NAME: TAbmesWideStringField;
    qryDetailEstNeedsByResultProductPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryDetailEstNeedsByResultProductDOC_BRANCH_CODE: TAbmesFloatField;
    qryDetailEstNeedsByResultProductDOC_CODE: TAbmesFloatField;
    qryDetailEstNeedsByResultProductHAS_DOC: TAbmesFloatField;
    qryDetailEstNeedsByResultProductSALE_COUNT: TAbmesFloatField;
    qryDetailEstNeedsByResultProductQUANTITY: TAbmesFloatField;
    qryDetailEstNeedsByResultProductMEASURE_ABBREV: TAbmesWideStringField;
    qryDetailEstNeedsByResultProductSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField;
    qryDetailEstNeedsByResultProductSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField;
    qryDetailEstNeedsByResultProductSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField;
    qryMaterialEstNeedsByResultProduct: TAbmesSQLQuery;
    prvMaterialEstNeedsByResultProduct: TDataSetProvider;
    qryMaterialEstNeedsByResultProductPRODUCT_CODE: TAbmesFloatField;
    qryMaterialEstNeedsByResultProductPRODUCT_NO: TAbmesFloatField;
    qryMaterialEstNeedsByResultProductPRODUCT_NAME: TAbmesWideStringField;
    qryMaterialEstNeedsByResultProductPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryMaterialEstNeedsByResultProductDOC_BRANCH_CODE: TAbmesFloatField;
    qryMaterialEstNeedsByResultProductDOC_CODE: TAbmesFloatField;
    qryMaterialEstNeedsByResultProductHAS_DOC: TAbmesFloatField;
    qryMaterialEstNeedsByResultProductSALE_COUNT: TAbmesFloatField;
    qryMaterialEstNeedsByResultProductQUANTITY: TAbmesFloatField;
    qryMaterialEstNeedsByResultProductMEASURE_ABBREV: TAbmesWideStringField;
    qryMaterialEstNeedsByResultProductSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField;
    qryMaterialEstNeedsByResultProductSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField;
    qryMaterialEstNeedsByResultProductSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField;
    prvDetailEstNeedsByParentDetail: TDataSetProvider;
    qryDetailEstNeedsByParentDetail: TAbmesSQLQuery;
    qryDetailEstNeedsByParentDetailPRODUCT_CODE: TAbmesFloatField;
    qryDetailEstNeedsByParentDetailPRODUCT_NO: TAbmesFloatField;
    qryDetailEstNeedsByParentDetailPRODUCT_NAME: TAbmesWideStringField;
    qryDetailEstNeedsByParentDetailPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryDetailEstNeedsByParentDetailDOC_BRANCH_CODE: TAbmesFloatField;
    qryDetailEstNeedsByParentDetailDOC_CODE: TAbmesFloatField;
    qryDetailEstNeedsByParentDetailHAS_DOC: TAbmesFloatField;
    qryDetailEstNeedsByParentDetailQUANTITY: TAbmesFloatField;
    qryDetailEstNeedsByParentDetailMEASURE_ABBREV: TAbmesWideStringField;
    qryDetailEstNeedsByParentDetailSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField;
    qryDetailEstNeedsByParentDetailSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField;
    qryDetailEstNeedsByParentDetailSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField;
    qryMaterialEstNeedsByDetail: TAbmesSQLQuery;
    prvMaterialEstNeedsByDetail: TDataSetProvider;
    qryMaterialEstNeedsByDetailPRODUCT_CODE: TAbmesFloatField;
    qryMaterialEstNeedsByDetailPRODUCT_NO: TAbmesFloatField;
    qryMaterialEstNeedsByDetailPRODUCT_NAME: TAbmesWideStringField;
    qryMaterialEstNeedsByDetailPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryMaterialEstNeedsByDetailDOC_BRANCH_CODE: TAbmesFloatField;
    qryMaterialEstNeedsByDetailDOC_CODE: TAbmesFloatField;
    qryMaterialEstNeedsByDetailHAS_DOC: TAbmesFloatField;
    qryMaterialEstNeedsByDetailQUANTITY: TAbmesFloatField;
    qryMaterialEstNeedsByDetailMEASURE_ABBREV: TAbmesWideStringField;
    qryMaterialEstNeedsByDetailSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField;
    qryMaterialEstNeedsByDetailSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField;
    qryMaterialEstNeedsByDetailSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField;
    qryEstStageDeptDetailFlow: TAbmesSQLQuery;
    qryEstOpDeptDetailFlow: TAbmesSQLQuery;
    qryEstStageDeptDetailFlowDEPT_CODE: TAbmesFloatField;
    qryEstStageDeptDetailFlowDEPT_IDENTIFIER: TAbmesWideStringField;
    qryEstStageDeptDetailFlowDEPT_NAME: TAbmesWideStringField;
    qryEstStageDeptDetailFlowDEPT_HAS_DOC: TAbmesFloatField;
    qryEstStageDeptDetailFlowDETAIL_GROUP_CODE: TAbmesFloatField;
    qryEstStageDeptDetailFlowDETAIL_GROUP_NO: TAbmesFloatField;
    qryEstStageDeptDetailFlowDETAIL_GROUP_NAME: TAbmesWideStringField;
    qryEstStageDeptDetailFlowDETAIL_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField;
    qryEstStageDeptDetailFlowDETAIL_CODE: TAbmesFloatField;
    qryEstStageDeptDetailFlowDETAIL_NO: TAbmesFloatField;
    qryEstStageDeptDetailFlowDETAIL_NAME: TAbmesWideStringField;
    qryEstStageDeptDetailFlowDETAIL_HAS_DOC: TAbmesFloatField;
    qryEstStageDeptDetailFlowDETAIL_TECH_MEASURE_ABBR: TAbmesWideStringField;
    qryEstStageDeptDetailFlowTECH_QUANTITY: TAbmesFloatField;
    qryEstStageDeptDetailFlowOPERATION_COUNT: TAbmesFloatField;
    qryEstStageDeptDetailFlowMODEL_COUNT: TAbmesFloatField;
    qryEstOpDeptDetailFlowDEPT_CODE: TAbmesFloatField;
    qryEstOpDeptDetailFlowDEPT_IDENTIFIER: TAbmesWideStringField;
    qryEstOpDeptDetailFlowDEPT_NAME: TAbmesWideStringField;
    qryEstOpDeptDetailFlowDEPT_HAS_DOC: TAbmesFloatField;
    qryEstOpDeptDetailFlowDETAIL_GROUP_CODE: TAbmesFloatField;
    qryEstOpDeptDetailFlowDETAIL_GROUP_NO: TAbmesFloatField;
    qryEstOpDeptDetailFlowDETAIL_GROUP_NAME: TAbmesWideStringField;
    qryEstOpDeptDetailFlowDETAIL_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField;
    qryEstOpDeptDetailFlowDETAIL_CODE: TAbmesFloatField;
    qryEstOpDeptDetailFlowDETAIL_NO: TAbmesFloatField;
    qryEstOpDeptDetailFlowDETAIL_NAME: TAbmesWideStringField;
    qryEstOpDeptDetailFlowDETAIL_HAS_DOC: TAbmesFloatField;
    qryEstOpDeptDetailFlowDETAIL_TECH_MEASURE_ABBR: TAbmesWideStringField;
    qryEstOpDeptDetailFlowTECH_QUANTITY: TAbmesFloatField;
    qryEstOpDeptDetailFlowOPERATION_COUNT: TAbmesFloatField;
    qryEstOpDeptDetailFlowMODEL_COUNT: TAbmesFloatField;
    qrySpecStageDeptDetailFlowCAPACITY_BUSY_HOURS: TAbmesFloatField;
    qryModelStageDeptDetailFlowCAPACITY_BUSY_HOURS: TAbmesFloatField;
    qryEstStageDeptDetailFlowCAPACITY_BUSY_HOURS: TAbmesFloatField;
    qrySpecOpDeptDetailFlowCAPACITY_BUSY_HOURS: TAbmesFloatField;
    qryModelOpDeptDetailFlowCAPACITY_BUSY_HOURS: TAbmesFloatField;
    qryEstOpDeptDetailFlowCAPACITY_BUSY_HOURS: TAbmesFloatField;
    qrySpecStageDeptDetailFlowDEPT_IS_ACTIVE: TAbmesFloatField;
    qrySpecStageDeptDetailFlowDETAIL_GROUP_IS_ACTIVE: TAbmesFloatField;
    qrySpecStageDeptDetailFlowDETAIL_IS_ACTIVE: TAbmesFloatField;
    qrySpecOpDeptDetailFlowDEPT_IS_ACTIVE: TAbmesFloatField;
    qrySpecOpDeptDetailFlowDETAIL_GROUP_IS_ACTIVE: TAbmesFloatField;
    qrySpecOpDeptDetailFlowDETAIL_IS_ACTIVE: TAbmesFloatField;
    qryModelStageDeptDetailFlowDEPT_IS_ACTIVE: TAbmesFloatField;
    qryModelStageDeptDetailFlowDETAIL_GROUP_IS_ACTIVE: TAbmesFloatField;
    qryModelStageDeptDetailFlowDETAIL_IS_ACTIVE: TAbmesFloatField;
    qryModelOpDeptDetailFlowDEPT_IS_ACTIVE: TAbmesFloatField;
    qryModelOpDeptDetailFlowDETAIL_GROUP_IS_ACTIVE: TAbmesFloatField;
    qryModelOpDeptDetailFlowDETAIL_IS_ACTIVE: TAbmesFloatField;
    qryEstStageDeptDetailFlowDEPT_IS_ACTIVE: TAbmesFloatField;
    qryEstStageDeptDetailFlowDETAIL_GROUP_IS_ACTIVE: TAbmesFloatField;
    qryEstStageDeptDetailFlowDETAIL_IS_ACTIVE: TAbmesFloatField;
    qryEstOpDeptDetailFlowDEPT_IS_ACTIVE: TAbmesFloatField;
    qryEstOpDeptDetailFlowDETAIL_GROUP_IS_ACTIVE: TAbmesFloatField;
    qryEstOpDeptDetailFlowDETAIL_IS_ACTIVE: TAbmesFloatField;
    qrySpecOpDeptDetailFlowToolNeeds: TAbmesSQLQuery;
    qryModelOpDeptDetailFlowToolNeeds: TAbmesSQLQuery;
    qryEstOpDeptDetailFlowToolNeeds: TAbmesSQLQuery;
    prvDeptDetailFlowToolNeeds: TDataSetProvider;
    qryModelOpDeptDetailFlowToolNeedsPRODUCT_CODE: TAbmesFloatField;
    qryModelOpDeptDetailFlowToolNeedsPRODUCT_NO: TAbmesFloatField;
    qryModelOpDeptDetailFlowToolNeedsPRODUCT_NAME: TAbmesWideStringField;
    qryModelOpDeptDetailFlowToolNeedsCAPACITY_BUSY_HOURS: TAbmesFloatField;
    qryModelOpDeptDetailFlowToolNeedsOPERATION_COUNT: TAbmesFloatField;
    qryModelOpDeptDetailFlowToolNeedsMODEL_COUNT: TAbmesFloatField;
    qryModelOpDeptDetailFlowToolNeedsDETAIL_COUNT: TAbmesFloatField;
    qryEstOpDeptDetailFlowToolNeedsPRODUCT_CODE: TAbmesFloatField;
    qryEstOpDeptDetailFlowToolNeedsPRODUCT_NO: TAbmesFloatField;
    qryEstOpDeptDetailFlowToolNeedsPRODUCT_NAME: TAbmesWideStringField;
    qryEstOpDeptDetailFlowToolNeedsCAPACITY_BUSY_HOURS: TAbmesFloatField;
    qryEstOpDeptDetailFlowToolNeedsOPERATION_COUNT: TAbmesFloatField;
    qryEstOpDeptDetailFlowToolNeedsMODEL_COUNT: TAbmesFloatField;
    qryEstOpDeptDetailFlowToolNeedsDETAIL_COUNT: TAbmesFloatField;
    qrySpecOpDeptDetailFlowToolNeedsPRODUCT_CODE: TAbmesFloatField;
    qrySpecOpDeptDetailFlowToolNeedsPRODUCT_NO: TAbmesFloatField;
    qrySpecOpDeptDetailFlowToolNeedsPRODUCT_NAME: TAbmesWideStringField;
    qrySpecOpDeptDetailFlowToolNeedsCAPACITY_BUSY_HOURS: TAbmesFloatField;
    qrySpecOpDeptDetailFlowToolNeedsOPERATION_COUNT: TAbmesFloatField;
    qrySpecOpDeptDetailFlowToolNeedsMODEL_COUNT: TAbmesFloatField;
    qrySpecOpDeptDetailFlowToolNeedsDETAIL_COUNT: TAbmesFloatField;
    qryEstOpDeptDetailFlowToolNeedsPRODUCT_HAS_DOC: TAbmesFloatField;
    qrySpecOpDeptDetailFlowToolNeedsPRODUCT_HAS_DOC: TAbmesFloatField;
    qryModelOpDeptDetailFlowToolNeedsPRODUCT_HAS_DOC: TAbmesFloatField;
    qrySpecStageDeptDetailFlowBASE_GROUP_COUNT: TAbmesFloatField;
    qryModelStageDeptDetailFlowBASE_GROUP_COUNT: TAbmesFloatField;
    qryEstStageDeptDetailFlowBASE_GROUP_COUNT: TAbmesFloatField;
    qrySpecOpDeptDetailFlowBASE_GROUP_COUNT: TAbmesFloatField;
    qryModelOpDeptDetailFlowBASE_GROUP_COUNT: TAbmesFloatField;
    qryEstOpDeptDetailFlowBASE_GROUP_COUNT: TAbmesFloatField;
    qryResultProductRealNeedsQUANTITY_PRICE: TAbmesFloatField;
    qryResultProductRealNeedsDETAIL_QUANTITY_PRICE: TAbmesFloatField;
    qryResultProductRealNeedsMATERIAL_QUANTITY_PRICE: TAbmesFloatField;
    qryResultProductRealNeedsMATERIAL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryResultProductRealNeedsQUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryResultProductRealNeedsDETAIL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryResultProductEstNeedsQUANTITY_PRICE: TAbmesFloatField;
    qryResultProductEstNeedsDETAIL_QUANTITY_PRICE: TAbmesFloatField;
    qryResultProductEstNeedsMATERIAL_QUANTITY_PRICE: TAbmesFloatField;
    qryResultProductEstNeedsQUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryResultProductEstNeedsDETAIL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryResultProductEstNeedsMATERIAL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryDetailEstNeedsQUANTITY_PRICE: TAbmesFloatField;
    qryDetailEstNeedsQUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryDetailEstNeedsDIRECT_SALE_QUANTITY_PRICE: TAbmesFloatField;
    qryDetailEstNeedsDIRECT_SALE_QTY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryDetailEstNeedsFULL_QUANTITY: TAbmesFloatField;
    qryDetailEstNeedsFULL_QUANTITY_PRICE: TAbmesFloatField;
    qryDetailEstNeedsFULL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryMaterialEstNeedsQUANTITY_PRICE: TAbmesFloatField;
    qryMaterialEstNeedsQUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryMaterialEstNeedsDIRECT_SALE_QUANTITY_PRICE: TAbmesFloatField;
    qryMaterialEstNeedsDIRECT_SALE_QTY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryMaterialEstNeedsFULL_QUANTITY: TAbmesFloatField;
    qryMaterialEstNeedsFULL_QUANTITY_PRICE: TAbmesFloatField;
    qryMaterialEstNeedsFULL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryDetailRealNeedsQUANTITY_PRICE: TAbmesFloatField;
    qryDetailRealNeedsQUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryDetailRealNeedsDIRECT_SALE_QUANTITY_PRICE: TAbmesFloatField;
    qryDetailRealNeedsDIRECT_SALE_QTY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryDetailRealNeedsFULL_QUANTITY: TAbmesFloatField;
    qryDetailRealNeedsFULL_QUANTITY_PRICE: TAbmesFloatField;
    qryDetailRealNeedsFULL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryMaterialRealNeedsQUANTITY_PRICE: TAbmesFloatField;
    qryMaterialRealNeedsQUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryMaterialRealNeedsDIRECT_SALE_QUANTITY_PRICE: TAbmesFloatField;
    qryMaterialRealNeedsDIRECT_SALE_QTY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryMaterialRealNeedsFULL_QUANTITY: TAbmesFloatField;
    qryMaterialRealNeedsFULL_QUANTITY_PRICE: TAbmesFloatField;
    qryMaterialRealNeedsFULL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryResultProductRealNeedsSTRUCT_PART_QUANTITY: TAbmesFloatField;
    qryResultProductRealNeedsSTRUCT_PART_QUANTITY_PRICE: TAbmesFloatField;
    qryResultProductRealNeedsSTRUCT_PART_QTY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qryResultProductEstNeedsSTRUCT_PART_QUANTITY: TAbmesFloatField;
    qryResultProductEstNeedsSTRUCT_PART_QUANTITY_PRICE: TAbmesFloatField;
    qryResultProductEstNeedsSTRUCT_PART_QTY_NOPRICE_DATE: TAbmesSQLTimeStampField;
    qrySpecOpDeptDetailFlowSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryModelOpDeptDetailFlowSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryEstOpDeptDetailFlowSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecStageDeptDetailFlowSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryModelStageDeptDetailFlowSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryEstStageDeptDetailFlowSPEC_PRODUCT_CODE: TAbmesFloatField;
    procedure qryDetailRealNeedsBeforeOpen(DataSet: TDataSet);
    procedure qryDetailRealNeedsAfterClose(DataSet: TDataSet);
    procedure qryMaterialRealNeedsBeforeOpen(DataSet: TDataSet);
    procedure qryMaterialRealNeedsAfterClose(DataSet: TDataSet);
    procedure qryResultProductRealNeedsBeforeOpen(DataSet: TDataSet);
    procedure qryResultProductRealNeedsAfterClose(DataSet: TDataSet);
    procedure qryDetailRealNeedsBySaleBeforeOpen(DataSet: TDataSet);
    procedure qryDetailRealNeedsBySaleAfterClose(DataSet: TDataSet);
    procedure qryDetailRealNeedsByResultProductBeforeOpen(DataSet: TDataSet);
    procedure qryDetailRealNeedsByResultProductAfterClose(DataSet: TDataSet);
    procedure qryDetailRealNeedsByParentDetailBeforeOpen(DataSet: TDataSet);
    procedure qryDetailRealNeedsByParentDetailAfterClose(DataSet: TDataSet);
    procedure qryMaterialRealNeedsBySaleBeforeOpen(DataSet: TDataSet);
    procedure qryMaterialRealNeedsBySaleAfterClose(DataSet: TDataSet);
    procedure qryMaterialRealNeedsByResultProductBeforeOpen(DataSet: TDataSet);
    procedure qryMaterialRealNeedsByResultProductAfterClose(DataSet: TDataSet);
    procedure qryMaterialRealNeedsByDetailBeforeOpen(DataSet: TDataSet);
    procedure qryMaterialRealNeedsByDetailAfterClose(DataSet: TDataSet);
    procedure qryResultProductRealNeedsBySaleBeforeOpen(DataSet: TDataSet);
    procedure qryResultProductRealNeedsBySaleAfterClose(DataSet: TDataSet);
    procedure prvDeptDetailFlowBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qrySpecOpDeptDetailFlowBeforeOpen(DataSet: TDataSet);
    procedure qrySpecOpDeptDetailFlowAfterClose(DataSet: TDataSet);
    procedure qryModelOpDeptDetailFlowBeforeOpen(DataSet: TDataSet);
    procedure qryModelOpDeptDetailFlowAfterClose(DataSet: TDataSet);
    procedure qrySpecStageDeptDetailFlowBeforeOpen(DataSet: TDataSet);
    procedure qrySpecStageDeptDetailFlowAfterClose(DataSet: TDataSet);
    procedure qryModelStageDeptDetailFlowBeforeOpen(DataSet: TDataSet);
    procedure qryModelStageDeptDetailFlowAfterClose(DataSet: TDataSet);
    procedure qryResultProductEstNeedsBeforeOpen(DataSet: TDataSet);
    procedure qryResultProductEstNeedsAfterClose(DataSet: TDataSet);
    procedure qryDetailEstNeedsBeforeOpen(DataSet: TDataSet);
    procedure qryDetailEstNeedsAfterClose(DataSet: TDataSet);
    procedure qryMaterialEstNeedsBeforeOpen(DataSet: TDataSet);
    procedure qryMaterialEstNeedsAfterClose(DataSet: TDataSet);
    procedure qryDetailEstNeedsByResultProductBeforeOpen(DataSet: TDataSet);
    procedure qryDetailEstNeedsByResultProductAfterClose(DataSet: TDataSet);
    procedure qryMaterialEstNeedsByResultProductBeforeOpen(DataSet: TDataSet);
    procedure qryMaterialEstNeedsByResultProductAfterClose(DataSet: TDataSet);
    procedure qryDetailEstNeedsByParentDetailBeforeOpen(DataSet: TDataSet);
    procedure qryDetailEstNeedsByParentDetailAfterClose(DataSet: TDataSet);
    procedure qryMaterialEstNeedsByDetailBeforeOpen(DataSet: TDataSet);
    procedure qryMaterialEstNeedsByDetailAfterClose(DataSet: TDataSet);
    procedure qryEstStageDeptDetailFlowBeforeOpen(DataSet: TDataSet);
    procedure qryEstStageDeptDetailFlowAfterClose(DataSet: TDataSet);
    procedure qryEstOpDeptDetailFlowBeforeOpen(DataSet: TDataSet);
    procedure qryEstOpDeptDetailFlowAfterClose(DataSet: TDataSet);
    procedure qryModelOpDeptDetailFlowToolNeedsBeforeOpen(DataSet: TDataSet);
    procedure qryModelOpDeptDetailFlowToolNeedsAfterClose(DataSet: TDataSet);
    procedure prvDeptDetailFlowToolNeedsBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryEstOpDeptDetailFlowToolNeedsAfterClose(DataSet: TDataSet);
    procedure qryEstOpDeptDetailFlowToolNeedsBeforeOpen(DataSet: TDataSet);
    procedure qrySpecOpDeptDetailFlowToolNeedsBeforeOpen(DataSet: TDataSet);
    procedure qrySpecOpDeptDetailFlowToolNeedsAfterClose(DataSet: TDataSet);
  private
    procedure DeptDetailFlowToolNeedsBeforeOpen(AQuery: TAbmesSQLQuery);
    procedure DeptDetailFlowToolNeedsAfterClose(AQuery: TAbmesSQLQuery);
  end;

type
  IdmNeedsProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmNeedsProxy = class(TDBPooledDataModuleProxy, IdmNeedsProxy)
  private
    class var FSingleton: TdmNeedsProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmNeeds>;
  strict protected
    property LockedInstance: ISmartLock<TdmNeeds> read GetLockedInstance;
  public
    class property Singleton: TdmNeedsProxy read FSingleton;
  end;

implementation

uses
  uDBPooledDataModuleHelper, uUtils, StrUtils, uDeptDetailFlow;

{$R *.dfm}

{ TdmNeedsProxy }

function TdmNeedsProxy.GetLockedInstance: ISmartLock<TdmNeeds>;
begin
  Result:= ISmartLock<TdmNeeds>(inherited LockedInstance);
end;

{ TdmNeeds }

procedure TdmNeeds.qryDetailRealNeedsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_STRUCT_PART_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.prvDeptDetailFlowToolNeedsBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
var
  FlowTypeQueries: array[0..2] of TAbmesSQLQuery;
  TheQuery: TAbmesSQLQuery;
  TheParams: TParams;
  FlowType: Integer;
begin
  inherited;
  if VarIsNullOrEmpty(OwnerData) then
    Exit;

  TheParams:= TParams.Create;
  try
    UnpackParams(OwnerData, TheParams);

    FlowType:= TheParams.ParamByName('FLOW_TYPE').AsInteger;

    Assert(FlowType in [0..2]);

    FlowTypeQueries[0]:= qrySpecOpDeptDetailFlowToolNeeds;
    FlowTypeQueries[1]:= qryModelOpDeptDetailFlowToolNeeds;
    FlowTypeQueries[2]:= qryEstOpDeptDetailFlowToolNeeds;
    TheQuery:= FlowTypeQueries[FlowType];

    (Sender as TDataSetProvider).DataSet:= TheQuery;
    IProviderSupportNG(TheQuery).PSSetParams(TheParams);
  finally
    FreeAndNil(TheParams);
  end;  { try }
end;

procedure TdmNeeds.qryDetailEstNeedsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_STRUCT_PART_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryDetailEstNeedsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_STRUCT_PART_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryDetailEstNeedsByParentDetailAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryDetailEstNeedsByParentDetailBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryDetailEstNeedsByResultProductAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryDetailEstNeedsByResultProductBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryDetailRealNeedsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_STRUCT_PART_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryMaterialRealNeedsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_STRUCT_PART_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryMaterialEstNeedsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_STRUCT_PART_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryMaterialEstNeedsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_STRUCT_PART_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryMaterialEstNeedsByDetailAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryMaterialEstNeedsByDetailBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryMaterialEstNeedsByResultProductAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryMaterialEstNeedsByResultProductBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryMaterialRealNeedsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_STRUCT_PART_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryResultProductRealNeedsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryResultProductEstNeedsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryResultProductEstNeedsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryResultProductRealNeedsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryDetailRealNeedsBySaleBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryEstOpDeptDetailFlowAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DETAIL_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 3);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredDepts(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 1);
end;

procedure TdmNeeds.qryEstOpDeptDetailFlowBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 1);

  SvrParamProductTreeNodeFilter.PrepareFilteredDepts(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DETAIL_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 3);
end;

procedure TdmNeeds.qryEstOpDeptDetailFlowToolNeedsAfterClose(DataSet: TDataSet);
begin
  inherited;
  DeptDetailFlowToolNeedsAfterClose(DataSet as TAbmesSQLQuery);
end;

procedure TdmNeeds.qryEstOpDeptDetailFlowToolNeedsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  DeptDetailFlowToolNeedsBeforeOpen(DataSet as TAbmesSQLQuery);
end;

procedure TdmNeeds.qryEstStageDeptDetailFlowAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DETAIL_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 3);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 1);
end;

procedure TdmNeeds.qryEstStageDeptDetailFlowBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 1);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DETAIL_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 3);
end;

procedure TdmNeeds.qryDetailRealNeedsBySaleAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryDetailRealNeedsByResultProductBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryDetailRealNeedsByResultProductAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryDetailRealNeedsByParentDetailBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryDetailRealNeedsByParentDetailAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryMaterialRealNeedsBySaleBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryMaterialRealNeedsBySaleAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryMaterialRealNeedsByResultProductBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryMaterialRealNeedsByResultProductAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryMaterialRealNeedsByDetailBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryMaterialRealNeedsByDetailAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_RESULT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryResultProductRealNeedsBySaleBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.qryResultProductRealNeedsBySaleAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmNeeds.DeptDetailFlowToolNeedsAfterClose(AQuery: TAbmesSQLQuery);
begin
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    AQuery.CustomParams.ParamByName('CHOSEN_DETAIL_PRODUCTS'), [AQuery], 3);
end;

procedure TdmNeeds.DeptDetailFlowToolNeedsBeforeOpen(AQuery: TAbmesSQLQuery);
const
  ToolNames: array[TToolType] of string = ('PROGRAM', 'SPECIFIC', 'TYPICAL');
begin
  inherited;
  AQuery.MacroByName('TOOL_PRODUCT_CODE_FIELD_NAME').AsString:=
    ToolNames[IntToToolType(AQuery.CustomParams.ParamByName('TOOL_TYPE').AsInteger)] + '_TOOL_PRODUCT_CODE';


  if (IntToStructPartType(AQuery.CustomParams.ParamByName('TOOL_STRUCT_PART_TYPE').AsInteger) = sptResult) then
    AQuery.MacroByName('SPEC_LINES_TABLE_NAME').AsString:= '--'
  else
    AQuery.MacroByName('SPEC_LINES_TABLE_NAME').AsString:= 'SPEC_LINES';


  if (IntToStructPartType(AQuery.CustomParams.ParamByName('TOOL_STRUCT_PART_TYPE').AsInteger) = sptResult) then
    AQuery.MacroByName('SPEC_LINES_KEY_NAME').AsString:= 'p.PRODUCT_CODE'
  else
    AQuery.MacroByName('SPEC_LINES_KEY_NAME').AsString:= 'sl9.SPEC_PRODUCT_CODE';


  case IntToStructPartType(AQuery.CustomParams.ParamByName('TOOL_STRUCT_PART_TYPE').AsInteger) of
    sptResult:
      AQuery.MacroByName('STRUCT_PART_FIELD_NAME').AsString:= 'p.PRODUCT_CODE';
    sptDetail:
      AQuery.MacroByName('STRUCT_PART_FIELD_NAME').AsString:= 'sl9.DETAIL_CODE';
    sptMaterial:
      AQuery.MacroByName('STRUCT_PART_FIELD_NAME').AsString:= 'sl9.PRODUCT_CODE';
  end;  { case }


  if (IntToStructPartType(AQuery.CustomParams.ParamByName('TOOL_STRUCT_PART_TYPE').AsInteger) = sptDetail) then
    AQuery.MacroByName('MATERIAL_CODE_FIELD_NAME_WHEN_BY_DETAIL').AsString:= 'sl9.PRODUCT_CODE'
  else
    AQuery.MacroByName('MATERIAL_CODE_FIELD_NAME_WHEN_BY_DETAIL').AsString:= '0';


  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    AQuery.CustomParams.ParamByName('CHOSEN_DETAIL_PRODUCTS'), [AQuery], 3);
end;

procedure TdmNeeds.prvDeptDetailFlowBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
var
  FlowQueries: array[0..1, 0..2] of TAbmesSQLQuery;  { FlowLevel, FlowType }
  TheQuery: TAbmesSQLQuery;
  TheParams: TParams;
  Flowlevel, FlowType: Integer;
begin
  inherited;
  if VarIsNullOrEmpty(OwnerData) then
    Exit;

  TheParams:= TParams.Create;
  try
    UnpackParams(OwnerData, TheParams);

    FlowLevel:= TheParams.ParamByName('FLOW_LEVEL').AsInteger;
    FlowType:= TheParams.ParamByName('FLOW_TYPE').AsInteger;

    Assert(FlowLevel in [0..1]);
    Assert(FlowType in [0..2]);

    FlowQueries[0, 0]:= qrySpecStageDeptDetailFlow;
    FlowQueries[0, 1]:= qryModelStageDeptDetailFlow;
    FlowQueries[0, 2]:= qryEstStageDeptDetailFlow;
    FlowQueries[1, 0]:= qrySpecOpDeptDetailFlow;
    FlowQueries[1, 1]:= qryModelOpDeptDetailFlow;
    FlowQueries[1, 2]:= qryEstOpDeptDetailFlow;
    TheQuery:= FlowQueries[FlowLevel, FlowType];

    (Sender as TDataSetProvider).DataSet:= TheQuery;
    IProviderSupportNG(TheQuery).PSSetParams(TheParams);
  finally
    FreeAndNil(TheParams);
  end;  { try }
end;

procedure TdmNeeds.qrySpecOpDeptDetailFlowBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 1);

  SvrParamProductTreeNodeFilter.PrepareFilteredDepts(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DETAIL_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 3);
end;

procedure TdmNeeds.qrySpecOpDeptDetailFlowToolNeedsAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  DeptDetailFlowToolNeedsAfterClose(DataSet as TAbmesSQLQuery);
end;

procedure TdmNeeds.qrySpecOpDeptDetailFlowToolNeedsBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  DeptDetailFlowToolNeedsBeforeOpen(DataSet as TAbmesSQLQuery);
end;

procedure TdmNeeds.qrySpecOpDeptDetailFlowAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DETAIL_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 3);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredDepts(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 1);
end;

procedure TdmNeeds.qryModelOpDeptDetailFlowBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 1);

  SvrParamProductTreeNodeFilter.PrepareFilteredDepts(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DETAIL_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 3);
end;

procedure TdmNeeds.qryModelOpDeptDetailFlowToolNeedsAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  DeptDetailFlowToolNeedsAfterClose(DataSet as TAbmesSQLQuery);
end;

procedure TdmNeeds.qryModelOpDeptDetailFlowToolNeedsBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  DeptDetailFlowToolNeedsBeforeOpen(DataSet as TAbmesSQLQuery);
end;

procedure TdmNeeds.qryModelOpDeptDetailFlowAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DETAIL_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 3);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredDepts(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPT_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 1);
end;

procedure TdmNeeds.qrySpecStageDeptDetailFlowBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 1);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DETAIL_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 3);
end;

procedure TdmNeeds.qrySpecStageDeptDetailFlowAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DETAIL_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 3);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 1);
end;

procedure TdmNeeds.qryModelStageDeptDetailFlowBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 1);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DETAIL_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 3);
end;

procedure TdmNeeds.qryModelStageDeptDetailFlowAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DETAIL_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 3);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 1);
end;

initialization
  TdmNeedsProxy.FSingleton:= TdmNeedsProxy.Create(TdmNeeds);

finalization
  FreeAndNil(TdmNeedsProxy.FSingleton);
end.
