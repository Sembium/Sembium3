unit dDoc;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, AbmesClientDataSet, JvStringHolder,
  WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection, uUtils, DBXDevartOracle, uSmartLock,
  uContentStorageLocatorsCache;

type
  TdmDoc = class(TDBPooledDataModule)
    qryDocs: TAbmesSQLQuery;
    prvDocs: TDataSetProvider;
    dsDocs: TDataSource;
    qryDocItems: TAbmesSQLQuery;
    qryDocsDOC_BRANCH_CODE: TAbmesFloatField;
    qryDocsDOC_CODE: TAbmesFloatField;
    qryGetNewDocCode: TAbmesSQLQuery;
    qryGetNewDocCodeNEW_DOC_CODE: TAbmesFloatField;
    qryDocItemTypes: TAbmesSQLQuery;
    qryDocItemsDOC_BRANCH_CODE: TAbmesFloatField;
    qryDocItemsDOC_CODE: TAbmesFloatField;
    qryDocItemsDOC_ITEM_CODE: TAbmesFloatField;
    qryDocItemsDOC_ITEM_NAME: TAbmesWideStringField;
    qryDocItemsDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    qryDocItemsFILE_NAME: TAbmesWideStringField;
    qryDocItemsNOTES: TAbmesWideStringField;
    qryDocItemTypesDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    qryDocItemTypesDOC_ITEM_TYPE_NAME: TAbmesWideStringField;
    prvDocItemTypes: TDataSetProvider;
    qryDocsRECORD_STATUS: TAbmesFloatField;
    qryDocItemsRECORD_STATUS: TAbmesFloatField;
    qryLoadDoc: TAbmesSQLQuery;
    prvLoadDoc: TDataSetProvider;
    dsLoadDoc: TDataSource;
    qryLoadDocItems: TAbmesSQLQuery;
    qryInsDoc: TAbmesSQLQuery;
    qryInsDocItem: TAbmesSQLQuery;
    qryUpdDocItem: TAbmesSQLQuery;
    qryDelDocItem: TAbmesSQLQuery;
    qryDocItemsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDocItemsCREATE_DATE: TAbmesSQLTimeStampField;
    qryDocItemsCREATE_TIME: TAbmesSQLTimeStampField;
    qryDocItemsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDocItemsCHANGE_DATE: TAbmesSQLTimeStampField;
    qryDocItemsCHANGE_TIME: TAbmesSQLTimeStampField;
    qryDocItemsRELATIVE_PATH: TAbmesWideStringField;
    qryLoadDocDOC_BRANCH_CODE: TAbmesFloatField;
    qryLoadDocDOC_CODE: TAbmesFloatField;
    qryLoadDocItemsDOC_BRANCH_CODE: TAbmesFloatField;
    qryLoadDocItemsDOC_CODE: TAbmesFloatField;
    qryLoadDocItemsDOC_ITEM_CODE: TAbmesFloatField;
    qryLoadDocItemsDOC_ITEM_NAME: TAbmesWideStringField;
    qryLoadDocItemsDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    qryLoadDocItemsFILE_NAME: TAbmesWideStringField;
    qryLoadDocItemsRELATIVE_PATH: TAbmesWideStringField;
    qryLoadDocItemsNOTES: TAbmesWideStringField;
    qryLoadDocItemsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryLoadDocItemsCREATE_DATE: TAbmesSQLTimeStampField;
    qryLoadDocItemsCREATE_TIME: TAbmesSQLTimeStampField;
    qryLoadDocItemsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryLoadDocItemsCHANGE_DATE: TAbmesSQLTimeStampField;
    qryLoadDocItemsCHANGE_TIME: TAbmesSQLTimeStampField;
    qryGetDocItem: TAbmesSQLQuery;
    qryGetDocItemDOC_BRANCH_CODE: TAbmesFloatField;
    qryGetDocItemDOC_CODE: TAbmesFloatField;
    qryGetDocItemDOC_ITEM_CODE: TAbmesFloatField;
    qryGetDocItemFILE_NAME: TAbmesWideStringField;
    qryGetDocItemRELATIVE_PATH: TAbmesWideStringField;
    qryDocItemsSTORED_FILE_DATA: TBlobField;
    qryGetStoredFileData: TAbmesSQLQuery;
    qryGetStoredFileDataSTORED_FILE_DATA: TBlobField;
    qryDocItemsSTORED_FILE_BRANCH_CODE: TAbmesFloatField;
    qryDocItemsSTORED_FILE_CODE: TAbmesFloatField;
    qryLoadDocItemsSTORED_FILE_BRANCH_CODE: TAbmesFloatField;
    qryLoadDocItemsSTORED_FILE_CODE: TAbmesFloatField;
    qryDocItemsDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField;
    qryLoadDocItemsDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField;
    qryInsStoredFileData: TAbmesSQLQuery;
    qryInsStoredFile: TAbmesSQLQuery;
    qryGetNewStoredFileCode: TAbmesSQLQuery;
    qryGetNewStoredFileCodeNEW_STORED_FILE_CODE: TAbmesFloatField;
    qryDocItemTemplatesNom: TAbmesSQLQuery;
    prvDocItemTemplatesNom: TDataSetProvider;
    qryDocItemTemplatesNomDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField;
    qryDocItemTemplatesNomDOC_ITEM_TEMPLATE_NAME: TAbmesWideStringField;
    qryDocItemTemplatesNomDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField;
    qryDocItemTemplatesNomDOC_BRANCH_CODE: TAbmesFloatField;
    qryDocItemTemplatesNomDOC_CODE: TAbmesFloatField;
    qryDocItemTemplatesNomDOC_ITEM_CODE: TAbmesFloatField;
    qryDocItemTemplatesNomIS_PATTERN: TAbmesFloatField;
    qryDocItemTemplatesNomDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    qryDocItemTemplatesNomDOC_ITEM_TYPE_NAME: TAbmesWideStringField;
    qryDocItemTemplate: TAbmesSQLQuery;
    prvDocItemTemplate: TDataSetProvider;
    qryDocItemTemplateDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField;
    qryDocItemTemplateDOC_ITEM_TEMPLATE_NAME: TAbmesWideStringField;
    qryDocItemTemplateDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField;
    qryDocItemTemplateDOC_BRANCH_CODE: TAbmesFloatField;
    qryDocItemTemplateDOC_CODE: TAbmesFloatField;
    qryDocItemTemplateDOC_ITEM_CODE: TAbmesFloatField;
    qryDocItemTemplateIS_PATTERN: TAbmesFloatField;
    qryDocItemTemplatesNomDOC_ITEM_TEMPLATE_TYPE_NAME: TAbmesWideStringField;
    qryDocItemTemplatesNomNOTES: TAbmesWideStringField;
    qryDocItemTemplateTypes: TAbmesSQLQuery;
    prvDocItemTemplateTypes: TDataSetProvider;
    qryDocItemTemplateTypesDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField;
    qryDocItemTemplateTypesDOC_ITEM_TEMPLATE_TYPE_NAME: TAbmesWideStringField;
    qryDocItemTemplateIS_CHANGED: TAbmesFloatField;
    qryInsPattern: TAbmesSQLQuery;
    qryDelPattern: TAbmesSQLQuery;
    qryDocItemsDOC_ITEM_PATTERN_CODE: TAbmesFloatField;
    qryLoadDocItemsDOC_ITEM_PATTERN_CODE: TAbmesFloatField;
    qryDocItemPatterns: TAbmesSQLQuery;
    prvDocItemPatterns: TDataSetProvider;
    qryDocItemPatternsDOC_ITEM_PATTERN_CODE: TAbmesFloatField;
    qryDocItemPatternsDOC_ITEM_PATTERN_NAME: TAbmesWideStringField;
    qryGetDocItemTemplate: TAbmesSQLQuery;
    qryGetDocItemTemplateSTORED_FILE_BRANCH_CODE: TAbmesFloatField;
    qryGetDocItemTemplateSTORED_FILE_CODE: TAbmesFloatField;
    qryGetStoredFileExtension: TAbmesSQLQuery;
    z: TAbmesFloatField;
    qryDocItemsDEVELOP_DATE: TAbmesSQLTimeStampField;
    qryDocItemsDEVELOP_TIME: TAbmesSQLTimeStampField;
    qryDocItemsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDocItemsAUTHORIZE_DATE: TAbmesSQLTimeStampField;
    qryDocItemsAUTHORIZE_TIME: TAbmesSQLTimeStampField;
    qryDocItemsAPPROVE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDocItemsAPPROVE_DATE: TAbmesSQLTimeStampField;
    qryDocItemsAPPROVE_TIME: TAbmesSQLTimeStampField;
    qryLoadDocItemsDEVELOP_EMPLOYEE_CODE: TAbmesFloatField;
    qryLoadDocItemsDEVELOP_DATE: TAbmesSQLTimeStampField;
    qryLoadDocItemsDEVELOP_TIME: TAbmesSQLTimeStampField;
    qryLoadDocItemsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    qryLoadDocItemsAUTHORIZE_DATE: TAbmesSQLTimeStampField;
    qryLoadDocItemsAUTHORIZE_TIME: TAbmesSQLTimeStampField;
    qryLoadDocItemsAPPROVE_EMPLOYEE_CODE: TAbmesFloatField;
    qryLoadDocItemsAPPROVE_DATE: TAbmesSQLTimeStampField;
    qryLoadDocItemsAPPROVE_TIME: TAbmesSQLTimeStampField;
    qryDocItemTemplates: TAbmesSQLQuery;
    prvDocItemTemplates: TDataSetProvider;
    qryDocItemTemplatesDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField;
    qryDocItemTemplatesDOC_ITEM_TEMPLATE_NAME: TAbmesWideStringField;
    qryFileExtensions: TAbmesSQLQuery;
    prvFileExtensions: TDataSetProvider;
    qryDocItemTypesNom: TAbmesSQLQuery;
    prvDocItemTypesNom: TDataSetProvider;
    qryDocItemTypesNomDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    qryDocItemTypesNomDOC_ITEM_TYPE_NAME: TAbmesWideStringField;
    qryDocItemTypesNomIS_DNC_DOC: TAbmesFloatField;
    qryDocItemTypesDOC_ITEM_BASE_TYPE_NAME: TAbmesWideStringField;
    qryDocItemTypesDOC_ITEM_BASE_TYPE_CODE: TAbmesFloatField;
    qryDocItemTypesNomDOC_ITEM_BASE_TYPE_CODE: TAbmesFloatField;
    qryDocItemBaseTypes: TAbmesSQLQuery;
    prvDocItemBaseTypes: TDataSetProvider;
    qryDocItemBaseTypesDOC_ITEM_BASE_TYPE_CODE: TAbmesFloatField;
    qryDocItemBaseTypesDOC_ITEM_BASE_TYPE_NAME: TAbmesWideStringField;
    qryDocItemTypeNom: TAbmesSQLQuery;
    prvDocItemTypeNom: TDataSetProvider;
    dsDocItemTypeNom: TDataSource;
    qryDocItemTypeNomDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    qryDocItemTypeNomDOC_ITEM_TYPE_NAME: TAbmesWideStringField;
    qryDocItemTypeNomIS_DNC_DOC: TAbmesFloatField;
    qryDocItemTypeNomDOC_ITEM_BASE_TYPE_CODE: TAbmesFloatField;
    qryDocItemTypeFileExtensions: TAbmesSQLQuery;
    qryDocItemTypeNotFileExtensions: TAbmesSQLQuery;
    prvDocItemTypeNotFileExtensions: TDataSetProvider;
    qryFileExtensionsFILE_EXTENSION_CODE: TAbmesFloatField;
    qryFileExtensionsFILE_EXTENSION_NAME: TAbmesWideStringField;
    qryFileExtensionsFILE_EXTENSION_ABBREV: TAbmesWideStringField;
    qryFileExtensionsDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField;
    qryDocItemTypeFileExtensionsDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    qryDocItemTypeFileExtensionsFILE_EXTENSION_CODE: TAbmesFloatField;
    qryDocItemTypeFileExtensionsFILE_EXTENSION_NAME: TAbmesWideStringField;
    qryDocItemTypeFileExtensionsFILE_EXTENSION_ABBREV: TAbmesWideStringField;
    qryDocItemTypeNotFileExtensionsDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    qryDocItemTypeNotFileExtensionsFILE_EXTENSION_CODE: TAbmesFloatField;
    qryDocItemTypeNotFileExtensionsFILE_EXTENSION_NAME: TAbmesWideStringField;
    qryDocItemTypeNotFileExtensionsFILE_EXTENSION_ABBREV: TAbmesWideStringField;
    qryGetStoredFileExtensionSTORED_FILE_EXTENSION: TAbmesWideStringField;
    qryDocItemsFILE_EXTENSION_CODE: TAbmesFloatField;
    qryLoadDocItemsFILE_EXTENSION_CODE: TAbmesFloatField;
    qryGetStoredFileExtensionSTORED_FILE_EXTENSION_CODE: TAbmesFloatField;
    qryFileExtension: TAbmesSQLQuery;
    qryFileExtensionFILE_EXTENSION_CODE: TAbmesFloatField;
    qryFileExtensionFILE_EXTENSION_NAME: TAbmesWideStringField;
    qryFileExtensionFILE_EXTENSION_ABBREV: TAbmesWideStringField;
    qryGetDocItemTypeName: TAbmesSQLQuery;
    qryGetDocItemTypeNameDOC_ITEM_TYPE_NAME: TAbmesWideStringField;
    qryDocItemTypesNomDOC_ITEM_TYPE_FILE_EXTENSIONS: TAbmesWideStringField;
    qryIsFileExtAllowedForDocItemType: TAbmesSQLQuery;
    qryIsFileExtAllowedForDocItemTypeIS_FILE_EXTENSION_ALLOWED: TAbmesFloatField;
    qryDocItemsDOC_ITEM_NO: TAbmesFloatField;
    qryDocItemsIS_INACTIVE: TAbmesFloatField;
    qryLoadDocItemsDOC_ITEM_NO: TAbmesFloatField;
    qryLoadDocItemsIS_INACTIVE: TAbmesFloatField;
    qryDocItemTemplatesNomIS_INACTIVE: TAbmesFloatField;
    qryUpdNegativeDocItemNos: TAbmesSQLQuery;
    qryDocsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryDocsIS_COMPLETE: TAbmesFloatField;
    qryLoadDocDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryLoadDocIS_COMPLETE: TAbmesFloatField;
    qryDocItemsIS_STORED_FILE_CHANGED: TAbmesFloatField;
    qryDocEmptinessRequirements: TAbmesSQLQuery;
    prvDocEmptinessRequirements: TDataSetProvider;
    qryDocEmptinessRequirementsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryDocEmptinessRequirementsDOC_EMPTINESS_REQUIREMENT_NAME: TAbmesWideStringField;
    qryUpdDoc: TAbmesSQLQuery;
    qryGetDocItemStoredFile: TAbmesSQLQuery;
    qryGetDocItemStoredFileSTORED_FILE_BRANCH_CODE: TAbmesFloatField;
    qryGetDocItemStoredFileSTORED_FILE_CODE: TAbmesFloatField;
    prvCustomMenuItems: TDataSetProvider;
    qryCustomMenuItems: TAbmesSQLQuery;
    qryCustomMenuItemsCUSTOM_MENU_ITEM_CODE: TAbmesFloatField;
    qryCustomMenuItemsCUSTOM_MENU_ITEM_NAME: TAbmesWideStringField;
    qryCustomMenuItemsDOC_BRANCH_CODE: TAbmesFloatField;
    qryCustomMenuItemsDOC_CODE: TAbmesFloatField;
    qryCustomMenuItemsRELATIVE_MENU_ITEM_NAME: TAbmesWideStringField;
    qryCustomMenuItemsIS_BEFORE_MENU_ITEM: TAbmesFloatField;
    qryCustomMenuItemsHAS_MENU_LINE_BEFORE: TAbmesFloatField;
    qryCustomMenuItemsHAS_MENU_LINE_AFTER: TAbmesFloatField;
    qryCustomMenuItemsIS_IN_CAPTION_MENU: TAbmesFloatField;
    qryCustomMenuItemsIS_SUBMENU: TAbmesFloatField;
    qryDocItemsIS_NOT_DELETED: TAbmesFloatField;
    qryDocItemTypesDOC_ITEM_TYPE_FILE_EXTENSIONS: TAbmesWideStringField;
    shLoadSingleDoc: TJvStrHolder;
    shLoadSpecDocs: TJvStrHolder;
    prvAllLoadDocItems: TDataSetProvider;
    qryAllLoadDocItems: TAbmesSQLQuery;
    qryAllLoadDocItemsDOC_BRANCH_CODE: TAbmesFloatField;
    qryAllLoadDocItemsDOC_CODE: TAbmesFloatField;
    qryAllLoadDocItemsDOC_ITEM_CODE: TAbmesFloatField;
    qryAllLoadDocItemsDOC_ITEM_NO: TAbmesFloatField;
    qryAllLoadDocItemsDOC_ITEM_NAME: TAbmesWideStringField;
    qryAllLoadDocItemsDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    qryAllLoadDocItemsIS_INACTIVE: TAbmesFloatField;
    qryAllLoadDocItemsNOTES: TAbmesWideStringField;
    qryAllLoadDocItemsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryAllLoadDocItemsCREATE_DATE: TAbmesSQLTimeStampField;
    qryAllLoadDocItemsCREATE_TIME: TAbmesSQLTimeStampField;
    qryAllLoadDocItemsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryAllLoadDocItemsCHANGE_DATE: TAbmesSQLTimeStampField;
    qryAllLoadDocItemsCHANGE_TIME: TAbmesSQLTimeStampField;
    qryAllLoadDocItemsDEVELOP_EMPLOYEE_CODE: TAbmesFloatField;
    qryAllLoadDocItemsDEVELOP_DATE: TAbmesSQLTimeStampField;
    qryAllLoadDocItemsDEVELOP_TIME: TAbmesSQLTimeStampField;
    qryAllLoadDocItemsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    qryAllLoadDocItemsAUTHORIZE_DATE: TAbmesSQLTimeStampField;
    qryAllLoadDocItemsAUTHORIZE_TIME: TAbmesSQLTimeStampField;
    qryAllLoadDocItemsAPPROVE_EMPLOYEE_CODE: TAbmesFloatField;
    qryAllLoadDocItemsAPPROVE_DATE: TAbmesSQLTimeStampField;
    qryAllLoadDocItemsAPPROVE_TIME: TAbmesSQLTimeStampField;
    qryAllLoadDocItemsDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField;
    qryAllLoadDocItemsFILE_NAME: TAbmesWideStringField;
    qryAllLoadDocItemsRELATIVE_PATH: TAbmesWideStringField;
    qryAllLoadDocItemsDOC_ITEM_PATTERN_CODE: TAbmesFloatField;
    qryAllLoadDocItemsSTORED_FILE_BRANCH_CODE: TAbmesFloatField;
    qryAllLoadDocItemsSTORED_FILE_CODE: TAbmesFloatField;
    qryAllLoadDocItemsFILE_EXTENSION_CODE: TAbmesFloatField;
    cdsAllLoadDocItems: TAbmesClientDataSet;
    cdsAllLoadDocItemsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsAllLoadDocItemsDOC_CODE: TAbmesFloatField;
    cdsAllLoadDocItemsDOC_ITEM_CODE: TAbmesFloatField;
    cdsAllLoadDocItemsDOC_ITEM_NO: TAbmesFloatField;
    cdsAllLoadDocItemsDOC_ITEM_NAME: TAbmesWideStringField;
    cdsAllLoadDocItemsDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsAllLoadDocItemsIS_INACTIVE: TAbmesFloatField;
    cdsAllLoadDocItemsNOTES: TAbmesWideStringField;
    cdsAllLoadDocItemsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsAllLoadDocItemsCREATE_DATE: TAbmesSQLTimeStampField;
    cdsAllLoadDocItemsCREATE_TIME: TAbmesSQLTimeStampField;
    cdsAllLoadDocItemsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsAllLoadDocItemsCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsAllLoadDocItemsCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsAllLoadDocItemsDEVELOP_EMPLOYEE_CODE: TAbmesFloatField;
    cdsAllLoadDocItemsDEVELOP_DATE: TAbmesSQLTimeStampField;
    cdsAllLoadDocItemsDEVELOP_TIME: TAbmesSQLTimeStampField;
    cdsAllLoadDocItemsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsAllLoadDocItemsAUTHORIZE_DATE: TAbmesSQLTimeStampField;
    cdsAllLoadDocItemsAUTHORIZE_TIME: TAbmesSQLTimeStampField;
    cdsAllLoadDocItemsAPPROVE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsAllLoadDocItemsAPPROVE_DATE: TAbmesSQLTimeStampField;
    cdsAllLoadDocItemsAPPROVE_TIME: TAbmesSQLTimeStampField;
    cdsAllLoadDocItemsDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField;
    cdsAllLoadDocItemsFILE_NAME: TAbmesWideStringField;
    cdsAllLoadDocItemsRELATIVE_PATH: TAbmesWideStringField;
    cdsAllLoadDocItemsDOC_ITEM_PATTERN_CODE: TAbmesFloatField;
    cdsAllLoadDocItemsSTORED_FILE_BRANCH_CODE: TAbmesFloatField;
    cdsAllLoadDocItemsSTORED_FILE_CODE: TAbmesFloatField;
    cdsAllLoadDocItemsFILE_EXTENSION_CODE: TAbmesFloatField;
    prvReserveDocCodes: TDataSetProvider;
    qryReserveDocCodes: TAbmesSQLQuery;
    qryReserveDocCodesDOC_CODE: TAbmesFloatField;
    qryStoredFilesSameHash: TAbmesSQLQuery;
    qryStoredFilesSameHashSTORED_FILE_BRANCH_CODE: TAbmesFloatField;
    qryStoredFilesSameHashSTORED_FILE_CODE: TAbmesFloatField;
    qryCustomMenuItemsIS_CHANGED: TAbmesFloatField;
    qryDocItemSysRoles: TAbmesSQLQuery;
    qryDocItemAccessLevels: TAbmesSQLQuery;
    qryDocItemAccessLevelsDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField;
    qryDocItemAccessLevelsDOC_ITEM_ACCESS_LEVEL_NAME: TAbmesWideStringField;
    prvDocItemAccessLevels: TDataSetProvider;
    qryInsDocItemSysRole: TAbmesSQLQuery;
    qryUpdDocItemSysRole: TAbmesSQLQuery;
    qryDelDocItemSysRole: TAbmesSQLQuery;
    dsDocItems: TDataSource;
    qryAllLoadDocItemSysRoles: TAbmesSQLQuery;
    prvAllLoadDocItemSysRoles: TDataSetProvider;
    cdsAllLoadDocItemSysRoles: TAbmesClientDataSet;
    qryLoadDocItemSysRoles: TAbmesSQLQuery;
    dsLoadDocItems: TDataSource;
    qryDocsMAX_DOC_ITEM_CODE: TAbmesFloatField;
    qryDocItemsDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField;
    qryDocItemsIS_MIRRORED: TAbmesFloatField;
    qryLoadDocItemsIS_MIRRORED: TAbmesFloatField;
    qryAllLoadDocItemsIS_MIRRORED: TAbmesFloatField;
    cdsAllLoadDocItemsIS_MIRRORED: TAbmesFloatField;
    qryDocItemsMIRRORED_FILE_NAME: TAbmesWideStringField;
    qryDocItemsMIRRORED_RELATIVE_PATH: TAbmesWideStringField;
    qryLoadDocItemsMIRRORED_FILE_NAME: TAbmesWideStringField;
    qryLoadDocItemsMIRRORED_RELATIVE_PATH: TAbmesWideStringField;
    qryAllLoadDocItemsMIRRORED_FILE_NAME: TAbmesWideStringField;
    qryAllLoadDocItemsMIRRORED_RELATIVE_PATH: TAbmesWideStringField;
    cdsAllLoadDocItemsMIRRORED_FILE_NAME: TAbmesWideStringField;
    cdsAllLoadDocItemsMIRRORED_RELATIVE_PATH: TAbmesWideStringField;
    qryDocItemsFILE_CHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDocItemsFILE_CHANGE_DATE: TAbmesSQLTimeStampField;
    qryDocItemsFILE_CHANGE_TIME: TAbmesSQLTimeStampField;
    qryLoadDocItemsFILE_CHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryLoadDocItemsFILE_CHANGE_DATE: TAbmesSQLTimeStampField;
    qryLoadDocItemsFILE_CHANGE_TIME: TAbmesSQLTimeStampField;
    qryAllLoadDocItemsFILE_CHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryAllLoadDocItemsFILE_CHANGE_DATE: TAbmesSQLTimeStampField;
    qryAllLoadDocItemsFILE_CHANGE_TIME: TAbmesSQLTimeStampField;
    cdsAllLoadDocItemsFILE_CHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsAllLoadDocItemsFILE_CHANGE_DATE: TAbmesSQLTimeStampField;
    cdsAllLoadDocItemsFILE_CHANGE_TIME: TAbmesSQLTimeStampField;
    qryDocItemTypesIS_DNC_DOC: TAbmesFloatField;
    qryDocItemSysRolesDOC_BRANCH_CODE: TAbmesFloatField;
    qryDocItemSysRolesDOC_CODE: TAbmesFloatField;
    qryDocItemSysRolesDOC_ITEM_CODE: TAbmesFloatField;
    qryDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField;
    qryDocItemSysRolesSYS_ROLE_CODE: TAbmesFloatField;
    qryDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField;
    qryDocItemSysRolesRECORD_STATUS: TAbmesFloatField;
    qryDocItemsMAX_DOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField;
    qryAllLoadDocItemSysRolesDOC_BRANCH_CODE: TAbmesFloatField;
    qryAllLoadDocItemSysRolesDOC_CODE: TAbmesFloatField;
    qryAllLoadDocItemSysRolesDOC_ITEM_CODE: TAbmesFloatField;
    qryAllLoadDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField;
    qryAllLoadDocItemSysRolesSYS_ROLE_CODE: TAbmesFloatField;
    qryAllLoadDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField;
    cdsAllLoadDocItemSysRolesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsAllLoadDocItemSysRolesDOC_CODE: TAbmesFloatField;
    cdsAllLoadDocItemSysRolesDOC_ITEM_CODE: TAbmesFloatField;
    cdsAllLoadDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField;
    cdsAllLoadDocItemSysRolesSYS_ROLE_CODE: TAbmesFloatField;
    cdsAllLoadDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField;
    qryLoadDocItemSysRolesDOC_BRANCH_CODE: TAbmesFloatField;
    qryLoadDocItemSysRolesDOC_CODE: TAbmesFloatField;
    qryLoadDocItemSysRolesDOC_ITEM_CODE: TAbmesFloatField;
    qryLoadDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField;
    qryLoadDocItemSysRolesSYS_ROLE_CODE: TAbmesFloatField;
    qryLoadDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField;
    qryGetStoredFileSize: TAbmesSQLQuery;
    qryGetStoredFileSizeSTORED_FILE_SIZE: TAbmesFloatField;
    qryGetNewDocItemTypeCode: TAbmesSQLQuery;
    qryGetNewDocItemTypeCodeNEW_DOC_ITEM_TYPE_CODE: TAbmesFloatField;
    qryDocItemViewGenerators: TAbmesSQLQuery;
    qryDocItemViewGeneratorsDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField;
    qryDocItemViewGeneratorsDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField;
    qryDocItemViewGeneratorsGENERATOR_PATH: TAbmesWideStringField;
    qryDocItemViewGeneratorsGENERATOR_PARAMS: TAbmesWideStringField;
    qryDocItemViewGeneratorsGENERATOR_TIMEOUT_SEC: TAbmesFloatField;
    qryDocItemViewGeneratorsRESULT_FILE_EXTENSION_CODE: TAbmesFloatField;
    prvDocItemViewGenerators: TDataSetProvider;
    qryExecuteServer: TAbmesSQLQuery;
    qryExecuteServerEXECUTE_SERVER_CODE: TAbmesFloatField;
    qryExecuteServerEXECUTE_SERVER_NAME: TAbmesWideStringField;
    prvExecuteServer: TDataSetProvider;
    dsExecuteServer: TDataSource;
    qryExecuteServerViewGenerators: TAbmesSQLQuery;
    qryExecuteServerViewGeneratorsEXECUTE_SERVER_CODE: TAbmesFloatField;
    qryExecuteServerViewGeneratorsDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField;
    qryExecuteServerViewGeneratorsDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField;
    qryExecuteServerNotViewGenerators: TAbmesSQLQuery;
    qryExecuteServerNotViewGeneratorsEXECUTE_SERVER_CODE: TAbmesFloatField;
    qryExecuteServerNotViewGeneratorsDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField;
    qryExecuteServerNotViewGeneratorsDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField;
    prvExecuteServerNotViewGenerators: TDataSetProvider;
    qryExecuteServers: TAbmesSQLQuery;
    qryExecuteServersEXECUTE_SERVER_CODE: TAbmesFloatField;
    qryExecuteServersEXECUTE_SERVER_NAME: TAbmesWideStringField;
    prvExecuteServers: TDataSetProvider;
    qryExecuteServerGeneratorList: TAbmesSQLQuery;
    qryExecuteServerGeneratorListDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField;
    qryExecuteServerGeneratorListDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField;
    prvDocItemStorageTypes: TDataSetProvider;
    qryDocItemStorageTypes: TAbmesSQLQuery;
    qryDocItemStorageTypesDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField;
    qryDocItemStorageTypesDOC_ITEM_STORAGE_TYPE_NAME: TAbmesWideStringField;
    qryDocItemTemplateTypesDOC_ITEM_TEMPLATE_TYPE_NO: TAbmesFloatField;
    dsDocItemTemplate: TDataSource;
    qryDefaultDocItems: TAbmesSQLQuery;
    qryDefaultDocItemsDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField;
    qryDefaultDocItemsDEFAULT_DOC_ITEM_CODE: TAbmesFloatField;
    qryDefaultDocItemsDOC_ITEM_NAME: TAbmesWideStringField;
    qryDefaultDocItemsDOC_ITEM_STATE_CODE: TAbmesFloatField;
    prvDocItemStates: TDataSetProvider;
    qryDocItemStates: TAbmesSQLQuery;
    qryDocItemStatesDOC_ITEM_STATE_CODE: TAbmesFloatField;
    qryDocItemStatesDOC_ITEM_STATE_NAME: TAbmesWideStringField;
    qryAllDefaultDocItems: TAbmesSQLQuery;
    qryAllDefaultDocItemsDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField;
    qryAllDefaultDocItemsDEFAULT_DOC_ITEM_CODE: TAbmesFloatField;
    qryAllDefaultDocItemsDOC_ITEM_NAME: TAbmesWideStringField;
    qryAllDefaultDocItemsDOC_ITEM_STATE_CODE: TAbmesFloatField;
    prvAllDefaultDocItems: TDataSetProvider;
    cdsAllDefaultDocItems: TAbmesClientDataSet;
    cdsAllDefaultDocItemsDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField;
    cdsAllDefaultDocItemsDEFAULT_DOC_ITEM_CODE: TAbmesFloatField;
    cdsAllDefaultDocItemsDOC_ITEM_NAME: TAbmesWideStringField;
    cdsAllDefaultDocItemsDOC_ITEM_STATE_CODE: TAbmesFloatField;
    dsDocItemTemplatesNom: TDataSource;
    qryDefaultDocItemsNom: TAbmesSQLQuery;
    qryDefaultDocItemsNomDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField;
    qryDefaultDocItemsNomDEFAULT_DOC_ITEM_CODE: TAbmesFloatField;
    qryDefaultDocItemsNomDOC_ITEM_NAME: TAbmesWideStringField;
    qryDefaultDocItemsNomDOC_ITEM_STATE_CODE: TAbmesFloatField;
    qryDocProfiles: TAbmesSQLQuery;
    qryDocProfilesDOC_PROFILE_CODE: TAbmesFloatField;
    qryDocProfilesDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField;
    qryDocProfilesDOC_PROFILE_NO: TAbmesFloatField;
    qryDocProfilesDOC_PROFILE_NAME: TAbmesWideStringField;
    qryDocProfilesDOC_BRANCH_CODE: TAbmesFloatField;
    qryDocProfilesDOC_CODE: TAbmesFloatField;
    qryNewDocProfileCode: TAbmesSQLQuery;
    qryNewDocProfileCodeNEW_DOC_PROFILE_CODE: TAbmesFloatField;
    dsDocItemTemplateTypes: TDataSource;
    prvDocProfilesMaster: TDataSetProvider;
    qryDocProfile: TAbmesSQLQuery;
    prvDocProfile: TDataSetProvider;
    qryDocProfileDOC_PROFILE_CODE: TAbmesFloatField;
    qryDocProfileDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField;
    qryDocProfileDOC_PROFILE_NO: TAbmesFloatField;
    qryDocProfileDOC_PROFILE_NAME: TAbmesWideStringField;
    qryDocProfileDOC_BRANCH_CODE: TAbmesFloatField;
    qryDocProfileDOC_CODE: TAbmesFloatField;
    qryDocProfilesHAS_DOC_ITEMS: TAbmesFloatField;
    qryDocProfilesDOC_EMPTINESS_REQ_CODE: TAbmesFloatField;
    qryDocProfilesDOC_IS_COMPLETE: TAbmesFloatField;
    qryDocProfilesACTIVE_DI_COUNT: TAbmesFloatField;
    qryDocProfilesUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryDocProfilesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    prvDocProfiles: TDataSetProvider;
    qryDocProfileAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDocProfileAUTHORIZE_DATE: TAbmesSQLTimeStampField;
    qryDocProfileAUTHORIZE_TIME: TAbmesSQLTimeStampField;
    qryDocProfilesAUTHORIZE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qryDocProfilesAUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField;
    shLoadDocs: TJvStrHolder;
    qryInsertTempDocs: TAbmesSQLQuery;
    qryExecuteServersIS_UNAVAILABLE: TAbmesFloatField;
    qryExecuteServersUNAVAILABLE_MESSAGE: TAbmesWideStringField;
    qryDocItemStorageTypesDOC_ITEM_STORAGE_TYPE_NO: TAbmesFloatField;
    qryDocItemStorageTypesIS_FIXED: TAbmesFloatField;
    qryDocItemStorageTypesSELECT_COMMAND: TAbmesWideStringField;
    qryDocItemStorageTypesVIEW_COMMAND: TAbmesWideStringField;
    qryDocItemStorageTypesEDIT_COMMAND: TAbmesWideStringField;
    qryNewDocItemStorageTypeCode: TAbmesSQLQuery;
    qryNewDocItemStorageTypeCodeNEW_DOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField;
    qryDocItemStorageTypesCONTENT_STORAGE_ADDRESS: TAbmesWideStringField;
    qryDocItemStorageTypesDI_STORAGE_BASE_TYPE_CODE: TAbmesFloatField;
    qryDocItemStorageTypesDI_STORAGE_BASE_TYPE_IS_ACTIVE: TAbmesFloatField;
    qryGetDocItemTemplateFILE_NAME: TAbmesWideStringField;
    qryGetDocItemTemplateCONTENT_STORAGE_ADDRESS: TAbmesWideStringField;
    procedure qryLoadDocItemsBeforeScroll(DataSet: TDataSet);
    procedure prvDocsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvDocsBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvDocsUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure prvDocItemTemplateBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvDocItemTemplateAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryDocItemTemplateAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure prvDocItemTemplateBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvDocItemTemplateAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure qryDocsBeforeProviderEndTransaction(DataSet: TDataSet;
      Commit: Boolean);
    procedure prvDocsAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvCustomMenuItemsBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvCustomMenuItemsAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvCustomMenuItemsUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure qryCustomMenuItemsAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure prvLoadDocBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryLoadDocBeforeScroll(DataSet: TDataSet);
    procedure prvLoadDocAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvLoadDocGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvCustomMenuItemsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvDocItemViewGeneratorsAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvExecuteServersAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvExecuteServerAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvDocItemTemplatesNomGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure qryDefaultDocItemsNomBeforeScroll(DataSet: TDataSet);
    procedure prvDocItemTemplatesNomAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvDocProfileBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure qryDocProfileAfterProviderStartTransaction(DataSet: TDataSet);
    procedure prvDocProfileAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure prvDocProfileBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure prvExecuteServersGetData(Sender: TObject; DataSet: TCustomClientDataSet);
    procedure prvDocItemStorageTypesBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FDocsDelta: Variant;
    FDocItemsInsertedOrUpdated: Boolean;
    FDocsErrorMessage: string;
    FContentStorageLocatorsCache: TContentStorageLocatorsCache;
    function GetNewStoredFileCode: Integer;
    function GetDocItemTypeName(ADocItemTypeCode: Integer): string;
    function MakeFileDialogFilter(const AFileExtensionName, AFileExtensionAbbrev: string): string;
    function GetStoredFileDataAsBytes(AStoredFileBranchCode, AStoredFileCode: Integer): TBytes;
    function GetExecuteServerGeneratorList(AExecuteServerCode: Integer): TStringArray;
    procedure InsertTempDocs(const ADocs: Variant);
  protected
    function GetNewDocCode: Integer;
    procedure GetDocItem(DocBranchCode: Integer; DocCode: Integer; DocItemCode: Integer;
                         out FileName: string; out RelativePath: string);
    // GetStoredFileData narochno vrushta Variant, zashtoto pri cast kum OleVariant se alokira pamet i taka shte izbegne ednovremenno alokirane na pamet
    function GetStoredFileData(AStoredFileBranchCode: Integer; AStoredFileCode: Integer): Variant;
    procedure GetDocItemTemplateStoredFile(ADocItemTemplateCode: Integer;
                                           out ResultStoredFileBranchCode: Integer;
                                           out ResultStoredFileCode: Integer);
    function GetStoredFileExtension(AStoredFileBranchCode, AStoredFileCode: Integer): string;
    function GetStoredFileExtensionCode(AStoredFileBranchCode, AStoredFileCode: Integer): Integer;
    function GetFileExtensionFileDialogFilter(AFileExtensionCode: Integer): string;
    function GetDocItemTypeFileDialogFilter(ADocItemTypeCode: Integer): string;
    function IsFileExtensionAllowed(AFileExtensionCode: Integer; ADocItemTypeCode: Integer): Boolean;
    procedure GetDocItemStoredFile(ADocBranchCode: Integer; ADocCode: Integer;
                                   ADocItemCode: Integer; out StoredFileBranchCode: Integer;
                                   out StoredFileCode: Integer);
    function GetStoredFileSize(AStoredFileBranchCode: Integer; AStoredFileCode: Integer): Integer;
    function GetNewDocItemTypeCode: Integer;
    procedure LoadExecuteServers;
    function GetDocumentDownloadURL(const AContentStorageLocatorURL: string; const ADocumentID: string): string;
    function GetDocumentUploadInfo(const AContentStorageLocatorURL: string;
                                   const AExtention: string; const AHash: string; const ASize: Int64): string;
    procedure GetDocItemTemplateContentStorage(ADocItemTemplateCode: Integer;
                                               out DocumentID: string;
                                               out ContentStorageAddress: string);
    function CommitUpload(const AContentStorageLocatorURL: string; const AUploadID: string;
                          const MultiPartUploadResultHeaderValues: string): string;
  public
    procedure ApplyDocs(const ADocsDelta: Variant);
  end;

