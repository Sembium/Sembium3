
{***********************************************************************}
{                                                                       }
{                           XML Data Binding                            }
{                                                                       }
{         Generated on: 17.9.2005 12:48:41                              }
{       Generated from: XMLSchemas\Public\TLanguage.xsd                 }
{                                                                       }
{***********************************************************************}

unit xTLanguage;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTLanguage = interface;

{ IXMLTLanguage }

  IXMLTLanguage = interface(IXMLNode)
    ['{785D7D72-EB1E-4E79-9EFE-F1BA44D3FECF}']
    { Property Accessors }
    function Get_LanguageName: Variant;
    procedure Set_LanguageName(Value: Variant);
    { Methods & Properties }
    property LanguageName: Variant read Get_LanguageName write Set_LanguageName;
  end;

{ Forward Decls }

  TXMLTLanguage = class;

{ TXMLTLanguage }

  TXMLTLanguage = class(TXMLNode, IXMLTLanguage)
  protected
    { IXMLTLanguage }
    function Get_LanguageName: Variant;
    procedure Set_LanguageName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTLanguage;
function LoadUnknown(const FileName: WideString): IXMLTLanguage;
function NewUnknown: IXMLTLanguage;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTLanguage;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTLanguage, TargetNamespace) as IXMLTLanguage;
end;

function LoadUnknown(const FileName: WideString): IXMLTLanguage;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTLanguage, TargetNamespace) as IXMLTLanguage;
end;

function NewUnknown: IXMLTLanguage;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTLanguage, TargetNamespace) as IXMLTLanguage;
end;

{ TXMLTLanguage }

function TXMLTLanguage.Get_LanguageName: Variant;
begin
  Result := ChildNodes['LanguageName'].NodeValue;
end;

procedure TXMLTLanguage.Set_LanguageName(Value: Variant);
begin
  ChildNodes['LanguageName'].NodeValue := Value;
end;

end.
