
{**************************************************************************}
{                                                                          }
{                             XML Data Binding                             }
{                                                                          }
{         Generated on: 12.1.2006 13:43:29                                 }
{       Generated from: XMLSchemas\Public\TBudgetOrder.xsd                 }
{                                                                          }
{**************************************************************************}

unit xTBudgetOrder;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTDateTime, xTBudgetOrderClass, xTDateInterval,
  xTEmployee, xTDept, xTBudgetOrderRegularityType;

type

{ Forward Decls }

  IXMLTBudgetOrder = interface;

{ IXMLTBudgetOrder }

  IXMLTBudgetOrder = interface(IXMLNode)
    ['{86743638-CC11-435A-9089-4B90C10BA6C5}']
    { Property Accessors }
    function Get_BudgetOrderBranch: IXMLTDept;
    function Get_BudgetOrderNo: Variant;
    function Get_BudgetOrderRegularityType: IXMLTBudgetOrderRegularityType;
    function Get_BudgetOrderClass: IXMLTBudgetOrderClass;
    function Get_GeneratorDept: IXMLTDept;
    function Get_DeveloperDept: IXMLTDept;
    function Get_Description: Variant;
    function Get_DateInterval: IXMLTDateInterval;
    function Get_TotalPrice: Variant;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_ChangeEmployee: IXMLTEmployee;
    function Get_ChangeDateTime: IXMLTDateTime;
    function Get_AnnulEmployee: IXMLTEmployee;
    function Get_AnnulDateTime: IXMLTDateTime;
    function Get_CloseEmployee: IXMLTEmployee;
    function Get_CloseDateTime: IXMLTDateTime;
    procedure Set_BudgetOrderNo(Value: Variant);
    procedure Set_Description(Value: Variant);
    procedure Set_TotalPrice(Value: Variant);
    { Methods & Properties }
    property BudgetOrderBranch: IXMLTDept read Get_BudgetOrderBranch;
    property BudgetOrderNo: Variant read Get_BudgetOrderNo write Set_BudgetOrderNo;
    property BudgetOrderRegularityType: IXMLTBudgetOrderRegularityType read Get_BudgetOrderRegularityType;
    property BudgetOrderClass: IXMLTBudgetOrderClass read Get_BudgetOrderClass;
    property GeneratorDept: IXMLTDept read Get_GeneratorDept;
    property DeveloperDept: IXMLTDept read Get_DeveloperDept;
    property Description: Variant read Get_Description write Set_Description;
    property DateInterval: IXMLTDateInterval read Get_DateInterval;
    property TotalPrice: Variant read Get_TotalPrice write Set_TotalPrice;
    property CreateEmployee: IXMLTEmployee read Get_CreateEmployee;
    property CreateDateTime: IXMLTDateTime read Get_CreateDateTime;
    property ChangeEmployee: IXMLTEmployee read Get_ChangeEmployee;
    property ChangeDateTime: IXMLTDateTime read Get_ChangeDateTime;
    property AnnulEmployee: IXMLTEmployee read Get_AnnulEmployee;
    property AnnulDateTime: IXMLTDateTime read Get_AnnulDateTime;
    property CloseEmployee: IXMLTEmployee read Get_CloseEmployee;
    property CloseDateTime: IXMLTDateTime read Get_CloseDateTime;
  end;

{ Forward Decls }

  TXMLTBudgetOrder = class;

{ TXMLTBudgetOrder }

  TXMLTBudgetOrder = class(TXMLNode, IXMLTBudgetOrder)
  protected
    { IXMLTBudgetOrder }
    function Get_BudgetOrderBranch: IXMLTDept;
    function Get_BudgetOrderNo: Variant;
    function Get_BudgetOrderRegularityType: IXMLTBudgetOrderRegularityType;
    function Get_BudgetOrderClass: IXMLTBudgetOrderClass;
    function Get_GeneratorDept: IXMLTDept;
    function Get_DeveloperDept: IXMLTDept;
    function Get_Description: Variant;
    function Get_DateInterval: IXMLTDateInterval;
    function Get_TotalPrice: Variant;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_ChangeEmployee: IXMLTEmployee;
    function Get_ChangeDateTime: IXMLTDateTime;
    function Get_AnnulEmployee: IXMLTEmployee;
    function Get_AnnulDateTime: IXMLTDateTime;
    function Get_CloseEmployee: IXMLTEmployee;
    function Get_CloseDateTime: IXMLTDateTime;
    procedure Set_BudgetOrderNo(Value: Variant);
    procedure Set_Description(Value: Variant);
    procedure Set_TotalPrice(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTBudgetOrder;
function LoadUnknown(const FileName: WideString): IXMLTBudgetOrder;
function NewUnknown: IXMLTBudgetOrder;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTBudgetOrder;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTBudgetOrder, TargetNamespace) as IXMLTBudgetOrder;
end;