type
  IdmDocProxy = interface(IDBPooledDataModuleProxy)
    procedure ApplyDocs(const ADocsDelta: Variant);
    function GetNewDocCode: Integer;
    function GetStoredFileData(AStoredFileBranchCode: Integer; AStoredFileCode: Integer): OleVariant;
    procedure GetDocItemTemplateStoredFile(ADocItemTemplateCode: Integer; out ResultStoredFileBranchCode: Integer;
      out ResultStoredFileCode: Integer);
    function GetStoredFileExtension(AStoredFileBranchCode, AStoredFileCode: Integer): string;
    procedure LoadExecuteServers;
    function GetDocumentDownloadURL(const AContentStorageLocatorURL: string; const ADocumentID: string): string;
    function GetDocumentUploadInfo(const AContentStorageLocatorURL: string;
                                   const AExtention: string; const AHash: string; const ASize: Int64): string;
    procedure GetDocItemTemplateContentStorage(ADocItemTemplateCode: Integer;
                                               out DocumentID: string;
                                               out ContentStorageAddress: string);
    function CommitUpload(const AContentStorageLocatorURL: string; const AUploadID: string;
                          const MultiPartUploadResultHeaderValues: string): string;
  end;

type
  TdmDocProxy = class(TDBPooledDataModuleProxy, IdmDocProxy)
  private
    class var FSingleton: TdmDocProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmDoc>;
  strict protected
    property LockedInstance: ISmartLock<TdmDoc> read GetLockedInstance;
  protected
    procedure ApplyDocs(const ADocsDelta: Variant);
    procedure LoadExecuteServers;
  public
    class property Singleton: TdmDocProxy read FSingleton;

    function GetNewDocCode: Integer;
    function GetStoredFileData(AStoredFileBranchCode: Integer; AStoredFileCode: Integer): OleVariant;
    procedure GetDocItemTemplateStoredFile(
      ADocItemTemplateCode: Integer; out ResultStoredFileBranchCode: Integer; out ResultStoredFileCode: Integer);
    function GetStoredFileExtension(AStoredFileBranchCode, AStoredFileCode: Integer): string;

    procedure GetDocItem(
      DocBranchCode: Integer; DocCode: Integer; DocItemCode: Integer;
      out FileName: string; out RelativePath: string);

    function GetStoredFileExtensionCode(AStoredFileBranchCode, AStoredFileCode: Integer): Integer;

    function GetFileExtensionFileDialogFilter(AFileExtensionCode: Integer): string;
    function GetDocItemTypeFileDialogFilter(ADocItemTypeCode: Integer): string;

    function IsFileExtensionAllowed(AFileExtensionCode: Integer; ADocItemTypeCode: Integer): Boolean;
    procedure GetDocItemStoredFile(
      ADocBranchCode: Integer; ADocCode: Integer; ADocItemCode: Integer;
      out StoredFileBranchCode: Integer; out StoredFileCode: Integer);

    function GetStoredFileSize(AStoredFileBranchCode: Integer; AStoredFileCode: Integer): Integer;
    function GetNewDocItemTypeCode: Integer;

    function GetDocumentDownloadURL(const AContentStorageLocatorURL: string; const ADocumentID: string): string;
    function GetDocumentUploadInfo(const AContentStorageLocatorURL: string;
                                   const AExtention: string; const AHash: string; const ASize: Int64): string;
    procedure GetDocItemTemplateContentStorage(ADocItemTemplateCode: Integer;
                                               out DocumentID: string;
                                               out ContentStorageAddress: string);
    function CommitUpload(const AContentStorageLocatorURL: string; const AUploadID: string;
                          const MultiPartUploadResultHeaderValues: string): string;
  end;

