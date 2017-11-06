
{***************************************************************************}
{                                                                           }
{                             XML Data Binding                              }
{                                                                           }
{         Generated on: 19.9.2005 10:24:57                                  }
{       Generated from: XMLSchemas\Public\TProductStore.xsd                 }
{                                                                           }
{***************************************************************************}

unit xTProductStore;

interface

uses xmldom, XMLDoc, XMLIntf, xTDept, xTProduct, xTDateInterval;

type

{ Forward Decls }

  IXMLTProductStore = interface;

{ IXMLTProductStore }

  IXMLTProductStore = interface(IXMLNode)
    ['{9AC8CAE6-FDE5-431C-ABC3-A2F4D3408196}']
    { Property Accessors }
    function Get_Product: IXMLTProduct;
    function Get_Store: IXMLTDept;
    function Get_MinQuantity: Variant;
    function Get_DateInterval: IXMLTDateInterval;
    procedure Set_MinQuantity(Value: Variant);
    { Methods & Properties }
    property Product: IXMLTProduct read Get_Product;
    property Store: IXMLTDept read Get_Store;
    property MinQuantity: Variant read Get_MinQuantity write Set_MinQuantity;
    property DateInterval: IXMLTDateInterval read Get_DateInterval;
  end;

{ Forward Decls }

  TXMLTProductStore = class;

{ TXMLTProductStore }

  TXMLTProductStore = class(TXMLNode, IXMLTProductStore)
  protected
    { IXMLTProductStore }
    function Get_Product: IXMLTProduct;
    function Get_Store: IXMLTDept;
    function Get_MinQuantity: Variant;
    function Get_DateInterval: IXMLTDateInterval;
    procedure Set_MinQuantity(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProductStore;
function LoadUnknown(const FileName: WideString): IXMLTProductStore;
function NewUnknown: IXMLTProductStore;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProductStore;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTProductStore, TargetNamespace) as IXMLTProductStore;
end;

function LoadUnknown(const FileName: WideString): IXMLTProductStore;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTProductStore, TargetNamespace) as IXMLTProductStore;
end;

function NewUnknown: IXMLTProductStore;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTProductStore, TargetNamespace) as IXMLTProductStore;
end;

{ TXMLTProductStore }

procedure TXMLTProductStore.AfterConstruction;
begin
  RegisterChildNode('Product', TXMLTProduct);
  RegisterChildNode('Store', TXMLTDept);
  RegisterChildNode('DateInterval', TXMLTDateInterval);
  inherited;
end;

function TXMLTProductStore.Get_Product: IXMLTProduct;
begin
  Result := ChildNodes['Product'] as IXMLTProduct;
end;

function TXMLTProductStore.Get_Store: IXMLTDept;
begin
  Result := ChildNodes['Store'] as IXMLTDept;
end;

function TXMLTProductStore.Get_MinQuantity: Variant;
begin
  Result := ChildNodes['MinQuantity'].NodeValue;
end;

procedure TXMLTProductStore.Set_MinQuantity(Value: Variant);
begin
  ChildNodes['MinQuantity'].NodeValue := Value;
end;

function TXMLTProductStore.Get_DateInterval: IXMLTDateInterval;
begin
  Result := ChildNodes['DateInterval'] as IXMLTDateInterval;
end;

end.
