
{**************************************************************************}
{                                                                          }
{                             XML Data Binding                             }
{                                                                          }
{         Generated on: 21.9.2005 10:01:49                                 }
{       Generated from: XMLSchemas\Public\TCompanyType.xsd                 }
{                                                                          }
{**************************************************************************}

unit xTCompanyType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTCompanyType = interface;

{ IXMLTCompanyType }

  IXMLTCompanyType = interface(IXMLNode)
    ['{FC447785-98B6-47CB-9900-661CE71A62E6}']
    { Property Accessors }
    function Get_CompanyTypeName: Variant;
    function Get_CompanyTypeAbbrev: Variant;
    procedure Set_CompanyTypeName(Value: Variant);
    procedure Set_CompanyTypeAbbrev(Value: Variant);
    { Methods & Properties }
    property CompanyTypeName: Variant read Get_CompanyTypeName write Set_CompanyTypeName;
    property CompanyTypeAbbrev: Variant read Get_CompanyTypeAbbrev write Set_CompanyTypeAbbrev;
  end;

{ Forward Decls }

  TXMLTCompanyType = class;

{ TXMLTCompanyType }

  TXMLTCompanyType = class(TXMLNode, IXMLTCompanyType)
  protected
    { IXMLTCompanyType }
    function Get_CompanyTypeName: Variant;
    function Get_CompanyTypeAbbrev: Variant;
    procedure Set_CompanyTypeName(Value: Variant);
    procedure Set_CompanyTypeAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTCompanyType;
function LoadUnknown(const FileName: WideString): IXMLTCompanyType;
function NewUnknown: IXMLTCompanyType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTCompanyType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTCompanyType, TargetNamespace) as IXMLTCompanyType;
end;

function LoadUnknown(const FileName: WideString): IXMLTCompanyType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTCompanyType, TargetNamespace) as IXMLTCompanyType;
end;

function NewUnknown: IXMLTCompanyType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTCompanyType, TargetNamespace) as IXMLTCompanyType;
end;

{ TXMLTCompanyType }

function TXMLTCompanyType.Get_CompanyTypeName: Variant;
begin
  Result := ChildNodes['CompanyTypeName'].NodeValue;
end;

procedure TXMLTCompanyType.Set_CompanyTypeName(Value: Variant);
begin
  ChildNodes['CompanyTypeName'].NodeValue := Value;
end;

function TXMLTCompanyType.Get_CompanyTypeAbbrev: Variant;
begin
  Result := ChildNodes['CompanyTypeAbbrev'].NodeValue;
end;

procedure TXMLTCompanyType.Set_CompanyTypeAbbrev(Value: Variant);
begin
  ChildNodes['CompanyTypeAbbrev'].NodeValue := Value;
end;

end.
