unit dSvrMain;

interface

uses
  SysUtils, Classes, JvStringHolder, ExtCtrls, uSvrUtils, uSessionContext,
  SyncObjs, Generics.Collections, Datasnap.DSCommonServer,
  Datasnap.DSTCPServerTransport, Datasnap.DSServer, IPPeerServer,
  Data.DBXCommon, Data.DBCommonTypes, DbxCompressionFilter,
  DbxSocketChannelNative, Datasnap.DSHTTP, Datasnap.DSHTTPCommon,
  Datasnap.DSHTTPWebBroker, IdContext, IdCustomHTTPServer, IdBaseComponent,
  IdComponent, IdCustomTCPServer, IdHTTPServer, uServerConfig;

type
  TdmSvrMain = class(TDataModule)
    mshMainMacroLibrary: TJvMultiStringHolder;
    mshBudgetMacroLibrary: TJvMultiStringHolder;
    DSServer: TDSServer;
    dsscCommon: TDSServerClass;
    dsscCompanies: TDSServerClass;
    dsscCompany: TDSServerClass;
    dsscDeficit: TDSServerClass;
    dsscDeliveries: TDSServerClass;
    dsscDeptsTree: TDSServerClass;
    dsscDeptsTreeEditor: TDSServerClass;
    dsscGroupSales: TDSServerClass;
    dsscInvoices: TDSServerClass;
    dsscLogin: TDSServerClass;
    dsscProductsTree: TDSServerClass;
    dsscProductQuantitiesTree: TDSServerClass;
    dsscProductsTreeEditor: TDSServerClass;
    dsscSaleOrders: TDSServerClass;
    dsscParRelProducts: TDSServerClass;
    dsscSales: TDSServerClass;
    dsscSalesCommon: TDSServerClass;
    dsscSpecifications: TDSServerClass;
    dsscStore: TDSServerClass;
    dsscStoreRequests: TDSServerClass;
    dsscVIM: TDSServerClass;
    dsscAdmin: TDSServerClass;
    dsscSaleReports: TDSServerClass;
    dsscModelMovements: TDSServerClass;
    dsscModelChanges: TDSServerClass;
    dsscModelReports: TDSServerClass;
    dsscNonDbUtils: TDSServerClass;
    dsscDoc: TDSServerClass;
    dsscFilter: TDSServerClass;
    dsscProductionProductsTree: TDSServerClass;
    dsscNeeds: TDSServerClass;
    dsscExtensions: TDSServerClass;
    dsscProductTreeNodeFilter: TDSServerClass;
    dsscParamProductTreeNodeFilter: TDSServerClass;
    dsscDeptTreeNodeFilter: TDSServerClass;
    dsscBaseGroups: TDSServerClass;
    dsscHumanResource: TDSServerClass;
    dsscCapacity: TDSServerClass;
    dsscBudget: TDSServerClass;
    dsscDocItemViewGenerators: TDSServerClass;
    dsscShifts: TDSServerClass;
    dsscDocXML: TDSServerClass;
    dsscEngineering: TDSServerClass;
    dsscEmployeeAvailability: TDSServerClass;
    dsscOrganisationTasks: TDSServerClass;
    dsscExceptEvents: TDSServerClass;
    dsscFinance: TDSServerClass;
    dsscProcesses: TDSServerClass;
    dsscXModels: TDSServerClass;
    dsscMfgReports: TDSServerClass;
    dsscSession: TDSServerClass;
    mshFinanceMacroLibrary: TJvMultiStringHolder;
    mshProcessesMacroLibrary: TJvMultiStringHolder;
    DSTCPServerTransport: TDSTCPServerTransport;
    mshOrganisationTasks: TJvMultiStringHolder;
    mshDocOwnerTypes: TJvMultiStringHolder;
    dsscCompanyFilter: TDSServerClass;
    mshExceptEvents: TJvMultiStringHolder;
    tmrRestoreUnavailableExecuteServers: TTimer;
    tmrFreeExpiredSessionContexts: TTimer;
    DSHTTPService: TDSHTTPService;
    VersionHTTPServer: TIdHTTPServer;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure dsscCommonGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscCompaniesGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscCompanyGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscDeficitGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscDeliveriesGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscDeptsTreeGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscDeptsTreeEditorGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscGroupSalesGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscInvoicesGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscLoginGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscProductsTreeGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscProductQuantitiesTreeGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscProductsTreeEditorGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscSaleOrdersGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscParRelProductsGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscSalesGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscSalesCommonGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscSpecificationsGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscStoreGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscStoreRequestsGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscVIMGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscAdminGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscSaleReportsGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscModelMovementsGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscModelChangesGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscModelReportsGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscNonDbUtilsGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscDocGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscFilterGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscProductionProductsTreeGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscNeedsGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscExtensionsGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscProductTreeNodeFilterGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscParamProductTreeNodeFilterGetClass(
      DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
    procedure dsscDeptTreeNodeFilterGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscBaseGroupsGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscHumanResourceGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscCapacityGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscBudgetGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscDocItemViewGeneratorsGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscShiftsGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscDocXMLGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscEngineeringGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscEmployeeAvailabilityGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscOrganisationTasksGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscExceptEventsGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscFinanceGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscProcessesGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscXModelsGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscMfgReportsGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscSessionGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dsscCommonCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscCompaniesCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscCompanyCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscDeficitCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscDeliveriesCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscDeptsTreeCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscDeptsTreeEditorCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscGroupSalesCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscInvoicesCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscLoginCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscProductsTreeCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscProductQuantitiesTreeCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscProductsTreeEditorCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscSaleOrdersCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscParRelProductsCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscSalesCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscSalesCommonCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscSpecificationsCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscStoreCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscStoreRequestsCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscVIMCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscAdminCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscSaleReportsCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscModelMovementsCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscModelChangesCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscModelReportsCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscNonDbUtilsCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscDocCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscFilterCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscProductionProductsTreeCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscNeedsCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscExtensionsCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscProductTreeNodeFilterCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscParamProductTreeNodeFilterCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscDeptTreeNodeFilterCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscBaseGroupsCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscHumanResourceCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscCapacityCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscBudgetCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscDocItemViewGeneratorsCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscShiftsCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscDocXMLCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscEngineeringCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscEmployeeAvailabilityCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscOrganisationTasksCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscExceptEventsCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscFinanceCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscProcessesCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscXModelsCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscMfgReportsCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscSessionCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscDestroyInstance(
      DSDestroyInstanceEventObject: TDSDestroyInstanceEventObject);
    procedure DSServerConnect(DSConnectEventObject: TDSConnectEventObject);
    procedure dsscCompanyFilterCreateInstance(
      DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
    procedure dsscCompanyFilterGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure tmrRestoreUnavailableExecuteServersTimer(Sender: TObject);
    procedure tmrFreeExpiredSessionContextsTimer(Sender: TObject);
    procedure DSServerDisconnect(DSConnectEventObject: TDSConnectEventObject);
    procedure VersionHTTPServerCommandGet(AContext: TIdContext;
      ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    function DSServerTrace(TraceInfo: TDBXTraceInfo): CBRType;
  private
    FMacroLibraries: TMacroLibraryList;
    FStringsLibraryCriticalSection: TCriticalSection;
    FStringsLibrary: TDictionary<string, string>;
    FStringsSavedMemory: Int64;
    FServerCallsLogDirectory: string;
    FServerCallsAsyncLogging: Boolean;
    FLockOtherComputersSessions: Boolean;
    FComputerSwitchTimeoutMinutes: Integer;
    FExeVersion: string;
    FServerConfig: TServerConfig;
    function RegisterString(const AString: string): string;
    procedure RegisterStrings(const AStrings: TStrings);
    procedure LoadSettings;
    procedure LogMethodCall(const AFullMethodName: string);
    function ConnectPropertiesToClientInfo(const AIPAddress, AProtocol: string;
      AProperties: TDBXProperties): TClientInfo;
    procedure CheckExeVersion(AProperties: TDBXProperties);
    procedure InitializeSessionContext(const AIPAddress, AProtocol: string; AProperties: TDBXProperties);
    procedure EnsureValidLoginContext;
    procedure LoadLoginContext;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure AddDataModuleToStringListsLibrary(ADataModule: TDataModule);
    function ServerCallsLogEnabled: Boolean;

    property MacroLibraries: TMacroLibraryList read FMacroLibraries;
    property StringsSavedMemory: Int64 read FStringsSavedMemory;

    property LockOtherComputersSessions: Boolean read FLockOtherComputersSessions;
    property ComputerSwitchTimeoutMinutes: Integer read FComputerSwitchTimeoutMinutes;
  end;

var
  dmSvrMain: TdmSvrMain;

implementation

uses
  Windows, uServerConfigRepository, dPooledDataModule, dDBDataModule,
  DB, AbmesSQLQuery, Math, dCommon, dCompanies, dCompany, dBaseGroups, dBudget,
  dCapacity, dDeficit, dDeliveries, dDeptsTree, dDeptsTreeEditor,
  dDeptTreeNodeFilter, dDoc, dDocItemViewGenerators, dDocXML,
  dEmployeeAvailability, dEngineering, dExceptEvents, dExtensions, dFilter,
  dFinance, dGroupSales, dHumanResource, dInvoices, dLogin, dMfgReports,
  dModelChanges, dModelMovements, dModelReports, dNeeds, dNomTree,
  dNomWithParamsTree, dNonDbUtils, dOrganisationTasks,
  dParamProductTreeNodeFilter, dParRelProducts, dProcesses,
  dProductionProductsTree, dProductQuantitiesTree, dProductsTree,
  dProductsTreeEditor, dProductTreeNodeFilter, dSaleOrders, dSaleReports,
  dSales, dSalesCommon, dShifts, dSpecifications, dStore, dStoreRequests, dTree,
  dTreeNodeFilter, dVIM, dXModels, dAdmin, dSession,
  uUtils, StrUtils, JclFileUtils, IdTCPConnection, uConnectionUtils,
  dCompanyFilter, uExecuteServers, uDBPooledDataModuleHelper,
  uServerCallsLogger, uAuthenticationToken, System.TimeSpan, uConnectionContext,
  System.Threading, uEnumeratorUtils, uObjParams, System.IOUtils,
  uServerMessageIds;

{$R *.dfm}

{ TdmSvrMain }

function TdmSvrMain.RegisterString(const AString: string): string;
begin
  if not FStringsLibrary.ContainsKey(AString) then
    FStringsLibrary.Add(AString, AString);

  Result:= FStringsLibrary[AString];
end;

procedure TdmSvrMain.RegisterStrings(const AStrings: TStrings);
var
  i: Integer;
begin
  for i:= 0 to AStrings.Count - 1 do
    AStrings[i]:= RegisterString(AStrings[i]);
end;

procedure TdmSvrMain.AddDataModuleToStringListsLibrary(ADataModule: TDataModule);

  procedure RegisterFieldNames(AFields: TFields);
  var
    Field: TField;
  begin
    for Field in AFields do
      Field.FieldName:= RegisterString(Field.FieldName);
  end;

  procedure RegisterParamNames(AParams: TParams);
  var
    Param: TParam;
  begin
    for Param in AParams do
      Param.Name:= RegisterString(Param.Name);
  end;

  procedure RegisterParamValues(AParams: TParams);
  var
    Param: TParam;
  begin
    for Param in AParams do
      Param.Value:= RegisterString(Param.Value);
  end;

  procedure RegisterFields;
  var
    DataSet: TDataSet;
  begin
    for DataSet in ADataModule.AllComponents.OfType<TDataSet> do
      RegisterFieldNames(DataSet.Fields);
  end;

  procedure RegisterParamsAndMacros;
  var
    qry: TAbmesSQLQuery;
  begin
    for qry in ADataModule.AllComponents.OfType<TAbmesSQLQuery> do
      begin
        RegisterParamNames(qry.Params);
        RegisterParamNames(qry.CustomParams);
        RegisterParamNames(qry.MacroParams);
        RegisterParamNames(qry.Macros);
        RegisterParamValues(qry.Macros);
      end;
  end;

  procedure RegisterSQLs;
  var
    qry: TAbmesSQLQuery;
  begin
    for qry in ADataModule.AllComponents.OfType<TAbmesSQLQuery> do
      (qry.SQL as TStringList).TempDisableOnChange/
        procedure begin
          RegisterStrings(qry.SQL);
        end;
  end;

  procedure RegisterStrHolders;
  var
    sh: TJvStrHolder;
  begin
    for sh in ADataModule.AllComponents.OfType<TJvStrHolder> do
      (sh.Strings as TStringList).TempDisableOnChange/
        procedure begin
          RegisterStrings(sh.Strings);
        end;
  end;

  procedure RegisterMultiStringHolders;
  var
    msh: TJvMultiStringHolder;
    mshci: TJvMultiStringHolderCollectionItem;
  begin
    for msh in ADataModule.AllComponents.OfType<TJvMultiStringHolder> do
      for mshci in msh.MultipleStrings.AsOf<TJvMultiStringHolderCollectionItem> do
        RegisterStrings(mshci.Strings);
  end;

var
  OldMem: Int64;
  NewMem: Int64;
begin
  if Assigned(FStringsLibraryCriticalSection) then
    begin
      FStringsLibraryCriticalSection.Enter;
      try
        OldMem:= GetFastMMAllocatedMemory;

        RegisterFields;
        RegisterParamsAndMacros;
        RegisterSQLs;
        RegisterStrHolders;
        RegisterMultiStringHolders;

        NewMem:= GetFastMMAllocatedMemory;

        Inc(FStringsSavedMemory, OldMem - NewMem);
      finally
        FStringsLibraryCriticalSection.Leave;
      end;
    end;
end;

constructor TdmSvrMain.Create(AOwner: TComponent);
begin
  FMacroLibraries:= TMacroLibraryList.Create(Self);

  inherited Create(AOwner);

  FStringsLibrary:= TDictionary<string, string>.Create;
  FStringsLibraryCriticalSection:= TCriticalSection.Create;

  FExeVersion:= GetExeVersion;

  FServerConfig:= GetStartupServerConfig;
end;

procedure TdmSvrMain.DataModuleCreate(Sender: TObject);
begin
  MacroLibraries.RegisterMacroLibrary(mshMainMacroLibrary);
  MacroLibraries.RegisterMacroLibrary(mshBudgetMacroLibrary);
  MacroLibraries.RegisterMacroLibrary(mshFinanceMacroLibrary);
  MacroLibraries.RegisterMacroLibrary(mshProcessesMacroLibrary);
  MacroLibraries.RegisterMacroLibrary(mshOrganisationTasks);
  MacroLibraries.RegisterMacroLibrary(mshDocOwnerTypes);
  MacroLibraries.RegisterMacroLibrary(mshExceptEvents);
  MacroLibraries.ExpandOwnedMacroLibraries;

  LoadSettings;

  TServerCallsLoggerFactory.Initialize(FServerCallsLogDirectory, FServerCallsAsyncLogging);

  DSServer.Start;
end;

procedure TdmSvrMain.DataModuleDestroy(Sender: TObject);
begin
  DSServer.Stop;

  MacroLibraries.UnregisterMacroLibrary(mshExceptEvents);
  MacroLibraries.UnregisterMacroLibrary(mshDocOwnerTypes);
  MacroLibraries.UnregisterMacroLibrary(mshOrganisationTasks);
  MacroLibraries.UnregisterMacroLibrary(mshProcessesMacroLibrary);
  MacroLibraries.UnregisterMacroLibrary(mshFinanceMacroLibrary);
  MacroLibraries.UnregisterMacroLibrary(mshBudgetMacroLibrary);
  MacroLibraries.UnregisterMacroLibrary(mshMainMacroLibrary);
end;

destructor TdmSvrMain.Destroy;
begin
  FreeAndNil(FStringsLibraryCriticalSection);
  FreeAndNil(FStringsLibrary);

  inherited Destroy;

  FreeAndNil(FMacroLibraries);
end;

procedure TdmSvrMain.dsscAdminCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmAdminProxy.Singleton;
end;

procedure TdmSvrMain.dsscAdminGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmAdminProxy;
end;

procedure TdmSvrMain.dsscBaseGroupsCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmBaseGroupsProxy.Singleton;
end;

procedure TdmSvrMain.dsscBaseGroupsGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmBaseGroupsProxy;
end;

procedure TdmSvrMain.dsscBudgetCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmBudgetProxy.Singleton;
end;

procedure TdmSvrMain.dsscBudgetGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmBudgetProxy;
end;

procedure TdmSvrMain.dsscCapacityCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmCapacityProxy.Singleton;
end;

procedure TdmSvrMain.dsscCapacityGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmCapacityProxy;
end;

procedure TdmSvrMain.dsscCommonCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmCommonProxy.Singleton;
end;

procedure TdmSvrMain.dsscCommonGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmCommonProxy;
end;

procedure TdmSvrMain.dsscCompaniesCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmCompaniesProxy.Singleton;
end;

procedure TdmSvrMain.dsscCompaniesGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmCompaniesProxy;
end;

procedure TdmSvrMain.dsscCompanyCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmCompanyProxy.Singleton;
end;

procedure TdmSvrMain.dsscCompanyFilterCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmCompanyFilterProxy.Singleton;
end;

procedure TdmSvrMain.dsscCompanyFilterGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmCompanyFilterProxy;
end;

procedure TdmSvrMain.dsscCompanyGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmCompanyProxy;
end;

procedure TdmSvrMain.dsscDeficitCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmDeficitProxy.Singleton;
end;

procedure TdmSvrMain.dsscDeficitGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmDeficitProxy;
end;

procedure TdmSvrMain.dsscDeliveriesCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmDeliveriesProxy.Singleton;
end;

procedure TdmSvrMain.dsscDeliveriesGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmDeliveriesProxy;
end;

procedure TdmSvrMain.dsscDeptsTreeCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmDeptsTreeProxy.Singleton;
end;

procedure TdmSvrMain.dsscDeptsTreeEditorCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmDeptsTreeEditorProxy.Singleton;
end;

procedure TdmSvrMain.dsscDeptsTreeEditorGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmDeptsTreeEditorProxy;
end;

procedure TdmSvrMain.dsscDeptsTreeGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmDeptsTreeProxy;
end;

procedure TdmSvrMain.dsscDeptTreeNodeFilterCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmDeptTreeNodeFilterProxy.Singleton;
end;

procedure TdmSvrMain.dsscDeptTreeNodeFilterGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmDeptTreeNodeFilterProxy;
end;

procedure TdmSvrMain.dsscDestroyInstance(
  DSDestroyInstanceEventObject: TDSDestroyInstanceEventObject);
begin
  DSDestroyInstanceEventObject.ServerClassInstance:= nil;
end;

procedure TdmSvrMain.dsscDocCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmDocProxy.Singleton;
end;

procedure TdmSvrMain.dsscDocGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmDocProxy;
end;

procedure TdmSvrMain.dsscDocItemViewGeneratorsCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmDocItemViewGeneratorsProxy.Singleton;
end;

procedure TdmSvrMain.dsscDocItemViewGeneratorsGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmDocItemViewGeneratorsProxy;
end;

procedure TdmSvrMain.dsscDocXMLCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmDocXMLProxy.Singleton;
end;

procedure TdmSvrMain.dsscDocXMLGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmDocXMLProxy;
end;

procedure TdmSvrMain.dsscEmployeeAvailabilityCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmEmployeeAvailabilityProxy.Singleton;
end;

procedure TdmSvrMain.dsscEmployeeAvailabilityGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmEmployeeAvailabilityProxy;
end;

procedure TdmSvrMain.dsscEngineeringCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmEngineeringProxy.Singleton;
end;

procedure TdmSvrMain.dsscEngineeringGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmEngineeringProxy;
end;

procedure TdmSvrMain.dsscExceptEventsCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmExceptEventsProxy.Singleton;
end;

procedure TdmSvrMain.dsscExceptEventsGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmExceptEventsProxy;
end;

procedure TdmSvrMain.dsscExtensionsCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmExtensionsProxy.Singleton;
end;

procedure TdmSvrMain.dsscExtensionsGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmExtensionsProxy;
end;

procedure TdmSvrMain.dsscFilterCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmFilterProxy.Singleton;
end;

procedure TdmSvrMain.dsscFilterGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmFilterProxy;
end;

procedure TdmSvrMain.dsscFinanceCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmFinanceProxy.Singleton;
end;

procedure TdmSvrMain.dsscFinanceGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmFinanceProxy;
end;

procedure TdmSvrMain.dsscGroupSalesCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmGroupSalesProxy.Singleton;
end;

procedure TdmSvrMain.dsscGroupSalesGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmGroupSalesProxy;
end;

procedure TdmSvrMain.dsscHumanResourceCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmHumanResourceProxy.Singleton;
end;

procedure TdmSvrMain.dsscHumanResourceGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmHumanResourceProxy;
end;

procedure TdmSvrMain.dsscInvoicesCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmInvoicesProxy.Singleton;
end;

procedure TdmSvrMain.dsscInvoicesGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmInvoicesProxy;
end;

procedure TdmSvrMain.dsscLoginCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmLoginProxy.Singleton;
end;

procedure TdmSvrMain.dsscLoginGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmLoginProxy;
end;

procedure TdmSvrMain.dsscMfgReportsCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmMfgReportsProxy.Singleton;
end;

procedure TdmSvrMain.dsscMfgReportsGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmMfgReportsProxy;
end;

procedure TdmSvrMain.dsscModelChangesCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmModelChangesProxy.Singleton;
end;

procedure TdmSvrMain.dsscModelChangesGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmModelChangesProxy;
end;

procedure TdmSvrMain.dsscModelMovementsCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmModelMovementsProxy.Singleton;
end;

procedure TdmSvrMain.dsscModelMovementsGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmModelMovementsProxy;
end;

procedure TdmSvrMain.dsscModelReportsCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmModelReportsProxy.Singleton;
end;

procedure TdmSvrMain.dsscModelReportsGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmModelReportsProxy;
end;

procedure TdmSvrMain.dsscNeedsCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmNeedsProxy.Singleton;
end;

procedure TdmSvrMain.dsscNeedsGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmNeedsProxy;
end;

procedure TdmSvrMain.dsscNonDbUtilsCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmNonDbUtilsProxy.Singleton;
end;

procedure TdmSvrMain.dsscNonDbUtilsGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmNonDbUtilsProxy;
end;

procedure TdmSvrMain.dsscOrganisationTasksCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmOrganisationTasksProxy.Singleton;
end;

procedure TdmSvrMain.dsscOrganisationTasksGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmOrganisationTasksProxy;
end;

procedure TdmSvrMain.dsscParamProductTreeNodeFilterCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmParamProductTreeNodeFilterProxy.Singleton;
end;

procedure TdmSvrMain.dsscParamProductTreeNodeFilterGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmParamProductTreeNodeFilterProxy;
end;

procedure TdmSvrMain.dsscParRelProductsCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmParRelProductsProxy.Singleton;
end;

procedure TdmSvrMain.dsscParRelProductsGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmParRelProductsProxy;
end;

procedure TdmSvrMain.dsscProcessesCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmProcessesProxy.Singleton;
end;

procedure TdmSvrMain.dsscProcessesGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmProcessesProxy;
end;

procedure TdmSvrMain.dsscProductionProductsTreeCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmProductionProductsTreeProxy.Singleton;
end;

procedure TdmSvrMain.dsscProductionProductsTreeGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmProductionProductsTreeProxy;
end;

procedure TdmSvrMain.dsscProductQuantitiesTreeCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmProductQuantitiesTreeProxy.Singleton;
end;

procedure TdmSvrMain.dsscProductQuantitiesTreeGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmProductQuantitiesTreeProxy;
end;

procedure TdmSvrMain.dsscProductsTreeCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmProductsTreeProxy.Singleton;
end;

procedure TdmSvrMain.dsscProductsTreeEditorCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmProductsTreeEditorProxy.Singleton;
end;

procedure TdmSvrMain.dsscProductsTreeEditorGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmProductsTreeEditorProxy;
end;

procedure TdmSvrMain.dsscProductsTreeGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmProductsTreeProxy;
end;

procedure TdmSvrMain.dsscProductTreeNodeFilterCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmProductTreeNodeFilterProxy.Singleton;
end;

procedure TdmSvrMain.dsscProductTreeNodeFilterGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmProductTreeNodeFilterProxy;
end;

procedure TdmSvrMain.dsscSaleOrdersCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmSaleOrdersProxy.Singleton;
end;

procedure TdmSvrMain.dsscSaleOrdersGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmSaleOrdersProxy;
end;

procedure TdmSvrMain.dsscSaleReportsCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmSaleReportsProxy.Singleton;
end;

procedure TdmSvrMain.dsscSaleReportsGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmSaleReportsProxy;
end;

procedure TdmSvrMain.dsscSalesCommonCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmSalesCommonProxy.Singleton;
end;

procedure TdmSvrMain.dsscSalesCommonGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmSalesCommonProxy;
end;

procedure TdmSvrMain.dsscSalesCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmSalesProxy.Singleton;
end;

procedure TdmSvrMain.dsscSalesGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmSalesProxy;
end;

procedure TdmSvrMain.dsscSessionCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmSessionProxy.Singleton;
end;

procedure TdmSvrMain.dsscSessionGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmSessionProxy;
end;

procedure TdmSvrMain.dsscShiftsCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmShiftsProxy.Singleton;
end;

procedure TdmSvrMain.dsscShiftsGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmShiftsProxy;
end;

procedure TdmSvrMain.dsscSpecificationsCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmSpecificationsProxy.Singleton;
end;

procedure TdmSvrMain.dsscSpecificationsGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmSpecificationsProxy;
end;

procedure TdmSvrMain.dsscStoreCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmStoreProxy.Singleton;
end;

procedure TdmSvrMain.dsscStoreGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmStoreProxy;
end;

procedure TdmSvrMain.dsscStoreRequestsCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmStoreRequestsProxy.Singleton;
end;

procedure TdmSvrMain.dsscStoreRequestsGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmStoreRequestsProxy;
end;

procedure TdmSvrMain.dsscVIMCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmVIMProxy.Singleton;
end;

procedure TdmSvrMain.dsscVIMGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmVIMProxy;
end;

procedure TdmSvrMain.dsscXModelsCreateInstance(
  DSCreateInstanceEventObject: TDSCreateInstanceEventObject);
begin
  DSCreateInstanceEventObject.ServerClassInstance:= TdmXModelsProxy.Singleton;
end;

procedure TdmSvrMain.dsscXModelsGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmXModelsProxy;
end;

procedure TdmSvrMain.CheckExeVersion(AProperties: TDBXProperties);
var
  ExeVersion: string;
begin
  ExeVersion:= AProperties[TConnectionPropertyNames.ExeVersion];

  if (ExeVersion <> FExeVersion) then
    raise Exception.Create(SIncompatibleExeVersionsId);
end;

function TdmSvrMain.ConnectPropertiesToClientInfo(const AIPAddress, AProtocol: string;
  AProperties: TDBXProperties): TClientInfo;
var
  ComputerName: string;
  WindowsUserName: string;
  WindowsSessionId: Integer;
  WindowsVersion: string;
  SystemLocale: Integer;
  SysVolumeSerialNumber: string;
  HardwareInfo: string;
  StartupContextDateOverride: TDateTime;
  IsSessionReadOnly: Boolean;
  LoginName: string;
begin
  ComputerName:= AProperties.Values[TConnectionPropertyNames.ComputerName];
  WindowsUserName:= AProperties.Values[TConnectionPropertyNames.WindowsUserName];
  WindowsSessionId:= StrToIntDef(AProperties.Values[TConnectionPropertyNames.WindowsSessionId], 0);
  WindowsVersion:= AProperties.Values[TConnectionPropertyNames.WindowsVersion];
  SystemLocale:= StrToIntDef(AProperties.Values[TConnectionPropertyNames.SystemLocale], 0);
  SysVolumeSerialNumber:= AProperties.Values[TConnectionPropertyNames.SysVolumeSerialNumber];
  HardwareInfo:= AProperties.Values[TConnectionPropertyNames.HardwareInfo];
  StartupContextDateOverride:= StrToFloatDef(AProperties.Values[TConnectionPropertyNames.StartupContextDateOverride], 0);
  IsSessionReadOnly:= Boolean(StrToIntDef(AProperties.Values[TConnectionPropertyNames.IsSessionReadOnly], 0));
  LoginName:= AProperties.Values[TConnectionPropertyNames.LoginName];

  Result:= TClientInfo.Create(
    AIPAddress,
    AProtocol,
    ComputerName,
    WindowsUserName,
    WindowsSessionId,
    WindowsVersion,
    SystemLocale,
    SysVolumeSerialNumber,
    HardwareInfo,
    StartupContextDateOverride,
    IsSessionReadOnly,
    LoginName
  );
end;

procedure TdmSvrMain.InitializeSessionContext(const AIPAddress, AProtocol: string; AProperties: TDBXProperties);
var
  ClientSessionGuid: string;
  AuthenticationTokenString: string;
  DBName: string;
begin
  ClientSessionGuid:= AProperties[TConnectionPropertyNames.ClientSessionGuid];
  AuthenticationTokenString:= AProperties[TConnectionPropertyNames.AuthenticationToken];
  DBName:= AProperties[TConnectionPropertyNames.DBName];

  if (ClientSessionGuid = '') then
    raise Exception.Create('Client session GUID required!');

  if (AuthenticationTokenString = '') then
    raise Exception.Create('Authentication token required!');

  if (DBName = '') then
    raise Exception.Create('DB name required!');

  EnsureSessionContext(ClientSessionGuid, AuthenticationTokenString, DBName);

  ///////if (uConnectionContext.ConnectionPurpose = cpMain) or (SessionContext.ClientInfo.IPAddress = '') then
  SessionContext.ClientInfo:= ConnectPropertiesToClientInfo(AIPAddress, AProtocol, AProperties);

  EnsureValidLoginContext;
end;

procedure TdmSvrMain.EnsureValidLoginContext;
var
  sc: TSessionContext;
begin
  sc:= SessionContext;

  if (uConnectionContext.ConnectionPurpose = cpMain) and
     (not sc.AuthenticationToken.IsEmpty) and
     (not sc.LoginContext.IsValid) and
     (not sc.LoginContext.IsInUse) then
    begin
      LoadLoginContext;
      sc.LoginContext.IsValid:= True;
    end;
end;

procedure TdmSvrMain.VersionHTTPServerCommandGet(AContext: TIdContext;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
begin
  if (ARequestInfo.URI = '/version') then
    begin
      AResponseInfo.CustomHeaders.AddValue('Access-Control-Allow-Origin', '*');
      AResponseInfo.ContentText:= FExeVersion;
    end
  else
    AResponseInfo.ResponseNo:= 404;
end;

procedure TdmSvrMain.LoadLoginContext;
begin
  SvrLogin.LoadLoginContext;
end;

procedure TdmSvrMain.DSServerConnect(
  DSConnectEventObject: TDSConnectEventObject);
begin
  Assert(Assigned(DSConnectEventObject));

  // fix za riadak problem v Windows 7, sluchvasht se predimno na predvaritelno instalirani laptopi
  SetThreadLocale(LOCALE_USER_DEFAULT);

  InitializeConnectionContext(
    StrToConnectionPurpose(DSConnectEventObject.ConnectProperties[TConnectionPropertyNames.ConnectionPurpose]),
    DSConnectEventObject.ConnectProperties[TConnectionPropertyNames.ClientSessionGuid]);

  CheckExeVersion(DSConnectEventObject.ConnectProperties);

  InitializeSessionContext(
    DSConnectEventObject.ChannelInfo.ClientInfo.IpAddress,
    DSConnectEventObject.ChannelInfo.ClientInfo.Protocol,
    DSConnectEventObject.ConnectProperties);
end;

procedure TdmSvrMain.DSServerDisconnect(
  DSConnectEventObject: TDSConnectEventObject);
begin
  Assert((ConnectionPurpose <> cpMain) or (not SessionContext.LoginContext.IsInUse));
end;

function TdmSvrMain.DSServerTrace(TraceInfo: TDBXTraceInfo): CBRType;
const
  Prefix = '"DataSnap.ServerMethod","';
  PrefixLength = Length(Prefix);
  ExcludeMethodNames: array of string = ['TdmNonDbUtilsProxy.Ping'];

  function IsExcludedMethod(const AMethodName: string): Boolean;
  var
    m: string;
  begin
    if (Pos('.AS_', AMethodName) > 0) then
      Exit(True);

    for m in ExcludeMethodNames do
      if (m = AMethodName) then
        Exit(True);

    Result:= False;
  end;

  function GetFullMethodName: string;
  var
    p, e: Integer;
  begin
    Result:= '';
    p:= Pos(Prefix, TraceInfo.Message);
    if (p > 0) then
      begin
        e:= PosEx('"', TraceInfo.Message, p + PrefixLength);
        if (e > 0) then
          Result:= SubString(TraceInfo.Message, p + PrefixLength, e - 1);
      end;
  end;

var
  FullMethodName: string;
begin
  FullMethodName:= GetFullMethodName;
  if (FullMethodName <> '') then
    begin
      if not IsExcludedMethod(FullMethodName) then
        begin
          if ServerCallsLogEnabled then
            LogMethodCall(FullMethodName);

          SessionContext.LastCallMethodName:= FullMethodName;
        end
    end;

  Result:= cbrUSEDEF;
end;

procedure TdmSvrMain.LogMethodCall(const AFullMethodName: string);
var
  DBName: string;
  UserCode: Integer;
begin
  DBName:= SessionContext.DBName;
  UserCode:= SessionContext.LoginContext.UserCode;

  TServerCallsLoggerFactory.GetLogger().LogMethodCall(AFullMethodName, DBName, UserCode);
end;

function TdmSvrMain.ServerCallsLogEnabled: Boolean;
begin
  Result:= (FServerCallsLogDirectory <> '');
end;

procedure TdmSvrMain.LoadSettings;

  procedure SetServerTransport(AServerTransport: TDSTCPServerTransport; APort: Integer);
  begin
    if (APort = 0) then
      AServerTransport.Server:= nil
    else
      begin
        AServerTransport.Server:= DSServer;
        AServerTransport.Port:= APort;
      end;
  end;  { SetServerTransport }

  procedure SetDSHTTPService(ADSHTTPService: TDSHTTPService; APort: Integer);
  begin
    if (APort = 0) then
      ADSHTTPService.Server:= nil
    else
      begin
        ADSHTTPService.Server:= DSServer;
        ADSHTTPService.HttpPort:= APort;
      end;
  end;  { SetServerTransport }

  procedure SetVersionHTTPServer(APort: Integer);
  begin
    if (APort <> 0) then
      VersionHTTPServer.DefaultPort:= APort;

    VersionHTTPServer.Active:= (APort <> 0);
  end;

begin
  FServerCallsLogDirectory:= FServerConfig.ServerCallsLogDirectory;
  FServerCallsAsyncLogging:= FServerConfig.ServerCallsAsyncLogging;
  FLockOtherComputersSessions:= FServerConfig.LockOtherComputersSessions;
  FComputerSwitchTimeoutMinutes:= FServerConfig.ComputerSwitchTimeoutMinutes;

  SetServerTransport(DSTCPServerTransport, FServerConfig.DatasnapPort);
  SetDSHTTPService(DSHTTPService, FServerConfig.HttpPort);
  SetVersionHTTPServer(FServerConfig.VersionHttpPort);
end;

procedure TdmSvrMain.tmrFreeExpiredSessionContextsTimer(Sender: TObject);
begin
  with TRoutineTraceLogger.Create('TdmSvrMain.tmrFreeExpiredSessionContextsTimer') do
    begin
      LogEnter;
      try

        TTask.Run(GarbageCollectSessions);
        TTask.Run(GarbageCollectSessionContexts);

      except
        LogException;
        raise;
      end;
      LogLeave;
    end;
end;

procedure TdmSvrMain.tmrRestoreUnavailableExecuteServersTimer(Sender: TObject);
begin
  with TRoutineTraceLogger.Create('TdmSvrMain.tmrRestoreUnavailableExecuteServersTimer') do
    begin
      LogEnter;
      try

        TTask.Run(uExecuteServers.RestoreUnavailableServers);

      except
        LogException;
        raise;
      end;
      LogLeave;
    end;
end;

end.
