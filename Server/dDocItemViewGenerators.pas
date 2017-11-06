unit dDocItemViewGenerators;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,
  dDBPooledDataModule, dPooledDataModule, DB,
  Provider, AbmesFields, AbmesSQLQuery, WideStrings, FMTBcd,
  SqlExpr, AbmesSQLConnection, DbxDatasnap, DBXDevartOracle, uSmartLock,
  IPPeerClient, Data.DBXCommon, uContentStorageLocatorsCache;

const
  ExecuteServerRetryCount = 1;
  ReconnectPauseMilliseconds = 1000;

type
  TdmDocItemViewGenerators = class(TDBPooledDataModule)
    qryGetDocItemViewGenerator: TAbmesSQLQuery;
    qryGetDocItem: TAbmesSQLQuery;
    qryGetDocItemViewGeneratorDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField;
    qryGetDocItemViewGeneratorDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField;
    qryGetDocItemViewGeneratorGENERATOR_PATH: TAbmesWideStringField;
    qryGetDocItemViewGeneratorGENERATOR_PARAMS: TAbmesWideStringField;
    qryGetDocItemViewGeneratorGENERATOR_TIMEOUT_SEC: TAbmesFloatField;
    qryGetDocItemViewGeneratorRESULT_FILE_EXTENSION_CODE: TAbmesFloatField;
    qryGetDocItemViewGeneratorRESULT_FILE_EXTENSION_NAME: TAbmesWideStringField;
    qryGetDocItemViewGeneratorRESULT_FILE_EXTENSION_ABBREV: TAbmesWideStringField;
    qryGetDocItemDOC_BRANCH_CODE: TAbmesFloatField;
    qryGetDocItemDOC_CODE: TAbmesFloatField;
    qryGetDocItemDOC_ITEM_CODE: TAbmesFloatField;
    qryGetDocItemSTORED_FILE_BRANCH_CODE: TAbmesFloatField;
    qryGetDocItemSTORED_FILE_CODE: TAbmesFloatField;
    qryGetDocItemDOC_ITEM_PATTERN_CODE: TAbmesFloatField;
    qryGetDocItemDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField;
    qryGetStoredFileChangeDate: TAbmesSQLQuery;
    qryGetDocItemPatternChangeDate: TAbmesSQLQuery;
    qryGetStoredFileChangeDateSTORED_FILE_CHANGE_DATE: TAbmesSQLTimeStampField;
    qryGetStoredFileChangeDateSTORED_FILE_CHANGE_TIME: TAbmesSQLTimeStampField;
    qryGetDocItemPatternChangeDateDOC_ITEM_PATTERN_CHANGE_DATE: TAbmesSQLTimeStampField;
    qryGetDocItemPatternChangeDateDOC_ITEM_PATTERN_CHANGE_TIME: TAbmesSQLTimeStampField;
    qryGetDocItemIS_MIRRORED: TAbmesFloatField;
    conDatasnapExecuteServer: TSQLConnection;
    qryGetDocItemFILE_NAME: TAbmesWideStringField;
    qryGetDocItemCONTENT_STORAGE_ADDRESS: TAbmesWideStringField;
    qryGetDocItemViewGeneratorCode: TAbmesSQLQuery;
    qryGetDocItemViewGeneratorCodeDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FExecuteServerConnection: TSQLConnection;
    FContentStorageLocatorsCache: TContentStorageLocatorsCache;
    procedure GetDocItemViewGenerator(
      ADocItemViewGeneratorCode: Integer;
      out ResultGeneratorName: string;
      out ResultGeneratorPath: string;
      out ResultGeneratorParams: string;
      out ResultFileExtension: string;
      out ResultGeneratorTimeoutSec: Integer);
    procedure GetDocItem(
      ADocBranchCode: Integer;
      ADocCode: Integer;
      ADocItemCode: Integer;
      out StoredFileBranchCode: Integer;
      out StoredFileCode: Integer;
      out DocItemPatternCode: Integer;
      out DocItemViewGeneratorCode: Integer;
      out IsMirrored: Boolean);
    procedure GetContentStorageDocItem(
      ADocBranchCode: Integer;
      ADocCode: Integer;
      ADocItemCode: Integer;
      out DocItemPatternCode: Integer;
      out DocItemViewGeneratorCode: Integer;
      out DownloadURL: string);
    procedure GetStoredFileChangeDate(
      AStoredFileBranchCode: Integer;
      AStoredFileCode: Integer;
      out StoredFileChangeDate: TDateTime;
      out StoredFileChangeTime: TDateTime);
    procedure GetDocItemPatternChangeDate(
      ADocItemPatternCode: Integer;
      out DocItemPatternChangeDate: TDateTime;
      out DocItemPatternChangeTime: TDateTime);

    procedure EnsureExecuteServersLoaded;
    function CheckExecuteServerError(E: Exception; const ExecuteServerConnectionString: string; var RetryCount: Integer): Boolean;
    function ExecuteServerExecuteInternalFile(ADocItemViewGeneratorCode: Integer;
      AFileDatas, AFileExtensions: OleVariant;
      out ResultExt: string): OleVariant;
  protected
    function GetExternalDocItemViewableFile(const ADocItemFileName: string;
      ADocItemViewGeneratorCode: Integer; out AResultExt: string): OleVariant;
    function GetInternalDocItemViewableFile(ADocOwnerTypeCode, ADocBranchCode, ADocCode, ADocItemCode: Integer;
      AAdditionalInfo: Integer; out ResultExt: string): OleVariant;
    function GetContentStorageDocItemViewableFile(ADocOwnerTypeCode: Integer;
      ADocBranchCode: Integer; ADocCode: Integer; ADocItemCode: Integer; AAdditionalInfo: Integer;
      out ResultExt: string): OleVariant;
  end;

