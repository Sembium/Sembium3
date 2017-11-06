
{*************************************************************************}
{                                                                         }
{                            XML Data Binding                             }
{                                                                         }
{         Generated on: 28.4.2006 15:58:03                                }
{       Generated from: XMLSchemas\Public\TFloatRange.xsd                 }
{                                                                         }
{*************************************************************************}

unit xTFloatRange;

interface

uses
  xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTFloatRange = interface;

{ IXMLTFloatRange }

  IXMLTFloatRange = interface(IXMLNode)
    ['{55FAACB3-C479-492F-BE6E-AC10A8CAF48E}']
    { Property Accessors }
    function Get_MinValue: Variant;
    function Get_MaxValue: Variant;
    procedure Set_MinValue(Value: Variant);
    procedure Set_MaxValue(Value: Variant);
    { Methods & Properties }
    property MinValue: Variant read Get_MinValue write Set_MinValue;
    property MaxValue: Variant read Get_MaxValue write Set_MaxValue;
  end;

{ Forward Decls }

  TXMLTFloatRange = class;

{ TXMLTFloatRange }

  TXMLTFloatRange = class(TXMLNode, IXMLTFloatRange)
  protected
    { IXMLTFloatRange }
    function Get_MinValue: Variant;
    function Get_MaxValue: Variant;
    procedure Set_MinValue(Value: Variant);
    procedure Set_MaxValue(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTFloatRange;
function LoadUnknown(const FileName: WideString): IXMLTFloatRange;
function NewUnknown: IXMLTFloatRange;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTFloatRange;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTFloatRange, TargetNamespace) as IXMLTFloatRange;
end;

function LoadUnknown(const FileName: WideString): IXMLTFloatRange;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTFloatRange, TargetNamespace) as IXMLTFloatRange;
end;

function NewUnknown: IXMLTFloatRange;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTFloatRange, TargetNamespace) as IXMLTFloatRange;
end;

{ TXMLTFloatRange }

function TXMLTFloatRange.Get_MinValue: Variant;
begin
  Result := ChildNodes['MinValue'].NodeValue;
end;

procedure TXMLTFloatRange.Set_MinValue(Value: Variant);
begin
  ChildNodes['MinValue'].NodeValue := Value;
end;

function TXMLTFloatRange.Get_MaxValue: Variant;
begin
  Result := ChildNodes['MaxValue'].NodeValue;
end;

procedure TXMLTFloatRange.Set_MaxValue(Value: Variant);
begin
  ChildNodes['MaxValue'].NodeValue := Value;
end;

end.
