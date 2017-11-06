
{***********************************************************************}
{                                                                       }
{                           XML Data Binding                            }
{                                                                       }
{         Generated on: 28.4.2006 18:11:50                              }
{       Generated from: XMLSchemas\Public\TEmployee.xsd                 }
{                                                                       }
{***********************************************************************}

unit xTEmployee;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTPartner, xTEmployeeDisciplineRating;

type

{ Forward Decls }

  IXMLTEmployee = interface;

{ IXMLTEmployee }

  IXMLTEmployee = interface(IXMLTPartner)
    ['{1E8D4662-D140-4C9B-A8BB-6B71AFDA1634}']
    { Property Accessors }
    function Get_EmployeeProfessions: Variant;
    function Get_CurrentDisciplineRating: IXMLTEmployeeDisciplineRating;
    procedure Set_EmployeeProfessions(Value: Variant);
    { Methods & Properties }
    property EmployeeProfessions: Variant read Get_EmployeeProfessions write Set_EmployeeProfessions;
    property CurrentDisciplineRating: IXMLTEmployeeDisciplineRating read Get_CurrentDisciplineRating;
  end;

{ Forward Decls }

  TXMLTEmployee = class;

{ TXMLTEmployee }

  TXMLTEmployee = class(TXMLTPartner, IXMLTEmployee)
  protected
    { IXMLTEmployee }
    function Get_EmployeeProfessions: Variant;
    function Get_CurrentDisciplineRating: IXMLTEmployeeDisciplineRating;
    procedure Set_EmployeeProfessions(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEmployee;
function LoadUnknown(const FileName: WideString): IXMLTEmployee;
function NewUnknown: IXMLTEmployee;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEmployee;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTEmployee, TargetNamespace) as IXMLTEmployee;
end;

function LoadUnknown(const FileName: WideString): IXMLTEmployee;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTEmployee, TargetNamespace) as IXMLTEmployee;
end;

function NewUnknown: IXMLTEmployee;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTEmployee, TargetNamespace) as IXMLTEmployee;
end;

{ TXMLTEmployee }

procedure TXMLTEmployee.AfterConstruction;
begin
  RegisterChildNode('CurrentDisciplineRating', TXMLTEmployeeDisciplineRating);
  inherited;
end;

function TXMLTEmployee.Get_EmployeeProfessions: Variant;
begin
  Result := ChildNodes['EmployeeProfessions'].NodeValue;
end;

procedure TXMLTEmployee.Set_EmployeeProfessions(Value: Variant);
begin
  ChildNodes['EmployeeProfessions'].NodeValue := Value;
end;

function TXMLTEmployee.Get_CurrentDisciplineRating: IXMLTEmployeeDisciplineRating;
begin
  Result := ChildNodes['CurrentDisciplineRating'] as IXMLTEmployeeDisciplineRating;
end;

end.
