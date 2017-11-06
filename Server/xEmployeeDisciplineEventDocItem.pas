
{********************************************************************************************}
{                                                                                            }
{                                      XML Data Binding                                      }
{                                                                                            }
{         Generated on: 12.1.2006 15:27:34                                                   }
{       Generated from: XMLSchemas\Public\EmployeeDisciplineEventDocItem.xsd                 }
{                                                                                            }
{********************************************************************************************}

unit xEmployeeDisciplineEventDocItem;

interface

uses
  xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTEmployeeDisciplineEvent;

type

{ Forward Decls }

  IXMLTEmployeeDisciplineEventDocItem = interface;

{ IXMLTEmployeeDisciplineEventDocItem }

  IXMLTEmployeeDisciplineEventDocItem = interface(IXMLTBaseObjectDocItem)
    ['{358CA50C-E796-4289-9AF0-79DBA20170CE}']
    { Property Accessors }
    function Get_EmployeeDisciplineEvent: IXMLTEmployeeDisciplineEvent;
    { Methods & Properties }
    property EmployeeDisciplineEvent: IXMLTEmployeeDisciplineEvent read Get_EmployeeDisciplineEvent;
  end;

{ Forward Decls }

  TXMLTEmployeeDisciplineEventDocItem = class;

{ TXMLTEmployeeDisciplineEventDocItem }

  TXMLTEmployeeDisciplineEventDocItem = class(TXMLTBaseObjectDocItem, IXMLTEmployeeDisciplineEventDocItem)
  protected
    { IXMLTEmployeeDisciplineEventDocItem }
    function Get_EmployeeDisciplineEvent: IXMLTEmployeeDisciplineEvent;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetEmployeeDisciplineEventDocItem(Doc: IXMLDocument): IXMLTEmployeeDisciplineEventDocItem;
function LoadEmployeeDisciplineEventDocItem(const FileName: WideString): IXMLTEmployeeDisciplineEventDocItem;
function NewEmployeeDisciplineEventDocItem: IXMLTEmployeeDisciplineEventDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetEmployeeDisciplineEventDocItem(Doc: IXMLDocument): IXMLTEmployeeDisciplineEventDocItem;
begin
  Result := Doc.GetDocBinding('EmployeeDisciplineEventDocItem', TXMLTEmployeeDisciplineEventDocItem, TargetNamespace) as IXMLTEmployeeDisciplineEventDocItem;
end;

function LoadEmployeeDisciplineEventDocItem(const FileName: WideString): IXMLTEmployeeDisciplineEventDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('EmployeeDisciplineEventDocItem', TXMLTEmployeeDisciplineEventDocItem, TargetNamespace) as IXMLTEmployeeDisciplineEventDocItem;
end;

function NewEmployeeDisciplineEventDocItem: IXMLTEmployeeDisciplineEventDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('EmployeeDisciplineEventDocItem', TXMLTEmployeeDisciplineEventDocItem, TargetNamespace) as IXMLTEmployeeDisciplineEventDocItem;
end;

{ TXMLTEmployeeDisciplineEventDocItem }

procedure TXMLTEmployeeDisciplineEventDocItem.AfterConstruction;
begin
  RegisterChildNode('EmployeeDisciplineEvent', TXMLTEmployeeDisciplineEvent);
  inherited;
end;

function TXMLTEmployeeDisciplineEventDocItem.Get_EmployeeDisciplineEvent: IXMLTEmployeeDisciplineEvent;
begin
  Result := ChildNodes['EmployeeDisciplineEvent'] as IXMLTEmployeeDisciplineEvent;
end;

end.
