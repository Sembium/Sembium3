unit dMain;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, dBaseDataModule, uClientLoginContext, ImgList,
  AbmesFields, AbmesClientDataSet, DBGridEh, DBClient, ExtCtrls, uUtils,
  uClientPeriods, JvComponentBase, JvTimeLimit, JvAlarms,
  Generics.Collections, WideStrings, SqlExpr,
  uClientProxies, AbmesDatasnapClientProxy, DbxDatasnap, JvImageList,
  GIFImg, DBXCommon, uNestProc, JvCipher, uVariantMemoryMap, IPPeerClient,
  uDefaultPrinters, AbmesDSProviderConnection, uSection,
  AbmesCachingSQLConnection, Datasnap.DSConnect, Data.DBXTransport, Data.DbxCompressionFilter,
  System.ImageList, uIdentityServer.Constants, uConnectionUtils;

type
  TDateInfo = record
    WorkdayNo: Integer;
    IsWorkday: Boolean;
  end;

type
  TIntegerDate = Integer;

type
  TdmMain = class(TBaseDataModule)
    ilActions: TImageList;
    cdsTheDates: TAbmesClientDataSet;
    cdsTheDatesTHE_DATE: TAbmesSQLTimeStampField;
    cdsTheDatesACCUMULATED_WORKDAYS: TAbmesFloatField;
    cdsTheDatesIS_WORKDAY: TAbmesFloatField;
    ilDocs: TImageList;
    ilBudgetClassesTreeIcons: TImageList;
    dspcSession: TAbmesDSProviderConnection;
    dspcCommon: TAbmesDSProviderConnection;
    dspcProductsTreeEditor: TAbmesDSProviderConnection;
    dspcProductsTree: TAbmesDSProviderConnection;
    dspcVIM: TAbmesDSProviderConnection;
    dspcProductQuantitiesTree: TAbmesDSProviderConnection;
    dspcDoc: TAbmesDSProviderConnection;
    dspcDeptsTree: TAbmesDSProviderConnection;
    dspcDeptsTreeEditor: TAbmesDSProviderConnection;
    dspcShifts: TAbmesDSProviderConnection;
    dspcEngineering: TAbmesDSProviderConnection;
    dspcModelMovements: TAbmesDSProviderConnection;
    dspcLogin: TAbmesDSProviderConnection;
    dspcFilter: TAbmesDSProviderConnection;
    dspcSales: TAbmesDSProviderConnection;
    dspcSaleOrders: TAbmesDSProviderConnection;
    dspcSalesCommon: TAbmesDSProviderConnection;
    dspcProductTreeNodeFilter: TAbmesDSProviderConnection;
    dspcModelReports: TAbmesDSProviderConnection;
    dspcGroupSales: TAbmesDSProviderConnection;
    dspcBaseGroups: TAbmesDSProviderConnection;
    dspcExtensions: TAbmesDSProviderConnection;
    dspcSaleReports: TAbmesDSProviderConnection;
    dspcParRelProducts: TAbmesDSProviderConnection;
    dspcXModels: TAbmesDSProviderConnection;
    dspcProductionProductsTree: TAbmesDSProviderConnection;
    dspcStore: TAbmesDSProviderConnection;
    dspcDeliveries: TAbmesDSProviderConnection;
    dspcDeficit: TAbmesDSProviderConnection;
    dspcStoreRequests: TAbmesDSProviderConnection;
    dspcInvoices: TAbmesDSProviderConnection;
    dspcParamProductTreeNodeFilter: TAbmesDSProviderConnection;
    dspcNeeds: TAbmesDSProviderConnection;
    dspcCompanies: TAbmesDSProviderConnection;
    dspcCapacity: TAbmesDSProviderConnection;
    dspcCompany: TAbmesDSProviderConnection;
    dspcModelChanges: TAbmesDSProviderConnection;
    dspcMfgReports: TAbmesDSProviderConnection;
    dspcDeptTreeNodeFilter: TAbmesDSProviderConnection;
    dspcHumanResource: TAbmesDSProviderConnection;
    dspcSpecifications: TAbmesDSProviderConnection;
    dspcBudget: TAbmesDSProviderConnection;
    dspcNonDbUtils: TAbmesDSProviderConnection;
    dspcAdmin: TAbmesDSProviderConnection;
    dspcDocItemViewGenerators: TAbmesDSProviderConnection;
    dspcDocXML: TAbmesDSProviderConnection;
    dspcOrganisationTasks: TAbmesDSProviderConnection;
    dspcExceptEvents: TAbmesDSProviderConnection;
    dspcFinance: TAbmesDSProviderConnection;
    dspcProcesses: TAbmesDSProviderConnection;
    dspcEmployeeAvailability: TAbmesDSProviderConnection;
    conSession: TConnectionBroker;
    conCommon: TConnectionBroker;
    conProductsTreeEditor: TConnectionBroker;
    conProductsTree: TConnectionBroker;
    conVIM: TConnectionBroker;
    conProductQuantitiesTree: TConnectionBroker;
    conDoc: TConnectionBroker;
    conDeptsTree: TConnectionBroker;
    conDeptsTreeEditor: TConnectionBroker;
    conShifts: TConnectionBroker;
    conEngineering: TConnectionBroker;
    conModelMovements: TConnectionBroker;
    conLogin: TConnectionBroker;
    conFilter: TConnectionBroker;
    conSales: TConnectionBroker;
    conSaleOrders: TConnectionBroker;
    conSalesCommon: TConnectionBroker;
    conProductTreeNodeFilter: TConnectionBroker;
    conModelReports: TConnectionBroker;
    conGroupSales: TConnectionBroker;
    conBaseGroups: TConnectionBroker;
    conExtensions: TConnectionBroker;
    conSaleReports: TConnectionBroker;
    conParRelProducts: TConnectionBroker;
    conXModels: TConnectionBroker;
    conProductionProductsTree: TConnectionBroker;
    conCapacity: TConnectionBroker;
    conDeliveries: TConnectionBroker;
    conDeficit: TConnectionBroker;
    conStoreRequests: TConnectionBroker;
    conInvoices: TConnectionBroker;
    conCompany: TConnectionBroker;
    conHumanResource: TConnectionBroker;
    conCompanies: TConnectionBroker;
    conStore: TConnectionBroker;
    conParamProductTreeNodeFilter: TConnectionBroker;
    conModelChanges: TConnectionBroker;
    conMfgReports: TConnectionBroker;
    conDeptTreeNodeFilter: TConnectionBroker;
    conNeeds: TConnectionBroker;
    conSpecifications: TConnectionBroker;
    conBudget: TConnectionBroker;
    conNonDbUtils: TConnectionBroker;
    conAdmin: TConnectionBroker;
    conDocItemViewGenerators: TConnectionBroker;
    conDocXML: TConnectionBroker;
    conOrganisationTasks: TConnectionBroker;
    conExceptEvents: TConnectionBroker;
    conFinance: TConnectionBroker;
    conProcesses: TConnectionBroker;
    conEmployeeAvailability: TConnectionBroker;
    ilSpecLines: TImageList;
    conDatasnap: TAbmesCachingSQLConnection;
    ilPrcDistributionStatuses: TImageList;
    ilPrcDistributionStatusesGrey: TImageList;
    ilDeptTypes: TImageList;
    conCompanyFilter: TConnectionBroker;
    dspcCompanyFilter: TAbmesDSProviderConnection;
    ilPrcDataFilter: TJvImageList;
    tmrFreeLoginInfoMemoryMapFile: TTimer;
    cdsUserOptions: TAbmesClientDataSet;
    cdsUserOptionsPICTURE: TBlobField;
    tmrDateCheck: TTimer;
    tmrCheckCloseConnectionRequested: TTimer;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure tmrDateCheckTimer(Sender: TObject);
    procedure tmrFreeLoginInfoMemoryMapFileTimer(Sender: TObject);
    procedure conDatasnapBeforeConnect(Sender: TObject);
    procedure DSProviderConnectionException(E: Exception; var Retry: Boolean);
    procedure conDatasnapBeforeDisconnect(Sender: TObject);
    procedure conDatasnapAfterConnect(Sender: TObject);
    procedure tmrCheckCloseConnectionRequestedTimer(Sender: TObject);
  private
    FLoginContext: TClientLoginContext;

    FAuthenticationTokenIssuer: TAuthenticationTokenIssuer;
    FLoginName: string;
    FPassword: string;
    FDBName: string;
    FLoggedIn: Boolean;

    FDBNameParam: string;
    FServerComputerNamesParam: string;

    FDateInfo: array[MinDate..MaxDate] of TDateInfo;
    FWorkdays: array[1..MaxDate-MinDate+1] of TIntegerDate;

    FParentWindowHandle: THandle;

    FDateIntervalFormat: TDateIntervalFormat;
    FDateFormat: TDateFormat;
    FConnection: TCustomConnection;
    FIsContextDateParameterSpecified: Boolean;
    FStartupContextDateOverride: TDateTime;
    FIsSessionReadOnly: Boolean;
    FRunReadOnly: Boolean;

    FServerNames: string;

    FSvrSession: TdmSessionProxyClient;
    FSvrDeptsTree: TdmDeptsTreeProxyClient;
    FSvrProductsTree: TdmProductsTreeProxyClient;
    FSvrCommon: TdmCommonProxyClient;
    FSvrSaleOrders: TdmSaleOrdersProxyClient;
    FSvrSales: TdmSalesProxyClient;
    FSvrDeliveries: TdmDeliveriesProxyClient;
    FSvrStoreRequests: TdmStoreRequestsProxyClient;
    FSvrCompanies: TdmCompaniesProxyClient;
    FSvrCompany: TdmCompanyProxyClient;
    FSvrSpecifications: TdmSpecificationsProxyClient;
    FSvrStore: TdmStoreProxyClient;
    FSvrSalesCommon: TdmSalesCommonProxyClient;
    FSvrDeptsTreeEditor: TdmDeptsTreeEditorProxyClient;
    FSvrProductsTreeEditor: TdmProductsTreeEditorProxyClient;
    FSvrProductQuantitiesTree: TdmProductQuantitiesTreeProxyClient;
    FSvrDeficit: TdmDeficitProxyClient;
    FSvrGroupSales: TdmGroupSalesProxyClient;
    FSvrParRelProducts: TdmParRelProductsProxyClient;
    FSvrInvoices: TdmInvoicesProxyClient;
    FSvrVIM: TdmVIMProxyClient;
    FSvrLogin: TdmLoginProxyClient;
    FSvrAdmin: TdmAdminProxyClient;
    FSvrSaleReports: TdmSaleReportsProxyClient;
    FSvrXModels: TdmXModelsProxyClient;
    FSvrMfgReports: TdmMfgReportsProxyClient;
    FSvrModelMovements: TdmModelMovementsProxyClient;
    FSvrModelChanges: TdmModelChangesProxyClient;
    FSvrModelReports: TdmModelReportsProxyClient;
    FSvrNonDbUtils: TdmNonDbUtilsProxyClient;
    FSvrDoc: TdmDocProxyClient;
    FSvrNeeds: TdmNeedsProxyClient;
    FSvrProductionProductsTree: TdmProductionProductsTreeProxyClient;
    FSvrExtensions: TdmExtensionsProxyClient;
    FSvrProductTreeNodeFilter: TdmProductTreeNodeFilterProxyClient;
    FSvrParamProductTreeNodeFilter: TdmParamProductTreeNodeFilterProxyClient;
    FSvrBaseGroups: TdmBaseGroupsProxyClient;
    FSvrDeptTreeNodeFilter: TdmDeptTreeNodeFilterProxyClient;
    FSvrFilter: TdmFilterProxyClient;
    FSvrHumanResource: TdmHumanResourceProxyClient;
    FSvrCapacity: TdmCapacityProxyClient;
    FSvrBudget: TdmBudgetProxyClient;
    FSvrDocItemViewGenerators: TdmDocItemViewGeneratorsProxyClient;
    FSvrShifts: TdmShiftsProxyClient;
    FSvrDocXML: TdmDocXMLProxyClient;
    FSvrEngineering: TdmEngineeringProxyClient;
    FSvrEmployeeAvailability: TdmEmployeeAvailabilityProxyClient;
    FSvrOrganisationTasks: TdmOrganisationTasksProxyClient;
    FSvrExceptEvents: TdmExceptEventsProxyClient;
    FSvrFinance: TdmFinanceProxyClient;
    FSvrProcesses: TdmProcessesProxyClient;
    FSvrCompanyFilter: TdmCompanyFilterProxyClient;

    FLoginInfoVariantMemoryMap: TVariantMemoryMap;
    FUserPicture: TPicture;
    FConnectedUsingOuterLoginInfo: Boolean;
    FDatabaseIcon: TIcon;
    FReconnecting: TTrySinglePassSection;
    FDisableReconnect: TMultiPassSection;
    FDisableRefreshAuthenticationToken: TMultiPassSection;
    FExeVersion: string;
    FLoadLoginContextServerDate: TDateTime;
    FClientRequestNo: Integer;
    FConnectionDisabled: Boolean;

    procedure SetParentWindowHandle(const Value: THandle);

    procedure StartDateCheck;
    procedure StopDateCheck;

    function GetLoginContext: TClientLoginContext;

    procedure CreateClientProxies;
    procedure DestroyClientProxies;
    procedure InternalAuthenticateAndLogin;
    procedure CheckAppRequirements;
    procedure DoDateCheck;
    function GetDateFormatString: string;
    procedure FreeLoginInfoMemoryMapFile;
    procedure SetDateFormat(const Value: TDateFormat);
    procedure ClearUserPicture;
    procedure CloseApp(const AMessage, AExceptionClassName: string);
    function InternalTempIgnoreConnectionException: TNestProcRec;
    procedure DoAuthenticate;
    function DoGetAuthenticationToken: string;
    procedure DoLogin;
    procedure DoLoadLoginContext;
    procedure DoInitializeSession;
    procedure DoUnauthenticate;
    procedure DoUnloadLoginContext;
    procedure DoFinalizeSession;
    procedure ClearDateInfo;
    function GetNextServerName: string;
    function SafeGetServerExeVersion: string;
    procedure CheckServerExeVersion;
    procedure StopCloseConnectionCheck;
    procedure StartCloseConnectionCheck;
    procedure DoLogout;
    function AuthenticateThruIdentityServer(
      const ALoginName, APassword: string;
      const AIdentityServerEndpoints: TIdentityServerEndpoints): string;
    procedure RefreshAuthenticationToken;
  public
    procedure AuthenticateAndLogin(const ALoginName, APassword, AServerNames, ADBName: string);
    procedure CheckServerConnection;

    procedure RefreshLoginContext;

    procedure DataSetGetFieldValueAsString(Field: TField; var Value: string);

    function TempCacheTimeout(ATimeout: Integer): TNestProcRec;

    procedure LoadLoginContext;
    procedure LoadUserPicture;
    procedure LoadDateInfo;
    function IncDateByWorkdays(ADate: TDateTime; AWorkdays: Integer): TDateTime;
    function CountWorkdays(ABeginDate, AEndDate: TDateTime): Integer;
    function IsWorkday(ADate: TDateTime): Boolean;

    procedure StartNewAppInstance;
    function ConnectUsingOuterLoginInfo: Boolean;
    procedure SetDatabaseIcon;
    function IsConnectionException(E: Exception): Boolean;
    function TempIgnoreConnectionError: TNestProcRec;
    procedure TerminateConnection;
    procedure Finalize;

    property LoginName: string read FLoginName;
    property Password: string read FPassword write FPassword;

    property DBName: string read FDBName;

    property LoginContext: TClientLoginContext read GetLoginContext;
    property LoggedIn: Boolean read FLoggedIn;
    property UserPicture: TPicture read FUserPicture;

    property ServerComputerNamesParam: string read FServerComputerNamesParam;
    property DBNameParam: string read FDBNameParam;

    property ParentWindowHandle: THandle read FParentWindowHandle write SetParentWindowHandle;

    property SvrSession: TdmSessionProxyClient read FSvrSession;
    property SvrLogin: TdmLoginProxyClient read FSvrLogin;
    property SvrCommon: TdmCommonProxyClient read FSvrCommon;
    property SvrDeptsTree: TdmDeptsTreeProxyClient read FSvrDeptsTree;
    property SvrProductsTree: TdmProductsTreeProxyClient read FSvrProductsTree;
    property SvrSaleOrders: TdmSaleOrdersProxyClient read FSvrSaleOrders;
    property SvrSales: TdmSalesProxyClient read FSvrSales;
    property SvrDeliveries: TdmDeliveriesProxyClient read FSvrDeliveries;
    property SvrStoreRequests: TdmStoreRequestsProxyClient read FSvrStoreRequests;
    property SvrCompany: TdmCompanyProxyClient read FSvrCompany;
    property SvrCompanies: TdmCompaniesProxyClient read FSvrCompanies;
    property SvrSpecifications: TdmSpecificationsProxyClient read FSvrSpecifications;
    property SvrStore: TdmStoreProxyClient read FSvrStore;
    property SvrSalesCommon: TdmSalesCommonProxyClient read FSvrSalesCommon;
    property SvrDeptsTreeEditor: TdmDeptsTreeEditorProxyClient read FSvrDeptsTreeEditor;
    property SvrProductsTreeEditor: TdmProductsTreeEditorProxyClient read FSvrProductsTreeEditor;
    property SvrProductQuantitiesTree: TdmProductQuantitiesTreeProxyClient read FSvrProductQuantitiesTree;
    property SvrDeficit: TdmDeficitProxyClient read FSvrDeficit;
    property SvrGroupSales: TdmGroupSalesProxyClient read FSvrGroupSales;
    property SvrParRelProducts: TdmParRelProductsProxyClient read FSvrParRelProducts;
    property SvrInvoices: TdmInvoicesProxyClient read FSvrInvoices;
    property SvrVIM: TdmVIMProxyClient read FSvrVIM;
    property SvrAdmin: TdmAdminProxyClient read FSvrAdmin;
    property SvrSaleReports: TdmSaleReportsProxyClient read FSvrSaleReports;
    property SvrXModels: TdmXModelsProxyClient read FSvrXModels;
    property SvrMfgReports: TdmMfgReportsProxyClient read FSvrMfgReports;
    property SvrModelMovements: TdmModelMovementsProxyClient read FSvrModelMovements;
    property SvrModelChanges: TdmModelChangesProxyClient read FSvrModelChanges;
    property SvrModelReports: TdmModelReportsProxyClient read FSvrModelReports;
    property SvrNonDbUtils: TdmNonDbUtilsProxyClient read FSvrNonDbUtils;
    property SvrDoc: TdmDocProxyClient read FSvrDoc;
    property SvrProductionProductsTree: TdmProductionProductsTreeProxyClient read FSvrProductionProductsTree;
    property SvrNeeds: TdmNeedsProxyClient read FSvrNeeds;
    property SvrExtensions: TdmExtensionsProxyClient read FSvrExtensions;
    property SvrProductTreeNodeFilter: TdmProductTreeNodeFilterProxyClient read FSvrProductTreeNodeFilter;
    property SvrParamProductTreeNodeFilter: TdmParamProductTreeNodeFilterProxyClient read FSvrParamProductTreeNodeFilter;
    property SvrBaseGroups: TdmBaseGroupsProxyClient read FSvrBaseGroups;
    property SvrDeptTreeNodeFilter: TdmDeptTreeNodeFilterProxyClient read FSvrDeptTreeNodeFilter;
    property SvrFilter: TdmFilterProxyClient read FSvrFilter;
    property SvrHumanResource: TdmHumanResourceProxyClient read FSvrHumanResource;
    property SvrCapacity: TdmCapacityProxyClient read FSvrCapacity;
    property SvrBudget: TdmBudgetProxyClient read FSvrBudget;
    property SvrDocItemViewGenerators: TdmDocItemViewGeneratorsProxyClient read FSvrDocItemViewGenerators;
    property SvrShifts: TdmShiftsProxyClient read FSvrShifts;
    property SvrEngineering: TdmEngineeringProxyClient read FSvrEngineering;
    property SvrDocXML: TdmDocXMLProxyClient read FSvrDocXML;
    property SvrEmployeeAvailability: TdmEmployeeAvailabilityProxyClient read FSvrEmployeeAvailability;
    property SvrOrganisationTasks: TdmOrganisationTasksProxyClient read FSvrOrganisationTasks;
    property SvrExceptEvents: TdmExceptEventsProxyClient read FSvrExceptEvents;
    property SvrFinance: TdmFinanceProxyClient read FSvrFinance;
    property SvrProcesses: TdmProcessesProxyClient read FSvrProcesses;
    property SvrCompanyFilter: TdmCompanyFilterProxyClient read FSvrCompanyFilter;

    property DateIntervalFormat: TDateIntervalFormat read FDateIntervalFormat write FDateIntervalFormat;
    property DateFormat: TDateFormat read FDateFormat write SetDateFormat;
    property DateFormatString: string read GetDateFormatString;
    function GetDateFormat: string;
    function GetWeekDateFormat: string;
    function GetDateDisplayFormat: string;
    function GetIntervalDateDisplayFormat: string;
    function GetDateIntervalAsString(ABeginDate, AEndDate: TDateTime): string;
    function GetDateIntervalAsShortString(ABeginDate, AEndDate: TDateTime): string;

    property IsContextDateParameterSpecified: Boolean read FIsContextDateParameterSpecified;
    property StartupContextDateOverride: TDateTime read FStartupContextDateOverride write FStartupContextDateOverride;
    property IsSessionReadOnly: Boolean read FIsSessionReadOnly write FIsSessionReadOnly;
    property RunReadOnly: Boolean read FRunReadOnly;

    property ConnectedUsingOuterLoginInfo: Boolean read FConnectedUsingOuterLoginInfo;
    property DatabaseIcon: TIcon read FDatabaseIcon;
    property Connection: TCustomConnection read FConnection;
    property ClientRequestNo: Integer read FClientRequestNo;
    property AuthenticationTokenIssuer: TAuthenticationTokenIssuer read FAuthenticationTokenIssuer;
  end;

