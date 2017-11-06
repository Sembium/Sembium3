
{********************************************************************************************}
{                                                                                            }
{                                      XML Data Binding                                      }
{                                                                                            }
{         Generated on: 22.12.2005 15:28:53                                                  }
{       Generated from: XMLSchemas\Public\TDocItemActiveFieldsDefinition.xsd                 }
{                                                                                            }
{********************************************************************************************}

unit xTDocItemActiveFieldsDefinition;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTDocItemActiveFieldsDefinition = interface;
  IXMLDocItemActiveFieldsList = interface;
  IXMLTDocItemActiveField = interface;
  IXMLTDocItemActiveFieldNode = interface;
  IXMLChildDocItemActiveFieldNodes = interface;

{ IXMLTDocItemActiveFieldsDefinition }

  IXMLTDocItemActiveFieldsDefinition = interface(IXMLNode)
    ['{AF28F499-5E0C-4DD5-BDD2-6BDA053E14B5}']
    { Property Accessors }
    function Get_DocItemActiveFieldsList: IXMLDocItemActiveFieldsList;
    function Get_DocItemActiveFieldsTree: IXMLTDocItemActiveFieldNode;
    { Methods & Properties }
    property DocItemActiveFieldsList: IXMLDocItemActiveFieldsList read Get_DocItemActiveFieldsList;
    property DocItemActiveFieldsTree: IXMLTDocItemActiveFieldNode read Get_DocItemActiveFieldsTree;
  end;

{ IXMLDocItemActiveFieldsList }

  IXMLDocItemActiveFieldsList = interface(IXMLNodeCollection)
    ['{86954880-8A6D-4A5B-AE27-5EEE69CA26E1}']
    { Property Accessors }
    function Get_DocItemActiveField(Index: Integer): IXMLTDocItemActiveField;
    { Methods & Properties }
    function Add: IXMLTDocItemActiveField;
    function Insert(const Index: Integer): IXMLTDocItemActiveField;
    property DocItemActiveField[Index: Integer]: IXMLTDocItemActiveField read Get_DocItemActiveField; default;
  end;

{ IXMLTDocItemActiveField }

  IXMLTDocItemActiveField = interface(IXMLNode)
    ['{52CDE4D0-4426-4695-9DCA-D2869140326C}']
    { Property Accessors }
    function Get_DocItemActiveFieldIdentifier: Variant;
    function Get_DocItemActiveFieldIntegerIdentifier: Variant;
    function Get_DocItemActiveFieldName: Variant;
    function Get_IsVisible: Variant;
    procedure Set_DocItemActiveFieldIdentifier(Value: Variant);
    procedure Set_DocItemActiveFieldIntegerIdentifier(Value: Variant);
    procedure Set_DocItemActiveFieldName(Value: Variant);
    procedure Set_IsVisible(Value: Variant);
    { Methods & Properties }
    property DocItemActiveFieldIdentifier: Variant read Get_DocItemActiveFieldIdentifier write Set_DocItemActiveFieldIdentifier;
    property DocItemActiveFieldIntegerIdentifier: Variant read Get_DocItemActiveFieldIntegerIdentifier write Set_DocItemActiveFieldIntegerIdentifier;
    property DocItemActiveFieldName: Variant read Get_DocItemActiveFieldName write Set_DocItemActiveFieldName;
    property IsVisible: Variant read Get_IsVisible write Set_IsVisible;
  end;

{ IXMLTDocItemActiveFieldNode }

  IXMLTDocItemActiveFieldNode = interface(IXMLTDocItemActiveField)
    ['{1998C1BD-EC1F-4EB7-8C73-E950F20F6137}']
    { Property Accessors }
    function Get_ChildDocItemActiveFieldNodes: IXMLChildDocItemActiveFieldNodes;
    { Methods & Properties }
    property ChildDocItemActiveFieldNodes: IXMLChildDocItemActiveFieldNodes read Get_ChildDocItemActiveFieldNodes;
  end;

{ IXMLChildDocItemActiveFieldNodes }

  IXMLChildDocItemActiveFieldNodes = interface(IXMLNodeCollection)
    ['{569DE6E2-A874-4075-99A8-67F8D8163C19}']
    { Property Accessors }
    function Get_ChildDocItemActiveFieldNode(Index: Integer): IXMLTDocItemActiveFieldNode;
    { Methods & Properties }
    function Add: IXMLTDocItemActiveFieldNode;
    function Insert(const Index: Integer): IXMLTDocItemActiveFieldNode;
    property ChildDocItemActiveFieldNode[Index: Integer]: IXMLTDocItemActiveFieldNode read Get_ChildDocItemActiveFieldNode; default;
  end;

