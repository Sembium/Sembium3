unit uXMLUtils;

interface

uses
  XMLIntf, Classes;

function EncodeXMLResult(const AText: string): WideString;
procedure SetDefaultAttributes(AXMLDocument: IXMLDocument);

function ChosenNodeCodeToXML(
  ANodeCode: Integer;
  AIsActive: Integer = 0;
  AUsedBy: Integer = 0;
  AProvidedBy: Integer = 0;
  AProductOrigin: Integer = 0;
  ACommonStatus: Integer = 0): string;

function ChosenNodeXMLToNodeCode(const AXMLs: string): Integer;

function IsSingleChosenNodeWithoutParams(const AXMLs: string): Boolean;
function HasChosenNodesOrParams(const AXMLs: string): Boolean;
function AreAllNodesFiltered(const AXMLs: string): Boolean;
function AreAllNodesChosen(const AXMLs: string): Boolean;

function LoadXMLDocumentFromStream(const Stream: TStream): IXMLDocument;

type
  TXMLPair = record
    XML1: string;
    XML2: string;
  end;

function ConcatXMLs(const XML1, XML2: string): string;
function SplitXMLs(const XMLs: string): TXMLPair;

implementation

uses
  XMLDoc, xChosenNodes, SysUtils, Variants, uUtils, StrUtils;

resourcestring
  SNotSingleChosenNode = 'Избрано е множество от елементи.';

const
  XMLDelimiter = '#XMLDELIMITER#';

function EncodeXMLResult(const AText: string): WideString;
begin
  Result:= AText;
end;

procedure SetDefaultAttributes(AXMLDocument: IXMLDocument);
var
  XMLNode: IXMLNode;
begin
  Assert(Assigned(AXMLDocument));

  XMLNode:= AXMLDocument.DocumentElement;

  if Assigned(XMLNode) then
    begin
      XMLNode.DeclareNamespace('xsi', 'http://www.w3.org/2000/10/XMLSchema-instance');
      XMLNode.SetAttribute('xsi:noNamespaceSchemaLocation', XMLNode.NodeName + '.xsd');
    end;  { if }

  // Borland pe****st, shtoto property-to XMLDocument.Encoding sled kato mu se sloji stoinost i xml stava prazen
  AXMLDocument.XML.Text:=
    StringReplace(AXMLDocument.XML.Text, '?>', ' encoding="UTF-8"?>', []);
end;

function ChosenNodeCodeToXML(
  ANodeCode: Integer;
  AIsActive: Integer;
  AUsedBy: Integer;
  AProvidedBy: Integer;
  AProductOrigin: Integer;
  ACommonStatus: Integer): string;
  
var
  XMLDocument: IXMLDocument;
  XMLChosenNodes: IXMLChosenNodes;
  XMLChosenNode: IXMLChosenNode;
  XMLChosenNodesParams: IXMLChosenNodesParams;

  function AllChosenNodesParamsAreNull: Boolean;
  begin
    Result:=
      (AIsActive = 0) and
      (AUsedBy = 0) and
      (AProvidedBy = 0) and
      (AProductOrigin = 0) and
      (ACommonStatus = 0);
  end;

  procedure AddChosenNodesParam(const AParamName: string; AParamValue: Integer);
  begin
    if (AParamValue <> 0) then
      begin
        Assert(Assigned(XMLChosenNodesParams));
        with XMLChosenNodesParams.Add do
          begin
            ParamName:= AParamName;
            ParamValue:= IntToVar(AParamValue);
          end;  { with }
      end;  { if }
  end;

begin
  if (ANodeCode = 0) then
    Result:= ''
  else
    begin
      XMLDocument:= NewXMLDocument;

      // posledovatelnostta na sledvashtite dva reda e vajna za izbiagvane na av v d7
      GetChosenNodesAndParams(XMLDocument).AllIfEmpty:= True;

      XMLChosenNodes:= GetChosenNodesAndParams(XMLDocument).ChosenNodes;
      XMLChosenNode:= XMLChosenNodes.Add;
      XMLChosenNode.NodeCode:= ANodeCode;

      if not AllChosenNodesParamsAreNull then
        begin
          XMLChosenNodesParams:= GetChosenNodesAndParams(XMLDocument).ChosenNodesParams;
          AddChosenNodesParam('ACTIVE_CODE', AIsActive);
          AddChosenNodesParam('USED_BY_CODE', AUsedBy);
          AddChosenNodesParam('PROVIDED_BY_CODE', AProvidedBy);
          AddChosenNodesParam('PRODUCT_ORIGIN_CODE', AProductOrigin);
          AddChosenNodesParam('COMMON_STATUS_CODE', ACommonStatus);
        end;  { if }

      SetDefaultAttributes(XMLDocument);
      Result:= XMLDocument.XML.Text;
    end;
end;

function ChosenNodeXMLToNodeCode(const AXMLs: string): Integer;

  function InternalChosenNodeXMLToNodeCode(const AXMLString: string): Integer;
  var
    XMLDocument: IXMLDocument;
  begin
    XMLDocument:= NewXMLDocument;
    XMLDocument.XML.Text:= AXMLString;

    Result:= GetChosenNodesAndParams(XMLDocument).ChosenNodes.ChosenNode[0].NodeCode;
  end;

