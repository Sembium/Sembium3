unit dDBPooledDataModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Db, Provider,
  dDBDataModule, dPooledDataModule, JvStringHolder,
  AbmesSQLQuery, AbmesSQLConnection, WideStrings, SqlExpr, DBClient,
  AbmesClientDataSet, uSvrUtils, DBXDevartOracle, uSmartLock, uObjectPool;

type
  TDBPooledDataModule = class(TPooledDataModule)
    SQLConn: TAbmesSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure SQLConnBeforeConnect(Sender: TObject);
  strict private
    FApplyRetryCount: Integer;
    FSaveExceptionMessage: string;
    FMacroLibraries: TMacroLibraryList;

    FDBDataModuleSmartLock: ISmartLock<TDBDataModule>;

(*    FprvWrongQueries: TDataSetProvider;
    FcdsWrongQueries: TAbmesClientDataSet; *)
    procedure SetDataSetsSQLConnection(ASQLConnection: TSQLConnection);
    procedure ClearQueryParams;

    function GetQueriesCount: Integer;
    function GetSQLLinesCount: Integer;

(*    procedure WrongQueriesProviderBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure WrongQueriesProviderGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure WrongQueriesProviderAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant); *)
  strict private
    function GetDBDataModule: TDBDataModule;
  strict protected
    procedure ApplyRetry(E: EUpdateError; var Response: TResolverResponse);
    procedure DisableApplyRetryCounter;
    procedure ResetApplyRetryCounter;
    // macro library routines
    procedure RegisterMacroLibrary(AMacroLibrary: TJvMultiStringHolder);
    procedure UnregisterMacroLibrary(AMacroLibrary: TJvMultiStringHolder);
    procedure ApplyMacroLibraries; overload;
    procedure ApplyMacroLibraries(AQuery: TAbmesSQLQuery); overload;

    function SkipSQLTest(AQuery: TAbmesSQLQuery): Boolean; virtual;
    function SkipParamsTest(AQuery: TAbmesSQLQuery): Boolean; virtual;

    function MaxApplyRetryCount: Integer; virtual;

    property QueriesCount: Integer read GetQueriesCount;
    property SQLLinesCount: Integer read GetSQLLinesCount;
  protected
    procedure StartUsing; override;
    procedure StopUsing; override;

    function AS_GetProviderNames: OleVariant; override;
    function AS_ApplyUpdates(const ProviderName: string; const Delta: OleVariant;
      MaxErrors: Integer; out ErrorCount: Integer;
      var OwnerData: OleVariant): OleVariant; override;
    function AS_GetRecords(const ProviderName: string; Count: Integer;
      out RecsOut: Integer; Options: Integer; const CommandText: string;
      var Params, OwnerData: OleVariant): OleVariant; override;
    function AS_DataRequest(const ProviderName: string;
      const Data: OleVariant): OleVariant; override;
    function AS_GetParams(const ProviderName: string; var OwnerData: OleVariant): OleVariant; override;
    function AS_RowRequest(const ProviderName: string; const Row: OleVariant;
      RequestType: Integer; var OwnerData: OleVariant): OleVariant; override;
    procedure AS_Execute(const ProviderName: string;
      const CommandText: string; var Params, OwnerData: OleVariant); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    property DBDataModule: TDBDataModule read GetDBDataModule;
  end;

type
  IDBPooledDataModuleProxy = interface(IPooledDataModuleProxy)
  end;

type
  TDBPooledDataModuleProxy = class abstract(TPooledDataModuleProxy, IDBPooledDataModuleProxy)
  end;

implementation

uses
  TypInfo, Variants, StrUtils, dSvrMain, AbmesFields, uUtils, uDBLoginContext,
  uSessionContext;

{$R *.DFM}

type
  TBaseProviderHack = class(TBaseProvider);
  TDataSetProviderHack = class(TDataSetProvider);
  TDataSetProviderPrivateHack = class(TBaseProvider)
  protected
    FDataSet: TDataSet;
    FDataSetOpened: Boolean;
    FDSWriter: TDataPacketWriter;
    FGetDSProps: TGetDSProps;
    FParams: TParams;
    FResolveToDataSet: Boolean;
    FRecordsSent: Integer;
    FConstraints: Boolean;
    FTransactionStarted: Boolean;
    FGetTableName: TGetTableNameEvent;
  end;

{ TDBPooledDataModule }

procedure TDBPooledDataModule.ApplyMacroLibraries(
  AQuery: TAbmesSQLQuery);
var
  ml: TMacroLibrary;
begin
  for ml in FMacroLibraries do
    ApplyMacroLibrary(ml, AQuery);
