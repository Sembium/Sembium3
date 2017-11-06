
{******************************************************************************}
{                                                                              }
{                               XML Data Binding                               }
{                                                                              }
{         Generated on: 20.11.2007 11:25:52                                    }
{       Generated from: XMLSchemas\Public\TBudgetOrderItem.xsd                 }
{                                                                              }
{******************************************************************************}

unit xTBudgetOrderItem;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTBudgetOrder, xTProduct, xTDept, xTBOIDistributionType,
  xTDateInterval, xTDateUnit, xTEmployee, xTDate, xTDateTime;

type

{ Forward Decls }

  IXMLTBudgetOrderItem = interface;

{ IXMLTBudgetOrderItem }

  IXMLTBudgetOrderItem = interface(IXMLNode)
    ['{8DCF0FD7-4E50-4F71-ADAF-52913F3B4794}']
    { Property Accessors }
    function Get_BudgetOrder: IXMLTBudgetOrder;
    function Get_BudgetOrderItemNo: Variant;
    function Get_BudgetProduct: IXMLTProduct;
    function Get_Dept: IXMLTDept;
    function Get_DistributionType: IXMLTBOIDistributionType;
    function Get_DateInterval: IXMLTDateInterval;
    function Get_DistributedSinglePrice: Variant;
    function Get_DistributionDateUnit: IXMLTDateUnit;
    function Get_TotalPrice: Variant;
    function Get_BudgetOrderPricePercent: Variant;
    function Get_IsConfirmed: Variant;
    function Get_IsForReconsideration: Variant;
    function Get_IsCanceled: Variant;
    function Get_DecisionEnterEmployee: IXMLTEmployee;
    function Get_DecisionEnterDate: IXMLTDate;
    function Get_DecisionApproveEmployee: IXMLTEmployee;
    function Get_DecisionApproveDate: IXMLTDate;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_ChangeEmployee: IXMLTEmployee;
    function Get_ChangeDateTime: IXMLTDateTime;
    function Get_AnnulEmployee: IXMLTEmployee;
    function Get_AnnulDateTime: IXMLTDateTime;
    function Get_CloseEmployee: IXMLTEmployee;
    function Get_CloseDateTime: IXMLTDateTime;
    procedure Set_BudgetOrderItemNo(Value: Variant);
    procedure Set_DistributedSinglePrice(Value: Variant);
    procedure Set_TotalPrice(Value: Variant);
    procedure Set_BudgetOrderPricePercent(Value: Variant);
    procedure Set_IsConfirmed(Value: Variant);
    procedure Set_IsForReconsideration(Value: Variant);
    procedure Set_IsCanceled(Value: Variant);
    { Methods & Properties }
    property BudgetOrder: IXMLTBudgetOrder read Get_BudgetOrder;
    property BudgetOrderItemNo: Variant read Get_BudgetOrderItemNo write Set_BudgetOrderItemNo;
    property BudgetProduct: IXMLTProduct read Get_BudgetProduct;
    property Dept: IXMLTDept read Get_Dept;
    property DistributionType: IXMLTBOIDistributionType read Get_DistributionType;
    property DateInterval: IXMLTDateInterval read Get_DateInterval;
    property DistributedSinglePrice: Variant read Get_DistributedSinglePrice write Set_DistributedSinglePrice;
    property DistributionDateUnit: IXMLTDateUnit read Get_DistributionDateUnit;
    property TotalPrice: Variant read Get_TotalPrice write Set_TotalPrice;
    property BudgetOrderPricePercent: Variant read Get_BudgetOrderPricePercent write Set_BudgetOrderPricePercent;
    property IsConfirmed: Variant read Get_IsConfirmed write Set_IsConfirmed;
    property IsForReconsideration: Variant read Get_IsForReconsideration write Set_IsForReconsideration;
    property IsCanceled: Variant read Get_IsCanceled write Set_IsCanceled;
    property DecisionEnterEmployee: IXMLTEmployee read Get_DecisionEnterEmployee;
    property DecisionEnterDate: IXMLTDate read Get_DecisionEnterDate;
    property DecisionApproveEmployee: IXMLTEmployee read Get_DecisionApproveEmployee;
    property DecisionApproveDate: IXMLTDate read Get_DecisionApproveDate;
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

  TXMLTBudgetOrderItem = class;

