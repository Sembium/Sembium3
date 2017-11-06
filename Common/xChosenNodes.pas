
{******************************************************************}
{                                                                  }
{                         XML Data Binding                         }
{                                                                  }
{         Generated on: 08.7.2009 16:42:10                         }
{       Generated from: XMLSchemas\ChosenNodes.xsd                 }
{                                                                  }
{******************************************************************}

unit xChosenNodes;

interface

uses
  xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLChosenNodesAndParams = interface;
  IXMLChosenNodesParams = interface;
  IXMLChosenNodesParam = interface;
  IXMLChosenNodes = interface;
  IXMLChosenNode = interface;
  IXMLNodeParams = interface;
  IXMLNodeParam = interface;
  IXMLNodeParamValues = interface;
  IXMLNodeParamValue = interface;

{ IXMLChosenNodesAndParams }

  IXMLChosenNodesAndParams = interface(IXMLNode)
    ['{13C090D3-BC1D-4871-9130-B0CF6FFA9CC2}']
    { Property Accessors }
    function Get_AllIfEmpty: Variant;
    function Get_ChosenNodesParams: IXMLChosenNodesParams;
    function Get_ChosenNodes: IXMLChosenNodes;
    procedure Set_AllIfEmpty(Value: Variant);
    { Methods & Properties }
    property AllIfEmpty: Variant read Get_AllIfEmpty write Set_AllIfEmpty;
    property ChosenNodesParams: IXMLChosenNodesParams read Get_ChosenNodesParams;
    property ChosenNodes: IXMLChosenNodes read Get_ChosenNodes;
  end;

{ IXMLChosenNodesParams }

  IXMLChosenNodesParams = interface(IXMLNodeCollection)
    ['{8DD029E9-A692-430C-9417-D651DFB1E876}']
    { Property Accessors }
    function Get_ChosenNodesParam(Index: Integer): IXMLChosenNodesParam;
    { Methods & Properties }
    function Add: IXMLChosenNodesParam;
    function Insert(const Index: Integer): IXMLChosenNodesParam;
    property ChosenNodesParam[Index: Integer]: IXMLChosenNodesParam read Get_ChosenNodesParam; default;
  end;

{ IXMLChosenNodesParam }

  IXMLChosenNodesParam = interface(IXMLNode)
    ['{F79B1E41-D43D-4A3D-855E-4CDDEC110942}']
    { Property Accessors }
    function Get_ParamName: Variant;
    function Get_ParamValue: Variant;
    procedure Set_ParamName(Value: Variant);
    procedure Set_ParamValue(Value: Variant);
    { Methods & Properties }
    property ParamName: Variant read Get_ParamName write Set_ParamName;
    property ParamValue: Variant read Get_ParamValue write Set_ParamValue;
  end;

{ IXMLChosenNodes }

  IXMLChosenNodes = interface(IXMLNodeCollection)
    ['{A2F9ECA5-59CA-4DAD-A71E-FE69E1C0B2D4}']
    { Property Accessors }
    function Get_ChosenNode(Index: Integer): IXMLChosenNode;
    { Methods & Properties }
    function Add: IXMLChosenNode;
    function Insert(const Index: Integer): IXMLChosenNode;
    property ChosenNode[Index: Integer]: IXMLChosenNode read Get_ChosenNode; default;
  end;

{ IXMLChosenNode }

  IXMLChosenNode = interface(IXMLNode)
    ['{55FC623E-B1D8-4EA2-AA02-4B9630332A3B}']
    { Property Accessors }
    function Get_NodeCode: Variant;
    function Get_NodeParams: IXMLNodeParams;
    procedure Set_NodeCode(Value: Variant);
    { Methods & Properties }
    property NodeCode: Variant read Get_NodeCode write Set_NodeCode;
    property NodeParams: IXMLNodeParams read Get_NodeParams;
  end;

