
{***********************************************************************************}
{                                                                                   }
{                                 XML Data Binding                                  }
{                                                                                   }
{         Generated on: 17.9.2005 12:12:01                                          }
{       Generated from: XMLSchemas\Public\TEngineeringOrderType.xsd                 }
{                                                                                   }
{***********************************************************************************}

unit xTEngineeringOrderType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTEngineeringOrderType = interface;

{ IXMLTEngineeringOrderType }

  IXMLTEngineeringOrderType = interface(IXMLNode)
    ['{EE5CD060-D035-45B2-BDDC-F1385A4FB3B9}']
    { Property Accessors }
    function Get_EngineeringOrderTypeName: Variant;
    function Get_EngineeringOrderTypeAbbrev: Variant;
    procedure Set_EngineeringOrderTypeName(Value: Variant);
    procedure Set_EngineeringOrderTypeAbbrev(Value: Variant);
    { Methods & Properties }
    property EngineeringOrderTypeName: Variant read Get_EngineeringOrderTypeName write Set_EngineeringOrderTypeName;
    property EngineeringOrderTypeAbbrev: Variant read Get_EngineeringOrderTypeAbbrev write Set_EngineeringOrderTypeAbbrev;
  end;

{ Forward Decls }

  TXMLTEngineeringOrderType = class;

{ TXMLTEngineeringOrderType }

  TXMLTEngineeringOrderType = class(TXMLNode, IXMLTEngineeringOrderType)
  protected
    { IXMLTEngineeringOrderType }
    function Get_EngineeringOrderTypeName: Variant;
    function Get_EngineeringOrderTypeAbbrev: Variant;
    procedure Set_EngineeringOrderTypeName(Value: Variant);
    procedure Set_EngineeringOrderTypeAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEngineeringOrderType;
function LoadUnknown(const FileName: WideString): IXMLTEngineeringOrderType;
function NewUnknown: IXMLTEngineeringOrderType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEngineeringOrderType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTEngineeringOrderType, TargetNamespace) as IXMLTEngineeringOrderType;
end;

function LoadUnknown(const FileName: WideString): IXMLTEngineeringOrderType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTEngineeringOrderType, TargetNamespace) as IXMLTEngineeringOrderType;
end;

function NewUnknown: IXMLTEngineeringOrderType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTEngineeringOrderType, TargetNamespace) as IXMLTEngineeringOrderType;
end;

{ TXMLTEngineeringOrderType }

function TXMLTEngineeringOrderType.Get_EngineeringOrderTypeName: Variant;
begin
  Result := ChildNodes['EngineeringOrderTypeName'].NodeValue;
end;

procedure TXMLTEngineeringOrderType.Set_EngineeringOrderTypeName(Value: Variant);
begin
  ChildNodes['EngineeringOrderTypeName'].NodeValue := Value;
end;

function TXMLTEngineeringOrderType.Get_EngineeringOrderTypeAbbrev: Variant;
begin
  Result := ChildNodes['EngineeringOrderTypeAbbrev'].NodeValue;
end;

procedure TXMLTEngineeringOrderType.Set_EngineeringOrderTypeAbbrev(Value: Variant);
begin
  ChildNodes['EngineeringOrderTypeAbbrev'].NodeValue := Value;
end;

end.
