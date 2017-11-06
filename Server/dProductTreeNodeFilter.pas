unit dProductTreeNodeFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, AbmesClientDataSet, dTreeNodeFilter, xChosenNodes,
  uProducts, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection,
  DBXDevartOracle, uSmartLock;

type
  TdmProductTreeNodeFilter = class(TdmTreeNodeFilter)
    qryInsFilteredDepts: TAbmesSQLQuery;
    qryGetRootCode: TAbmesSQLQuery;
    qryGetRootCodePRODUCT_CODE: TAbmesFloatField;
  private
    FProductClass: TProductClass;
  protected
    function GetInsFilteredNodesQuery(ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod; AChosenNodeMiscsArray: array of TParams): TAbmesSQLQuery; override;
    function GetFilteredNodesBaseName(ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod): string; override;
    function GetTempChosenNodesBaseTableName: string; override;
    function GetTempChosenNodeMiscsBaseTableName: string; override;
    procedure DoInsChosenNode(ANodeCode, ATempTableNo, ATempFilterNo: Integer); override;

    procedure PrepareFilteredNodes(AParam: TParam; ATempTableNo: Integer; AProductClassParam: TParam); overload;
    procedure PrepareFilteredNodes(AParam: TParam; ATempTableNo: Integer; AProductClass: TProductClass = pcNormal); overload;
    procedure PrepareFilteredNodes(AXMLText: string; ATempTableNo: Integer; AProductClass: TProductClass = pcNormal); overload;

    procedure PrepareFilteredNodes(AParam: TParam; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer; AProductClassParam: TParam); overload;
    procedure PrepareFilteredNodes(AParam: TParam; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1; AProductClass: TProductClass = pcNormal); overload;
    procedure PrepareFilteredNodes(AXMLText: string; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1; AProductClass: TProductClass = pcNormal); overload;

    procedure PrepareFilteredDepts(AParam: TParam; ATempTableNo: Integer); overload;
    procedure PrepareFilteredDepts(AXMLText: string; ATempTableNo: Integer); overload;

    procedure PrepareFilteredDepts(AParam: TParam; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer); overload;
    procedure PrepareFilteredDepts(AXMLText: string; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer); overload;

    procedure UnPrepareFilteredDepts(ATempTableNo: Integer); overload;

    procedure UnPrepareFilteredDepts(AParam: TParam; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer); overload;
    procedure UnPrepareFilteredDepts(AXMLText: string; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer); overload;

    procedure PrepareFilteredProducts(ADataSet: TDataSet; const AParamName: string = 'CHOSEN_PRODUCTS'; ATempTableNo: Integer = 1);
    procedure UnprepareFilteredProducts(ADataSet: TDataSet; const AParamName: string = 'CHOSEN_PRODUCTS'; ATempTableNo: Integer = 1);
  end;

type
  IdmProductTreeNodeFilterProxy = interface(IdmTreeNodeFilterProxy)
    procedure PrepareFilteredNodes(AParam: TParam; ATempTableNo: Integer; AProductClassParam: TParam); overload;
    procedure PrepareFilteredNodes(AParam: TParam; ATempTableNo: Integer = 1; AProductClass: TProductClass = pcNormal); overload;
    procedure PrepareFilteredNodes(AXMLText: string; ATempTableNo: Integer = 1; AProductClass: TProductClass = pcNormal); overload;

    procedure PrepareFilteredNodes(AParam: TParam; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer; AProductClassParam: TParam); overload;
    procedure PrepareFilteredNodes(AParam: TParam; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1; AProductClass: TProductClass = pcNormal); overload;
    procedure PrepareFilteredNodes(AXMLText: string; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1; AProductClass: TProductClass = pcNormal); overload;

    procedure PrepareFilteredDepts(AParam: TParam; ATempTableNo: Integer = 1); overload;
    procedure PrepareFilteredDepts(AXMLText: string; ATempTableNo: Integer = 1); overload;

    procedure PrepareFilteredDepts(AParam: TParam; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1); overload;
    procedure PrepareFilteredDepts(AXMLText: string; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1); overload;

    procedure UnPrepareFilteredDepts(ATempTableNo: Integer = 1); overload;

    procedure UnPrepareFilteredDepts(AParam: TParam;  AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1); overload;
    procedure UnPrepareFilteredDepts(AXMLText: string;  AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1); overload;

    procedure PrepareFilteredProducts(ADataSet: TDataSet; const AParamName: string = 'CHOSEN_PRODUCTS'; ATempTableNo: Integer = 1);
    procedure UnprepareFilteredProducts(ADataSet: TDataSet; const AParamName: string = 'CHOSEN_PRODUCTS'; ATempTableNo: Integer = 1);
  end;

