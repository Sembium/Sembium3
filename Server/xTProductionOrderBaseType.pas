
{**************************************************************************************}
{                                                                                      }
{                                   XML Data Binding                                   }
{                                                                                      }
{         Generated on: 17.9.2005 12:03:14                                             }
{       Generated from: XMLSchemas\Public\TProductionOrderBaseType.xsd                 }
{                                                                                      }
{**************************************************************************************}

unit xTProductionOrderBaseType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTProductionOrderBaseType = interface;

{ IXMLTProductionOrderBaseType }

  IXMLTProductionOrderBaseType = interface(IXMLNode)
    ['{199BB050-0861-4C52-AA06-E936A81ED1E6}']
    { Property Accessors }
    function Get_ProductionOrderBaseTypeName: Variant;
    function Get_ProductionOrderBaseTypeAbbrev: Variant;
    procedure Set_ProductionOrderBaseTypeName(Value: Variant);
    procedure Set_ProductionOrderBaseTypeAbbrev(Value: Variant);
    { Methods & Properties }
    property ProductionOrderBaseTypeName: Variant read Get_ProductionOrderBaseTypeName write Set_ProductionOrderBaseTypeName;
    property ProductionOrderBaseTypeAbbrev: Variant read Get_ProductionOrderBaseTypeAbbrev write Set_ProductionOrderBaseTypeAbbrev;
  end;

{ Forward Decls }

  TXMLTProductionOrderBaseType = class;

{ TXMLTProductionOrderBaseType }

  TXMLTProductionOrderBaseType = class(TXMLNode, IXMLTProductionOrderBaseType)
  protected
    { IXMLTProductionOrderBaseType }
    function Get_ProductionOrderBaseTypeName: Variant;
    function Get_ProductionOrderBaseTypeAbbrev: Variant;
    procedure Set_ProductionOrderBaseTypeName(Value: Variant);
    procedure Set_ProductionOrderBaseTypeAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProductionOrderBaseType;
function LoadUnknown(const FileName: WideString): IXMLTProductionOrderBaseType;
function NewUnknown: IXMLTProductionOrderBaseType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProductionOrderBaseType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTProductionOrderBaseType, TargetNamespace) as IXMLTProductionOrderBaseType;
end;

function LoadUnknown(const FileName: WideString): IXMLTProductionOrderBaseType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTProductionOrderBaseType, TargetNamespace) as IXMLTProductionOrderBaseType;
end;

function NewUnknown: IXMLTProductionOrderBaseType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTProductionOrderBaseType, TargetNamespace) as IXMLTProductionOrderBaseType;
end;

{ TXMLTProductionOrderBaseType }

function TXMLTProductionOrderBaseType.Get_ProductionOrderBaseTypeName: Variant;
begin
  Result := ChildNodes['ProductionOrderBaseTypeName'].NodeValue;
end;

procedure TXMLTProductionOrderBaseType.Set_ProductionOrderBaseTypeName(Value: Variant);
begin
  ChildNodes['ProductionOrderBaseTypeName'].NodeValue := Value;
end;

function TXMLTProductionOrderBaseType.Get_ProductionOrderBaseTypeAbbrev: Variant;
begin
  Result := ChildNodes['ProductionOrderBaseTypeAbbrev'].NodeValue;
end;

procedure TXMLTProductionOrderBaseType.Set_ProductionOrderBaseTypeAbbrev(Value: Variant);
begin
  ChildNodes['ProductionOrderBaseTypeAbbrev'].NodeValue := Value;
end;

end.