implementation

uses
  uSvrUtils, Variants, uServerMessageIds, uDocUtils,
  uDBPooledDataModuleHelper, AbmesCrypt, uExecuteServers, uDocItemStorageTypes,
  System.Math, uContentStorage.Contents, uSvrDocUtils, uSvrApp,
  uDocItemStorageBaseTypes, uDBLoginContext, uContentStorage.Results;

{$R *.dfm}

{ TdmDocProxy }

function TdmDocProxy.GetLockedInstance: ISmartLock<TdmDoc>;
begin
  Result:= ISmartLock<TdmDoc>(inherited LockedInstance);
end;

procedure TdmDocProxy.ApplyDocs(const ADocsDelta: Variant);
begin
  LockedInstance.Value.ApplyDocs(ADocsDelta);
end;

function TdmDocProxy.CommitUpload(const AContentStorageLocatorURL, AUploadID: string;
  const MultiPartUploadResultHeaderValues: string): string;
begin
  Result:= LockedInstance.Value.CommitUpload(AContentStorageLocatorURL, AUploadID, MultiPartUploadResultHeaderValues);
end;

function TdmDocProxy.GetDocumentDownloadURL(const AContentStorageLocatorURL, ADocumentID: string): string;
begin
  Result:= LockedInstance.Value.GetDocumentDownloadURL(AContentStorageLocatorURL, ADocumentID);