{ Forward Decls }

  TXMLTDocItemActiveFieldsDefinition = class;
  TXMLDocItemActiveFieldsList = class;
  TXMLTDocItemActiveField = class;
  TXMLTDocItemActiveFieldNode = class;
  TXMLChildDocItemActiveFieldNodes = class;

{ TXMLTDocItemActiveFieldsDefinition }

  TXMLTDocItemActiveFieldsDefinition = class(TXMLNode, IXMLTDocItemActiveFieldsDefinition)
  protected
    { IXMLTDocItemActiveFieldsDefinition }
    function Get_DocItemActiveFieldsList: IXMLDocItemActiveFieldsList;
    function Get_DocItemActiveFieldsTree: IXMLTDocItemActiveFieldNode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDocItemActiveFieldsList }

  TXMLDocItemActiveFieldsList = class(TXMLNodeCollection, IXMLDocItemActiveFieldsList)
  protected
    { IXMLDocItemActiveFieldsList }
    function Get_DocItemActiveField(Index: Integer): IXMLTDocItemActiveField;
    function Add: IXMLTDocItemActiveField;
    function Insert(const Index: Integer): IXMLTDocItemActiveField;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTDocItemActiveField }

  TXMLTDocItemActiveField = class(TXMLNode, IXMLTDocItemActiveField)
  protected
    { IXMLTDocItemActiveField }
    function Get_DocItemActiveFieldIdentifier: Variant;
    function Get_DocItemActiveFieldIntegerIdentifier: Variant;
    function Get_DocItemActiveFieldName: Variant;
    function Get_IsVisible: Variant;
    procedure Set_DocItemActiveFieldIdentifier(Value: Variant);
    procedure Set_DocItemActiveFieldIntegerIdentifier(Value: Variant);
    procedure Set_DocItemActiveFieldName(Value: Variant);
    procedure Set_IsVisible(Value: Variant);
  end;

{ TXMLTDocItemActiveFieldNode }

  TXMLTDocItemActiveFieldNode = class(TXMLTDocItemActiveField, IXMLTDocItemActiveFieldNode)
  protected
    { IXMLTDocItemActiveFieldNode }
    function Get_ChildDocItemActiveFieldNodes: IXMLChildDocItemActiveFieldNodes;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLChildDocItemActiveFieldNodes }

  TXMLChildDocItemActiveFieldNodes = class(TXMLNodeCollection, IXMLChildDocItemActiveFieldNodes)
  protected
    { IXMLChildDocItemActiveFieldNodes }
    function Get_ChildDocItemActiveFieldNode(Index: Integer): IXMLTDocItemActiveFieldNode;
    function Add: IXMLTDocItemActiveFieldNode;
    function Insert(const Index: Integer): IXMLTDocItemActiveFieldNode;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetDocItemActiveFieldsDefinition(Doc: IXMLDocument): IXMLTDocItemActiveFieldsDefinition;
function LoadDocItemActiveFieldsDefinition(const FileName: WideString): IXMLTDocItemActiveFieldsDefinition;
function NewDocItemActiveFieldsDefinition: IXMLTDocItemActiveFieldsDefinition;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetDocItemActiveFieldsDefinition(Doc: IXMLDocument): IXMLTDocItemActiveFieldsDefinition;
begin
  Result := Doc.GetDocBinding('DocItemActiveFieldsDefinition', TXMLTDocItemActiveFieldsDefinition, TargetNamespace) as IXMLTDocItemActiveFieldsDefinition;
end;

function LoadDocItemActiveFieldsDefinition(const FileName: WideString): IXMLTDocItemActiveFieldsDefinition;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('DocItemActiveFieldsDefinition', TXMLTDocItemActiveFieldsDefinition, TargetNamespace) as IXMLTDocItemActiveFieldsDefinition;
end;

function NewDocItemActiveFieldsDefinition: IXMLTDocItemActiveFieldsDefinition;
begin
  Result := NewXMLDocument.GetDocBinding('DocItemActiveFieldsDefinition', TXMLTDocItemActiveFieldsDefinition, TargetNamespace) as IXMLTDocItemActiveFieldsDefinition;
end;

{ TXMLTDocItemActiveFieldsDefinition }

procedure TXMLTDocItemActiveFieldsDefinition.AfterConstruction;
begin
  RegisterChildNode('DocItemActiveFieldsList', TXMLDocItemActiveFieldsList);
  RegisterChildNode('DocItemActiveFieldsTree', TXMLTDocItemActiveFieldNode);
  inherited;
end;

