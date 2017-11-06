
{****************************************************************************}
{                                                                            }
{                              XML Data Binding                              }
{                                                                            }
{         Generated on: 24.08.2012 17:35:15                                  }
{       Generated from: XMLSchemas\Public\SaleDocItem.xsd                    }
{                                                                            }
{****************************************************************************}

unit xSaleDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTSaleRequestGroup, xTSale;

type

{ Forward Decls }

  IXMLTSaleDocItem = interface;

{ IXMLTSaleDocItem }

  IXMLTSaleDocItem = interface(IXMLTBaseObjectDocItem)
    ['{F9486ACE-47EF-4584-B063-EF7029855640}']
    { Property Accessors }
    function Get_SaleRequestGroup: IXMLTSaleRequestGroup;
    function Get_Sale: IXMLTSale;
    { Methods & Properties }
    property SaleRequestGroup: IXMLTSaleRequestGroup read Get_SaleRequestGroup;
    property Sale: IXMLTSale read Get_Sale;
  end;

{ Forward Decls }

  TXMLTSaleDocItem = class;

{ TXMLTSaleDocItem }

  TXMLTSaleDocItem = class(TXMLTBaseObjectDocItem, IXMLTSaleDocItem)
  protected
    { IXMLTSaleDocItem }
    function Get_SaleRequestGroup: IXMLTSaleRequestGroup;
    function Get_Sale: IXMLTSale;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetSaleDocItem(Doc: IXMLDocument): IXMLTSaleDocItem;
function LoadSaleDocItem(const FileName: string): IXMLTSaleDocItem;
function NewSaleDocItem: IXMLTSaleDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetSaleDocItem(Doc: IXMLDocument): IXMLTSaleDocItem;
begin
  Result := Doc.GetDocBinding('SaleDocItem', TXMLTSaleDocItem, TargetNamespace) as IXMLTSaleDocItem;
end;

function LoadSaleDocItem(const FileName: string): IXMLTSaleDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('SaleDocItem', TXMLTSaleDocItem, TargetNamespace) as IXMLTSaleDocItem;
end;

function NewSaleDocItem: IXMLTSaleDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('SaleDocItem', TXMLTSaleDocItem, TargetNamespace) as IXMLTSaleDocItem;
end;

{ TXMLTSaleDocItem }

procedure TXMLTSaleDocItem.AfterConstruction;
begin
  RegisterChildNode('SaleRequestGroup', TXMLTSaleRequestGroup);
  RegisterChildNode('Sale', TXMLTSale);
  inherited;
end;

function TXMLTSaleDocItem.Get_SaleRequestGroup: IXMLTSaleRequestGroup;
begin
  Result := ChildNodes['SaleRequestGroup'] as IXMLTSaleRequestGroup;
end;

function TXMLTSaleDocItem.Get_Sale: IXMLTSale;
begin
  Result := ChildNodes['Sale'] as IXMLTSale;
end;

end.