type
  TdmProductTreeNodeFilterProxy = class(TdmTreeNodeFilterProxy, IdmProductTreeNodeFilterProxy)
  private
    class var FSingleton: TdmProductTreeNodeFilterProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmProductTreeNodeFilter>;
  strict protected
    property LockedInstance: ISmartLock<TdmProductTreeNodeFilter> read GetLockedInstance;
  protected
    procedure PrepareFilteredNodes(AParam: TParam; ATempTableNo: Integer; AProductClassParam: TParam); overload;
    procedure PrepareFilteredNodes(AParam: TParam; ATempTableNo: Integer = 1; AProductClass: TProductClass = pcNormal); overload;
    procedure PrepareFilteredNodes(AXMLText: string; ATempTableNo: Integer = 1; AProductClass: TProductClass = pcNormal); overload;

    procedure PrepareFilteredNodes(AParam: TParam; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer; AProductClassParam: TParam); overload;
    procedure PrepareFilteredNodes(AParam: TParam; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1; AProductClass: TProductClass = pcNormal); overload;
    procedure PrepareFilteredNodes(AXMLText: string; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1; AProductClass: TProductClass = pcNormal); overload;

    procedure PrepareFilteredDepts(AParam: TParam; ATempTableNo: Integer = 1); overload;
    procedure PrepareFilteredDepts(AXMLText: string; ATempTableNo: Integer = 1); overload;

    procedure PrepareFilteredDepts(AParam: TParam; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1); overload;
    procedure PrepareFilteredDepts(AXMLText: string; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1); overload;

    procedure UnPrepareFilteredDepts(ATempTableNo: Integer = 1); overload;

    procedure UnPrepareFilteredDepts(AParam: TParam;  AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1); overload;
    procedure UnPrepareFilteredDepts(AXMLText: string;  AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1); overload;

    procedure PrepareFilteredProducts(ADataSet: TDataSet; const AParamName: string = 'CHOSEN_PRODUCTS'; ATempTableNo: Integer = 1);
    procedure UnprepareFilteredProducts(ADataSet: TDataSet; const AParamName: string = 'CHOSEN_PRODUCTS'; ATempTableNo: Integer = 1);
  public
    class property Singleton: TdmProductTreeNodeFilterProxy read FSingleton;
  end;

implementation

uses
  uDBPooledDataModuleHelper, Variants, uUtils, uTreeNodes, XMLIntf, XMLDoc;

{$R *.DFM}

{ TdmProductTreeNodeFilterProxy }

function TdmProductTreeNodeFilterProxy.GetLockedInstance: ISmartLock<TdmProductTreeNodeFilter>;
begin
  Result:= ISmartLock<TdmProductTreeNodeFilter>(inherited LockedInstance);
end;

procedure TdmProductTreeNodeFilterProxy.PrepareFilteredDepts(AParam: TParam;
  AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer);
begin
  LockedInstance.Value.PrepareFilteredDepts(AParam, AQueries, ATempTableNo);
end;

procedure TdmProductTreeNodeFilterProxy.PrepareFilteredDepts(AXMLText: string;
  AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer);
begin
  LockedInstance.Value.PrepareFilteredDepts(AXMLText, AQueries, ATempTableNo);
end;

procedure TdmProductTreeNodeFilterProxy.PrepareFilteredNodes(AParam: TParam;
  ATempTableNo: Integer; AProductClassParam: TParam);
begin
  LockedInstance.Value.PrepareFilteredNodes(AParam, ATempTableNo, AProductClassParam);
end;

procedure TdmProductTreeNodeFilterProxy.PrepareFilteredNodes(AParam: TParam;
  AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer;
  AProductClassParam: TParam);
begin
  LockedInstance.Value.PrepareFilteredNodes(AParam, AQueries, ATempTableNo, AProductClassParam);
end;

procedure TdmProductTreeNodeFilterProxy.PrepareFilteredNodes(
  AXMLText: string; ATempTableNo: Integer; AProductClass: TProductClass);
begin
  LockedInstance.Value.PrepareFilteredNodes(AXMLText, ATempTableNo, AProductClass);
end;

procedure TdmProductTreeNodeFilterProxy.PrepareFilteredNodes(
  AParam: TParam; ATempTableNo: Integer; AProductClass: TProductClass);
begin
  LockedInstance.Value.PrepareFilteredNodes(AParam, ATempTableNo, AProductClass);
end;

procedure TdmProductTreeNodeFilterProxy.PrepareFilteredNodes(
  AParam: TParam; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer;
  AProductClass: TProductClass);
