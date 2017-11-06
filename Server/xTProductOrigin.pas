
{****************************************************************************}
{                                                                            }
{                              XML Data Binding                              }
{                                                                            }
{         Generated on: 16.9.2005 14:36:45                                   }
{       Generated from: XMLSchemas\Public\TProductOrigin.xsd                 }
{                                                                            }
{****************************************************************************}

unit xTProductOrigin;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTProductOrigin = interface;

{ IXMLTProductOrigin }

  IXMLTProductOrigin = interface(IXMLNode)
    ['{CB8EC1E4-905C-4C14-9AEB-841E1A572D7C}']
    { Property Accessors }
    function Get_ProductOriginName: Variant;
    function Get_ProductOriginAbbrev: Variant;
    procedure Set_ProductOriginName(Value: Variant);
    procedure Set_ProductOriginAbbrev(Value: Variant);
    { Methods & Properties }
    property ProductOriginName: Variant read Get_ProductOriginName write Set_ProductOriginName;
    property ProductOriginAbbrev: Variant read Get_ProductOriginAbbrev write Set_ProductOriginAbbrev;
  end;

{ Forward Decls }

  TXMLTProductOrigin = class;

{ TXMLTProductOrigin }

  TXMLTProductOrigin = class(TXMLNode, IXMLTProductOrigin)
  protected
    { IXMLTProductOrigin }
    function Get_ProductOriginName: Variant;
    function Get_ProductOriginAbbrev: Variant;
    procedure Set_ProductOriginName(Value: Variant);
    procedure Set_ProductOriginAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProductOrigin;
function LoadUnknown(const FileName: WideString): IXMLTProductOrigin;
function NewUnknown: IXMLTProductOrigin;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProductOrigin;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTProductOrigin, TargetNamespace) as IXMLTProductOrigin;
end;

function LoadUnknown(const FileName: WideString): IXMLTProductOrigin;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTProductOrigin, TargetNamespace) as IXMLTProductOrigin;
end;

function NewUnknown: IXMLTProductOrigin;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTProductOrigin, TargetNamespace) as IXMLTProductOrigin;
end;

{ TXMLTProductOrigin }

function TXMLTProductOrigin.Get_ProductOriginName: Variant;
begin
  Result := ChildNodes['ProductOriginName'].NodeValue;
end;

procedure TXMLTProductOrigin.Set_ProductOriginName(Value: Variant);
begin
  ChildNodes['ProductOriginName'].NodeValue := Value;
end;

function TXMLTProductOrigin.Get_ProductOriginAbbrev: Variant;
begin
  Result := ChildNodes['ProductOriginAbbrev'].NodeValue;
end;

procedure TXMLTProductOrigin.Set_ProductOriginAbbrev(Value: Variant);
begin
  ChildNodes['ProductOriginAbbrev'].NodeValue := Value;
end;

end.