var
  dmMain: TdmMain;

function FormatBaseCurrencyAbbrevString(AText: string): string;
procedure SetBaseCurrencyAbbrevColumnCaption(AColumn: TColumnEh);
function FormatSecondaryCurrencyAbbrevString(AText: string): string;
procedure SetSecondaryCurrencyAbbrevColumnCaption(AColumn: TColumnEh);

implementation

uses
  DateUtils, uClientUtils, AbmesDialogs, JvTypes,
  uClientDateTime, JclShell, ShlObj, Printers,
  uMessageDecodingUtils, uServerMessageIds, StrUtils, Math,
  fReconnect, Consts, uClientAppResources,
  ShellAPI, Variants, fAnimatedSplash,
  AbmesDBGrid, uTaskBarUtils, uDatabaseIcons, JclSysInfo,
  uClientConnectionInfo, uPingInfo,
  AbmesDatasnapIdCommunicationLayer, Vcl.ComCtrls, IdStack,
  System.Win.ScktComp, System.Net.Socket, Data.DbxHTTPLayer,
  uIdentityModel.TokenClient, uScalingUtils,
  uAbmesDSProviderConnectionHelper, uClientApp;

{$R *.DFM}

const
  SDefaultDBName = 'DefaultDB';

  LoginContextRefreshAlarmName = 'LoginContextRefreshAlarm';

  LoginInfoMemoryMapFileName = 'MemMap10976875';  // random

  SourceProcessIdSwitchPrefix = '/x:';

