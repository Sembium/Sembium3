unit dDocClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dBaseDataModule, DB, DBClient, AbmesClientDataSet, AbmesFields,
  Menus, uClientTypes, uClientLoginContext, uDocUtils, uDocClientUtils;

type
  TDocItemEditedEvent = procedure(DocItemUnapproved: Boolean) of object;
  TDocItemExecType = (dietOpenForEdit, dietOpenReadOnly, dietPersist);

type
  TDoc = record
  strict private
    FDocBranchCode: Integer;
    FDocCode: Integer;
  public
    constructor Create(const ADocBranchCode, ADocCode: Integer);
    property DocBranchCode: Integer read FDocBranchCode;
    property DocCode: Integer read FDocCode;
  end;

  TDocs = array of TDoc;

type
  TdmDocClient = class(TBaseDataModule)
    cdsDocs: TAbmesClientDataSet;
    cdsDocsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDocsDOC_CODE: TAbmesFloatField;
    cdsDocItems: TAbmesClientDataSet;
    cdsDocItemsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDocItemsDOC_CODE: TAbmesFloatField;
    cdsDocItemsDOC_ITEM_CODE: TAbmesFloatField;
    cdsDocItemsDOC_ITEM_NAME: TAbmesWideStringField;
    cdsDocItemsDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsDocItemsFILE_NAME: TAbmesWideStringField;
    cdsDocItemsNOTES: TAbmesWideStringField;
    cdsDocsRECORD_STATUS: TAbmesFloatField;
    cdsLoadDoc: TAbmesClientDataSet;
    cdsLoadDocDOC_BRANCH_CODE: TAbmesFloatField;
    cdsLoadDocDOC_CODE: TAbmesFloatField;
    cdsLoadDocqryLoadDocItems: TDataSetField;
    cdsLoadDocItems: TAbmesClientDataSet;
    cdsLoadDocItemsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsLoadDocItemsDOC_CODE: TAbmesFloatField;
    cdsLoadDocItemsDOC_ITEM_CODE: TAbmesFloatField;
    cdsLoadDocItemsDOC_ITEM_NAME: TAbmesWideStringField;
    cdsLoadDocItemsDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsLoadDocItemsFILE_NAME: TAbmesWideStringField;
    cdsLoadDocItemsNOTES: TAbmesWideStringField;
    pmDoc: TPopupMenu;
    cdsDocItemTypes: TAbmesClientDataSet;
    cdsDocItemTypesDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsDocItemTypesDOC_ITEM_TYPE_NAME: TAbmesWideStringField;
    cdsDocItems_DOC_ITEM_TYPE_NAME: TAbmesWideStringField;
    cdsDocsqryDocItems: TDataSetField;
    cdsDocItemsRECORD_STATUS: TAbmesFloatField;
    cdsDocItemsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDocItemsCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDocItemsCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDocItemsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDocItemsCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDocItemsCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsLoadDocItemsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsLoadDocItemsCREATE_DATE: TAbmesSQLTimeStampField;
    cdsLoadDocItemsCREATE_TIME: TAbmesSQLTimeStampField;
    cdsLoadDocItemsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsLoadDocItemsCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsLoadDocItemsCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsCopyDocItems: TAbmesClientDataSet;
    cdsCopyDocItemsDOC_ITEM_CODE: TAbmesFloatField;
    cdsCopyDocItemsDOC_ITEM_NAME: TAbmesWideStringField;
    cdsCopyDocItemsDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsCopyDocItemsFILE_NAME: TAbmesWideStringField;
    cdsCopyDocItemsNOTES: TAbmesWideStringField;
    cdsLoadDocItemsRELATIVE_PATH: TAbmesWideStringField;
    cdsDocItemsRELATIVE_PATH: TAbmesWideStringField;
    cdsCopyDocItemsRELATIVE_PATH: TAbmesWideStringField;
    cdsCopyDocItemsDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField;
    cdsLoadDocItemsSTORED_FILE_BRANCH_CODE: TAbmesFloatField;
    cdsLoadDocItemsSTORED_FILE_CODE: TAbmesFloatField;
    cdsDocItemsSTORED_FILE_BRANCH_CODE: TAbmesFloatField;
    cdsDocItemsSTORED_FILE_CODE: TAbmesFloatField;
    cdsDocItemsSTORED_FILE_DATA: TBlobField;
    cdsCopyDocItemsSTORED_FILE_BRANCH_CODE: TAbmesFloatField;
    cdsCopyDocItemsSTORED_FILE_CODE: TAbmesFloatField;
    cdsDocItemsDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField;
    cdsLoadDocItemsDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    cdsDocItemsDOC_ITEM_PATTERN_CODE: TAbmesFloatField;
    cdsLoadDocItemsDOC_ITEM_PATTERN_CODE: TAbmesFloatField;
    cdsCopyDocItemsDOC_ITEM_PATTERN_CODE: TAbmesFloatField;
    cdsCopyDocItemsSTORED_FILE_DATA: TBlobField;
    cdsCopyDocItemsIS_STORED_FILE_CHANGED: TAbmesFloatField;
    cdsDocItems_DOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField;
    cdsDocItemsDEVELOP_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDocItemsDEVELOP_DATE: TAbmesSQLTimeStampField;
    cdsDocItemsDEVELOP_TIME: TAbmesSQLTimeStampField;
    cdsDocItemsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDocItemsAUTHORIZE_DATE: TAbmesSQLTimeStampField;
    cdsDocItemsAUTHORIZE_TIME: TAbmesSQLTimeStampField;
    cdsDocItemsAPPROVE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDocItemsAPPROVE_DATE: TAbmesSQLTimeStampField;
    cdsDocItemsAPPROVE_TIME: TAbmesSQLTimeStampField;
    cdsLoadDocItemsDEVELOP_EMPLOYEE_CODE: TAbmesFloatField;
    cdsLoadDocItemsDEVELOP_DATE: TAbmesSQLTimeStampField;
    cdsLoadDocItemsDEVELOP_TIME: TAbmesSQLTimeStampField;
    cdsLoadDocItemsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsLoadDocItemsAUTHORIZE_DATE: TAbmesSQLTimeStampField;
    cdsLoadDocItemsAUTHORIZE_TIME: TAbmesSQLTimeStampField;
    cdsLoadDocItemsAPPROVE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsLoadDocItemsAPPROVE_DATE: TAbmesSQLTimeStampField;
    cdsLoadDocItemsAPPROVE_TIME: TAbmesSQLTimeStampField;
    cdsEmployees: TAbmesClientDataSet;
    cdsEmployeesEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeesEMPLOYEE_NAME: TAbmesWideStringField;
    cdsEmployeesEMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsDocItems_DEVELOP_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsDocItems_AUTHORIZE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsDocItems_APPROVE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsDocItemTypesDOC_ITEM_BASE_TYPE_NAME: TAbmesWideStringField;
    cdsDocItemTypesDOC_ITEM_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDocItems_DOC_ITEM_BASE_TYPE_NAME: TAbmesWideStringField;
    cdsDocItemsFILE_EXTENSION_CODE: TAbmesFloatField;
    cdsLoadDocItemsFILE_EXTENSION_CODE: TAbmesFloatField;
    cdsCopyDocItemsFILE_EXTENSION_CODE: TAbmesFloatField;
    cdsFileExtensions: TAbmesClientDataSet;
    cdsFileExtensionsFILE_EXTENSION_CODE: TAbmesFloatField;
    cdsFileExtensionsFILE_EXTENSION_NAME: TAbmesWideStringField;
    cdsFileExtensionsFILE_EXTENSION_ABBREV: TAbmesWideStringField;
    cdsFileExtensionsDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField;
    cdsDocItems_FILE_EXTENSION_ABBREV: TAbmesWideStringField;
    cdsDocItems_APPROVED_DOC_ITEM_COUNT: TAggregateField;
    cdsDocItemsDOC_ITEM_NO: TAbmesFloatField;
    cdsDocItemsIS_INACTIVE: TAbmesFloatField;
    cdsLoadDocItemsDOC_ITEM_NO: TAbmesFloatField;
    cdsLoadDocItemsIS_INACTIVE: TAbmesFloatField;
    cdsCopyDocItemsDOC_ITEM_NO: TAbmesFloatField;
    cdsCopyDocItemsIS_INACTIVE: TAbmesFloatField;
    cdsDocItems_MAX_DOC_ITEM_NO: TAggregateField;
    cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsDocsIS_COMPLETE: TAbmesFloatField;
    cdsLoadDocDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsLoadDocIS_COMPLETE: TAbmesFloatField;
    cdsDocItemsIS_STORED_FILE_CHANGED: TAbmesFloatField;
    cdsDocEmptinessRequirements: TAbmesClientDataSet;
    cdsDocEmptinessRequirementsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsDocEmptinessRequirementsDOC_EMPTINESS_REQUIREMENT_NAME: TAbmesWideStringField;
    cdsDocs_DOC_EMPTINESS_REQUIREMENT_NAME: TAbmesWideStringField;
    cdsDocItems_APPROVED_ACTIVE_DOC_ITEM_COUNT: TAggregateField;
    cdsDocItems_ACTIVE_DOC_ITEM_COUNT: TAggregateField;
    cdsDocItems_AUTHORIZED_DOC_ITEM_COUNT: TAggregateField;
    cdsDocItems_AUTHORIZED_ACTIVE_DI_COUNT: TAggregateField;
    cdsDocItemsIS_NOT_DELETED: TAbmesFloatField;
    cdsCopyDocItemsDEVELOP_EMPLOYEE_CODE: TAbmesFloatField;
    cdsCopyDocItemsDEVELOP_DATE: TAbmesSQLTimeStampField;
    cdsCopyDocItemsDEVELOP_TIME: TAbmesSQLTimeStampField;
    cdsCopyDocItemsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsCopyDocItemsAUTHORIZE_DATE: TAbmesSQLTimeStampField;
    cdsCopyDocItemsAUTHORIZE_TIME: TAbmesSQLTimeStampField;
    cdsCopyDocItemsAPPROVE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsCopyDocItemsAPPROVE_DATE: TAbmesSQLTimeStampField;
    cdsCopyDocItemsAPPROVE_TIME: TAbmesSQLTimeStampField;
    cdsDocItems_INACTIVE_DOC_ITEM_COUNT: TAggregateField;
    cdsDocItemTypesDOC_ITEM_TYPE_FILE_EXTENSIONS: TAbmesWideStringField;
    cdsDocItemTypes_DOC_ITEM_TYPE_EXTENDED_NAME: TAbmesWideStringField;
    cdsFileExtensions_FILE_EXTENSION_EXTENDED_NAME: TAbmesWideStringField;
    cdsDocItems_FILE_EXTENSION_EXTENDED_NAME: TAbmesWideStringField;
    cdsDocItems_DOC_ITEM_TYPE_EXTENDED_NAME: TAbmesWideStringField;
    cdsReservedDocCodes: TAbmesClientDataSet;
    cdsReservedDocCodesDOC_CODE: TAbmesFloatField;
    cdsReserveDocCodes: TAbmesClientDataSet;
    cdsReserveDocCodesDOC_CODE: TAbmesFloatField;
    cdsDocItemSysRoles: TAbmesClientDataSet;
    cdsLoadDocItemSysRoles: TAbmesClientDataSet;
    cdsCopyDocItemSysRoles: TAbmesClientDataSet;
    cdsCopyDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField;
    cdsDocItemAccessLevels: TAbmesClientDataSet;
    cdsDocItemAccessLevelsDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField;
    cdsDocItemAccessLevelsDOC_ITEM_ACCESS_LEVEL_NAME: TAbmesWideStringField;
    cdsDocItemSysRoles_DOC_ITEM_ACCESS_LEVEL_NAME: TAbmesWideStringField;
    cdsDocsMAX_DOC_ITEM_CODE: TAbmesFloatField;
    cdsCopyDocItemsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsCopyDocItemsDOC_CODE: TAbmesFloatField;
    cdsCopyDocItemSysRolesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsCopyDocItemSysRolesDOC_CODE: TAbmesFloatField;
    cdsCopyDocItemSysRolesDOC_ITEM_CODE: TAbmesFloatField;
    cdsDocItemsDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField;
    cdsCopyDocItemsDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField;
    cdsDocItemsIS_MIRRORED: TAbmesFloatField;
    cdsLoadDocItemsIS_MIRRORED: TAbmesFloatField;
    cdsCopyDocItemsIS_MIRRORED: TAbmesFloatField;
    cdsDocItemsMIRRORED_FILE_NAME: TAbmesWideStringField;
    cdsDocItemsMIRRORED_RELATIVE_PATH: TAbmesWideStringField;
    cdsLoadDocItemsMIRRORED_FILE_NAME: TAbmesWideStringField;
    cdsLoadDocItemsMIRRORED_RELATIVE_PATH: TAbmesWideStringField;
    cdsCopyDocItemsMIRRORED_FILE_NAME: TAbmesWideStringField;
    cdsCopyDocItemsMIRRORED_RELATIVE_PATH: TAbmesWideStringField;
    cdsDocItemsFILE_CHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDocItemsFILE_CHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDocItemsFILE_CHANGE_TIME: TAbmesSQLTimeStampField;
    cdsLoadDocItemsFILE_CHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsLoadDocItemsFILE_CHANGE_DATE: TAbmesSQLTimeStampField;
    cdsLoadDocItemsFILE_CHANGE_TIME: TAbmesSQLTimeStampField;
    cdsCopyDocItemsFILE_CHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsCopyDocItemsFILE_CHANGE_DATE: TAbmesSQLTimeStampField;
    cdsCopyDocItemsFILE_CHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDocItemTypesIS_DNC_DOC: TAbmesFloatField;
    cdsDocItems_IS_DNC_DOC_ITEM: TAbmesFloatField;
    cdsCopyDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField;
    cdsCopyDocItemSysRolesSYS_ROLE_CODE: TAbmesFloatField;
    cdsCopyDocItemsMAX_DOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField;
    cdsDocItemsMAX_DOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField;
    cdsDocItemsqryDocItemSysRoles: TDataSetField;
    cdsDocItemSysRolesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDocItemSysRolesDOC_CODE: TAbmesFloatField;
    cdsDocItemSysRolesDOC_ITEM_CODE: TAbmesFloatField;
    cdsDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField;
    cdsDocItemSysRolesSYS_ROLE_CODE: TAbmesFloatField;
    cdsDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField;
    cdsDocItemSysRolesRECORD_STATUS: TAbmesFloatField;
    cdsSysRoles: TAbmesClientDataSet;
    cdsDocItemSysRoles_SYS_ROLE_NO: TAbmesFloatField;
    cdsSysRolesSYS_ROLE_CODE: TAbmesFloatField;
    cdsSysRolesSYS_ROLE_NO: TAbmesFloatField;
    cdsSysRolesSYS_ROLE_NAME: TAbmesWideStringField;
    cdsDocItemSysRoles_SYS_ROLE_NAME: TAbmesWideStringField;
    cdsLoadDocItemsqryLoadDocItemSysRoles: TDataSetField;
    cdsLoadDocItemSysRolesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsLoadDocItemSysRolesDOC_CODE: TAbmesFloatField;
    cdsLoadDocItemSysRolesDOC_ITEM_CODE: TAbmesFloatField;
    cdsLoadDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField;
    cdsLoadDocItemSysRolesSYS_ROLE_CODE: TAbmesFloatField;
    cdsLoadDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField;
    pmVerbs: TPopupMenu;
    cdsDocItemStorageTypes: TAbmesClientDataSet;
    cdsDocItemStorageTypesDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField;
    cdsDocItemStorageTypesDOC_ITEM_STORAGE_TYPE_NAME: TAbmesWideStringField;
    cdsDocItems_DOC_ITEM_STORAGE_TYPE_NAME: TAbmesWideStringField;
    cdsDocItemTemplates: TAbmesClientDataSet;
    cdsDocItemTemplatesDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField;
    cdsDocItemTemplatesDOC_ITEM_TEMPLATE_NAME: TAbmesWideStringField;
    cdsDocItemTemplatesDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField;
    cdsDocItemTemplatesDOC_ITEM_TEMPLATE_TYPE_NAME: TAbmesWideStringField;
    cdsDocItemTemplatesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDocItemTemplatesDOC_CODE: TAbmesFloatField;
    cdsDocItemTemplatesDOC_ITEM_CODE: TAbmesFloatField;
    cdsDocItemTemplatesIS_PATTERN: TAbmesFloatField;
    cdsDocItemTemplatesIS_INACTIVE: TAbmesFloatField;
    cdsDocItemTemplatesDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsDocItemTemplatesDOC_ITEM_TYPE_NAME: TAbmesWideStringField;
    cdsDocItemTemplatesNOTES: TAbmesWideStringField;
    cdsDefaultDocItems: TAbmesClientDataSet;
    cdsDefaultDocItemsDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField;
    cdsDefaultDocItemsDEFAULT_DOC_ITEM_CODE: TAbmesFloatField;
    cdsDefaultDocItemsDOC_ITEM_NAME: TAbmesWideStringField;
    cdsDefaultDocItemsDOC_ITEM_STATE_CODE: TAbmesFloatField;
    cdsDocItemTemplatesqryDefaultDocItemsNom: TDataSetField;
    cdsDocItems_DOC_ITEM_TYPE_FILE_EXTENSIONS: TAbmesWideStringField;
    cdsDocItemStorageTypesDOC_ITEM_STORAGE_TYPE_NO: TAbmesFloatField;
    cdsDocItemStorageTypesIS_FIXED: TAbmesFloatField;
    cdsDocItemStorageTypesSELECT_COMMAND: TAbmesWideStringField;
    cdsDocItemStorageTypesVIEW_COMMAND: TAbmesWideStringField;
    cdsDocItemStorageTypesEDIT_COMMAND: TAbmesWideStringField;
    cdsDocItems_DI_STORAGE_TYPE_SELECT_COMMAND: TAbmesWideStringField;
    cdsDocItems_DI_STORAGE_TYPE_VIEW_COMMAND: TAbmesWideStringField;
    cdsDocItems_DI_STORAGE_TYPE_EDIT_COMMAND: TAbmesWideStringField;
    cdsDocItemStorageTypesCONTENT_STORAGE_ADDRESS: TAbmesWideStringField;
    cdsDocItemStorageTypesDI_STORAGE_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDocItemStorageTypesDI_STORAGE_BASE_TYPE_IS_ACTIVE: TAbmesFloatField;
    cdsDocItems_DI_STORAGE_BASE_TYPE_CODE: TAbmesFloatField;
    procedure cdsDocItemSysRolesBeforePost(DataSet: TDataSet);
    procedure cdsDocItemSysRolesNewRecord(DataSet: TDataSet);
    procedure cdsDocItemSysRolesBeforeDelete(DataSet: TDataSet);
    procedure cdsDocItemSysRolesAfterEdit(DataSet: TDataSet);
    procedure cdsDocItemSysRolesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsDocItemSysRolesAfterInsert(DataSet: TDataSet);
    procedure cdsDocsAfterInsert(DataSet: TDataSet);
    procedure cdsDocsFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsDocItemsAfterInsert(DataSet: TDataSet);
    procedure cdsDocItemsAfterEdit(DataSet: TDataSet);
    procedure cdsDocItemsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsDocItemsBeforePost(DataSet: TDataSet);
    procedure cdsDocItemsNewRecord(DataSet: TDataSet);
    procedure cdsDocsBeforeDelete(DataSet: TDataSet);
    procedure cdsDocItemsBeforeDelete(DataSet: TDataSet);
    procedure cdsDocsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsDocItemsDOC_ITEM_TYPE_CODEValidate(Sender: TField);
    procedure cdsDocsNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsDocsAfterEdit(DataSet: TDataSet);
    procedure cdsDocsAfterPost(DataSet: TDataSet);
    procedure cdsDocsIS_COMPLETEChange(Sender: TField);
    procedure cdsDocsDOC_EMPTINESS_REQUIREMENT_CODEChange(Sender: TField);
    procedure cdsDocsBeforePost(DataSet: TDataSet);
    procedure cdsDocItemsRECORD_STATUSChange(Sender: TField);
    procedure cdsDocsBeforeEdit(DataSet: TDataSet);
    procedure cdsDocsBeforeInsert(DataSet: TDataSet);
    procedure cdsDocsAfterCancel(DataSet: TDataSet);
    procedure cdsDocItemTypesCalcFields(DataSet: TDataSet);
    procedure cdsFileExtensionsCalcFields(DataSet: TDataSet);
    procedure cdsLoadDocBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsDocItemsDOC_ITEM_STORAGE_TYPE_CODEChange(Sender: TField);
    procedure cdsDocItemsFILE_NAMEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    FLoadingDoc: Boolean;
    FCreatingLike: Boolean;
    FModified: Boolean;
    FFirstModifiedSavePoint: Integer;
    FLastModifiedSavePoint: Integer;
    FOnDataChanged: TNotifyEvent;
    FCommittingUpdates: Boolean;
    FRemovingDoc: Boolean;
    FDeletingDoc: Boolean;
    FOpenDocOwnerType: TDocOwnerType;
    FOnDocItemEdited: TDocItemEditedEvent;
    FActiveDocItemCountBeforeEdit: Integer;
    FLoadDocParams: Variant;
    FCreatingDefaultDocItemSysRole: Boolean;
    FDncReceiverMachineName: string;
    FDocItemRecordData: Variant;
    FDefaultDocItemTemplateType: TDocItemTemplateType;
    FOpenDocAddidionalInfo: Integer;
    FPrevExecTickCount: Cardinal;
    procedure SetModified(const Value: Boolean);
    function GetSavePoint: Integer;
    procedure SetSavePoint(const Value: Integer);
    function NewDoc: Integer; overload;
    procedure PopupDocMenu(HasDoc: Boolean; AEditMode: TEditMode;
      AControl: TControl; AShowDncItemsOnly: Boolean);
    function GetDelta: OleVariant;
    function GetLoginContext: TClientLoginContext;
    function GetTempFileFullName(ADocBranchCode, ADocCode, ADocItemCode: Integer; const AFileExtension: string;
      const ATempDir: string = ''): string;
    function GetFileExtensionCode(AFileExtensionAbbrev: string): Integer;
    procedure CheckFileExtensionAllowed(AFileExtensionCode: Integer);
    function GetBookmark: Variant;
    procedure SetBookmark(const Value: Variant);
    procedure AssignLoadedDocFields;
    procedure AssignLoadedDocItemFields;
    procedure AssignLoadedDocItemSysRoleFields;
    function InternalLoadDoc(ADocLoadMethod: TDocLoadMethod; AParams: array of const): Integer;
    function LocateDoc(ADocBranchCode, ADocCode: Integer): Boolean;
    function GetNewDocCode: Integer;
    procedure CheckUserHasEditAccessToAllDocItems;
    procedure UpdateStoredFileChangeFields;
    function InternalOpenDoc(AEditMode: TEditMode; AControl: TControl;
      ADocOwnerType: TDocOwnerType; ADocBranchCode, ADocCode: Integer;
      AShowDncItemsOnly: Boolean; const AAdditionalInfo: Integer = -1): Integer;
    procedure ReadFileVerbs(const AFileName: string;
      AAttachedVerbs, AAttachedVerbsText: TStringList);
    procedure ExecDocFile(const AFileName: string; ASearchForVerbs: Boolean; const AVerbsMenuCaption: string);
    procedure PopupVerbsMenu(const AVerbsMenuCaption, AFileName: string;
      AAttachedVerbs, AAttachedVerbsText: TStringList);
    procedure miEditDocClick(Sender: TObject);
    procedure miDocItemClick(Sender: TObject);
    procedure miVerbMenuItemClick(Sender: TObject);
    procedure miVerbMenuCaptionDrawItem(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; Selected: Boolean);
    procedure AddTemplateDocItems(const ADocItemRecordData: Variant; ADateTime: TDateTime);
    procedure AssignEmployeeDateTimeFields(AEmployeeField, ADateField,
      ATimeField: TField; ADateTime: TDateTime);
    procedure WritePatternFile(const AFileName: string; ADocItemExecType: TDocItemExecType);
    procedure WriteXMLFile(const AFileName: string; ADocItemTemplateType: TDocItemTemplateType);
    procedure WriteXSAFFile(const AFileName: string; ADocItemTemplateType: TDocItemTemplateType);
    procedure KillFile(const AFileName: string);
    function GetPatternFileName(const ADataFileName: string): string;
    function GetXMLFileName(const ADataFileName: string): string;
    function GetXSAFFileName(const ADataFileName: string): string;
    function GetDataFileName(const AExt: string; const ATempDir: string = ''): string;
    function CheckDocItemUserAccess(ADocItemExecType: TDocItemExecType): Boolean;
    function GetImportFileName: string;
    function GetExportFileName(const AFileName: string): string;
    procedure DownloadContentStorageFile(const ADownloadURL: string; const ADestFileName: string; const AShowProgress: Boolean = True);
    function DownloadContentStorageStream(const ADownloadURL: string; const ADestStream: TStream; const AShowProgress: Boolean = True): string;
    function UploadContentStorageFile(const ASourceFileName: string): string;
    function UploadContentStorageStream(const AStream: TStream; const AExtension: string): string;
    function GetContentStorageLocatorURL: string;
    function GetDocumentDownloadURL(const AContentStorageLocatorURL, ADocumentID: string): string; overload;
    function GetDocumentDownloadURL: string; overload;
    procedure SetFileChangeInfo;
  protected
    property LoginContext: TClientLoginContext read GetLoginContext;
  public
    procedure CheckDocItemSysRolesUniqueIndexes;
    function GetDocItemAccessLevel: TDocItemAccessLevel;
    function UserHasAccessToDocItem(ADocItemAccessLevel: TDocItemAccessLevel): Boolean;
    procedure CheckUserHasAccessToDocItem(ADocItemAccessLevel: TDocItemAccessLevel);
    function LoadDoc(ADocBranchCode, ADocCode: Integer): Boolean;
    function LoadSpecDocs(ASpecProductBranchCode, ASpecModelVariantNo: Integer;
      CutProductionProducts, LoadOperationDocs: Boolean): Integer;
    function LoadDocs(const ADocs: TDocs): Integer;
    procedure ReserveDocCodes(ACount: Integer);

    function OpenDoc(AEditMode: TEditMode; AControl: TControl;
      ADocOwnerType: TDocOwnerType; ADocBranchCode, ADocCode: Integer;
      const AAdditionalInfo: Integer = -1): Integer;
    procedure DeleteDoc(ADocBranchCode, ADocCode: Integer);
    procedure RemoveDoc(ADocBranchCode, ADocCode: Integer);

    procedure DSOpenDoc(AEditMode: TEditMode; AControl: TControl;
      ADocOwnerType: TDocOwnerType;
      ADocBranchCodeField, ADocCodeField: TField;
      const AAdditionalInfo: Integer = -1); overload;
    procedure DSOpenDoc(AEditMode: TEditMode; AControl: TControl;
      ADocOwnerType: TDocOwnerType;
      ADataSet: TDataSet;
      const ADocBranchCodeFieldName: string = 'DOC_BRANCH_CODE';
      const ADocCodeFieldName: string = 'DOC_CODE';
      const AAdditionalInfo: Integer = -1); overload;

    procedure DSDeleteDoc(ADocBranchCodeField, ADocCodeField: TField); overload;
    procedure DSDeleteDoc(ADataSet: TDataSet;
      const ADocBranchCodeFieldName: string = 'DOC_BRANCH_CODE';
      const ADocCodeFieldName: string = 'DOC_CODE'); overload;

    procedure DSRemoveDoc(ADocBranchCodeField, ADocCodeField: TField); overload;
    procedure DSRemoveDoc(ADataSet: TDataSet;
      const ADocBranchCodeFieldName: string = 'DOC_BRANCH_CODE';
      const ADocCodeFieldName: string = 'DOC_CODE'); overload;

    procedure NewDoc(out ADocBranchCode, ADocCode: Integer); overload;
    procedure DSNewDoc(ADocBranchCodeField, ADocCodeField: TField); overload;
    procedure DSNewDoc(ADataSet: TDataSet;
      const ADocBranchCodeFieldName: string = 'DOC_BRANCH_CODE';
      const ADocCodeFieldName: string = 'DOC_CODE'); overload;

    procedure DSInitDoc(ADocOwnerType: TDocOwnerType;
      ADocBranchCodeField, ADocCodeField: TField); overload;
    procedure DSInitDoc(ADocOwnerType: TDocOwnerType;
      ADataSet: TDataSet;
      const ADocBranchCodeFieldName: string = 'DOC_BRANCH_CODE';
      const ADocCodeFieldName: string = 'DOC_CODE'); overload;

    procedure SetOpenDocOwnerType(ADocOwnerType: TDocOwnerType);
    procedure SetDefaultDocItemTemplateType(const ADefaultDocItemTemplateType: TDocItemTemplateType);

    procedure DSNewTemplateDoc(ADocBranchCodeField, ADocCodeField, ADocItemCode: TField);

    function OpenProductDoc(AEditMode: TEditMode; AControl: TControl;
      AProductCode: Integer): Integer;
    procedure DeleteProductDoc(AProductCode: Integer);
    procedure OpenDncDoc(AControl: TControl; ADocOwnerType: TDocOwnerType;
      const ADocBranchCode, ADocCode: Integer; AMachineName: string;
      const AAdditionalInfo: Integer = -1);

    function OpenDeptDoc(AEditMode: TEditMode; AControl: TControl;
      ADeptCode: Integer): Integer;

    function IsCurrent(ADocBranchCode, ADocCode: Integer): Boolean;
    function DSIsCurrent(ADocBranchCodeField, ADocCodeField: TField): Boolean; overload;
    function DSIsCurrent(ADataSet: TDataSet;
      const ADocBranchCodeFieldName: string = 'DOC_BRANCH_CODE';
      const ADocCodeFieldName: string = 'DOC_CODE'): Boolean; overload;

    function CreateDocLike(ADocBranchCode, ADocCode: Integer; AKeepState: Boolean;
      AOverrideCurrentDoc: Boolean = False; ASkipInactive: Boolean = False): Integer; overload;
    procedure CreateDocLike(ADocBranchCode, ADocCode: Integer; AKeepState: Boolean;
      ADestDocBranchField, ADestDocField: TField; AOverrideCurrentDoc: Boolean = False;
      ASkipInactive: Boolean = False); overload;

    function DocItemsCount(ADocBranchCode, ADocCode: Integer): Integer;
    function DSDocItemsCount(ADocBranchCodeField, ADocCodeField: TField): Integer; overload;
    function DSDocItemsCount(ADataSet: TDataSet;
      const ADocBranchCodeFieldName: string = 'DOC_BRANCH_CODE';
      const ADocCodeFieldName: string = 'DOC_CODE'): Integer; overload;

    procedure ExecExternalDocItemData(AEditing: Boolean = False; ASearchForVerbs: Boolean = False);
    function ExecInternalDocItemData(ADocItemExecType: TDocItemExecType;
      ADocItemTemplateType: TDocItemTemplateType = dittNone; ASearchForVerbs: Boolean = False;
      const ADumpDir: string = ''; const APersistReadOnly: Boolean = True): string;
    procedure ExecExternalDocStorage(AExternalDocStorageCommand: TExternalDocStorageCommand);
    function ExecContentStorage(const ADocItemExecType: TDocItemExecType;
      ADocItemTemplateType: TDocItemTemplateType = dittNone;
      ASearchForVerbs: Boolean = False; const ADumpDir: string = '';
      const APersistReadOnly: Boolean = True): string;
    procedure ImportInternalDocItemDataFromTemplate;
    procedure ImportContentStorageFromTemplate;
    procedure DoImportInternalDocItemDataFromFile(const AFileName: string);
    procedure ImportInternalDocItemDataFromFile;
    procedure ImportContentStorageFromFile;
    procedure ExportInternalDocItemDataToFile;
    procedure ExportContentStorageFile;
    procedure ConvertExternalDocItemToInternal;
    procedure ClearInternalDocItemData;
    procedure ClearContentStorage;

    procedure ApplyUpdates;
    procedure CancelUpdates;

    procedure CommitUpdates;

    procedure ClearDocs;

    function LocateLastDocItem(ADocBranchCode, ADocCode: Integer): Boolean;
    function LocateDocItem(ADocBranchCode, ADocCode, ADocItemCode: Integer): Boolean;
    function DSLocateDocItem(
      ADocBranchCodeField, ADocCodeField, ADocItemCodeField: TField): Boolean; overload;
    function DSLocateDocItem(
      ADataSet: TDataSet;
      const ADocBranchCodeFieldName: string = 'DOC_BRANCH_CODE';
      const ADocCodeFieldName: string = 'DOC_CODE';
      const ADocItemCodeFieldName: string = 'DOC_ITEM_CODE'): Boolean; overload;

    procedure ExecDocItemDataReadOnly(ASearchForVerbs: Boolean = False);

    procedure DeleteDocItem;
    procedure DeleteDocItemSysRole;
    procedure CheckDocItemsUniqueIndexes;

    procedure SetDocEmptinessRequirement(AValue: TDocEmptinessRequirement);
    procedure SetDocIsComplete(AValue: Boolean);

    procedure DataChanged;
    procedure DocItemEdited(DocItemUnapproved: Boolean);

    function DocItemIdentifier: string;

    procedure UnapproveDocItems(ADocBranchCode, ADocCode: Integer;
      AllDocItems: Boolean; DocItemCodes: array of Integer);

    function DocItemCount(ADocBranchCode, ADocCode: Integer; ActiveOnly: Boolean = False): Integer;
    function DSDocItemCount(ADocBranchCodeField, ADocCodeField: TField;
      ActiveOnly: Boolean = False): Integer; overload;
    function DSDocItemCount(ADataSet: TDataSet;
      ActiveOnly: Boolean = False;
      const ADocBranchCodeFieldName: string = 'DOC_BRANCH_CODE';
      const ADocCodeFieldName: string = 'DOC_CODE'): Integer; overload;

    function AuthorizedDocItemCount(ADocBranchCode, ADocCode: Integer; ActiveOnly: Boolean = False): Integer;
    function DSAuthorizedDocItemCount(ADocBranchCodeField, ADocCodeField: TField;
      ActiveOnly: Boolean = False): Integer; overload;
    function DSAuthorizedDocItemCount(ADataSet: TDataSet;
      ActiveOnly: Boolean = False;
      const ADocBranchCodeFieldName: string = 'DOC_BRANCH_CODE';
      const ADocCodeFieldName: string = 'DOC_CODE'): Integer; overload;

    function ApprovedDocItemCount(ADocBranchCode, ADocCode: Integer; ActiveOnly: Boolean = False): Integer;
    function DSApprovedDocItemCount(ADocBranchCodeField, ADocCodeField: TField;
      ActiveOnly: Boolean = False): Integer; overload;
    function DSApprovedDocItemCount(ADataSet: TDataSet;
      ActiveOnly: Boolean = False;
      const ADocBranchCodeFieldName: string = 'DOC_BRANCH_CODE';
      const ADocCodeFieldName: string = 'DOC_CODE'): Integer; overload;

    function FinalizedDoc(ADocBranchCode, ADocCode: Integer): Boolean;
    function DSFinalizedDoc(ADocBranchCodeField, ADocCodeField: TField): Boolean; overload;
    function DSFinalizedDoc(ADataSet: TDataSet;
      const ADocBranchCodeFieldName: string = 'DOC_BRANCH_CODE';
      const ADocCodeFieldName: string = 'DOC_CODE'): Boolean; overload;
    function ProductFinalizedDoc(AProductCode: Integer): Boolean;

    function ProductAuthorizedDoc(AProductCode: Integer): Boolean;

    procedure SetHasDocItemsField(AHasDocItemsField: TField);

    function GetStoredFileData(AStoredFileBranchCode: Integer; AStoredFileCode: Integer): Variant;

    function PersistDocItem(const AInternalDocDumpDir: string = ''; const AReadOnly: Boolean = True;
      const AAdditionalInfo: Integer = -1): string;

    procedure PrepareDocItemCreateLike;
    procedure UnprepareDocItemCreateLike;

    procedure SetContentStorageFile(const ASourceFileName: string);
    procedure SetContentStorageStream(const AStream: TStream; const AExtension: string);
    procedure SetContentStorageDocumentID(const ADocumentID: string);

    property SavePoint: Integer read GetSavePoint write SetSavePoint;
    property LastModifiedSavePoint: Integer read FLastModifiedSavePoint;
    property Modified: Boolean read FModified;
    property Delta: OleVariant read GetDelta;
    property Bookmark: Variant read GetBookmark write SetBookmark;

    property OpenDocOwnerType: TDocOwnerType read FOpenDocOwnerType;
    property DefaultDocItemTemplateType: TDocItemTemplateType read FDefaultDocItemTemplateType;

    property OnDataChanged: TNotifyEvent read FOnDataChanged write FOnDataChanged;
    property OnDocItemEdited: TDocItemEditedEvent read FOnDocItemEdited write FOnDocItemEdited;
  end;