{ IXMLNodeParams }

  IXMLNodeParams = interface(IXMLNodeCollection)
    ['{30CF7CF9-80EB-4AB5-B2F1-5ACF4DA3A79D}']
    { Property Accessors }
    function Get_NodeParam(Index: Integer): IXMLNodeParam;
    { Methods & Properties }
    function Add: IXMLNodeParam;
    function Insert(const Index: Integer): IXMLNodeParam;
    property NodeParam[Index: Integer]: IXMLNodeParam read Get_NodeParam; default;
  end;

{ IXMLNodeParam }

  IXMLNodeParam = interface(IXMLNode)
    ['{5E30583A-FB47-41D5-9112-FFE4A2093881}']
    { Property Accessors }
    function Get_NodeParamCode: Variant;
    function Get_NodeParamValues: IXMLNodeParamValues;
    procedure Set_NodeParamCode(Value: Variant);
    { Methods & Properties }
    property NodeParamCode: Variant read Get_NodeParamCode write Set_NodeParamCode;
    property NodeParamValues: IXMLNodeParamValues read Get_NodeParamValues;
  end;

{ IXMLNodeParamValues }

  IXMLNodeParamValues = interface(IXMLNodeCollection)
    ['{86A7FD64-BA32-4230-81EE-912728AFFE5A}']
    { Property Accessors }
    function Get_NodeParamValue(Index: Integer): IXMLNodeParamValue;
    { Methods & Properties }
    function Add: IXMLNodeParamValue;
    function Insert(const Index: Integer): IXMLNodeParamValue;
    property NodeParamValue[Index: Integer]: IXMLNodeParamValue read Get_NodeParamValue; default;
  end;

{ IXMLNodeParamValue }

  IXMLNodeParamValue = interface(IXMLNode)
    ['{45A10DA3-B18B-427E-BAEF-B18CE8E95BBE}']
    { Property Accessors }
    function Get_NodeParamValueCode: Variant;
    function Get_ValueNomCode: Variant;
    function Get_ValueNomItemCode: Variant;
    function Get_ValueFloatMin: Variant;
    function Get_ValueFloatMax: Variant;
    function Get_ValueString: Variant;
    procedure Set_NodeParamValueCode(Value: Variant);
    procedure Set_ValueNomCode(Value: Variant);
    procedure Set_ValueNomItemCode(Value: Variant);
    procedure Set_ValueFloatMin(Value: Variant);
    procedure Set_ValueFloatMax(Value: Variant);
    procedure Set_ValueString(Value: Variant);
    { Methods & Properties }
    property NodeParamValueCode: Variant read Get_NodeParamValueCode write Set_NodeParamValueCode;
    property ValueNomCode: Variant read Get_ValueNomCode write Set_ValueNomCode;
    property ValueNomItemCode: Variant read Get_ValueNomItemCode write Set_ValueNomItemCode;
    property ValueFloatMin: Variant read Get_ValueFloatMin write Set_ValueFloatMin;
    property ValueFloatMax: Variant read Get_ValueFloatMax write Set_ValueFloatMax;
    property ValueString: Variant read Get_ValueString write Set_ValueString;
  end;

{ Forward Decls }

  TXMLChosenNodesAndParams = class;
  TXMLChosenNodesParams = class;
  TXMLChosenNodesParam = class;
  TXMLChosenNodes = class;
  TXMLChosenNode = class;
  TXMLNodeParams = class;
  TXMLNodeParam = class;
  TXMLNodeParamValues = class;
  TXMLNodeParamValue = class;

{ TXMLChosenNodesAndParams }

  TXMLChosenNodesAndParams = class(TXMLNode, IXMLChosenNodesAndParams)
  protected
    { IXMLChosenNodesAndParams }
    function Get_AllIfEmpty: Variant;
    function Get_ChosenNodesParams: IXMLChosenNodesParams;
    function Get_ChosenNodes: IXMLChosenNodes;
    procedure Set_AllIfEmpty(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLChosenNodesParams }

  TXMLChosenNodesParams = class(TXMLNodeCollection, IXMLChosenNodesParams)
  protected
    { IXMLChosenNodesParams }
    function Get_ChosenNodesParam(Index: Integer): IXMLChosenNodesParam;
    function Add: IXMLChosenNodesParam;
    function Insert(const Index: Integer): IXMLChosenNodesParam;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLChosenNodesParam }

  TXMLChosenNodesParam = class(TXMLNode, IXMLChosenNodesParam)
  protected
    { IXMLChosenNodesParam }
    function Get_ParamName: Variant;
    function Get_ParamValue: Variant;
    procedure Set_ParamName(Value: Variant);
    procedure Set_ParamValue(Value: Variant);
  end;

