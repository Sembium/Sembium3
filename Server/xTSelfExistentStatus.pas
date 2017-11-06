
{*********************************************************************************}
{                                                                                 }
{                                XML Data Binding                                 }
{                                                                                 }
{         Generated on: 16.9.2005 14:30:08                                        }
{       Generated from: XMLSchemas\Public\TSelfExistentStatus.xsd                 }
{                                                                                 }
{*********************************************************************************}

unit xTSelfExistentStatus;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTSelfExistentStatus = interface;

{ IXMLTSelfExistentStatus }

  IXMLTSelfExistentStatus = interface(IXMLNode)
    ['{336BB1E2-5699-4D90-954F-EBF12058E464}']
    { Property Accessors }
    function Get_SelfExistentStatusName: Variant;
    procedure Set_SelfExistentStatusName(Value: Variant);
    { Methods & Properties }
    property SelfExistentStatusName: Variant read Get_SelfExistentStatusName write Set_SelfExistentStatusName;
  end;

{ Forward Decls }

  TXMLTSelfExistentStatus = class;

{ TXMLTSelfExistentStatus }

  TXMLTSelfExistentStatus = class(TXMLNode, IXMLTSelfExistentStatus)
  protected
    { IXMLTSelfExistentStatus }
    function Get_SelfExistentStatusName: Variant;
    procedure Set_SelfExistentStatusName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTSelfExistentStatus;
function LoadUnknown(const FileName: WideString): IXMLTSelfExistentStatus;
function NewUnknown: IXMLTSelfExistentStatus;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTSelfExistentStatus;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTSelfExistentStatus, TargetNamespace) as IXMLTSelfExistentStatus;
end;

function LoadUnknown(const FileName: WideString): IXMLTSelfExistentStatus;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTSelfExistentStatus, TargetNamespace) as IXMLTSelfExistentStatus;
end;

function NewUnknown: IXMLTSelfExistentStatus;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTSelfExistentStatus, TargetNamespace) as IXMLTSelfExistentStatus;
end;

{ TXMLTSelfExistentStatus }

function TXMLTSelfExistentStatus.Get_SelfExistentStatusName: Variant;
begin
  Result := ChildNodes['SelfExistentStatusName'].NodeValue;
end;

procedure TXMLTSelfExistentStatus.Set_SelfExistentStatusName(Value: Variant);
begin
  ChildNodes['SelfExistentStatusName'].NodeValue := Value;
end;

end.
