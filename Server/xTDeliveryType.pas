
{*********************************************************************************}
{                                                                                 }
{                                XML Data Binding                                 }
{                                                                                 }
{         Generated on: 21.5.2013 г/ 13:24:28                                     }
{       Generated from: XMLSchemas\Public\TDeliveryType.xsd                 }
{                                                                                 }
{*********************************************************************************}

unit xTDeliveryType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTDeliveryType = interface;

{ IXMLTDeliveryType }

  IXMLTDeliveryType = interface(IXMLNode)
    ['{7500FDCA-9C33-4B6C-B5D0-84E30CAB3C2B}']
    { Property Accessors }
    function Get_DeliveryTypeAbbrev: Variant;
    function Get_Description: Variant;
    procedure Set_DeliveryTypeAbbrev(Value: Variant);
    procedure Set_Description(Value: Variant);
    { Methods & Properties }
    property DeliveryTypeAbbrev: Variant read Get_DeliveryTypeAbbrev write Set_DeliveryTypeAbbrev;
    property Description: Variant read Get_Description write Set_Description;
  end;

{ Forward Decls }

  TXMLTDeliveryType = class;

{ TXMLTDeliveryType }

  TXMLTDeliveryType = class(TXMLNode, IXMLTDeliveryType)
  protected
    { IXMLTDeliveryType }
    function Get_DeliveryTypeAbbrev: Variant;
    function Get_Description: Variant;
    procedure Set_DeliveryTypeAbbrev(Value: Variant);
    procedure Set_Description(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDeliveryType;
function LoadUnknown(const FileName: string): IXMLTDeliveryType;
function NewUnknown: IXMLTDeliveryType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDeliveryType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTDeliveryType, TargetNamespace) as IXMLTDeliveryType;
end;

function LoadUnknown(const FileName: string): IXMLTDeliveryType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTDeliveryType, TargetNamespace) as IXMLTDeliveryType;
end;

function NewUnknown: IXMLTDeliveryType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTDeliveryType, TargetNamespace) as IXMLTDeliveryType;
end;

{ TXMLTDeliveryType }

function TXMLTDeliveryType.Get_DeliveryTypeAbbrev: Variant;
begin
  Result := ChildNodes['DeliveryTypeAbbrev'].NodeValue;
end;

procedure TXMLTDeliveryType.Set_DeliveryTypeAbbrev(Value: Variant);
begin
  ChildNodes['DeliveryTypeAbbrev'].NodeValue := Value;
end;

function TXMLTDeliveryType.Get_Description: Variant;
begin
  Result := ChildNodes['Description'].NodeValue;
end;

procedure TXMLTDeliveryType.Set_Description(Value: Variant);
begin
  ChildNodes['Description'].NodeValue := Value;
end;

end.
