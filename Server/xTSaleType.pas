
{***********************************************************************}
{                                                                       }
{                           XML Data Binding                            }
{                                                                       }
{         Generated on: 24.8.2012 10:02:38                              }
{       Generated from: XMLSchemas\Public\TSaleType.xsd                 }
{                                                                       }
{***********************************************************************}

unit xTSaleType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTSaleType = interface;

{ IXMLTSaleType }

  IXMLTSaleType = interface(IXMLNode)
    ['{35B6B227-28AD-4E6B-9A3C-5F615A3CEE56}']
    { Property Accessors }
    function Get_SaleTypeAbbrev: Variant;
    function Get_SaleTypeName: Variant;
    procedure Set_SaleTypeAbbrev(Value: Variant);
    procedure Set_SaleTypeName(Value: Variant);
    { Methods & Properties }
    property SaleTypeAbbrev: Variant read Get_SaleTypeAbbrev write Set_SaleTypeAbbrev;
    property SaleTypeName: Variant read Get_SaleTypeName write Set_SaleTypeName;
  end;

{ Forward Decls }

  TXMLTSaleType = class;

{ TXMLTSaleType }

  TXMLTSaleType = class(TXMLNode, IXMLTSaleType)
  protected
    { IXMLTSaleType }
    function Get_SaleTypeAbbrev: Variant;
    function Get_SaleTypeName: Variant;
    procedure Set_SaleTypeAbbrev(Value: Variant);
    procedure Set_SaleTypeName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTSaleType;
function LoadUnknown(const FileName: WideString): IXMLTSaleType;
function NewUnknown: IXMLTSaleType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTSaleType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTSaleType, TargetNamespace) as IXMLTSaleType;
end;

function LoadUnknown(const FileName: WideString): IXMLTSaleType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTSaleType, TargetNamespace) as IXMLTSaleType;
end;

function NewUnknown: IXMLTSaleType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTSaleType, TargetNamespace) as IXMLTSaleType;
end;

{ TXMLTSaleType }

function TXMLTSaleType.Get_SaleTypeAbbrev: Variant;
begin
  Result := ChildNodes['SaleTypeAbbrev'].NodeValue;
end;

procedure TXMLTSaleType.Set_SaleTypeAbbrev(Value: Variant);
begin
  ChildNodes['SaleTypeAbbrev'].NodeValue := Value;
end;

function TXMLTSaleType.Get_SaleTypeName: Variant;
begin
  Result := ChildNodes['SaleTypeName'].NodeValue;
end;

procedure TXMLTSaleType.Set_SaleTypeName(Value: Variant);
begin
  ChildNodes['SaleTypeName'].NodeValue := Value;
end;

end.
