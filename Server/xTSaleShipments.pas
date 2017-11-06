
{***************************************************************************}
{                                                                           }
{                             XML Data Binding                              }
{                                                                           }
{         Generated on: 23.08.2012 09:44:11                                 }
{       Generated from: XMLSchemas\Public\TSaleShipments.xsd                }
{   Settings stored in: XMLSchemas\Public\TSaleShipments.xdb  }
{                                                                           }
{***************************************************************************}

unit xTSaleShipments;

interface

uses xmldom, XMLDoc, XMLIntf, xTSaleShipment;

type

{ Forward Decls }

  IXMLTSaleShipments = interface;

{ IXMLTSaleShipments }

  IXMLTSaleShipments = interface(IXMLNodeCollection)
    ['{8FEE5219-EBF4-4215-89E1-EE2DAC9F1071}']
    { Property Accessors }
    function Get_SaleShipment(Index: Integer): IXMLTSaleShipment;
    { Methods & Properties }
    function Add: IXMLTSaleShipment;
    function Insert(const Index: Integer): IXMLTSaleShipment;
    property SaleShipment[Index: Integer]: IXMLTSaleShipment read Get_SaleShipment; default;
  end;

{ Forward Decls }

  TXMLTSaleShipments = class;

{ TXMLTSaleShipments }

  TXMLTSaleShipments = class(TXMLNodeCollection, IXMLTSaleShipments)
  protected
    { IXMLTSaleShipments }
    function Get_SaleShipment(Index: Integer): IXMLTSaleShipment;
    function Add: IXMLTSaleShipment;
    function Insert(const Index: Integer): IXMLTSaleShipment;
  public
    procedure AfterConstruction; override;
  end;

implementation

{ TXMLTSaleShipments }

procedure TXMLTSaleShipments.AfterConstruction;
begin
  RegisterChildNode('SaleShipment', TXMLTSaleShipment);
  ItemTag := 'SaleShipment';
  ItemInterface := IXMLTSaleShipment;
  inherited;
end;

function TXMLTSaleShipments.Get_SaleShipment(Index: Integer): IXMLTSaleShipment;
begin
  Result := List[Index] as IXMLTSaleShipment;
end;

function TXMLTSaleShipments.Add: IXMLTSaleShipment;
begin
  Result := AddItem(-1) as IXMLTSaleShipment;
end;

function TXMLTSaleShipments.Insert(const Index: Integer): IXMLTSaleShipment;
begin
  Result := AddItem(Index) as IXMLTSaleShipment;
end;

end.
