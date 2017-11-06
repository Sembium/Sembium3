
{*************************************************************************************************}
{                                                                                                 }
{                                        XML Data Binding                                         }
{                                                                                                 }
{         Generated on: 27.4.2006 16:54:33                                                        }
{       Generated from: XMLSchemas\Public\TOccupationEmployeeAssignmentRegime.xsd                 }
{                                                                                                 }
{*************************************************************************************************}

unit xTOccupationEmployeeAssignmentRegime;

interface

uses
  xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTOccupationEmployeeAssignmentRegime = interface;

{ IXMLTOccupationEmployeeAssignmentRegime }

  IXMLTOccupationEmployeeAssignmentRegime = interface(IXMLNode)
    ['{BE626FB4-DDEA-4453-82DD-0127797B9C1B}']
    { Property Accessors }
    function Get_OccupationEmployeeAssignmentRegimeName: Variant;
    procedure Set_OccupationEmployeeAssignmentRegimeName(Value: Variant);
    { Methods & Properties }
    property OccupationEmployeeAssignmentRegimeName: Variant read Get_OccupationEmployeeAssignmentRegimeName write Set_OccupationEmployeeAssignmentRegimeName;
  end;

{ Forward Decls }

  TXMLTOccupationEmployeeAssignmentRegime = class;

{ TXMLTOccupationEmployeeAssignmentRegime }

  TXMLTOccupationEmployeeAssignmentRegime = class(TXMLNode, IXMLTOccupationEmployeeAssignmentRegime)
  protected
    { IXMLTOccupationEmployeeAssignmentRegime }
    function Get_OccupationEmployeeAssignmentRegimeName: Variant;
    procedure Set_OccupationEmployeeAssignmentRegimeName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTOccupationEmployeeAssignmentRegime;
function LoadUnknown(const FileName: WideString): IXMLTOccupationEmployeeAssignmentRegime;
function NewUnknown: IXMLTOccupationEmployeeAssignmentRegime;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTOccupationEmployeeAssignmentRegime;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTOccupationEmployeeAssignmentRegime, TargetNamespace) as IXMLTOccupationEmployeeAssignmentRegime;
end;

function LoadUnknown(const FileName: WideString): IXMLTOccupationEmployeeAssignmentRegime;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTOccupationEmployeeAssignmentRegime, TargetNamespace) as IXMLTOccupationEmployeeAssignmentRegime;
end;

function NewUnknown: IXMLTOccupationEmployeeAssignmentRegime;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTOccupationEmployeeAssignmentRegime, TargetNamespace) as IXMLTOccupationEmployeeAssignmentRegime;
end;

{ TXMLTOccupationEmployeeAssignmentRegime }

function TXMLTOccupationEmployeeAssignmentRegime.Get_OccupationEmployeeAssignmentRegimeName: Variant;
begin
  Result := ChildNodes['OccupationEmployeeAssignmentRegimeName'].NodeValue;
end;

procedure TXMLTOccupationEmployeeAssignmentRegime.Set_OccupationEmployeeAssignmentRegimeName(Value: Variant);
begin
  ChildNodes['OccupationEmployeeAssignmentRegimeName'].NodeValue := Value;
end;

end.
