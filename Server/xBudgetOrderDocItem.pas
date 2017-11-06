
{********************************************************************************}
{                                                                                }
{                                XML Data Binding                                }
{                                                                                }
{         Generated on: 11.1.2006 17:23:06                                       }
{       Generated from: XMLSchemas\Public\BudgetOrderDocItem.xsd                 }
{                                                                                }
{********************************************************************************}

unit xBudgetOrderDocItem;

interface

uses
  xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTBudgetOrder;

type

{ Forward Decls }

  IXMLTBudgetOrderDocItem = interface;

{ IXMLTBudgetOrderDocItem }

  IXMLTBudgetOrderDocItem = interface(IXMLTBaseObjectDocItem)
    ['{4276307F-720A-491D-A57A-1A14959080ED}']
    { Property Accessors }
    function Get_BudgetOrder: IXMLTBudgetOrder;
    { Methods & Properties }
    property BudgetOrder: IXMLTBudgetOrder read Get_BudgetOrder;
  end;

{ Forward Decls }

  TXMLTBudgetOrderDocItem = class;

{ TXMLTBudgetOrderDocItem }

  TXMLTBudgetOrderDocItem = class(TXMLTBaseObjectDocItem, IXMLTBudgetOrderDocItem)
  protected
    { IXMLTBudgetOrderDocItem }
    function Get_BudgetOrder: IXMLTBudgetOrder;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetBudgetOrderDocItem(Doc: IXMLDocument): IXMLTBudgetOrderDocItem;
function LoadBudgetOrderDocItem(const FileName: WideString): IXMLTBudgetOrderDocItem;
function NewBudgetOrderDocItem: IXMLTBudgetOrderDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetBudgetOrderDocItem(Doc: IXMLDocument): IXMLTBudgetOrderDocItem;
begin
  Result := Doc.GetDocBinding('BudgetOrderDocItem', TXMLTBudgetOrderDocItem, TargetNamespace) as IXMLTBudgetOrderDocItem;
end;

function LoadBudgetOrderDocItem(const FileName: WideString): IXMLTBudgetOrderDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('BudgetOrderDocItem', TXMLTBudgetOrderDocItem, TargetNamespace) as IXMLTBudgetOrderDocItem;
end;

function NewBudgetOrderDocItem: IXMLTBudgetOrderDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('BudgetOrderDocItem', TXMLTBudgetOrderDocItem, TargetNamespace) as IXMLTBudgetOrderDocItem;
end;

{ TXMLTBudgetOrderDocItem }

procedure TXMLTBudgetOrderDocItem.AfterConstruction;
begin
  RegisterChildNode('BudgetOrder', TXMLTBudgetOrder);
  inherited;
end;

function TXMLTBudgetOrderDocItem.Get_BudgetOrder: IXMLTBudgetOrder;
begin
  Result := ChildNodes['BudgetOrder'] as IXMLTBudgetOrder;
end;

end.