type
  IdmDocItemViewGeneratorsProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmDocItemViewGeneratorsProxy = class(TDBPooledDataModuleProxy, IdmDocItemViewGeneratorsProxy)
  private
    class var FSingleton: TdmDocItemViewGeneratorsProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmDocItemViewGenerators>;
  strict protected
    property LockedInstance: ISmartLock<TdmDocItemViewGenerators> read GetLockedInstance;
  public
    class property Singleton: TdmDocItemViewGeneratorsProxy read FSingleton;

    function GetExternalDocItemViewableFile(
      const ADocItemFileName: string;
      ADocItemViewGeneratorCode: Integer;
      out AResultExt: string): OleVariant;
    function GetInternalDocItemViewableFile(
      ADocOwnerType, ADocBranchCode, ADocCode, ADocItemCode, AAdditionalInfo: Integer;
      out ResultExt: string): OleVariant;
    function GetContentStorageDocItemViewableFile(
      ADocOwnerTypeCode, ADocBranchCode, ADocCode, ADocItemCode, AAdditionalInfo: Integer;
      out ResultExt: string): OleVariant;
  end;

implementation

uses
  StrUtils, uDBPooledDataModuleHelper,
  uSvrExecuteClient, uUtils, uDocUtils, uExecuteServers, uServerMessageIds,
  uMessageUtils, System.Win.ScktComp, JclStrings, uSvrDocUtils, IdStack,
  AbmesDatasnapIdCommunicationLayer, System.Net.Socket;

{$R *.DFM}

const
  SDocCacheUserMacro = '_DOC_CACHE';

type
  EExecuteServerConnectionError = class(Exception);

{ TdmDocItemViewGeneratorsProxy }

function TdmDocItemViewGeneratorsProxy.GetLockedInstance: ISmartLock<TdmDocItemViewGenerators>;
begin
  Result:= ISmartLock<TdmDocItemViewGenerators>(inherited LockedInstance);
end;

function TdmDocItemViewGeneratorsProxy.GetContentStorageDocItemViewableFile(
  ADocOwnerTypeCode, ADocBranchCode, ADocCode, ADocItemCode, AAdditionalInfo: Integer;
  out ResultExt: string): OleVariant;
begin
  Result:= LockedInstance.Value.GetContentStorageDocItemViewableFile(ADocOwnerTypeCode,
    ADocBranchCode, ADocCode, ADocItemCode, AAdditionalInfo, ResultExt);
end;

function TdmDocItemViewGeneratorsProxy.GetExternalDocItemViewableFile(
 const ADocItemFileName: string;
 ADocItemViewGeneratorCode: Integer;
 out AResultExt: string): OleVariant;
begin
  Result:= LockedInstance.Value.GetExternalDocItemViewableFile(
    ADocItemFileName, ADocItemViewGeneratorCode, AResultExt);
