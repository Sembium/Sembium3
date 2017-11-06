
{*******************************************************************************}
{                                                                               }
{                               XML Data Binding                                }
{                                                                               }
{         Generated on: 10.1.2006 17:13:00                                      }
{       Generated from: XMLSchemas\Public\TEmpAvailModifier.xsd                 }
{                                                                               }
{*******************************************************************************}

unit xTEmpAvailModifier;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTTimeInterval, xTDateInterval, xTDateTime, xTEmployee,
  xTEmpHourAvailModifierReason, xTEmpAvailModifierType, xTEmpDayAbsenceDocType,
  xTEmpDayAbsenceReason, xTDate;

type

{ Forward Decls }

  IXMLTEmpAvailModifier = interface;

{ IXMLTEmpAvailModifier }

  IXMLTEmpAvailModifier = interface(IXMLNode)
    ['{85D87A83-8637-4159-BA8A-4A061D3F805F}']
    { Property Accessors }
    function Get_Employee: IXMLTEmployee;
    function Get_AuthorizeEmployee: IXMLTEmployee;
    function Get_EmpAvailModifierType: IXMLTEmpAvailModifierType;
    function Get_DateInterval: IXMLTDateInterval;
    function Get_EmpDayAbsenceReason: IXMLTEmpDayAbsenceReason;
    function Get_EmpDayAbsenceDocType: IXMLTEmpDayAbsenceDocType;
    function Get_EmpDayAbsenceDocNo: Variant;
    function Get_EmpDayAbsenceDocDate: IXMLTDate;
    function Get_EmpDayAbsenceDocIssuer: Variant;
    function Get_EmpHourAvailModifierReason: IXMLTEmpHourAvailModifierReason;
    function Get_TimeInterval: IXMLTTimeInterval;
    function Get_DurationHours: Variant;
    function Get_IsPersonalWorkdaysOnly: Variant;
    function Get_Notes: Variant;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_StornoEmployee: IXMLTEmployee;
    function Get_StornoDateTime: IXMLTDateTime;
    procedure Set_EmpDayAbsenceDocNo(Value: Variant);
    procedure Set_EmpDayAbsenceDocIssuer(Value: Variant);
    procedure Set_DurationHours(Value: Variant);
    procedure Set_IsPersonalWorkdaysOnly(Value: Variant);
    procedure Set_Notes(Value: Variant);
    { Methods & Properties }
    property Employee: IXMLTEmployee read Get_Employee;
    property AuthorizeEmployee: IXMLTEmployee read Get_AuthorizeEmployee;
    property EmpAvailModifierType: IXMLTEmpAvailModifierType read Get_EmpAvailModifierType;
    property DateInterval: IXMLTDateInterval read Get_DateInterval;
    property EmpDayAbsenceReason: IXMLTEmpDayAbsenceReason read Get_EmpDayAbsenceReason;
    property EmpDayAbsenceDocType: IXMLTEmpDayAbsenceDocType read Get_EmpDayAbsenceDocType;
    property EmpDayAbsenceDocNo: Variant read Get_EmpDayAbsenceDocNo write Set_EmpDayAbsenceDocNo;
    property EmpDayAbsenceDocDate: IXMLTDate read Get_EmpDayAbsenceDocDate;
    property EmpDayAbsenceDocIssuer: Variant read Get_EmpDayAbsenceDocIssuer write Set_EmpDayAbsenceDocIssuer;
    property EmpHourAvailModifierReason: IXMLTEmpHourAvailModifierReason read Get_EmpHourAvailModifierReason;
    property TimeInterval: IXMLTTimeInterval read Get_TimeInterval;
    property DurationHours: Variant read Get_DurationHours write Set_DurationHours;
    property IsPersonalWorkdaysOnly: Variant read Get_IsPersonalWorkdaysOnly write Set_IsPersonalWorkdaysOnly;
    property Notes: Variant read Get_Notes write Set_Notes;
    property CreateEmployee: IXMLTEmployee read Get_CreateEmployee;
    property CreateDateTime: IXMLTDateTime read Get_CreateDateTime;
    property StornoEmployee: IXMLTEmployee read Get_StornoEmployee;
    property StornoDateTime: IXMLTDateTime read Get_StornoDateTime;
  end;