resourcestring
  SIncompatibleVersions = 'Несъвместима версия на приложението';
  SDefaultPrinterRequired = 'Няма инсталиран принтер';
  SUsageText =
    'Parameters:' + SLineBreak +
    '  /s:<ServerName> - Set server name' + SLineBreak +
    '  /db:<DatabaseName> - Set database name' + SLineBreak +
    '  /ct:<ConnectionType> - Set connection type (datasnap, http)' + SLineBreak +
    '  /at:<AuthenticationType> - Set authentication type (legacy, identity)' + SLineBreak +
    '  /d - Login to a specified date' + SLineBreak +
    '  /sh:<Location>:"<ShortcutName>" - Create shortcut (Location: Desktop, StartMenu, DesktopAllUsers, StartMenuAllUsers)' + SLineBreak +
    '  /r - Start in read-only mode' + SLineBreak +
    '  /scale:<PointsPerInch> - set scaling (disabled, auto, <value>)';

  SCurrencyRatesNotEntered = 'Не са въведени всички валутни курсове за днес. Работата със системата не може да продължи докато не бъдат въведени.';
  SConnectionFailedDetails = SLineBreak + 'Сървър: %s' + SLineBreak + 'Грешка: %s';
  SQuit = 'Изход';
  SStartingNewAppInstance = 'Стартиране на нова %s [%s] ...';
  SInvalidUserOrPassword =
    'Невалидно потребителско име и/или парола.' + SLineBreak +
    SLineBreak +
    'Ако направите 5 поредни опита с грешна парола,' + SLineBreak +
    'изчакайте 5 минути преди да опитате отново.';

