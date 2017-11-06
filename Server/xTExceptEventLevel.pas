
{*******************************************************************************}
{                                                                               }
{                               XML Data Binding                                }
{                                                                               }
{         Generated on: 12.4.2013 г/ 17:45:49                                   }
{       Generated from: XMLSchemas\Public\TExceptEventLevel.xsd                 }
{                                                                               }
{*******************************************************************************}

unit xTExceptEventLevel;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTExceptEventLevel = interface;

{ IXMLTExceptEventLevel }

  IXMLTExceptEventLevel = interface(IXMLNode)
    ['{D55B6CA2-4996-4D7B-B8EA-1148D38A4A41}']
    { Property Accessors }
    function Get_ExceptEventLevelNo: Variant;
    function Get_ExceptEventLevelName: Variant;
    function Get_ExceptEventLevelAbbrev: Variant;
    procedure Set_ExceptEventLevelNo(Value: Variant);
    procedure Set_ExceptEventLevelName(Value: Variant);
    procedure Set_ExceptEventLevelAbbrev(Value: Variant);
    { Methods & Properties }
    property ExceptEventLevelNo: Variant read Get_ExceptEventLevelNo write Set_ExceptEventLevelNo;
    property ExceptEventLevelName: Variant read Get_ExceptEventLevelName write Set_ExceptEventLevelName;
    property ExceptEventLevelAbbrev: Variant read Get_ExceptEventLevelAbbrev write Set_ExceptEventLevelAbbrev;
  end;

{ Forward Decls }

  TXMLTExceptEventLevel = class;

{ TXMLTExceptEventLevel }

  TXMLTExceptEventLevel = class(TXMLNode, IXMLTExceptEventLevel)
  protected
    { IXMLTExceptEventLevel }
    function Get_ExceptEventLevelNo: Variant;
    function Get_ExceptEventLevelName: Variant;
    function Get_ExceptEventLevelAbbrev: Variant;
    procedure Set_ExceptEventLevelNo(Value: Variant);
    procedure Set_ExceptEventLevelName(Value: Variant);
    procedure Set_ExceptEventLevelAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTExceptEventLevel;
function LoadUnknown(const FileName: string): IXMLTExceptEventLevel;
function NewUnknown: IXMLTExceptEventLevel;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTExceptEventLevel;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTExceptEventLevel, TargetNamespace) as IXMLTExceptEventLevel;
end;

function LoadUnknown(const FileName: string): IXMLTExceptEventLevel;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTExceptEventLevel, TargetNamespace) as IXMLTExceptEventLevel;
end;

function NewUnknown: IXMLTExceptEventLevel;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTExceptEventLevel, TargetNamespace) as IXMLTExceptEventLevel;
end;

{ TXMLTExceptEventLevel }

function TXMLTExceptEventLevel.Get_ExceptEventLevelNo: Variant;
begin
  Result := ChildNodes['ExceptEventLevelNo'].NodeValue;
end;

procedure TXMLTExceptEventLevel.Set_ExceptEventLevelNo(Value: Variant);
begin
  ChildNodes['ExceptEventLevelNo'].NodeValue := Value;
end;

function TXMLTExceptEventLevel.Get_ExceptEventLevelName: Variant;
begin
  Result := ChildNodes['ExceptEventLevelName'].NodeValue;
end;

procedure TXMLTExceptEventLevel.Set_ExceptEventLevelName(Value: Variant);
begin
  ChildNodes['ExceptEventLevelName'].NodeValue := Value;
end;

function TXMLTExceptEventLevel.Get_ExceptEventLevelAbbrev: Variant;
begin
  Result := ChildNodes['ExceptEventLevelAbbrev'].NodeValue;
end;

procedure TXMLTExceptEventLevel.Set_ExceptEventLevelAbbrev(Value: Variant);
begin
  ChildNodes['ExceptEventLevelAbbrev'].NodeValue := Value;
end;

end.
