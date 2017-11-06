
{*****************************************************************************}
{                                                                             }
{                              XML Data Binding                               }
{                                                                             }
{         Generated on: 25.8.2005 11:41:08                                    }
{       Generated from: XMLSchemas\Public\EmployeeDocItem.xsd                 }
{                                                                             }
{*****************************************************************************}

unit xEmployeeDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTEmployee;

type

{ Forward Decls }

  IXMLTEmployeeDocItem = interface;

{ IXMLTEmployeeDocItem }

  IXMLTEmployeeDocItem = interface(IXMLTBaseObjectDocItem)
    ['{F7B6E3B3-3801-4CF8-873F-A19EAC0C2964}']
    { Property Accessors }
    function Get_Employee: IXMLTEmployee;
    { Methods & Properties }
    property Employee: IXMLTEmployee read Get_Employee;
  end;

{ Forward Decls }

  TXMLTEmployeeDocItem = class;

{ TXMLTEmployeeDocItem }

  TXMLTEmployeeDocItem = class(TXMLTBaseObjectDocItem, IXMLTEmployeeDocItem)
  protected
    { IXMLTEmployeeDocItem }
    function Get_Employee: IXMLTEmployee;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetEmployeeDocItem(Doc: IXMLDocument): IXMLTEmployeeDocItem;
function LoadEmployeeDocItem(const FileName: WideString): IXMLTEmployeeDocItem;
function NewEmployeeDocItem: IXMLTEmployeeDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetEmployeeDocItem(Doc: IXMLDocument): IXMLTEmployeeDocItem;
begin
  Result := Doc.GetDocBinding('EmployeeDocItem', TXMLTEmployeeDocItem, TargetNamespace) as IXMLTEmployeeDocItem;
end;

function LoadEmployeeDocItem(const FileName: WideString): IXMLTEmployeeDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('EmployeeDocItem', TXMLTEmployeeDocItem, TargetNamespace) as IXMLTEmployeeDocItem;
end;

function NewEmployeeDocItem: IXMLTEmployeeDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('EmployeeDocItem', TXMLTEmployeeDocItem, TargetNamespace) as IXMLTEmployeeDocItem;
end;

{ TXMLTEmployeeDocItem }

procedure TXMLTEmployeeDocItem.AfterConstruction;
begin
  RegisterChildNode('Employee', TXMLTEmployee);
  inherited;
end;

function TXMLTEmployeeDocItem.Get_Employee: IXMLTEmployee;
begin
  Result := ChildNodes['Employee'] as IXMLTEmployee;
end;

end. 