type
  TClientLoginContextHack = class(TClientLoginContext);

{ Routines }

function FormatBaseCurrencyAbbrevString(AText: string): string;
begin
  Result:= Format(AText, [dmMain.LoginContext.BaseCurrencyAbbrev]);
end;

procedure SetBaseCurrencyAbbrevColumnCaption(AColumn: TColumnEh);
begin
  with AColumn.Title do
    Caption:= FormatBaseCurrencyAbbrevString(Caption);
end;

function FormatSecondaryCurrencyAbbrevString(AText: string): string;
begin
  Result:= Format(AText, [dmMain.LoginContext.SecondaryCurrencyAbbrev]);
end;

procedure SetSecondaryCurrencyAbbrevColumnCaption(AColumn: TColumnEh);
begin
  with AColumn.Title do
    Caption:= FormatSecondaryCurrencyAbbrevString(Caption);
end;

{ TdmMain }

procedure TdmMain.CreateClientProxies;
begin
  DestroyClientProxies;

  try
    FSvrSession:= TdmSessionProxyClient.Create(dspcSession);
    FSvrDeptsTree:= TdmDeptsTreeProxyClient.Create(dspcDeptsTree);
    FSvrProductsTree:= TdmProductsTreeProxyClient.Create(dspcProductsTree);
    FSvrCommon:= TdmCommonProxyClient.Create(dspcCommon);
    FSvrSaleOrders:= TdmSaleOrdersProxyClient.Create(dspcSaleOrders);
    FSvrSales:= TdmSalesProxyClient.Create(dspcSales);
    FSvrDeliveries:= TdmDeliveriesProxyClient.Create(dspcDeliveries);
    FSvrStoreRequests:= TdmStoreRequestsProxyClient.Create(dspcStoreRequests);
    FSvrCompanies:= TdmCompaniesProxyClient.Create(dspcCompanies);
    FSvrCompany:= TdmCompanyProxyClient.Create(dspcCompany);
    FSvrSpecifications:= TdmSpecificationsProxyClient.Create(dspcSpecifications);
    FSvrStore:= TdmStoreProxyClient.Create(dspcStore);
    FSvrSalesCommon:= TdmSalesCommonProxyClient.Create(dspcSalesCommon);
    FSvrDeptsTreeEditor:= TdmDeptsTreeEditorProxyClient.Create(dspcDeptsTreeEditor);
    FSvrProductsTreeEditor:= TdmProductsTreeEditorProxyClient.Create(dspcProductsTreeEditor);
    FSvrProductQuantitiesTree:= TdmProductQuantitiesTreeProxyClient.Create(dspcProductQuantitiesTree);
    FSvrDeficit:= TdmDeficitProxyClient.Create(dspcDeficit);
    FSvrGroupSales:= TdmGroupSalesProxyClient.Create(dspcGroupSales);
    FSvrParRelProducts:= TdmParRelProductsProxyClient.Create(dspcParRelProducts);
    FSvrInvoices:= TdmInvoicesProxyClient.Create(dspcInvoices);
    FSvrVIM:= TdmVIMProxyClient.Create(dspcVIM);
    FSvrLogin:= TdmLoginProxyClient.Create(dspcLogin);
    FSvrAdmin:= TdmAdminProxyClient.Create(dspcAdmin);
    FSvrSaleReports:= TdmSaleReportsProxyClient.Create(dspcSaleReports);
    FSvrXModels:= TdmXModelsProxyClient.Create(dspcXModels);
    FSvrMfgReports:= TdmMfgReportsProxyClient.Create(dspcMfgReports);
    FSvrModelMovements:= TdmModelMovementsProxyClient.Create(dspcModelMovements);
    FSvrModelChanges:= TdmModelChangesProxyClient.Create(dspcModelChanges);
    FSvrModelReports:= TdmModelReportsProxyClient.Create(dspcModelReports);
    FSvrNonDbUtils:= TdmNonDbUtilsProxyClient.Create(dspcNonDbUtils);
    FSvrDoc:= TdmDocProxyClient.Create(dspcDoc);
    FSvrNeeds:= TdmNeedsProxyClient.Create(dspcNeeds);
    FSvrProductionProductsTree:= TdmProductionProductsTreeProxyClient.Create(dspcProductionProductsTree);
    FSvrExtensions:= TdmExtensionsProxyClient.Create(dspcExtensions);
    FSvrProductTreeNodeFilter:= TdmProductTreeNodeFilterProxyClient.Create(dspcProductTreeNodeFilter);
    FSvrParamProductTreeNodeFilter:= TdmParamProductTreeNodeFilterProxyClient.Create(dspcParamProductTreeNodeFilter);
    FSvrBaseGroups:= TdmBaseGroupsProxyClient.Create(dspcBaseGroups);
    FSvrDeptTreeNodeFilter:= TdmDeptTreeNodeFilterProxyClient.Create(dspcDeptTreeNodeFilter);
    FSvrFilter:= TdmFilterProxyClient.Create(dspcFilter);
    FSvrHumanResource:= TdmHumanResourceProxyClient.Create(dspcHumanResource);
    FSvrCapacity:= TdmCapacityProxyClient.Create(dspcCapacity);
    FSvrBudget:= TdmBudgetProxyClient.Create(dspcBudget);
    FSvrDocItemViewGenerators:= TdmDocItemViewGeneratorsProxyClient.Create(dspcDocItemViewGenerators);
    FSvrShifts:= TdmShiftsProxyClient.Create(dspcShifts);
    FSvrDocXML:= TdmDocXMLProxyClient.Create(dspcDocXML);
    FSvrEngineering:= TdmEngineeringProxyClient.Create(dspcEngineering);
    FSvrEmployeeAvailability:= TdmEmployeeAvailabilityProxyClient.Create(dspcEmployeeAvailability);
    FSvrOrganisationTasks:= TdmOrganisationTasksProxyClient.Create(dspcOrganisationTasks);
    FSvrExceptEvents:= TdmExceptEventsProxyClient.Create(dspcExceptEvents);
    FSvrFinance:= TdmFinanceProxyClient.Create(dspcFinance);
    FSvrProcesses:= TdmProcessesProxyClient.Create(dspcProcesses);
    FSvrCompanyFilter:= TdmCompanyFilterProxyClient.Create(dspcCompanyFilter);
  except
    DestroyClientProxies;
    raise;
  end;
end;

