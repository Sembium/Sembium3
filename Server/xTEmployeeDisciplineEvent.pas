
{**************************************************************************************}
{                                                                                      }
{                                   XML Data Binding                                   }
{                                                                                      }
{         Generated on: 23.2.2006 09:56:58                                             }
{       Generated from: XMLSchemas\Public\TEmployeeDisciplineEvent.xsd                 }
{                                                                                      }
{**************************************************************************************}

unit xTEmployeeDisciplineEvent;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTEmployee, xTDate, xTDisciplineEventType, xTDateTime;

type

{ Forward Decls }

  IXMLTEmployeeDisciplineEvent = interface;

{ IXMLTEmployeeDisciplineEvent }

  IXMLTEmployeeDisciplineEvent = interface(IXMLNode)
    ['{D555DF8F-6C31-4332-A221-DCD040C2BFBE}']
    { Property Accessors }
    function Get_Employee: IXMLTEmployee;
    function Get_DisciplineEventDate: IXMLTDate;
    function Get_DisciplineEventType: IXMLTDisciplineEventType;
    function Get_AuthorizeEmployee: IXMLTEmployee;
    function Get_DisciplineEventComment: Variant;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_StornoEmployee: IXMLTEmployee;
    function Get_StornoDateTime: IXMLTDateTime;
    procedure Set_DisciplineEventComment(Value: Variant);
    { Methods & Properties }
    property Employee: IXMLTEmployee read Get_Employee;
    property DisciplineEventDate: IXMLTDate read Get_DisciplineEventDate;
    property DisciplineEventType: IXMLTDisciplineEventType read Get_DisciplineEventType;
    property AuthorizeEmployee: IXMLTEmployee read Get_AuthorizeEmployee;
    property DisciplineEventComment: Variant read Get_DisciplineEventComment write Set_DisciplineEventComment;
    property CreateEmployee: IXMLTEmployee read Get_CreateEmployee;
    property CreateDateTime: IXMLTDateTime read Get_CreateDateTime;
    property StornoEmployee: IXMLTEmployee read Get_StornoEmployee;
    property StornoDateTime: IXMLTDateTime read Get_StornoDateTime;
  end;

{ Forward Decls }

  TXMLTEmployeeDisciplineEvent = class;

{ TXMLTEmployeeDisciplineEvent }

  TXMLTEmployeeDisciplineEvent = class(TXMLNode, IXMLTEmployeeDisciplineEvent)
  protected
    { IXMLTEmployeeDisciplineEvent }
    function Get_Employee: IXMLTEmployee;
    function Get_DisciplineEventDate: IXMLTDate;
    function Get_DisciplineEventType: IXMLTDisciplineEventType;
    function Get_AuthorizeEmployee: IXMLTEmployee;
    function Get_DisciplineEventComment: Variant;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_StornoEmployee: IXMLTEmployee;
    function Get_StornoDateTime: IXMLTDateTime;
    procedure Set_DisciplineEventComment(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEmployeeDisciplineEvent;
function LoadUnknown(const FileName: WideString): IXMLTEmployeeDisciplineEvent;
function NewUnknown: IXMLTEmployeeDisciplineEvent;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEmployeeDisciplineEvent;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTEmployeeDisciplineEvent, TargetNamespace) as IXMLTEmployeeDisciplineEvent;
end;

function LoadUnknown(const FileName: WideString): IXMLTEmployeeDisciplineEvent;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTEmployeeDisciplineEvent, TargetNamespace) as IXMLTEmployeeDisciplineEvent;
end;

function NewUnknown: IXMLTEmployeeDisciplineEvent;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTEmployeeDisciplineEvent, TargetNamespace) as IXMLTEmployeeDisciplineEvent;
end;

{ TXMLTEmployeeDisciplineEvent }

procedure TXMLTEmployeeDisciplineEvent.AfterConstruction;
begin
  RegisterChildNode('Employee', TXMLTEmployee);
  RegisterChildNode('DisciplineEventDate', TXMLTDate);
  RegisterChildNode('DisciplineEventType', TXMLTDisciplineEventType);
  RegisterChildNode('AuthorizeEmployee', TXMLTEmployee);
  RegisterChildNode('CreateEmployee', TXMLTEmployee);
  RegisterChildNode('CreateDateTime', TXMLTDateTime);
  RegisterChildNode('StornoEmployee', TXMLTEmployee);
  RegisterChildNode('StornoDateTime', TXMLTDateTime);
  inherited;
end;

function TXMLTEmployeeDisciplineEvent.Get_Employee: IXMLTEmployee;
begin
  Result := ChildNodes['Employee'] as IXMLTEmployee;
end;

function TXMLTEmployeeDisciplineEvent.Get_DisciplineEventDate: IXMLTDate;
begin
  Result := ChildNodes['DisciplineEventDate'] as IXMLTDate;
end;

function TXMLTEmployeeDisciplineEvent.Get_DisciplineEventType: IXMLTDisciplineEventType;
begin
  Result := ChildNodes['DisciplineEventType'] as IXMLTDisciplineEventType;
end;

function TXMLTEmployeeDisciplineEvent.Get_AuthorizeEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['AuthorizeEmployee'] as IXMLTEmployee;
end;

function TXMLTEmployeeDisciplineEvent.Get_DisciplineEventComment: Variant;
begin
  Result := ChildNodes['DisciplineEventComment'].NodeValue;
end;

procedure TXMLTEmployeeDisciplineEvent.Set_DisciplineEventComment(Value: Variant);
begin
  ChildNodes['DisciplineEventComment'].NodeValue := Value;
end;

function TXMLTEmployeeDisciplineEvent.Get_CreateEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['CreateEmployee'] as IXMLTEmployee;
end;

function TXMLTEmployeeDisciplineEvent.Get_CreateDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['CreateDateTime'] as IXMLTDateTime;
end;

function TXMLTEmployeeDisciplineEvent.Get_StornoEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['StornoEmployee'] as IXMLTEmployee;
end;

function TXMLTEmployeeDisciplineEvent.Get_StornoDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['StornoDateTime'] as IXMLTDateTime;
end;

end.
