
{******************************************************************************}
{                                                                              }
{                               XML Data Binding                               }
{                                                                              }
{         Generated on: 12.4.2013 г/ 16:23:25                                  }
{       Generated from: XMLSchemas\Public\TExceptEventType.xsd                 }
{                                                                              }
{******************************************************************************}

unit xTExceptEventType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTExceptEventType = interface;

{ IXMLTExceptEventType }

  IXMLTExceptEventType = interface(IXMLNode)
    ['{7A0B8828-4D3A-43BD-97C8-9C66916A3E68}']
    { Property Accessors }
    function Get_ExceptEventTypeFullNo: Variant;
    function Get_ExceptEventTypeName: Variant;
    function Get_ExceptEventTypeShortName: Variant;
    procedure Set_ExceptEventTypeFullNo(Value: Variant);
    procedure Set_ExceptEventTypeName(Value: Variant);
    procedure Set_ExceptEventTypeShortName(Value: Variant);
    { Methods & Properties }
    property ExceptEventTypeFullNo: Variant read Get_ExceptEventTypeFullNo write Set_ExceptEventTypeFullNo;
    property ExceptEventTypeName: Variant read Get_ExceptEventTypeName write Set_ExceptEventTypeName;
    property ExceptEventTypeShortName: Variant read Get_ExceptEventTypeShortName write Set_ExceptEventTypeShortName;
  end;

{ Forward Decls }

  TXMLTExceptEventType = class;

{ TXMLTExceptEventType }

  TXMLTExceptEventType = class(TXMLNode, IXMLTExceptEventType)
  protected
    { IXMLTExceptEventType }
    function Get_ExceptEventTypeFullNo: Variant;
    function Get_ExceptEventTypeName: Variant;
    function Get_ExceptEventTypeShortName: Variant;
    procedure Set_ExceptEventTypeFullNo(Value: Variant);
    procedure Set_ExceptEventTypeName(Value: Variant);
    procedure Set_ExceptEventTypeShortName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTExceptEventType;
function LoadUnknown(const FileName: string): IXMLTExceptEventType;
function NewUnknown: IXMLTExceptEventType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTExceptEventType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTExceptEventType, TargetNamespace) as IXMLTExceptEventType;
end;

function LoadUnknown(const FileName: string): IXMLTExceptEventType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTExceptEventType, TargetNamespace) as IXMLTExceptEventType;
end;

function NewUnknown: IXMLTExceptEventType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTExceptEventType, TargetNamespace) as IXMLTExceptEventType;
end;

{ TXMLTExceptEventType }

function TXMLTExceptEventType.Get_ExceptEventTypeFullNo: Variant;
begin
  Result := ChildNodes['ExceptEventTypeFullNo'].Text;
end;

procedure TXMLTExceptEventType.Set_ExceptEventTypeFullNo(Value: Variant);
begin
  ChildNodes['ExceptEventTypeFullNo'].NodeValue := Value;
end;

function TXMLTExceptEventType.Get_ExceptEventTypeName: Variant;
begin
  Result := ChildNodes['ExceptEventTypeName'].Text;
end;

procedure TXMLTExceptEventType.Set_ExceptEventTypeName(Value: Variant);
begin
  ChildNodes['ExceptEventTypeName'].NodeValue := Value;
end;

function TXMLTExceptEventType.Get_ExceptEventTypeShortName: Variant;
begin
  Result := ChildNodes['ExceptEventTypeShortName'].Text;
end;

procedure TXMLTExceptEventType.Set_ExceptEventTypeShortName(Value: Variant);
begin
  ChildNodes['ExceptEventTypeShortName'].NodeValue := Value;
end;

end.