end;

procedure TDBPooledDataModule.ApplyMacroLibraries;
var
  q: TAbmesSQLQuery;
begin
  for q in AllComponents.OfType<TAbmesSQLQuery> do
    ApplyMacroLibraries(q);
end;

procedure TDBPooledDataModule.ApplyRetry(E: EUpdateError;
  var Response: TResolverResponse);
begin
  Assert(Assigned(E));

  if (FApplyRetryCount = 0) or (FSaveExceptionMessage = '') then
    FSaveExceptionMessage:= E.Message;

  Inc(FApplyRetryCount);

  if (FApplyRetryCount > MaxApplyRetryCount) then
    begin
      if (FSaveExceptionMessage <> '') then
        E.Message:= FSaveExceptionMessage;
      ResetApplyRetryCounter;
      Response:= rrAbort;
    end
  else
    Response:= rrApply;
end;

function TDBPooledDataModule.AS_ApplyUpdates(const ProviderName: string;
  const Delta: OleVariant; MaxErrors: Integer; out ErrorCount: Integer;
  var OwnerData: OleVariant): OleVariant;
begin
  Assert(IsInCorrectThread);
  Result:= inherited;
end;

function TDBPooledDataModule.AS_DataRequest(const ProviderName: string;
  const Data: OleVariant): OleVariant;
begin
  Assert(IsInCorrectThread);
  Result:= inherited;
end;

procedure TDBPooledDataModule.AS_Execute(const ProviderName,
  CommandText: string; var Params, OwnerData: OleVariant);
begin
  Assert(IsInCorrectThread);
  inherited;
end;

function TDBPooledDataModule.AS_GetParams(const ProviderName: string;
  var OwnerData: OleVariant): OleVariant;
begin
  Assert(IsInCorrectThread);
  Result:= inherited;
end;

function TDBPooledDataModule.AS_GetProviderNames: OleVariant;
begin
  Assert(IsInCorrectThread);
  Result:= inherited;
end;

function TDBPooledDataModule.AS_GetRecords(const ProviderName: string;
  Count: Integer; out RecsOut: Integer; Options: Integer;
  const CommandText: string; var Params, OwnerData: OleVariant): OleVariant;
begin
  Assert(IsInCorrectThread);
  Result:= inherited;
end;

function TDBPooledDataModule.AS_RowRequest(const ProviderName: string;
  const Row: OleVariant; RequestType: Integer; var OwnerData: OleVariant): OleVariant;
begin
  Assert(IsInCorrectThread);
  Result:= inherited;
end;

procedure TDBPooledDataModule.ClearQueryParams;

  procedure ClearParamValues(AParams: TParams);
  var
    p: TParam;
  begin
    for p in AParams do
      p.Value:= Unassigned;
  end;

  procedure ClearQueryBaseParams;
  var
    q: TSQLQuery;
  begin
    // Zachistva state-a i pravi vuzmojno provide-vaneto na query, koeto e detail, zaradi prostotia v TAbmesSQLQuery
    for q in AllComponents.OfType<TSQLQuery> do
      ClearParamValues(q.Params);
  end;

  procedure ClearQueryExtraParams;
  var
    q: TAbmesSQLQuery;
  begin
    // Zachistva state-a
    for q in AllComponents.OfType<TAbmesSQLQuery> do
      begin
        ClearParamValues(q.CustomParams);
        ClearParamValues(q.MacroParams);
        q.FreeUnitedParams;
      end;
  end;

begin
  ClearQueryBaseParams;
  ClearQueryExtraParams;
end;

constructor TDBPooledDataModule.Create(AOwner: TComponent);
begin
  FMacroLibraries:= TMacroLibraryList.Create(Self);
  inherited Create(AOwner);
  SetDataSetsSQLConnection(nil);
end;

procedure TDBPooledDataModule.DataModuleCreate(Sender: TObject);

  procedure FillQueryMacrosWithGarbage;
  var
    q: TAbmesSQLQuery;
    p: TParam;
  begin
    // celta na tazi procedura e ako na niakoe macro mu e zadadena samo design time stoinost
    // da grumne, tui kato e vazmojno da e sburkano imeto na macroto ot macrolibraryto
    for q in AllComponents.OfType<TAbmesSQLQuery> do
      for p in q.Macros do
        p.Value:= '123macro!';
  end;

(*
var
  DataModuleNameField: TAbmesWideStringField;
  QueryNameField: TAbmesWideStringField;
  ExceptionMessageField: TAbmesWideStringField;
*)
begin
  FMacroLibraries.RegisterExternalMacroLibraries(dmSvrMain.MacroLibraries);

  FillQueryMacrosWithGarbage;
  FMacroLibraries.ExpandOwnedMacroLibraries;
  ApplyMacroLibraries;

  inherited;