{ Forward Decls }

  TXMLTEmpAvailModifier = class;

{ TXMLTEmpAvailModifier }

  TXMLTEmpAvailModifier = class(TXMLNode, IXMLTEmpAvailModifier)
  protected
    { IXMLTEmpAvailModifier }
    function Get_Employee: IXMLTEmployee;
    function Get_AuthorizeEmployee: IXMLTEmployee;
    function Get_EmpAvailModifierType: IXMLTEmpAvailModifierType;
    function Get_DateInterval: IXMLTDateInterval;
    function Get_EmpDayAbsenceReason: IXMLTEmpDayAbsenceReason;
    function Get_EmpDayAbsenceDocType: IXMLTEmpDayAbsenceDocType;
    function Get_EmpDayAbsenceDocNo: Variant;
    function Get_EmpDayAbsenceDocDate: IXMLTDate;
    function Get_EmpDayAbsenceDocIssuer: Variant;
    function Get_EmpHourAvailModifierReason: IXMLTEmpHourAvailModifierReason;
    function Get_TimeInterval: IXMLTTimeInterval;
    function Get_DurationHours: Variant;
    function Get_IsPersonalWorkdaysOnly: Variant;
    function Get_Notes: Variant;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_StornoEmployee: IXMLTEmployee;
    function Get_StornoDateTime: IXMLTDateTime;
    procedure Set_EmpDayAbsenceDocNo(Value: Variant);
    procedure Set_EmpDayAbsenceDocIssuer(Value: Variant);
    procedure Set_DurationHours(Value: Variant);
    procedure Set_IsPersonalWorkdaysOnly(Value: Variant);
    procedure Set_Notes(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEmpAvailModifier;
function LoadUnknown(const FileName: WideString): IXMLTEmpAvailModifier;
function NewUnknown: IXMLTEmpAvailModifier;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEmpAvailModifier;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTEmpAvailModifier, TargetNamespace) as IXMLTEmpAvailModifier;
end;

function LoadUnknown(const FileName: WideString): IXMLTEmpAvailModifier;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTEmpAvailModifier, TargetNamespace) as IXMLTEmpAvailModifier;
end;

function NewUnknown: IXMLTEmpAvailModifier;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTEmpAvailModifier, TargetNamespace) as IXMLTEmpAvailModifier;
end;

{ TXMLTEmpAvailModifier }

procedure TXMLTEmpAvailModifier.AfterConstruction;
begin
  RegisterChildNode('Employee', TXMLTEmployee);
  RegisterChildNode('AuthorizeEmployee', TXMLTEmployee);
  RegisterChildNode('EmpAvailModifierType', TXMLTEmpAvailModifierType);
  RegisterChildNode('DateInterval', TXMLTDateInterval);
  RegisterChildNode('EmpDayAbsenceReason', TXMLTEmpDayAbsenceReason);
  RegisterChildNode('EmpDayAbsenceDocType', TXMLTEmpDayAbsenceDocType);
  RegisterChildNode('EmpDayAbsenceDocDate', TXMLTDate);
  RegisterChildNode('EmpHourAvailModifierReason', TXMLTEmpHourAvailModifierReason);
  RegisterChildNode('TimeInterval', TXMLTTimeInterval);
  RegisterChildNode('CreateEmployee', TXMLTEmployee);
  RegisterChildNode('CreateDateTime', TXMLTDateTime);
  RegisterChildNode('StornoEmployee', TXMLTEmployee);
  RegisterChildNode('StornoDateTime', TXMLTDateTime);
  inherited;
end;

function TXMLTEmpAvailModifier.Get_Employee: IXMLTEmployee;
begin
  Result := ChildNodes['Employee'] as IXMLTEmployee;
end;

function TXMLTEmpAvailModifier.Get_AuthorizeEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['AuthorizeEmployee'] as IXMLTEmployee;
end;

