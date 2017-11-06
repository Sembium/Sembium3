
{****************************************************************************}
{                                                                            }
{                              XML Data Binding                              }
{                                                                            }
{         Generated on: 24.08.2012 09:50:38                                  }
{       Generated from: XMLSchemas\Public\TSaleOrderType.xsd                 }
{                                                                            }
{****************************************************************************}

unit xTSaleOrderType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTSaleOrderType = interface;

{ IXMLTSaleOrderType }

  IXMLTSaleOrderType = interface(IXMLNode)
    ['{3F80BB6E-38AF-48A6-A8AD-71A349812D61}']
    { Property Accessors }
    function Get_SaleOrderTypeAbbrev: Variant;
    function Get_SaleOrderTypeName: Variant;
    procedure Set_SaleOrderTypeAbbrev(Value: Variant);
    procedure Set_SaleOrderTypeName(Value: Variant);
    { Methods & Properties }
    property SaleOrderTypeAbbrev: Variant read Get_SaleOrderTypeAbbrev write Set_SaleOrderTypeAbbrev;
    property SaleOrderTypeName: Variant read Get_SaleOrderTypeName write Set_SaleOrderTypeName;
  end;

{ Forward Decls }

  TXMLTSaleOrderType = class;

{ TXMLTSaleOrderType }

  TXMLTSaleOrderType = class(TXMLNode, IXMLTSaleOrderType)
  protected
    { IXMLTSaleOrderType }
    function Get_SaleOrderTypeAbbrev: Variant;
    function Get_SaleOrderTypeName: Variant;
    procedure Set_SaleOrderTypeAbbrev(Value: Variant);
    procedure Set_SaleOrderTypeName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTSaleOrderType;
function LoadUnknown(const FileName: WideString): IXMLTSaleOrderType;
function NewUnknown: IXMLTSaleOrderType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTSaleOrderType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTSaleOrderType, TargetNamespace) as IXMLTSaleOrderType;
end;

function LoadUnknown(const FileName: WideString): IXMLTSaleOrderType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTSaleOrderType, TargetNamespace) as IXMLTSaleOrderType;
end;

function NewUnknown: IXMLTSaleOrderType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTSaleOrderType, TargetNamespace) as IXMLTSaleOrderType;
end;

{ TXMLTSaleOrderType }

function TXMLTSaleOrderType.Get_SaleOrderTypeAbbrev: Variant;
begin
  Result := ChildNodes['SaleOrderTypeAbbrev'].NodeValue;
end;

procedure TXMLTSaleOrderType.Set_SaleOrderTypeAbbrev(Value: Variant);
begin
  ChildNodes['SaleOrderTypeAbbrev'].NodeValue := Value;
end;

function TXMLTSaleOrderType.Get_SaleOrderTypeName: Variant;
begin
  Result := ChildNodes['SaleOrderTypeName'].NodeValue;
end;

procedure TXMLTSaleOrderType.Set_SaleOrderTypeName(Value: Variant);
begin
  ChildNodes['SaleOrderTypeName'].NodeValue := Value;
end;

end.