end;

function TdmDocItemViewGeneratorsProxy.GetInternalDocItemViewableFile(ADocOwnerType, ADocBranchCode,
  ADocCode, ADocItemCode, AAdditionalInfo: Integer;
  out ResultExt: string): OleVariant;
begin
  Result:= LockedInstance.Value.GetInternalDocItemViewableFile(
    ADocOwnerType, ADocBranchCode, ADocCode, ADocItemCode, AAdditionalInfo, ResultExt);
end;

{ TdmDocItemViewGenerators }

procedure TdmDocItemViewGenerators.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FContentStorageLocatorsCache:= TContentStorageLocatorsCache.Create(ContentStorageLocatorsCacheExpirySeconds);
end;

procedure TdmDocItemViewGenerators.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FContentStorageLocatorsCache);
end;

function TdmDocItemViewGenerators.GetExternalDocItemViewableFile(
  const ADocItemFileName: string; ADocItemViewGeneratorCode: Integer;
  out AResultExt: string): OleVariant;
var
  ExecuteServerName: string;
  GeneratorTimeoutSec: Integer;
  GeneratorName: string;
  GeneratorPath: string;
  GeneratorParams: string;
  GeneratorExtension: string;
  SvrExecuteClient: TdmSvrExecuteClient;
  ExecuteServerConnectionString: string;
  ExecuteServerPort: string;
  ExecuteServerConnectionType: string;
  ExecuteServerIsPermanent: Boolean;
  RetryCount: Integer;
begin
  GetDocItemViewGenerator(ADocItemViewGeneratorCode, GeneratorName, GeneratorPath, GeneratorParams, GeneratorExtension, GeneratorTimeoutSec);

  EnsureExecuteServersLoaded;

  while True do
    try
      ExecuteServerConnectionString:= ExecuteServers.AcquireServer(GeneratorName, LoginContext);
      try
        DecodeExecuteServerConnectionString(ExecuteServerConnectionString,
          ExecuteServerName, ExecuteServerPort, ExecuteServerConnectionType, ExecuteServerIsPermanent);

        FExecuteServerConnection:=
          SetupExecuteServerSQLConnection(
            ExecuteServerName, ExecuteServerPort, ExecuteServerConnectionType,
            conDatasnapExecuteServer
          );

        RetryCount:= ExecuteServerRetryCount;
        while True do
          try
            FExecuteServerConnection.Open;
            try
              SvrExecuteClient:= TdmSvrExecuteClient.Create(FExecuteServerConnection.DBXConnection);
              try
                Result:= SvrExecuteClient.ExecuteExternalFile(
                  GeneratorPath,
                  GeneratorParams,
                  ADocItemFileName,
                  GeneratorExtension,
                  GeneratorTimeoutSec * 1000);  // umnojava se po 1000 zashtoto Timeout-a trqbva da e v milisecundi
                AResultExt:= GeneratorExtension;
              finally
                FreeAndNil(SvrExecuteClient);
              end;
            finally
              FExecuteServerConnection.Close;
            end;

            Break;
          except
            on E: Exception do
              begin
                if not CheckExecuteServerError(E, ExecuteServerConnectionString, RetryCount) then
                  raise;
              end;
          end;
      finally
        ExecuteServers.ReleaseServer(ExecuteServerConnectionString);
      end;  { try }

      Break;
    except
      on E: Exception do
        begin
          if not (E is EExecuteServerConnectionError) then
            raise;
        end;
    end;
end;

function TdmDocItemViewGenerators.ExecuteServerExecuteInternalFile(
  ADocItemViewGeneratorCode: Integer;
  AFileDatas, AFileExtensions: OleVariant;
  out ResultExt: string): OleVariant;
var
  GeneratorName: string;
  GeneratorPath: string;
  GeneratorParams: string;
  GeneratorExtension: string;
  GeneratorTimeoutSec: Integer;
  ExecuteServerConnectionString: string;
  ExecuteServerPort: string;
  ExecuteServerConnectionType: string;
  ExecuteServerIsPermanent: Boolean;
  SvrExecuteClient: TdmSvrExecuteClient;
  RetryCount: Integer;
  ExecuteServerName: string;
