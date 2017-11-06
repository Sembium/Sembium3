unit dCompanyFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, AbmesClientDataSet, dTreeNodeFilter, WideStrings, FMTBcd,
  SqlExpr, AbmesSQLConnection, DBXDevartOracle, uSmartLock, JvStringHolder;

type
  TdmCompanyFilter = class(TdmTreeNodeFilter)
    mshLocalMacroLibrary: TJvMultiStringHolder;
    qryCompanies: TAbmesSQLQuery;
    qryCompaniesCOMPANY_CODE: TAbmesFloatField;
    qryCompaniesCOMPANY_NO: TAbmesFloatField;
    qryCompaniesSHORT_NAME: TAbmesWideStringField;
    prvCompanies: TDataSetProvider;
    qryCompaniesIS_CHOSEN: TAbmesFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryCompaniesBeforeOpen(DataSet: TDataSet);
    procedure qryCompaniesAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    function GetFilteredNodesBaseName(ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod): string; override;
    function GetTempChosenNodesBaseTableName: string; override;
    function GetTempChosenNodeMiscsBaseTableName: string; override;
    procedure InsRootChosenNode(ATempTableNo, ATempFilterNo: Integer); override;

    procedure PrepareFilteredCompanies(ADataSet: TDataSet; const AParamName: string = 'CHOSEN_COMPANIES'; ATempTableNo: Integer = 1);
    procedure UnprepareFilteredCompanies(ADataSet: TDataSet; const AParamName: string = 'CHOSEN_COMPANIES'; ATempTableNo: Integer = 1);
  end;

type
  IdmCompanyFilterProxy = interface(IdmTreeNodeFilterProxy)
    procedure PrepareFilteredCompanies(ADataSet: TDataSet; const AParamName: string = 'CHOSEN_COMPANIES'; ATempTableNo: Integer = 1);
    procedure UnprepareFilteredCompanies(ADataSet: TDataSet; const AParamName: string = 'CHOSEN_COMPANIES'; ATempTableNo: Integer = 1);
  end;

type
  TdmCompanyFilterProxy = class(TdmTreeNodeFilterProxy, IdmCompanyFilterProxy)
  private
    class var FSingleton: TdmCompanyFilterProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmCompanyFilter>;
  strict protected
    property LockedInstance: ISmartLock<TdmCompanyFilter> read GetLockedInstance;
  protected
    procedure PrepareFilteredCompanies(ADataSet: TDataSet; const AParamName: string = 'CHOSEN_COMPANIES'; ATempTableNo: Integer = 1);
    procedure UnprepareFilteredCompanies(ADataSet: TDataSet; const AParamName: string = 'CHOSEN_COMPANIES'; ATempTableNo: Integer = 1);
  public
    class property Singleton: TdmCompanyFilterProxy read FSingleton;
  end;

implementation

uses
  uTreeNodes;

{$R *.DFM}

{ TdmCompanyFilterProxy }

function TdmCompanyFilterProxy.GetLockedInstance: ISmartLock<TdmCompanyFilter>;
begin
  Result:= ISmartLock<TdmCompanyFilter>(inherited LockedInstance);
end;

procedure TdmCompanyFilterProxy.PrepareFilteredCompanies(ADataSet: TDataSet; const AParamName: string; ATempTableNo: Integer);
begin
  LockedInstance.Value.PrepareFilteredCompanies(ADataSet, AParamName, ATempTableNo);
end;

procedure TdmCompanyFilterProxy.UnprepareFilteredCompanies(ADataSet: TDataSet; const AParamName: string; ATempTableNo: Integer);
begin
  LockedInstance.Value.UnprepareFilteredCompanies(ADataSet, AParamName, ATempTableNo);
end;

{ TdmCompanyFilter }

function TdmCompanyFilter.GetTempChosenNodeMiscsBaseTableName: string;
begin
  Result:= 'TEMP_CHOSEN_COMPANY_MISCS';
end;

function TdmCompanyFilter.GetTempChosenNodesBaseTableName: string;
begin
  Result:= 'TEMP_CHOSEN_COMPANIES';
end;

procedure TdmCompanyFilter.InsRootChosenNode(ATempTableNo, ATempFilterNo: Integer);
begin
//  inherited;   do nothing
end;

procedure TdmCompanyFilter.qryCompaniesAfterClose(DataSet: TDataSet);
begin
  inherited;
  UnPrepareFilteredNodes(1);
end;

procedure TdmCompanyFilter.qryCompaniesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'),
    [(DataSet as TAbmesSQLQuery)],
    1);
end;

procedure TdmCompanyFilter.DataModuleCreate(Sender: TObject);
begin
  RegisterMacroLibrary(mshLocalMacroLibrary);
  inherited;
end;

procedure TdmCompanyFilter.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  UnregisterMacroLibrary(mshLocalMacroLibrary);
end;

function TdmCompanyFilter.GetFilteredNodesBaseName(ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod): string;
begin
  if (ATreeNodeFilterInsertMethod = fimBase) then
    Result:= 'COMPANIES'
  else
    raise Exception.Create('Unsupported TreeNodeFilterInsertMethod');
end;

procedure TdmCompanyFilter.PrepareFilteredCompanies(ADataSet: TDataSet; const AParamName: string; ATempTableNo: Integer);
begin
  Assert(ADataSet is TAbmesSQLQuery);
  PrepareFilteredNodes(
    (ADataSet as TAbmesSQLQuery).CustomParams.ParamByName(AParamName),
    [(ADataSet as TAbmesSQLQuery)],
    ATempTableNo);
end;

procedure TdmCompanyFilter.UnprepareFilteredCompanies(ADataSet: TDataSet; const AParamName: string; ATempTableNo: Integer);
begin
  Assert(ADataSet is TAbmesSQLQuery);
  UnprepareFilteredNodes(
    (ADataSet as TAbmesSQLQuery).CustomParams.ParamByName(AParamName),
    [ADataSet as TAbmesSQLQuery],
    ATempTableNo);
end;

initialization
  TdmCompanyFilterProxy.FSingleton:= TdmCompanyFilterProxy.Create(TdmCompanyFilter);

finalization
  FreeAndNil(TdmCompanyFilterProxy.FSingleton);
end.
