
{************************************************************************}
{                                                                        }
{                            XML Data Binding                            }
{                                                                        }
{         Generated on: 17.9.2005 13:56:16                               }
{       Generated from: XMLSchemas\Public\TEducation.xsd                 }
{                                                                        }
{************************************************************************}

unit xTEducation;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTEducation = interface;

{ IXMLTEducation }

  IXMLTEducation = interface(IXMLNode)
    ['{AA2D70E6-40FE-434E-9ECD-A29CD69F8CED}']
    { Property Accessors }
    function Get_EducationName: Variant;
    function Get_EducationShortName: Variant;
    procedure Set_EducationName(Value: Variant);
    procedure Set_EducationShortName(Value: Variant);
    { Methods & Properties }
    property EducationName: Variant read Get_EducationName write Set_EducationName;
    property EducationShortName: Variant read Get_EducationShortName write Set_EducationShortName;
  end;

{ Forward Decls }

  TXMLTEducation = class;

{ TXMLTEducation }

  TXMLTEducation = class(TXMLNode, IXMLTEducation)
  protected
    { IXMLTEducation }
    function Get_EducationName: Variant;
    function Get_EducationShortName: Variant;
    procedure Set_EducationName(Value: Variant);
    procedure Set_EducationShortName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEducation;
function LoadUnknown(const FileName: WideString): IXMLTEducation;
function NewUnknown: IXMLTEducation;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEducation;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTEducation, TargetNamespace) as IXMLTEducation;
end;

function LoadUnknown(const FileName: WideString): IXMLTEducation;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTEducation, TargetNamespace) as IXMLTEducation;
end;

function NewUnknown: IXMLTEducation;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTEducation, TargetNamespace) as IXMLTEducation;
end;

{ TXMLTEducation }

function TXMLTEducation.Get_EducationName: Variant;
begin
  Result := ChildNodes['EducationName'].NodeValue;
end;

procedure TXMLTEducation.Set_EducationName(Value: Variant);
begin
  ChildNodes['EducationName'].NodeValue := Value;
end;

function TXMLTEducation.Get_EducationShortName: Variant;
begin
  Result := ChildNodes['EducationShortName'].NodeValue;
end;

procedure TXMLTEducation.Set_EducationShortName(Value: Variant);
begin
  ChildNodes['EducationShortName'].NodeValue := Value;
end;

end.
