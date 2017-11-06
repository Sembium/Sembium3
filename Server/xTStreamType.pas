
{*************************************************************************}
{                                                                         }
{                           XML Data Binding                              }
{                                                                         }
{         Generated on: 24.8.2012 14:22:38                                }
{       Generated from: XMLSchemas\Public\TStreamType.xsd                 }
{                                                                         }
{*************************************************************************}

unit xTStreamType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTStreamType = interface;

{ IXMLTStreamType }

  IXMLTStreamType = interface(IXMLNode)
    ['{A8224537-5DFB-47F7-8696-C4A8D6F7B71E}']
    { Property Accessors }
    function Get_StreamTypeAbbrev: Variant;
    function Get_StreamTypeName: Variant;
    procedure Set_StreamTypeAbbrev(Value: Variant);
    procedure Set_StreamTypeName(Value: Variant);
    { Methods & Properties }
    property StreamTypeAbbrev: Variant read Get_StreamTypeAbbrev write Set_StreamTypeAbbrev;
    property StreamTypeName: Variant read Get_StreamTypeName write Set_StreamTypeName;
  end;

{ Forward Decls }

  TXMLTStreamType = class;

{ TXMLTStreamType }

  TXMLTStreamType = class(TXMLNode, IXMLTStreamType)
  protected
    { IXMLTStreamType }
    function Get_StreamTypeAbbrev: Variant;
    function Get_StreamTypeName: Variant;
    procedure Set_StreamTypeAbbrev(Value: Variant);
    procedure Set_StreamTypeName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTStreamType;
function LoadUnknown(const FileName: WideString): IXMLTStreamType;
function NewUnknown: IXMLTStreamType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTStreamType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTStreamType, TargetNamespace) as IXMLTStreamType;
end;

function LoadUnknown(const FileName: WideString): IXMLTStreamType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTStreamType, TargetNamespace) as IXMLTStreamType;
end;

function NewUnknown: IXMLTStreamType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTStreamType, TargetNamespace) as IXMLTStreamType;
end;

{ TXMLTStreamType }

function TXMLTStreamType.Get_StreamTypeAbbrev: Variant;
begin
  Result := ChildNodes['StreamTypeAbbrev'].NodeValue;
end;

procedure TXMLTStreamType.Set_StreamTypeAbbrev(Value: Variant);
begin
  ChildNodes['StreamTypeAbbrev'].NodeValue := Value;
end;

function TXMLTStreamType.Get_StreamTypeName: Variant;
begin
  Result := ChildNodes['StreamTypeName'].NodeValue;
end;

procedure TXMLTStreamType.Set_StreamTypeName(Value: Variant);
begin
  ChildNodes['StreamTypeName'].NodeValue := Value;
end;

end.