procedure TdmMain.DestroyClientProxies;
begin
  FreeAndNil(FSvrSession);
  FreeAndNil(FSvrDeptsTree);
  FreeAndNil(FSvrProductsTree);
  FreeAndNil(FSvrCommon);
  FreeAndNil(FSvrSaleOrders);
  FreeAndNil(FSvrSales);
  FreeAndNil(FSvrDeliveries);
  FreeAndNil(FSvrStoreRequests);
  FreeAndNil(FSvrCompanies);
  FreeAndNil(FSvrCompany);
  FreeAndNil(FSvrSpecifications);
  FreeAndNil(FSvrStore);
  FreeAndNil(FSvrSalesCommon);
  FreeAndNil(FSvrDeptsTreeEditor);
  FreeAndNil(FSvrProductsTreeEditor);
  FreeAndNil(FSvrProductQuantitiesTree);
  FreeAndNil(FSvrDeficit);
  FreeAndNil(FSvrGroupSales);
  FreeAndNil(FSvrParRelProducts);
  FreeAndNil(FSvrInvoices);
  FreeAndNil(FSvrVIM);
  FreeAndNil(FSvrLogin);
  FreeAndNil(FSvrAdmin);
  FreeAndNil(FSvrSaleReports);
  FreeAndNil(FSvrXModels);
  FreeAndNil(FSvrMfgReports);
  FreeAndNil(FSvrModelMovements);
  FreeAndNil(FSvrModelChanges);
  FreeAndNil(FSvrModelReports);
  FreeAndNil(FSvrNonDbUtils);
  FreeAndNil(FSvrDoc);
  FreeAndNil(FSvrNeeds);
  FreeAndNil(FSvrProductionProductsTree);
  FreeAndNil(FSvrExtensions);
  FreeAndNil(FSvrProductTreeNodeFilter);
  FreeAndNil(FSvrParamProductTreeNodeFilter);
  FreeAndNil(FSvrBaseGroups);
  FreeAndNil(FSvrDeptTreeNodeFilter);
  FreeAndNil(FSvrFilter);
  FreeAndNil(FSvrHumanResource);
  FreeAndNil(FSvrCapacity);
  FreeAndNil(FSvrBudget);
  FreeAndNil(FSvrDocItemViewGenerators);
  FreeAndNil(FSvrShifts);
  FreeAndNil(FSvrDocXML);
  FreeAndNil(FSvrEngineering);
  FreeAndNil(FSvrEmployeeAvailability);
  FreeAndNil(FSvrOrganisationTasks);
  FreeAndNil(FSvrExceptEvents);
  FreeAndNil(FSvrFinance);
  FreeAndNil(FSvrProcesses);
  FreeAndNil(FSvrCompanyFilter);
end;

procedure TdmMain.AuthenticateAndLogin(const ALoginName, APassword, AServerNames, ADBName: string);
var
  OldLoginName: string;
  OldPassword: string;
  OldServerNames: string;
  OldDBName: string;
begin
  OldLoginName:= FLoginName;
  OldPassword:= FPassword;
  OldServerNames:= FServerNames;
  OldDBName:= FDBName;

  FLoginName:= ALoginName;
  FPassword:= APassword;
  FServerNames:= IfThen(AServerNames <> '', AServerNames, 'localhost');
  FDBName:= ADBName;
  try
    InternalAuthenticateAndLogin;
  except
    FLoginName:= OldLoginName;
    FPassword:= OldPassword;
    FServerNames:= OldServerNames;
    FDBName:= OldDBName;
    raise;
  end;
end;

function TdmMain.GetLoginContext: TClientLoginContext;
begin
  Assert(Assigned(FLoginContext));
  Result:= FLoginContext;
end;

procedure TdmMain.SetDateFormat(const Value: TDateFormat);

  procedure RefreshControl(AControl: TWinControl);
  var
    c: TWinControl;
  begin
    if (AControl is TAbmesDBGrid) then
      begin
        AControl.Repaint;
      end;

    for c in AControl.AllControls.OfType<TWinControl> do
      RefreshControl(c);
  end;

var
  i: Integer;
begin
  if (Value <> FDateFormat) then
    begin
      FDateFormat:= Value;

      for i := 0 to Screen.FormCount - 1 do
        RefreshControl(Screen.Forms[i]);
    end;
end;

function TdmMain.GetNextServerName: string;
var
  SL: TStringList;
  idx: Integer;
begin
  SL:= TStringList.Create;
  try
    SL.Delimiter:= ';';
    SL.DelimitedText:= FServerNames;

    if (SL.Count = 0) then
      raise Exception.Create('No server names found');

    idx:= SL.IndexOf(ClientConnectionInfo.ActiveServerName);

    if (idx < 0) or (idx >= SL.Count - 1) then
      Result:= SL[0]
    else
      Result:= SL[idx+1];
  finally
    SL.Free;
  end;
end;

procedure TdmMain.SetDatabaseIcon;
begin
  if Assigned(FDatabaseIcon) then
    FreeAndNil(FDatabaseIcon);

  if (LoginContext.DatabaseIconIndex = 0) then
    SetOverlayIcon(nil)
  else
    begin
      FDatabaseIcon:= TDatabaseIconLoader.LoadSmallDatabaseIcon<TIcon>(LoginContext.DatabaseIconIndex + High(TDatabaseIconIndex) * Ord(LoginContext.IsSessionTest));
      try
        SetOverlayIcon(FDatabaseIcon);
      except
        FreeAndNil(FDatabaseIcon);
        raise;
      end;
    end;
end;

function TdmMain.AuthenticateThruIdentityServer(
  const ALoginName, APassword: string; const AIdentityServerEndpoints: TIdentityServerEndpoints): string;

  function RemovePortFromName(const AServerName: string): string;
  var
    p: Integer;
  begin
    p:= Pos(':', AServerName);
    if (p > 0) then
      Result:= Copy(AServerName, 1, p-1)
    else
      Result:= AServerName;
  end;

var
  t: TTokenResponse;
begin
  try
    t:=
      TTokenClient.RequestToken(
        AIdentityServerEndpoints.TokenEndpoint,
        IdentityClientId,
        IdentityClientSecret,
        ALoginName,
        APassword,
        AIdentityServerEndpoints.Scope
      );

    Result:= t.AccessToken;
    Assert(Result <> '');
  except
    on E: Exception do
      begin
        if E.Message.Contains('invalid_username_or_password') or
           E.Message.Contains('Invalid login credentials') then
          raise Exception.Create(SInvalidUserOrPassword);

        raise;
      end;
  end;
end;

function TdmMain.DoGetAuthenticationToken: string;
begin
  if (FAuthenticationTokenIssuer in atiIdentityServers) then
    Exit(
      AuthenticateThruIdentityServer(
        GetIdentityServerLoginName(FLoginName, FDBName, FAuthenticationTokenIssuer),
        FPassword,
        GetIdentityServerEndpoints(FAuthenticationTokenIssuer)));

  raise Exception.Create('Unsupported authentication token issuer type');
end;

procedure TdmMain.DoAuthenticate;
begin
  ClientConnectionInfo.SetEmptyAuthenticationToken;
  conDatasnap.CloseImmediate;

  ClientConnectionInfo.SetAuthenticationToken(
    GetAuthenticationTokenPrefix(FAuthenticationTokenIssuer),
    DoGetAuthenticationToken);
end;

procedure TdmMain.DoUnauthenticate;
begin
  ClientConnectionInfo.SetEmptyAuthenticationToken;
end;

procedure TdmMain.RefreshAuthenticationToken;
begin
  conDatasnap.CloseImmediate;

  ClientConnectionInfo.SetAuthenticationToken(
    GetAuthenticationTokenPrefix(FAuthenticationTokenIssuer),
    DoGetAuthenticationToken);
end;

procedure TdmMain.DoLogin;
begin
  CheckServerExeVersion;

  SvrSession.Login;
  FLoggedIn:= True;
end;

procedure TdmMain.DoLogout;
begin
  FLoggedIn:= False;
end;

procedure TdmMain.DoLoadLoginContext;
begin
  try
    FreeAndNil(FLoginContext);
    FLoginContext:= TClientLoginContext.Create;

    LoadLoginContext;
  except
    DoUnloadLoginContext;
    raise;
  end;
end;

procedure TdmMain.DoUnloadLoginContext;
var
  OldLoginContext: TClientLoginContext;
begin
  OldLoginContext:= FLoginContext;
  FLoginContext:= TClientLoginContext.Create;
  FreeAndNil(OldLoginContext);
end;

procedure TdmMain.DoInitializeSession;
var
  zero: Integer;
begin
  try
    LoadUserPicture;

    LoadDateInfo;

    zero:= 0;
    DoPing(SvrNonDbUtils, False, zero);
    DoDateCheck;

    StartDateCheck;
    StartCloseConnectionCheck;

    Application.Title:= Format('%s [%s]', [SAppName, FDBName]);

    SetTaskbarGroupingIdentifier(FExeVersion, DBName);
    SetDatabaseIcon;
  except
    DoFinalizeSession;
    raise;
  end;
end;

procedure TdmMain.DoFinalizeSession;
begin
  SetTaskbarGroupingIdentifier(FExeVersion);
  SetOverlayIcon(nil);

  Application.Title:= SAppName;

  StopCloseConnectionCheck;
  StopDateCheck;

  ClearDateInfo;

  ClearUserPicture;
end;

