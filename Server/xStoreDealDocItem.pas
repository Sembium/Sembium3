
{******************************************************************************}
{                                                                              }
{                               XML Data Binding                               }
{                                                                              }
{         Generated on: 30.8.2005 15:02:26                                     }
{       Generated from: XMLSchemas\Public\StoreDealDocItem.xsd                 }
{                                                                              }
{******************************************************************************}

unit xStoreDealDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTStoreDeal;

type

{ Forward Decls }

  IXMLTStoreDealDocItem = interface;

{ IXMLTStoreDealDocItem }

  IXMLTStoreDealDocItem = interface(IXMLTBaseObjectDocItem)
    ['{74269BD3-8B3A-4569-B9B6-FF8E71C88926}']
    { Property Accessors }
    function Get_StoreDeal: IXMLTStoreDeal;
    { Methods & Properties }
    property StoreDeal: IXMLTStoreDeal read Get_StoreDeal;
  end;

{ Forward Decls }

  TXMLTStoreDealDocItem = class;

{ TXMLTStoreDealDocItem }

  TXMLTStoreDealDocItem = class(TXMLTBaseObjectDocItem, IXMLTStoreDealDocItem)
  protected
    { IXMLTStoreDealDocItem }
    function Get_StoreDeal: IXMLTStoreDeal;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetStoreDealDocItem(Doc: IXMLDocument): IXMLTStoreDealDocItem;
function LoadStoreDealDocItem(const FileName: WideString): IXMLTStoreDealDocItem;
function NewStoreDealDocItem: IXMLTStoreDealDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetStoreDealDocItem(Doc: IXMLDocument): IXMLTStoreDealDocItem;
begin
  Result := Doc.GetDocBinding('StoreDealDocItem', TXMLTStoreDealDocItem, TargetNamespace) as IXMLTStoreDealDocItem;
end;

function LoadStoreDealDocItem(const FileName: WideString): IXMLTStoreDealDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('StoreDealDocItem', TXMLTStoreDealDocItem, TargetNamespace) as IXMLTStoreDealDocItem;
end;

function NewStoreDealDocItem: IXMLTStoreDealDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('StoreDealDocItem', TXMLTStoreDealDocItem, TargetNamespace) as IXMLTStoreDealDocItem;
end;

{ TXMLTStoreDealDocItem }

procedure TXMLTStoreDealDocItem.AfterConstruction;
begin
  RegisterChildNode('StoreDeal', TXMLTStoreDeal);
  inherited;
end;

function TXMLTStoreDealDocItem.Get_StoreDeal: IXMLTStoreDeal;
begin
  Result := ChildNodes['StoreDeal'] as IXMLTStoreDeal;
end;

end.