(*
  FcdsWrongQueries:= TAbmesClientDataSet.Create(Self);

  DataModuleNameField:= TAbmesWideStringField.Create(FcdsWrongQueries);
  DataModuleNameField.FieldName:= 'DATA_MODULE_NAME';
  DataModuleNameField.Size:= 50;

  QueryNameField:= TAbmesWideStringField.Create(FcdsWrongQueries);
  QueryNameField.FieldName:= 'QUERY_NAME';
  QueryNameField.Size:= 50;

  ExceptionMessageField:= TAbmesWideStringField.Create(FcdsWrongQueries);
  ExceptionMessageField.FieldName:= 'EXCEPTION_MESSAGE';
  ExceptionMessageField.Size:= 250;

  FcdsWrongQueries.Fields.Add(DataModuleNameField);
  FcdsWrongQueries.Fields.Add(QueryNameField);
  FcdsWrongQueries.Fields.Add(ExceptionMessageField);

  FprvWrongQueries:= TDataSetProvider.Create(Self);
  FprvWrongQueries.Name:= 'prvWrongQueries';
  FprvWrongQueries.DataSet:= FcdsWrongQueries;
  FprvWrongQueries.BeforeGetRecords:= WrongQueriesProviderBeforeGetRecords;
  FprvWrongQueries.AfterGetRecords:= WrongQueriesProviderAfterGetRecords;
  FprvWrongQueries.OnGetData:= WrongQueriesProviderGetData;
*)
end;

procedure TDBPooledDataModule.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  // do nothing
end;

destructor TDBPooledDataModule.Destroy;
begin
  inherited Destroy;
  FreeAndNil(FMacroLibraries);
end;

procedure TDBPooledDataModule.DisableApplyRetryCounter;
begin
  FApplyRetryCount:= MaxApplyRetryCount;
  FSaveExceptionMessage:= '';
end;

(*
procedure TDBPooledDataModule.WrongQueriesProviderAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FcdsWrongQueries.Close;
end;

procedure TDBPooledDataModule.WrongQueriesProviderBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  FcdsWrongQueries.CreateDataSet;
end;

procedure TDBPooledDataModule.WrongQueriesProviderGetData(Sender: TObject; DataSet: TCustomClientDataSet);
var
  i: Integer;
  ParamIndex: Integer;
  Query: TAbmesSQLQuery;
begin
  for i:= 0 to ComponentCount - 1 do
    if (Components[i] is TAbmesSQLQuery) then
      begin
        Query:= (Components[i] as TAbmesSQLQuery);

        if not SkipSQLTest(Query) then
          try
            Query.Prepare;
            try
              // do nothing
            finally
              Query.Unprepare;
            end;  { try }
          except
            on E:Exception do
              DataSet.AppendRecord([Name, Query.Name, E.Message]);
          end;  { try }

        if not SkipParamsTest(Query) then
          for ParamIndex:= 0 to Query.Params.Count - 1 do
            if (Query.Params[ParamIndex].DataType = ftUnknown) then
              DataSet.AppendRecord([
                Name,
                Query.Name,
                Format('Param "%s" is of type ftUnknown', [Query.Params[ParamIndex].Name])]);
      end;  { if }
end;
*)
procedure TDBPooledDataModule.RegisterMacroLibrary(
  AMacroLibrary: TJvMultiStringHolder);
begin
  FMacroLibraries.RegisterMacroLibrary(AMacroLibrary);
end;

procedure TDBPooledDataModule.ResetApplyRetryCounter;
begin
  FApplyRetryCount:= 0;
  FSaveExceptionMessage:= '';
end;

procedure TDBPooledDataModule.SetDataSetsSQLConnection(ASQLConnection: TSQLConnection);
var
  ds: TCustomSQLDataSet;
  qry: TAbmesSQLQuery;
begin
  for ds in AllComponents.OfType<TCustomSQLDataSet> do
    ds.SQLConnection:= ASQLConnection;

  for qry in AllComponents.OfType<TAbmesSQLQuery> do
    qry.SQLHeader:= Format('/* %s.%s.%s */', [SessionContext.DBName, ClassName, qry.Name]);;
end;

procedure TDBPooledDataModule.SQLConnBeforeConnect(Sender: TObject);
begin
  inherited;
  raise Exception.CreateFmt('%s.SQLConn should never be connected!', [Name]);
end;

procedure TDBPooledDataModule.UnregisterMacroLibrary(
  AMacroLibrary: TJvMultiStringHolder);