{ TXMLChosenNodes }

  TXMLChosenNodes = class(TXMLNodeCollection, IXMLChosenNodes)
  protected
    { IXMLChosenNodes }
    function Get_ChosenNode(Index: Integer): IXMLChosenNode;
    function Add: IXMLChosenNode;
    function Insert(const Index: Integer): IXMLChosenNode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLChosenNode }

  TXMLChosenNode = class(TXMLNode, IXMLChosenNode)
  protected
    { IXMLChosenNode }
    function Get_NodeCode: Variant;
    function Get_NodeParams: IXMLNodeParams;
    procedure Set_NodeCode(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLNodeParams }

  TXMLNodeParams = class(TXMLNodeCollection, IXMLNodeParams)
  protected
    { IXMLNodeParams }
    function Get_NodeParam(Index: Integer): IXMLNodeParam;
    function Add: IXMLNodeParam;
    function Insert(const Index: Integer): IXMLNodeParam;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLNodeParam }

  TXMLNodeParam = class(TXMLNode, IXMLNodeParam)
  protected
    { IXMLNodeParam }
    function Get_NodeParamCode: Variant;
    function Get_NodeParamValues: IXMLNodeParamValues;
    procedure Set_NodeParamCode(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLNodeParamValues }

  TXMLNodeParamValues = class(TXMLNodeCollection, IXMLNodeParamValues)
  protected
    { IXMLNodeParamValues }
    function Get_NodeParamValue(Index: Integer): IXMLNodeParamValue;
    function Add: IXMLNodeParamValue;
    function Insert(const Index: Integer): IXMLNodeParamValue;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLNodeParamValue }

  TXMLNodeParamValue = class(TXMLNode, IXMLNodeParamValue)
  protected
    { IXMLNodeParamValue }
    function Get_NodeParamValueCode: Variant;
    function Get_ValueNomCode: Variant;
    function Get_ValueNomItemCode: Variant;
    function Get_ValueFloatMin: Variant;
    function Get_ValueFloatMax: Variant;
    function Get_ValueString: Variant;
    procedure Set_NodeParamValueCode(Value: Variant);
    procedure Set_ValueNomCode(Value: Variant);
    procedure Set_ValueNomItemCode(Value: Variant);
    procedure Set_ValueFloatMin(Value: Variant);
    procedure Set_ValueFloatMax(Value: Variant);
    procedure Set_ValueString(Value: Variant);
  end;

{ Global Functions }

function GetChosenNodesAndParams(Doc: IXMLDocument): IXMLChosenNodesAndParams;
function LoadChosenNodesAndParams(const FileName: WideString): IXMLChosenNodesAndParams;
function NewChosenNodesAndParams: IXMLChosenNodesAndParams;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetChosenNodesAndParams(Doc: IXMLDocument): IXMLChosenNodesAndParams;
begin
  Result := Doc.GetDocBinding('ChosenNodesAndParams', TXMLChosenNodesAndParams, TargetNamespace) as IXMLChosenNodesAndParams;
end;

function LoadChosenNodesAndParams(const FileName: WideString): IXMLChosenNodesAndParams;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('ChosenNodesAndParams', TXMLChosenNodesAndParams, TargetNamespace) as IXMLChosenNodesAndParams;
end;

function NewChosenNodesAndParams: IXMLChosenNodesAndParams;
begin
  Result := NewXMLDocument.GetDocBinding('ChosenNodesAndParams', TXMLChosenNodesAndParams, TargetNamespace) as IXMLChosenNodesAndParams;
end;

{ TXMLChosenNodesAndParams }