procedure TdmMain.InternalAuthenticateAndLogin;
begin
  FDisableReconnect.TempEnter/
    FDisableRefreshAuthenticationToken.TempEnter/
      procedure begin
        DoAuthenticate;
        try
          DoLogin;
          try
            DoLoadLoginContext;
            try
              DoInitializeSession;
            except
              DoUnloadLoginContext;
              raise;
            end;
          except
            DoLogout;
            raise;
          end;
        except
          DoUnauthenticate;
          raise;
        end;
      end;
end;

procedure TdmMain.DataModuleDestroy(Sender: TObject);
begin
  inherited;

  tmrFreeLoginInfoMemoryMapFile.Enabled:= False;
  FreeLoginInfoMemoryMapFile;

  DestroyClientProxies;
  FreeAndNil(FLoginContext);

  ClearUserPicture;
  FreeAndNil(FDatabaseIcon);
end;

procedure TdmMain.DataSetGetFieldValueAsString(Field: TField; var Value: string);
begin
  Value:= DecodeDBTextMessage(Value);
end;

procedure TdmMain.CheckAppRequirements;
begin
//  if (Printer.Printers.Count = 0) then
//    raise Exception.Create(SDefaultPrinterRequired);
end;

procedure TdmMain.ClearUserPicture;
begin
  if Assigned(FUserPicture) then
    FreeAndNil(FUserPicture);
end;

procedure TdmMain.conDatasnapAfterConnect(Sender: TObject);
begin
  inherited;
  PingInfo.ActivePing:= True;
end;

procedure TdmMain.conDatasnapBeforeConnect(Sender: TObject);
begin
  inherited;

  if FConnectionDisabled then
    Abort;

  Inc(FClientRequestNo);

  if (ClientConnectionInfo.ActiveServerName = '') then
    ClientConnectionInfo.ActiveServerName:= GetNextServerName;

  SetConnectionProperties(conDatasnap.ConnectionData.Properties, LoginName, DBName, False, FExeVersion);
  conDatasnap.ConnectionData.Properties[TAbmesDatasnapIdCommunicationLayer.SOwnerConnectionId]:=
    GetConnectionId(conDatasnap);

  SetConnectionTerminated(GetConnectionId(conDatasnap), False);
end;

procedure TdmMain.conDatasnapBeforeDisconnect(Sender: TObject);
begin
  inherited;

  if (PingInfo <> nil) then  // uPingInfo finalization called before Forms finalization and dmMain destruction
    PingInfo.ActivePing:= False;
end;

procedure TdmMain.DataModuleCreate(Sender: TObject);

type
  TParamNamePair = record
    Param: string;
    Name: string;
  end;

  function ParamName(const Param: string): string;
  var
    p: Integer;
  begin
    Result:= '';

    if (Param <> '') and CharInSet(Param[1], ['/', '-']) then
      begin
        p:= Pos(':', Param);

        if (p > 0) then
          Result:= Copy(Param, 2, p-2)
        else
          Result:= Copy(Param, 2, Length(Param)-1);
      end;
  end;

  function ParamValue(const Param: string): string;
  var
    p: Integer;
  begin
    p:= Pos(':', Param);

    if (p > 0) then
      Result:= Copy(Param, p+1, Length(Param)-p)
    else
      Result:= '';
  end;

  procedure SetConnectionBrokers;
  var
    cbk: TConnectionBroker;
    RemoteServerPrefix: string;
  begin
    if (FConnection is TSQLConnection) then
      RemoteServerPrefix:= 'dspc'
    else
      RemoteServerPrefix:= 'shc';

    for cbk in AllComponents.OfType<TConnectionBroker> do
      cbk.Connection:= TCustomRemoteServer(FindComponent(RemoteServerPrefix + Copy(cbk.Name, 4, Length(cbk.Name))));
  end;

var
  i: Integer;
  s: string;
  CommunicationProtocol: string;
begin
  FExeVersion:= GetExeVersion;

  ScreenCursorProc:= nil;  // do not change cursor on SQLConnection.Connect

  conDatasnap.SQLHourGlass:= False;

  SetDataSetsGetFieldValueAsStringEvent(Self);

  inherited;

  try
    FDBName:= SDefaultDBName;
    FConnection:= conDatasnap;
    CommunicationProtocol:= GetCommunicationProtocol(DatasnapConnectionParam);

    for i:= 1 to ParamCount do
      begin
        s:= ParamStr(i);

        if (ParamName(s) = 'db') then
          begin
            FDBNameParam:= ParamValue(s);
            FDBName:= FDBNameParam;
          end;  { if }

        if (ParamName(s) = 's') then
          FServerComputerNamesParam:= ParamValue(s);

        if (ParamName(s) = 'ct') then
          FConnection:= GetConnection(ParamValue(s), [conDatasnap]);

        if (ParamName(s) = 'ct') then
          CommunicationProtocol:= GetCommunicationProtocol(ParamValue(s));

        if (ParamName(s) = 'at') then
          FAuthenticationTokenIssuer:= GetAuthenticationTokenIssuer(ParamValue(s));

        if (ParamName(s) = 'd') then
          FIsContextDateParameterSpecified:= True;

        if (ParamName(s) = 'r') then
          FRunReadOnly:= True;

        if (ParamName(s) = 'scale') then
          SetUserPixelsPerInch(ParamValue(s));

        if (ParamName(s) = '?') then
          begin
            ShowMessageEx(SUsageText);
            Halt;
          end;  { if }
      end;  { for }

    SetConnectionBrokers;

    if (FConnection is TSQLConnection) then
      SetDSProviderConnectionsSQLConnection(Self, FConnection as TSQLConnection);

    CheckAppRequirements;

    CreateClientProxies;
  except
    on E: Exception do
      begin
        ShowExceptionMessage(E.Message, E.ClassName);
        Application.Terminate;
        Application.ProcessMessages;
      end;
  end;  { try }

  InitClientConnectionInfo(StartupContextDateOverride, FIsSessionReadOnly or FRunReadOnly, CommunicationProtocol);
end;

procedure TdmMain.LoadLoginContext;
begin
  TClientLoginContextHack(LoginContext).SetAsVariant(SvrSession.GetLoginContextAsVariant);
  FLoadLoginContextServerDate:= DateOf(PingInfo.ServerDateTime);
end;

procedure TdmMain.LoadUserPicture;
var
  MS: TMemoryStream;
  wic: TWICImage;
begin
  ClearUserPicture;

  cdsUserOptions.Params.ParamByName('USER_CODE').AsInteger:= LoginContext.UserCode;
  cdsUserOptions.Open;
  try
    if not cdsUserOptionsPICTURE.IsNull then
      begin
        FUserPicture:= TPicture.Create;
        try
          MS:= TMemoryStream.Create;
          try
            cdsUserOptionsPICTURE.SaveToStream(MS);

            wic:= TWICImage.Create;
            try
              wic.LoadFromStream(MS);
              FUserPicture.Assign(wic);
            finally
              FreeAndNil(wic);
            end;
          finally
            FreeAndNil(MS);
          end;
        except
          FreeAndNil(FUserPicture);
          raise;
        end;
      end;
  finally
    cdsUserOptions.Close;
  end;
end;

procedure TdmMain.StartNewAppInstance;

  procedure ShowStartingAppSplashForm;
  var
    fmSplash: TfmAnimatedSplash;
  begin
    Application.CreateForm(TfmAnimatedSplash, fmSplash);
    try
      fmSplash.ProgressBarVisible:= False;
      fmSplash.ShowForm(aviNone, Format(SStartingNewAppInstance, [SAppName, FDBName]));
      Sleep(2000);
    finally
      fmSplash.ReleaseForm;
    end;   { try }
  end;

var
  CommandLineParams: string;
  i: Integer;
  CurrentProcessId: Cardinal;
