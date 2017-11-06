
{***********************************************************************************}
{                                                                                   }
{                              XML Data Binding                                     }
{                                                                                   }
{         Generated on: 24.08.2012 18:35:15                                         }
{       Generated from: XMLSchemas\Public\SaleRequestGroupDocItem.xsd               }
{                                                                                   }
{***********************************************************************************}

unit xSaleRequestGroupDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTSaleRequestGroup;

type

{ Forward Decls }

  IXMLTSaleRequestGroupDocItem = interface;

{ IXMLTSaleRequestGroupDocItem }

  IXMLTSaleRequestGroupDocItem = interface(IXMLTBaseObjectDocItem)
    ['{FC801298-97E3-4126-9339-05834A72D9D6}']
    { Property Accessors }
    function Get_SaleRequestGroup: IXMLTSaleRequestGroup;
    { Methods & Properties }
    property SaleRequestGroup: IXMLTSaleRequestGroup read Get_SaleRequestGroup;
  end;

{ Forward Decls }

  TXMLTSaleRequestGroupDocItem = class;

{ TXMLTSaleRequestGroupDocItem }

  TXMLTSaleRequestGroupDocItem = class(TXMLTBaseObjectDocItem, IXMLTSaleRequestGroupDocItem)
  protected
    { IXMLTSaleRequestGroupDocItem }
    function Get_SaleRequestGroup: IXMLTSaleRequestGroup;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetSaleRequestGroupDocItem(Doc: IXMLDocument): IXMLTSaleRequestGroupDocItem;
function LoadSaleRequestGroupDocItem(const FileName: string): IXMLTSaleRequestGroupDocItem;
function NewSaleRequestGroupDocItem: IXMLTSaleRequestGroupDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetSaleRequestGroupDocItem(Doc: IXMLDocument): IXMLTSaleRequestGroupDocItem;
begin
  Result := Doc.GetDocBinding('SaleRequestGroupDocItem', TXMLTSaleRequestGroupDocItem, TargetNamespace) as IXMLTSaleRequestGroupDocItem;
end;

function LoadSaleRequestGroupDocItem(const FileName: string): IXMLTSaleRequestGroupDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('SaleRequestGroupDocItem', TXMLTSaleRequestGroupDocItem, TargetNamespace) as IXMLTSaleRequestGroupDocItem;
end;

function NewSaleRequestGroupDocItem: IXMLTSaleRequestGroupDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('SaleRequestGroupDocItem', TXMLTSaleRequestGroupDocItem, TargetNamespace) as IXMLTSaleRequestGroupDocItem;
end;

{ TXMLTSaleRequestGroupDocItem }

procedure TXMLTSaleRequestGroupDocItem.AfterConstruction;
begin
  RegisterChildNode('SaleRequestGroup', TXMLTSaleRequestGroup);
  inherited;
end;

function TXMLTSaleRequestGroupDocItem.Get_SaleRequestGroup: IXMLTSaleRequestGroup;
begin
  Result := ChildNodes['SaleRequestGroup'] as IXMLTSaleRequestGroup;
end;

end.