procedure TXMLChosenNodesAndParams.AfterConstruction;
begin
  RegisterChildNode('ChosenNodesParams', TXMLChosenNodesParams);
  RegisterChildNode('ChosenNodes', TXMLChosenNodes);
  inherited;
end;

function TXMLChosenNodesAndParams.Get_AllIfEmpty: Variant;
begin
  Result := ChildNodes['AllIfEmpty'].NodeValue;
end;

procedure TXMLChosenNodesAndParams.Set_AllIfEmpty(Value: Variant);
begin
  ChildNodes['AllIfEmpty'].NodeValue := Value;
end;

function TXMLChosenNodesAndParams.Get_ChosenNodesParams: IXMLChosenNodesParams;
begin
  Result := ChildNodes['ChosenNodesParams'] as IXMLChosenNodesParams;
end;

function TXMLChosenNodesAndParams.Get_ChosenNodes: IXMLChosenNodes;
begin
  Result := ChildNodes['ChosenNodes'] as IXMLChosenNodes;
end;

{ TXMLChosenNodesParams }

procedure TXMLChosenNodesParams.AfterConstruction;
begin
  RegisterChildNode('ChosenNodesParam', TXMLChosenNodesParam);
  ItemTag := 'ChosenNodesParam';
  ItemInterface := IXMLChosenNodesParam;
  inherited;
end;

function TXMLChosenNodesParams.Get_ChosenNodesParam(Index: Integer): IXMLChosenNodesParam;
begin
  Result := List[Index] as IXMLChosenNodesParam;
end;

function TXMLChosenNodesParams.Add: IXMLChosenNodesParam;
begin
  Result := AddItem(-1) as IXMLChosenNodesParam;
end;

function TXMLChosenNodesParams.Insert(const Index: Integer): IXMLChosenNodesParam;
begin
  Result := AddItem(Index) as IXMLChosenNodesParam;
end;

{ TXMLChosenNodesParam }

function TXMLChosenNodesParam.Get_ParamName: Variant;
begin
  Result := ChildNodes['ParamName'].NodeValue;
end;

procedure TXMLChosenNodesParam.Set_ParamName(Value: Variant);
begin
  ChildNodes['ParamName'].NodeValue := Value;
end;

function TXMLChosenNodesParam.Get_ParamValue: Variant;
begin
  Result := ChildNodes['ParamValue'].NodeValue;
end;

procedure TXMLChosenNodesParam.Set_ParamValue(Value: Variant);
begin
  ChildNodes['ParamValue'].NodeValue := Value;
end;

{ TXMLChosenNodes }

procedure TXMLChosenNodes.AfterConstruction;
begin
  RegisterChildNode('ChosenNode', TXMLChosenNode);
  ItemTag := 'ChosenNode';
  ItemInterface := IXMLChosenNode;
  inherited;
end;

function TXMLChosenNodes.Get_ChosenNode(Index: Integer): IXMLChosenNode;
begin
  Result := List[Index] as IXMLChosenNode;
end;

function TXMLChosenNodes.Add: IXMLChosenNode;
begin
  Result := AddItem(-1) as IXMLChosenNode;
end;

function TXMLChosenNodes.Insert(const Index: Integer): IXMLChosenNode;
begin
  Result := AddItem(Index) as IXMLChosenNode;
end;

{ TXMLChosenNode }

procedure TXMLChosenNode.AfterConstruction;
begin
  RegisterChildNode('NodeParams', TXMLNodeParams);
  inherited;
end;

function TXMLChosenNode.Get_NodeCode: Variant;
begin
  Result := ChildNodes['NodeCode'].NodeValue;
end;

procedure TXMLChosenNode.Set_NodeCode(Value: Variant);
begin
  ChildNodes['NodeCode'].NodeValue := Value;
end;

function TXMLChosenNode.Get_NodeParams: IXMLNodeParams;
begin
  Result := ChildNodes['NodeParams'] as IXMLNodeParams;
end;

{ TXMLNodeParams }

procedure TXMLNodeParams.AfterConstruction;
begin
  RegisterChildNode('NodeParam', TXMLNodeParam);
  ItemTag := 'NodeParam';
  ItemInterface := IXMLNodeParam;
  inherited;
