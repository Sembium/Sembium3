
{*********************************************************************************}
{                                                                                 }
{                                XML Data Binding                                 }
{                                                                                 }
{         Generated on: 06.1.2006 17:13:04                                        }
{       Generated from: XMLSchemas\Public\TBaseObjectDocItem.xsd                 }
{                                                                                 }
{*********************************************************************************}

unit xBaseObjectDocItem;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTDoc, xTDocItem, xTGlobals;

type

{ Forward Decls }

  IXMLTBaseObjectDocItem = interface;

{ IXMLTBaseObjectDocItem }

  IXMLTBaseObjectDocItem = interface(IXMLNode)
    ['{90AAFD93-79D3-4EBB-9DEF-0D5616712854}']
    { Property Accessors }
    function Get_Doc: IXMLTDoc;
    function Get_DocItem: IXMLTDocItem;
    function Get_Globals: IXMLTGlobals;
    { Methods & Properties }
    property Doc: IXMLTDoc read Get_Doc;
    property DocItem: IXMLTDocItem read Get_DocItem;
    property Globals: IXMLTGlobals read Get_Globals;
  end;

{ Forward Decls }

  TXMLTBaseObjectDocItem = class;

{ TXMLTBaseObjectDocItem }

  TXMLTBaseObjectDocItem = class(TXMLNode, IXMLTBaseObjectDocItem)
  protected
    { IXMLTBaseObjectDocItem }
    function Get_Doc: IXMLTDoc;
    function Get_DocItem: IXMLTDocItem;
    function Get_Globals: IXMLTGlobals;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetBaseObjectDocItem(Doc: IXMLDocument): IXMLTBaseObjectDocItem;
function LoadBaseObjectDocItem(const FileName: WideString): IXMLTBaseObjectDocItem;
function NewBaseObjectDocItem: IXMLTBaseObjectDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetBaseObjectDocItem(Doc: IXMLDocument): IXMLTBaseObjectDocItem;
begin
  Result := Doc.GetDocBinding('BaseObjectDocItem', TXMLTBaseObjectDocItem, TargetNamespace) as IXMLTBaseObjectDocItem;
end;

function LoadBaseObjectDocItem(const FileName: WideString): IXMLTBaseObjectDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('BaseObjectDocItem', TXMLTBaseObjectDocItem, TargetNamespace) as IXMLTBaseObjectDocItem;
end;

function NewBaseObjectDocItem: IXMLTBaseObjectDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('BaseObjectDocItem', TXMLTBaseObjectDocItem, TargetNamespace) as IXMLTBaseObjectDocItem;
end;

{ TXMLTBaseObjectDocItem }

procedure TXMLTBaseObjectDocItem.AfterConstruction;
begin
  RegisterChildNode('Doc', TXMLTDoc);
  RegisterChildNode('DocItem', TXMLTDocItem);
  RegisterChildNode('Globals', TXMLTGlobals);
  inherited;
end;

function TXMLTBaseObjectDocItem.Get_Doc: IXMLTDoc;
begin
  Result := ChildNodes['Doc'] as IXMLTDoc;
end;

function TXMLTBaseObjectDocItem.Get_DocItem: IXMLTDocItem;
begin
  Result := ChildNodes['DocItem'] as IXMLTDocItem;
end;

function TXMLTBaseObjectDocItem.Get_Globals: IXMLTGlobals;
begin
  Result := ChildNodes['Globals'] as IXMLTGlobals;
end;

end. 
