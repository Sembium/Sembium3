
{*************************************************************************************************}
{                                                                                                 }
{                                        XML Data Binding                                         }
{                                                                                                 }
{         Generated on: 27.4.2006 17:06:16                                                        }
{       Generated from: XMLSchemas\Public\OccupationEmployeeAssignmentDocItem.xsd                 }
{                                                                                                 }
{*************************************************************************************************}

unit xOccupationEmployeeAssignmentDocItem;

interface

uses
  xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTOccupationEmployeeAssignment;

type

{ Forward Decls }

  IXMLTOccupationEmployeeAssignmentDocItem = interface;

{ IXMLTOccupationEmployeeAssignmentDocItem }

  IXMLTOccupationEmployeeAssignmentDocItem = interface(IXMLTBaseObjectDocItem)
    ['{C17ABF2A-817A-4434-BFD3-B28C39ABC02A}']
    { Property Accessors }
    function Get_OccupationEmployeeAssignment: IXMLTOccupationEmployeeAssignment;
    { Methods & Properties }
    property OccupationEmployeeAssignment: IXMLTOccupationEmployeeAssignment read Get_OccupationEmployeeAssignment;
  end;

{ Forward Decls }

  TXMLTOccupationEmployeeAssignmentDocItem = class;

{ TXMLTOccupationEmployeeAssignmentDocItem }

  TXMLTOccupationEmployeeAssignmentDocItem = class(TXMLTBaseObjectDocItem, IXMLTOccupationEmployeeAssignmentDocItem)
  protected
    { IXMLTOccupationEmployeeAssignmentDocItem }
    function Get_OccupationEmployeeAssignment: IXMLTOccupationEmployeeAssignment;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetOccupationEmployeeAssignmentDocItem(Doc: IXMLDocument): IXMLTOccupationEmployeeAssignmentDocItem;
function LoadOccupationEmployeeAssignmentDocItem(const FileName: WideString): IXMLTOccupationEmployeeAssignmentDocItem;
function NewOccupationEmployeeAssignmentDocItem: IXMLTOccupationEmployeeAssignmentDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetOccupationEmployeeAssignmentDocItem(Doc: IXMLDocument): IXMLTOccupationEmployeeAssignmentDocItem;
begin
  Result := Doc.GetDocBinding('OccupationEmployeeAssignmentDocItem', TXMLTOccupationEmployeeAssignmentDocItem, TargetNamespace) as IXMLTOccupationEmployeeAssignmentDocItem;
end;

function LoadOccupationEmployeeAssignmentDocItem(const FileName: WideString): IXMLTOccupationEmployeeAssignmentDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('OccupationEmployeeAssignmentDocItem', TXMLTOccupationEmployeeAssignmentDocItem, TargetNamespace) as IXMLTOccupationEmployeeAssignmentDocItem;
end;

function NewOccupationEmployeeAssignmentDocItem: IXMLTOccupationEmployeeAssignmentDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('OccupationEmployeeAssignmentDocItem', TXMLTOccupationEmployeeAssignmentDocItem, TargetNamespace) as IXMLTOccupationEmployeeAssignmentDocItem;
end;

{ TXMLTOccupationEmployeeAssignmentDocItem }

procedure TXMLTOccupationEmployeeAssignmentDocItem.AfterConstruction;
begin
  RegisterChildNode('OccupationEmployeeAssignment', TXMLTOccupationEmployeeAssignment);
  inherited;
end;

function TXMLTOccupationEmployeeAssignmentDocItem.Get_OccupationEmployeeAssignment: IXMLTOccupationEmployeeAssignment;
begin
  Result := ChildNodes['OccupationEmployeeAssignment'] as IXMLTOccupationEmployeeAssignment;
end;

end.