implementation

uses
  dMain, uUtils, fEditForm, fDocItems, uClientUtils, ShellAPI,
  AbmesDialogs, fSelectDocItemTemplate, fExecFile, uUserActivityConsts, Math,
  DateUtils, uClientDateTime, uSysRoleClientUtils, Registry, StrUtils,
  uDocItemStorageTypes, uDataSetUtils, Types, uMessageDecodingUtils, fSelectExternalDocId, IOUtils,
  uDocItemStorageBaseTypes, AbmesCrypt, fHyperlink, uProgressHttp,
  uContentStorage.Results, System.Net.HttpClient, System.Net.URLClient,
  uContentStorage.Utils, uClientApp;

const
  TXTFileExt = 'txt';

{$R *.dfm}

resourcestring
  SCannotSaveEmptyDocItemInDevelopState = 'Не можете да записвате празно ИИО в състояние на разработване';
  SCompleteDocWithNonEmptyEmptynessRequirementMustNotBeEmpty = 'МИИО, определено като нужно и крайно определено, трябва да съдържа поне едно активно ИИО';
  SDocWithEmptyEmptynessRequirementMustBeEmpty = 'МИИО, определено като ненужно, не може да съдържа активни ИИО';
  SDocWithEmptyEmptynessRequirementMustBeEmptyDoYouWantToChangeTheRequirementToNonEmpty = 'МИИО, определено като ненужно, не може да съдържа активни ИИО. Желаете ли да определите МИИО като нужно?';
  SDocWithEmptyEmptynessRequirementMustBeComplete = 'МИИО, определено като ненужно, трябва да бъде крайно определено';
  SDocWithUnknownEmptinessRequirementMustBeEmpty = 'МИИО с неопределена необходимост не може да съдържа активни ИИО';
  SDocWithUnknownEmptinessRequirementCannotBeComplete = 'МИИО с неопределена МИИО-необходимост не може да бъде крайно определено';
  SDNCSystemNotFound = 'DNC системата не е намерена';
  SFileNotInDNCTree = 'Файлът %s не е в DNC дървото %s';
  SNoDocumentation = '< Няма ИИО >';
  SNoDncDocItems = '< Няма ИИО от DNC-тип >';
  SInvalidRelativePath = 'Релативният път трябва да започва с "\".';
  SCannotExecModifiedDocItem = 'Не можете да изпалнявате променено ИИО';
  SInvalidFileExtension = 'Невалидно файлово разширение';
  SFileMustHaveParamExtension = 'Избраният файл трябва да бъде с разширение "%s"';
  SFileExtensionNotAllowedForDocItemType = 'Файловото разширение не е валидно за избрания Тип ИИО';
  SFieldValueMustBePositive = 'Стойността на полето %s трябва да е положителна';
  SConfirmClearInternalDocItemData = 'Потвърдете изчистване на съдържанието';
  SDocItemIsEmpty = 'Избраният ИИО е празен';
  SDuplicateName = 'Повтарящо се Наименование на ИИО!';
  SDuplicateNo = 'Повтарящ се Номер на ИИО!';
  SDoc = 'МИИО';
  SContent = 'Съдържание';
  SDuplicateSysRole = 'Повтарящ се Набор Информационни Отговорности!';
  SUserMustHaveListAccess = 'Нямате Информационна Отговорност за преглед в списък на избраното ИИО';
  SUserMustHaveViewAccess = 'Нямате Информационна Отговорност за преглед на избраното ИИО';
  SUserMustHaveEditAccess = 'Нямате Информационна Отговорност за редактиране на избраното ИИО';
  SUserMustHaveEditAccessToAllDocItems = 'Нямате Информационни Отговорности за редактиране на всичките ИИО';
  SStoredAndMirroredFileExtensionsMustMatch = 'Разширенията на вътрешен и огледален файл трябва да са еднакви';
  SFileNameMustHaveAnExtension = 'Не може да бъде зададено име на файл без разширение';
  SCannotDncInternallyStoredDocItem = 'Вътрешно съхраняван файл не може да бъде изпращан към DNC системата';
  SOpen = 'Отваряне';
  SInternallyStoredDocsNotAllowed = 'Не са разрешени вътрешно съхранявани ИИО';
  SDocItemViewDenied = 'Нямате Информационна Отговорност за преглед на това ИИО';
  SCreateDocLikeKeyViolation = 'Съществува ИИО с повтарящ се номер или наименование!';
  SExternalDocStorageDocIdIsChosen = '< зададен >';
  SFileNameField = 'Име на файл';
  SExternalDocIdField = 'Външен Идентификатор';

const
  OpenDocItemsWaitSeconds = 10;

type
  TVerbMenuItem = class(TMenuItem)
  private
    FFileName: string;
    FVerb: string;
  end;

{ Routines }

function GetFileExtension(AFileName: string): string;
begin
  Result:= ExtractFileExt(AFileName);
  if (Result <> '') and (Result[1] = '.') then
    Delete(Result, 1, 1);
end;

{ TdmDocClient }

procedure TdmDocClient.cdsDocsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsDocsRECORD_STATUS.AsInteger:= Ord(usInserted);
end;

procedure TdmDocClient.cdsDocsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:= (cdsDocsRECORD_STATUS.AsInteger <> Ord(usDeleted));
end;

procedure TdmDocClient.cdsDocsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not FLoadingDoc and
     not FRemovingDoc and
     not FDeletingDoc and
     not FCommittingUpdates and
     (cdsDocsRECORD_STATUS.AsInteger = Ord(usUnmodified)) then
    cdsDocsRECORD_STATUS.AsInteger:= Ord(usModified);
end;

procedure TdmDocClient.cdsDocItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsDocItemsRECORD_STATUS.AsInteger:= Ord(usInserted);
end;

procedure TdmDocClient.cdsDocItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not FLoadingDoc and
     not FRemovingDoc and
     not FDeletingDoc and
     not FCommittingUpdates and
     (cdsDocItemsRECORD_STATUS.AsInteger = Ord(usUnmodified)) then
    cdsDocItemsRECORD_STATUS.AsInteger:= Ord(usModified);
end;

procedure TdmDocClient.cdsDocItemsFILE_NAMEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not cdsDocItems_DI_STORAGE_TYPE_SELECT_COMMAND.IsNull and not Sender.IsNull then
    Text:= SExternalDocStorageDocIdIsChosen
  else
    Text:= Sender.AsString;
end;

procedure TdmDocClient.cdsDocItemsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:= (cdsDocItemsRECORD_STATUS.AsInteger <> Ord(usDeleted));
end;

procedure TdmDocClient.cdsDocItemSysRolesAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not FLoadingDoc and
     not FRemovingDoc and
     not FDeletingDoc and
     not FCommittingUpdates and
     (cdsDocItemSysRolesRECORD_STATUS.AsInteger = Ord(usUnmodified)) then
    cdsDocItemSysRolesRECORD_STATUS.AsInteger:= Ord(usModified);
end;

procedure TdmDocClient.cdsDocItemSysRolesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsDocItemSysRolesRECORD_STATUS.AsInteger:= Ord(usInserted);
end;

procedure TdmDocClient.cdsDocItemSysRolesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  Assert(FCommittingUpdates or FRemovingDoc, 'cdsDocItemSysRoles.Delete should not be called');
end;

function TdmDocClient.GetDocItemAccessLevel: TDocItemAccessLevel;
var
  SaveBookmark: TBookmark;
  MaxDocItemAccessLevelCode: Integer;
begin
  cdsDocItemSysRoles.DisableControls;
  try
    SaveBookmark:= cdsDocItemSysRoles.Bookmark;
    try
      cdsDocItemSysRoles.First;
      MaxDocItemAccessLevelCode:= 0;
      while not cdsDocItemSysRoles.Eof do
        begin
          if LoginContext.IsUserInSysRole(cdsDocItemSysRolesSYS_ROLE_CODE.AsInteger) and
             (cdsDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE.AsInteger > MaxDocItemAccessLevelCode) then
            MaxDocItemAccessLevelCode:= cdsDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE.AsInteger;

          cdsDocItemSysRoles.Next;
        end;  { while }
    finally
      cdsDocItemSysRoles.Bookmark:= SaveBookmark;
    end;  { try }
  finally
    cdsDocItemSysRoles.EnableControls;
  end;  { try }

  Result:= IntToDocItemAccessLevel(MaxDocItemAccessLevelCode);
end;

function TdmDocClient.GetExportFileName(const AFileName: string): string;
var
  Ext: string;
  ExtensionCode: Integer;
begin
  Ext:= GetFileExtension(AFileName);
  ExtensionCode:= GetFileExtensionCode(Ext);

  SaveDialog.DefaultExt:= LowerCase(Ext);
  SaveDialog.Filter:= dmMain.SvrDoc.GetFileExtensionFileDialogFilter(ExtensionCode);
  SaveDialog.FileName:= AFileName;
  SaveDialog.InitialDir:= '';

  if SaveDialog.Execute then
    Result:= ChangeFileExt(SaveDialog.FileName, LowerCase(ExtractFileExt(SaveDialog.FileName)))
  else
    Result:= '';
end;

procedure TdmDocClient.cdsDocItemSysRolesBeforePost(DataSet: TDataSet);
begin
  inherited;

  if not FLoadingDoc and
     not FRemovingDoc and
     not FDeletingDoc and
     not FCommittingUpdates and
     not FCreatingLike then
    begin
      if not FCreatingDefaultDocItemSysRole then
        CheckRequiredFields(DataSet, '_SYS_ROLE_NAME;_DOC_ITEM_ACCESS_LEVEL_NAME');

      if (cdsDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE.AsInteger > cdsDocItemsMAX_DOC_ITEM_SYS_ROLE_CODE.AsInteger) then
        cdsDocItemsMAX_DOC_ITEM_SYS_ROLE_CODE.AsInteger:= cdsDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE.AsInteger;
    end;  { if }

  if (DataSet.State = dsInsert) and
     (FCreatingLike or not VarIsNullOrEmpty(FDocItemRecordData)) then
    cdsDocItemSysRolesRECORD_STATUS.AsInteger:= Ord(usInserted);
end;

procedure TdmDocClient.cdsDocItemSysRolesFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:= (cdsDocItemSysRolesRECORD_STATUS.AsInteger <> Ord(usDeleted));
end;

procedure TdmDocClient.cdsDocItemSysRolesNewRecord(DataSet: TDataSet);
begin
  inherited;
  if not FLoadingDoc and
     not FRemovingDoc and
     not FDeletingDoc and
     not FCommittingUpdates then
    cdsDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE.AsInteger:=
      cdsDocItemsMAX_DOC_ITEM_SYS_ROLE_CODE.AsInteger + 1;
end;

function TdmDocClient.LocateLastDocItem(ADocBranchCode,
  ADocCode: Integer): Boolean;
begin
  Result:= LoadDoc(ADocBranchCode, ADocCode);

  if Result then
    Result:=
      cdsDocItems.Locate(
        'DOC_BRANCH_CODE; DOC_CODE; DOC_ITEM_CODE',
        VarArrayOf([ADocBranchCode, ADocCode, cdsDocsMAX_DOC_ITEM_CODE.Value]),
        []);
end;

function TdmDocClient.LocateDocItem(ADocBranchCode, ADocCode, ADocItemCode: Integer): Boolean;
begin
  Result:=
    LoadDoc(ADocBranchCode, ADocCode)and
    cdsDocItems.Locate(
      'DOC_BRANCH_CODE; DOC_CODE; DOC_ITEM_CODE',
      VarArrayOf([ADocBranchCode, ADocCode, ADocItemCode]),
      []);
end;

function TdmDocClient.DSLocateDocItem(ADocBranchCodeField, ADocCodeField,
  ADocItemCodeField: TField): Boolean;
begin
  Assert(Assigned(ADocBranchCodeField));
  Assert(Assigned(ADocCodeField));
  Assert(Assigned(ADocItemCodeField));

  Result:=
    LocateDocItem(
      ADocBranchCodeField.AsInteger,
      ADocCodeField.AsInteger,
      ADocItemCodeField.AsInteger);
end;

function TdmDocClient.DSLocateDocItem(ADataSet: TDataSet;
  const ADocBranchCodeFieldName, ADocCodeFieldName,
  ADocItemCodeFieldName: string): Boolean;
begin
  Assert(Assigned(ADataSet));
  Assert(ADocBranchCodeFieldName <> '');
  Assert(ADocCodeFieldName <> '');
  Assert(ADocItemCodeFieldName <> '');

  Result:=
    DSLocateDocItem(
      ADataSet.FieldByName(ADocBranchCodeFieldName),
      ADataSet.FieldByName(ADocCodeFieldName),
      ADataSet.FieldByName(ADocItemCodeFieldName));
end;

function TdmDocClient.LoadDoc(ADocBranchCode, ADocCode: Integer): Boolean;
begin
  Result:=
    (ADocBranchCode > 0) and
    (ADocCode > 0) and
    ( IsCurrent(ADocBranchCode, ADocCode) or
      LocateDoc(ADocBranchCode, ADocCode) or
      (InternalLoadDoc(dlmSingle, [ADocBranchCode, ADocCode]) = 1) );
end;

function TdmDocClient.LoadDocs(const ADocs: TDocs): Integer;
var
  Docs: Variant;
  i: Integer;
begin
  if (Length(ADocs) = 0) then
    Exit(0);

  Docs:= VarArrayCreate([0, Length(ADocs)-1], varVariant);

  for i:= 0 to Length(ADocs)-1 do
    Docs[i]:= VarArrayOf([ADocs[i].DocBranchCode, ADocs[i].DocCode]);

  Result:= InternalLoadDoc(dlmDocs, [Docs]);
end;

function TdmDocClient.LoadSpecDocs(ASpecProductBranchCode,
  ASpecModelVariantNo: Integer; CutProductionProducts, LoadOperationDocs: Boolean): Integer;
begin
  Result:=
    InternalLoadDoc(dlmSpec, [ASpecProductBranchCode, ASpecModelVariantNo, CutProductionProducts, LoadOperationDocs]);
end;

