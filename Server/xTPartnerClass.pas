
{***************************************************************************}
{                                                                           }
{                             XML Data Binding                              }
{                                                                           }
{         Generated on: 16.9.2005 15:51:17                                  }
{       Generated from: XMLSchemas\Public\TPartnerClass.xsd                 }
{                                                                           }
{***************************************************************************}

unit xTPartnerClass;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTPartnerClass = interface;

{ IXMLTPartnerClass }

  IXMLTPartnerClass = interface(IXMLNode)
    ['{FE3DAC22-CD12-41F0-83ED-4AE92C7C597F}']
    { Property Accessors }
    function Get_PartnerClassName: Variant;
    function Get_PartnerClassAbbrev: Variant;
    procedure Set_PartnerClassName(Value: Variant);
    procedure Set_PartnerClassAbbrev(Value: Variant);
    { Methods & Properties }
    property PartnerClassName: Variant read Get_PartnerClassName write Set_PartnerClassName;
    property PartnerClassAbbrev: Variant read Get_PartnerClassAbbrev write Set_PartnerClassAbbrev;
  end;

{ Forward Decls }

  TXMLTPartnerClass = class;

{ TXMLTPartnerClass }

  TXMLTPartnerClass = class(TXMLNode, IXMLTPartnerClass)
  protected
    { IXMLTPartnerClass }
    function Get_PartnerClassName: Variant;
    function Get_PartnerClassAbbrev: Variant;
    procedure Set_PartnerClassName(Value: Variant);
    procedure Set_PartnerClassAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTPartnerClass;
function LoadUnknown(const FileName: WideString): IXMLTPartnerClass;
function NewUnknown: IXMLTPartnerClass;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTPartnerClass;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTPartnerClass, TargetNamespace) as IXMLTPartnerClass;
end;

function LoadUnknown(const FileName: WideString): IXMLTPartnerClass;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTPartnerClass, TargetNamespace) as IXMLTPartnerClass;
end;

function NewUnknown: IXMLTPartnerClass;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTPartnerClass, TargetNamespace) as IXMLTPartnerClass;
end;

{ TXMLTPartnerClass }

function TXMLTPartnerClass.Get_PartnerClassName: Variant;
begin
  Result := ChildNodes['PartnerClassName'].NodeValue;
end;

procedure TXMLTPartnerClass.Set_PartnerClassName(Value: Variant);
begin
  ChildNodes['PartnerClassName'].NodeValue := Value;
end;

function TXMLTPartnerClass.Get_PartnerClassAbbrev: Variant;
begin
  Result := ChildNodes['PartnerClassAbbrev'].NodeValue;
end;

procedure TXMLTPartnerClass.Set_PartnerClassAbbrev(Value: Variant);
begin
  ChildNodes['PartnerClassAbbrev'].NodeValue := Value;
end;

end.
