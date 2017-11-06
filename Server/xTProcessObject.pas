
{****************************************************************************}
{                                                                            }
{                              XML Data Binding                              }
{                                                                            }
{         Generated on: 20.9.2005 17:07:26                                   }
{       Generated from: XMLSchemas\Public\TProcessObject.xsd                 }
{                                                                            }
{****************************************************************************}

unit xTProcessObject;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTProcessObject = interface;

{ IXMLTProcessObject }

  IXMLTProcessObject = interface(IXMLNode)
    ['{76A2BD68-4ABA-479D-BB46-1DFA30486E31}']
    { Property Accessors }
    function Get_ProcessObjectIdentifier: Variant;
    procedure Set_ProcessObjectIdentifier(Value: Variant);
    { Methods & Properties }
    property ProcessObjectIdentifier: Variant read Get_ProcessObjectIdentifier write Set_ProcessObjectIdentifier;
  end;

{ Forward Decls }

  TXMLTProcessObject = class;

{ TXMLTProcessObject }

  TXMLTProcessObject = class(TXMLNode, IXMLTProcessObject)
  protected
    { IXMLTProcessObject }
    function Get_ProcessObjectIdentifier: Variant;
    procedure Set_ProcessObjectIdentifier(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProcessObject;
function LoadUnknown(const FileName: WideString): IXMLTProcessObject;
function NewUnknown: IXMLTProcessObject;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProcessObject;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTProcessObject, TargetNamespace) as IXMLTProcessObject;
end;

function LoadUnknown(const FileName: WideString): IXMLTProcessObject;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTProcessObject, TargetNamespace) as IXMLTProcessObject;
end;

function NewUnknown: IXMLTProcessObject;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTProcessObject, TargetNamespace) as IXMLTProcessObject;
end;

{ TXMLTProcessObject }

function TXMLTProcessObject.Get_ProcessObjectIdentifier: Variant;
begin
  Result := ChildNodes['ProcessObjectIdentifier'].NodeValue;
end;

procedure TXMLTProcessObject.Set_ProcessObjectIdentifier(Value: Variant);
begin
  ChildNodes['ProcessObjectIdentifier'].NodeValue := Value;
end;

end.