begin
  CurrentProcessId:= GetCurrentProcessId;

  CommandLineParams:= '';
  for i:= 1 to ParamCount do
    if not StartsText(SourceProcessIdSwitchPrefix, ParamStr(i)) then
      CommandLineParams:= CommandLineParams + ParamStr(i) + ' ';

  CommandLineParams:= CommandLineParams + SourceProcessIdSwitchPrefix + IntToStr(CurrentProcessId);

  if IsSessionReadOnly and not FindCmdLineSwitch('r', SwitchChars, True) then
    CommandLineParams:= CommandLineParams + ' /r';

  tmrFreeLoginInfoMemoryMapFile.Enabled:= False;

  if not Assigned(FLoginInfoVariantMemoryMap) then
    begin
      FLoginInfoVariantMemoryMap:= TVariantMemoryMap.Create(LoginInfoMemoryMapFileName + IntToStr(CurrentProcessId));
      try
        FLoginInfoVariantMemoryMap.AsVariant:= VarArrayOf([LoginName, Password, FServerComputerNamesParam, DBName, StartupContextDateOverride, FAuthenticationTokenIssuer]);
      except
        FreeAndNil(FLoginInfoVariantMemoryMap);
        raise;
      end;
    end;

  ShellExecute(0, nil, PChar(ParamStr(0)), PChar(CommandLineParams), nil, SW_SHOWNORMAL);

  ShowStartingAppSplashForm;

  tmrFreeLoginInfoMemoryMapFile.Enabled:= True;
end;

procedure TdmMain.Finalize;
begin
  conDatasnap.CloseImmediate;
end;

procedure TdmMain.FreeLoginInfoMemoryMapFile;
begin
  FreeAndNil(FLoginInfoVariantMemoryMap);
end;

function TdmMain.ConnectUsingOuterLoginInfo: Boolean;
var
  LoginInfoVariantMemoryMap: TVariantMemoryMap;
  LoginInfo: Variant;
  i: Integer;
  SaveStartupContextDateOverride: TDateTime;
  SourceProcessId: string;
begin
  Result:= False;

  SourceProcessId:= '';
  for i:= 1 to ParamCount do
    if StartsText(SourceProcessIdSwitchPrefix, ParamStr(i)) then
      SourceProcessId:= RightStr(ParamStr(i), Length(ParamStr(i)) - Length(SourceProcessIdSwitchPrefix));

  if (SourceProcessId <> '') then
    begin
      LoginInfoVariantMemoryMap:= TVariantMemoryMap.Create(LoginInfoMemoryMapFileName + SourceProcessId);
      try
        LoginInfo:= LoginInfoVariantMemoryMap.AsVariant;

        if VarIsArray(LoginInfo) then
          begin
            SaveStartupContextDateOverride:= dmMain.StartupContextDateOverride;
            try
              StartupContextDateOverride:= LoginInfo[4];
              FAuthenticationTokenIssuer:= LoginInfo[5];
              AuthenticateAndLogin(LoginInfo[0], LoginInfo[1], LoginInfo[2], LoginInfo[3]);
              Result:= True;
            except
              dmMain.StartupContextDateOverride:= SaveStartupContextDateOverride;
            end;
          end;
      finally
        FreeAndNil(LoginInfoVariantMemoryMap);
      end;
    end;

  FConnectedUsingOuterLoginInfo:= Result;
end;

procedure TdmMain.ClearDateInfo;
var
  i: Integer;
begin
  for i:= Low(FDateInfo) to High(FDateInfo) do
    begin
      FDateInfo[i].WorkdayNo:= 0;
      FDateInfo[i].IsWorkday:= False;
    end;  { for }

  for i:= Low(FWorkdays) to High(FWorkdays) do
    begin
      FWorkdays[i]:= 0;
    end;  { for }
end;

procedure TdmMain.LoadDateInfo;
type
  TDateInfoOk = array[Low(FDateInfo)..High(FDateInfo)] of Boolean;
  PDateInfoOk = ^TDateInfoOk;
  TWorkdaysOk = array[Low(FWorkdays)..High(FWorkdays)] of Boolean;
  PWorkdaysOk = ^TWorkdaysOk;
var
  DateInfoOk: PDateInfoOk;
  WorkdaysOk: PWorkdaysOk;
  i, TheDate, WorkdayNo, MaxWorkdayNo: Integer;
  IsWorkday: Boolean;
begin
  New(DateInfoOk);
  try
    New(WorkdaysOk);
    try
      for i:= Low(FDateInfo) to High(FDateInfo) do
        DateInfoOk[i]:= False;

      for i:= Low(FWorkdays) to High(FWorkdays) do
        WorkdaysOk[i]:= False;

      ClearDateInfo;

      cdsTheDates.Open;
      try
        if (cdsTheDates.RecordCount <> (MaxDate - MinDate + 1)) then
          raise Exception.Create('Bad TheDates.RecordCount');

        if (cdsTheDatesTHE_DATE.AsDateTime <> MinDate) then
          raise Exception.Create('Bad TheDates.MinDate');

        while not cdsTheDates.Eof do
          begin
            TheDate:= Trunc(cdsTheDatesTHE_DATE.AsDateTime);
            WorkdayNo:= cdsTheDatesACCUMULATED_WORKDAYS.AsInteger;
            IsWorkday:= cdsTheDatesIS_WORKDAY.AsBoolean;

            FDateInfo[TheDate].WorkdayNo:= WorkdayNo;
            FDateInfo[TheDate].IsWorkday:= IsWorkday;
            DateInfoOk[TheDate]:= True;

            if IsWorkday then
              begin
                FWorkdays[WorkdayNo]:= TheDate;
                WorkdaysOk[WorkdayNo]:= True;
              end;  { if }

            cdsTheDates.Next;
          end;  { while }

        if (cdsTheDatesTHE_DATE.AsDateTime <> MaxDate) then
          raise Exception.Create('Bad TheDates.MaxDate');

        MaxWorkdayNo:= cdsTheDatesACCUMULATED_WORKDAYS.AsInteger;

        for i:= Low(TWorkdaysOk) to MaxWorkdayNo do
          if not WorkdaysOk[i] then
            raise Exception.Create('Not all workdays initialized');

        for i:= MaxWorkdayNo+1 to High(TWorkdaysOk) do
          if WorkdaysOk[i] then
            raise Exception.Create('Strange workdays initialization');

        for i:= Low(TDateInfoOk) to High(TDateInfoOk) do
          if not DateInfoOk[i] then
            raise Exception.Create('Not all date info initialized');

      finally
        cdsTheDates.Close;
      end;   { try }
    finally
      Dispose(WorkdaysOk);
    end;  { try }
  finally
    Dispose(DateInfoOk);
  end;  { try }
end;

function TdmMain.IncDateByWorkdays(ADate: TDateTime;
  AWorkdays: Integer): TDateTime;
var
  d: TIntegerDate;
begin
  d:= Trunc(ADate);

  if (AWorkdays = 0) then
    Result:= d
  else
    begin
      if (AWorkdays > 0) then
        Result:= FWorkdays[FDateInfo[d].WorkdayNo + AWorkdays]
      else
        Result:= FWorkdays[FDateInfo[d].WorkdayNo + AWorkdays + (1 - Ord(FDateInfo[d].IsWorkday))];
    end;
end;

function TdmMain.CountWorkdays(ABeginDate, AEndDate: TDateTime): Integer;
begin
  Result:= FDateInfo[Trunc(AEndDate)].WorkdayNo - FDateInfo[Trunc(ABeginDate)].WorkdayNo;

  if (ABeginDate > AEndDate) then
    Dec(Result, Ord(FDateInfo[Trunc(AEndDate)].IsWorkday))
  else
    Inc(Result, Ord(FDateInfo[Trunc(ABeginDate)].IsWorkday));
end;

procedure TdmMain.RefreshLoginContext;
begin
  SvrSession.RefreshLoginContext;
  LoadLoginContext;
end;

procedure TdmMain.CloseApp(const AMessage, AExceptionClassName: string);
begin
  StopDateCheck;
  StopCloseConnectionCheck;
  PingInfo.PingSuspended:= True;
  FConnectionDisabled:= True;

  ShowExceptionMessage(AMessage, AExceptionClassName);

  Application.Terminate;
end;

procedure TdmMain.DoDateCheck;
var
  MustRefreshLoginContext: Boolean;
  MustCheckCurrencyRates: Boolean;
  CheckDone: Boolean;
