
{*******************************************************************************************}
{                                                                                           }
{                                     XML Data Binding                                      }
{                                                                                           }
{         Generated on: 28.4.2006 16:05:33                                                  }
{       Generated from: XMLSchemas\Public\TOccupationEmployeeAssignment.xsd                 }
{                                                                                           }
{*******************************************************************************************}

unit xTOccupationEmployeeAssignment;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTOccupation, xTEmployee, xTDateInterval, xTSalary,
  xTOccupationEmployeeAssignmentRegime;

type

{ Forward Decls }

  IXMLTOccupationEmployeeAssignment = interface;

{ IXMLTOccupationEmployeeAssignment }

  IXMLTOccupationEmployeeAssignment = interface(IXMLNode)
    ['{18DC7931-AD91-4423-9D3F-8B7FA040A47A}']
    { Property Accessors }
    function Get_Occupation: IXMLTOccupation;
    function Get_Employee: IXMLTEmployee;
    function Get_AssignmentDateInterval: IXMLTDateInterval;
    function Get_OccupationEmployeeAssignmentRegime: IXMLTOccupationEmployeeAssignmentRegime;
    function Get_Salary: IXMLTSalary;
    function Get_AssignedProfessions: Variant;
    procedure Set_AssignedProfessions(Value: Variant);
    { Methods & Properties }
    property Occupation: IXMLTOccupation read Get_Occupation;
    property Employee: IXMLTEmployee read Get_Employee;
    property AssignmentDateInterval: IXMLTDateInterval read Get_AssignmentDateInterval;
    property OccupationEmployeeAssignmentRegime: IXMLTOccupationEmployeeAssignmentRegime read Get_OccupationEmployeeAssignmentRegime;
    property Salary: IXMLTSalary read Get_Salary;
    property AssignedProfessions: Variant read Get_AssignedProfessions write Set_AssignedProfessions;
  end;

{ Forward Decls }

  TXMLTOccupationEmployeeAssignment = class;

{ TXMLTOccupationEmployeeAssignment }

  TXMLTOccupationEmployeeAssignment = class(TXMLNode, IXMLTOccupationEmployeeAssignment)
  protected
    { IXMLTOccupationEmployeeAssignment }
    function Get_Occupation: IXMLTOccupation;
    function Get_Employee: IXMLTEmployee;
    function Get_AssignmentDateInterval: IXMLTDateInterval;
    function Get_OccupationEmployeeAssignmentRegime: IXMLTOccupationEmployeeAssignmentRegime;
    function Get_Salary: IXMLTSalary;
    function Get_AssignedProfessions: Variant;
    procedure Set_AssignedProfessions(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTOccupationEmployeeAssignment;
function LoadUnknown(const FileName: WideString): IXMLTOccupationEmployeeAssignment;
function NewUnknown: IXMLTOccupationEmployeeAssignment;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTOccupationEmployeeAssignment;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTOccupationEmployeeAssignment, TargetNamespace) as IXMLTOccupationEmployeeAssignment;
end;

function LoadUnknown(const FileName: WideString): IXMLTOccupationEmployeeAssignment;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTOccupationEmployeeAssignment, TargetNamespace) as IXMLTOccupationEmployeeAssignment;
end;

function NewUnknown: IXMLTOccupationEmployeeAssignment;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTOccupationEmployeeAssignment, TargetNamespace) as IXMLTOccupationEmployeeAssignment;
end;

{ TXMLTOccupationEmployeeAssignment }

procedure TXMLTOccupationEmployeeAssignment.AfterConstruction;
begin
  RegisterChildNode('Occupation', TXMLTOccupation);
  RegisterChildNode('Employee', TXMLTEmployee);
  RegisterChildNode('AssignmentDateInterval', TXMLTDateInterval);
  RegisterChildNode('OccupationEmployeeAssignmentRegime', TXMLTOccupationEmployeeAssignmentRegime);
  RegisterChildNode('Salary', TXMLTSalary);
  inherited;
end;

function TXMLTOccupationEmployeeAssignment.Get_Occupation: IXMLTOccupation;
begin
  Result := ChildNodes['Occupation'] as IXMLTOccupation;
end;

function TXMLTOccupationEmployeeAssignment.Get_Employee: IXMLTEmployee;
begin
  Result := ChildNodes['Employee'] as IXMLTEmployee;
end;

function TXMLTOccupationEmployeeAssignment.Get_AssignmentDateInterval: IXMLTDateInterval;
begin
  Result := ChildNodes['AssignmentDateInterval'] as IXMLTDateInterval;
end;

function TXMLTOccupationEmployeeAssignment.Get_OccupationEmployeeAssignmentRegime: IXMLTOccupationEmployeeAssignmentRegime;
begin
  Result := ChildNodes['OccupationEmployeeAssignmentRegime'] as IXMLTOccupationEmployeeAssignmentRegime;
end;

function TXMLTOccupationEmployeeAssignment.Get_Salary: IXMLTSalary;
begin
  Result := ChildNodes['Salary'] as IXMLTSalary;
end;

function TXMLTOccupationEmployeeAssignment.Get_AssignedProfessions: Variant;
begin
  Result := ChildNodes['AssignedProfessions'].NodeValue;
end;

procedure TXMLTOccupationEmployeeAssignment.Set_AssignedProfessions(Value: Variant);
begin
  ChildNodes['AssignedProfessions'].NodeValue := Value;
end;

end.