end;

function TdmDocProxy.GetDocumentUploadInfo(const AContentStorageLocatorURL: string;
  const AExtention: string; const AHash: string; const ASize: Int64): string;
begin
  Result:= LockedInstance.Value.GetDocumentUploadInfo(AContentStorageLocatorURL, AExtention, AHash, ASize);
end;

procedure TdmDocProxy.GetDocItem(DocBranchCode, DocCode,
  DocItemCode: Integer; out FileName, RelativePath: string);
begin
  LockedInstance.Value.GetDocItem(
    DocBranchCode, DocCode, DocItemCode, FileName, RelativePath);
end;

procedure TdmDocProxy.GetDocItemTemplateContentStorage(ADocItemTemplateCode: Integer;
  out DocumentID: string; out ContentStorageAddress: string);
begin
  LockedInstance.Value.GetDocItemTemplateContentStorage(ADocItemTemplateCode,
    DocumentID, ContentStorageAddress);
end;

procedure TdmDocProxy.GetDocItemTemplateStoredFile(
  ADocItemTemplateCode: Integer; out ResultStoredFileBranchCode,
  ResultStoredFileCode: Integer);
begin
  LockedInstance.Value.GetDocItemTemplateStoredFile(ADocItemTemplateCode, ResultStoredFileBranchCode, ResultStoredFileCode);