begin
  TempIgnoreConnectionError/
    procedure begin
      CheckDone:= False;
      while not CheckDone do
        begin
          CheckDone:= True;

          MustRefreshLoginContext:=
            (not PingInfo.IsServerLoginContextValid) or
            (FLoadLoginContextServerDate <> DateOf(PingInfo.ServerDateTime));

          MustCheckCurrencyRates:=
            MustRefreshLoginContext and
            (FLoadLoginContextServerDate <> 0);

          if MustRefreshLoginContext then
            RefreshLoginContext;

          if MustCheckCurrencyRates then
            begin
              if not SvrCommon.AreAllTodayCurrencyRatesEntered then
                begin
                  if (MessageDlgBtn(SCurrencyRatesNotEntered, mtWarning, [SRetryButton, SQuit], 0) = 0) then
                    CheckDone:= False
                  else
                    begin
                      PostMessage(Application.Handle, WM_CLOSE, 0, 0);
                      Break;
                    end;  { if }
                end;
            end;
        end;
    end;
end;

function IsAuthenticationTokenException(E: Exception): Boolean;
begin
  Result:=
    E.Message.EndsWith(SAuthenticationTokenExpired) or
    E.Message.EndsWith(SNotAuthenticated) or
    E.Message.Contains('invalid_token');
end;

function TdmMain.IsConnectionException(E: Exception): Boolean;
begin
  Result:=
    (E is System.Win.ScktComp.ESocketError) or
    (E is System.Net.Socket.ESocketError) or
    (E is EIdSocketError) or
    E.Message.StartsWith(EAbmesConnectionTerminated.SAbmesConnectionTerminated) or
    E.Message.StartsWith('Socket error', True) or
    E.Message.StartsWith('Windows socket error', True) or
    E.Message.StartsWith('Connection timeout error', True) or
    E.Message.StartsWith('Connect timed out', True) or
    E.Message.EndsWith(SServicePoolBusy) or
    E.Message.EndsWith(SMutexAbandoned) or
    E.Message.EndsWith(SIncompatibleExeVersions) or
    E.Message.Contains('ORA-01033') or
    E.Message.Contains('ORA-12528');
end;

function TdmMain.SafeGetServerExeVersion: string;
begin
  try
    Result:= SvrSession.GetExeVersion;
  except
    Result:= '';
  end;
end;

procedure TdmMain.DSProviderConnectionException(E: Exception;
  var Retry: Boolean);

  function IsServerVersionCompatible: Boolean;
  var
    ServerExeVersion: string;
  begin
    ////////////Application.ProcessMessages;

    ServerExeVersion:=
      FDisableReconnect.TempEnter/
        FDisableRefreshAuthenticationToken.TempEnter/
          function: string begin
            Result:= SafeGetServerExeVersion;
          end;

    Result:= (ServerExeVersion = FExeVersion);
  end;

var
  FaultServerName: string;
  TempRetry: Boolean;
  MustReconnect: Boolean;
begin
  inherited;
  MustReconnect:= False;

  if (not FDisableRefreshAuthenticationToken.IsEntered) and IsAuthenticationTokenException(E) then
    begin
      RefreshAuthenticationToken;
      if IsServerVersionCompatible then
        begin
          Retry:= True;
          Exit;
        end;

      MustReconnect:= True;
    end;

  if (not FDisableReconnect.IsEntered) and IsConnectionException(E) then
    begin
      FaultServerName:= ClientConnectionInfo.ActiveServerName;
      ClientConnectionInfo.ActiveServerName:= GetNextServerName;
      while (ClientConnectionInfo.ActiveServerName <> FaultServerName) do
        begin
          if IsServerVersionCompatible then
            begin
              Retry:= True;
              Exit;
            end;

          ClientConnectionInfo.ActiveServerName:= GetNextServerName;
        end;

      MustReconnect:= True;
    end;

  if MustReconnect then
    begin
      TempRetry:= Retry;
      FReconnecting.TempEnter/
        procedure begin
          TfmReconnect.ShowForm;
          TempRetry:= True;
        end;
      Retry:= TempRetry;
    end;
end;

procedure TdmMain.tmrCheckCloseConnectionRequestedTimer(Sender: TObject);
begin
  inherited;
  if PingInfo.CloseConnectionRequested then
    CloseApp(PingInfo.CloseConnectionMessage, 'Close Connection');
end;

procedure TdmMain.tmrFreeLoginInfoMemoryMapFileTimer(Sender: TObject);
begin
  inherited;
  tmrFreeLoginInfoMemoryMapFile.Enabled:= False;
  FreeLoginInfoMemoryMapFile;
end;

procedure TdmMain.tmrDateCheckTimer(Sender: TObject);
begin
  tmrDateCheck.Enabled:= False;
  try
    DoDateCheck;
  finally
    tmrDateCheck.Enabled:= True;
  end;
end;

procedure TdmMain.StartDateCheck;
begin
  tmrDateCheck.Enabled:= True;
end;

procedure TdmMain.StopDateCheck;
begin
  tmrDateCheck.Enabled:= False;
end;

procedure TdmMain.SetParentWindowHandle(const Value: THandle);
begin
  FParentWindowHandle:= Value;
end;

function TdmMain.GetDateFormat: string;
begin
  Result:= 'dd.mm.yyyy';
end;

function TdmMain.GetDateFormatString: string;
begin
  if (DateFormat = diWeek) then
    Result:= GetWeekDateFormat
  else
    Result:= GetDateFormat;
end;

function TdmMain.GetWeekDateFormat: string;
begin
  Result:= 'ww\e\iiii';
end;

function TdmMain.GetDateIntervalAsShortString(ABeginDate,
  AEndDate: TDateTime): string;
begin
  Result:= GetPeriodAsShortString(
    ABeginDate, AEndDate, GetDateDisplayFormat,
    (DateIntervalFormat = didsBeginDateWorkdays),
    (DateIntervalFormat = didsBeginDateEndDate)
  );
end;

procedure TdmMain.StartCloseConnectionCheck;
begin
  tmrCheckCloseConnectionRequested.Enabled:= True;
end;

procedure TdmMain.StopCloseConnectionCheck;
begin
  tmrCheckCloseConnectionRequested.Enabled:= False;
end;

procedure TdmMain.CheckServerConnection;
begin
  CheckServerExeVersion;
end;

procedure TdmMain.CheckServerExeVersion;
begin
  if (SvrSession.GetExeVersion <> FExeVersion) then
    raise Exception.Create(SIncompatibleVersions);
end;

function TdmMain.GetDateIntervalAsString(ABeginDate,
  AEndDate: TDateTime): string;
begin
  Result:= GetPeriodAsShortString(
    ABeginDate, AEndDate, GetIntervalDateDisplayFormat,
    (DateIntervalFormat = didsBeginDateWorkdays),
    (DateIntervalFormat = didsBeginDateEndDate)
  );
end;

function TdmMain.GetIntervalDateDisplayFormat: string;
begin
  case DateFormat of
    diMonth: Result:= GetDateFormat;
    diWeek:  Result:= GetWeekDateFormat;
  else
    raise Exception.Create('Unknown date format');
  end;
end;

function TdmMain.GetDateDisplayFormat: string;
begin
  case DateFormat of
    diMonth: Result:= GetDateFormat;
    diWeek:  Result:= GetWeekDateFormat;
  else
    raise Exception.Create('Unknown date format');
  end;
end;

function TdmMain.IsWorkday(ADate: TDateTime): Boolean;
begin
  Result:= FDateInfo[Trunc(ADate)].IsWorkday;
end;

function TdmMain.TempCacheTimeout(ATimeout: Integer): TNestProcRec;
var
  pc: TAbmesDSProviderConnection;
begin
  Result:= EmptyNestProcRec;
  for pc in AllComponents.OfType<TAbmesDSProviderConnection> do
    Result:=
      Result/
        pc.TempCacheTimeout(ATimeout);
end;

function TdmMain.InternalTempIgnoreConnectionException: TNestProcRec;
begin
  Result:=
    TNestProcRec.Create(
      procedure (AProc: TProc)
      begin
        try
          AProc;
        except
          on E: Exception do
            if not IsConnectionException(E) then
              raise;
        end;
      end);
end;

function TdmMain.TempIgnoreConnectionError: TNestProcRec;
begin
  Result:=
    FDisableReconnect.TempEnter/
      InternalTempIgnoreConnectionException;
end;

procedure TdmMain.TerminateConnection;
begin
  SetConnectionTerminated(GetConnectionId(conDatasnap), True);
end;

end.

