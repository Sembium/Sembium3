
{*****************************************************************************************}
{                                                                                         }
{                                    XML Data Binding                                     }
{                                                                                         }
{         Generated on: 09.1.2006 18:51:25                                                }
{       Generated from: XMLSchemas\Public\TEmpHourAvailModifierReason.xsd                 }
{                                                                                         }
{*****************************************************************************************}

unit xTEmpHourAvailModifierReason;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTEmpHourAvailModifierReason = interface;

{ IXMLTEmpHourAvailModifierReason }

  IXMLTEmpHourAvailModifierReason = interface(IXMLNode)
    ['{B580C4B3-22CC-4C71-B993-2A14CEB92A33}']
    { Property Accessors }
    function Get_EmpHourAvailModifierReasonName: Variant;
    procedure Set_EmpHourAvailModifierReasonName(Value: Variant);
    { Methods & Properties }
    property EmpHourAvailModifierReasonName: Variant read Get_EmpHourAvailModifierReasonName write Set_EmpHourAvailModifierReasonName;
  end;

{ Forward Decls }

  TXMLTEmpHourAvailModifierReason = class;

{ TXMLTEmpHourAvailModifierReason }

  TXMLTEmpHourAvailModifierReason = class(TXMLNode, IXMLTEmpHourAvailModifierReason)
  protected
    { IXMLTEmpHourAvailModifierReason }
    function Get_EmpHourAvailModifierReasonName: Variant;
    procedure Set_EmpHourAvailModifierReasonName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEmpHourAvailModifierReason;
function LoadUnknown(const FileName: WideString): IXMLTEmpHourAvailModifierReason;
function NewUnknown: IXMLTEmpHourAvailModifierReason;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEmpHourAvailModifierReason;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTEmpHourAvailModifierReason, TargetNamespace) as IXMLTEmpHourAvailModifierReason;
end;

function LoadUnknown(const FileName: WideString): IXMLTEmpHourAvailModifierReason;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTEmpHourAvailModifierReason, TargetNamespace) as IXMLTEmpHourAvailModifierReason;
end;

function NewUnknown: IXMLTEmpHourAvailModifierReason;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTEmpHourAvailModifierReason, TargetNamespace) as IXMLTEmpHourAvailModifierReason;
end;

{ TXMLTEmpHourAvailModifierReason }

function TXMLTEmpHourAvailModifierReason.Get_EmpHourAvailModifierReasonName: Variant;
begin
  Result := ChildNodes['EmpHourAvailModifierReasonName'].NodeValue;
end;

procedure TXMLTEmpHourAvailModifierReason.Set_EmpHourAvailModifierReasonName(Value: Variant);
begin
  ChildNodes['EmpHourAvailModifierReasonName'].NodeValue := Value;
end;

end.