function TdmDocClient.NewDoc: Integer;
begin
  with cdsDocs do
    begin
      DisableControls;
      try
        Append;
        try
          cdsDocsDOC_BRANCH_CODE.AsInteger:=
            LoginContext.LocalBranchCode;
          cdsDocsDOC_CODE.AsInteger:=
            GetNewDocCode;

          Post;
        except
          Cancel;
          raise;
        end;   { try }
      finally
        EnableControls;
      end;   { try }

      Result:= cdsDocsDOC_CODE.AsInteger;
    end;   { with }

  DataChanged;
end;

function TdmDocClient.OpenDoc(AEditMode: TEditMode; AControl: TControl;
  ADocOwnerType: TDocOwnerType; ADocBranchCode, ADocCode: Integer;
  const AAdditionalInfo: Integer): Integer;
begin
  Result:= InternalOpenDoc(AEditMode, AControl, ADocOwnerType, ADocBranchCode, ADocCode, False, AAdditionalInfo);
end;

function TdmDocClient.InternalOpenDoc(AEditMode: TEditMode;
  AControl: TControl;
  ADocOwnerType: TDocOwnerType;
  ADocBranchCode, ADocCode: Integer; AShowDncItemsOnly: Boolean;
  const AAdditionalInfo: Integer): Integer;
var
  HasDoc: Boolean;
begin
  FOpenDocOwnerType:= ADocOwnerType;

  HasDoc:= True;
  if LoadDoc(ADocBranchCode, ADocCode) then
    Result:= 0
  else
    begin
      if (AEditMode = emReadOnly) then
        begin
          Result:= 0;
          HasDoc:= False;
        end
      else
        Result:= NewDoc;
    end;

  if HasDoc and (AEditMode = emReadOnly) and (cdsDocItems.RecordCount = 0) then
    HasDoc:= False;

  FOpenDocAddidionalInfo:= AAdditionalInfo;
  PopupDocMenu(HasDoc, AEditMode, AControl, AShowDncItemsOnly);
end;

function TdmDocClient.PersistDocItem(const AInternalDocDumpDir: string;
  const AReadOnly: Boolean; const AAdditionalInfo: Integer): string;
begin
  Result:= '';
  case cdsDocItems_DI_STORAGE_BASE_TYPE_CODE.AsDocItemStorageBaseType of
    disbtInternal:
      Result:= ExecInternalDocItemData(dietPersist, dittNone, False, AInternalDocDumpDir, AReadOnly);

    disbtExternal:
      Result:= GetLocalFileName(cdsDocItemsFILE_NAME.AsString, cdsDocItemsRELATIVE_PATH.AsString);

    disbtCommandStorage:
      Result:= cdsDocItemsFILE_NAME.AsString;

    disbtContentStorage:
      Result:= ExecContentStorage(dietPersist, dittNone, False, AInternalDocDumpDir, AReadOnly)
  end;
end;

procedure TdmDocClient.PopupDocMenu(HasDoc: Boolean; AEditMode: TEditMode;
  AControl: TControl; AShowDncItemsOnly: Boolean);
const
  SecretImages: array[Boolean] of Integer = (-1, 115);
var
  mi: TMenuItem;
  b: TBookmark;
  p: TPoint;
  IsReadOnly: Boolean;
begin
  pmDoc.Items.Clear;

  if HasDoc and not AShowDncItemsOnly then
    begin
      IsReadOnly:=
        (AEditMode = emReadOnly) or
        not LoginContext.HasUserActivity(uaEditDoc);

      mi:= TMenuItem.Create(pmDoc.Owner);
      try
        if IsReadOnly then
          mi.Caption:= SDoc + ' - ' + SReadOnlyCaption + cDialogSuffix
        else
          mi.Caption:= SDoc + ' - ' + SEditCaption + cDialogSuffix;

        mi.ImageIndex:= 98;
        mi.Tag:= Ord(IsReadOnly);
        mi.OnClick:= miEditDocClick;

        pmDoc.Items.Add(mi);
      except
        FreeAndNil(mi);
        raise;
      end;  { try }

      mi:= TMenuItem.Create(pmDoc.Owner);
      try
        mi.Caption:= '-';
        pmDoc.Items.Add(mi);
      except
        FreeAndNil(mi);
        raise;
      end;  { try }
    end;

  if (not HasDoc) or (cdsDocItems.RecordCount = 0) then
    begin
      mi:= TMenuItem.Create(pmDoc.Owner);
      try
        mi.Caption:= SNoDocumentation;
        mi.Enabled:= False;
        pmDoc.Items.Add(mi);
      except
        FreeAndNil(mi);
        raise;
      end;  { try }
    end
  else
    with cdsDocItems do
      begin
        DisableControls;
        try
          b:= Bookmark;
          try
            First;
            while not Eof do
              begin
                if not cdsDocItemsIS_INACTIVE.AsBoolean and
                   UserHasAccessToDocItem(dialList) and
                   ( not AShowDncItemsOnly or
                     cdsDocItems_IS_DNC_DOC_ITEM.AsBoolean
                   ) then
                  begin
                    mi:= TMenuItem.Create(pmDoc.Owner);
                    try
                      mi.Caption:=
                        cdsDocItemsDOC_ITEM_NO.DisplayText +
                        '  |  ' +
                        cdsDocItems_DOC_ITEM_TYPE_NAME.AsString +
                        '  |  ' +
                        cdsDocItemsDOC_ITEM_NAME.AsString;

                      mi.Hint:= cdsDocItemsNOTES.AsString;
                      mi.ImageIndex:= SecretImages[not UserHasAccessToDocItem(dialView)];
                      mi.Enabled:= not cdsDocItemsAPPROVE_EMPLOYEE_CODE.IsNull;
                      mi.Tag:= RecNo;

                      mi.OnClick:= miDocItemClick;

                      pmDoc.Items.Add(mi);
                    except
                      FreeAndNil(mi);
                      raise;
                    end;  { try }
                  end;  { if }

                Next;
              end;  { while }

            if AShowDncItemsOnly and (pmDoc.Items.Count = 0) then
              begin
                mi:= TMenuItem.Create(pmDoc.Owner);
                try
                  mi.Caption:= SNoDncDocItems;
                  mi.Enabled:= False;
                  pmDoc.Items.Add(mi);
                except
                  FreeAndNil(mi);
                  raise;
                end;  { try }
              end;  { if }

          finally
            Bookmark:= b;
          end;  { try }
        finally
          EnableControls;
        end;  { try }
      end;  { with }

  with AControl do
    p:= Parent.ClientToScreen(Point(Left-1, Top + Height));

  pmDoc.Popup(p.X, p.Y);
end;

procedure TdmDocClient.PopupVerbsMenu(const AVerbsMenuCaption, AFileName: string; AAttachedVerbs,
  AAttachedVerbsText: TStringList);

  procedure AddMenuItem(AFileName, Verb, VerbText: string);
  var
    mi: TVerbMenuItem;
  begin
    mi:= TVerbMenuItem.Create(pmVerbs.Owner);
    try
      mi.FFileName:= AFileName;
      mi.FVerb:= Verb;
      mi.Caption:= VerbText;
      mi.OnClick:= miVerbMenuItemClick;
      pmVerbs.Items.Add(mi);
    except
      FreeAndNil(mi);
      raise;
    end;
  end;

var
  CursorPosition: TPoint;
  i: Integer;
begin
  pmVerbs.Items.Clear;

  AddMenuItem('', '', AVerbsMenuCaption);
  pmVerbs.Items[0].Default:= True;
  pmVerbs.Items[0].Enabled:= False;
  pmVerbs.Items[0].OnDrawItem:= miVerbMenuCaptionDrawItem;

  AddMenuItem('', '', '-');

  for i:= 0 to AAttachedVerbs.Count - 1 do
    AddMenuItem(AFileName, AAttachedVerbs[i], AAttachedVerbsText[i]);

  GetCursorPos(CursorPosition);
  pmVerbs.Popup(CursorPosition.X, CursorPosition.Y);
end;

function TdmDocClient.ExecContentStorage(const ADocItemExecType: TDocItemExecType;
  ADocItemTemplateType: TDocItemTemplateType; ASearchForVerbs: Boolean;
  const ADumpDir: string; const APersistReadOnly: Boolean): string;
var
  TempDir: string;
  DataFileName: string;
  XMLFileName: string;
  XSAFFileName: string;
  PatternFileName: string;
  ViewFileData: OleVariant;
  ViewFileExt: string;
  ViewFileName: string;
  DownloadURL: string;
  Ext: string;
  HasDocItemViewGenerator: Boolean;
  ShiftWasPressed: Boolean;
  WriteExtraFiles: Boolean;
  ViewFileDownloadURL: string;
begin
  Assert(cdsDocItems_DI_STORAGE_BASE_TYPE_CODE.AsDocItemStorageBaseType = disbtContentStorage);

  ShiftWasPressed:= ShiftIsPressed;

  if (ADumpDir <> '') then
    TempDir:= ADumpDir
  else
    TempDir:= GetAppTempPath();

  ForceDirectories(TempDir);

  try

    if not CheckDocItemUserAccess(ADocItemExecType) then
      Exit('');

    if cdsDocItemsFILE_NAME.IsNull then
      raise Exception.Create(SDocItemIsEmpty);

    DownloadURL:= GetDocumentDownloadURL();
    Ext:= ExtractURLDocumentExt(DownloadURL);

    DataFileName:= GetDataFileName(Ext, TempDir);
    XMLFileName:= GetXMLFileName(DataFileName);
    XSAFFileName:= GetXSAFFileName(DataFileName);
    PatternFileName:= GetPatternFileName(DataFileName);

    HasDocItemViewGenerator:=
      cdsFileExtensions.Locate(cdsFileExtensionsFILE_EXTENSION_ABBREV.FieldName, Ext, [loCaseInsensitive]) and
      not cdsFileExtensionsDOC_ITEM_VIEW_GENERATOR_CODE.IsNull;

    if (ADocItemExecType <> dietOpenReadOnly) or (not HasDocItemViewGenerator) or ShiftWasPressed then
      begin
        DownloadContentStorageFile(DownloadURL, DataFileName, ADocItemExecType <> dietPersist);

        if (ADocItemExecType = dietOpenReadOnly) or
           ((ADocItemExecType = dietPersist) and APersistReadOnly) then
          FileSetReadOnly(DataFileName, True);
      end;

    WriteExtraFiles:= (ADocItemExecType <> dietOpenReadOnly) or (not HasDocItemViewGenerator) or ShiftWasPressed;

    if WriteExtraFiles then
      begin
        WriteXMLFile(XMLFileName, ADocItemTemplateType);
        WriteXSAFFile(XSAFFileName, ADocItemTemplateType);
        WritePatternFile(PatternFileName, ADocItemExecType);
      end;

    if (ADocItemExecType = dietOpenReadOnly) then
      begin
        if (not HasDocItemViewGenerator) or ShiftWasPressed then
          ExecDocFile(DataFileName, ASearchForVerbs, cdsDocItemsDOC_ITEM_NAME.AsString)
        else
          begin
            Screen.TempCursor(crHourGlass)/
              procedure begin
                ViewFileData:=
                  dmMain.SvrDocItemViewGenerators.GetContentStorageDocItemViewableFile(
                    DocOwnerTypeToInt(FOpenDocOwnerType),
                    cdsDocItemsDOC_BRANCH_CODE.AsInteger,
                    cdsDocItemsDOC_CODE.AsInteger,
                    cdsDocItemsDOC_ITEM_CODE.AsInteger,
                    FOpenDocAddidionalInfo,
                    ViewFileExt
                  );
              end;  { cursor try }

            if not VarIsNullOrEmpty(ViewFileData) and VarIsStr(ViewFileData) and IsURL(ViewFileData) then
              ViewFileDownloadURL:= ViewFileData
            else
              ViewFileDownloadURL:= '';

            if (ViewFileDownloadURL <> '') then
              ViewFileExt:= ExtractURLDocumentExt(ViewFileDownloadURL);

            ViewFileName:=
              GetTempFileFullName(
                cdsDocItemsDOC_BRANCH_CODE.AsInteger,
                cdsDocItemsDOC_CODE.AsInteger,
                cdsDocItemsDOC_ITEM_CODE.AsInteger,
                ViewFileExt,
                TempDir);

            if (ViewFileDownloadURL <> '') then
              begin
                DownloadContentStorageFile(ViewFileDownloadURL, ViewFileName);
                FileSetReadOnly(ViewFileName, True);
                ExecFile(ViewFileName);
              end
            else
              begin
                WriteVarArrayToFile(ViewFileData, ViewFileName);
                ExecDocFile(ViewFileName, ASearchForVerbs, cdsDocItemsDOC_ITEM_NAME.AsString);
              end;
          end;
      end;

    if (ADocItemExecType = dietOpenForEdit) then
      begin
        Application.ProcessMessages;  // Явно остава ReleaseForm message-a от статус формата за download-ване на иио-то и затова TfmExecFile веднага се затваря и апликейшана става непипваема

        if TfmExecFile.ShowForm(DataFileName) then
          SetContentStorageFile(DataFileName);
      end;

    Result:= DataFileName; 

  except
    on E: Exception do
      if (ADocItemExecType = dietPersist) then
        begin
          Result:= GetDataFileName(TXTFileExt, TempDir);
          WriteUTF8StringToFile(UTF8Encode(E.Message), Result);
        end
      else
        raise;
  end;
end;

procedure TdmDocClient.ExecDocFile(const AFileName: string; ASearchForVerbs: Boolean; const AVerbsMenuCaption: string);
var
  AttachedVerbs: TStringList;
  AttachedVerbsText: TStringList;
begin
  Assert(ASearchForVerbs <= (AVerbsMenuCaption <> ''));

  AttachedVerbs:= TStringList.Create;
  try
    AttachedVerbsText:= TStringList.Create;
    try
      ReadFileVerbs(AFileName, AttachedVerbs, AttachedVerbsText);

      if (not ASearchForVerbs) or (AttachedVerbs.Count = 1) then
        ExecFile(AFileName)
      else
        PopupVerbsMenu(AVerbsMenuCaption, AFileName, AttachedVerbs, AttachedVerbsText);
    finally
      FreeAndNil(AttachedVerbsText);
    end;  { try }
  finally
    FreeAndNil(AttachedVerbs);
  end;
end;  { try }

procedure TdmDocClient.miEditDocClick(Sender: TObject);
begin
  if TfmDocItems.ShowForm(
       Self,
       Boolean((Sender as TMenuItem).Tag),
       cdsDocsDOC_BRANCH_CODE.AsInteger,
       cdsDocsDOC_CODE.AsInteger,
       OpenDocOwnerType) then
    DataChanged;
end;

procedure TdmDocClient.miVerbMenuCaptionDrawItem(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; Selected: Boolean);
var
  Caption: string;
begin
  with ACanvas do
    begin
      Brush.Color := clMenu;
      Font.Color := clMenuText;
      Font.Style:= [fsBold];
      Caption:= (Sender as TMenuItem).Caption;
      DrawText(Handle, PChar(Caption), Length(Caption), ARect, DT_CENTER or DT_VCENTER or DT_SINGLELINE);
    end; { with }
end;

procedure TdmDocClient.miVerbMenuItemClick(Sender: TObject);
begin
  Assert(Sender is TVerbMenuItem);

  with (Sender as TVerbMenuItem) do
    ExecFile(FFileName, FVerb);
end;

procedure TdmDocClient.miDocItemClick(Sender: TObject);
begin
  cdsDocItems.RecNo:= (Sender as TMenuItem).Tag;
  ExecDocItemDataReadOnly(True);
end;

procedure TdmDocClient.DataModuleCreate(Sender: TObject);
begin
  SetDataSetsGetFieldValueAsStringEvent(Self);
  inherited;
  cdsDocs.Active:= True;
  cdsDocItems.Active:= True;
  cdsDocItemSysRoles.Active:= True;
  cdsReservedDocCodes.CreateDataSet;
end;

procedure TdmDocClient.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  cdsReservedDocCodes.Close;
  cdsDocItemSysRoles.Close;
  cdsDocItems.Close;
  cdsDocs.Close;
end;

procedure TdmDocClient.DeleteDoc(ADocBranchCode, ADocCode: Integer);
var
  SaveFiltered: Boolean;
begin
  if LoadDoc(ADocBranchCode, ADocCode) then
    begin
      FDeletingDoc:= True;
      try
        cdsDocs.DisableControls;
        try
          cdsDocItems.DisableControls;
          try
            cdsDocItemSysRoles.DisableControls;
            try
              SaveFiltered:= cdsDocs.Filtered;
              cdsDocs.Filtered:= False;
              try
                Assert(LocateDoc(ADocBranchCode, ADocCode));

                cdsDocs.Edit;
                try
                  cdsDocItems.First;
                  while not (cdsDocItems.Bof and cdsDocItems.Eof) do
                    begin
                      cdsDocItems.Edit;
                      try

                        cdsDocItemSysRoles.First;
                        while not (cdsDocItemSysRoles.Bof and cdsDocItemSysRoles.Eof)  do
                          begin
                            cdsDocItemSysRoles.Edit;
                            try
                              cdsDocItemSysRolesRECORD_STATUS.AsInteger:= Ord(usDeleted);
                              cdsDocItemSysRoles.Post;
                            except
                              cdsDocItemSysRoles.Cancel;
                              raise;
                            end;  { try }
                          end;  { while }

                        cdsDocItemsRECORD_STATUS.AsInteger:= Ord(usDeleted);
                        cdsDocItems.Post;
                      except
                        cdsDocItems.Cancel;
                        raise;
                      end;   { try }
                    end;  { while }

                  cdsDocsRECORD_STATUS.AsInteger:= Ord(usDeleted);
                  cdsDocs.Post;
                except
                  cdsDocs.Cancel;
                  raise;
                end;   { try }
              finally
                cdsDocs.Filtered:= SaveFiltered;
              end;
            finally
              cdsDocItemSysRoles.EnableControls;
            end;  { try }
          finally
            cdsDocItems.EnableControls;
          end;   { try }
        finally
          cdsDocs.EnableControls;
        end;   { try }
      finally
        FDeletingDoc:= False;
      end;  { try }

      DataChanged;
    end;  { if }
end;

procedure TdmDocClient.ReadFileVerbs(const AFileName: string;
  AAttachedVerbs, AAttachedVerbsText: TStringList);
var
  FileExtension: string;
  VerbRegistryPath: string;
  AttachedVerbs: TStringList;
  Reg: TRegistry;
  i: Integer;
begin
  FileExtension:= ExtractFileExt(AFileName);

  AAttachedVerbs.Clear;
  AAttachedVerbsText.Clear;

  AAttachedVerbs.Add('');
  AAttachedVerbsText.Add(SOpen);

  Reg:= TRegistry.Create;
  try
    Reg.RootKey:= HKEY_CLASSES_ROOT;
    Reg.Access:= KEY_READ;

    VerbRegistryPath:= Format('SystemFileAssociations\%s\shell', [FileExtension]);
    if Reg.OpenKey(VerbRegistryPath, False) then
      begin
        AttachedVerbs:= TStringList.Create;
        try
          Reg.GetKeyNames(AttachedVerbs);
          for i:= 0 to AttachedVerbs.Count - 1 do
            if (LeftStr(AttachedVerbs[i], 9) = DNCVerbPrefix) then
                AAttachedVerbs.Add(AttachedVerbs[i]);
        finally
          FreeAndNil(AttachedVerbs);
        end;  { try }
      end;  { if }

    Reg.CloseKey();
    for i:= 1 to AAttachedVerbs.Count - 1 do
      begin
        VerbRegistryPath:= Format('SystemFileAssociations\%s\shell\%s', [FileExtension, AAttachedVerbs[i]]);

        Reg.RootKey:= HKEY_CLASSES_ROOT;
        if Reg.OpenKey(VerbRegistryPath, False) then
          AAttachedVerbsText.Add(Reg.ReadString(''));

        Reg.CloseKey();
      end;  { for }
  finally
    FreeAndNil(Reg);
  end;  { try }

  Assert(AAttachedVerbs.Count = AAttachedVerbsText.Count);
end;

procedure TdmDocClient.RemoveDoc(ADocBranchCode, ADocCode: Integer);
begin
  if cdsDocs.Active and
     cdsDocs.Locate('DOC_BRANCH_CODE; DOC_CODE', VarArrayOf([ADocBranchCode, ADocCode]), []) then
    begin
      FRemovingDoc:= True;
      try
        while (cdsDocItems.RecordCount > 0) do
          begin
            while (cdsDocItemSysRoles.RecordCount > 0) do
              cdsDocItemSysRoles.Delete;

            cdsDocItems.Delete;
          end;  { while }

        cdsDocs.Delete;
      finally
        FRemovingDoc:= False;
      end;  { try }
    end;
end;

procedure TdmDocClient.cdsDocsIS_COMPLETEChange(Sender: TField);
begin
  inherited;
  if not FLoadingDoc and
     not FRemovingDoc and
     not FDeletingDoc and
     not FCommittingUpdates and
     not FCreatingLike then
    begin
      if cdsDocsIS_COMPLETE.AsBoolean then
        begin
          if (IntToDocEmptinessRequirement(cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger) = derUnknown) then
            begin
              if (VarToInt(cdsDocItems_ACTIVE_DOC_ITEM_COUNT.Value) = 0) then
                cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger:= DocEmptinessRequirementToInt(derEmpty)
              else
                cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger:= DocEmptinessRequirementToInt(derNotEmpty);
            end;  { if }
        end
      else
        begin
          if (IntToDocEmptinessRequirement(cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger) = derEmpty) then
            cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger:= DocEmptinessRequirementToInt(derUnknown);
        end;
    end;  { if }
end;

procedure TdmDocClient.cdsDocsDOC_EMPTINESS_REQUIREMENT_CODEChange(
  Sender: TField);
begin
  inherited;
  if not FLoadingDoc and
     not FRemovingDoc and
     not FDeletingDoc and
     not FCommittingUpdates and
     not FCreatingLike then
    begin
      case IntToDocEmptinessRequirement(cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger) of
        derUnknown:
          begin
            if cdsDocsIS_COMPLETE.AsBoolean then
              cdsDocsIS_COMPLETE.AsBoolean:= False;
          end;
        derEmpty:
          begin
            if not cdsDocsIS_COMPLETE.AsBoolean then
              cdsDocsIS_COMPLETE.AsBoolean:= True;
          end;
        derNotEmpty:
          begin
            if cdsDocsIS_COMPLETE.AsBoolean then
              cdsDocsIS_COMPLETE.AsBoolean:= False;
          end;
      end;  { case }
    end;  { if }
end;

procedure TdmDocClient.cdsDocsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not FLoadingDoc and
     not FRemovingDoc and
     not FDeletingDoc and
     not FCommittingUpdates and
     not FCreatingLike then
    begin
      if (IntToDocEmptinessRequirement(cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger) = derEmpty) and
         (VarToInt(cdsDocItems_ACTIVE_DOC_ITEM_COUNT.Value) > 0) then
        begin
          if (MessageDlgEx(SDocWithEmptyEmptynessRequirementMustBeEmptyDoYouWantToChangeTheRequirementToNonEmpty, mtConfirmation, mbOkCancel, 0) <> mrOk) then
            Abort;
        end;  { if }

      if (FActiveDocItemCountBeforeEdit <> VarToInt(cdsDocItems_ACTIVE_DOC_ITEM_COUNT.Value)) then
        begin
          SetDocIsComplete(False);

          if (VarToInt(cdsDocItems_ACTIVE_DOC_ITEM_COUNT.Value) > 0) then
            cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger:= DocEmptinessRequirementToInt(derNotEmpty);
        end;  { if }

      case IntToDocEmptinessRequirement(cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger) of
        derUnknown:
          begin
            if (VarToInt(cdsDocItems_ACTIVE_DOC_ITEM_COUNT.Value) > 0) then
              raise Exception.Create(SDocWithUnknownEmptinessRequirementMustBeEmpty);

            if cdsDocsIS_COMPLETE.AsBoolean then
              raise Exception.Create(SDocWithUnknownEmptinessRequirementCannotBeComplete);
          end;

        derEmpty:
          begin
            if (VarToInt(cdsDocItems_ACTIVE_DOC_ITEM_COUNT.Value) > 0) then
              raise Exception.Create(SDocWithEmptyEmptynessRequirementMustBeEmpty);

            if not cdsDocsIS_COMPLETE.AsBoolean then
              raise Exception.Create(SDocWithEmptyEmptynessRequirementMustBeComplete);
          end;

        derNotEmpty:
          begin
            if cdsDocsIS_COMPLETE.AsBoolean and
               (VarToInt(cdsDocItems_ACTIVE_DOC_ITEM_COUNT.Value) = 0) then
              raise Exception.Create(SCompleteDocWithNonEmptyEmptynessRequirementMustNotBeEmpty);
          end;
      end;  { case }

      CheckDocItemsUniqueIndexes;
    end;  { if }
end;

procedure TdmDocClient.cdsDocsAfterPost(DataSet: TDataSet);
begin
  inherited;
  FActiveDocItemCountBeforeEdit:= 0;

  if not FLoadingDoc and
     not FRemovingDoc and
     not FCommittingUpdates and
     (cdsDocsRECORD_STATUS.AsInteger <> Ord(usUnmodified)) then
    begin
      SetModified(True);
    end;  { if }
end;

procedure TdmDocClient.cdsDocItemsBeforePost(DataSet: TDataSet);
var
  MirroredFileExt: string;