function TXMLTDocItemActiveFieldsDefinition.Get_DocItemActiveFieldsList: IXMLDocItemActiveFieldsList;
begin
  Result := ChildNodes['DocItemActiveFieldsList'] as IXMLDocItemActiveFieldsList;
end;

function TXMLTDocItemActiveFieldsDefinition.Get_DocItemActiveFieldsTree: IXMLTDocItemActiveFieldNode;
begin
  Result := ChildNodes['DocItemActiveFieldsTree'] as IXMLTDocItemActiveFieldNode;
end;

{ TXMLDocItemActiveFieldsList }

procedure TXMLDocItemActiveFieldsList.AfterConstruction;
begin
  RegisterChildNode('DocItemActiveField', TXMLTDocItemActiveField);
  ItemTag := 'DocItemActiveField';
  ItemInterface := IXMLTDocItemActiveField;
  inherited;
end;

function TXMLDocItemActiveFieldsList.Get_DocItemActiveField(Index: Integer): IXMLTDocItemActiveField;
begin
  Result := List[Index] as IXMLTDocItemActiveField;
end;

function TXMLDocItemActiveFieldsList.Add: IXMLTDocItemActiveField;
begin
  Result := AddItem(-1) as IXMLTDocItemActiveField;
end;

function TXMLDocItemActiveFieldsList.Insert(const Index: Integer): IXMLTDocItemActiveField;
begin
  Result := AddItem(Index) as IXMLTDocItemActiveField;
end;

{ TXMLTDocItemActiveField }

function TXMLTDocItemActiveField.Get_DocItemActiveFieldIdentifier: Variant;
begin
  Result := ChildNodes['DocItemActiveFieldIdentifier'].NodeValue;
end;

procedure TXMLTDocItemActiveField.Set_DocItemActiveFieldIdentifier(Value: Variant);
begin
  ChildNodes['DocItemActiveFieldIdentifier'].NodeValue := Value;
end;

function TXMLTDocItemActiveField.Get_DocItemActiveFieldIntegerIdentifier: Variant;
begin
  Result := ChildNodes['DocItemActiveFieldIntegerIdentifier'].NodeValue;
end;

procedure TXMLTDocItemActiveField.Set_DocItemActiveFieldIntegerIdentifier(Value: Variant);
begin
  ChildNodes['DocItemActiveFieldIntegerIdentifier'].NodeValue := Value;
end;

function TXMLTDocItemActiveField.Get_DocItemActiveFieldName: Variant;
begin
  Result := ChildNodes['DocItemActiveFieldName'].NodeValue;
end;

procedure TXMLTDocItemActiveField.Set_DocItemActiveFieldName(Value: Variant);
begin
  ChildNodes['DocItemActiveFieldName'].NodeValue := Value;
end;

function TXMLTDocItemActiveField.Get_IsVisible: Variant;
begin
  Result := ChildNodes['IsVisible'].NodeValue;
end;

procedure TXMLTDocItemActiveField.Set_IsVisible(Value: Variant);
begin
  ChildNodes['IsVisible'].NodeValue := Value;
end;

{ TXMLTDocItemActiveFieldNode }

procedure TXMLTDocItemActiveFieldNode.AfterConstruction;
begin
  RegisterChildNode('ChildDocItemActiveFieldNodes', TXMLChildDocItemActiveFieldNodes);
  inherited;
end;

function TXMLTDocItemActiveFieldNode.Get_ChildDocItemActiveFieldNodes: IXMLChildDocItemActiveFieldNodes;
begin
  Result := ChildNodes['ChildDocItemActiveFieldNodes'] as IXMLChildDocItemActiveFieldNodes;
end;

{ TXMLChildDocItemActiveFieldNodes }

procedure TXMLChildDocItemActiveFieldNodes.AfterConstruction;
begin
  RegisterChildNode('ChildDocItemActiveFieldNode', TXMLTDocItemActiveFieldNode);
  ItemTag := 'ChildDocItemActiveFieldNode';
  ItemInterface := IXMLTDocItemActiveFieldNode;
  inherited;
end;

function TXMLChildDocItemActiveFieldNodes.Get_ChildDocItemActiveFieldNode(Index: Integer): IXMLTDocItemActiveFieldNode;
begin
  Result := List[Index] as IXMLTDocItemActiveFieldNode;
end;

function TXMLChildDocItemActiveFieldNodes.Add: IXMLTDocItemActiveFieldNode;
begin
  Result := AddItem(-1) as IXMLTDocItemActiveFieldNode;
end;

function TXMLChildDocItemActiveFieldNodes.Insert(const Index: Integer): IXMLTDocItemActiveFieldNode;
begin
  Result := AddItem(Index) as IXMLTDocItemActiveFieldNode;
end;

end.