begin
  LockedInstance.Value.PrepareFilteredNodes(AParam, AQueries, ATempTableNo, AProductClass);
end;

procedure TdmProductTreeNodeFilterProxy.PrepareFilteredNodes(
  AXMLText: string; AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer;
  AProductClass: TProductClass);
begin
  LockedInstance.Value.PrepareFilteredNodes(AXMLText, AQueries, ATempTableNo, AProductClass);
end;

procedure TdmProductTreeNodeFilterProxy.PrepareFilteredDepts(AParam: TParam; ATempTableNo: Integer);
begin
  LockedInstance.Value.PrepareFilteredDepts(AParam, ATempTableNo);
end;

procedure TdmProductTreeNodeFilterProxy.PrepareFilteredDepts(AXMLText: string; ATempTableNo: Integer);
begin
  LockedInstance.Value.PrepareFilteredDepts(AXMLText, ATempTableNo);
end;

procedure TdmProductTreeNodeFilterProxy.UnPrepareFilteredDepts(ATempTableNo: Integer);
begin
  LockedInstance.Value.UnPrepareFilteredDepts(ATempTableNo);
end;

procedure TdmProductTreeNodeFilterProxy.UnPrepareFilteredDepts(AParam: TParam;
  AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer);
begin
  LockedInstance.Value.UnPrepareFilteredDepts(AParam, AQueries, ATempTableNo);
end;

procedure TdmProductTreeNodeFilterProxy.UnPrepareFilteredDepts(AXMLText: string;
  AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer);
begin
  LockedInstance.Value.UnPrepareFilteredDepts(AXMLText, AQueries, ATempTableNo);
end;

procedure TdmProductTreeNodeFilterProxy.PrepareFilteredProducts(ADataSet: TDataSet; const AParamName: string; ATempTableNo: Integer);
begin
  LockedInstance.Value.PrepareFilteredProducts(ADataSet, AParamName, ATempTableNo);
end;

procedure TdmProductTreeNodeFilterProxy.UnprepareFilteredProducts(ADataSet: TDataSet; const AParamName: string; ATempTableNo: Integer);
begin
  LockedInstance.Value.UnprepareFilteredProducts(ADataSet, AParamName, ATempTableNo);
end;

{ TdmProductTreeNodeFilter }

function TdmProductTreeNodeFilter.GetFilteredNodesBaseName(ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod): string;
begin
  case ATreeNodeFilterInsertMethod of
    fimBase:
      Result:= 'PRODUCTS';
    fimSecondary:
      Result:= 'DEPTS';
    else
      raise Exception.Create('Unsupported TreeNodeFilterInsertMethod');
  end;  { case }
end;

function TdmProductTreeNodeFilter.GetInsFilteredNodesQuery(
  ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod;
  AChosenNodeMiscsArray: array of TParams): TAbmesSQLQuery;
begin
  if (ATreeNodeFilterInsertMethod = fimSecondary) then
    Result:= qryInsFilteredDepts
  else
    Result:= inherited;
end;

function TdmProductTreeNodeFilter.GetTempChosenNodeMiscsBaseTableName: string;
begin
  Result:= 'TEMP_CHOSEN_PRODUCT_MISCS';
end;

function TdmProductTreeNodeFilter.GetTempChosenNodesBaseTableName: string;
begin
  Result:= 'TEMP_CHOSEN_PRODUCTS';
end;

procedure TdmProductTreeNodeFilter.DoInsChosenNode(ANodeCode,
  ATempTableNo, ATempFilterNo: Integer);
begin
  if (ANodeCode = tnRootNodeCode) and (FProductClass <> pcNone) then
    begin
      qryGetRootCode.ParamByName('PRODUCT_CLASS_CODE').AsInteger:= ProductClassToInt(FProductClass);
      qryGetRootCode.Open;
      try
        ANodeCode:= qryGetRootCodePRODUCT_CODE.AsInteger;
      finally
        qryGetRootCode.Close;
      end;  { try }
    end;  { if }

  inherited;
end;

procedure TdmProductTreeNodeFilter.PrepareFilteredDepts(AParam: TParam;
  AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer);
begin
  PrepareFilteredNodes(AParam, AQueries, ATempTableNo, fimSecondary);
end;

procedure TdmProductTreeNodeFilter.PrepareFilteredDepts(AXMLText: string;
  AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer);
begin
  PrepareFilteredNodes(AXMLText, AQueries, ATempTableNo, fimSecondary);
end;

procedure TdmProductTreeNodeFilter.PrepareFilteredNodes(AXMLText: string;
  ATempTableNo: Integer;
  AProductClass: TProductClass);