begin
  inherited;
  if not FLoadingDoc and
     not FRemovingDoc and
     not FDeletingDoc and
     not FCommittingUpdates and
     not FCreatingLike and
     not FCreatingDefaultDocItemSysRole and
     VarIsNullOrEmpty(FDocItemRecordData) then
    begin
      CheckRequiredField(cdsDocItemsDOC_ITEM_NO);

      if (cdsDocItemsDOC_ITEM_NO.AsInteger <= 0) then
        raise Exception.CreateFmt(SFieldValueMustBePositive, [cdsDocItemsDOC_ITEM_NO.DisplayLabel]);

      CheckRequiredField(cdsDocItems_DOC_ITEM_TYPE_NAME);
      CheckRequiredField(cdsDocItemsDOC_ITEM_NAME);

      case cdsDocItems_DI_STORAGE_BASE_TYPE_CODE.AsDocItemStorageBaseType of
        disbtInternal:
          begin
            if not LoginContext.AllowInternallyStoredDoc then
              raise Exception.Create(SInternallyStoredDocsNotAllowed);

            if not cdsDocItemsDEVELOP_EMPLOYEE_CODE.IsNull and
               cdsDocItemsFILE_EXTENSION_CODE.IsNull then
              begin
                raise Exception.Create(SCannotSaveEmptyDocItemInDevelopState);
              end;  { if }

            if cdsDocItemsIS_MIRRORED.AsBoolean then
              begin
                CheckRequiredField(cdsDocItemsMIRRORED_FILE_NAME);
                CheckRequiredField(cdsDocItemsMIRRORED_RELATIVE_PATH);

                if (cdsDocItemsMIRRORED_RELATIVE_PATH.AsString = '') or
                   (cdsDocItemsMIRRORED_RELATIVE_PATH.AsString[1] <> '\') then
                  begin
                    cdsDocItemsMIRRORED_RELATIVE_PATH.FocusControl;
                    raise Exception.Create(SInvalidRelativePath);
                  end;  { if }

                if (ExtractFileExt(cdsDocItemsMIRRORED_FILE_NAME.AsString) = '') then
                  begin
                    cdsDocItemsMIRRORED_FILE_NAME.FocusControl;
                    raise Exception.Create(SFileNameMustHaveAnExtension);
                  end;  { if }

                MirroredFileExt:= ExtractFileExt(cdsDocItemsMIRRORED_FILE_NAME.AsString);
                if (MirroredFileExt <> '') then
                  MirroredFileExt:= Copy(MirroredFileExt, 2, Length(MirroredFileExt) - 1);

                if (UpperCase(MirroredFileExt) <> UpperCase(cdsDocItems_FILE_EXTENSION_ABBREV.AsString)) then
                  raise Exception.Create(SStoredAndMirroredFileExtensionsMustMatch);

                cdsDocItemsDOC_ITEM_PATTERN_CODE.Clear;
              end
            else
              begin
                cdsDocItemsMIRRORED_FILE_NAME.Clear;
                cdsDocItemsMIRRORED_RELATIVE_PATH.Clear;
              end;

            if cdsDocItemsFILE_EXTENSION_CODE.IsNull then
              begin
                cdsDocItemsSTORED_FILE_BRANCH_CODE.Clear;
                cdsDocItemsSTORED_FILE_CODE.Clear;
              end
            else
              begin
                if cdsDocItemsSTORED_FILE_CODE.IsNull then
                  begin
                    cdsDocItemsSTORED_FILE_BRANCH_CODE.AsInteger:= -1;
                    cdsDocItemsSTORED_FILE_CODE.AsInteger:= -1;
                  end;  { if }
              end;

            cdsDocItemsFILE_NAME.Clear;
            cdsDocItemsRELATIVE_PATH.Clear;
          end;

        disbtExternal:
          begin
            cdsDocItemsFILE_NAME.DisplayLabel:= SFileNameField;
            CheckRequiredField(cdsDocItemsFILE_NAME);
            CheckRequiredField(cdsDocItemsRELATIVE_PATH);

            if (cdsDocItemsRELATIVE_PATH.AsString = '') or
               (cdsDocItemsRELATIVE_PATH.AsString[1] <> '\') then
              begin
                cdsDocItemsRELATIVE_PATH.FocusControl;
                raise Exception.Create(SInvalidRelativePath);
              end;  { if }

            if (ExtractFileExt(cdsDocItemsFILE_NAME.AsString) = '') then
              begin
                cdsDocItemsFILE_NAME.FocusControl;
                raise Exception.Create(SFileNameMustHaveAnExtension);
              end;  { if }

            cdsDocItemsMIRRORED_FILE_NAME.Clear;
            cdsDocItemsMIRRORED_RELATIVE_PATH.Clear;
            cdsDocItemsIS_MIRRORED.AsBoolean:= False;

            cdsDocItemsDOC_ITEM_PATTERN_CODE.Clear;
            cdsDocItemsSTORED_FILE_BRANCH_CODE.Clear;
            cdsDocItemsSTORED_FILE_CODE.Clear;
            cdsDocItemsFILE_EXTENSION_CODE.Clear;
            cdsDocItemsSTORED_FILE_DATA.Clear;
            cdsDocItemsFILE_CHANGE_EMPLOYEE_CODE.Clear;
            cdsDocItemsFILE_CHANGE_DATE.Clear;
            cdsDocItemsFILE_CHANGE_TIME.Clear;
          end;

        disbtCommandStorage:
          begin
            cdsDocItemsFILE_NAME.DisplayLabel:= SExternalDocIdField;
            CheckRequiredField(cdsDocItemsFILE_NAME);

            cdsDocItemsRELATIVE_PATH.Clear;

            cdsDocItemsMIRRORED_FILE_NAME.Clear;
            cdsDocItemsMIRRORED_RELATIVE_PATH.Clear;
            cdsDocItemsIS_MIRRORED.AsBoolean:= False;

            cdsDocItemsDOC_ITEM_PATTERN_CODE.Clear;
            cdsDocItemsSTORED_FILE_BRANCH_CODE.Clear;
            cdsDocItemsSTORED_FILE_CODE.Clear;
            cdsDocItemsFILE_EXTENSION_CODE.Clear;
            cdsDocItemsSTORED_FILE_DATA.Clear;

            cdsDocItemsFILE_CHANGE_EMPLOYEE_CODE.Clear;
            cdsDocItemsFILE_CHANGE_DATE.Clear;
            cdsDocItemsFILE_CHANGE_TIME.Clear;
          end;

        disbtContentStorage:
          begin
            cdsDocItemsMIRRORED_FILE_NAME.Clear;
            cdsDocItemsMIRRORED_RELATIVE_PATH.Clear;

            cdsDocItemsSTORED_FILE_BRANCH_CODE.Clear;
            cdsDocItemsSTORED_FILE_CODE.Clear;

            cdsDocItemsRELATIVE_PATH.Clear;
          end
      end;  { case cdsDocItemsDI_STORAGE_BASE_TYPE_CODE.AsDocItemStorageBaseType }

      CheckDocItemSysRolesUniqueIndexes;

      if (cdsDocItemsDOC_ITEM_CODE.AsInteger > cdsDocsMAX_DOC_ITEM_CODE.AsInteger) then
        cdsDocsMAX_DOC_ITEM_CODE.AsInteger:= cdsDocItemsDOC_ITEM_CODE.AsInteger;

      cdsDocItemsDOC_ITEM_ACCESS_LEVEL_CODE.AsInteger:= DocItemAccessLevelToInt(GetDocItemAccessLevel);
    end;  { if }

  if not FLoadingDoc and
     not FRemovingDoc and
     not FDeletingDoc and
     not FCommittingUpdates and
     (cdsDocItemsRECORD_STATUS.AsInteger <> Ord(usUnmodified)) then
    begin
      cdsDocItemsCHANGE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
      cdsDocItemsCHANGE_DATE.AsDateTime:= ContextDate;
      cdsDocItemsCHANGE_TIME.AsDateTime:= ContextTime;
    end;  { if }
end;

function TdmDocClient.GetDelta: OleVariant;
begin
  CheckUserHasEditAccessToAllDocItems;

  if cdsDocs.Active then
    cdsDocs.CheckBrowseMode;

  if Modified and (cdsDocs.ChangeCount > 0) then
    Result:= cdsDocs.Delta
  else
    Result:= Unassigned;
end;

procedure TdmDocClient.cdsDocItemsNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsDocItemsIS_NOT_DELETED.AsBoolean:= True;

  if not FLoadingDoc and
     not FRemovingDoc and
     not FDeletingDoc and
     not FCommittingUpdates then
    begin
      cdsDocItemsDOC_BRANCH_CODE.Assign(cdsDocsDOC_BRANCH_CODE);
      cdsDocItemsDOC_CODE.Assign(cdsDocsDOC_CODE);

      cdsDocItemsDOC_ITEM_CODE.AsInteger:=
        cdsDocsMAX_DOC_ITEM_CODE.AsInteger + 1;

      if not VarIsNullOrEmpty(FDocItemRecordData) then
        SetRecordData(cdsDocItems, FDocItemRecordData, False);

      cdsDocItemsDOC_ITEM_NO.AsInteger:=
        VarToInt(cdsDocItems_MAX_DOC_ITEM_NO.AsVariant) + 1;

      cdsDocItemsCREATE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
      cdsDocItemsCREATE_DATE.AsDateTime:= ContextDate;
      cdsDocItemsCREATE_TIME.AsDateTime:= ContextTime;

      if VarIsNullOrEmpty(FDocItemRecordData) then
        begin
          cdsDocItemsIS_INACTIVE.AsBoolean:= False;
          cdsDocItemsDOC_ITEM_STORAGE_TYPE_CODE.AsInteger:= distcInternal;
          cdsDocItemsIS_MIRRORED.AsBoolean:= False;
          cdsDocItemsIS_STORED_FILE_CHANGED.AsBoolean:= False;

          if not FCreatingLike then
            begin
              FCreatingDefaultDocItemSysRole:= True;
              try
                cdsDocItemSysRoles.Append;
                try
                  cdsDocItemSysRolesSYS_ROLE_CODE.AsInteger:= DefaultSysRoleCode;
                  cdsDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE.AsInteger:= DocItemAccessLevelToInt(dialEdit);

                  cdsDocItemSysRoles.Post;
                except
                  cdsDocItemSysRoles.Cancel;
                  raise;
                end;  { try }

                cdsDocItemsDOC_ITEM_ACCESS_LEVEL_CODE.AsInteger:= DocItemAccessLevelToInt(dialEdit);
              finally
                FCreatingDefaultDocItemSysRole:= False;
              end;  { try }
            end;  { if }
        end
      else
        begin
          if not cdsDocItemsDEVELOP_EMPLOYEE_CODE.IsNull then
            begin
              ClearFieldsIfAssigned([
                cdsDocItemsAPPROVE_EMPLOYEE_CODE,
                cdsDocItemsAPPROVE_DATE,
                cdsDocItemsAPPROVE_TIME,
                cdsDocItemsAUTHORIZE_EMPLOYEE_CODE,
                cdsDocItemsAUTHORIZE_DATE,
                cdsDocItemsAUTHORIZE_TIME
              ]);

              AssignEmployeeDateTimeFields(cdsDocItemsDEVELOP_EMPLOYEE_CODE, cdsDocItemsDEVELOP_DATE, cdsDocItemsDEVELOP_TIME, ContextNow);
            end;
        end;

      UnprepareDocItemCreateLike;
    end;  { if }
end;

procedure TdmDocClient.DSOpenDoc(AEditMode: TEditMode;
  AControl: TControl;
  ADocOwnerType: TDocOwnerType;
  ADocBranchCodeField, ADocCodeField: TField;
  const AAdditionalInfo: Integer);
var
  NewDocCode: Integer;
  InEditModes: Boolean;
begin
  with ADocCodeField.DataSet do
    if (not CanModify) or
       (Bof and Eof and not (State in dsEditModes)) then
      AEditMode:= emReadOnly;

  NewDocCode:=
    OpenDoc(
      AEditMode,
      AControl,
      ADocOwnerType,
      ADocBranchCodeField.AsInteger,
      ADocCodeField.AsInteger,
      AAdditionalInfo);

  if (NewDocCode > 0) then
    begin
      InEditModes:= (ADocCodeField.DataSet.State in dsEditModes);

      CheckEditMode(ADocCodeField.DataSet);
      try
        ADocBranchCodeField.AsInteger:= LoginContext.LocalBranchCode;
        ADocCodeField.AsInteger:= NewDocCode;

        if not InEditModes then
          ADocCodeField.DataSet.Post;
      except
        if not InEditModes then
          ADocCodeField.DataSet.Cancel;
        raise;
      end;   { try }
    end;   { if }
end;

procedure TdmDocClient.DSOpenDoc(AEditMode: TEditMode;
  AControl: TControl;
  ADocOwnerType: TDocOwnerType;
  ADataSet: TDataSet;
  const ADocBranchCodeFieldName, ADocCodeFieldName: string;
  const AAdditionalInfo: Integer);
begin
  DSOpenDoc(
    AEditMode, AControl,
    ADocOwnerType,
    ADataSet.FieldByName(ADocBranchCodeFieldName),
    ADataSet.FieldByName(ADocCodeFieldName),
    AAdditionalInfo
  );
end;

procedure TdmDocClient.DSDeleteDoc(ADocBranchCodeField,
  ADocCodeField: TField);
begin
  DeleteDoc(ADocBranchCodeField.AsInteger, ADocCodeField.AsInteger);
end;

procedure TdmDocClient.DSDeleteDoc(ADataSet: TDataSet;
  const ADocBranchCodeFieldName, ADocCodeFieldName: string);
begin
  DSDeleteDoc(
    ADataSet.FieldByName(ADocBranchCodeFieldName),
    ADataSet.FieldByName(ADocCodeFieldName)
  );
end;

procedure TdmDocClient.cdsDocsBeforeDelete(DataSet: TDataSet);
begin
  if not FCommittingUpdates and not FRemovingDoc then
    Assert(False, 'cdsDocs.Delete must not be called');
end;

procedure TdmDocClient.cdsDocItemsBeforeDelete(DataSet: TDataSet);
begin
  Assert(FCommittingUpdates or FRemovingDoc, 'cdsDocItems.Delete must not be called');
end;

procedure TdmDocClient.cdsDocsReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ReconcileError(E);
end;

procedure TdmDocClient.ApplyUpdates;
var
  SavedCursor: TCursor;
begin
  Assert(cdsDocs.State = dsBrowse);
  if Modified then
    begin
      SavedCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        if (cdsDocs.ApplyUpdates(0) > 0) then
          Abort;

        CommitUpdates;
      finally
        Screen.Cursor:= SavedCursor;
      end;  { try }
    end;  { try }
end;

procedure TdmDocClient.CancelUpdates;
begin
  if Modified then
    begin
      cdsDocs.CancelUpdates;
      SetModified(False);
    end;  { if }
end;

function TdmDocClient.OpenProductDoc(AEditMode: TEditMode;
  AControl: TControl; AProductCode: Integer): Integer;
var
  DocBranchCode, DocCode: Integer;
begin
  dmMain.SvrProductsTree.GetProductDoc(AProductCode, DocBranchCode, DocCode);
  Result:= OpenDoc(AEditMode, AControl, dotProduct, DocBranchCode, DocCode);
end;

procedure TdmDocClient.DeleteProductDoc(AProductCode: Integer);
var
  DocBranchCode, DocCode: Integer;
begin
  dmMain.SvrProductsTree.GetProductDoc(AProductCode, DocBranchCode, DocCode);
  DeleteDoc(DocBranchCode, DocCode);
end;

procedure TdmDocClient.DataChanged;
begin
  if Assigned(OnDataChanged) then
    OnDataChanged(Self);
end;

function TdmDocClient.IsCurrent(ADocBranchCode,
  ADocCode: Integer): Boolean;
begin
  Result:=
    cdsDocs.Active and
    (not cdsDocsDOC_BRANCH_CODE.IsNull) and
    (cdsDocsDOC_BRANCH_CODE.AsInteger = ADocBranchCode) and
    (cdsDocsDOC_CODE.AsInteger = ADocCode);
end;

function TdmDocClient.DSIsCurrent(ADocBranchCodeField,
  ADocCodeField: TField): Boolean;
begin
  Result:=
    IsCurrent(ADocBranchCodeField.AsInteger, ADocCodeField.AsInteger);
end;

procedure TdmDocClient.AssignEmployeeDateTimeFields(AEmployeeField, ADateField, ATimeField: TField; ADateTime: TDateTime);
begin
  if (ADateTime = 0) then
    ADateTime:= Now;

  AEmployeeField.AsInteger:= LoginContext.UserCode;
  ADateField.AsDateTime:= DateOf(ADateTime);
  ATimeField.AsDateTime:= TimeOf(ADateTime);
end;

procedure TdmDocClient.AddTemplateDocItems(const ADocItemRecordData: Variant; ADateTime: TDateTime);
var
  DocItemRecordData: Variant;
  DocItemNo: Integer;
begin
  DocItemRecordData:= ADocItemRecordData;

  cdsDefaultDocItems.ForEach/
    cdsDocItems.SafeAppend/
      procedure
      var
        DocItemState: TDocItemState;
      begin
        DocItemNo:= cdsDocItemsDOC_ITEM_NO.AsInteger;

        SetRecordData(cdsDocItems, DocItemRecordData, False);

        cdsDocItemsDOC_ITEM_NO.AsInteger:= DocItemNo;
        cdsDocItemsDOC_ITEM_NAME.Assign(cdsDefaultDocItemsDOC_ITEM_NAME);
        cdsDocItemsRECORD_STATUS.AsInteger:= Ord(usInserted);

        DocItemState:= IntToDocItemState(cdsDefaultDocItemsDOC_ITEM_STATE_CODE.AsInteger);

        if (DocItemState >= disDeveloped) then
          AssignEmployeeDateTimeFields(cdsDocItemsDEVELOP_EMPLOYEE_CODE, cdsDocItemsDEVELOP_DATE, cdsDocItemsDEVELOP_TIME, ADateTime);

        if (DocItemState >= disAuthorized) then
          AssignEmployeeDateTimeFields(cdsDocItemsAUTHORIZE_EMPLOYEE_CODE, cdsDocItemsAUTHORIZE_DATE, cdsDocItemsAUTHORIZE_TIME, ADateTime);

        if (DocItemState >= disApproved) then
          AssignEmployeeDateTimeFields(cdsDocItemsAPPROVE_EMPLOYEE_CODE, cdsDocItemsAPPROVE_DATE, cdsDocItemsAPPROVE_TIME, ADateTime);
      end;
end;  { AddTemplateDocItems }

procedure TdmDocClient.DSInitDoc(ADocOwnerType: TDocOwnerType;
  ADocBranchCodeField, ADocCodeField: TField);
var
  DocItemTemplateType: TDocItemTemplateType;
  DocItemTemplateTypeCode: Integer;
  DocItemData: Variant;
  NowDateTime: TDateTime;
  TemplateFound: Boolean;
begin
  DocItemTemplateType:= GetDocOwnerTypeTemplateType(ADocOwnerType);
  DocItemTemplateTypeCode:= DocItemTemplateTypeToInt(DocItemTemplateType);

  NowDateTime:= Now;

  cdsDocItemTemplates.TempOpen/
    procedure begin
      TemplateFound:= False;
      cdsDocItemTemplates.ForEach/
        procedure begin
          TemplateFound:=
            TemplateFound or
            ( (cdsDocItemTemplatesDOC_ITEM_TEMPLATE_TYPE_CODE.AsInteger = DocItemTemplateTypeCode) and
              not cdsDocItemTemplatesIS_INACTIVE.AsBoolean);
        end;

      if TemplateFound then
        begin
          if ADocCodeField.IsNull then
            DSNewDoc(ADocBranchCodeField, ADocCodeField);

          Assert(cdsDocItems.IsEmpty);

          CheckEditMode(ADocCodeField.DataSet);

          cdsDocItemTemplates.ForEach/
            procedure begin
              if (cdsDocItemTemplatesDOC_ITEM_TEMPLATE_TYPE_CODE.AsInteger = DocItemTemplateTypeCode) and
                 not cdsDocItemTemplatesIS_INACTIVE.AsBoolean and
                 (cdsDefaultDocItems.RecordCount > 0) and
                 LoadDoc(cdsDocItemTemplatesDOC_BRANCH_CODE.AsInteger, cdsDocItemTemplatesDOC_CODE.AsInteger) then
                begin
                  DocItemData:= GetRecordData(cdsDocItems, False);
                  Assert(LocateDoc(ADocBranchCodeField.AsInteger, ADocCodeField.AsInteger));
                  AddTemplateDocItems(DocItemData, NowDateTime);
                end;
            end;

          DataChanged;
        end;
    end;
end;

procedure TdmDocClient.DSInitDoc(ADocOwnerType: TDocOwnerType;
  ADataSet: TDataSet; const ADocBranchCodeFieldName, ADocCodeFieldName: string);
begin
  DSInitDoc(
    ADocOwnerType,
    ADataSet.FieldByName(ADocBranchCodeFieldName),
    ADataSet.FieldByName(ADocCodeFieldName)
  );
end;

function TdmDocClient.DSIsCurrent(ADataSet: TDataSet;
  const ADocBranchCodeFieldName, ADocCodeFieldName: string): Boolean;
begin
  Result:=
    DSIsCurrent(
      ADataSet.FieldByName(ADocBranchCodeFieldName),
      ADataSet.FieldByName(ADocCodeFieldName)
    );
end;

function TdmDocClient.CreateDocLike(ADocBranchCode,
  ADocCode: Integer; AKeepState, AOverrideCurrentDoc, ASkipInactive: Boolean): Integer;

  procedure AssignCopyDocItemSysRoleFields;
  begin
    cdsCopyDocItemSysRolesDOC_BRANCH_CODE.AsVariant:= cdsDocItemSysRolesDOC_BRANCH_CODE.AsVariant;
    cdsCopyDocItemSysRolesDOC_CODE.AsVariant:= cdsDocItemSysRolesDOC_CODE.AsVariant;
    cdsCopyDocItemSysRolesDOC_ITEM_CODE.AsVariant:= cdsDocItemSysRolesDOC_ITEM_CODE.AsVariant;
    cdsCopyDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE.AsVariant:= cdsDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE.AsVariant;
    cdsCopyDocItemSysRolesSYS_ROLE_CODE.AsVariant:= cdsDocItemSysRolesSYS_ROLE_CODE.AsVariant;
    cdsCopyDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE.AsVariant:= cdsDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE.AsVariant;
  end;

  procedure AssignDocItemSysRoleFields;
  begin
    cdsDocItemSysRolesDOC_BRANCH_CODE.AsVariant:= cdsDocItemsDOC_BRANCH_CODE.AsVariant;
    cdsDocItemSysRolesDOC_CODE.AsVariant:= cdsDocItemsDOC_CODE.AsVariant;
    cdsDocItemSysRolesDOC_ITEM_CODE.AsVariant:= cdsDocItemsDOC_ITEM_CODE.AsVariant;
    cdsDocItemSysRolesSYS_ROLE_CODE.AsVariant:= cdsCopyDocItemSysRolesSYS_ROLE_CODE.AsVariant;
    cdsDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE.AsVariant:= cdsCopyDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE.AsVariant;
  end;

  procedure AssignCopyDocItemFields;
  begin
    cdsCopyDocItemsDOC_BRANCH_CODE.AsVariant:= cdsDocItemsDOC_BRANCH_CODE.AsVariant;
    cdsCopyDocItemsDOC_CODE.AsVariant:= cdsDocItemsDOC_CODE.AsVariant;
    cdsCopyDocItemsDOC_ITEM_CODE.AsVariant:= cdsDocItemsDOC_ITEM_CODE.AsVariant;
    cdsCopyDocItemsDOC_ITEM_NO.AsVariant:= cdsDocItemsDOC_ITEM_NO.AsVariant;
    cdsCopyDocItemsDOC_ITEM_NAME.AsVariant:= cdsDocItemsDOC_ITEM_NAME.AsVariant;
    cdsCopyDocItemsDOC_ITEM_TYPE_CODE.AsVariant:= cdsDocItemsDOC_ITEM_TYPE_CODE.AsVariant;
    cdsCopyDocItemsIS_INACTIVE.AsVariant:= cdsDocItemsIS_INACTIVE.AsVariant;
    cdsCopyDocItemsNOTES.AsVariant:= cdsDocItemsNOTES.AsVariant;
    cdsCopyDocItemsDOC_ITEM_STORAGE_TYPE_CODE.AsVariant:= cdsDocItemsDOC_ITEM_STORAGE_TYPE_CODE.AsVariant;
    cdsCopyDocItemsRELATIVE_PATH.AsVariant:= cdsDocItemsRELATIVE_PATH.AsVariant;
    cdsCopyDocItemsFILE_NAME.AsVariant:= cdsDocItemsFILE_NAME.AsVariant;
    cdsCopyDocItemsDOC_ITEM_PATTERN_CODE.AsVariant:= cdsDocItemsDOC_ITEM_PATTERN_CODE.AsVariant;
    cdsCopyDocItemsSTORED_FILE_BRANCH_CODE.AsVariant:= cdsDocItemsSTORED_FILE_BRANCH_CODE.AsVariant;
    cdsCopyDocItemsSTORED_FILE_CODE.AsVariant:= cdsDocItemsSTORED_FILE_CODE.AsVariant;
    cdsCopyDocItemsFILE_EXTENSION_CODE.AsVariant:= cdsDocItemsFILE_EXTENSION_CODE.AsVariant;
    cdsCopyDocItemsSTORED_FILE_DATA.AsVariant:= cdsDocItemsSTORED_FILE_DATA.AsVariant;
    cdsCopyDocItemsIS_STORED_FILE_CHANGED.AsVariant:= cdsDocItemsIS_STORED_FILE_CHANGED.AsVariant;

    cdsCopyDocItemsDEVELOP_EMPLOYEE_CODE.AsVariant:= cdsDocItemsDEVELOP_EMPLOYEE_CODE.AsVariant;
    cdsCopyDocItemsDEVELOP_DATE.AsVariant:= cdsDocItemsDEVELOP_DATE.AsVariant;
    cdsCopyDocItemsDEVELOP_TIME.AsVariant:= cdsDocItemsDEVELOP_TIME.AsVariant;
    cdsCopyDocItemsAUTHORIZE_EMPLOYEE_CODE.AsVariant:= cdsDocItemsAUTHORIZE_EMPLOYEE_CODE.AsVariant;
    cdsCopyDocItemsAUTHORIZE_DATE.AsVariant:= cdsDocItemsAUTHORIZE_DATE.AsVariant;
    cdsCopyDocItemsAUTHORIZE_TIME.AsVariant:= cdsDocItemsAUTHORIZE_TIME.AsVariant;
    cdsCopyDocItemsAPPROVE_EMPLOYEE_CODE.AsVariant:= cdsDocItemsAPPROVE_EMPLOYEE_CODE.AsVariant;
    cdsCopyDocItemsAPPROVE_DATE.AsVariant:= cdsDocItemsAPPROVE_DATE.AsVariant;
    cdsCopyDocItemsAPPROVE_TIME.AsVariant:= cdsDocItemsAPPROVE_TIME.AsVariant;
    cdsCopyDocItemsMAX_DOC_ITEM_SYS_ROLE_CODE.AsVariant:= cdsDocItemsMAX_DOC_ITEM_SYS_ROLE_CODE.AsVariant;
    cdsCopyDocItemsDOC_ITEM_ACCESS_LEVEL_CODE.AsVariant:= cdsDocItemsDOC_ITEM_ACCESS_LEVEL_CODE.AsVariant;
    cdsCopyDocItemsIS_MIRRORED.AsVariant:= cdsDocItemsIS_MIRRORED.AsVariant;
    cdsCopyDocItemsMIRRORED_FILE_NAME.AsVariant:= cdsDocItemsMIRRORED_FILE_NAME.AsVariant;
    cdsCopyDocItemsMIRRORED_RELATIVE_PATH.AsVariant:= cdsDocItemsMIRRORED_RELATIVE_PATH.AsVariant;
    cdsCopyDocItemsFILE_CHANGE_EMPLOYEE_CODE.AsVariant:= cdsDocItemsFILE_CHANGE_EMPLOYEE_CODE.AsVariant;
    cdsCopyDocItemsFILE_CHANGE_DATE.AsVariant:= cdsDocItemsFILE_CHANGE_DATE.AsVariant;
    cdsCopyDocItemsFILE_CHANGE_TIME.AsVariant:= cdsDocItemsFILE_CHANGE_TIME.AsVariant;
  end;

  procedure AssignDocItemFields;
  begin
    cdsDocItemsDOC_ITEM_NO.AsVariant:= cdsCopyDocItemsDOC_ITEM_NO.AsVariant;
    cdsDocItemsDOC_ITEM_NAME.AsVariant:= cdsCopyDocItemsDOC_ITEM_NAME.AsVariant;
    cdsDocItemsDOC_ITEM_TYPE_CODE.AsVariant:= cdsCopyDocItemsDOC_ITEM_TYPE_CODE.AsVariant;
    cdsDocItemsIS_INACTIVE.AsVariant:= cdsCopyDocItemsIS_INACTIVE.AsVariant;
    cdsDocItemsNOTES.AsVariant:= cdsCopyDocItemsNOTES.AsVariant;
    cdsDocItemsDOC_ITEM_STORAGE_TYPE_CODE.AsVariant:= cdsCopyDocItemsDOC_ITEM_STORAGE_TYPE_CODE.AsVariant;
    cdsDocItemsRELATIVE_PATH.AsVariant:= cdsCopyDocItemsRELATIVE_PATH.AsVariant;
    cdsDocItemsFILE_NAME.AsVariant:= cdsCopyDocItemsFILE_NAME.AsVariant;
    cdsDocItemsDOC_ITEM_PATTERN_CODE.AsVariant:= cdsCopyDocItemsDOC_ITEM_PATTERN_CODE.AsVariant;
    cdsDocItemsSTORED_FILE_BRANCH_CODE.AsVariant:= cdsCopyDocItemsSTORED_FILE_BRANCH_CODE.AsVariant;
    cdsDocItemsSTORED_FILE_CODE.AsVariant:= cdsCopyDocItemsSTORED_FILE_CODE.AsVariant;
    cdsDocItemsFILE_EXTENSION_CODE.AsVariant:= cdsCopyDocItemsFILE_EXTENSION_CODE.AsVariant;
    cdsDocItemsSTORED_FILE_DATA.AsVariant:= cdsCopyDocItemsSTORED_FILE_DATA.AsVariant;
    cdsDocItemsIS_STORED_FILE_CHANGED.AsVariant:= cdsCopyDocItemsIS_STORED_FILE_CHANGED.AsVariant;
    cdsDocItemsMAX_DOC_ITEM_SYS_ROLE_CODE.AsVariant:= cdsCopyDocItemsMAX_DOC_ITEM_SYS_ROLE_CODE.AsVariant;
    cdsDocItemsDOC_ITEM_ACCESS_LEVEL_CODE.AsVariant:= cdsCopyDocItemsDOC_ITEM_ACCESS_LEVEL_CODE.AsVariant;
    cdsDocItemsIS_MIRRORED.AsVariant:= cdsCopyDocItemsIS_MIRRORED.AsVariant;
    cdsDocItemsMIRRORED_FILE_NAME.AsVariant:= cdsCopyDocItemsMIRRORED_FILE_NAME.AsVariant;
    cdsDocItemsMIRRORED_RELATIVE_PATH.AsVariant:= cdsCopyDocItemsMIRRORED_RELATIVE_PATH.AsVariant;

    if AKeepState then
      begin
        cdsDocItemsDEVELOP_EMPLOYEE_CODE.AsVariant:= cdsCopyDocItemsDEVELOP_EMPLOYEE_CODE.AsVariant;
        cdsDocItemsDEVELOP_DATE.AsVariant:= cdsCopyDocItemsDEVELOP_DATE.AsVariant;
        cdsDocItemsDEVELOP_TIME.AsVariant:= cdsCopyDocItemsDEVELOP_TIME.AsVariant;
        cdsDocItemsAUTHORIZE_EMPLOYEE_CODE.AsVariant:= cdsCopyDocItemsAUTHORIZE_EMPLOYEE_CODE.AsVariant;
        cdsDocItemsAUTHORIZE_DATE.AsVariant:= cdsCopyDocItemsAUTHORIZE_DATE.AsVariant;
        cdsDocItemsAUTHORIZE_TIME.AsVariant:= cdsCopyDocItemsAUTHORIZE_TIME.AsVariant;
        cdsDocItemsAPPROVE_EMPLOYEE_CODE.AsVariant:= cdsCopyDocItemsAPPROVE_EMPLOYEE_CODE.AsVariant;
        cdsDocItemsAPPROVE_DATE.AsVariant:= cdsCopyDocItemsAPPROVE_DATE.AsVariant;
        cdsDocItemsAPPROVE_TIME.AsVariant:= cdsCopyDocItemsAPPROVE_TIME.AsVariant;
        cdsDocItemsFILE_CHANGE_EMPLOYEE_CODE.AsVariant:= cdsCopyDocItemsFILE_CHANGE_EMPLOYEE_CODE.AsVariant;
        cdsDocItemsFILE_CHANGE_DATE.AsVariant:= cdsCopyDocItemsFILE_CHANGE_DATE.AsVariant;
        cdsDocItemsFILE_CHANGE_TIME.AsVariant:= cdsCopyDocItemsFILE_CHANGE_TIME.AsVariant;
      end
    else
      begin
        if not cdsCopyDocItemsDEVELOP_EMPLOYEE_CODE.IsNull then
          begin
            cdsDocItemsDEVELOP_EMPLOYEE_CODE.AsVariant:= cdsDocItemsCREATE_EMPLOYEE_CODE.AsVariant;
            cdsDocItemsDEVELOP_DATE.AsVariant:= cdsDocItemsCREATE_DATE.AsVariant;
            cdsDocItemsDEVELOP_TIME.AsVariant:= cdsDocItemsCREATE_TIME.AsVariant;
          end;  { if }

        UpdateStoredFileChangeFields;
      end;
  end;

var
  SaveDocItemsAutoCalcFields: Boolean;
  SaveDocItemSysRolesAutoCalcFields: Boolean;
  DocEmptinessRequirementCode: Variant;
  IsComplete: Boolean;
  CurrentDocCode: Integer;
  CurrentDocBranchCode: Integer;
begin
  Result:= 0;

  CurrentDocCode:= cdsDocsDOC_CODE.AsInteger;
  CurrentDocBranchCode:= cdsDocsDOC_BRANCH_CODE.AsInteger;

  if not LoadDoc(ADocBranchCode, ADocCode) then
    Exit;

  FCreatingLike:= True;
  try
    cdsCopyDocItems.CreateDataSet;
    try
      cdsCopyDocItemSysRoles.CreateDataSet;
      try
        cdsDocItems.DisableControls;
        try
          cdsDocItemSysRoles.DisableControls;
          try
            SaveDocItemsAutoCalcFields:= cdsDocItems.AutoCalcFields;
            cdsDocItems.AutoCalcFields:= False;
            try
              SaveDocItemSysRolesAutoCalcFields:= cdsDocItemSysRoles.AutoCalcFields;
              cdsDocItemSysRoles.AutoCalcFields:= False;
              try
                cdsDocItems.First;
                while not cdsDocItems.Eof do
                  begin
                    if (not ASkipInactive) or (not cdsDocItemsIS_INACTIVE.AsBoolean) then
                      begin
                        cdsCopyDocItems.Append;
                        try
                          AssignCopyDocItemFields;

                          cdsDocItemSysRoles.First;
                          while not cdsDocItemSysRoles.Eof do
                            begin
                              cdsCopyDocItemSysRoles.Append;
                              try
                                AssignCopyDocItemSysRoleFields;
                                cdsCopyDocItemSysRoles.Post;
                              except
                                cdsCopyDocItemSysRoles.Cancel;
                                raise;
                              end;  { try }

                              cdsDocItemSysRoles.Next;
                            end;  { while }

                          cdsCopyDocItems.Post;
                        except
                          cdsCopyDocItems.Cancel;
                          raise;
                        end;   { try }
                      end;

                    cdsDocItems.Next;
                  end;   { while }

                DocEmptinessRequirementCode:= cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger;
                IsComplete:= cdsDocsIS_COMPLETE.AsBoolean;

                if AOverrideCurrentDoc then
                  Assert(LoadDoc(CurrentDocBranchCode, CurrentDocCode))
                else
                  Result:= NewDoc;

                cdsDocItems.ForEach/
                  procedure begin
                    if cdsCopyDocItems.Locate(cdsCopyDocItemsDOC_ITEM_NO.FieldName, cdsDocItemsDOC_ITEM_NO.AsInteger, []) or
                       cdsCopyDocItems.Locate(cdsCopyDocItemsDOC_ITEM_NAME.FieldName, cdsDocItemsDOC_ITEM_NAME.AsString, []) then
                      raise Exception.Create(SCreateDocLikeKeyViolation);
                  end;

                cdsDocs.Edit;
                try
                  cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger:= DocEmptinessRequirementCode;
                  cdsDocsIS_COMPLETE.AsBoolean:= IsComplete;

                  cdsCopyDocItems.First;
                  while not cdsCopyDocItems.Eof do
                    begin
                      cdsDocItems.Append;
                      try
                        AssignDocItemFields;

                        cdsCopyDocItemSysRoles.Locate(
                          'DOC_BRANCH_CODE;DOC_CODE;DOC_ITEM_CODE',
                          VarArrayOf([
                            cdsCopyDocItemsDOC_BRANCH_CODE.AsInteger,
                            cdsCopyDocItemsDOC_CODE.AsInteger,
                            cdsCopyDocItemsDOC_ITEM_CODE.AsInteger]),
                          []);

                        while not cdsCopyDocItemSysRoles.Eof and
                              (cdsCopyDocItemSysRolesDOC_BRANCH_CODE.AsInteger = cdsCopyDocItemsDOC_BRANCH_CODE.AsInteger) and
                              (cdsCopyDocItemSysRolesDOC_CODE.AsInteger = cdsCopyDocItemsDOC_CODE.AsInteger) and
                              (cdsCopyDocItemSysRolesDOC_ITEM_CODE.AsInteger = cdsCopyDocItemsDOC_ITEM_CODE.AsInteger) do
                          begin
                            cdsDocItemSysRoles.Append;
                            try
                              AssignDocItemSysRoleFields;
                              cdsDocItemSysRoles.Post;
                            except
                              cdsDocItemSysRoles.Cancel;
                              raise;
                            end;  { try }

                            cdsCopyDocItemSysRoles.Next;
                          end;  { while }

                        cdsDocsMAX_DOC_ITEM_CODE.AsInteger:= cdsDocItemsDOC_ITEM_CODE.AsInteger;

                        cdsDocItems.Post;
                      except
                        cdsDocItems.Cancel;
                        raise;
                      end;  { try }

                      cdsCopyDocItems.Next;
                    end;  { while }

                  cdsDocs.Post;
                except
                  cdsDocs.Cancel;
                  raise;
                end;  { try }
              finally
                cdsDocItemSysRoles.AutoCalcFields:= SaveDocItemSysRolesAutoCalcFields;
              end;  { try }
            finally
              cdsDocItems.AutoCalcFields:= SaveDocItemsAutoCalcFields;
            end;  { try }
          finally
            cdsDocItemSysRoles.EnableControls;
          end;  { try }
        finally
          cdsDocItems.EnableControls;
        end;   { try }
      finally
        cdsCopyDocItemSysRoles.Close;
      end;  { try }
    finally
      cdsCopyDocItems.Close;
    end;   { try }
  finally
    FCreatingLike:= False;
  end;  { try }
end;

procedure TdmDocClient.CreateDocLike(ADocBranchCode, ADocCode: Integer;
  AKeepState: Boolean; ADestDocBranchField, ADestDocField: TField;
  AOverrideCurrentDoc, ASkipInactive: Boolean);
var
  NewDocCode: Integer;
begin
  NewDocCode:= CreateDocLike(ADocBranchCode, ADocCode, AKeepState, AOverrideCurrentDoc, ASkipInactive);

  if (NewDocCode = 0) then
    begin
      ADestDocBranchField.Clear;
      ADestDocField.Clear;
    end
  else
    begin
      ADestDocBranchField.AsInteger:= LoginContext.LocalBranchCode;
      ADestDocField.AsInteger:= NewDocCode;
    end;

  DataChanged;
end;

procedure TdmDocClient.CommitUpdates;
var
  SaveDocsFiltered: Boolean;
  SaveDocItemsFiltered: Boolean;
  SaveDocItemSysRolesFiltered: Boolean;
  DocBranchCode, DocCode, DocItemCode, DocItemSysRoleCode: Integer;
  StoredFileBranchCode, StoredFileCode: Integer;
  SaveDocsAutoCalcFields: Boolean;
  SaveDocItemsAutoCalcFields: Boolean;
  SaveDocItemSysRolesAutoCalcFields: Boolean;
begin
  if not Modified then
    Exit;

  FCommittingUpdates:= True;
  try
    cdsDocs.DisableControls;
    try
      cdsDocItems.DisableControls;
      try
        cdsDocItemSysRoles.DisableControls;
        try
          SaveDocsAutoCalcFields:= cdsDocs.AutoCalcFields;
          cdsDocs.AutoCalcFields:= False;
          try
            SaveDocItemsAutoCalcFields:= cdsDocItems.AutoCalcFields;
            cdsDocItems.AutoCalcFields:= False;
            try
              SaveDocItemSysRolesAutoCalcFields:= cdsDocItemSysRoles.AutoCalcFields;
              cdsDocItemSysRoles.AutoCalcFields:= False;
              try
                DocBranchCode:= cdsDocItemsDOC_BRANCH_CODE.AsInteger;
                DocCode:= cdsDocItemsDOC_CODE.AsInteger;
                DocItemCode:= cdsDocItemsDOC_ITEM_CODE.AsInteger;
                DocItemSysRoleCode:= cdsDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE.AsInteger;
                try
                  SaveDocsFiltered:= cdsDocs.Filtered;
                  cdsDocs.Filtered:= False;
                  try
                    SaveDocItemsFiltered:= cdsDocItems.Filtered;
                    cdsDocItems.Filtered:= False;
                    try
                      SaveDocItemSysRolesFiltered:= cdsDocItemSysRoles.Filtered;
                      cdsDocItemSysRoles.Filtered:= False;
                      try
                        cdsDocs.First;
                        while not cdsDocs.Eof do
                          if (TUpdateStatus(cdsDocsRECORD_STATUS.AsInteger) = usDeleted) then
                            begin
                              cdsDocItems.First;
                              while not (cdsDocItems.Bof and cdsDocItems.Eof) do
                                begin
                                  cdsDocItemSysRoles.First;
                                  while not (cdsDocItemSysRoles.Bof and cdsDocItemSysRoles.Eof) do
                                    cdsDocItemSysRoles.Delete;

                                  cdsDocItems.Delete;
                                end;  { while }

                              cdsDocs.Delete;
                            end
                          else
                            begin
                              cdsDocs.Edit;
                              try
                                cdsDocItems.First;
                                while not cdsDocItems.Eof do
                                  if (TUpdateStatus(cdsDocItemsRECORD_STATUS.AsInteger) = usDeleted) then
                                    begin
                                      cdsDocItemSysRoles.First;
                                      while not (cdsDocItemSysRoles.Bof and cdsDocItemSysRoles.Eof) do
                                        cdsDocItemSysRoles.Delete;

                                      cdsDocItems.Delete;
                                    end
                                  else
                                    begin
                                      cdsDocItems.Edit;
                                      try
                                        cdsDocItemSysRoles.First;
                                        while not cdsDocItemSysRoles.Eof do
                                          if (TUpdateStatus(cdsDocItemSysRolesRECORD_STATUS.AsInteger) = usDeleted) then
                                            cdsDocItemSysRoles.Delete
                                          else
                                            begin
                                              cdsDocItemSysRoles.Edit;
                                              try
                                                cdsDocItemSysRolesRECORD_STATUS.AsInteger:= Ord(usUnmodified);
                                                cdsDocItemSysRoles.Post;
                                              except
                                                cdsDocItemSysRoles.Cancel;
                                                raise;
                                              end;  { try }

                                              cdsDocItemSysRoles.Next;
                                            end;

                                        if (cdsDocItems_DI_STORAGE_BASE_TYPE_CODE.AsDocItemStorageBaseType = disbtInternal) and
                                           cdsDocItemsIS_STORED_FILE_CHANGED.AsBoolean then
                                          begin
                                            dmMain.SvrDoc.GetDocItemStoredFile(
                                              cdsDocItemsDOC_BRANCH_CODE.AsInteger,
                                              cdsDocItemsDOC_CODE.AsInteger,
                                              cdsDocItemsDOC_ITEM_CODE.AsInteger,
                                              StoredFileBranchCode,
                                              StoredFileCode);

                                            if (StoredFileBranchCode = 0) or (StoredFileCode = 0) then
                                              begin
                                                Assert(cdsDocItemsFILE_EXTENSION_CODE.IsNull);
                                                cdsDocItemsSTORED_FILE_BRANCH_CODE.Clear;
                                                cdsDocItemsSTORED_FILE_CODE.Clear;
                                              end
                                            else
                                              begin
                                                Assert(not cdsDocItemsFILE_EXTENSION_CODE.IsNull);
                                                cdsDocItemsSTORED_FILE_BRANCH_CODE.AsInteger:= StoredFileBranchCode;
                                                cdsDocItemsSTORED_FILE_CODE.AsInteger:= StoredFileCode;
                                              end;
                                          end;  { if }

                                        cdsDocItemsIS_STORED_FILE_CHANGED.AsBoolean:= False;
                                        cdsDocItemsSTORED_FILE_DATA.Clear;
                                        cdsDocItemsRECORD_STATUS.AsInteger:= Ord(usUnmodified);

                                        cdsDocItems.Post;
                                      except
                                        cdsDocItems.Cancel;
                                        raise;
                                      end;   { try }

                                      cdsDocItems.Next;
                                    end;

                                cdsDocsRECORD_STATUS.AsInteger:= Ord(usUnmodified);
                                cdsDocs.Post;
                              except
                                cdsDocs.Cancel;
                                raise;
                              end;   { try }

                              cdsDocs.Next;
                            end;

                        cdsDocs.MergeChangeLog;
                        SetModified(False);
                      finally
                        cdsDocItemSysRoles.Filtered:= SaveDocItemSysRolesFiltered;
                      end;  { try }
                    finally
                      cdsDocItems.Filtered:= SaveDocItemsFiltered;
                    end;
                  finally
                    cdsDocs.Filtered:= SaveDocsFiltered;
                  end;
                finally
                  cdsDocs.Locate('DOC_BRANCH_CODE; DOC_CODE', VarArrayOf([DocBranchCode, DocCode]), []);
                  cdsDocItems.Locate('DOC_BRANCH_CODE; DOC_CODE; DOC_ITEM_CODE', VarArrayOf([DocBranchCode, DocCode, DocItemCode]), []);
                  cdsDocItemSysRoles.Locate('DOC_BRANCH_CODE; DOC_CODE; DOC_ITEM_CODE; DOC_ITEM_SYS_ROLE_CODE', VarArrayOf([DocBranchCode, DocCode, DocItemCode, DocItemSysRoleCode]), []);
                end;  { try }
              finally
                cdsDocItemSysRoles.AutoCalcFields:= SaveDocItemSysRolesAutoCalcFields;
              end;  { try }
            finally
              cdsDocItems.AutoCalcFields:= SaveDocItemsAutoCalcFields;
            end;  { try }
          finally
            cdsDocs.AutoCalcFields:= SaveDocsAutoCalcFields;
          end;  { try }
        finally
          cdsDocItemSysRoles.EnableControls;
        end;  { try }
      finally
        cdsDocItems.EnableControls;
      end;   { try }
    finally
      cdsDocs.EnableControls;
    end;   { try }
  finally
    FCommittingUpdates:= False;
  end;  { try }
end;

procedure TdmDocClient.DeleteDocItem;
var
  DocBranchCode: Integer;
  DocCode: Integer;
  DocItemCode: Integer;
  SaveFiltered: Boolean;
  IsLocated: Boolean;
  rn: Integer;
begin
  cdsDocItems.DisableControls;
  try
    DocBranchCode:= cdsDocItemsDOC_BRANCH_CODE.AsInteger;
    DocCode:= cdsDocItemsDOC_CODE.AsInteger;
    DocItemCode:= cdsDocItemsDOC_ITEM_CODE.AsInteger;

    rn:= cdsDocItems.RecNo;
    try
      SaveFiltered:= cdsDocItems.Filtered;
      cdsDocItems.Filtered:= False;
      try
        IsLocated:=
          cdsDocItems.Locate(
            'DOC_BRANCH_CODE; DOC_CODE; DOC_ITEM_CODE', VarArrayOf([DocBranchCode, DocCode, DocItemCode]), []);

        Assert(IsLocated);

        cdsDocs.Edit;
        try
          cdsDocItems.Edit;
          try

            cdsDocItemSysRoles.First;
            while not (cdsDocItemSysRoles.Bof and cdsDocItemSysRoles.Eof) do
              begin
                cdsDocItemSysRoles.Edit;
                try
                  cdsDocItemSysRolesRECORD_STATUS.AsInteger:= Ord(usDeleted);
                  cdsDocItemSysRoles.Post;
                except
                  cdsDocItemSysRoles.Cancel;
                  raise;
                end;
              end;  { while }

            cdsDocItemsRECORD_STATUS.AsInteger:= Ord(usDeleted);
            cdsDocItems.Post;
          except
            cdsDocItems.Cancel;
            raise;
          end;   { try }

          cdsDocs.Post;
        except
          cdsDocs.Cancel;
          raise;
        end;  { try }

        DocItemEdited(True);
      finally
        cdsDocItems.Filtered:= SaveFiltered;
      end;  { try }
    finally
      if not cdsDocItems.IsEmpty then
        cdsDocItems.RecNo:= Min(rn, cdsDocItems.RecordCount);
    end;  { try }
  finally
    cdsDocItems.EnableControls;
  end;   { try }
end;

procedure TdmDocClient.DeleteDocItemSysRole;
var
  SaveDocItemSysRolesRecNo: Integer;
begin
  cdsDocItemSysRoles.DisableControls;
  try
    SaveDocItemSysRolesRecNo:= cdsDocItemSysRoles.RecNo;
    try
      cdsDocItems.Edit;
      try
        cdsDocItemSysRoles.Edit;
        try
          cdsDocItemSysRolesRECORD_STATUS.AsInteger:= Ord(usDeleted);

          cdsDocItemSysRoles.Post;
        except
          cdsDocItemSysRoles.Cancel;
          raise;
        end;  { try }

        cdsDocItems.Post;
      except
        cdsDocItems.Cancel;
        raise;
      end;  { try }
    finally
      if not cdsDocItemSysRoles.IsEmpty then
        cdsDocItemSysRoles.RecNo:= Min(SaveDocItemSysRolesRecNo, cdsDocItemSysRoles.RecordCount);
    end;  { try }
  finally
    cdsDocItemSysRoles.EnableControls;
  end;  { try }
end;

function TdmDocClient.DocItemsCount(ADocBranchCode,
  ADocCode: Integer): Integer;
begin
  if LoadDoc(ADocBranchCode, ADocCode) then
    Result:= cdsDocItems.RecordCount
  else
    Result:= 0;
end;

function TdmDocClient.DSDocItemsCount(ADocBranchCodeField,
  ADocCodeField: TField): Integer;
begin
  Result:= DocItemsCount(ADocBranchCodeField.AsInteger, ADocCodeField.AsInteger);
end;

function TdmDocClient.DSDocItemsCount(ADataSet: TDataSet;
  const ADocBranchCodeFieldName, ADocCodeFieldName: string): Integer;
begin
  Result:=
    DSDocItemsCount(
      ADataSet.FieldByName(ADocBranchCodeFieldName),
      ADataSet.FieldByName(ADocCodeFieldName)
    );
end;

function TdmDocClient.OpenDeptDoc(AEditMode: TEditMode; AControl: TControl;
  ADeptCode: Integer): Integer;
var
  DocBranchCode, DocCode: Integer;
begin
  dmMain.SvrDeptsTree.GetDeptDoc(ADeptCode, DocBranchCode, DocCode);
  Result:= OpenDoc(AEditMode, AControl, dotDept, DocBranchCode, DocCode);
end;

procedure TdmDocClient.OpenDncDoc(AControl: TControl; ADocOwnerType: TDocOwnerType;
  const ADocBranchCode, ADocCode: Integer; AMachineName: string;
  const AAdditionalInfo: Integer);
begin
  FDncReceiverMachineName:= AMachineName;
  InternalOpenDoc(emReadOnly, AControl, ADocOwnerType, ADocBranchCode, ADocCode, True, AAdditionalInfo);
end;

function TdmDocClient.GetLoginContext: TClientLoginContext;
begin
  Result:= dmMain.LoginContext;
end;

procedure TdmDocClient.DSRemoveDoc(ADocBranchCodeField,
  ADocCodeField: TField);
begin
  RemoveDoc(ADocBranchCodeField.AsInteger, ADocCodeField.AsInteger);
end;

procedure TdmDocClient.DSRemoveDoc(ADataSet: TDataSet;
  const ADocBranchCodeFieldName, ADocCodeFieldName: string);
begin
  DSRemoveDoc(
    ADataSet.FieldByName(ADocBranchCodeFieldName),
    ADataSet.FieldByName(ADocCodeFieldName)
  );
end;

procedure TdmDocClient.NewDoc(out ADocBranchCode, ADocCode: Integer);
begin
  ADocBranchCode:= LoginContext.LocalBranchCode;
  ADocCode:= NewDoc;
end;

procedure TdmDocClient.DSNewDoc(ADocBranchCodeField,
  ADocCodeField: TField);
begin
  Assert(ADocCodeField.IsNull);

  CheckEditMode(ADocCodeField.DataSet);

  ADocBranchCodeField.AsInteger:= LoginContext.LocalBranchCode;
  ADocCodeField.AsInteger:= NewDoc;
end;

procedure TdmDocClient.DSNewDoc(ADataSet: TDataSet;
  const ADocBranchCodeFieldName, ADocCodeFieldName: string);
begin
  DSNewDoc(
    ADataSet.FieldByName(ADocBranchCodeFieldName),
    ADataSet.FieldByName(ADocCodeFieldName)
  );
end;

procedure TdmDocClient.DSNewTemplateDoc(ADocBranchCodeField, ADocCodeField,
  ADocItemCode: TField);
begin
  DSNewDoc(ADocBranchCodeField, ADocCodeField);

  cdsDocItems.Append;
  cdsDocItemsDOC_ITEM_STORAGE_TYPE_CODE.AsInteger:= distcInternal;
  cdsDocItemsDOC_ITEM_NAME.AsString:= SContent;

  SetDocEmptinessRequirement(derNotEmpty);

  ADocItemCode.AsVariant:= cdsDocItemsDOC_ITEM_CODE.AsVariant;
end;

procedure TdmDocClient.ExecExternalDocItemData(AEditing, ASearchForVerbs: Boolean);
var
  ViewFileName: string;
  ViewFileData: OleVariant;
  ViewFileExt: string;
  SaveCursor: TCursor;
  FileExtension: string;
  LocalFileName: string;
  ExtensionIsLocated: Boolean;
begin
  Assert(cdsDocItems_DI_STORAGE_BASE_TYPE_CODE.AsDocItemStorageBaseType = disbtExternal);

  FileExtension:= ExtractFileExt(cdsDocItemsFILE_NAME.AsString);
  FileExtension:= Copy(FileExtension, 2, Length(FileExtension) - 1);
  ExtensionIsLocated:= cdsFileExtensions.Locate('FILE_EXTENSION_ABBREV', FileExtension, [loCaseInsensitive]);

  if (not ExtensionIsLocated) or
     cdsFileExtensionsDOC_ITEM_VIEW_GENERATOR_CODE.IsNull or
     ShiftIsPressed or
     AEditing then
    begin
      LocalFileName:= GetLocalFileName(cdsDocItemsFILE_NAME.AsString, cdsDocItemsRELATIVE_PATH.AsString);
      ExecDocFile(LocalFileName, ASearchForVerbs, cdsDocItemsDOC_ITEM_NAME.AsString);
    end
  else
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crHourGlass;
      try
        ViewFileData:=
          dmMain.SvrDocItemViewGenerators.GetExternalDocItemViewableFile(
            MakeFileName(
              MakeFilePath(LoginContext.DocsRemoteRootPath, cdsDocItemsRELATIVE_PATH.AsString),
              cdsDocItemsFILE_NAME.AsString),
            cdsFileExtensionsDOC_ITEM_VIEW_GENERATOR_CODE.AsInteger,
            ViewFileExt
          );
      finally
        Screen.Cursor:= SaveCursor;
      end;  { cursor try }

      ViewFileName:=
        GetTempFileFullName(
          cdsDocItemsDOC_BRANCH_CODE.AsInteger,
          cdsDocItemsDOC_CODE.AsInteger,
          cdsDocItemsDOC_ITEM_CODE.AsInteger,
          ViewFileExt);

      WriteVarArrayToFile(ViewFileData, ViewFileName);
      ExecDocFile(ViewFileName, ASearchForVerbs, cdsDocItemsDOC_ITEM_NAME.AsString);
    end;
end;

procedure TdmDocClient.UpdateStoredFileChangeFields;
var
  CurrentDateTime: TDateTime;
begin
  if cdsDocItemsSTORED_FILE_BRANCH_CODE.IsNull and
     cdsDocItemsSTORED_FILE_CODE.IsNull and
     cdsDocItemsSTORED_FILE_DATA.IsNull and
     cdsDocItemsFILE_EXTENSION_CODE.IsNull then
    begin
      cdsDocItemsFILE_CHANGE_EMPLOYEE_CODE.Clear;
      cdsDocItemsFILE_CHANGE_DATE.Clear;
      cdsDocItemsFILE_CHANGE_TIME.Clear;
    end
  else
    begin
      cdsDocItemsFILE_CHANGE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;

      CurrentDateTime:= ContextNow;
      cdsDocItemsFILE_CHANGE_DATE.AsDateTime:= DateOf(CurrentDateTime);
      cdsDocItemsFILE_CHANGE_TIME.AsDateTime:= TimeOf(CurrentDateTime);
    end;
end;

function TdmDocClient.UploadContentStorageFile(const ASourceFileName: string): string;
var
  FS: TClosableFileStream;
begin
  FS:= TClosableFileStream.Create(ASourceFileName, fmOpenRead, fmShareDenyWrite);
  try
    Result:= UploadContentStorageStream(FS, GetFileExtension(ASourceFileName))
  finally
    FreeAndNil(FS);
  end;
end;

function TdmDocClient.UploadContentStorageStream(const AStream: TStream; const AExtension: string): string;
var
  sha1: string;
  ContentStorageLocatorURL: string;
  http: TProgressHttp;
  DocumentMultiPartUploadInfoString: string;
begin
  sha1:= GetSha1HashValue(AStream);

  ContentStorageLocatorURL:= GetContentStorageLocatorURL();

  Screen.TempCursor(crHourGlass)/
    procedure begin
      DocumentMultiPartUploadInfoString:=
        dmMain.SvrDoc.GetDocumentUploadInfo(
          ContentStorageLocatorURL,
          AExtension,
          sha1,
          AStream.Size
        );
    end;

  http:= TProgressHttp.Create(True, TProgressHttp.DirectProxyUrl);
  try
    Result:=
      uContentStorage.Utils.UploadDocument(
        AStream,
        StringToDocumentMultiPartUploadInfo(DocumentMultiPartUploadInfoString),
        ContentStorageLocatorURL,

        procedure (const APartSizes: TArray<Int64>)
        var
          i: Integer;
        begin
          http.TaskCount:= Length(APartSizes);

          for i:= Low(APartSizes) to High(APartSizes) do
            http.SetTaskMaxProgress(i + 1, APartSizes[i]);
        end,

        function(const AHttpMethod, AURL: string; APartStream: TStream; AHeaders: TNetHeaders; const APartNo: Integer; const AResultHeaderName: string): string
        var
          ResponseProc: TProc<IHTTPResponse>;
          Res: string;
          HttpMethodInfo: TStringDynArray;
          UseFormFile: Boolean;
        begin
          Res:= '';

          ResponseProc:=
            procedure (AResponse: IHTTPResponse)
            begin
              if (AResultHeaderName <> '') then
                Res:= AResponse.HeaderValue[AResultHeaderName];
            end;

          HttpMethodInfo:= SplitString(AHttpMethod, '/');
          UseFormFile:= (Length(HttpMethodInfo) = 2) and SameText(HttpMethodInfo[1], 'FORMFILE');

          http.Execute(HttpMethodInfo[0], AURL, APartStream, AHeaders, UseFormFile, APartNo, ResponseProc);

          Result:= Res;
        end,

        function(const AContentStorageLocatorURL, AUploadID, AMultiPartUploadResultHeaderValues: string): string
        begin
          Result:= dmMain.SvrDoc.CommitUpload(AContentStorageLocatorURL, AUploadID, AMultiPartUploadResultHeaderValues)
        end
      );
  finally
    FreeAndNil(http);
  end;
end;

function TdmDocClient.GetDataFileName(const AExt, ATempDir: string ): string;
begin
  Result:=
    GetTempFileFullName(
      cdsDocItemsDOC_BRANCH_CODE.AsInteger,
      cdsDocItemsDOC_CODE.AsInteger,
      cdsDocItemsDOC_ITEM_CODE.AsInteger,
      LowerCase(AExt),
      ATempDir);
end;

procedure TdmDocClient.KillFile(const AFileName: string);
var
  ro: Boolean;
begin
  if FileExists(AFileName) then
    begin
      ro:= FileIsReadOnly(AFileName);

      if ro then
        FileSetReadOnly(AFileName, False);

      if not DeleteFile(AFileName) then
        begin
          if FileExists(AFileName) and ro then
            FileSetReadOnly(AFileName, True);
        end;  { if }
    end;  { if }
end;

procedure TdmDocClient.WriteXMLFile(const AFileName: string;
  ADocItemTemplateType: TDocItemTemplateType);
var
  s: string;
begin
  KillFile(AFileName);
  case FOpenDocOwnerType of
    dotDocItemTemplate:
      s:=
        dmMain.SvrDocXML.GetDocItemTemplateTypeXML(
          DocItemTemplateTypeToInt(ADocItemTemplateType));

    dotDocProfile:
      s:=
        dmMain.SvrDocXML.GetDocItemTemplateTypeXML(
          DocItemTemplateTypeToInt(DefaultDocItemTemplateType));

  else
    s:=
      dmMain.SvrDocXML.GetDocItemXML(
        DocOwnerTypeToInt(FOpenDocOwnerType),
        cdsDocItemsDOC_BRANCH_CODE.AsInteger,
        cdsDocItemsDOC_CODE.AsInteger,
        cdsDocItemsDOC_ITEM_CODE.AsInteger,
        FOpenDocAddidionalInfo);
  end;

  if (s <> '') then
    begin
      s:= DecodeDBTextMessage(s);
      WriteUTF8StringToFile(UTF8Encode(s), AFileName);
      FileSetReadOnly(AFileName, True);
    end;  { if }
end;

procedure TdmDocClient.WriteXSAFFile(const AFileName: string; ADocItemTemplateType: TDocItemTemplateType);
var
  DocItemTemplateType: TDocItemTemplateType;
  s: string;
begin
  KillFile(AFileName);

  case FOpenDocOwnerType of
    dotDocItemTemplate:
      DocItemTemplateType:= ADocItemTemplateType;

    dotDocProfile:
      DocItemTemplateType:= DefaultDocItemTemplateType;

  else
    DocItemTemplateType:= GetDocOwnerTypeTemplateType(FOpenDocOwnerType);
  end;

  s:=
    dmMain.SvrDocXML.GetDocItemTemplateTypeXML(
      DocItemTemplateTypeToInt(DocItemTemplateType));

  if (s <> '') then
    begin
      WriteUTF8StringToFile(UTF8Encode(s), AFileName);
      FileSetReadOnly(AFileName, True);
    end;  { if }
end;

procedure TdmDocClient.WritePatternFile(const AFileName: string; ADocItemExecType: TDocItemExecType);
var
  PatternStoredFileBranchCode, PatternStoredFileCode: Integer;
begin
  KillFile(AFileName);
  if not cdsDocItemsDOC_ITEM_PATTERN_CODE.IsNull then
    begin
      dmMain.SvrDoc.GetDocItemTemplateStoredFile(
        cdsDocItemsDOC_ITEM_PATTERN_CODE.AsInteger,
        PatternStoredFileBranchCode,
        PatternStoredFileCode);

      WriteVarArrayToFile(
        GetStoredFileData(PatternStoredFileBranchCode, PatternStoredFileCode),
        AFileName);

      if (ADocItemExecType = dietOpenReadOnly) then
        FileSetReadOnly(AFileName, True);
    end;  { if }
end;

function TdmDocClient.GetXMLFileName(const ADataFileName: string): string;
const
  SXMLFileExtension = '.xml';
begin
  Result:= ADataFileName + SXMLFileExtension;
end;

function TdmDocClient.GetXSAFFileName(const ADataFileName: string): string;
const
  SXSAFFileExtension = '.xsaf';
begin
  Result:= ADataFileName + SXSAFFileExtension;
end;

function TdmDocClient.GetPatternFileName(const ADataFileName: string): string;
var
  StoredFileBranchCode: Integer;
  StoredFileCode: Integer;
  FileExtension: string;
begin
  if cdsDocItemsDOC_ITEM_PATTERN_CODE.IsNull then
    Result:= ''
  else
    begin
      dmMain.SvrDoc.GetDocItemTemplateStoredFile(
        cdsDocItemsDOC_ITEM_PATTERN_CODE.AsInteger,
        StoredFileBranchCode,
        StoredFileCode);

      FileExtension:=
        dmMain.SvrDoc.GetStoredFileExtension(StoredFileBranchCode, StoredFileCode);

      Result:= ADataFileName + '.' + LowerCase(FileExtension);
    end;
end;

function TdmDocClient.CheckDocItemUserAccess(ADocItemExecType: TDocItemExecType): Boolean;
const
  EditingDocItemAccessLevels: array[Boolean] of TDocItemAccessLevel = (dialView, dialEdit);
begin
  if (ADocItemExecType = dietPersist) then
    begin
      if not UserHasAccessToDocItem(dialList) then
        Exit(False);

      if not UserHasAccessToDocItem(dialView) then
        raise Exception.Create(SDocItemViewDenied);
    end
  else
    CheckUserHasAccessToDocItem(EditingDocItemAccessLevels[(ADocItemExecType = dietOpenForEdit)]);

  Result:= True;
end;

function TdmDocClient.ExecInternalDocItemData(
  ADocItemExecType: TDocItemExecType;
  ADocItemTemplateType: TDocItemTemplateType; ASearchForVerbs: Boolean;
  const ADumpDir: string; const APersistReadOnly: Boolean): string;

  procedure WriteDataFile(const AFileName: string; const AData: TBytes);
  begin
    KillFile(AFileName);
    WriteBytesToFile(AData, AFileName);

    if (ADocItemExecType = dietOpenReadOnly) or
       ((ADocItemExecType = dietPersist) and APersistReadOnly) then
      FileSetReadOnly(AFileName, True);
  end;

var
  OldData, NewData: TBytes;
  XMLFileName, XSAFFileName, PatternFileName, DataFileName, ViewFileName: string;
  ViewFileData: OleVariant;
  ViewFileExt: string;
  SaveCursor: TCursor;
  StoredFileData: Variant;
  StoredFileBranchCode: Integer;
  StoredFileCode: Integer;
  TempDir: string;
begin
  Assert(cdsDocItems_DI_STORAGE_BASE_TYPE_CODE.AsDocItemStorageBaseType = disbtInternal);

  if (ADumpDir <> '') then
    TempDir:= ADumpDir
  else
    TempDir:= GetAppTempPath();

  ForceDirectories(TempDir);

  try
    if not CheckDocItemUserAccess(ADocItemExecType) then
      Exit('');

    if cdsDocItemsFILE_EXTENSION_CODE.IsNull then
      raise Exception.Create(SDocItemIsEmpty);

    DataFileName:= GetDataFileName(cdsDocItems_FILE_EXTENSION_ABBREV.AsString, TempDir);
    XMLFileName:= GetXMLFileName(DataFileName);
    XSAFFileName:= GetXSAFFileName(DataFileName);
    PatternFileName:= GetPatternFileName(DataFileName);

    Result:= DataFileName;

    if cdsDocItemsIS_STORED_FILE_CHANGED.AsBoolean then
      OldData:= cdsDocItemsSTORED_FILE_DATA.Value
    else
      begin
        dmMain.SvrDoc.GetDocItemStoredFile(
          cdsDocItemsDOC_BRANCH_CODE.AsInteger,
          cdsDocItemsDOC_CODE.AsInteger,
          cdsDocItemsDOC_ITEM_CODE.AsInteger,
          StoredFileBranchCode,
          StoredFileCode);

        if (StoredFileBranchCode = 0) and (StoredFileCode = 0) then
          begin
            StoredFileBranchCode:= cdsDocItemsSTORED_FILE_BRANCH_CODE.AsInteger;
            StoredFileCode:= cdsDocItemsSTORED_FILE_CODE.AsInteger;
          end;

        StoredFileData:=
          GetStoredFileData(
            StoredFileBranchCode,
            StoredFileCode);
        try
          OldData:= VarArrayToBytes(StoredFileData);
        finally
          StoredFileData:= Unassigned;
        end;
      end;

    if (ADocItemExecType = dietOpenForEdit) then
      begin
        if not cdsDocItemsIS_MIRRORED.AsBoolean then
          WriteXMLFile(XMLFileName, ADocItemTemplateType);
        try
          if not cdsDocItemsIS_MIRRORED.AsBoolean then
            WriteXSAFFile(XSAFFileName, ADocItemTemplateType);
          try
            WritePatternFile(PatternFileName, ADocItemExecType);
            try
              WriteDataFile(DataFileName, OldData);
              try
                if TfmExecFile.ShowForm(DataFileName) then
                  begin
                    NewData:= ReadFileToBytes(DataFileName);

                    if not SameBytes(NewData, OldData) then
                      begin
                        OldData:= nil;  // clear old data to free memory

                        CheckEditMode(cdsDocItems);

                        if (NewData = nil) then
                          cdsDocItemsSTORED_FILE_DATA.Clear
                        else
                          cdsDocItemsSTORED_FILE_DATA.Value:= NewData;

                        cdsDocItemsIS_STORED_FILE_CHANGED.AsBoolean:= True;

                        UpdateStoredFileChangeFields;
                      end;  { if }
                  end;  { if }
              finally
                KillFile(DataFileName);
              end;  { try }
            finally
              KillFile(PatternFileName);
            end;  { try }
          finally
            KillFile(XSAFFileName);
          end;  { try }
        finally
          KillFile(XMLFileName);
        end;  { try }
      end
    else
      begin
        if cdsDocItems_DOC_ITEM_VIEW_GENERATOR_CODE.IsNull or
           ShiftIsPressed or
           ((ADocItemExecType = dietPersist) and not APersistReadOnly) then
          begin
            if not cdsDocItemsIS_MIRRORED.AsBoolean then
              begin
                WriteXMLFile(XMLFileName, ADocItemTemplateType);
                WriteXSAFFile(XSAFFileName, ADocItemTemplateType);
              end;  { if }

            WritePatternFile(PatternFileName, ADocItemExecType);
            WriteDataFile(DataFileName, OldData);

            if (ADocItemExecType = dietOpenReadOnly) then
              ExecDocFile(DataFileName, ASearchForVerbs, cdsDocItemsDOC_ITEM_NAME.AsString);
          end
        else
          begin
            if cdsDocItemsIS_STORED_FILE_CHANGED.AsBoolean then
              begin
                raise Exception.Create(SCannotExecModifiedDocItem)
              end
            else
              begin
                SaveCursor:= Screen.Cursor;
                Screen.Cursor:= crHourGlass;
                try
                  ViewFileData:=
                    dmMain.SvrDocItemViewGenerators.GetInternalDocItemViewableFile(
                      DocOwnerTypeToInt(FOpenDocOwnerType),
                      cdsDocItemsDOC_BRANCH_CODE.AsInteger,
                      cdsDocItemsDOC_CODE.AsInteger,
                      cdsDocItemsDOC_ITEM_CODE.AsInteger,
                      FOpenDocAddidionalInfo,
                      ViewFileExt
                    );
                finally
                  Screen.Cursor:= SaveCursor;
                end;  { cursor try }

                ViewFileName:=
                  GetTempFileFullName(
                    cdsDocItemsDOC_BRANCH_CODE.AsInteger,
                    cdsDocItemsDOC_CODE.AsInteger,
                    cdsDocItemsDOC_ITEM_CODE.AsInteger,
                    ViewFileExt,
                    TempDir);

                WriteVarArrayToFile(ViewFileData, ViewFileName);

                if (ADocItemExecType = dietPersist) then
                  Result:= ViewFileName
                else
                  ExecDocFile(ViewFileName, ASearchForVerbs, cdsDocItemsDOC_ITEM_NAME.AsString);
              end;
          end;
      end;
  except
    on E: Exception do
      if (ADocItemExecType = dietPersist) then
        begin
          Result:= GetDataFileName(TempDir, TXTFileExt);
          WriteUTF8StringToFile(UTF8Encode(E.Message), Result);
        end
      else
        raise;
  end;
end;

procedure TdmDocClient.ExecExternalDocStorage(AExternalDocStorageCommand: TExternalDocStorageCommand);

const
  SDocIdMacro = '%DocId%';
  SDocIdFileNameMacro = '%DocIdFileName%';
  SDocIdFileNameExtension = 'id';

  function ExpandMacro(const ACommand, AMacro, AValue: string): string;
  begin
    Result:= StringReplace(ACommand, AMacro, AValue, [rfReplaceAll]);
  end;

  function ExpandMacros(const ACommand, ADocId, ADocIdFileName: string): string;
  begin
    Result:= ACommand;
    Result:= ExpandMacro(Result, SDocIdMacro, ADocId);
    Result:= ExpandMacro(Result, SDocIdFileNameMacro, ADocIdFileName);
  end;

  function GetDocIdFileName: string;
  begin
    Result:=
      GetTempFileFullName(
        cdsDocItemsDOC_BRANCH_CODE.AsInteger,
        cdsDocItemsDOC_CODE.AsInteger,
        cdsDocItemsDOC_ITEM_CODE.AsInteger,
        SDocIdFileNameExtension);
  end;

  procedure PrepareDocIdFile(const ADocIdFileName, ADocId: string);
  begin
    ForceDirectories(TPath.GetDirectoryName(ADocIdFileName));
    TFile.WriteAllText(ADocIdFileName, ADocId);
  end;

  function GetExternalDocId(const ADocIdFileName: string): string;
  begin
    Result:= TFile.ReadAllText(ADocIdFileName);
  end;

var
  DocId: string;
  DocIdFileName: string;
begin
  Assert(cdsDocItems_DI_STORAGE_BASE_TYPE_CODE.AsDocItemStorageBaseType = disbtCommandStorage);

  DocId:= cdsDocItemsFILE_NAME.AsString;

  DocIdFileName:= GetDocIdFileName;

  PrepareDocIdFile(DocIdFileName, DocId);

  case AExternalDocStorageCommand of
    edscSelect:
      begin
        ExecCommand(ExpandMacros(cdsDocItems_DI_STORAGE_TYPE_SELECT_COMMAND.AsString, DocId, DocIdFileName));

        if TfmSelectExternalDocId.ShowForm(DocIdFileName) then
          begin
            CheckEditMode(cdsDocItems);
            cdsDocItemsFILE_NAME.AsString:= GetExternalDocId(DocIdFileName);
          end;
      end;

    edscView:
      ExecCommand(ExpandMacros(cdsDocItems_DI_STORAGE_TYPE_VIEW_COMMAND.AsString, DocId, DocIdFileName));

    edscEdit:
      ExecCommand(ExpandMacros(cdsDocItems_DI_STORAGE_TYPE_EDIT_COMMAND.AsString, DocId, DocIdFileName));
  else
    raise Exception.Create('Unknown ExternalDocStorageCommand');
  end;
end;

procedure TdmDocClient.ExportContentStorageFile;
var
  DownloadURL: string;
  Ext: string;
  FileName: string;
begin
  DownloadURL:= GetDocumentDownloadURL();
  Ext:= ExtractURLDocumentExt(DownloadURL);
  FileName:= GetExportFileName(ExtractFileName(GetDataFileName(Ext)));

  if (FileName <> '') then
    DownloadContentStorageFile(DownloadURL, FileName);
end;

procedure TdmDocClient.ExportInternalDocItemDataToFile;
var
  StoredFileBranchCode: Integer;
  StoredFileCode: Integer;
  FileName: string;
begin
  FileName:=
    ExtractFileName(
      GetTempFileFullName(
        cdsDocItemsDOC_BRANCH_CODE.AsInteger,
        cdsDocItemsDOC_CODE.AsInteger,
        cdsDocItemsDOC_ITEM_CODE.AsInteger,
        cdsDocItems_FILE_EXTENSION_ABBREV.AsString));

  FileName:= GetExportFileName(FileName);

  if (FileName <> '') then
    begin
      if (UpperCase(GetFileExtension(FileName)) <> UpperCase(cdsDocItems_FILE_EXTENSION_ABBREV.AsString)) then
        raise Exception.CreateFmt(SFileMustHaveParamExtension, [cdsDocItems_FILE_EXTENSION_ABBREV.AsString]);

      if cdsDocItemsIS_STORED_FILE_CHANGED.AsBoolean then
        WriteBytesToFile(cdsDocItemsSTORED_FILE_DATA.Value, FileName)
      else
        begin
          dmMain.SvrDoc.GetDocItemStoredFile(
            cdsDocItemsDOC_BRANCH_CODE.AsInteger,
            cdsDocItemsDOC_CODE.AsInteger,
            cdsDocItemsDOC_ITEM_CODE.AsInteger,
            StoredFileBranchCode,
            StoredFileCode);

          WriteVarArrayToFile(
            GetStoredFileData(
              StoredFileBranchCode,
              StoredFileCode),
            FileName);
        end;
    end;  { if }
end;

procedure TdmDocClient.DoImportInternalDocItemDataFromFile(const AFileName: string);
var
  StoredFileData: TBytes;
  FileExtensionCode: Integer;
begin
  FileExtensionCode:= GetFileExtensionCode(GetFileExtension(AFileName));
  CheckFileExtensionAllowed(FileExtensionCode);
  StoredFileData:= ReadFileToBytes(AFileName);

  CheckEditMode(cdsDocItems);

  cdsDocItemsDOC_ITEM_STORAGE_TYPE_CODE.AsInteger:= distcInternal;

  cdsDocItemsFILE_EXTENSION_CODE.AsInteger:= FileExtensionCode;
  cdsDocItemsSTORED_FILE_DATA.Value:= StoredFileData;
  cdsDocItemsIS_STORED_FILE_CHANGED.AsBoolean:= True;

  UpdateStoredFileChangeFields;
end;

procedure TdmDocClient.DownloadContentStorageFile(const ADownloadURL: string;
  const ADestFileName: string; const AShowProgress: Boolean);
var
  FS: TFileStream;
  ext: string;
begin
  KillFile(ADestFileName);

  FS:= TFileStream.Create(ADestFileName, fmCreate);
  try
    ext:= DownloadContentStorageStream(ADownloadURL, FS, AShowProgress);
  finally
    FreeAndNil(FS);
  end;
end;

function TdmDocClient.DownloadContentStorageStream(const ADownloadURL: string;
  const ADestStream: TStream; const AShowProgress: Boolean): string;
var
  http: TProgressHttp;
begin
  http:= TProgressHttp.Create(AShowProgress, TProgressHttp.DirectProxyUrl);
  try
    http.Get(ADownloadURL, ADestStream);
  finally
    FreeAndNil(http);
  end;

  Result:= ExtractURLDocumentExt(ADownloadURL);
end;

procedure TdmDocClient.ImportContentStorageFromFile;
var
  ImportFileName: string;
begin
  ImportFileName:= GetImportFileName;
  if (ImportFileName <> '') then
    SetContentStorageFile(ImportFileName);
end;

procedure TdmDocClient.ImportContentStorageFromTemplate;
var
  ChosenTemplateCode: Integer;
  StoredFileBranchCode: Integer;
  StoredFileCode: Integer;
  FileExtensionCode: Integer;
  TemplateStoredFileData: Variant;
  TemplateBytes: TBytes;
  TemplateStream: TBytesStream;
  Ext: string;
  DocumentID: string;
  ContentStorageLocatorURL: string;
  DownloadURL: string;
begin
  ChosenTemplateCode:=
    TfmSelectDocItemTemplate.ShowForm(
      GetDocOwnerTypeTemplateType(OpenDocOwnerType),
      cdsDocItemsDOC_ITEM_TYPE_CODE.AsInteger);

  if (ChosenTemplateCode > 0) then
    begin
      dmMain.SvrDoc.GetDocItemTemplateContentStorage(ChosenTemplateCode, DocumentID, ContentStorageLocatorURL);

      if (DocumentID <> '') then
        begin
          DownloadURL:= GetDocumentDownloadURL(ContentStorageLocatorURL, DocumentID);
          Ext:= ExtractURLDocumentExt(DownloadURL);
          FileExtensionCode:= GetFileExtensionCode(Ext);
          CheckFileExtensionAllowed(FileExtensionCode);

          if SameText(ContentStorageLocatorURL, GetContentStorageLocatorURL) then
            begin
              SetContentStorageDocumentID(DocumentID);
            end
          else
            begin
              TemplateStream:= TBytesStream.Create(TemplateBytes);
              try
                DownloadContentStorageStream(DownloadURL, TemplateStream);
                SetContentStorageStream(TemplateStream, Ext);
              finally
                FreeAndNil(TemplateStream);
              end;
            end;
        end
      else
        begin
          dmMain.SvrDoc.GetDocItemTemplateStoredFile(
            ChosenTemplateCode,
            StoredFileBranchCode,
            StoredFileCode);

          FileExtensionCode:=
            dmMain.SvrDoc.GetStoredFileExtensionCode(StoredFileBranchCode, StoredFileCode);

          CheckFileExtensionAllowed(FileExtensionCode);

          Ext:=
            cdsFileExtensions.Lookup(
              cdsFileExtensionsFILE_EXTENSION_CODE.FieldName,
              FileExtensionCode,
              cdsFileExtensionsFILE_EXTENSION_ABBREV.FieldName);

          TemplateStoredFileData:=
            GetStoredFileData(
              StoredFileBranchCode,
              StoredFileCode);
          try
            TemplateBytes:= VarArrayToBytes(TemplateStoredFileData);

            TemplateStream:= TBytesStream.Create(TemplateBytes);
            try
              SetContentStorageStream(TemplateStream, Ext);
            finally
              FreeAndNil(TemplateStream);
            end;
          finally
            TemplateStoredFileData:= Unassigned;
          end;
        end;
    end;  { if }
end;

function TdmDocClient.GetImportFileName: string;
var
  FileName: string;
  FileExts: TStringDynArray;
  FileExt: string;
begin
  FileExts:= SplitString(cdsDocItems_DOC_ITEM_TYPE_FILE_EXTENSIONS.AsString, ';');
  if (Length(FileExts) > 0) then
    FileExt:= FileExts[0]
  else
    FileExt:= '';

  FileName:=
    ExtractFileName(
      GetTempFileFullName(
        cdsDocItemsDOC_BRANCH_CODE.AsInteger,
        cdsDocItemsDOC_CODE.AsInteger,
        cdsDocItemsDOC_ITEM_CODE.AsInteger,
        FileExt));

  OpenDialog.Filter:=
    dmMain.SvrDoc.GetDocItemTypeFileDialogFilter(cdsDocItemsDOC_ITEM_TYPE_CODE.AsInteger);
  OpenDialog.FileName:= FileName;
  OpenDialog.InitialDir:= '';

  if OpenDialog.Execute then
    Result:= OpenDialog.FileName
  else
    Result:= '';
end;

procedure TdmDocClient.ImportInternalDocItemDataFromFile;
var
  ImportFileName: string;
begin
  ImportFileName:= GetImportFileName;
  if (ImportFileName <> '') then
    DoImportInternalDocItemDataFromFile(ImportFileName);
end;

procedure TdmDocClient.ImportInternalDocItemDataFromTemplate;
var
  ChosenTemplateCode: Integer;
  StoredFileBranchCode: Integer;
  StoredFileCode: Integer;
  FileExtensionCode: Integer;
begin
  ChosenTemplateCode:=
    TfmSelectDocItemTemplate.ShowForm(
      GetDocOwnerTypeTemplateType(OpenDocOwnerType),
      cdsDocItemsDOC_ITEM_TYPE_CODE.AsInteger);

  if (ChosenTemplateCode > 0) then
    begin
      dmMain.SvrDoc.GetDocItemTemplateStoredFile(
        ChosenTemplateCode,
        StoredFileBranchCode,
        StoredFileCode);

      FileExtensionCode:=
        dmMain.SvrDoc.GetStoredFileExtensionCode(StoredFileBranchCode, StoredFileCode);

      CheckFileExtensionAllowed(FileExtensionCode);

      CheckEditMode(cdsDocItems);
      cdsDocItemsSTORED_FILE_BRANCH_CODE.AsInteger:= StoredFileBranchCode;
      cdsDocItemsSTORED_FILE_CODE.AsInteger:= StoredFileCode;
      cdsDocItemsSTORED_FILE_DATA.Value:= VarArrayToBytes(GetStoredFileData(StoredFileBranchCode, StoredFileCode));
      cdsDocItemsFILE_EXTENSION_CODE.AsInteger:= FileExtensionCode;
      cdsDocItemsIS_STORED_FILE_CHANGED.AsBoolean:= True;

      UpdateStoredFileChangeFields;
    end;  { if }
end;

procedure TdmDocClient.ConvertExternalDocItemToInternal;
var
  LocalFileName: string;
begin
  Assert(cdsDocItems_DI_STORAGE_BASE_TYPE_CODE.AsDocItemStorageBaseType = disbtExternal);

  LocalFileName:=
    MakeFileName(
      ExcludeTrailingPathDelimiter(dmMain.LoginContext.DocsLocalRootPath) + cdsDocItemsRELATIVE_PATH.AsString,
      cdsDocItemsFILE_NAME.AsString);

  DoImportInternalDocItemDataFromFile(LocalFileName);
end;

procedure TdmDocClient.ClearInternalDocItemData;
begin
  if (MessageDlgEx(SConfirmClearInternalDocItemData, mtConfirmation, mbOkCancel, 0) = mrOk) then
    begin
      CheckEditMode(cdsDocItems);
      cdsDocItemsFILE_EXTENSION_CODE.Clear;
      cdsDocItemsSTORED_FILE_BRANCH_CODE.Clear;
      cdsDocItemsSTORED_FILE_CODE.Clear;
      cdsDocItemsSTORED_FILE_DATA.Clear;
      cdsDocItemsIS_STORED_FILE_CHANGED.AsBoolean:= True;

      UpdateStoredFileChangeFields;
    end;  { if }
end;

procedure TdmDocClient.DocItemEdited(DocItemUnapproved: Boolean);
begin
  if Assigned(FOnDocItemEdited) then
    FOnDocItemEdited(DocItemUnapproved);
end;

function TdmDocClient.DocItemIdentifier: string;
begin
  Result:=
    Format('%s - %s - %s', [
      cdsDocItemsDOC_ITEM_CODE.AsString,
      cdsDocItems_DOC_ITEM_TYPE_NAME.AsString,
      cdsDocItemsDOC_ITEM_NAME.AsString
    ]);
end;

procedure TdmDocClient.UnapproveDocItems(ADocBranchCode, ADocCode: Integer;
  AllDocItems: Boolean; DocItemCodes: array of Integer);

  function DocItemFound: Boolean;
  var
    i: Integer;
  begin
    Result:= True;
    for i:= Low(DocItemCodes) to High(DocItemCodes) do
      if (cdsDocItemsDOC_ITEM_CODE.AsInteger = DocItemCodes[i]) then
        Exit;
    Result:= False;
  end;

var
  b: TBookmark;
  UnapprovedADocItem: Boolean;
begin
  if LoadDoc(ADocBranchCode, ADocCode) then
    begin
      cdsDocs.DisableControls;
      try
        cdsDocItems.DisableControls;
        try
          b:= cdsDocItems.Bookmark;
          try
            cdsDocs.Edit;
            try
              UnapprovedADocItem:= False;
              cdsDocItems.First;
              while not cdsDocItems.Eof do
                begin
                  if (AllDocItems or DocItemFound) and
                     (not cdsDocItemsAPPROVE_EMPLOYEE_CODE.IsNull) then
                    begin
                      cdsDocItems.Edit;
                      try
                        cdsDocItemsAPPROVE_EMPLOYEE_CODE.Clear;
                        cdsDocItemsAPPROVE_DATE.Clear;
                        cdsDocItemsAPPROVE_TIME.Clear;

                        cdsDocItems.Post;
                      except
                        cdsDocItems.Cancel;
                        raise;
                      end;  { try }

                      UnapprovedADocItem:= True;
                    end;

                  cdsDocItems.Next;
                end;  { while }

              if UnapprovedADocItem then
                cdsDocs.Post
              else
                cdsDocs.Cancel;
            except
              cdsDocs.Cancel;
              raise;
            end;  { try }
          finally
            cdsDocItems.Bookmark:= b;
          end;  { try }
        finally
          cdsDocItems.EnableControls;
        end;  { try }
      finally
        cdsDocs.EnableControls;
      end;  { try }

      DataChanged;
    end;
end;

procedure TdmDocClient.UnprepareDocItemCreateLike;
begin
  FDocItemRecordData:= Unassigned;
end;

function TdmDocClient.DocItemCount(ADocBranchCode,
  ADocCode: Integer; ActiveOnly: Boolean): Integer;
begin
  if LoadDoc(ADocBranchCode, ADocCode) then
    begin
      if ActiveOnly then
        Result:= VarToInt(cdsDocItems_ACTIVE_DOC_ITEM_COUNT.AsVariant)
      else
        Result:= cdsDocItems.RecordCount;
    end
  else
    Result:= 0;
end;

function TdmDocClient.DSDocItemCount(ADocBranchCodeField,
  ADocCodeField: TField; ActiveOnly: Boolean): Integer;
begin
  Result:=
    DocItemCount(ADocBranchCodeField.AsInteger, ADocCodeField.AsInteger, ActiveOnly);
end;

function TdmDocClient.DSDocItemCount(ADataSet: TDataSet;
  ActiveOnly: Boolean; const ADocBranchCodeFieldName, ADocCodeFieldName: string): Integer;
begin
  Result:=
    DSDocItemCount(
      ADataSet.FieldByName(ADocBranchCodeFieldName),
      ADataSet.FieldByName(ADocCodeFieldName),
      ActiveOnly
    );
end;

function TdmDocClient.AuthorizedDocItemCount(ADocBranchCode,
  ADocCode: Integer; ActiveOnly: Boolean): Integer;
begin
  if LoadDoc(ADocBranchCode, ADocCode) then
    begin
      if ActiveOnly then
        Result:= VarToInt(cdsDocItems_AUTHORIZED_ACTIVE_DI_COUNT.AsVariant)
      else
        Result:= VarToInt(cdsDocItems_AUTHORIZED_DOC_ITEM_COUNT.AsVariant);
    end
  else
    Result:= 0;
end;

function TdmDocClient.DSAuthorizedDocItemCount(ADocBranchCodeField,
  ADocCodeField: TField; ActiveOnly: Boolean): Integer;
begin
  Result:=
    AuthorizedDocItemCount(ADocBranchCodeField.AsInteger, ADocCodeField.AsInteger, ActiveOnly);
end;

function TdmDocClient.DSAuthorizedDocItemCount(ADataSet: TDataSet;
  ActiveOnly: Boolean; const ADocBranchCodeFieldName, ADocCodeFieldName: string): Integer;
begin
  Result:=
    DSAuthorizedDocItemCount(
      ADataSet.FieldByName(ADocBranchCodeFieldName),
      ADataSet.FieldByName(ADocCodeFieldName),
      ActiveOnly
    );
end;

function TdmDocClient.ApprovedDocItemCount(ADocBranchCode,
  ADocCode: Integer; ActiveOnly: Boolean): Integer;
begin
  if LoadDoc(ADocBranchCode, ADocCode) then
    begin
      if ActiveOnly then
        Result:= VarToInt(cdsDocItems_APPROVED_ACTIVE_DOC_ITEM_COUNT.AsVariant)
      else
        Result:= VarToInt(cdsDocItems_APPROVED_DOC_ITEM_COUNT.AsVariant);
    end
  else
    Result:= 0;
end;

function TdmDocClient.DSApprovedDocItemCount(ADocBranchCodeField,
  ADocCodeField: TField; ActiveOnly: Boolean): Integer;
begin
  Result:=
    ApprovedDocItemCount(ADocBranchCodeField.AsInteger, ADocCodeField.AsInteger, ActiveOnly);
end;

function TdmDocClient.DSApprovedDocItemCount(ADataSet: TDataSet;
  ActiveOnly: Boolean; const ADocBranchCodeFieldName, ADocCodeFieldName: string): Integer;
begin
  Result:=
    DSApprovedDocItemCount(
      ADataSet.FieldByName(ADocBranchCodeFieldName),
      ADataSet.FieldByName(ADocCodeFieldName),
      ActiveOnly
    );
end;

function TdmDocClient.GetStoredFileData(AStoredFileBranchCode,
  AStoredFileCode: Integer): Variant;
begin
  Application.ProcessMessages;

  Result:=
    dmMain.SvrDoc.GetStoredFileData(AStoredFileBranchCode, AStoredFileCode);
end;

function TdmDocClient.GetTempFileFullName(ADocBranchCode, ADocCode,
  ADocItemCode: Integer; const AFileExtension: string;
  const ATempDir: string): string;
var
  TempDir: string;
begin
  if (ATempDir <> '') then
    TempDir:= ATempDir
  else
    TempDir:= GetAppTempPath;

  Result:=
    ExpandFileName(
      MakeFileName(
        TempDir,
        ( IntToStr(ADocBranchCode) +
          '-' +
          IntToStr(ADocCode) +
          '-' +
          IntToStr(ADocItemCode) +
          '.' +
          AFileExtension
        )
      )
    );
end;

procedure TdmDocClient.SetHasDocItemsField(
  AHasDocItemsField: TField);
begin
  Assert(Assigned(AHasDocItemsField));
  Assert(AHasDocItemsField.DataSet.Active);
  if DSIsCurrent(AHasDocItemsField.DataSet) then
    begin
      CheckEditMode(AHasDocItemsField.DataSet);
      AHasDocItemsField.AsBoolean:= (DSDocItemCount(AHasDocItemsField.DataSet, False)> 0);
    end;
end;

function TdmDocClient.GetFileExtensionCode(
  AFileExtensionAbbrev: string): Integer;
begin
  if cdsFileExtensions.Locate(cdsFileExtensionsFILE_EXTENSION_ABBREV.FieldName, AFileExtensionAbbrev, [loCaseInsensitive]) then
    Result:= cdsFileExtensionsFILE_EXTENSION_CODE.AsInteger
  else
    raise Exception.Create(SInvalidFileExtension);
end;

function TdmDocClient.FinalizedDoc(ADocBranchCode,
  ADocCode: Integer): Boolean;
begin
  Result:=
    LoadDoc(ADocBranchCode, ADocCode) and
    cdsDocsIS_COMPLETE.AsBoolean and
    (VarToInt(cdsDocItems_APPROVED_ACTIVE_DOC_ITEM_COUNT.AsVariant) =
     VarToInt(cdsDocItems_ACTIVE_DOC_ITEM_COUNT.AsVariant));
end;

function TdmDocClient.DSFinalizedDoc(ADocBranchCodeField,
  ADocCodeField: TField): Boolean;
begin
  Result:=
    FinalizedDoc(ADocBranchCodeField.AsInteger, ADocCodeField.AsInteger);
end;

function TdmDocClient.DSFinalizedDoc(ADataSet: TDataSet;
  const ADocBranchCodeFieldName, ADocCodeFieldName: string): Boolean;
begin
  Result:=
    DSFinalizedDoc(
      ADataSet.FieldByName(ADocBranchCodeFieldName),
      ADataSet.FieldByName(ADocCodeFieldName)
    );
end;

function TdmDocClient.ProductFinalizedDoc(AProductCode: Integer): Boolean;
var
  DocBranchCode, DocCode: Integer;
begin
  dmMain.SvrProductsTree.GetProductDoc(AProductCode, DocBranchCode, DocCode);
  Result:= FinalizedDoc(DocBranchCode, DocCode);
end;

procedure TdmDocClient.CheckFileExtensionAllowed(
  AFileExtensionCode: Integer);
begin
  if not dmMain.SvrDoc.IsFileExtensionAllowed(AFileExtensionCode, cdsDocItemsDOC_ITEM_TYPE_CODE.AsInteger) then
    raise Exception.Create(SFileExtensionNotAllowedForDocItemType);
end;

procedure TdmDocClient.cdsDocItemsDOC_ITEM_STORAGE_TYPE_CODEChange(
  Sender: TField);
begin
  inherited;
  if not cdsDocItemsFILE_NAME.IsNull then
    cdsDocItemsFILE_NAME.Clear;
end;

procedure TdmDocClient.cdsDocItemsDOC_ITEM_TYPE_CODEValidate(
  Sender: TField);
begin
  inherited;
  if not FLoadingDoc and
     not FRemovingDoc and
     not FDeletingDoc and
     not FCommittingUpdates and
     not FCreatingLike and
     (cdsDocItems_DI_STORAGE_BASE_TYPE_CODE.AsDocItemStorageBaseType = disbtInternal) and
     not cdsDocItemsFILE_EXTENSION_CODE.IsNull then
    begin
      CheckFileExtensionAllowed(cdsDocItemsFILE_EXTENSION_CODE.AsInteger);
    end;  { if }
end;

procedure TdmDocClient.cdsDocsNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger:= DocEmptinessRequirementToInt(derUnknown);
  cdsDocsIS_COMPLETE.AsBoolean:= False;
end;

procedure TdmDocClient.SetDefaultDocItemTemplateType(
  const ADefaultDocItemTemplateType: TDocItemTemplateType);
begin
  FDefaultDocItemTemplateType:= ADefaultDocItemTemplateType;
end;

procedure TdmDocClient.SetDocEmptinessRequirement(
  AValue: TDocEmptinessRequirement);
var
  MyEditState: Boolean;
begin
  if (DocEmptinessRequirementToInt(AValue) = cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger) then
    Exit;

  MyEditState:= not (cdsDocs.State in dsEditModes);

  if MyEditState then
    cdsDocs.Edit;
  try
    cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant:= IntToVar(DocEmptinessRequirementToInt(AValue));

    if MyEditState then
      cdsDocs.Post;
  except
    if MyEditState then
      cdsDocs.Cancel;
    raise;
  end;  { try }
end;

procedure TdmDocClient.SetDocIsComplete(AValue: Boolean);
var
  MyEditState: Boolean;
begin
  if (AValue = cdsDocsIS_COMPLETE.AsBoolean) then
    Exit;

  MyEditState:= not (cdsDocs.State in dsEditModes);

  if MyEditState then
    cdsDocs.Edit;
  try
    cdsDocsIS_COMPLETE.AsBoolean:= AValue;

    if MyEditState then
      cdsDocs.Post;
  except
    if MyEditState then
      cdsDocs.Cancel;
    raise;
  end;  { try }
end;

procedure TdmDocClient.ExecDocItemDataReadOnly(ASearchForVerbs: Boolean);
var
  SavedCursor: TCursor;
  CurrentTickCount: Cardinal;
  PassedTicks: Cardinal;
  OpenDocItemWaitTicks: Cardinal;
  WaitTicks: Cardinal;
begin
  SavedCursor:= Screen.Cursor;
  Screen.Cursor:= crHourglass;
  try
    CurrentTickCount:= GetTickCount;

    if (FPrevExecTickCount <> 0) and
       not ((cdsDocItems_DI_STORAGE_BASE_TYPE_CODE.AsDocItemStorageBaseType = disbtContentStorage) and ControlIsPressed) then
      begin
        PassedTicks:= TickCountDiff(FPrevExecTickCount, CurrentTickCount);
        OpenDocItemWaitTicks:= OpenDocItemsWaitSeconds * 1000;
        if (OpenDocItemWaitTicks > PassedTicks) then
          begin
            WaitTicks:= OpenDocItemWaitTicks - PassedTicks;
            Sleep(WaitTicks);
          end;
      end;

    FPrevExecTickCount:= CurrentTickCount;

    case cdsDocItems_DI_STORAGE_BASE_TYPE_CODE.AsDocItemStorageBaseType of
      disbtInternal:
        ExecInternalDocItemData(dietOpenReadOnly, dittNone, ASearchForVerbs);

      disbtExternal:
        ExecExternalDocItemData(False, ASearchForVerbs);

      disbtCommandStorage:
        ExecExternalDocStorage(edscView);

      disbtContentStorage:
        if ControlIsPressed then
          TfmHyperlink.ShowForm(GetDocumentDownloadURL())
        else
          ExecContentStorage(dietOpenReadOnly)
    end;
  finally
    Screen.Cursor:= SavedCursor;
  end;  { try }
end;

procedure TdmDocClient.SetModified(const Value: Boolean);
begin
  if Value then
    FLastModifiedSavePoint:= SavePoint
  else
    FLastModifiedSavePoint:= 0;

  if (Value <> FModified) then
    begin
      FFirstModifiedSavePoint:= FLastModifiedSavePoint;
      FModified:= Value;
    end;  { if }
end;

function TdmDocClient.GetSavePoint: Integer;
begin
  Assert(cdsDocs.Active);
  Result:= cdsDocs.SavePoint;
end;

procedure TdmDocClient.SetSavePoint(const Value: Integer);
begin
  Assert(cdsDocs.Active);
  cdsDocs.SavePoint:= Value;

  if (Value < FFirstModifiedSavePoint) then
    SetModified(False);
end;

function TdmDocClient.GetBookmark: Variant;
begin
  Result:=
    VarArrayOf([
      cdsDocsDOC_BRANCH_CODE.AsVariant,
      cdsDocsDOC_CODE.AsVariant,
      cdsDocItemsDOC_ITEM_CODE.AsVariant
    ]);
end;

function TdmDocClient.GetDocumentDownloadURL(const AContentStorageLocatorURL, ADocumentID: string): string;
begin
  Result:=
    Screen.TempCursor(crHourGlass)/
      function: string begin
        Result:= dmMain.SvrDoc.GetDocumentDownloadURL(AContentStorageLocatorURL, ADocumentID);
      end;
end;

function TdmDocClient.GetDocumentDownloadURL: string;
begin
  Result:= GetDocumentDownloadURL(GetContentStorageLocatorURL(), cdsDocItemsFILE_NAME.AsString);
end;

function TdmDocClient.GetContentStorageLocatorURL: string;
begin
  Result:=
    cdsDocItemStorageTypes.Lookup(
      cdsDocItemStorageTypesDOC_ITEM_STORAGE_TYPE_CODE.FieldName,
      cdsDocItemsDOC_ITEM_STORAGE_TYPE_CODE.AsInteger,
      cdsDocItemStorageTypesCONTENT_STORAGE_ADDRESS.FieldName
    );
end;

procedure TdmDocClient.SetBookmark(const Value: Variant);
begin
  Assert(VarIsArray(Value));
  Assert(VarArrayLowBound(Value, 1) = 0);
  Assert(VarArrayHighBound(Value, 1) = 2);

  if (not VarIsNull(Value[0])) and
     (not VarIsNull(Value[1])) and
     ( (Value[0] <> cdsDocsDOC_BRANCH_CODE.AsVariant) or
       (Value[1] <> cdsDocsDOC_CODE.AsVariant) or
       (Value[2] <> cdsDocItemsDOC_ITEM_CODE.AsVariant) ) then
    begin
      if (not LoadDoc(Value[0], Value[1])) or
         ( (not VarIsNull(Value[2])) and
           (not cdsDocItems.Locate('DOC_BRANCH_CODE; DOC_CODE; DOC_ITEM_CODE', Value, [])) ) then
        raise Exception.CreateFmt('%s: Invalid bookmark', [Name]);
    end;
end;

procedure TdmDocClient.SetContentStorageDocumentID(const ADocumentID: string);
begin
  CheckEditMode(cdsDocItems);

  cdsDocItemsFILE_NAME.AsString:= ADocumentID;

  SetFileChangeInfo;
end;

procedure TdmDocClient.SetContentStorageFile(const ASourceFileName: string);
begin
  CheckEditMode(cdsDocItems);

  cdsDocItemsFILE_NAME.AsString:= UploadContentStorageFile(ASourceFileName);

  SetFileChangeInfo;
end;

procedure TdmDocClient.SetContentStorageStream(const AStream: TStream; const AExtension: string);
begin
  CheckEditMode(cdsDocItems);

  cdsDocItemsFILE_NAME.AsString:= UploadContentStorageStream(AStream, AExtension);

  SetFileChangeInfo;
end;

procedure TdmDocClient.SetFileChangeInfo;
var
  NowDateTime: TDateTime;
begin
  NowDateTime:= ContextNow;
  cdsDocItemsFILE_CHANGE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDocItemsFILE_CHANGE_DATE.AsDateTime:= DateOf(NowDateTime);
  cdsDocItemsFILE_CHANGE_TIME.AsDateTime:= TimeOf(NowDateTime);
end;

procedure TdmDocClient.ClearContentStorage;
begin
  if (MessageDlgEx(SConfirmClearInternalDocItemData, mtConfirmation, mbOkCancel, 0) = mrOk) then
    begin
      CheckEditMode(cdsDocItems);
      cdsDocItemsFILE_NAME.Clear;
    end;  { if }
end;

procedure TdmDocClient.ClearDocs;
var
  SaveCursor: TCursor;
  SaveDocsFiltered: Boolean;
  SaveDocItemsFiltered: Boolean;
  SaveDocItemSysRolesFiltered: Boolean;
begin
  Assert(cdsDocs.Active);

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    SaveDocsFiltered:= cdsDocs.Filtered;
    cdsDocs.Filtered:= False;
    try
      SaveDocItemsFiltered:= cdsDocItems.Filtered;
      cdsDocItems.Filtered:= False;
      try
        SaveDocItemSysRolesFiltered:= cdsDocItemSysRoles.Filtered;
        cdsDocItemSysRoles.Filtered:= False;
        try
          FRemovingDoc:= True;
          try
            while (cdsDocs.RecordCount > 0) do
              begin
                while (cdsDocItems.RecordCount > 0) do
                  begin
                    while (cdsDocItemSysRoles.RecordCount > 0) do
                      cdsDocItemSysRoles.Delete;

                    cdsDocItems.Delete;
                  end;

                cdsDocs.Delete;
              end;  { while }

            cdsDocs.MergeChangeLog;
            SetModified(False);
          finally
            FRemovingDoc:= False;
          end;  { try }
        finally
          cdsDocItemSysRoles.Filtered:= SaveDocItemSysRolesFiltered;
        end;  { try }
      finally
        cdsDocItems.Filtered:= SaveDocItemsFiltered;
      end;  { try }
    finally
      cdsDocs.Filtered:= SaveDocsFiltered;
    end;  { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;  { cursor try }
end;

procedure TdmDocClient.CheckDocItemSysRolesUniqueIndexes;
var
  SaveIndexName: string;
  b: TBookmark;
  PrevSysRoleCode: Integer;
begin
  with cdsDocItemSysRoles do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          SaveIndexName:= IndexName;
          try
            IndexName:= 'idxSysRole';
            PrevSysRoleCode:= 0;
            First;
            while not Eof do
              begin
                if (PrevSysRoleCode = FieldByName('SYS_ROLE_CODE').AsInteger) then
                  begin
                    b:= Bookmark;
                    raise Exception.Create(SDuplicateSysRole);
                  end;  { if }

                PrevSysRoleCode:= FieldByName('SYS_ROLE_CODE').AsInteger;

                Next;
              end;  { while }
          finally
            IndexName:= SaveIndexName;
          end;  { try }
        finally
          Bookmark:= b;
        end;  { try }
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TdmDocClient.CheckDocItemsUniqueIndexes;
var
  SaveIndexName: string;
  b: TBookmark;
  PrevName: string;
  PrevNo: Integer;
begin
  with cdsDocItems do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          SaveIndexName:= IndexName;
          try
            IndexName:= 'idxName';
            PrevName:= '';
            First;
            while not Eof do
              begin
                if (PrevName = FieldByName('DOC_ITEM_NAME').AsString) then
                  raise Exception.Create(SDuplicateName);

                PrevName:= FieldByName('DOC_ITEM_NAME').AsString;

                Next;
              end;  { while }

            IndexName:= 'idxNo';
            PrevNo:= 0;
            First;
            while not Eof do
              begin
                if (PrevNo = FieldByName('DOC_ITEM_NO').AsInteger) then
                  raise Exception.Create(SDuplicateNo);

                PrevNo:= FieldByName('DOC_ITEM_NO').AsInteger;

                Next;
              end;  { while }
          finally
            IndexName:= SaveIndexName;
          end;  { try }
        finally
          Bookmark:= b;
        end;  { try }
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TdmDocClient.SetOpenDocOwnerType(
  ADocOwnerType: TDocOwnerType);
begin
  FOpenDocOwnerType:= ADocOwnerType;
end;

procedure TdmDocClient.cdsDocItemsRECORD_STATUSChange(Sender: TField);
begin
  inherited;
  cdsDocItemsIS_NOT_DELETED.AsBoolean:=
    (cdsDocItemsRECORD_STATUS.AsInteger <> Ord(usDeleted));
end;

procedure TdmDocClient.PrepareDocItemCreateLike;
begin
  FDocItemRecordData:= GetRecordData(cdsDocItems, True);
end;

function TdmDocClient.ProductAuthorizedDoc(AProductCode: Integer): Boolean;
var
  DocBranchCode, DocCode: Integer;
begin
  dmMain.SvrProductsTree.GetProductDoc(AProductCode, DocBranchCode, DocCode);

  Result:=
    LoadDoc(DocBranchCode, DocCode) and
    cdsDocsIS_COMPLETE.AsBoolean and
    (VarToInt(cdsDocItems_AUTHORIZED_ACTIVE_DI_COUNT.AsVariant) =
     VarToInt(cdsDocItems_ACTIVE_DOC_ITEM_COUNT.AsVariant));
end;

procedure TdmDocClient.CheckUserHasEditAccessToAllDocItems;
var
  SaveDocItemsBookmark: TBookmark;
  SaveDocsBookmark: TBookmark;
begin
  SaveDocItemsBookmark:= cdsDocItems.Bookmark;
  try
    SaveDocsBookmark:= cdsDocs.Bookmark;
    try
      cdsDocs.First;
      while not cdsDocs.Eof do
        begin
          cdsDocItems.First;
          while not cdsDocItems.Eof do
            begin
              if (cdsDocItemsRECORD_STATUS.AsInteger in [Ord(usModified), Ord(usInserted)]) and
                 not UserHasAccessToDocItem(dialEdit) then
                begin
                  raise Exception.Create(SUserMustHaveEditAccessToAllDocItems);
                end;  { if }

              cdsDocItems.Next;
            end;  { while }

          cdsDocs.Next;
        end;  { while }
    finally
      cdsDocs.Bookmark:= SaveDocsBookmark;
    end;  { try }
  finally
    cdsDocItems.Bookmark:= SaveDocItemsBookmark;
  end;  { try }
end;

procedure TdmDocClient.cdsDocsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FActiveDocItemCountBeforeEdit:= VarToInt(cdsDocItems_ACTIVE_DOC_ITEM_COUNT.Value);
end;

procedure TdmDocClient.cdsDocsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  FActiveDocItemCountBeforeEdit:= 0;
end;

procedure TdmDocClient.cdsDocsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  FActiveDocItemCountBeforeEdit:= 0;
end;

procedure TdmDocClient.cdsDocItemTypesCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (cdsDocItemTypesDOC_ITEM_TYPE_FILE_EXTENSIONS.AsString = '') then
    cdsDocItemTypes_DOC_ITEM_TYPE_EXTENDED_NAME.AsString:=
      cdsDocItemTypesDOC_ITEM_TYPE_NAME.AsString
  else
    cdsDocItemTypes_DOC_ITEM_TYPE_EXTENDED_NAME.AsString:=
      cdsDocItemTypesDOC_ITEM_TYPE_NAME.AsString +
      ' (' +
      cdsDocItemTypesDOC_ITEM_TYPE_FILE_EXTENSIONS.AsString +
      ')';
end;

procedure TdmDocClient.cdsFileExtensionsCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsFileExtensions_FILE_EXTENSION_EXTENDED_NAME.AsString:=
    cdsFileExtensionsFILE_EXTENSION_NAME.AsString +
    ' (' +
    cdsFileExtensionsFILE_EXTENSION_ABBREV.AsString +
    ')';
end;

procedure TdmDocClient.AssignLoadedDocFields;
begin
  cdsDocsDOC_BRANCH_CODE.AsInteger:= cdsLoadDocDOC_BRANCH_CODE.AsInteger;
  cdsDocsDOC_CODE.AsInteger:= cdsLoadDocDOC_CODE.AsInteger;
  cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger:= cdsLoadDocDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger;
  cdsDocsIS_COMPLETE.AsInteger:= cdsLoadDocIS_COMPLETE.AsInteger;
end;  { AssignDocFields }

procedure TdmDocClient.AssignLoadedDocItemFields;
begin
  cdsDocItemsDOC_BRANCH_CODE.AsVariant:= cdsLoadDocItemsDOC_BRANCH_CODE.AsVariant;
  cdsDocItemsDOC_CODE.AsVariant:= cdsLoadDocItemsDOC_CODE.AsVariant;
  cdsDocItemsDOC_ITEM_CODE.AsVariant:= cdsLoadDocItemsDOC_ITEM_CODE.AsVariant;
  cdsDocItemsDOC_ITEM_NO.AsVariant:= cdsLoadDocItemsDOC_ITEM_NO.AsVariant;
  cdsDocItemsDOC_ITEM_NAME.AsVariant:= cdsLoadDocItemsDOC_ITEM_NAME.AsVariant;
  cdsDocItemsDOC_ITEM_TYPE_CODE.AsVariant:= cdsLoadDocItemsDOC_ITEM_TYPE_CODE.AsVariant;
  cdsDocItemsIS_INACTIVE.AsVariant:= cdsLoadDocItemsIS_INACTIVE.AsVariant;
  cdsDocItemsNOTES.AsVariant:= cdsLoadDocItemsNOTES.AsVariant;
  cdsDocItemsCREATE_EMPLOYEE_CODE.AsVariant:= cdsLoadDocItemsCREATE_EMPLOYEE_CODE.AsVariant;
  cdsDocItemsCREATE_DATE.AsVariant:= cdsLoadDocItemsCREATE_DATE.AsVariant;
  cdsDocItemsCREATE_TIME.AsVariant:= cdsLoadDocItemsCREATE_TIME.AsVariant;
  cdsDocItemsCHANGE_EMPLOYEE_CODE.AsVariant:= cdsLoadDocItemsCHANGE_EMPLOYEE_CODE.AsVariant;
  cdsDocItemsCHANGE_DATE.AsVariant:= cdsLoadDocItemsCHANGE_DATE.AsVariant;
  cdsDocItemsCHANGE_TIME.AsVariant:= cdsLoadDocItemsCHANGE_TIME.AsVariant;
  cdsDocItemsDEVELOP_EMPLOYEE_CODE.AsVariant:= cdsLoadDocItemsDEVELOP_EMPLOYEE_CODE.AsVariant;
  cdsDocItemsDEVELOP_DATE.AsVariant:= cdsLoadDocItemsDEVELOP_DATE.AsVariant;
  cdsDocItemsDEVELOP_TIME.AsVariant:= cdsLoadDocItemsDEVELOP_TIME.AsVariant;
  cdsDocItemsAUTHORIZE_EMPLOYEE_CODE.AsVariant:= cdsLoadDocItemsAUTHORIZE_EMPLOYEE_CODE.AsVariant;
  cdsDocItemsAUTHORIZE_DATE.AsVariant:= cdsLoadDocItemsAUTHORIZE_DATE.AsVariant;
  cdsDocItemsAUTHORIZE_TIME.AsVariant:= cdsLoadDocItemsAUTHORIZE_TIME.AsVariant;
  cdsDocItemsAPPROVE_EMPLOYEE_CODE.AsVariant:= cdsLoadDocItemsAPPROVE_EMPLOYEE_CODE.AsVariant;
  cdsDocItemsAPPROVE_DATE.AsVariant:= cdsLoadDocItemsAPPROVE_DATE.AsVariant;
  cdsDocItemsAPPROVE_TIME.AsVariant:= cdsLoadDocItemsAPPROVE_TIME.AsVariant;
  cdsDocItemsDOC_ITEM_STORAGE_TYPE_CODE.AsVariant:= cdsLoadDocItemsDOC_ITEM_STORAGE_TYPE_CODE.AsVariant;
  cdsDocItemsRELATIVE_PATH.AsVariant:= cdsLoadDocItemsRELATIVE_PATH.AsVariant;
  cdsDocItemsFILE_NAME.AsVariant:= cdsLoadDocItemsFILE_NAME.AsVariant;
  cdsDocItemsDOC_ITEM_PATTERN_CODE.AsVariant:= cdsLoadDocItemsDOC_ITEM_PATTERN_CODE.AsVariant;
  cdsDocItemsSTORED_FILE_BRANCH_CODE.AsVariant:= cdsLoadDocItemsSTORED_FILE_BRANCH_CODE.AsVariant;
  cdsDocItemsSTORED_FILE_CODE.AsVariant:= cdsLoadDocItemsSTORED_FILE_CODE.AsVariant;
  cdsDocItemsFILE_EXTENSION_CODE.AsVariant:= cdsLoadDocItemsFILE_EXTENSION_CODE.AsVariant;
  cdsDocItemsIS_MIRRORED.AsVariant:= cdsLoadDocItemsIS_MIRRORED.AsVariant;
  cdsDocItemsMIRRORED_FILE_NAME.AsVariant:= cdsLoadDocItemsMIRRORED_FILE_NAME.AsVariant;
  cdsDocItemsMIRRORED_RELATIVE_PATH.AsVariant:= cdsLoadDocItemsMIRRORED_RELATIVE_PATH.AsVariant;
  cdsDocItemsFILE_CHANGE_EMPLOYEE_CODE.AsVariant:= cdsLoadDocItemsFILE_CHANGE_EMPLOYEE_CODE.AsVariant;
  cdsDocItemsFILE_CHANGE_DATE.AsVariant:= cdsLoadDocItemsFILE_CHANGE_DATE.AsVariant;
  cdsDocItemsFILE_CHANGE_TIME.AsVariant:= cdsLoadDocItemsFILE_CHANGE_TIME.AsVariant;
end;

procedure TdmDocClient.AssignLoadedDocItemSysRoleFields;
begin
  cdsDocItemSysRolesDOC_BRANCH_CODE.AsVariant:= cdsLoadDocItemSysRolesDOC_BRANCH_CODE.AsVariant;
  cdsDocItemSysRolesDOC_CODE.AsVariant:= cdsLoadDocItemSysRolesDOC_CODE.AsVariant;
  cdsDocItemSysRolesDOC_ITEM_CODE.AsVariant:= cdsLoadDocItemSysRolesDOC_ITEM_CODE.AsVariant;
  cdsDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE.AsVariant:= cdsLoadDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE.AsVariant;
  cdsDocItemSysRolesSYS_ROLE_CODE.AsVariant:= cdsLoadDocItemSysRolesSYS_ROLE_CODE.AsVariant;
  cdsDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE.AsVariant:= cdsLoadDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE.AsVariant;
end;

function TdmDocClient.InternalLoadDoc(ADocLoadMethod: TDocLoadMethod;
  AParams: array of const): Integer;
var
  ParamsVarArray: Variant;
  i: Integer;
  MaxDocItemCode: Integer;
  MaxDocItemSysRoleCode: Integer;
  MaxDocItemAccessLevelCode: Integer;
  cdsDocsWasEmpty: Boolean;
  Res: Integer;
begin
  FLoadingDoc:= True;
  try
    ParamsVarArray:= VarArrayCreate([Low(AParams), High(AParams)], varVariant);
    for i:= Low(AParams) to High(AParams) do
      ParamsVarArray[i]:= VarRecToVariant(AParams[i]);

    FLoadDocParams:= VarArrayCreate([0, 1], varVariant);
    FLoadDocParams[0]:= DocLoadMethodToInt(ADocLoadMethod);
    FLoadDocParams[1]:= ParamsVarArray;

    cdsDocsWasEmpty:= cdsDocs.IsEmpty;

    cdsLoadDoc.TempOpen/
      procedure begin
        Res:= cdsLoadDoc.RecordCount;

        if (Res > 0) then
          cdsLoadDocItems.TempOpen/
            cdsLoadDocItemSysRoles.TempOpen/
              cdsDocs.TempDisableControls/
                cdsDocItems.TempDisableControls/
                  cdsDocs.TempAutoCalcFields(False)/
                    cdsDocItems.TempAggregatesActive(False)/
                      cdsDocItems.TempAutoCalcFields(False)/
                        cdsDocItemSysRoles.TempDisableControls/
                          cdsDocItemSysRoles.TempAutoCalcFields(False)/
                            cdsLoadDoc.ForEach/
                              procedure begin
                                if cdsDocsWasEmpty or not LocateDoc(cdsLoadDocDOC_BRANCH_CODE.AsInteger, cdsLoadDocDOC_CODE.AsInteger) then
                                  begin
                                    cdsDocs.SafeAppend/
                                      procedure begin
                                        AssignLoadedDocFields;
                                        cdsDocsRECORD_STATUS.AsInteger:= Ord(usUnmodified);
                                      end;

                                    cdsDocs.SafeEdit/
                                      procedure begin
                                        MaxDocItemCode:= 0;

                                        cdsLoadDocItems.ForEach/
                                          procedure begin
                                            cdsDocItems.SafeAppend/
                                              procedure begin
                                                AssignLoadedDocItemFields;
                                                cdsDocItemsRECORD_STATUS.AsInteger:= Ord(usUnmodified);
                                              end;

                                            cdsDocItems.SafeEdit/
                                              procedure begin
                                                MaxDocItemSysRoleCode:= 0;
                                                MaxDocItemAccessLevelCode:= 0;

                                                cdsLoadDocItemSysRoles.ForEach/
                                                  procedure begin
                                                    cdsDocItemSysRoles.SafeAppend/
                                                      procedure begin
                                                        AssignLoadedDocItemSysRoleFields;
                                                        cdsDocItemSysRolesRECORD_STATUS.AsInteger:= Ord(usUnmodified);
                                                      end;

                                                    if (cdsDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE.AsInteger > MaxDocItemSysRoleCode) then
                                                      MaxDocItemSysRoleCode:= cdsDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE.AsInteger;

                                                    if LoginContext.IsUserInSysRole(cdsDocItemSysRolesSYS_ROLE_CODE.AsInteger) and
                                                       (cdsDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE.AsInteger > MaxDocItemAccessLevelCode) then
                                                      MaxDocItemAccessLevelCode:= cdsDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE.AsInteger;

                                                    cdsLoadDocItemSysRoles.Next;
                                                  end;  { while }

                                                cdsDocItemsMAX_DOC_ITEM_SYS_ROLE_CODE.AsInteger:= MaxDocItemSysRoleCode;
                                                cdsDocItemsDOC_ITEM_ACCESS_LEVEL_CODE.AsInteger:= MaxDocItemAccessLevelCode;
                                              end;

                                            if (cdsDocItemsDOC_ITEM_CODE.AsInteger > MaxDocItemCode) then
                                              MaxDocItemCode:= cdsDocItemsDOC_ITEM_CODE.AsInteger;
                                          end;

                                        cdsDocsMAX_DOC_ITEM_CODE.AsInteger:= MaxDocItemCode;
                                      end;
                                  end;  { if not LocateDoc }
                              end;
      end;
  finally
    FLoadingDoc:= False;
  end;   { try }

  Result:= Res;
end;

function TdmDocClient.LocateDoc(ADocBranchCode,
  ADocCode: Integer): Boolean;
begin
  Result:=
    cdsDocs.Locate('DOC_BRANCH_CODE; DOC_CODE', VarArrayOf([ADocBranchCode, ADocCode]), []);
end;

procedure TdmDocClient.cdsLoadDocBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= FLoadDocParams;
end;

function TdmDocClient.GetNewDocCode: Integer;
begin
  if cdsReservedDocCodes.IsEmpty then
    Result:= dmMain.SvrDoc.GetNewDocCode
  else
    begin
      cdsReservedDocCodes.First;
      Result:= cdsReservedDocCodesDOC_CODE.AsInteger;
      cdsReservedDocCodes.Delete;
    end;
end;

procedure TdmDocClient.ReserveDocCodes(ACount: Integer);
begin
  with cdsReserveDocCodes do
    TempDisableCache/
      procedure begin
        Params.ParamByName('DOC_CODE_COUNT').AsInteger:= ACount;

        Open;
        try
          while not Eof do
            begin
              cdsReservedDocCodes.AppendRecord([cdsReserveDocCodesDOC_CODE.AsInteger]);
              Next;
            end;  { while }
        finally
          Close;
        end;  { try }
      end;  { with }
end;

procedure TdmDocClient.CheckUserHasAccessToDocItem(ADocItemAccessLevel: TDocItemAccessLevel);
begin
  if not UserHasAccessToDocItem(ADocItemAccessLevel) then
    case ADocItemAccessLevel of
      dialNone: ;
        // do nothing
      dialList:
        raise Exception.Create(SUserMustHaveListAccess);
      dialView:
        raise Exception.Create(SUserMustHaveViewAccess);
      dialEdit:
        raise Exception.Create(SUserMustHaveEditAccess);
    end;  { case }
end;

function TdmDocClient.UserHasAccessToDocItem(ADocItemAccessLevel: TDocItemAccessLevel): Boolean;
begin
  Result:= (IntToDocItemAccessLevel(cdsDocItemsDOC_ITEM_ACCESS_LEVEL_CODE.AsInteger) >= ADocItemAccessLevel);
end;

{ TDoc }

constructor TDoc.Create(const ADocBranchCode, ADocCode: Integer);
begin
  FDocBranchCode:= ADocBranchCode;
  FDocCode:= ADocCode;
end;

end.

