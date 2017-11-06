
{*********************************************************************************}
{                                                                                 }
{                                XML Data Binding                                 }
{                                                                                 }
{         Generated on: 29.8.2005 15:37:53                                        }
{       Generated from: XMLSchemas\Public\ProductStoreDocItem.xsd                 }
{                                                                                 }
{*********************************************************************************}

unit xProductStoreDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTProductStore;

type

{ Forward Decls }

  IXMLTProductStoreDocItem = interface;

{ IXMLTProductStoreDocItem }

  IXMLTProductStoreDocItem = interface(IXMLTBaseObjectDocItem)
    ['{6CE803EC-784E-4725-B121-6CEFA07D9CF2}']
    { Property Accessors }
    function Get_ProductStore: IXMLTProductStore;
    { Methods & Properties }
    property ProductStore: IXMLTProductStore read Get_ProductStore;
  end;

{ Forward Decls }

  TXMLTProductStoreDocItem = class;

{ TXMLTProductStoreDocItem }

  TXMLTProductStoreDocItem = class(TXMLTBaseObjectDocItem, IXMLTProductStoreDocItem)
  protected
    { IXMLTProductStoreDocItem }
    function Get_ProductStore: IXMLTProductStore;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetProductStoreDocItem(Doc: IXMLDocument): IXMLTProductStoreDocItem;
function LoadProductStoreDocItem(const FileName: WideString): IXMLTProductStoreDocItem;
function NewProductStoreDocItem: IXMLTProductStoreDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetProductStoreDocItem(Doc: IXMLDocument): IXMLTProductStoreDocItem;
begin
  Result := Doc.GetDocBinding('ProductStoreDocItem', TXMLTProductStoreDocItem, TargetNamespace) as IXMLTProductStoreDocItem;
end;

function LoadProductStoreDocItem(const FileName: WideString): IXMLTProductStoreDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('ProductStoreDocItem', TXMLTProductStoreDocItem, TargetNamespace) as IXMLTProductStoreDocItem;
end;

function NewProductStoreDocItem: IXMLTProductStoreDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('ProductStoreDocItem', TXMLTProductStoreDocItem, TargetNamespace) as IXMLTProductStoreDocItem;
end;

{ TXMLTProductStoreDocItem }

procedure TXMLTProductStoreDocItem.AfterConstruction;
begin
  RegisterChildNode('ProductStore', TXMLTProductStore);
  inherited;
end;

function TXMLTProductStoreDocItem.Get_ProductStore: IXMLTProductStore;
begin
  Result := ChildNodes['ProductStore'] as IXMLTProductStore;
end;

end.
