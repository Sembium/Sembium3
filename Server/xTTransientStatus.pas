
{******************************************************************************}
{                                                                              }
{                               XML Data Binding                               }
{                                                                              }
{         Generated on: 16.9.2005 14:32:00                                     }
{       Generated from: XMLSchemas\Public\TTransientStatus.xsd                 }
{                                                                              }
{******************************************************************************}

unit xTTransientStatus;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTTransientStatus = interface;

{ IXMLTTransientStatus }

  IXMLTTransientStatus = interface(IXMLNode)
    ['{1C045140-F9F1-4D59-A6A6-3E3A08CC612C}']
    { Property Accessors }
    function Get_TransientStatusName: Variant;
    procedure Set_TransientStatusName(Value: Variant);
    { Methods & Properties }
    property TransientStatusName: Variant read Get_TransientStatusName write Set_TransientStatusName;
  end;

{ Forward Decls }

  TXMLTTransientStatus = class;

{ TXMLTTransientStatus }

  TXMLTTransientStatus = class(TXMLNode, IXMLTTransientStatus)
  protected
    { IXMLTTransientStatus }
    function Get_TransientStatusName: Variant;
    procedure Set_TransientStatusName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTTransientStatus;
function LoadUnknown(const FileName: WideString): IXMLTTransientStatus;
function NewUnknown: IXMLTTransientStatus;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTTransientStatus;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTTransientStatus, TargetNamespace) as IXMLTTransientStatus;
end;

function LoadUnknown(const FileName: WideString): IXMLTTransientStatus;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTTransientStatus, TargetNamespace) as IXMLTTransientStatus;
end;

function NewUnknown: IXMLTTransientStatus;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTTransientStatus, TargetNamespace) as IXMLTTransientStatus;
end;

{ TXMLTTransientStatus }

function TXMLTTransientStatus.Get_TransientStatusName: Variant;
begin
  Result := ChildNodes['TransientStatusName'].NodeValue;
end;

procedure TXMLTTransientStatus.Set_TransientStatusName(Value: Variant);
begin
  ChildNodes['TransientStatusName'].NodeValue := Value;
end;

end.
