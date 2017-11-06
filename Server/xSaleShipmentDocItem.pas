
{*******************************************************************************}
{                                                                               }
{                               XML Data Binding                                }
{                                                                               }
{         Generated on: 22.8.2012 14:08:51                                      }
{       Generated from: XMLSchemas\Public\SaleShipmentDocItem.xsd               }
{                                                                               }
{*******************************************************************************}

unit xSaleShipmentDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTSaleShipment;

type

{ Forward Decls }

  IXMLTSaleShipmentDocItem = interface;

{ IXMLTSaleShipmentDocItem }

  IXMLTSaleShipmentDocItem = interface(IXMLTBaseObjectDocItem)
    ['{F3A746E4-3B3E-43C6-B4C6-E000C5B9BE05}']
    { Property Accessors }
    function Get_SaleShipment: IXMLTSaleShipment;
    { Methods & Properties }
    property SaleShipment: IXMLTSaleShipment read Get_SaleShipment;
  end;

{ Forward Decls }

  TXMLTSaleShipmentDocItem = class;

{ TXMLTSaleShipmentDocItem }

  TXMLTSaleShipmentDocItem = class(TXMLTBaseObjectDocItem, IXMLTSaleShipmentDocItem)
  protected
    { IXMLTSaleShipmentDocItem }
    function Get_SaleShipment: IXMLTSaleShipment;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetSaleShipmentDocItem(Doc: IXMLDocument): IXMLTSaleShipmentDocItem;
function LoadSaleShipmentDocItem(const FileName: WideString): IXMLTSaleShipmentDocItem;
function NewSaleShipmentDocItem: IXMLTSaleShipmentDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetSaleShipmentDocItem(Doc: IXMLDocument): IXMLTSaleShipmentDocItem;
begin
  Result := Doc.GetDocBinding('SaleShipmentDocItem', TXMLTSaleShipmentDocItem, TargetNamespace) as IXMLTSaleShipmentDocItem;
end;

function LoadSaleShipmentDocItem(const FileName: WideString): IXMLTSaleShipmentDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('SaleShipmentDocItem', TXMLTSaleShipmentDocItem, TargetNamespace) as IXMLTSaleShipmentDocItem;
end;

function NewSaleShipmentDocItem: IXMLTSaleShipmentDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('SaleShipmentDocItem', TXMLTSaleShipmentDocItem, TargetNamespace) as IXMLTSaleShipmentDocItem;
end;

{ TXMLTSaleShipmentDocItem }

procedure TXMLTSaleShipmentDocItem.AfterConstruction;
begin
  RegisterChildNode('SaleShipment', TXMLTSaleShipment);
  inherited;
end;

function TXMLTSaleShipmentDocItem.Get_SaleShipment: IXMLTSaleShipment;
begin
  Result := ChildNodes['SaleShipment'] as IXMLTSaleShipment;
end;

end.
