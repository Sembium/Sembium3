
{***************************************************************************}
{                                                                           }
{                             XML Data Binding                              }
{                                                                           }
{         Generated on: 24.08.2012 18:03:11                                 }
{       Generated from: XMLSchemas\Public\TSales.xsd                        }
{                                                                           }
{***************************************************************************}

unit xTSales;

interface

uses xmldom, XMLDoc, XMLIntf, xTSale;

type

{ Forward Decls }

  IXMLTSales = interface;

{ IXMLTSales }

  IXMLTSales = interface(IXMLNodeCollection)
    ['{F4F0F517-F028-43FE-A625-85222D4A7CCA}']
    { Property Accessors }
    function Get_Sale(Index: Integer): IXMLTSale;
    { Methods & Properties }
    function Add: IXMLTSale;
    function Insert(const Index: Integer): IXMLTSale;
    property Sale[Index: Integer]: IXMLTSale read Get_Sale; default;
  end;

{ Forward Decls }

  TXMLTSales = class;

{ TXMLTSales }

  TXMLTSales = class(TXMLNodeCollection, IXMLTSales)
  protected
    { IXMLTSales }
    function Get_Sale(Index: Integer): IXMLTSale;
    function Add: IXMLTSale;
    function Insert(const Index: Integer): IXMLTSale;
  public
    procedure AfterConstruction; override;
  end;

implementation

{ TXMLTSales }

procedure TXMLTSales.AfterConstruction;
begin
  RegisterChildNode('Sale', TXMLTSale);
  ItemTag := 'Sale';
  ItemInterface := IXMLTSale;
  inherited;
end;

function TXMLTSales.Get_Sale(Index: Integer): IXMLTSale;
begin
  Result := List[Index] as IXMLTSale;
end;

function TXMLTSales.Add: IXMLTSale;
begin
  Result := AddItem(-1) as IXMLTSale;
end;

function TXMLTSales.Insert(const Index: Integer): IXMLTSale;
begin
  Result := AddItem(Index) as IXMLTSale;
end;

end.