begin
  Assert(FProductClass = pcNone);
  FProductClass:= AProductClass;
  try
    inherited PrepareFilteredNodes(AXMLText, ATempTableNo, fimBase);
  finally
    FProductClass:= pcNone;
  end;  { try }
end;

procedure TdmProductTreeNodeFilter.PrepareFilteredNodes(AParam: TParam;
  ATempTableNo: Integer;
  AProductClass: TProductClass);
begin
  Assert(FProductClass = pcNone);
  FProductClass:= AProductClass;
  try
    inherited PrepareFilteredNodes(AParam, ATempTableNo, fimBase);
  finally
    FProductClass:= pcNone;
  end;  { try }
end;

procedure TdmProductTreeNodeFilter.PrepareFilteredNodes(AXMLText: string;
  AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer;
  AProductClass: TProductClass);
begin
  Assert(FProductClass = pcNone);
  FProductClass:= AProductClass;
  try
    inherited PrepareFilteredNodes(AXMLText, AQueries, ATempTableNo, fimBase);
  finally
    FProductClass:= pcNone;
  end;  { try }
end;

procedure TdmProductTreeNodeFilter.PrepareFilteredNodes(AParam: TParam;
  ATempTableNo: Integer; AProductClassParam: TParam);
begin
  Assert(Assigned(AProductClassParam));
  PrepareFilteredNodes(AParam, ATempTableNo, IntToProductClass(AProductClassParam.AsInteger));
end;

procedure TdmProductTreeNodeFilter.PrepareFilteredNodes(AParam: TParam;
  AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer;
  AProductClassParam: TParam);
begin
  Assert(Assigned(AProductClassParam));
  PrepareFilteredNodes(AParam, AQueries, ATempTableNo, IntToProductClass(AProductClassParam.AsInteger));
end;

procedure TdmProductTreeNodeFilter.PrepareFilteredNodes(AParam: TParam;
  AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer;
  AProductClass: TProductClass);
begin
  Assert(FProductClass = pcNone);
  FProductClass:= AProductClass;
  try
    inherited PrepareFilteredNodes(AParam, AQueries, ATempTableNo, fimBase);
  finally
    FProductClass:= pcNone;
  end;  { try }
end;

procedure TdmProductTreeNodeFilter.PrepareFilteredDepts(AParam: TParam; ATempTableNo: Integer);
begin
  PrepareFilteredNodes(AParam, ATempTableNo, fimSecondary);
end;

procedure TdmProductTreeNodeFilter.PrepareFilteredDepts(AXMLText: string; ATempTableNo: Integer);
begin
  PrepareFilteredNodes(AXMLText, ATempTableNo, fimSecondary);
end;

procedure TdmProductTreeNodeFilter.UnPrepareFilteredDepts(ATempTableNo: Integer);
begin
  UnprepareFilteredNodes(ATempTableNo, fimSecondary);
end;

procedure TdmProductTreeNodeFilter.UnPrepareFilteredDepts(AParam: TParam;
  AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer);
begin
  UnPrepareFilteredNodes(AParam, AQueries, ATempTableNo, fimSecondary);
end;

procedure TdmProductTreeNodeFilter.UnPrepareFilteredDepts(AXMLText: string;
  AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer);
begin
  UnPrepareFilteredNodes(AXMLText, AQueries, ATempTableNo, fimSecondary);
end;

procedure TdmProductTreeNodeFilter.PrepareFilteredProducts(ADataSet: TDataSet; const AParamName: string; ATempTableNo: Integer);
begin
  Assert(ADataSet is TAbmesSQLQuery);
  PrepareFilteredNodes(
    (ADataSet as TAbmesSQLQuery).CustomParams.ParamByName(AParamName),
    [(ADataSet as TAbmesSQLQuery)],
    ATempTableNo);
end;

procedure TdmProductTreeNodeFilter.UnprepareFilteredProducts(ADataSet: TDataSet; const AParamName: string; ATempTableNo: Integer);
begin
  Assert(ADataSet is TAbmesSQLQuery);
  UnPrepareFilteredNodes(
    (ADataSet as TAbmesSQLQuery).CustomParams.ParamByName(AParamName),
    [(ADataSet as TAbmesSQLQuery)],
    ATempTableNo);
end;

initialization
  TdmProductTreeNodeFilterProxy.FSingleton:= TdmProductTreeNodeFilterProxy.Create(TdmProductTreeNodeFilter);

finalization
  FreeAndNil(TdmProductTreeNodeFilterProxy.FSingleton);
end.