function LoadUnknown(const FileName: WideString): IXMLTBudgetOrder;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTBudgetOrder, TargetNamespace) as IXMLTBudgetOrder;
end;

function NewUnknown: IXMLTBudgetOrder;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTBudgetOrder, TargetNamespace) as IXMLTBudgetOrder;
end;

{ TXMLTBudgetOrder }

procedure TXMLTBudgetOrder.AfterConstruction;
begin
  RegisterChildNode('BudgetOrderBranch', TXMLTDept);
  RegisterChildNode('BudgetOrderRegularityType', TXMLTBudgetOrderRegularityType);
  RegisterChildNode('BudgetOrderClass', TXMLTBudgetOrderClass);
  RegisterChildNode('GeneratorDept', TXMLTDept);
  RegisterChildNode('DeveloperDept', TXMLTDept);
  RegisterChildNode('DateInterval', TXMLTDateInterval);
  RegisterChildNode('CreateEmployee', TXMLTEmployee);
  RegisterChildNode('CreateDateTime', TXMLTDateTime);
  RegisterChildNode('ChangeEmployee', TXMLTEmployee);
  RegisterChildNode('ChangeDateTime', TXMLTDateTime);
  RegisterChildNode('AnnulEmployee', TXMLTEmployee);
  RegisterChildNode('AnnulDateTime', TXMLTDateTime);
  RegisterChildNode('CloseEmployee', TXMLTEmployee);
  RegisterChildNode('CloseDateTime', TXMLTDateTime);
  inherited;
end;

function TXMLTBudgetOrder.Get_BudgetOrderBranch: IXMLTDept;
begin
  Result := ChildNodes['BudgetOrderBranch'] as IXMLTDept;
end;

function TXMLTBudgetOrder.Get_BudgetOrderNo: Variant;
begin
  Result := ChildNodes['BudgetOrderNo'].NodeValue;
end;

procedure TXMLTBudgetOrder.Set_BudgetOrderNo(Value: Variant);
begin
  ChildNodes['BudgetOrderNo'].NodeValue := Value;
end;

function TXMLTBudgetOrder.Get_BudgetOrderRegularityType: IXMLTBudgetOrderRegularityType;
begin
  Result := ChildNodes['BudgetOrderRegularityType'] as IXMLTBudgetOrderRegularityType;
end;

function TXMLTBudgetOrder.Get_BudgetOrderClass: IXMLTBudgetOrderClass;
begin
  Result := ChildNodes['BudgetOrderClass'] as IXMLTBudgetOrderClass;
end;

function TXMLTBudgetOrder.Get_GeneratorDept: IXMLTDept;
begin
  Result := ChildNodes['GeneratorDept'] as IXMLTDept;
end;

function TXMLTBudgetOrder.Get_DeveloperDept: IXMLTDept;
begin
  Result := ChildNodes['DeveloperDept'] as IXMLTDept;
end;

function TXMLTBudgetOrder.Get_Description: Variant;
begin
  Result := ChildNodes['Description'].NodeValue;
end;

procedure TXMLTBudgetOrder.Set_Description(Value: Variant);
begin
  ChildNodes['Description'].NodeValue := Value;
end;

function TXMLTBudgetOrder.Get_DateInterval: IXMLTDateInterval;
begin
  Result := ChildNodes['DateInterval'] as IXMLTDateInterval;
end;

function TXMLTBudgetOrder.Get_TotalPrice: Variant;
begin
  Result := ChildNodes['TotalPrice'].NodeValue;
end;

procedure TXMLTBudgetOrder.Set_TotalPrice(Value: Variant);
begin
  ChildNodes['TotalPrice'].NodeValue := Value;
end;

function TXMLTBudgetOrder.Get_CreateEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['CreateEmployee'] as IXMLTEmployee;
end;

function TXMLTBudgetOrder.Get_CreateDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['CreateDateTime'] as IXMLTDateTime;
end;

function TXMLTBudgetOrder.Get_ChangeEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['ChangeEmployee'] as IXMLTEmployee;
end;

function TXMLTBudgetOrder.Get_ChangeDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['ChangeDateTime'] as IXMLTDateTime;
end;

function TXMLTBudgetOrder.Get_AnnulEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['AnnulEmployee'] as IXMLTEmployee;
end;

function TXMLTBudgetOrder.Get_AnnulDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['AnnulDateTime'] as IXMLTDateTime;
end;

function TXMLTBudgetOrder.Get_CloseEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['CloseEmployee'] as IXMLTEmployee;
end;

function TXMLTBudgetOrder.Get_CloseDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['CloseDateTime'] as IXMLTDateTime;
end;

end.
