
{*******************************************************************}
{                                                                   }
{                         XML Data Binding                          }
{                                                                   }
{         Generated on: 10.1.2006 16:47:46                          }
{       Generated from: XMLSchemas\Public\TTime.xsd                 }
{                                                                   }
{*******************************************************************}

unit xTTime;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTTime = interface;

{ IXMLTTime }

  IXMLTTime = interface(IXMLNode)
    ['{F1387B0A-78C6-4114-9E39-0F028703107B}']
    { Property Accessors }
    function Get_InDefaultFormat: Variant;
    procedure Set_InDefaultFormat(Value: Variant);
    { Methods & Properties }
    property InDefaultFormat: Variant read Get_InDefaultFormat write Set_InDefaultFormat;
  end;

{ Forward Decls }

  TXMLTTime = class;

{ TXMLTTime }

  TXMLTTime = class(TXMLNode, IXMLTTime)
  protected
    { IXMLTTime }
    function Get_InDefaultFormat: Variant;
    procedure Set_InDefaultFormat(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTTime;
function LoadUnknown(const FileName: WideString): IXMLTTime;
function NewUnknown: IXMLTTime;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTTime;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTTime, TargetNamespace) as IXMLTTime;
end;

function LoadUnknown(const FileName: WideString): IXMLTTime;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTTime, TargetNamespace) as IXMLTTime;
end;

function NewUnknown: IXMLTTime;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTTime, TargetNamespace) as IXMLTTime;
end;

{ TXMLTTime }

function TXMLTTime.Get_InDefaultFormat: Variant;
begin
  Result := ChildNodes['InDefaultFormat'].NodeValue;
end;

procedure TXMLTTime.Set_InDefaultFormat(Value: Variant);
begin
  ChildNodes['InDefaultFormat'].NodeValue := Value;
end;

end.