begin
  GetDocItemViewGenerator(ADocItemViewGeneratorCode, GeneratorName, GeneratorPath, GeneratorParams, GeneratorExtension, GeneratorTimeoutSec);

  EnsureExecuteServersLoaded;

  while True do
    try
      ExecuteServerConnectionString:= ExecuteServers.AcquireServer(GeneratorName, LoginContext);
      try
        DecodeExecuteServerConnectionString(ExecuteServerConnectionString, ExecuteServerName, ExecuteServerPort, ExecuteServerConnectionType, ExecuteServerIsPermanent);

        FExecuteServerConnection:=
          SetupExecuteServerSQLConnection(
            ExecuteServerName,
            ExecuteServerPort,
            ExecuteServerConnectionType,
            conDatasnapExecuteServer);

        RetryCount:= ExecuteServerRetryCount;
        while True do
          try
            FExecuteServerConnection.Open;
            try
              SvrExecuteClient:= TdmSvrExecuteClient.Create(FExecuteServerConnection.DBXConnection);
              try
                Result:=
                  SvrExecuteClient.ExecuteInternalFile(
                    GeneratorPath,
                    GeneratorParams,
                    AFileExtensions,
                    AFileDatas,
                    GeneratorExtension,
                    GeneratorTimeoutSec * 1000);  // umnojava se po 1000 zashtoto Timeout-a trqbva da e v milisecundi

                ResultExt:= GeneratorExtension;
              finally
                FreeAndNil(SvrExecuteClient);
              end;
            finally
              FExecuteServerConnection.Close;
            end;
            Break;
          except
            on E: Exception do
            begin
              if not CheckExecuteServerError(E, ExecuteServerConnectionString, RetryCount) then
                raise ;
            end;
          end;
      finally
        ExecuteServers.ReleaseServer(ExecuteServerConnectionString);
      end;

      Break;
    except
      on E: Exception do
        begin
          if not (E is EExecuteServerConnectionError) then
            raise;
        end;
    end;
end;

function TdmDocItemViewGenerators.GetInternalDocItemViewableFile(ADocOwnerTypeCode, ADocBranchCode,
  ADocCode, ADocItemCode: Integer;
  AAdditionalInfo: Integer;
  out ResultExt: string): OleVariant;
var
  StoredFileBranchCode: Integer;
  StoredFileCode: Integer;
  StoredFileChangeDate: TDateTime;
  StoredFileChangeTime: TDateTime;
  DocItemPatternCode: Integer;
  DocItemPatternChangeDate: TDateTime;
  DocItemPatternChangeTime: TDateTime;
  DocItemPatternStoredFileBranchCode: Integer;
  DocItemPatternStoredFileCode: Integer;
  DocItemViewGeneratorCode: Integer;
  IsMirrored: Boolean;
  XMLData: string;
  XSAFData: string;
  FileDatas: OleVariant;
  FileExtensions: OleVariant;

  procedure AddFile(const AFileData: Variant; const AFileExt: string);
  begin
    Assert(VarIsArray(AFileData));

    VarArrayRedim(FileDatas, VarArrayHighBound(FileDatas, 1) + 1);
    VarArrayRedim(FileExtensions, VarArrayHighBound(FileExtensions, 1) + 1);
    FileDatas[VarArrayHighBound(FileDatas, 1)]:= AFileData;
    FileExtensions[VarArrayHighBound(FileExtensions, 1)]:= AFileExt;
  end;

