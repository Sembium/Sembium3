
{*************************************************************************}
{                                                                         }
{                           XML Data Binding                              }
{                                                                         }
{         Generated on: 16.9.2005 14:22:38                                }
{       Generated from: XMLSchemas\Public\TAspectType.xsd                 }
{                                                                         }
{*************************************************************************}

unit xTAspectType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTAspectType = interface;

{ IXMLTAspectType }

  IXMLTAspectType = interface(IXMLNode)
    ['{7D4212E3-E61A-4595-85D0-3AC7EFD2A332}']
    { Property Accessors }
    function Get_AspectTypeAbbrev: Variant;
    function Get_AspectTypeName: Variant;
    procedure Set_AspectTypeAbbrev(Value: Variant);
    procedure Set_AspectTypeName(Value: Variant);
    { Methods & Properties }
    property AspectTypeAbbrev: Variant read Get_AspectTypeAbbrev write Set_AspectTypeAbbrev;
    property AspectTypeName: Variant read Get_AspectTypeName write Set_AspectTypeName;
  end;

{ Forward Decls }

  TXMLTAspectType = class;

{ TXMLTAspectType }

  TXMLTAspectType = class(TXMLNode, IXMLTAspectType)
  protected
    { IXMLTAspectType }
    function Get_AspectTypeAbbrev: Variant;
    function Get_AspectTypeName: Variant;
    procedure Set_AspectTypeAbbrev(Value: Variant);
    procedure Set_AspectTypeName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTAspectType;
function LoadUnknown(const FileName: WideString): IXMLTAspectType;
function NewUnknown: IXMLTAspectType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTAspectType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTAspectType, TargetNamespace) as IXMLTAspectType;
end;

function LoadUnknown(const FileName: WideString): IXMLTAspectType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTAspectType, TargetNamespace) as IXMLTAspectType;
end;

function NewUnknown: IXMLTAspectType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTAspectType, TargetNamespace) as IXMLTAspectType;
end;

{ TXMLTAspectType }

function TXMLTAspectType.Get_AspectTypeAbbrev: Variant;
begin
  Result := ChildNodes['AspectTypeAbbrev'].NodeValue;
end;

procedure TXMLTAspectType.Set_AspectTypeAbbrev(Value: Variant);
begin
  ChildNodes['AspectTypeAbbrev'].NodeValue := Value;
end;

function TXMLTAspectType.Get_AspectTypeName: Variant;
begin
  Result := ChildNodes['AspectTypeName'].NodeValue;
end;

procedure TXMLTAspectType.Set_AspectTypeName(Value: Variant);
begin
  ChildNodes['AspectTypeName'].NodeValue := Value;
end;

end.
