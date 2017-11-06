
{***************************************************************************}
{                                                                           }
{                             XML Data Binding                              }
{                                                                           }
{         Generated on: 11.1.2006 11:08:58                                  }
{       Generated from: XMLSchemas\Public\TBOIOrderType.xsd                 }
{                                                                           }
{***************************************************************************}

unit xTBOIOrderType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTBOIOrderType = interface;

{ IXMLTBOIOrderType }

  IXMLTBOIOrderType = interface(IXMLNode)
    ['{E40D5B60-1505-4798-9EAD-037AF29B077E}']
    { Property Accessors }
    function Get_BOIOrderTypeName: Variant;
    function Get_BOIOrderTypeAbbrev: Variant;
    procedure Set_BOIOrderTypeName(Value: Variant);
    procedure Set_BOIOrderTypeAbbrev(Value: Variant);
    { Methods & Properties }
    property BOIOrderTypeName: Variant read Get_BOIOrderTypeName write Set_BOIOrderTypeName;
    property BOIOrderTypeAbbrev: Variant read Get_BOIOrderTypeAbbrev write Set_BOIOrderTypeAbbrev;
  end;

{ Forward Decls }

  TXMLTBOIOrderType = class;

{ TXMLTBOIOrderType }

  TXMLTBOIOrderType = class(TXMLNode, IXMLTBOIOrderType)
  protected
    { IXMLTBOIOrderType }
    function Get_BOIOrderTypeName: Variant;
    function Get_BOIOrderTypeAbbrev: Variant;
    procedure Set_BOIOrderTypeName(Value: Variant);
    procedure Set_BOIOrderTypeAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTBOIOrderType;
function LoadUnknown(const FileName: WideString): IXMLTBOIOrderType;
function NewUnknown: IXMLTBOIOrderType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTBOIOrderType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTBOIOrderType, TargetNamespace) as IXMLTBOIOrderType;
end;

function LoadUnknown(const FileName: WideString): IXMLTBOIOrderType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTBOIOrderType, TargetNamespace) as IXMLTBOIOrderType;
end;

function NewUnknown: IXMLTBOIOrderType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTBOIOrderType, TargetNamespace) as IXMLTBOIOrderType;
end;

{ TXMLTBOIOrderType }

function TXMLTBOIOrderType.Get_BOIOrderTypeName: Variant;
begin
  Result := ChildNodes['BOIOrderTypeName'].NodeValue;
end;

procedure TXMLTBOIOrderType.Set_BOIOrderTypeName(Value: Variant);
begin
  ChildNodes['BOIOrderTypeName'].NodeValue := Value;
end;

function TXMLTBOIOrderType.Get_BOIOrderTypeAbbrev: Variant;
begin
  Result := ChildNodes['BOIOrderTypeAbbrev'].NodeValue;
end;

procedure TXMLTBOIOrderType.Set_BOIOrderTypeAbbrev(Value: Variant);
begin
  ChildNodes['BOIOrderTypeAbbrev'].NodeValue := Value;
end;

end.
