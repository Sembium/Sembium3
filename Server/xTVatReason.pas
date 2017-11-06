
{************************************************************************}
{                                                                        }
{                            XML Data Binding                            }
{                                                                        }
{         Generated on: 09.05.2012 16:03:18                              }
{       Generated from: XMLSchemas\Public\TVatReason.xsd                 }
{                                                                        }
{************************************************************************}

unit xTVatReason;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTVatReason = interface;

{ IXMLTVatReason }

  IXMLTVatReason = interface(IXMLNode)
    ['{1A0FA19B-9E53-49C1-ABFB-6CC32A571CA2}']
    { Property Accessors }
    function Get_No: Variant;
    function Get_Name: Variant;
    function Get_Abbrev: Variant;
    function Get_IntlName: Variant;
    function Get_IntlAbbrev: Variant;
    procedure Set_No(Value: Variant);
    procedure Set_Name(Value: Variant);
    procedure Set_Abbrev(Value: Variant);
    procedure Set_IntlName(Value: Variant);
    procedure Set_IntlAbbrev(Value: Variant);
    { Methods & Properties }
    property No: Variant read Get_No write Set_No;
    property Name: Variant read Get_Name write Set_Name;
    property Abbrev: Variant read Get_Abbrev write Set_Abbrev;
    property IntlName: Variant read Get_IntlName write Set_IntlName;
    property IntlAbbrev: Variant read Get_IntlAbbrev write Set_IntlAbbrev;
  end;

{ Forward Decls }

  TXMLTVatReason = class;

{ TXMLTVatReason }

  TXMLTVatReason = class(TXMLNode, IXMLTVatReason)
  protected
    { IXMLTVatReason }
    function Get_No: Variant;
    function Get_Name: Variant;
    function Get_Abbrev: Variant;
    function Get_IntlName: Variant;
    function Get_IntlAbbrev: Variant;
    procedure Set_No(Value: Variant);
    procedure Set_Name(Value: Variant);
    procedure Set_Abbrev(Value: Variant);
    procedure Set_IntlName(Value: Variant);
    procedure Set_IntlAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTVatReason;
function LoadUnknown(const FileName: string): IXMLTVatReason;
function NewUnknown: IXMLTVatReason;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTVatReason;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTVatReason, TargetNamespace) as IXMLTVatReason;
end;

function LoadUnknown(const FileName: string): IXMLTVatReason;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTVatReason, TargetNamespace) as IXMLTVatReason;
end;

function NewUnknown: IXMLTVatReason;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTVatReason, TargetNamespace) as IXMLTVatReason;
end;

{ TXMLTVatReason }

function TXMLTVatReason.Get_No: Variant;
begin
  Result := ChildNodes['No'].NodeValue;
end;

procedure TXMLTVatReason.Set_No(Value: Variant);
begin
  ChildNodes['No'].NodeValue := Value;
end;

function TXMLTVatReason.Get_Name: Variant;
begin
  Result := ChildNodes['Name'].NodeValue;
end;

procedure TXMLTVatReason.Set_Name(Value: Variant);
begin
  ChildNodes['Name'].NodeValue := Value;
end;

function TXMLTVatReason.Get_Abbrev: Variant;
begin
  Result := ChildNodes['Abbrev'].NodeValue;
end;

procedure TXMLTVatReason.Set_Abbrev(Value: Variant);
begin
  ChildNodes['Abbrev'].NodeValue := Value;
end;

function TXMLTVatReason.Get_IntlName: Variant;
begin
  Result := ChildNodes['IntlName'].NodeValue;
end;

procedure TXMLTVatReason.Set_IntlName(Value: Variant);
begin
  ChildNodes['IntlName'].NodeValue := Value;
end;

function TXMLTVatReason.Get_IntlAbbrev: Variant;
begin
  Result := ChildNodes['IntlAbbrev'].NodeValue;
end;

procedure TXMLTVatReason.Set_IntlAbbrev(Value: Variant);
begin
  ChildNodes['IntlAbbrev'].NodeValue := Value;
end;

end.
