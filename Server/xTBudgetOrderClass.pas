
{*******************************************************************************}
{                                                                               }
{                               XML Data Binding                                }
{                                                                               }
{         Generated on: 11.1.2006 15:58:20                                      }
{       Generated from: XMLSchemas\Public\TBudgetOrderClass.xsd                 }
{                                                                               }
{*******************************************************************************}

unit xTBudgetOrderClass;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTBudgetOrderClass = interface;

{ IXMLTBudgetOrderClass }

  IXMLTBudgetOrderClass = interface(IXMLNode)
    ['{FA77DAEF-F880-4084-914E-4D7A99EFEDD4}']
    { Property Accessors }
    function Get_BudgetOrderClassName: Variant;
    procedure Set_BudgetOrderClassName(Value: Variant);
    { Methods & Properties }
    property BudgetOrderClassName: Variant read Get_BudgetOrderClassName write Set_BudgetOrderClassName;
  end;

{ Forward Decls }

  TXMLTBudgetOrderClass = class;

{ TXMLTBudgetOrderClass }

  TXMLTBudgetOrderClass = class(TXMLNode, IXMLTBudgetOrderClass)
  protected
    { IXMLTBudgetOrderClass }
    function Get_BudgetOrderClassName: Variant;
    procedure Set_BudgetOrderClassName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTBudgetOrderClass;
function LoadUnknown(const FileName: WideString): IXMLTBudgetOrderClass;
function NewUnknown: IXMLTBudgetOrderClass;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTBudgetOrderClass;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTBudgetOrderClass, TargetNamespace) as IXMLTBudgetOrderClass;
end;

function LoadUnknown(const FileName: WideString): IXMLTBudgetOrderClass;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTBudgetOrderClass, TargetNamespace) as IXMLTBudgetOrderClass;
end;

function NewUnknown: IXMLTBudgetOrderClass;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTBudgetOrderClass, TargetNamespace) as IXMLTBudgetOrderClass;
end;

{ TXMLTBudgetOrderClass }

function TXMLTBudgetOrderClass.Get_BudgetOrderClassName: Variant;
begin
  Result := ChildNodes['BudgetOrderClassName'].NodeValue;
end;

procedure TXMLTBudgetOrderClass.Set_BudgetOrderClassName(Value: Variant);
begin
  ChildNodes['BudgetOrderClassName'].NodeValue := Value;
end;

end.
