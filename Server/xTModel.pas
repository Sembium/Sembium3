
{*************************************************************************}
{                                                                         }
{                            XML Data Binding                             }
{                                                                         }
{         Generated on: 11.3.2013 17:54:35                                }
{       Generated from: XMLSchemas\Public\TModel.xsd                 }
{                                                                         }
{*************************************************************************}

unit xTModel;

interface

uses xmldom, XMLDoc, XMLIntf, xTDept;

type

{ Forward Decls }

  IXMLTModel = interface;

{ IXMLTModel }

  IXMLTModel = interface(IXMLNode)
    ['{207BDB87-CB8D-43D9-84A0-D2DD34CD809C}']
    { Property Accessors }
    function Get_Identifier: Variant;
    procedure Set_Identifier(Value: Variant);
    { Methods & Properties }
    property Identifier: Variant read Get_Identifier write Set_Identifier;
  end;

{ Forward Decls }

  TXMLTModel = class;

{ TXMLTModel }

  TXMLTModel = class(TXMLNode, IXMLTModel)
  protected
    { IXMLTModel }
    function Get_Identifier: Variant;
    procedure Set_Identifier(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTModel;
function LoadUnknown(const FileName: WideString): IXMLTModel;
function NewUnknown: IXMLTModel;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTModel;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTModel, TargetNamespace) as IXMLTModel;
end;

function LoadUnknown(const FileName: WideString): IXMLTModel;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTModel, TargetNamespace) as IXMLTModel;
end;

function NewUnknown: IXMLTModel;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTModel, TargetNamespace) as IXMLTModel;
end;

{ TXMLTModel }

function TXMLTModel.Get_Identifier: Variant;
begin
  Result := ChildNodes['Identifier'].NodeValue;
end;

procedure TXMLTModel.Set_Identifier(Value: Variant);
begin
  ChildNodes['Identifier'].NodeValue := Value;
end;

end.