begin
  FMacroLibraries.UnregisterMacroLibrary(AMacroLibrary);
end;

procedure TDBPooledDataModule.StartUsing;
begin
  // pri exception tuk obekta triabva da se osvobodi

  inherited;

  Assert(not Assigned(FDBDataModuleSmartLock));

  FDBDataModuleSmartLock:= (LoginContext as TDBLoginContext).DBDataModuleSmartLock;

  Assert(Assigned(FDBDataModuleSmartLock));
  Assert(Assigned(DBDataModule));

  SetDataSetsSQLConnection(DBDataModule.SQLConn);

  if not SessionContext.IsTemp then  // za da raboti design-time Fetch Params v client-a
    ClearQueryParams;

  ResetApplyRetryCounter;
end;

procedure TDBPooledDataModule.StopUsing;

  procedure SetStringPropByName(AInstance: TObject; const APropName, AValue: string);
  var
    PropInfo: PPropInfo;
  begin
    Assert(Assigned(AInstance));

    PropInfo:= TypInfo.GetPropInfo(AInstance.ClassInfo, APropName);
    if Assigned(PropInfo) then
      TypInfo.SetStrProp(AInstance, PropInfo, AValue);
  end;

  procedure ClearDataSetProviderState;
  var
    prv: TDataSetProvider;
  begin
    // Zachistvane na state v providera
    for prv in AllComponents.OfType<TDataSetProvider> do
      begin
        FreeAndNil(TDataSetProviderPrivateHack(prv).FDSWriter);  // memory optimization
        FreeAndNil(TDataSetProviderPrivateHack(prv).FParams);  // Zachistvane na state v providera - workaround za midas bug, introducenat v d7.1

        TDataSetProviderPrivateHack(prv).FDataSetOpened:= False;

        prv.OwnerData:= Unassigned;  // Za vseki sluchai, veroianto niama nujda, no... Zachistvane na state v providera
      end;
  end;

  procedure ClearBaseProviderState;
  var
    prv: TBaseProvider;
  begin
    // This routine is a workaroung for a midas stupidity (leaving provider packet datasets open and thus leaving lots of memory allocated)
    for prv in AllComponents.OfType<TBaseProvider> do
      with TBaseProviderHack(prv) do
        begin
          FreeResolver;  // memory optimization

          if Assigned(PacketDataSet) then
            begin
              PacketDataSet.Free;
              PacketDataSet:= nil;
            end;
        end;
  end;

  procedure UnprepareSQLDataSets;
  var
    ds: TCustomSQLDataSet;
  begin
    for ds in AllComponents.OfType<TCustomSQLDataSet> do
      if ds.Prepared then
        ds.Prepared:= False;
  end;

begin
  // pri exception tuk obekta triabva da se osvobodi

  Assert(Assigned(DBDataModule));
  Assert(FDBDataModuleSmartLock = (LoginContext as TDBLoginContext).DBDataModuleSmartLock);

  CloseDataSets;
  ClearDataSetProviderState;
  ClearBaseProviderState;

  ResetApplyRetryCounter;

  if not SessionContext.IsTemp then  // za da raboti design-time Fetch Params v client-a
    ClearQueryParams;

  UnprepareSQLDataSets;

  SetDataSetsSQLConnection(nil);

  FDBDataModuleSmartLock:= nil;

  inherited;
end;

function TDBPooledDataModule.SkipParamsTest(AQuery: TAbmesSQLQuery): Boolean;
begin
  Result:= False;
end;

function TDBPooledDataModule.SkipSQLTest(AQuery: TAbmesSQLQuery): Boolean;
begin
  Result:= False;
end;

function TDBPooledDataModule.GetDBDataModule: TDBDataModule;
begin
  if Assigned(FDBDataModuleSmartLock) then
    Result:= FDBDataModuleSmartLock.Value
  else
    Result:= nil;
end;

function TDBPooledDataModule.GetQueriesCount: Integer;
var
  q: TAbmesSQLQuery;
begin
  Result:= 0;
  for q in AllComponents.OfType<TAbmesSQLQuery> do
    if Assigned(q) then  // ako go niama tozi red izliza hint
      Inc(Result);
end;

function TDBPooledDataModule.GetSQLLinesCount: Integer;
var
  q: TAbmesSQLQuery;
begin
  Result:= 0;
  for q in AllComponents.OfType<TAbmesSQLQuery> do
    Inc(Result, q.SQL.Count);
end;

function TDBPooledDataModule.MaxApplyRetryCount: Integer;
begin
  Result:= MaxApplyRetryCountDefault;
end;

end.
