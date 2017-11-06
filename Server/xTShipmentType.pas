
{***************************************************************************}
{                                                                           }
{                           XML Data Binding                                }
{                                                                           }
{         Generated on: 16.9.2005 14:22:38                                  }
{       Generated from: XMLSchemas\Public\TShipmentType.xsd                 }
{                                                                           }
{***************************************************************************}

unit xTShipmentType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTShipmentType = interface;

{ IXMLTShipmentType }

  IXMLTShipmentType = interface(IXMLNode)
    ['{B53D198D-F97E-4498-A3E1-DBE965F655F3}']
    { Property Accessors }
    function Get_ShipmentTypeAbbrev: Variant;
    function Get_ShipmentTypeName: Variant;
    function Get_Notes: Variant;
    procedure Set_ShipmentTypeAbbrev(Value: Variant);
    procedure Set_ShipmentTypeName(Value: Variant);
    procedure Set_Notes(Value: Variant);
    { Methods & Properties }
    property ShipmentTypeAbbrev: Variant read Get_ShipmentTypeAbbrev write Set_ShipmentTypeAbbrev;
    property ShipmentTypeName: Variant read Get_ShipmentTypeName write Set_ShipmentTypeName;
    property Notes: Variant read Get_Notes write Set_Notes;
  end;

{ Forward Decls }

  TXMLTShipmentType = class;

{ TXMLTShipmentType }

  TXMLTShipmentType = class(TXMLNode, IXMLTShipmentType)
  protected
    { IXMLTShipmentType }
    function Get_ShipmentTypeAbbrev: Variant;
    function Get_ShipmentTypeName: Variant;
    function Get_Notes: Variant;
    procedure Set_ShipmentTypeAbbrev(Value: Variant);
    procedure Set_ShipmentTypeName(Value: Variant);
    procedure Set_Notes(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTShipmentType;
function LoadUnknown(const FileName: WideString): IXMLTShipmentType;
function NewUnknown: IXMLTShipmentType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTShipmentType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTShipmentType, TargetNamespace) as IXMLTShipmentType;
end;

function LoadUnknown(const FileName: WideString): IXMLTShipmentType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTShipmentType, TargetNamespace) as IXMLTShipmentType;
end;

function NewUnknown: IXMLTShipmentType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTShipmentType, TargetNamespace) as IXMLTShipmentType;
end;

{ TXMLTShipmentType }

function TXMLTShipmentType.Get_ShipmentTypeAbbrev: Variant;
begin
  Result := ChildNodes['ShipmentTypeAbbrev'].NodeValue;
end;

procedure TXMLTShipmentType.Set_ShipmentTypeAbbrev(Value: Variant);
begin
  ChildNodes['ShipmentTypeAbbrev'].NodeValue := Value;
end;

function TXMLTShipmentType.Get_ShipmentTypeName: Variant;
begin
  Result := ChildNodes['ShipmentTypeName'].NodeValue;
end;

procedure TXMLTShipmentType.Set_ShipmentTypeName(Value: Variant);
begin
  ChildNodes['ShipmentTypeName'].NodeValue := Value;
end;

function TXMLTShipmentType.Get_Notes: Variant;
begin
  Result := ChildNodes['Notes'].NodeValue;
end;

procedure TXMLTShipmentType.Set_Notes(Value: Variant);
begin
  ChildNodes['Notes'].NodeValue := Value;
end;

end.
