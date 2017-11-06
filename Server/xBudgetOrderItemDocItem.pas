
{************************************************************************************}
{                                                                                    }
{                                  XML Data Binding                                  }
{                                                                                    }
{         Generated on: 11.1.2006 18:23:20                                           }
{       Generated from: XMLSchemas\Public\BudgetOrderItemDocItem.xsd                 }
{                                                                                    }
{************************************************************************************}

unit xBudgetOrderItemDocItem;

interface

uses
  xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTBudgetOrderItem;

type

{ Forward Decls }

  IXMLTBudgetOrderItemDocItem = interface;

{ IXMLTBudgetOrderItemDocItem }

  IXMLTBudgetOrderItemDocItem = interface(IXMLTBaseObjectDocItem)
    ['{C6C1EA7C-BE6C-48F4-A86E-8D9F4C4AEDC2}']
    { Property Accessors }
    function Get_BudgetOrderItem: IXMLTBudgetOrderItem;
    { Methods & Properties }
    property BudgetOrderItem: IXMLTBudgetOrderItem read Get_BudgetOrderItem;
  end;

{ Forward Decls }

  TXMLTBudgetOrderItemDocItem = class;

{ TXMLTBudgetOrderItemDocItem }

  TXMLTBudgetOrderItemDocItem = class(TXMLTBaseObjectDocItem, IXMLTBudgetOrderItemDocItem)
  protected
    { IXMLTBudgetOrderItemDocItem }
    function Get_BudgetOrderItem: IXMLTBudgetOrderItem;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetBudgetOrderItemDocItem(Doc: IXMLDocument): IXMLTBudgetOrderItemDocItem;
function LoadBudgetOrderItemDocItem(const FileName: WideString): IXMLTBudgetOrderItemDocItem;
function NewBudgetOrderItemDocItem: IXMLTBudgetOrderItemDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetBudgetOrderItemDocItem(Doc: IXMLDocument): IXMLTBudgetOrderItemDocItem;
begin
  Result := Doc.GetDocBinding('BudgetOrderItemDocItem', TXMLTBudgetOrderItemDocItem, TargetNamespace) as IXMLTBudgetOrderItemDocItem;
end;

function LoadBudgetOrderItemDocItem(const FileName: WideString): IXMLTBudgetOrderItemDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('BudgetOrderItemDocItem', TXMLTBudgetOrderItemDocItem, TargetNamespace) as IXMLTBudgetOrderItemDocItem;
end;

function NewBudgetOrderItemDocItem: IXMLTBudgetOrderItemDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('BudgetOrderItemDocItem', TXMLTBudgetOrderItemDocItem, TargetNamespace) as IXMLTBudgetOrderItemDocItem;
end;

{ TXMLTBudgetOrderItemDocItem }

procedure TXMLTBudgetOrderItemDocItem.AfterConstruction;
begin
  RegisterChildNode('BudgetOrderItem', TXMLTBudgetOrderItem);
  inherited;
end;

function TXMLTBudgetOrderItemDocItem.Get_BudgetOrderItem: IXMLTBudgetOrderItem;
begin
  Result := ChildNodes['BudgetOrderItem'] as IXMLTBudgetOrderItem;
end;

end.
