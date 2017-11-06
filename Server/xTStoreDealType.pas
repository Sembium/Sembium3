
{****************************************************************************}
{                                                                            }
{                              XML Data Binding                              }
{                                                                            }
{         Generated on: 17.9.2005 11:31:41                                   }
{       Generated from: XMLSchemas\Public\TStoreDealType.xsd                 }
{                                                                            }
{****************************************************************************}

unit xTStoreDealType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTStoreDealType = interface;

{ IXMLTStoreDealType }

  IXMLTStoreDealType = interface(IXMLNode)
    ['{B2BC615F-7819-4306-B7F4-A254382C4ED2}']
    { Property Accessors }
    function Get_InOut: Variant;
    function Get_StoreDealTypeAbbrev: Variant;
    procedure Set_InOut(Value: Variant);
    procedure Set_StoreDealTypeAbbrev(Value: Variant);
    { Methods & Properties }
    property InOut: Variant read Get_InOut write Set_InOut;
    property StoreDealTypeAbbrev: Variant read Get_StoreDealTypeAbbrev write Set_StoreDealTypeAbbrev;
  end;

{ Forward Decls }

  TXMLTStoreDealType = class;

{ TXMLTStoreDealType }

  TXMLTStoreDealType = class(TXMLNode, IXMLTStoreDealType)
  protected
    { IXMLTStoreDealType }
    function Get_InOut: Variant;
    function Get_StoreDealTypeAbbrev: Variant;
    procedure Set_InOut(Value: Variant);
    procedure Set_StoreDealTypeAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTStoreDealType;
function LoadUnknown(const FileName: WideString): IXMLTStoreDealType;
function NewUnknown: IXMLTStoreDealType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTStoreDealType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTStoreDealType, TargetNamespace) as IXMLTStoreDealType;
end;

function LoadUnknown(const FileName: WideString): IXMLTStoreDealType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTStoreDealType, TargetNamespace) as IXMLTStoreDealType;
end;

function NewUnknown: IXMLTStoreDealType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTStoreDealType, TargetNamespace) as IXMLTStoreDealType;
end;

{ TXMLTStoreDealType }

function TXMLTStoreDealType.Get_InOut: Variant;
begin
  Result := ChildNodes['InOut'].NodeValue;
end;

procedure TXMLTStoreDealType.Set_InOut(Value: Variant);
begin
  ChildNodes['InOut'].NodeValue := Value;
end;

function TXMLTStoreDealType.Get_StoreDealTypeAbbrev: Variant;
begin
  Result := ChildNodes['StoreDealTypeAbbrev'].NodeValue;
end;

procedure TXMLTStoreDealType.Set_StoreDealTypeAbbrev(Value: Variant);
begin
  ChildNodes['StoreDealTypeAbbrev'].NodeValue := Value;
end;

end.
