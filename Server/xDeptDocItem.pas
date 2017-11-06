
{*************************************************************************}
{                                                                         }
{                            XML Data Binding                             }
{                                                                         }
{         Generated on: 25.8.2005 11:32:17                                }
{       Generated from: XMLSchemas\Public\DeptDocItem.xsd                 }
{                                                                         }
{*************************************************************************}

unit xDeptDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTDept;

type

{ Forward Decls }

  IXMLTDeptDocItem = interface;

{ IXMLTDeptDocItem }

  IXMLTDeptDocItem = interface(IXMLTBaseObjectDocItem)
    ['{06AAAB75-3852-4E26-9F90-F89B0A9F7C55}']
    { Property Accessors }
    function Get_Dept: IXMLTDept;
    { Methods & Properties }
    property Dept: IXMLTDept read Get_Dept;
  end;

{ Forward Decls }

  TXMLTDeptDocItem = class;

{ TXMLTDeptDocItem }

  TXMLTDeptDocItem = class(TXMLTBaseObjectDocItem, IXMLTDeptDocItem)
  protected
    { IXMLTDeptDocItem }
    function Get_Dept: IXMLTDept;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetDeptDocItem(Doc: IXMLDocument): IXMLTDeptDocItem;
function LoadDeptDocItem(const FileName: WideString): IXMLTDeptDocItem;
function NewDeptDocItem: IXMLTDeptDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetDeptDocItem(Doc: IXMLDocument): IXMLTDeptDocItem;
begin
  Result := Doc.GetDocBinding('DeptDocItem', TXMLTDeptDocItem, TargetNamespace) as IXMLTDeptDocItem;
end;

function LoadDeptDocItem(const FileName: WideString): IXMLTDeptDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('DeptDocItem', TXMLTDeptDocItem, TargetNamespace) as IXMLTDeptDocItem;
end;

function NewDeptDocItem: IXMLTDeptDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('DeptDocItem', TXMLTDeptDocItem, TargetNamespace) as IXMLTDeptDocItem;
end;

{ TXMLTDeptDocItem }

procedure TXMLTDeptDocItem.AfterConstruction;
begin
  RegisterChildNode('Dept', TXMLTDept);
  inherited;
end;

function TXMLTDeptDocItem.Get_Dept: IXMLTDept;
begin
  Result := ChildNodes['Dept'] as IXMLTDept;
end;

end. 
