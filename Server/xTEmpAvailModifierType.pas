
{***********************************************************************************}
{                                                                                   }
{                                 XML Data Binding                                  }
{                                                                                   }
{         Generated on: 10.1.2006 11:25:26                                          }
{       Generated from: XMLSchemas\Public\TEmpAvailModifierType.xsd                 }
{                                                                                   }
{***********************************************************************************}

unit xTEmpAvailModifierType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTEmpAvailModifierType = interface;

{ IXMLTEmpAvailModifierType }

  IXMLTEmpAvailModifierType = interface(IXMLNode)
    ['{6947027C-8FED-431F-AB17-2DE29A20DF47}']
    { Property Accessors }
    function Get_EmpAvailModifierTypeName: Variant;
    function Get_EmpAvailModifierTypeAbbrev: Variant;
    procedure Set_EmpAvailModifierTypeName(Value: Variant);
    procedure Set_EmpAvailModifierTypeAbbrev(Value: Variant);
    { Methods & Properties }
    property EmpAvailModifierTypeName: Variant read Get_EmpAvailModifierTypeName write Set_EmpAvailModifierTypeName;
    property EmpAvailModifierTypeAbbrev: Variant read Get_EmpAvailModifierTypeAbbrev write Set_EmpAvailModifierTypeAbbrev;
  end;

{ Forward Decls }

  TXMLTEmpAvailModifierType = class;

{ TXMLTEmpAvailModifierType }

  TXMLTEmpAvailModifierType = class(TXMLNode, IXMLTEmpAvailModifierType)
  protected
    { IXMLTEmpAvailModifierType }
    function Get_EmpAvailModifierTypeName: Variant;
    function Get_EmpAvailModifierTypeAbbrev: Variant;
    procedure Set_EmpAvailModifierTypeName(Value: Variant);
    procedure Set_EmpAvailModifierTypeAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEmpAvailModifierType;
function LoadUnknown(const FileName: WideString): IXMLTEmpAvailModifierType;
function NewUnknown: IXMLTEmpAvailModifierType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEmpAvailModifierType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTEmpAvailModifierType, TargetNamespace) as IXMLTEmpAvailModifierType;
end;

function LoadUnknown(const FileName: WideString): IXMLTEmpAvailModifierType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTEmpAvailModifierType, TargetNamespace) as IXMLTEmpAvailModifierType;
end;

function NewUnknown: IXMLTEmpAvailModifierType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTEmpAvailModifierType, TargetNamespace) as IXMLTEmpAvailModifierType;
end;

{ TXMLTEmpAvailModifierType }

function TXMLTEmpAvailModifierType.Get_EmpAvailModifierTypeName: Variant;
begin
  Result := ChildNodes['EmpAvailModifierTypeName'].NodeValue;
end;

procedure TXMLTEmpAvailModifierType.Set_EmpAvailModifierTypeName(Value: Variant);
begin
  ChildNodes['EmpAvailModifierTypeName'].NodeValue := Value;
end;

function TXMLTEmpAvailModifierType.Get_EmpAvailModifierTypeAbbrev: Variant;
begin
  Result := ChildNodes['EmpAvailModifierTypeAbbrev'].NodeValue;
end;

procedure TXMLTEmpAvailModifierType.Set_EmpAvailModifierTypeAbbrev(Value: Variant);
begin
  ChildNodes['EmpAvailModifierTypeAbbrev'].NodeValue := Value;
end;

end.