begin
  GetDocItem(ADocBranchCode, ADocCode, ADocItemCode, StoredFileBranchCode, StoredFileCode, DocItemPatternCode, DocItemViewGeneratorCode, IsMirrored);
  Assert(StoredFileCode <> 0);
  GetStoredFileChangeDate(StoredFileBranchCode, StoredFileCode, StoredFileChangeDate, StoredFileChangeTime);
  GetDocItemPatternChangeDate(DocItemPatternCode, DocItemPatternChangeDate, DocItemPatternChangeTime);

  if IsMirrored then
    XMLData:= ''
  else
    XMLData:=
      SvrDocXML.GetDocItemXML(ADocOwnerTypeCode, ADocBranchCode, ADocCode, ADocItemCode, AAdditionalInfo);

  FileDatas:= VarArrayCreate([0, 0], varVariant);
  FileExtensions:= VarArrayCreate([0, 0], varVariant);

  FileDatas[0]:=
    SvrDoc.GetStoredFileData(StoredFileBranchCode, StoredFileCode);

  FileExtensions[0]:=
    SvrDoc.GetStoredFileExtension(StoredFileBranchCode, StoredFileCode);

  if (XMLData <> '') then
    AddFile(StrToVarArray(XMLData), VarToStr(FileExtensions[0]) + '.' + 'xml');

  if IsMirrored then
    XSAFData:= ''
  else
    XSAFData:=
      SvrDocXML.GetDocItemTemplateTypeXML(
        DocItemTemplateTypeToInt(GetDocOwnerTypeTemplateType(IntToDocOwnerType(ADocOwnerTypeCode))));

  if (XSAFData <> '') then
    AddFile(StrToVarArray(XSAFData), VarToStr(FileExtensions[0]) + '.' + 'xsaf');

  if (DocItemPatternCode <> 0) then
    begin
      SvrDoc.GetDocItemTemplateStoredFile(
        DocItemPatternCode,
        DocItemPatternStoredFileBranchCode,
        DocItemPatternStoredFileCode);

        AddFile(
          SvrDoc.GetStoredFileData(
            DocItemPatternStoredFileBranchCode, DocItemPatternStoredFileCode),
          VarToStr(FileExtensions[0]) + '.' +
          SvrDoc.GetStoredFileExtension(
            DocItemPatternStoredFileBranchCode, DocItemPatternStoredFileCode)
        );
    end;

  Result:= ExecuteServerExecuteInternalFile(DocItemViewGeneratorCode, FileDatas, FileExtensions, ResultExt);
end;

procedure TdmDocItemViewGenerators.GetDocItemViewGenerator(
  ADocItemViewGeneratorCode: Integer; out ResultGeneratorName, ResultGeneratorPath,
  ResultGeneratorParams, ResultFileExtension: string;
  out ResultGeneratorTimeoutSec: Integer);
begin
  qryGetDocItemViewGenerator.ParamByName('DOC_ITEM_VIEW_GENERATOR_CODE').AsInteger:= ADocItemViewGeneratorCode;
  qryGetDocItemViewGenerator.Open;
  try
    ResultGeneratorName:= qryGetDocItemViewGeneratorDOC_ITEM_VIEW_GENERATOR_NAME.AsString;
    ResultGeneratorPath:= qryGetDocItemViewGeneratorGENERATOR_PATH.AsString;
    ResultGeneratorParams:= qryGetDocItemViewGeneratorGENERATOR_PARAMS.AsString;
    ResultFileExtension:= qryGetDocItemViewGeneratorRESULT_FILE_EXTENSION_ABBREV.AsString;
    ResultGeneratorTimeoutSec:= qryGetDocItemViewGeneratorGENERATOR_TIMEOUT_SEC.AsInteger;
  finally
    qryGetDocItemViewGenerator.Close;
  end;  { try }
end;

procedure TdmDocItemViewGenerators.GetDocItem(ADocBranchCode, ADocCode,
  ADocItemCode: Integer; out StoredFileBranchCode, StoredFileCode,
  DocItemPatternCode, DocItemViewGeneratorCode: Integer; out IsMirrored: Boolean);
begin
  with qryGetDocItem do
    begin
      ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
      ParamByName('DOC_CODE').AsInteger:= ADocCode;
      ParamByName('DOC_ITEM_CODE').AsInteger:= ADocItemCode;
      Open;
      try
        StoredFileBranchCode:= qryGetDocItemSTORED_FILE_BRANCH_CODE.AsInteger;
        StoredFileCode:= qryGetDocItemSTORED_FILE_CODE.AsInteger;
        DocItemPatternCode:= qryGetDocItemDOC_ITEM_PATTERN_CODE.AsInteger;
        DocItemViewGeneratorCode:= qryGetDocItemDOC_ITEM_VIEW_GENERATOR_CODE.AsInteger;
        IsMirrored:= qryGetDocItemIS_MIRRORED.AsBoolean;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

procedure TdmDocItemViewGenerators.GetStoredFileChangeDate(
  AStoredFileBranchCode, AStoredFileCode: Integer;
  out StoredFileChangeDate, StoredFileChangeTime: TDateTime);