{ TXMLTBudgetOrderItem }

  TXMLTBudgetOrderItem = class(TXMLNode, IXMLTBudgetOrderItem)
  protected
    { IXMLTBudgetOrderItem }
    function Get_BudgetOrder: IXMLTBudgetOrder;
    function Get_BudgetOrderItemNo: Variant;
    function Get_BudgetProduct: IXMLTProduct;
    function Get_Dept: IXMLTDept;
    function Get_DistributionType: IXMLTBOIDistributionType;
    function Get_DateInterval: IXMLTDateInterval;
    function Get_DistributedSinglePrice: Variant;
    function Get_DistributionDateUnit: IXMLTDateUnit;
    function Get_TotalPrice: Variant;
    function Get_BudgetOrderPricePercent: Variant;
    function Get_IsConfirmed: Variant;
    function Get_IsForReconsideration: Variant;
    function Get_IsCanceled: Variant;
    function Get_DecisionEnterEmployee: IXMLTEmployee;
    function Get_DecisionEnterDate: IXMLTDate;
    function Get_DecisionApproveEmployee: IXMLTEmployee;
    function Get_DecisionApproveDate: IXMLTDate;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_ChangeEmployee: IXMLTEmployee;
    function Get_ChangeDateTime: IXMLTDateTime;
    function Get_AnnulEmployee: IXMLTEmployee;
    function Get_AnnulDateTime: IXMLTDateTime;
    function Get_CloseEmployee: IXMLTEmployee;
    function Get_CloseDateTime: IXMLTDateTime;
    procedure Set_BudgetOrderItemNo(Value: Variant);
    procedure Set_DistributedSinglePrice(Value: Variant);
    procedure Set_TotalPrice(Value: Variant);
    procedure Set_BudgetOrderPricePercent(Value: Variant);
    procedure Set_IsConfirmed(Value: Variant);
    procedure Set_IsForReconsideration(Value: Variant);
    procedure Set_IsCanceled(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTBudgetOrderItem;
function LoadUnknown(const FileName: WideString): IXMLTBudgetOrderItem;
function NewUnknown: IXMLTBudgetOrderItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTBudgetOrderItem;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTBudgetOrderItem, TargetNamespace) as IXMLTBudgetOrderItem;
end;

function LoadUnknown(const FileName: WideString): IXMLTBudgetOrderItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTBudgetOrderItem, TargetNamespace) as IXMLTBudgetOrderItem;
end;

function NewUnknown: IXMLTBudgetOrderItem;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTBudgetOrderItem, TargetNamespace) as IXMLTBudgetOrderItem;
end;

{ TXMLTBudgetOrderItem }

procedure TXMLTBudgetOrderItem.AfterConstruction;
begin
  RegisterChildNode('BudgetOrder', TXMLTBudgetOrder);
  RegisterChildNode('BudgetProduct', TXMLTProduct);
  RegisterChildNode('Dept', TXMLTDept);
  RegisterChildNode('DistributionType', TXMLTBOIDistributionType);
  RegisterChildNode('DateInterval', TXMLTDateInterval);
  RegisterChildNode('DistributionDateUnit', TXMLTDateUnit);
  RegisterChildNode('DecisionEnterEmployee', TXMLTEmployee);
  RegisterChildNode('DecisionEnterDate', TXMLTDate);
  RegisterChildNode('DecisionApproveEmployee', TXMLTEmployee);
  RegisterChildNode('DecisionApproveDate', TXMLTDate);
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

function TXMLTBudgetOrderItem.Get_BudgetOrder: IXMLTBudgetOrder;
begin
  Result := ChildNodes['BudgetOrder'] as IXMLTBudgetOrder;
end;

function TXMLTBudgetOrderItem.Get_BudgetOrderItemNo: Variant;
begin
  Result := ChildNodes['BudgetOrderItemNo'].NodeValue;
end;

procedure TXMLTBudgetOrderItem.Set_BudgetOrderItemNo(Value: Variant);
begin
  ChildNodes['BudgetOrderItemNo'].NodeValue := Value;
end;

function TXMLTBudgetOrderItem.Get_BudgetProduct: IXMLTProduct;
begin
  Result := ChildNodes['BudgetProduct'] as IXMLTProduct;
end;

function TXMLTBudgetOrderItem.Get_Dept: IXMLTDept;
begin
  Result := ChildNodes['Dept'] as IXMLTDept;
end;

