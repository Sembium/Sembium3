
{**********************************************************************}
{                                                                      }
{                           XML Data Binding                           }
{                                                                      }
{         Generated on: 17.9.2005 12:47:12                             }
{       Generated from: XMLSchemas\Public\TCountry.xsd                 }
{                                                                      }
{**********************************************************************}

unit xTCountry;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTCountry = interface;

{ IXMLTCountry }

  IXMLTCountry = interface(IXMLNode)
    ['{C19D1EB9-1C9B-4FF6-B549-4A8E01A35B47}']
    { Property Accessors }
    function Get_CountryAbbrev: Variant;
    function Get_CountryName: Variant;
    procedure Set_CountryAbbrev(Value: Variant);
    procedure Set_CountryName(Value: Variant);
    { Methods & Properties }
    property CountryAbbrev: Variant read Get_CountryAbbrev write Set_CountryAbbrev;
    property CountryName: Variant read Get_CountryName write Set_CountryName;
  end;

{ Forward Decls }

  TXMLTCountry = class;

{ TXMLTCountry }

  TXMLTCountry = class(TXMLNode, IXMLTCountry)
  protected
    { IXMLTCountry }
    function Get_CountryAbbrev: Variant;
    function Get_CountryName: Variant;
    procedure Set_CountryAbbrev(Value: Variant);
    procedure Set_CountryName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTCountry;
function LoadUnknown(const FileName: WideString): IXMLTCountry;
function NewUnknown: IXMLTCountry;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTCountry;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTCountry, TargetNamespace) as IXMLTCountry;
end;

function LoadUnknown(const FileName: WideString): IXMLTCountry;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTCountry, TargetNamespace) as IXMLTCountry;
end;

function NewUnknown: IXMLTCountry;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTCountry, TargetNamespace) as IXMLTCountry;
end;

{ TXMLTCountry }

function TXMLTCountry.Get_CountryAbbrev: Variant;
begin
  Result := ChildNodes['CountryAbbrev'].NodeValue;
end;

procedure TXMLTCountry.Set_CountryAbbrev(Value: Variant);
begin
  ChildNodes['CountryAbbrev'].NodeValue := Value;
end;

function TXMLTCountry.Get_CountryName: Variant;
begin
  Result := ChildNodes['CountryName'].NodeValue;
end;

procedure TXMLTCountry.Set_CountryName(Value: Variant);
begin
  ChildNodes['CountryName'].NodeValue := Value;
end;

end.