begin
  with qryGetStoredFileChangeDate do
    begin
      ParamByName('STORED_FILE_BRANCH_CODE').AsInteger:= AStoredFileBranchCode;
      ParamByName('STORED_FILE_CODE').AsInteger:= AStoredFileCode;
      Open;
      try
        StoredFileChangeDate:= qryGetStoredFileChangeDateSTORED_FILE_CHANGE_DATE.AsDateTime;
        StoredFileChangeTime:= qryGetStoredFileChangeDateSTORED_FILE_CHANGE_TIME.AsDateTime;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

procedure TdmDocItemViewGenerators.GetDocItemPatternChangeDate(
  ADocItemPatternCode: Integer; out DocItemPatternChangeDate,
  DocItemPatternChangeTime: TDateTime);
begin
  qryGetDocItemPatternChangeDate.ParamByName('DOC_ITEM_PATTERN_CODE').AsInteger:= ADocItemPatternCode;
  qryGetDocItemPatternChangeDate.Open;
  try
    DocItemPatternChangeDate:= qryGetDocItemPatternChangeDateDOC_ITEM_PATTERN_CHANGE_DATE.AsDateTime;
    DocItemPatternChangeTime:= qryGetDocItemPatternChangeDateDOC_ITEM_PATTERN_CHANGE_TIME.AsDateTime;
  finally
    qryGetDocItemPatternChangeDate.Close;
  end;  { try }
end;

function TdmDocItemViewGenerators.CheckExecuteServerError(E: Exception;
  const ExecuteServerConnectionString: string; var RetryCount: Integer): Boolean;
var
  ExecuteServerName: string;
  ExecuteServerPort: string;
  ExecuteServerConnectionType: string;
  ExecuteServerIsPermanent: Boolean;
  ExceptionMessage: string;
begin
  if (E is System.Win.ScktComp.ESocketError) or
     (E is System.Net.Socket.ESocketError) or
     (E is EIdSocketError) or
     StartsText(EAbmesConnectionTerminated.SAbmesConnectionTerminated, E.Message) or
     StartsText('Socket error', E.Message) or
     StartsText('Windows socket error', E.Message) then
    begin
      if (RetryCount > 0) then
        begin
          Dec(RetryCount);
          Sleep(ReconnectPauseMilliseconds);
          Exit(True);
        end;

      ExecuteServers.SetServerIsUnavailable(ExecuteServerConnectionString, True, E.Message);

      DecodeExecuteServerConnectionString(ExecuteServerConnectionString,
        ExecuteServerName, ExecuteServerPort, ExecuteServerConnectionType, ExecuteServerIsPermanent);

      ExceptionMessage:=
        SExecuteServerConnectionErrorId +
        Format('(ExecuteServerName:s=%s)', [InternalEncodeString(ExecuteServerName)]);

      if ExecuteServerIsPermanent then
        raise Exception.Create(ExceptionMessage)
      else
        raise EExecuteServerConnectionError.Create(ExceptionMessage);
    end;

  Result:= False;
end;

procedure TdmDocItemViewGenerators.EnsureExecuteServersLoaded;
begin
  if not ExecuteServers.Loaded then
    SvrDoc.LoadExecuteServers;
end;

procedure TdmDocItemViewGenerators.GetContentStorageDocItem(ADocBranchCode, ADocCode, ADocItemCode: Integer;
  out DocItemPatternCode, DocItemViewGeneratorCode: Integer; out DownloadURL: string);
begin
  with qryGetDocItem do
    begin
      ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
      ParamByName('DOC_CODE').AsInteger:= ADocCode;
      ParamByName('DOC_ITEM_CODE').AsInteger:= ADocItemCode;
      Open;
      try
        DocItemPatternCode:= qryGetDocItemDOC_ITEM_PATTERN_CODE.AsInteger;

        DownloadURL:=
          SvrDoc.GetDocumentDownloadURL(qryGetDocItemCONTENT_STORAGE_ADDRESS.AsString, qryGetDocItemFILE_NAME.AsString);

        qryGetDocItemViewGeneratorCode.ParamByName('FILE_EXTENSION_ABBREV').AsString:= ExtractURLDocumentExt(DownloadURL);

        DocItemViewGeneratorCode:=
          qryGetDocItemViewGeneratorCode.TempOpen /
            function: Integer begin
              Result:= qryGetDocItemViewGeneratorCodeDOC_ITEM_VIEW_GENERATOR_CODE.AsInteger;
            end;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TdmDocItemViewGenerators.GetContentStorageDocItemViewableFile(
  ADocOwnerTypeCode, ADocBranchCode, ADocCode, ADocItemCode, AAdditionalInfo: Integer;
  out ResultExt: string): OleVariant;
