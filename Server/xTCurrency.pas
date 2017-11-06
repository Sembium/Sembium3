
{***********************************************************************}
{                                                                       }
{                           XML Data Binding                            }
{                                                                       }
{         Generated on: 17.9.2005 11:37:11                              }
{       Generated from: XMLSchemas\Public\TCurrency.xsd                 }
{                                                                       }
{***********************************************************************}

unit xTCurrency;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTCurrency = interface;

{ IXMLTCurrency }

  IXMLTCurrency = interface(IXMLNode)
    ['{292D3828-86E5-4F6E-8491-BEE9C1FCB935}']
    { Property Accessors }
    function Get_CurrencyName: Variant;
    function Get_CurrencyAbbrev: Variant;
    procedure Set_CurrencyName(Value: Variant);
    procedure Set_CurrencyAbbrev(Value: Variant);
    { Methods & Properties }
    property CurrencyName: Variant read Get_CurrencyName write Set_CurrencyName;
    property CurrencyAbbrev: Variant read Get_CurrencyAbbrev write Set_CurrencyAbbrev;
  end;

{ Forward Decls }

  TXMLTCurrency = class;

{ TXMLTCurrency }

  TXMLTCurrency = class(TXMLNode, IXMLTCurrency)
  protected
    { IXMLTCurrency }
    function Get_CurrencyName: Variant;
    function Get_CurrencyAbbrev: Variant;
    procedure Set_CurrencyName(Value: Variant);
    procedure Set_CurrencyAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTCurrency;
function LoadUnknown(const FileName: WideString): IXMLTCurrency;
function NewUnknown: IXMLTCurrency;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTCurrency;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTCurrency, TargetNamespace) as IXMLTCurrency;
end;

function LoadUnknown(const FileName: WideString): IXMLTCurrency;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTCurrency, TargetNamespace) as IXMLTCurrency;
end;

function NewUnknown: IXMLTCurrency;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTCurrency, TargetNamespace) as IXMLTCurrency;
end;

{ TXMLTCurrency }

function TXMLTCurrency.Get_CurrencyName: Variant;
begin
  Result := ChildNodes['CurrencyName'].NodeValue;
end;

procedure TXMLTCurrency.Set_CurrencyName(Value: Variant);
begin
  ChildNodes['CurrencyName'].NodeValue := Value;
end;

function TXMLTCurrency.Get_CurrencyAbbrev: Variant;
begin
  Result := ChildNodes['CurrencyAbbrev'].NodeValue;
end;

procedure TXMLTCurrency.Set_CurrencyAbbrev(Value: Variant);
begin
  ChildNodes['CurrencyAbbrev'].NodeValue := Value;
end;

end.