begin
  if not IsSingleChosenNodeWithoutParams(AXMLs) then
    raise Exception.Create(SNotSingleChosenNode);

  with SplitXMLs(AXMLs) do
    if IsSingleChosenNodeWithoutParams(XML1) then
      Result:= InternalChosenNodeXMLToNodeCode(XML1)
    else
      Result:=  InternalChosenNodeXMLToNodeCode(XML2);
end;

function AllChosenNodesParamsAreNull(AXMLChosenNodesParams: IXMLChosenNodesParams): Boolean;
var
  i: Integer;
begin
  Result:= True;

  for i:= 0 to AXMLChosenNodesParams.Count - 1 do
    if not (VarIsNull(AXMLChosenNodesParams.ChosenNodesParam[i].ParamValue) or
           (AXMLChosenNodesParams.ChosenNodesParam[i].ParamValue = -1)) then
      begin
        Result:= False;
        Break;
      end;
end;

function IsSingleChosenNodeWithoutParams(const AXMLs: string): Boolean;

  function InternalIsSingleChosenNodeWithoutParams(const AXMLString: string): Boolean;
  var
    XMLDocument: IXMLDocument;
    XMLChosenNodes: IXMLChosenNodes;
  begin
    XMLDocument:= NewXMLDocument;
    XMLDocument.XML.Text:= AXMLString;
    XMLChosenNodes:= GetChosenNodesAndParams(XMLDocument).ChosenNodes;

    Result:=
      (XMLChosenNodes.Count = 1) and
      (XMLChosenNodes.ChosenNode[0].NodeParams.Count = 0) and
      AllChosenNodesParamsAreNull(GetChosenNodesAndParams(XMLDocument).ChosenNodesParams);
  end;

begin
  with SplitXMLs(AXMLs) do
    Result:=
      (InternalIsSingleChosenNodeWithoutParams(XML1) and not HasChosenNodesOrParams(XML2)) or
      (InternalIsSingleChosenNodeWithoutParams(XML2) and not HasChosenNodesOrParams(XML1));
end;

function HasChosenNodesOrParams(const AXMLs: string): Boolean;

  function InternalHasChosenNodesOrParams(const AChosenNodesXML: string): Boolean;
  var
    XMLDocument: IXMLDocument;
    ChosenNodesAndParams: IXMLChosenNodesAndParams;
  begin
    if (AChosenNodesXML = '') then
      Exit(False);

    XMLDocument:= NewXMLDocument;
    XMLDocument.XML.Text:= AChosenNodesXML;

    ChosenNodesAndParams:= GetChosenNodesAndParams(XMLDocument);

    Result:=
      (ChosenNodesAndParams.ChosenNodes.Count > 0) or
      (not AllChosenNodesParamsAreNull(ChosenNodesAndParams.ChosenNodesParams));
  end;

begin
  with SplitXMLs(AXMLs) do
    Result:=
      InternalHasChosenNodesOrParams(XML1) or
      InternalHasChosenNodesOrParams(XML2);
end;

function AreAllNodesFiltered(const AXMLs: string): Boolean;

  function GetAllIfEmptyField(const AChosenNodesXML: string): Boolean;
  var
    XMLDocument: IXMLDocument;
    XMLChosenNodesAndParams: IXMLChosenNodesAndParams;
  begin
    XMLDocument:= NewXMLDocument;
    XMLDocument.XML.Text:= AChosenNodesXML;
    XMLChosenNodesAndParams:= GetChosenNodesAndParams(XMLDocument);
    Result:= XMLChosenNodesAndParams.AllIfEmpty;
  end;

begin
  if (AXMLs = '') then
    Result:= True
  else
    with SplitXMLs(AXMLs) do
      Result:=
        not HasChosenNodesOrParams(AXMLs) and
        GetAllIfEmptyField(XML1) and
        ((XML2 = '') or GetAllIfEmptyField(XML2));
end;

function AreAllNodesChosen(const AXMLs: string): Boolean;

  function InternalAreAllNodesChosen(const AChosenNodesXML: string): Boolean;
  var
    XMLDocument: IXMLDocument;
    XMLChosenNodesAndParams: IXMLChosenNodesAndParams;
  begin
    if (AChosenNodesXML = '') then
      Result:= True
    else
      begin
        XMLDocument:= NewXMLDocument;
        XMLDocument.XML.Text:= AChosenNodesXML;
        XMLChosenNodesAndParams:= GetChosenNodesAndParams(XMLDocument);

        Result:= (XMLChosenNodesAndParams.ChosenNodes.Count = 0) and XMLChosenNodesAndParams.AllIfEmpty;
      end;
  end;

begin
  with SplitXMLs(AXMLs) do
    Result:=
      InternalAreAllNodesChosen(XML1) and
      InternalAreAllNodesChosen(XML2);
end;

function LoadXMLDocumentFromStream(const Stream: TStream): IXMLDocument;
begin
  Result:= TXMLDocument.Create(nil);
  Result.LoadFromStream(Stream);
end;

function ConcatXMLs(const XML1, XML2: string): string;
begin
  if (XML2 = '') then
    Result:= XML1
  else
    Result:= XML1 + XMLDelimiter + XML2;
end;

function SplitXMLs(const XMLs: string): TXMLPair;
var
  p: Integer;
begin
  p:= Pos(XMLDelimiter, XMLs);

  if (p > 0) then
    begin
      Result.XML1:= LeftStr(XMLs, p - 1);
      Result.XML2:= Copy(XMLs, p + Length(XMLDelimiter), MaxInt);
    end
  else
    begin
      Result.XML1:= XMLs;
      Result.XML2:= '';
    end;
end;

end.