function TXMLTBudgetOrderItem.Get_DistributionType: IXMLTBOIDistributionType;
begin
  Result := ChildNodes['DistributionType'] as IXMLTBOIDistributionType;
end;

function TXMLTBudgetOrderItem.Get_DateInterval: IXMLTDateInterval;
begin
  Result := ChildNodes['DateInterval'] as IXMLTDateInterval;
end;

function TXMLTBudgetOrderItem.Get_DistributedSinglePrice: Variant;
begin
  Result := ChildNodes['DistributedSinglePrice'].NodeValue;
end;

procedure TXMLTBudgetOrderItem.Set_DistributedSinglePrice(Value: Variant);
begin
  ChildNodes['DistributedSinglePrice'].NodeValue := Value;
end;

function TXMLTBudgetOrderItem.Get_DistributionDateUnit: IXMLTDateUnit;
begin
  Result := ChildNodes['DistributionDateUnit'] as IXMLTDateUnit;
end;

function TXMLTBudgetOrderItem.Get_TotalPrice: Variant;
begin
  Result := ChildNodes['TotalPrice'].NodeValue;
end;

procedure TXMLTBudgetOrderItem.Set_TotalPrice(Value: Variant);
begin
  ChildNodes['TotalPrice'].NodeValue := Value;
end;

function TXMLTBudgetOrderItem.Get_BudgetOrderPricePercent: Variant;
begin
  Result := ChildNodes['BudgetOrderPricePercent'].NodeValue;
end;

procedure TXMLTBudgetOrderItem.Set_BudgetOrderPricePercent(Value: Variant);
begin
  ChildNodes['BudgetOrderPricePercent'].NodeValue := Value;
end;

function TXMLTBudgetOrderItem.Get_IsConfirmed: Variant;
begin
  Result := ChildNodes['IsConfirmed'].NodeValue;
end;

procedure TXMLTBudgetOrderItem.Set_IsConfirmed(Value: Variant);
begin
  ChildNodes['IsConfirmed'].NodeValue := Value;
end;

function TXMLTBudgetOrderItem.Get_IsForReconsideration: Variant;
begin
  Result := ChildNodes['IsForReconsideration'].NodeValue;
end;

procedure TXMLTBudgetOrderItem.Set_IsForReconsideration(Value: Variant);
begin
  ChildNodes['IsForReconsideration'].NodeValue := Value;
end;

function TXMLTBudgetOrderItem.Get_IsCanceled: Variant;
begin
  Result := ChildNodes['IsCanceled'].NodeValue;
end;

procedure TXMLTBudgetOrderItem.Set_IsCanceled(Value: Variant);
begin
  ChildNodes['IsCanceled'].NodeValue := Value;
end;

function TXMLTBudgetOrderItem.Get_DecisionEnterEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['DecisionEnterEmployee'] as IXMLTEmployee;
end;

function TXMLTBudgetOrderItem.Get_DecisionEnterDate: IXMLTDate;
begin
  Result := ChildNodes['DecisionEnterDate'] as IXMLTDate;
end;

function TXMLTBudgetOrderItem.Get_DecisionApproveEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['DecisionApproveEmployee'] as IXMLTEmployee;
end;

function TXMLTBudgetOrderItem.Get_DecisionApproveDate: IXMLTDate;
begin
  Result := ChildNodes['DecisionApproveDate'] as IXMLTDate;
end;

function TXMLTBudgetOrderItem.Get_CreateEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['CreateEmployee'] as IXMLTEmployee;
end;

function TXMLTBudgetOrderItem.Get_CreateDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['CreateDateTime'] as IXMLTDateTime;
end;

function TXMLTBudgetOrderItem.Get_ChangeEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['ChangeEmployee'] as IXMLTEmployee;
end;

function TXMLTBudgetOrderItem.Get_ChangeDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['ChangeDateTime'] as IXMLTDateTime;
end;

function TXMLTBudgetOrderItem.Get_AnnulEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['AnnulEmployee'] as IXMLTEmployee;
end;

function TXMLTBudgetOrderItem.Get_AnnulDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['AnnulDateTime'] as IXMLTDateTime;
end;

function TXMLTBudgetOrderItem.Get_CloseEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['CloseEmployee'] as IXMLTEmployee;
end;

function TXMLTBudgetOrderItem.Get_CloseDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['CloseDateTime'] as IXMLTDateTime;
end;

end.
