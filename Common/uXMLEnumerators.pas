unit uXMLEnumerators;

interface

uses
  XMLIntf, uEnumeratorUtils;

type
  TXMLNodesEnumerator<NodeType: IXMLNode; ContainerType: IXMLNodeCollection> = class(TIndexedEnumerator<NodeType, ContainerType>)
  protected
    function GetItem(AIndex: Integer): NodeType; override;
    function ItemCount: Integer; override;
  end;

function All(AContainer: IXMLNodeCollection): TEnumerableRec<IXMLNode>; overload;

implementation

function All(AContainer: IXMLNodeCollection): TEnumerableRec<IXMLNode>;
begin
  Result:= TXMLNodesEnumerator<IXMLNode, IXMLNodeCollection>.CreateEnumerableRec(AContainer);
end;

{ TXMLNodesEnumerator<NodeType, ContainerType> }

function TXMLNodesEnumerator<NodeType, ContainerType>.GetItem(AIndex: Integer): NodeType;
begin
  Container.Nodes[AIndex].QueryInterface(ItemTypeInterfaceGUID, Result);
  Assert(Assigned(Result));
end;

function TXMLNodesEnumerator<NodeType, ContainerType>.ItemCount: Integer;
begin
  Result:= Container.Count;
end;

end.
