unit uChosenNodes;

interface

uses
  xChosenNodes, uXMLEnumerators, uEnumeratorUtils;

function All(AContainer: IXMLChosenNodes): TEnumerableRec<IXMLChosenNode>; overload;
function All(AContainer: IXMLChosenNodesParams): TEnumerableRec<IXMLChosenNodesParam>; overload;
function All(AContainer: IXMLNodeParams): TEnumerableRec<IXMLNodeParam>; overload;
function All(AContainer: IXMLNodeParamValues): TEnumerableRec<IXMLNodeParamValue>; overload;

implementation

function All(AContainer: IXMLChosenNodes): TEnumerableRec<IXMLChosenNode>;
begin
  Result:= TXMLNodesEnumerator<IXMLChosenNode, IXMLChosenNodes>.CreateEnumerableRec(AContainer);
end;

function All(AContainer: IXMLChosenNodesParams): TEnumerableRec<IXMLChosenNodesParam>;
begin
  Result:= TXMLNodesEnumerator<IXMLChosenNodesParam, IXMLChosenNodesParams>.CreateEnumerableRec(AContainer);
end;

function All(AContainer: IXMLNodeParams): TEnumerableRec<IXMLNodeParam>;
begin
  Result:= TXMLNodesEnumerator<IXMLNodeParam, IXMLNodeParams>.CreateEnumerableRec(AContainer);
end;

function All(AContainer: IXMLNodeParamValues): TEnumerableRec<IXMLNodeParamValue>;
begin
  Result:= TXMLNodesEnumerator<IXMLNodeParamValue, IXMLNodeParamValues>.CreateEnumerableRec(AContainer);
end;

end.
