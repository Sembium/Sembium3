
{****************************************************************************}
{                                                                            }
{                              XML Data Binding                              }
{                                                                            }
{         Generated on: 20.2.2006 09:52:37                                   }
{       Generated from: XMLSchemas\Public\ProductDocItem.xsd                 }
{                                                                            }
{****************************************************************************}

unit xProductDocItem;

interface

uses
  xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTProductEx;

type

{ Forward Decls }

  IXMLTProductDocItem = interface;

{ IXMLTProductDocItem }

  IXMLTProductDocItem = interface(IXMLTBaseObjectDocItem)
    ['{85B84630-1558-4BED-9114-617F4344A632}']
    { Property Accessors }
    function Get_Product: IXMLTProductEx;
    { Methods & Properties }
    property Product: IXMLTProductEx read Get_Product;
  end;

{ Forward Decls }

  TXMLTProductDocItem = class;

{ TXMLTProductDocItem }

  TXMLTProductDocItem = class(TXMLTBaseObjectDocItem, IXMLTProductDocItem)
  protected
    { IXMLTProductDocItem }
    function Get_Product: IXMLTProductEx;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetProductDocItem(Doc: IXMLDocument): IXMLTProductDocItem;
function LoadProductDocItem(const FileName: WideString): IXMLTProductDocItem;
function NewProductDocItem: IXMLTProductDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetProductDocItem(Doc: IXMLDocument): IXMLTProductDocItem;
begin
  Result := Doc.GetDocBinding('ProductDocItem', TXMLTProductDocItem, TargetNamespace) as IXMLTProductDocItem;
end;

function LoadProductDocItem(const FileName: WideString): IXMLTProductDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('ProductDocItem', TXMLTProductDocItem, TargetNamespace) as IXMLTProductDocItem;
end;

function NewProductDocItem: IXMLTProductDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('ProductDocItem', TXMLTProductDocItem, TargetNamespace) as IXMLTProductDocItem;
end;

{ TXMLTProductDocItem }

procedure TXMLTProductDocItem.AfterConstruction;
begin
  RegisterChildNode('Product', TXMLTProductEx);
  inherited;
end;

function TXMLTProductDocItem.Get_Product: IXMLTProductEx;
begin
  Result := ChildNodes['Product'] as IXMLTProductEx;
end;

end.
