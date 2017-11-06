
{***************************************************************************}
{                                                                           }
{                             XML Data Binding                              }
{                                                                           }
{         Generated on: 09.05.2012 17:03:11                                 }
{       Generated from: XMLSchemas\Public\TInvoiceItems.xsd                 }
{   Settings stored in: XMLSchemas\Public\TInvoiceItems.xdb   }
{                                                                           }
{***************************************************************************}

unit xTInvoiceItems;

interface

uses xmldom, XMLDoc, XMLIntf, xTInvoiceItem;

type

{ Forward Decls }

  IXMLTInvoiceItems = interface;

{ IXMLTInvoiceItems }

  IXMLTInvoiceItems = interface(IXMLNodeCollection)
    ['{838F7C5A-479A-40F8-8204-CE3DAA8D160D}']
    { Property Accessors }
    function Get_InvoiceItem(Index: Integer): IXMLTInvoiceItem;
    { Methods & Properties }
    function Add: IXMLTInvoiceItem;
    function Insert(const Index: Integer): IXMLTInvoiceItem;
    property InvoiceItem[Index: Integer]: IXMLTInvoiceItem read Get_InvoiceItem; default;
  end;

{ Forward Decls }

  TXMLTInvoiceItems = class;

{ TXMLTInvoiceItems }

  TXMLTInvoiceItems = class(TXMLNodeCollection, IXMLTInvoiceItems)
  protected
    { IXMLTInvoiceItems }
    function Get_InvoiceItem(Index: Integer): IXMLTInvoiceItem;
    function Add: IXMLTInvoiceItem;
    function Insert(const Index: Integer): IXMLTInvoiceItem;
  public
    procedure AfterConstruction; override;
  end;

implementation

{ TXMLTInvoiceItems }

procedure TXMLTInvoiceItems.AfterConstruction;
begin
  RegisterChildNode('InvoiceItem', TXMLTInvoiceItem);
  ItemTag := 'InvoiceItem';
  ItemInterface := IXMLTInvoiceItem;
  inherited;
end;

function TXMLTInvoiceItems.Get_InvoiceItem(Index: Integer): IXMLTInvoiceItem;
begin
  Result := List[Index] as IXMLTInvoiceItem;
end;

function TXMLTInvoiceItems.Add: IXMLTInvoiceItem;
begin
  Result := AddItem(-1) as IXMLTInvoiceItem;
end;

function TXMLTInvoiceItems.Insert(const Index: Integer): IXMLTInvoiceItem;
begin
  Result := AddItem(Index) as IXMLTInvoiceItem;
end;

end.