var
  FileDatas: OleVariant;
  FileExtensions: OleVariant;
  XMLData: string;
  XSAFData: string;
  DocItemPatternCode: Integer;
  DocItemViewGeneratorCode: Integer;
  DownloadURL: string;
  DocItemPatternStoredFileBranchCode: Integer;
  DocItemPatternStoredFileCode: Integer;
  DocumentID: string;
  ServiceAddress: string;

  procedure AddFile(const AFileData: Variant; const AFileExt: string);
  begin
    Assert(VarIsArray(AFileData));

    VarArrayRedim(FileDatas, VarArrayHighBound(FileDatas, 1) + 1);
    VarArrayRedim(FileExtensions, VarArrayHighBound(FileExtensions, 1) + 1);
    FileDatas[VarArrayHighBound(FileDatas, 1)]:= AFileData;
    FileExtensions[VarArrayHighBound(FileExtensions, 1)]:= AFileExt;
  end;

  function GetDownloadURLExtenstion(const AURL: string): string;
  var
    p: Integer;
    FileURL: string;
  begin
    p:= Pos('?', AURL);
    if (p > 0) then
      FileURL:= Copy(AURL, 1, p - 1)
    else
      FileURL:= AURL;

    Result:= Copy(FileURL, CharLastPos(FileURL, '.') + 1);
  end;

begin
  GetContentStorageDocItem(ADocBranchCode, ADocCode, ADocItemCode, DocItemPatternCode, DocItemViewGeneratorCode, DownloadURL);

  FileDatas:= VarArrayCreate([0, 0], varVariant);
  FileExtensions:= VarArrayCreate([0, 0], varVariant);

  FileDatas[0]:= DownloadURL;
  FileExtensions[0]:= GetDownloadURLExtenstion(DownloadURL);

  XMLData:= SvrDocXML.GetDocItemXML(ADocOwnerTypeCode, ADocBranchCode, ADocCode, ADocItemCode, AAdditionalInfo);

  if (XMLData <> '') then
    AddFile(StrToVarArray(XMLData), VarToStr(FileExtensions[0]) + '.' + 'xml');

  XSAFData:=
    SvrDocXML.GetDocItemTemplateTypeXML(
      DocItemTemplateTypeToInt(GetDocOwnerTypeTemplateType(IntToDocOwnerType(ADocOwnerTypeCode))));

  if (XSAFData <> '') then
    AddFile(StrToVarArray(XSAFData), VarToStr(FileExtensions[0]) + '.' + 'xsaf');

  if (DocItemPatternCode <> 0) then
    begin
      SvrDoc.GetDocItemTemplateContentStorage(DocItemPatternCode, DocumentID, ServiceAddress);

      if (ServiceAddress <> '') then
        begin
          DownloadURL:= SvrDoc.GetDocumentDownloadURL(ServiceAddress, DocumentID);

          if (DownloadURL <> '') then
            AddFile(
              DownloadURL,
              VarToStr(FileExtensions[0]) + '.' + GetDownloadURLExtenstion(DownloadURL)
            );
        end
      else
        begin
          SvrDoc.GetDocItemTemplateStoredFile(
            DocItemPatternCode,
            DocItemPatternStoredFileBranchCode,
            DocItemPatternStoredFileCode);

          if (DocItemPatternStoredFileBranchCode <> 0) and (DocItemPatternStoredFileCode <> 0) then
            begin
              AddFile(
                SvrDoc.GetStoredFileData(DocItemPatternStoredFileBranchCode, DocItemPatternStoredFileCode),
                VarToStr(FileExtensions[0]) + '.' + SvrDoc.GetStoredFileExtension(DocItemPatternStoredFileBranchCode, DocItemPatternStoredFileCode)
              );
            end
        end;
    end;

  Result:= ExecuteServerExecuteInternalFile(DocItemViewGeneratorCode, FileDatas, FileExtensions, ResultExt);
end;

initialization
  TdmDocItemViewGeneratorsProxy.FSingleton:= TdmDocItemViewGeneratorsProxy.Create(TdmDocItemViewGenerators);

finalization
  FreeAndNil(TdmDocItemViewGeneratorsProxy.FSingleton);
end.
