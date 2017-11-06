unit dDeptTreeNodeFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, AbmesClientDataSet, dTreeNodeFilter, WideStrings, FMTBcd,
  SqlExpr, AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmDeptTreeNodeFilter = class(TdmTreeNodeFilter)
  private
    { Private declarations }
  protected
    procedure DoInsChosenNode(ANodeCode, ATempTableNo, ATempFilterNo: Integer); override;
    function GetFilteredNodesBaseName(ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod): string; override;
    function GetTempChosenNodesBaseTableName: string; override;
    function GetTempChosenNodeMiscsBaseTableName: string; override;
  end;

type
  IdmDeptTreeNodeFilterProxy = interface(IdmTreeNodeFilterProxy)
  end;

type
  TdmDeptTreeNodeFilterProxy = class(TdmTreeNodeFilterProxy, IdmDeptTreeNodeFilterProxy)
  private
    class var FSingleton: TdmDeptTreeNodeFilterProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmDeptTreeNodeFilter>;
  strict protected
    property LockedInstance: ISmartLock<TdmDeptTreeNodeFilter> read GetLockedInstance;
  public
    class property Singleton: TdmDeptTreeNodeFilterProxy read FSingleton;
  end;

implementation

uses
  uTreeNodes;

{$R *.DFM}

{ TdmDeptTreeNodeFilterProxy }

function TdmDeptTreeNodeFilterProxy.GetLockedInstance: ISmartLock<TdmDeptTreeNodeFilter>;
begin
  Result:= ISmartLock<TdmDeptTreeNodeFilter>(inherited LockedInstance);
end;

{ TdmDeptTreeNodeFilter }

function TdmDeptTreeNodeFilter.GetTempChosenNodeMiscsBaseTableName: string;
begin
  Result:= 'TEMP_CHOSEN_DEPT_MISCS';
end;

function TdmDeptTreeNodeFilter.GetTempChosenNodesBaseTableName: string;
begin
  Result:= 'TEMP_CHOSEN_DEPTS';
end;

function TdmDeptTreeNodeFilter.GetFilteredNodesBaseName(ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod): string;
begin
  if (ATreeNodeFilterInsertMethod = fimBase) then
    Result:= 'DEPTS'
  else
    raise Exception.Create('Unsupported TreeNodeFilterInsertMethod');
end;

procedure TdmDeptTreeNodeFilter.DoInsChosenNode(ANodeCode,
  ATempTableNo, ATempFilterNo: Integer);
begin
  if (ANodeCode = -1) then
    begin
      ANodeCode:= LoginContext.CurrentDeptCode;
      if (ANodeCode = 0) then
        ANodeCode:= tnRootDeptCode;
    end;

  inherited;
end;

initialization
  TdmDeptTreeNodeFilterProxy.FSingleton:= TdmDeptTreeNodeFilterProxy.Create(TdmDeptTreeNodeFilter);

finalization
  FreeAndNil(TdmDeptTreeNodeFilterProxy.FSingleton);
end.
