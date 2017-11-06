
{**********************************************************************************}
{                                                                                  }
{                                 XML Data Binding                                 }
{                                                                                  }
{         Generated on: 09.1.2006 18:34:38                                         }
{       Generated from: XMLSchemas\Public\TEmpDayAbsenceReason.xsd                 }
{                                                                                  }
{**********************************************************************************}

unit xTEmpDayAbsenceReason;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTEmpDayAbsenceReason = interface;

{ IXMLTEmpDayAbsenceReason }

  IXMLTEmpDayAbsenceReason = interface(IXMLNode)
    ['{0C8B30E9-F653-48AF-9DB1-72001B99F7E4}']
    { Property Accessors }
    function Get_EmpDayAbsenceReasonName: Variant;
    function Get_EmpDayAbsenceReasonAbbrev: Variant;
    procedure Set_EmpDayAbsenceReasonName(Value: Variant);
    procedure Set_EmpDayAbsenceReasonAbbrev(Value: Variant);
    { Methods & Properties }
    property EmpDayAbsenceReasonName: Variant read Get_EmpDayAbsenceReasonName write Set_EmpDayAbsenceReasonName;
    property EmpDayAbsenceReasonAbbrev: Variant read Get_EmpDayAbsenceReasonAbbrev write Set_EmpDayAbsenceReasonAbbrev;
  end;

{ Forward Decls }

  TXMLTEmpDayAbsenceReason = class;

{ TXMLTEmpDayAbsenceReason }

  TXMLTEmpDayAbsenceReason = class(TXMLNode, IXMLTEmpDayAbsenceReason)
  protected
    { IXMLTEmpDayAbsenceReason }
    function Get_EmpDayAbsenceReasonName: Variant;
    function Get_EmpDayAbsenceReasonAbbrev: Variant;
    procedure Set_EmpDayAbsenceReasonName(Value: Variant);
    procedure Set_EmpDayAbsenceReasonAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEmpDayAbsenceReason;
function LoadUnknown(const FileName: WideString): IXMLTEmpDayAbsenceReason;
function NewUnknown: IXMLTEmpDayAbsenceReason;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEmpDayAbsenceReason;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTEmpDayAbsenceReason, TargetNamespace) as IXMLTEmpDayAbsenceReason;
end;

function LoadUnknown(const FileName: WideString): IXMLTEmpDayAbsenceReason;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTEmpDayAbsenceReason, TargetNamespace) as IXMLTEmpDayAbsenceReason;
end;

function NewUnknown: IXMLTEmpDayAbsenceReason;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTEmpDayAbsenceReason, TargetNamespace) as IXMLTEmpDayAbsenceReason;
end;

{ TXMLTEmpDayAbsenceReason }

function TXMLTEmpDayAbsenceReason.Get_EmpDayAbsenceReasonName: Variant;
begin
  Result := ChildNodes['EmpDayAbsenceReasonName'].NodeValue;
end;

procedure TXMLTEmpDayAbsenceReason.Set_EmpDayAbsenceReasonName(Value: Variant);
begin
  ChildNodes['EmpDayAbsenceReasonName'].NodeValue := Value;
end;

function TXMLTEmpDayAbsenceReason.Get_EmpDayAbsenceReasonAbbrev: Variant;
begin
  Result := ChildNodes['EmpDayAbsenceReasonAbbrev'].NodeValue;
end;

procedure TXMLTEmpDayAbsenceReason.Set_EmpDayAbsenceReasonAbbrev(Value: Variant);
begin
  ChildNodes['EmpDayAbsenceReasonAbbrev'].NodeValue := Value;
end;

end.
