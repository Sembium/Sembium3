
{***********************************************************************}
{                                                                       }
{                           XML Data Binding                            }
{                                                                       }
{         Generated on: 12.1.2006 12:10:14                              }
{       Generated from: XMLSchemas\Public\TDateUnit.xsd                 }
{                                                                       }
{***********************************************************************}

unit xTDateUnit;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTDateUnit = interface;

{ IXMLTDateUnit }

  IXMLTDateUnit = interface(IXMLNode)
    ['{CEB6D36A-F94C-4DA2-810E-972E3107B981}']
    { Property Accessors }
    function Get_DateUnitName: Variant;
    function Get_DateUnitAbbrev: Variant;
    procedure Set_DateUnitName(Value: Variant);
    procedure Set_DateUnitAbbrev(Value: Variant);
    { Methods & Properties }
    property DateUnitName: Variant read Get_DateUnitName write Set_DateUnitName;
    property DateUnitAbbrev: Variant read Get_DateUnitAbbrev write Set_DateUnitAbbrev;
  end;

{ Forward Decls }

  TXMLTDateUnit = class;

{ TXMLTDateUnit }

  TXMLTDateUnit = class(TXMLNode, IXMLTDateUnit)
  protected
    { IXMLTDateUnit }
    function Get_DateUnitName: Variant;
    function Get_DateUnitAbbrev: Variant;
    procedure Set_DateUnitName(Value: Variant);
    procedure Set_DateUnitAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDateUnit;
function LoadUnknown(const FileName: WideString): IXMLTDateUnit;
function NewUnknown: IXMLTDateUnit;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDateUnit;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTDateUnit, TargetNamespace) as IXMLTDateUnit;
end;

function LoadUnknown(const FileName: WideString): IXMLTDateUnit;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTDateUnit, TargetNamespace) as IXMLTDateUnit;
end;

function NewUnknown: IXMLTDateUnit;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTDateUnit, TargetNamespace) as IXMLTDateUnit;
end;

{ TXMLTDateUnit }

function TXMLTDateUnit.Get_DateUnitName: Variant;
begin
  Result := ChildNodes['DateUnitName'].NodeValue;
end;

procedure TXMLTDateUnit.Set_DateUnitName(Value: Variant);
begin
  ChildNodes['DateUnitName'].NodeValue := Value;
end;

function TXMLTDateUnit.Get_DateUnitAbbrev: Variant;
begin
  Result := ChildNodes['DateUnitAbbrev'].NodeValue;
end;

procedure TXMLTDateUnit.Set_DateUnitAbbrev(Value: Variant);
begin
  ChildNodes['DateUnitAbbrev'].NodeValue := Value;
end;

end.