end;

function TdmDocProxy.GetNewDocCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewDocCode;
end;

function TdmDocProxy.GetNewDocItemTypeCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewDocItemTypeCode;
end;

function TdmDocProxy.GetStoredFileData(AStoredFileBranchCode, AStoredFileCode: Integer): OleVariant;
begin
  Result:= LockedInstance.Value.GetStoredFileData(AStoredFileBranchCode, AStoredFileCode);
end;

function TdmDocProxy.GetStoredFileExtension(AStoredFileBranchCode, AStoredFileCode: Integer): string;
begin
  Result:= LockedInstance.Value.GetStoredFileExtension(AStoredFileBranchCode, AStoredFileCode);
end;

function TdmDocProxy.GetStoredFileExtensionCode(AStoredFileBranchCode, AStoredFileCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetStoredFileExtensionCode(AStoredFileBranchCode, AStoredFileCode);
end;

function TdmDocProxy.GetStoredFileSize(AStoredFileBranchCode,
  AStoredFileCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetStoredFileSize(AStoredFileBranchCode, AStoredFileCode);
end;

function TdmDocProxy.GetDocItemTypeFileDialogFilter(
  ADocItemTypeCode: Integer): string;
begin
  Result:= LockedInstance.Value.GetDocItemTypeFileDialogFilter(ADocItemTypeCode);
end;

function TdmDocProxy.GetFileExtensionFileDialogFilter(
  AFileExtensionCode: Integer): string;
begin
  Result:= LockedInstance.Value.GetFileExtensionFileDialogFilter(AFileExtensionCode);
end;

function TdmDocProxy.IsFileExtensionAllowed(AFileExtensionCode,
  ADocItemTypeCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.IsFileExtensionAllowed(AFileExtensionCode, ADocItemTypeCode);
end;

procedure TdmDocProxy.LoadExecuteServers;
begin
  LockedInstance.Value.LoadExecuteServers;
end;

procedure TdmDocProxy.GetDocItemStoredFile(ADocBranchCode, ADocCode,
  ADocItemCode: Integer; out StoredFileBranchCode,
  StoredFileCode: Integer);
begin
  LockedInstance.Value.GetDocItemStoredFile(
    ADocBranchCode, ADocCode, ADocItemCode, StoredFileBranchCode, StoredFileCode);
end;

{ TdmDoc }

function TdmDoc.GetNewDocCode: Integer;
begin
  qryGetNewDocCode.Open;
  try
    Result:= qryGetNewDocCodeNEW_DOC_CODE.AsInteger;
  finally
    qryGetNewDocCode.Close;
  end;  { try }
end;

function TdmDoc.GetNewDocItemTypeCode: Integer;
begin
  qryGetNewDocItemTypeCode.Open;
  try
    Result:= qryGetNewDocItemTypeCodeNEW_DOC_ITEM_TYPE_CODE.AsInteger;
  finally
    qryGetNewDocItemTypeCode.Close;
  end;  { try }
end;

function TdmDoc.GetStoredFileDataAsBytes(AStoredFileBranchCode, AStoredFileCode: Integer): TBytes;
begin
  qryGetStoredFileData.ParamByName('STORED_FILE_BRANCH_CODE').AsInteger:= AStoredFileBranchCode;
  qryGetStoredFileData.ParamByName('STORED_FILE_CODE').AsInteger:= AStoredFileCode;
  qryGetStoredFileData.Open;
  try
    Result:= qryGetStoredFileDataSTORED_FILE_DATA.Value;
  finally
    qryGetStoredFileData.Close;
  end;  { try }
end;

procedure TdmDoc.prvDocsBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);

  procedure AssignStoredFile(DeltaDS: TCustomClientDataSet);
  var
    SameStoredFileExists: Boolean;
    StoredFileData: TBytes;
    StoredFileSha1HashValue: string;
  begin
    StoredFileData:= VarArrayToBytes(GetFieldValue(DeltaDS.FieldByName('STORED_FILE_DATA')));
    StoredFileSha1HashValue:= GetSha1HashValue(StoredFileData);

    qryStoredFilesSameHash.ParamByName('SHA1_HASH_VALUE').AsString:= StoredFileSha1HashValue;
    qryStoredFilesSameHash.ParamByName('FILE_EXTENSION_CODE').AsString:= GetFieldValue(DeltaDS.FieldByName('FILE_EXTENSION_CODE'));

    qryStoredFilesSameHash.Open;
    try
      while (not qryStoredFilesSameHash.Eof) and
            not SameBytes(
                  GetStoredFileDataAsBytes(
                    qryStoredFilesSameHashSTORED_FILE_BRANCH_CODE.AsInteger,
                    qryStoredFilesSameHashSTORED_FILE_CODE.AsInteger),
                  StoredFileData) do
        begin
          qryStoredFilesSameHash.Next;
        end;  { while }

      SameStoredFileExists:= not qryStoredFilesSameHash.Eof;

      if SameStoredFileExists then
        begin
          DeltaDS.FieldByName('STORED_FILE_BRANCH_CODE').NewValue:=
            qryStoredFilesSameHashSTORED_FILE_BRANCH_CODE.AsInteger;
          DeltaDS.FieldByName('STORED_FILE_CODE').NewValue:=
            qryStoredFilesSameHashSTORED_FILE_CODE.AsInteger;
        end
      else
        begin
          DeltaDS.FieldByName('STORED_FILE_BRANCH_CODE').NewValue:= LoginContext.LocalBranchCode;
          DeltaDS.FieldByName('STORED_FILE_CODE').NewValue:= GetNewStoredFileCode;

          // Insert the stored file
          SetParams(qryInsStoredFile.Params, DeltaDS);
          qryInsStoredFile.ParamByName('STORED_FILE_SIZE').AsInteger:= Length(StoredFileData);
          qryInsStoredFile.ParamByName('SHA1_HASH_VALUE').AsString:= StoredFileSha1HashValue;
          qryInsStoredFile.ExecSQL;

          SetParams(qryInsStoredFileData.Params, DeltaDS);
          qryInsStoredFileData.ExecSQL;
        end;
    finally
      qryStoredFilesSameHash.Close;
    end;  { try }
  end;

var
  RecordStatus: Integer;
begin
  inherited;

  Applied:= True;

  if (UpdateKind = ukDelete) then
    Exit;

  if (SourceDS = qryDocs) then
    begin
      RecordStatus:= GetFieldValue(DeltaDS.FieldByName('RECORD_STATUS'));

      case TUpdateStatus(RecordStatus) of
        usUnmodified:
          Exit;
        usInserted:
          UpdateKind:= ukInsert;
        usModified:
          UpdateKind:= ukModify;
        usDeleted:
          UpdateKind:= ukDelete;
      end;  { case }

      ExecUpdateQuery(UpdateKind, DeltaDS, qryInsDoc, qryUpdDoc, nil, False);
    end;  { if }

  if (SourceDS = qryDocItems) then
    begin
      RecordStatus:= GetFieldValue(DeltaDS.FieldByName('RECORD_STATUS'));

      case TUpdateStatus(RecordStatus) of
        usUnmodified:
          Exit;
        usInserted:
          UpdateKind:= ukInsert;
        usModified:
          UpdateKind:= ukModify;
        usDeleted:
          UpdateKind:= ukDelete;
      end;  { case }

      if (UpdateKind <> ukDelete) then
        FDocItemsInsertedOrUpdated:= True;

      if (UpdateKind <> ukDelete) and
         (GetFieldValue(DeltaDS.FieldByName('IS_STORED_FILE_CHANGED')) = 1) and
         not VarIsNullOrEmpty(GetFieldValue(DeltaDS.FieldByName('STORED_FILE_CODE'))) then
        begin
          AssignStoredFile(DeltaDS);
        end;  { if }

      ExecUpdateQuery(UpdateKind, DeltaDS, qryInsDocItem, qryUpdDocItem, qryDelDocItem, False);
    end;  { if }

  if (SourceDS = qryDocItemSysRoles) then
    begin
      RecordStatus:= GetFieldValue(DeltaDS.FieldByName('RECORD_STATUS'));

      case TUpdateStatus(RecordStatus) of
        usUnmodified:
          Exit;
        usInserted:
          UpdateKind:= ukInsert;
        usModified:
          UpdateKind:= ukModify;
        usDeleted:
          UpdateKind:= ukDelete
      end;  { case }

      ExecUpdateQuery(UpdateKind, DeltaDS, qryInsDocItemSysRole, qryUpdDocItemSysRole, qryDelDocItemSysRole, False);
    end;  { if }
end;

procedure TdmDoc.prvDocsBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocItemsInsertedOrUpdated:= False;
  FDocsErrorMessage:= '';
end;

procedure TdmDoc.prvDocsUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;

  if (FDocsErrorMessage = '') then
    FDocsErrorMessage:= E.Message;
end;

procedure TdmDoc.prvExecuteServerAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  LoadExecuteServers;
end;

procedure TdmDoc.prvExecuteServersAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  LoadExecuteServers;
end;

procedure TdmDoc.prvExecuteServersGetData(Sender: TObject; DataSet: TCustomClientDataSet);
var
  es: TExecuteServer;
begin
  inherited;

  if not ExecuteServers.Loaded then
    LoadExecuteServers;

  DataSet.ForEach/
    procedure begin
      es:= ExecuteServers.FindServer(DataSet.FieldByName('EXECUTE_SERVER_NAME').AsString);

      if Assigned(es) and es.IsUnavailable then
        DataSet.SafeEdit/
          procedure begin
            DataSet.FieldByName('IS_UNAVAILABLE').AsInteger:= 1;
            DataSet.FieldByName('UNAVAILABLE_MESSAGE').AsString:= es.UnavailableMessage;
          end;
    end;

  // workaround na posledvashto goliamo zamisliane v TBaseProvider.DoOnGetData na proverka za ChangeCount > 0
  DataSet.AppendRecord([]);
  DataSet.MergeChangeLog;
  DataSet.Delete;
end;

procedure TdmDoc.ApplyDocs(const ADocsDelta: Variant);
var
  ErrorCount: Integer;
begin
  if not VarIsEmpty(ADocsDelta) then
    begin
      prvDocs.ApplyUpdates(ADocsDelta, 0, ErrorCount);

      if (ErrorCount > 0) then
        raise Exception.Create(FDocsErrorMessage);
    end;   { if }
end;

function TdmDoc.CommitUpload(const AContentStorageLocatorURL, AUploadID: string;
  const MultiPartUploadResultHeaderValues: string): string;
var
  SL: TStringList;
  PartUploadResults: TKeyValuePairArray;
  i: Integer;
begin
  SL:= TStringList.Create;
  try
    SL.Delimiter:= ';';
    SL.DelimitedText:= MultiPartUploadResultHeaderValues;

    SetLength(PartUploadResults, SL.Count);
    for i:= 0 to SL.Count - 1 do
      PartUploadResults[i]:= TKeyValuePair.Create(SL.Names[i], SL.ValueFromIndex[i]);
  finally
    SL.Free;
  end;

  Result:=
    uContentStorage.Contents.CommitMultiPartUpload(
      GetContentStorageAddress(AContentStorageLocatorURL, (LoginContext as TDBLoginContext).ContentStorageContainerName, FContentStorageLocatorsCache),
      ContentStorageAuthenticationToken,
      (LoginContext as TDBLoginContext).ContentStorageContainerName.Split(['@'])[0],
      AUploadID, PartUploadResults);
end;

procedure TdmDoc.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FContentStorageLocatorsCache:= TContentStorageLocatorsCache.Create(ContentStorageLocatorsCacheExpirySeconds);
end;

procedure TdmDoc.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FContentStorageLocatorsCache);
end;

function TdmDoc.GetDocumentDownloadURL(const AContentStorageLocatorURL, ADocumentID: string): string;
begin
  Result:=
    uContentStorage.Contents.GetDocumentDownloadURL(
      GetContentStorageAddress(AContentStorageLocatorURL, (LoginContext as TDBLoginContext).ContentStorageContainerName, FContentStorageLocatorsCache),
      ContentStorageAuthenticationToken,
      (LoginContext as TDBLoginContext).ContentStorageContainerName.Split(['@'])[0],
      ADocumentID);
end;

function TdmDoc.GetDocumentUploadInfo(const AContentStorageLocatorURL: string;
  const AExtention: string; const AHash: string; const ASize: Int64): string;
var
  DocumentMultiPartUploadInfo: TDocumentMultiPartUploadInfo;
begin
  DocumentMultiPartUploadInfo:=
    uContentStorage.Contents.GetDocumentMultiPartUploadInfo(
      GetContentStorageAddress(AContentStorageLocatorURL, (LoginContext as TDBLoginContext).ContentStorageContainerName, FContentStorageLocatorsCache),
      ContentStorageAuthenticationToken,
      (LoginContext as TDBLoginContext).ContentStorageContainerName.Split(['@'])[0],
      AExtention,
      AHash,
      ASize);

  Result:= DocumentMultiPartUploadInfoToString(DocumentMultiPartUploadInfo);
end;

procedure TdmDoc.GetDocItem(DocBranchCode, DocCode, DocItemCode: Integer;
  out FileName, RelativePath: string);
begin
  qryGetDocItem.ParamByName('DOC_BRANCH_CODE').AsInteger:= DocBranchCode;
  qryGetDocItem.ParamByName('DOC_CODE').AsInteger:= DocCode;
  qryGetDocItem.ParamByName('DOC_ITEM_CODE').AsInteger:= DocItemCode;
  qryGetDocItem.Open;
  try
    FileName:= qryGetDocItemFILE_NAME.AsString;
    RelativePath:= qryGetDocItemRELATIVE_PATH.AsString;
  finally
    qryGetDocItem.Close;
  end;  { try }
end;

function TdmDoc.GetStoredFileData(AStoredFileBranchCode,
  AStoredFileCode: Integer): Variant;
begin
  Result:= BytesToVarArray(GetStoredFileDataAsBytes(AStoredFileBranchCode, AStoredFileCode));
end;

function TdmDoc.GetNewStoredFileCode: Integer;
begin
  qryGetNewStoredFileCode.Open;
  try
    Result:= qryGetNewStoredFileCodeNEW_STORED_FILE_CODE.AsInteger;
  finally
    qryGetNewStoredFileCode.Close;
  end;  { try }
end;

procedure TdmDoc.prvDocItemTemplateBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmDoc.prvDocItemStorageTypesBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
  DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  if (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('DOC_ITEM_STORAGE_TYPE_CODE').NewValue:=
      qryNewDocItemStorageTypeCode.TempOpen/
        qryNewDocItemStorageTypeCodeNEW_DOC_ITEM_STORAGE_TYPE_CODE.AsIntegerFunc;
end;

procedure TdmDoc.prvDocItemTemplateAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmDoc.qryDefaultDocItemsNomBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  dsDocItemTemplatesNom.DataSet:= nil;
end;

procedure TdmDoc.qryDocItemTemplateAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  ApplyDocs(FDocsDelta);
end;

procedure TdmDoc.qryDocProfileAfterProviderStartTransaction(DataSet: TDataSet);
begin
  inherited;
  ApplyDocs(FDocsDelta);
end;

procedure TdmDoc.prvDocItemTemplateBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  Applied:= not RecordChanged(DeltaDS);
end;

procedure TdmDoc.prvDocItemTemplatesNomAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  dsDocItemTemplatesNom.DataSet:= qryDocItemTemplatesNom;
end;

procedure TdmDoc.prvDocItemTemplatesNomGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  cdsDefaultDocItems: TDataSet;
  DataSetDOC_ITEM_TEMPLATE_CODE: TField;
begin
  inherited;

  dsDocItemTemplatesNom.DataSet:= qryDocItemTemplatesNom;

  cdsDefaultDocItems:= (DataSet.FieldByName(qryDefaultDocItemsNom.Name) as TDataSetField).NestedDataSet;
  DataSetDOC_ITEM_TEMPLATE_CODE:= DataSet.FieldByName('DOC_ITEM_TEMPLATE_CODE');

  cdsAllDefaultDocItems.TempOpen/
    procedure begin
      DataSet.ForEach/
        procedure begin
          cdsAllDefaultDocItems.Filter:=
            Format('%s = %d',
              [cdsAllDefaultDocItemsDOC_ITEM_TEMPLATE_CODE.FieldName, DataSetDOC_ITEM_TEMPLATE_CODE.AsInteger]);

          cdsAllDefaultDocItems.TempFilter/
            cdsAllDefaultDocItems.ForEach/
              cdsDefaultDocItems.SafeAppend/
                procedure begin
                  cdsDefaultDocItems.AssignFields(cdsAllDefaultDocItems);
                end;
        end;

      // workaround na posledvashto goliamo zamisliane v TBaseProvider.DoOnGetData na proverka za ChangeCount > 0
      DataSet.AppendRecord([]);
      DataSet.MergeChangeLog;
      DataSet.Delete;
    end;
end;

procedure TdmDoc.prvDocItemViewGeneratorsAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  LoadExecuteServers;
end;

procedure TdmDoc.prvDocProfileAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmDoc.prvDocProfileBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmDoc.prvDocProfileBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  if (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('DOC_PROFILE_CODE').NewValue:=
      qryNewDocProfileCode.TempOpen/
        qryNewDocProfileCodeNEW_DOC_PROFILE_CODE.AsIntegerFunc;
end;

procedure TdmDoc.prvDocItemTemplateAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);
begin
  inherited;

  if (SourceDS = qryDocItemTemplate) then
    begin
      if (UpdateKind in [ukInsert, ukModify]) and
         not VarIsNullOrEmpty(DeltaDS.FieldByName('IS_PATTERN').NewValue) and
         GetBoolValue(DeltaDS.FieldByName('IS_PATTERN')) then
        begin
          qryInsPattern.ParamByName('DOC_ITEM_PATTERN_CODE').Value:=
            GetFieldValue(DeltaDS.FieldByName('DOC_ITEM_TEMPLATE_CODE'));
          qryInsPattern.ExecSQL;
          Assert(qryInsPattern.RowsAffected = 1, 'qryInsPattern.RowsAffected should be 1');
        end;  { if }

      if (UpdateKind = ukModify) and
         not VarIsNullOrEmpty(DeltaDS.FieldByName('IS_PATTERN').NewValue) and
         not GetBoolValue(DeltaDS.FieldByName('IS_PATTERN')) then
        begin
          qryDelPattern.ParamByName('DOC_ITEM_PATTERN_CODE').Value:=
            GetFieldValue(DeltaDS.FieldByName('DOC_ITEM_TEMPLATE_CODE'));
          qryDelPattern.ExecSQL;
          Assert(qryDelPattern.RowsAffected = 1, 'qryDelPattern.RowsAffected should be 1');
        end;  { if }
    end;
end;

procedure TdmDoc.GetDocItemTemplateContentStorage(ADocItemTemplateCode: Integer;
  out DocumentID: string; out ContentStorageAddress: string);
begin
  qryGetDocItemTemplate.ParamByName('DOC_ITEM_TEMPLATE_CODE').AsInteger:=
    ADocItemTemplateCode;
  qryGetDocItemTemplate.Open;
  try
    DocumentID:= qryGetDocItemTemplateFILE_NAME.AsString;
    ContentStorageAddress:= qryGetDocItemTemplateCONTENT_STORAGE_ADDRESS.AsString;
  finally
    qryGetDocItemTemplate.Close;
  end;  { try }
end;

procedure TdmDoc.GetDocItemTemplateStoredFile(
  ADocItemTemplateCode: Integer; out ResultStoredFileBranchCode,
  ResultStoredFileCode: Integer);
begin
  qryGetDocItemTemplate.ParamByName('DOC_ITEM_TEMPLATE_CODE').AsInteger:=
    ADocItemTemplateCode;
  qryGetDocItemTemplate.Open;
  try
    ResultStoredFileBranchCode:= qryGetDocItemTemplateSTORED_FILE_BRANCH_CODE.AsInteger;
    ResultStoredFileCode:= qryGetDocItemTemplateSTORED_FILE_CODE.AsInteger;
  finally
    qryGetDocItemTemplate.Close;
  end;  { try }
end;

function TdmDoc.GetStoredFileExtension(AStoredFileBranchCode, AStoredFileCode: Integer): string;
begin
  qryGetStoredFileExtension.ParamByName('STORED_FILE_BRANCH_CODE').AsInteger:= AStoredFileBranchCode;
  qryGetStoredFileExtension.ParamByName('STORED_FILE_CODE').AsInteger:= AStoredFileCode;
  qryGetStoredFileExtension.Open;
  try
    Result:= qryGetStoredFileExtensionSTORED_FILE_EXTENSION.AsString;
  finally
    qryGetStoredFileExtension.Close;
  end;  { try }
end;

function TdmDoc.GetStoredFileExtensionCode(AStoredFileBranchCode, AStoredFileCode: Integer): Integer;
begin
  qryGetStoredFileExtension.ParamByName('STORED_FILE_BRANCH_CODE').AsInteger:= AStoredFileBranchCode;
  qryGetStoredFileExtension.ParamByName('STORED_FILE_CODE').AsInteger:= AStoredFileCode;
  qryGetStoredFileExtension.Open;
  try
    Result:= qryGetStoredFileExtensionSTORED_FILE_EXTENSION_CODE.AsInteger;
  finally
    qryGetStoredFileExtension.Close;
  end;  { try }
end;

function TdmDoc.GetStoredFileSize(AStoredFileBranchCode,
  AStoredFileCode: Integer): Integer;
begin
  qryGetStoredFileSize.ParamByName('STORED_FILE_BRANCH_CODE').AsInteger:= AStoredFileBranchCode;
  qryGetStoredFileSize.ParamByName('STORED_FILE_CODE').AsInteger:= AStoredFileCode;

  qryGetStoredFileSize.Open;
  try
    Result:= qryGetStoredFileSizeSTORED_FILE_SIZE.AsInteger;
  finally
    qryGetStoredFileSize.Close;
  end;
end;

function TdmDoc.GetDocItemTypeFileDialogFilter(
  ADocItemTypeCode: Integer): string;
var
  AllMasks: string;
  FilterString: string;
begin
  qryDocItemTypeFileExtensions.ParamByName('DOC_ITEM_TYPE_CODE').AsInteger:= ADocItemTypeCode;
  try
    qryDocItemTypeFileExtensions.Open;
    try
      if qryDocItemTypeFileExtensions.Eof then
        Result:= ''
      else
        begin
          FilterString:= '';
          AllMasks:= '';
          while not qryDocItemTypeFileExtensions.Eof do
            begin
              FilterString:=
                FilterString +
                MakeFileDialogFilter(
                  qryDocItemTypeFileExtensionsFILE_EXTENSION_NAME.AsString,
                  qryDocItemTypeFileExtensionsFILE_EXTENSION_ABBREV.AsString) +
                '|';

              AllMasks:=
                AllMasks +
                '*.' +
                qryDocItemTypeFileExtensionsFILE_EXTENSION_ABBREV.AsString +
                ';';

              qryDocItemTypeFileExtensions.Next;
            end;  { while }

          if (FilterString <> '') then
            SetLength(FilterString, Length(FilterString)-1);

          if (AllMasks <> '') then
            SetLength(AllMasks, Length(AllMasks)-1);

          Result:=
            Format(
              '%s (%s)|%s',
              [GetDocItemTypeName(ADocItemTypeCode), AllMasks, AllMasks]) +
            '|' +
            FilterString;
        end;
    finally
      qryDocItemTypeFileExtensions.Close;
    end;  { try }
  finally
    qryDocItemTypeFileExtensions.ParamByName('DOC_ITEM_TYPE_CODE').Value:= Null;
  end;  { try }
end;

function TdmDoc.GetFileExtensionFileDialogFilter(
  AFileExtensionCode: Integer): string;
begin
  qryFileExtension.ParamByName('FILE_EXTENSION_CODE').AsInteger:= AFileExtensionCode;
  qryFileExtension.Open;
  try
    if qryFileExtension.Eof then
      Result:= ''
    else
      Result:=
        MakeFileDialogFilter(
          qryFileExtensionFILE_EXTENSION_NAME.AsString,
          qryFileExtensionFILE_EXTENSION_ABBREV.AsString);
  finally
    qryFileExtension.Close;
  end;  { try }
end;

function TdmDoc.MakeFileDialogFilter(const AFileExtensionName,
  AFileExtensionAbbrev: string): string;
begin
  Result:=
    Format(
      '%s (*.%s)|*.%s',
      [AFileExtensionName, AFileExtensionAbbrev, AFileExtensionAbbrev]);
end;

function TdmDoc.GetDocItemTypeName(ADocItemTypeCode: Integer): string;
begin
  qryGetDocItemTypeName.ParamByName('DOC_ITEM_TYPE_CODE').AsInteger:= ADocItemTypeCode;
  qryGetDocItemTypeName.Open;
  try
    Result:= qryGetDocItemTypeNameDOC_ITEM_TYPE_NAME.AsString;
  finally
    qryGetDocItemTypeName.Close;
  end;  { try }
end;

function TdmDoc.GetExecuteServerGeneratorList(
  AExecuteServerCode: Integer): TStringArray;
begin
  qryExecuteServerGeneratorList.ParamByName('EXECUTE_SERVER_CODE').AsInteger:= AExecuteServerCode;
  qryExecuteServerGeneratorList.Open;
  try
    SetLength(Result, 0);
    while not qryExecuteServerGeneratorList.Eof do
      begin
        SetLength(Result, Length(Result)+1);
        Result[Length(Result)-1]:= qryExecuteServerGeneratorListDOC_ITEM_VIEW_GENERATOR_NAME.AsString;

        qryExecuteServerGeneratorList.Next;
      end;  { while }
  finally
    qryExecuteServerGeneratorList.Close;
  end;  { try }
end;

procedure TdmDoc.InsertTempDocs(const ADocs: Variant);

  procedure AppendBytes(var ABytes: TBytes; const AValue: Integer);
  var
    OldLength: Integer;
  begin
    OldLength:= Length(ABytes);
    SetLength(ABytes, OldLength + SizeOf(AValue));
    Move(AValue, ABytes[OldLength], SizeOf(AValue));
  end;

const
  MaxBlobSize = 32000;  // kratno na 8 da e
var
  blob: TBytes;
  i: Integer;
  DocBranchCode: Integer;
  DocCode: Integer;
  index: Integer;
  count: Integer;
  BlobPart: TBytes;
begin
  Assert(VarIsArray(ADocs));

  SetLength(blob, 0);
  for i:= VarArrayLowBound(ADocs, 1) to VarArrayHighBound(ADocs, 1) do
    begin
      DocBranchCode:= ADocs[i][0];
      DocCode:= ADocs[i][1];

      AppendBytes(blob, DocBranchCode);
      AppendBytes(blob, DocCode);
    end;

  SvrCommon.TruncateTable('TEMP_DOCS');

  index:= 0;
  while (index < Length(blob)) do
    begin
      count:= Min(Length(blob) - index, MaxBlobSize);

      BlobPart:= Copy(blob, index, count);

      qryInsertTempDocs.ParamByName('DOCS_BYTES').AsBlob:= BlobPart;
      qryInsertTempDocs.ExecSQL;

      Inc(index, count);
    end;
end;

function TdmDoc.IsFileExtensionAllowed(AFileExtensionCode,
  ADocItemTypeCode: Integer): Boolean;
begin
  qryIsFileExtAllowedForDocItemType.ParamByName('DOC_ITEM_TYPE_CODE').AsInteger:= ADocItemTypeCode;
  qryIsFileExtAllowedForDocItemType.ParamByName('FILE_EXTENSION_CODE').AsInteger:= AFileExtensionCode;
  qryIsFileExtAllowedForDocItemType.Open;
  try
    Result:= not qryIsFileExtAllowedForDocItemType.Eof;
  finally
    qryIsFileExtAllowedForDocItemType.Close;
  end;  { try }
end;

procedure TdmDoc.LoadExecuteServers;
var
  esia: TExecuteServerInfoArray;
begin
  qryExecuteServers.Open;
  try
    SetLength(esia, 0);
    while not qryExecuteServers.Eof do
      begin
        SetLength(esia, Length(esia)+1);
        esia[Length(esia)-1]:= TExecuteServerInfo.Create(qryExecuteServersEXECUTE_SERVER_NAME.AsString, GetExecuteServerGeneratorList(qryExecuteServersEXECUTE_SERVER_CODE.AsInteger));

        qryExecuteServers.Next;
      end;  { while }
  finally
    qryExecuteServers.Close;
  end;  { try }

  ExecuteServers.Load(esia);
end;

procedure TdmDoc.GetDocItemStoredFile(ADocBranchCode, ADocCode,
  ADocItemCode: Integer; out StoredFileBranchCode,
  StoredFileCode: Integer);
begin
  qryGetDocItemStoredFile.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryGetDocItemStoredFile.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryGetDocItemStoredFile.ParamByName('DOC_ITEM_CODE').AsInteger:= ADocItemCode;
  qryGetDocItemStoredFile.Open;
  try
    StoredFileBranchCode:= qryGetDocItemStoredFileSTORED_FILE_BRANCH_CODE.AsInteger;
    StoredFileCode:= qryGetDocItemStoredFileSTORED_FILE_CODE.AsInteger;
  finally
    qryGetDocItemStoredFile.Close;
  end;  { try }
end;

procedure TdmDoc.qryDocsBeforeProviderEndTransaction(DataSet: TDataSet;
  Commit: Boolean);
begin
  inherited;
  if Commit and FDocItemsInsertedOrUpdated then
    begin
      qryUpdNegativeDocItemNos.ExecSQL;
      FDocItemsInsertedOrUpdated:= False;
    end;  { if }
end;

procedure TdmDoc.prvDocsAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  if FDocItemsInsertedOrUpdated then
    begin
      qryUpdNegativeDocItemNos.ExecSQL;
      FDocItemsInsertedOrUpdated:= False;
    end;  { if }
end;

procedure TdmDoc.prvCustomMenuItemsBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmDoc.prvCustomMenuItemsAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmDoc.prvCustomMenuItemsUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;
  if (UpdateKind = ukDelete) then
    Response:= rrIgnore;
end;

procedure TdmDoc.qryCustomMenuItemsAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  ApplyDocs(FDocsDelta);
end;

procedure TdmDoc.prvLoadDocBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);

  procedure ConfigLoadSingleDocQuery(AQuery: TAbmesSQLQuery; const AParams: Variant);
  begin
    with AQuery do
      begin
        MacroByName('SELECT_SPECIFIC_DOCS').AsString:= shLoadSingleDoc.Strings.Text;

        RescanParams;

        ParamByName('DOC_BRANCH_CODE').AsInteger:= AParams[0];
        ParamByName('DOC_CODE').AsInteger:= AParams[1];
      end;  { with }
  end;

  procedure ConfigLoadSpecDocsQuery(AQuery: TAbmesSQLQuery; const AParams: Variant);
  var
    CutProductionProducts: Boolean;
    LoadOperationDocs: Boolean;
  begin
    with AQuery do
      begin
        MacroByName('SELECT_SPECIFIC_DOCS').AsString:= shLoadSpecDocs.Strings.Text;

        RescanParams;

        ParamByName('SPEC_PRODUCT_CODE').AsInteger:= AParams[0];

        ParamByName('SPEC_MODEL_VARIANT_NO').DataType:= ftFloat;
        ParamByName('SPEC_MODEL_VARIANT_NO').Value:= IntToVar(AParams[1]);

        CutProductionProducts:= AParams[2];
        ParamByName('CUT_PRODUCTION_PRODUCTS').AsInteger:= Ord(CutProductionProducts);

        LoadOperationDocs:= AParams[3];
        ParamByName('LOAD_OPERATION_DOCS').AsInteger:= Ord(LoadOperationDocs);
      end;  { with }
  end;

  procedure ConfigLoadDocsQuery(AQuery: TAbmesSQLQuery; const AParams: Variant);
  begin
    AQuery.MacroByName('SELECT_SPECIFIC_DOCS').AsString:= shLoadDocs.Strings.Text;
  end;

begin
  inherited;

  Assert(VarIsArray(OwnerData));
  Assert(VarArrayLowBound(OwnerData, 1) = 0);
  Assert(VarArrayHighBound(OwnerData, 1) = 1);
  Assert(VarIsType(OwnerData[0], varInteger));
  Assert(VarIsArray(OwnerData[1]));

  case IntToDocLoadMethod(OwnerData[0]) of
    dlmSingle:
      begin
        ConfigLoadSingleDocQuery(qryLoadDoc, OwnerData[1]);
        ConfigLoadSingleDocQuery(qryAllLoadDocItems, OwnerData[1]);
        ConfigLoadSingleDocQuery(qryAllLoadDocItemSysRoles, OwnerData[1]);
      end;

    dlmSpec:
      begin
        ConfigLoadSpecDocsQuery(qryLoadDoc, OwnerData[1]);
        ConfigLoadSpecDocsQuery(qryAllLoadDocItems, OwnerData[1]);
        ConfigLoadSpecDocsQuery(qryAllLoadDocItemSysRoles, OwnerData[1]);
      end;

    dlmDocs:
      begin
        ConfigLoadDocsQuery(qryLoadDoc, OwnerData[1]);
        ConfigLoadDocsQuery(qryAllLoadDocItems, OwnerData[1]);
        ConfigLoadDocsQuery(qryAllLoadDocItemSysRoles, OwnerData[1]);

        InsertTempDocs(OwnerData[1][0]);
      end;
  end;
end;

procedure TdmDoc.qryLoadDocBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  dsLoadDoc.DataSet:= nil;
end;

procedure TdmDoc.qryLoadDocItemsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  dsLoadDocItems.DataSet:= nil;
end;

procedure TdmDoc.prvLoadDocAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  dsLoadDoc.DataSet:= qryLoadDoc;
  dsLoadDocItems.DataSet:= qryLoadDocItems;
end;

procedure TdmDoc.prvLoadDocGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  cdsDocsDOC_BRANCH_CODE: TField;
  cdsDocsDOC_CODE: TField;
  cdsDocItemsDOC_ITEM_CODE: TField;
  cdsDocItems: TDataSet;
  cdsDocItemSysRoles: TDataSet;
begin
  inherited;

  cdsDocItems:= (DataSet.FieldByName(qryLoadDocItems.Name) as TDataSetField).NestedDataSet;
  cdsDocItemSysRoles:= (cdsDocItems.FieldByName(qryLoadDocItemSysRoles.Name) as TDataSetField).NestedDataSet;

  cdsDocsDOC_BRANCH_CODE:= DataSet.FieldByName('DOC_BRANCH_CODE');
  cdsDocsDOC_CODE:= DataSet.FieldByName('DOC_CODE');
  cdsDocItemsDOC_ITEM_CODE:= cdsDocItems.FieldByName('DOC_ITEM_CODE');

  cdsAllLoadDocItems.TempAutoCalcFields(False)/
    cdsAllLoadDocItemSysRoles.TempAutoCalcFields(False)/
      cdsAllLoadDocItems.TempOpen/
        cdsAllLoadDocItemSysRoles.TempOpen/
          procedure begin
            DataSet.ForEach/
              procedure begin
                while (not cdsAllLoadDocItems.Eof) and
                      (cdsAllLoadDocItemsDOC_BRANCH_CODE.AsInteger = cdsDocsDOC_BRANCH_CODE.AsInteger) and
                      (cdsAllLoadDocItemsDOC_CODE.AsInteger = cdsDocsDOC_CODE.AsInteger) do
                  begin
                    cdsDocItems.SafeAppend/
                      procedure begin
                        AssignFields(cdsAllLoadDocItems, cdsDocItems);

                        while (not cdsAllLoadDocItemSysRoles.Eof) and
                              (cdsAllLoadDocItemSysRolesDOC_BRANCH_CODE.AsInteger = cdsDocsDOC_BRANCH_CODE.AsInteger) and
                              (cdsAllLoadDocItemSysRolesDOC_CODE.AsInteger = cdsDocsDOC_CODE.AsInteger) and
                              (cdsAllLoadDocItemSysRolesDOC_ITEM_CODE.AsInteger = cdsDocItemsDOC_ITEM_CODE.AsInteger) do
                          begin
                            cdsDocItemSysRoles.SafeAppend/
                              procedure begin
                                AssignFields(cdsAllLoadDocItemSysRoles, cdsDocItemSysRoles);
                              end;  { try }

                            cdsAllLoadDocItemSysRoles.Next;
                          end;  { while }
                      end;

                    cdsAllLoadDocItems.Next;
                  end;  { while }
              end;
          end;

  // workaround na posledvashto goliamo zamisliane v TBaseProvider.DoOnGetData na proverka za ChangeCount > 0
  DataSet.AppendRecord([]);
  DataSet.MergeChangeLog;
  DataSet.Delete;
end;

procedure TdmDoc.prvCustomMenuItemsBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  Applied:= not RecordChanged(DeltaDS);
end;

initialization
  TdmDocProxy.FSingleton:= TdmDocProxy.Create(TdmDoc);

finalization
  FreeAndNil(TdmDocProxy.FSingleton);
end.
