
{***********************************************************************************}
{                                                                                   }
{                                 XML Data Binding                                  }
{                                                                                   }
{         Generated on: 09.1.2006 18:43:03                                          }
{       Generated from: XMLSchemas\Public\TEmpDayAbsenceDocType.xsd                 }
{                                                                                   }
{***********************************************************************************}

unit xTEmpDayAbsenceDocType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTEmpDayAbsenceDocType = interface;

{ IXMLTEmpDayAbsenceDocType }

  IXMLTEmpDayAbsenceDocType = interface(IXMLNode)
    ['{38077C6E-7398-475C-AEBE-D92F9FC30954}']
    { Property Accessors }
    function Get_EmpDayAbsenceDocName: Variant;
    procedure Set_EmpDayAbsenceDocName(Value: Variant);
    { Methods & Properties }
    property EmpDayAbsenceDocName: Variant read Get_EmpDayAbsenceDocName write Set_EmpDayAbsenceDocName;
  end;

{ Forward Decls }

  TXMLTEmpDayAbsenceDocType = class;

{ TXMLTEmpDayAbsenceDocType }

  TXMLTEmpDayAbsenceDocType = class(TXMLNode, IXMLTEmpDayAbsenceDocType)
  protected
    { IXMLTEmpDayAbsenceDocType }
    function Get_EmpDayAbsenceDocName: Variant;
    procedure Set_EmpDayAbsenceDocName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEmpDayAbsenceDocType;
function LoadUnknown(const FileName: WideString): IXMLTEmpDayAbsenceDocType;
function NewUnknown: IXMLTEmpDayAbsenceDocType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEmpDayAbsenceDocType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTEmpDayAbsenceDocType, TargetNamespace) as IXMLTEmpDayAbsenceDocType;
end;

function LoadUnknown(const FileName: WideString): IXMLTEmpDayAbsenceDocType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTEmpDayAbsenceDocType, TargetNamespace) as IXMLTEmpDayAbsenceDocType;
end;

function NewUnknown: IXMLTEmpDayAbsenceDocType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTEmpDayAbsenceDocType, TargetNamespace) as IXMLTEmpDayAbsenceDocType;
end;

{ TXMLTEmpDayAbsenceDocType }

function TXMLTEmpDayAbsenceDocType.Get_EmpDayAbsenceDocName: Variant;
begin
  Result := ChildNodes['EmpDayAbsenceDocName'].NodeValue;
end;

procedure TXMLTEmpDayAbsenceDocType.Set_EmpDayAbsenceDocName(Value: Variant);
begin
  ChildNodes['EmpDayAbsenceDocName'].NodeValue := Value;
end;

end.