function TXMLTEmpAvailModifier.Get_EmpAvailModifierType: IXMLTEmpAvailModifierType;
begin
  Result := ChildNodes['EmpAvailModifierType'] as IXMLTEmpAvailModifierType;
end;

function TXMLTEmpAvailModifier.Get_DateInterval: IXMLTDateInterval;
begin
  Result := ChildNodes['DateInterval'] as IXMLTDateInterval;
end;

function TXMLTEmpAvailModifier.Get_EmpDayAbsenceReason: IXMLTEmpDayAbsenceReason;
begin
  Result := ChildNodes['EmpDayAbsenceReason'] as IXMLTEmpDayAbsenceReason;
end;

function TXMLTEmpAvailModifier.Get_EmpDayAbsenceDocType: IXMLTEmpDayAbsenceDocType;
begin
  Result := ChildNodes['EmpDayAbsenceDocType'] as IXMLTEmpDayAbsenceDocType;
end;

function TXMLTEmpAvailModifier.Get_EmpDayAbsenceDocNo: Variant;
begin
  Result := ChildNodes['EmpDayAbsenceDocNo'].NodeValue;
end;

procedure TXMLTEmpAvailModifier.Set_EmpDayAbsenceDocNo(Value: Variant);
begin
  ChildNodes['EmpDayAbsenceDocNo'].NodeValue := Value;
end;

function TXMLTEmpAvailModifier.Get_EmpDayAbsenceDocDate: IXMLTDate;
begin
  Result := ChildNodes['EmpDayAbsenceDocDate'] as IXMLTDate;
end;

function TXMLTEmpAvailModifier.Get_EmpDayAbsenceDocIssuer: Variant;
begin
  Result := ChildNodes['EmpDayAbsenceDocIssuer'].NodeValue;
end;

procedure TXMLTEmpAvailModifier.Set_EmpDayAbsenceDocIssuer(Value: Variant);
begin
  ChildNodes['EmpDayAbsenceDocIssuer'].NodeValue := Value;
end;

function TXMLTEmpAvailModifier.Get_EmpHourAvailModifierReason: IXMLTEmpHourAvailModifierReason;
begin
  Result := ChildNodes['EmpHourAvailModifierReason'] as IXMLTEmpHourAvailModifierReason;
end;

function TXMLTEmpAvailModifier.Get_TimeInterval: IXMLTTimeInterval;
begin
  Result := ChildNodes['TimeInterval'] as IXMLTTimeInterval;
end;

function TXMLTEmpAvailModifier.Get_DurationHours: Variant;
begin
  Result := ChildNodes['DurationHours'].NodeValue;
end;

procedure TXMLTEmpAvailModifier.Set_DurationHours(Value: Variant);
begin
  ChildNodes['DurationHours'].NodeValue := Value;
end;

function TXMLTEmpAvailModifier.Get_IsPersonalWorkdaysOnly: Variant;
begin
  Result := ChildNodes['IsPersonalWorkdaysOnly'].NodeValue;
end;

procedure TXMLTEmpAvailModifier.Set_IsPersonalWorkdaysOnly(Value: Variant);
begin
  ChildNodes['IsPersonalWorkdaysOnly'].NodeValue := Value;
end;

function TXMLTEmpAvailModifier.Get_Notes: Variant;
begin
  Result := ChildNodes['Notes'].NodeValue;
end;

procedure TXMLTEmpAvailModifier.Set_Notes(Value: Variant);
begin
  ChildNodes['Notes'].NodeValue := Value;
end;

function TXMLTEmpAvailModifier.Get_CreateEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['CreateEmployee'] as IXMLTEmployee;
end;

function TXMLTEmpAvailModifier.Get_CreateDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['CreateDateTime'] as IXMLTDateTime;
end;

function TXMLTEmpAvailModifier.Get_StornoEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['StornoEmployee'] as IXMLTEmployee;
end;

function TXMLTEmpAvailModifier.Get_StornoDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['StornoDateTime'] as IXMLTDateTime;
end;

end.
