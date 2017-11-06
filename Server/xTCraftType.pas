
{************************************************************************}
{                                                                        }
{                            XML Data Binding                            }
{                                                                        }
{         Generated on: 10.5.2006 14:36:26                               }
{       Generated from: XMLSchemas\Public\TCraftType.xsd                 }
{                                                                        }
{************************************************************************}

unit xTCraftType;

interface

uses
  xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTCraftType = interface;

{ IXMLTCraftType }

  IXMLTCraftType = interface(IXMLNode)
    ['{7C6D5D50-1117-4F9F-9526-C2A71460727B}']
    { Property Accessors }
    function Get_CraftTypeNo: Variant;
    function Get_CraftTypeName: Variant;
    procedure Set_CraftTypeNo(Value: Variant);
    procedure Set_CraftTypeName(Value: Variant);
    { Methods & Properties }
    property CraftTypeNo: Variant read Get_CraftTypeNo write Set_CraftTypeNo;
    property CraftTypeName: Variant read Get_CraftTypeName write Set_CraftTypeName;
  end;

{ Forward Decls }

  TXMLTCraftType = class;

{ TXMLTCraftType }

  TXMLTCraftType = class(TXMLNode, IXMLTCraftType)
  protected
    { IXMLTCraftType }
    function Get_CraftTypeNo: Variant;
    function Get_CraftTypeName: Variant;
    procedure Set_CraftTypeNo(Value: Variant);
    procedure Set_CraftTypeName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTCraftType;
function LoadUnknown(const FileName: WideString): IXMLTCraftType;
function NewUnknown: IXMLTCraftType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTCraftType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTCraftType, TargetNamespace) as IXMLTCraftType;
end;

function LoadUnknown(const FileName: WideString): IXMLTCraftType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTCraftType, TargetNamespace) as IXMLTCraftType;
end;

function NewUnknown: IXMLTCraftType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTCraftType, TargetNamespace) as IXMLTCraftType;
end;

{ TXMLTCraftType }

function TXMLTCraftType.Get_CraftTypeNo: Variant;
begin
  Result := ChildNodes['CraftTypeNo'].NodeValue;
end;

procedure TXMLTCraftType.Set_CraftTypeNo(Value: Variant);
begin
  ChildNodes['CraftTypeNo'].NodeValue := Value;
end;

function TXMLTCraftType.Get_CraftTypeName: Variant;
begin
  Result := ChildNodes['CraftTypeName'].NodeValue;
end;

procedure TXMLTCraftType.Set_CraftTypeName(Value: Variant);
begin
  ChildNodes['CraftTypeName'].NodeValue := Value;
end;

end.
