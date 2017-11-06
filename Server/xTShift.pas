
{********************************************************************}
{                                                                    }
{                          XML Data Binding                          }
{                                                                    }
{         Generated on: 17.9.2005 12:27:02                           }
{       Generated from: XMLSchemas\Public\TShift.xsd                 }
{                                                                    }
{********************************************************************}

unit xTShift;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTShift = interface;

{ IXMLTShift }

  IXMLTShift = interface(IXMLNode)
    ['{789CFC36-9EBF-4CE0-9003-D5B974335DE6}']
    { Property Accessors }
    function Get_ShiftName: Variant;
    function Get_ShiftAbbrev: Variant;
    procedure Set_ShiftName(Value: Variant);
    procedure Set_ShiftAbbrev(Value: Variant);
    { Methods & Properties }
    property ShiftName: Variant read Get_ShiftName write Set_ShiftName;
    property ShiftAbbrev: Variant read Get_ShiftAbbrev write Set_ShiftAbbrev;
  end;

{ Forward Decls }

  TXMLTShift = class;

{ TXMLTShift }

  TXMLTShift = class(TXMLNode, IXMLTShift)
  protected
    { IXMLTShift }
    function Get_ShiftName: Variant;
    function Get_ShiftAbbrev: Variant;
    procedure Set_ShiftName(Value: Variant);
    procedure Set_ShiftAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTShift;
function LoadUnknown(const FileName: WideString): IXMLTShift;
function NewUnknown: IXMLTShift;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTShift;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTShift, TargetNamespace) as IXMLTShift;
end;

function LoadUnknown(const FileName: WideString): IXMLTShift;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTShift, TargetNamespace) as IXMLTShift;
end;

function NewUnknown: IXMLTShift;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTShift, TargetNamespace) as IXMLTShift;
end;

{ TXMLTShift }

function TXMLTShift.Get_ShiftName: Variant;
begin
  Result := ChildNodes['ShiftName'].NodeValue;
end;

procedure TXMLTShift.Set_ShiftName(Value: Variant);
begin
  ChildNodes['ShiftName'].NodeValue := Value;
end;

function TXMLTShift.Get_ShiftAbbrev: Variant;
begin
  Result := ChildNodes['ShiftAbbrev'].NodeValue;
end;

procedure TXMLTShift.Set_ShiftAbbrev(Value: Variant);
begin
  ChildNodes['ShiftAbbrev'].NodeValue := Value;
end;

end.