end;

function TXMLNodeParams.Get_NodeParam(Index: Integer): IXMLNodeParam;
begin
  Result := List[Index] as IXMLNodeParam;
end;

function TXMLNodeParams.Add: IXMLNodeParam;
begin
  Result := AddItem(-1) as IXMLNodeParam;
end;

function TXMLNodeParams.Insert(const Index: Integer): IXMLNodeParam;
begin
  Result := AddItem(Index) as IXMLNodeParam;
end;

{ TXMLNodeParam }

procedure TXMLNodeParam.AfterConstruction;
begin
  RegisterChildNode('NodeParamValues', TXMLNodeParamValues);
  inherited;
end;

function TXMLNodeParam.Get_NodeParamCode: Variant;
begin
  Result := ChildNodes['NodeParamCode'].NodeValue;
end;

procedure TXMLNodeParam.Set_NodeParamCode(Value: Variant);
begin
  ChildNodes['NodeParamCode'].NodeValue := Value;
end;

function TXMLNodeParam.Get_NodeParamValues: IXMLNodeParamValues;
begin
  Result := ChildNodes['NodeParamValues'] as IXMLNodeParamValues;
end;

{ TXMLNodeParamValues }

procedure TXMLNodeParamValues.AfterConstruction;
begin
  RegisterChildNode('NodeParamValue', TXMLNodeParamValue);
  ItemTag := 'NodeParamValue';
  ItemInterface := IXMLNodeParamValue;
  inherited;
end;

function TXMLNodeParamValues.Get_NodeParamValue(Index: Integer): IXMLNodeParamValue;
begin
  Result := List[Index] as IXMLNodeParamValue;
end;

function TXMLNodeParamValues.Add: IXMLNodeParamValue;
begin
  Result := AddItem(-1) as IXMLNodeParamValue;
end;

function TXMLNodeParamValues.Insert(const Index: Integer): IXMLNodeParamValue;
begin
  Result := AddItem(Index) as IXMLNodeParamValue;
end;

{ TXMLNodeParamValue }

function TXMLNodeParamValue.Get_NodeParamValueCode: Variant;
begin
  Result := ChildNodes['NodeParamValueCode'].NodeValue;
end;

procedure TXMLNodeParamValue.Set_NodeParamValueCode(Value: Variant);
begin
  ChildNodes['NodeParamValueCode'].NodeValue := Value;
end;

function TXMLNodeParamValue.Get_ValueNomCode: Variant;
begin
  Result := ChildNodes['ValueNomCode'].NodeValue;
end;

procedure TXMLNodeParamValue.Set_ValueNomCode(Value: Variant);
begin
  ChildNodes['ValueNomCode'].NodeValue := Value;
end;

function TXMLNodeParamValue.Get_ValueNomItemCode: Variant;
begin
  Result := ChildNodes['ValueNomItemCode'].NodeValue;
end;

procedure TXMLNodeParamValue.Set_ValueNomItemCode(Value: Variant);
begin
  ChildNodes['ValueNomItemCode'].NodeValue := Value;
end;

function TXMLNodeParamValue.Get_ValueFloatMin: Variant;
begin
  Result := ChildNodes['ValueFloatMin'].NodeValue;
end;

procedure TXMLNodeParamValue.Set_ValueFloatMin(Value: Variant);
begin
  ChildNodes['ValueFloatMin'].NodeValue := Value;
end;

function TXMLNodeParamValue.Get_ValueFloatMax: Variant;
begin
  Result := ChildNodes['ValueFloatMax'].NodeValue;
end;

procedure TXMLNodeParamValue.Set_ValueFloatMax(Value: Variant);
begin
  ChildNodes['ValueFloatMax'].NodeValue := Value;
end;

function TXMLNodeParamValue.Get_ValueString: Variant;
begin
  Result := ChildNodes['ValueString'].NodeValue;
end;

procedure TXMLNodeParamValue.Set_ValueString(Value: Variant);
begin
  ChildNodes['ValueString'].NodeValue := Value;
end;

end.
