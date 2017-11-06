
{*******************************************************************************}
{                                                                               }
{                               XML Data Binding                                }
{                                                                               }
{         Generated on: 10.1.2006 17:32:13                                      }
{       Generated from: XMLSchemas\Public\TEngineeringOrder.xsd                 }
{                                                                               }
{*******************************************************************************}

unit xTEngineeringOrder;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTDateTime, xTDateInterval, xTProductionOrderType,
  xTDept, xTEmployee, xTProduct, xTPriority, xTEngineeringOrderType;

type

{ Forward Decls }

  IXMLTEngineeringOrder = interface;

{ IXMLTEngineeringOrder }

  IXMLTEngineeringOrder = interface(IXMLNode)
    ['{AB6267FF-2172-44CA-89A9-56BE17FF3118}']
    { Property Accessors }
    function Get_EngineeringOrderBranch: IXMLTDept;
    function Get_EngineeringOrderNo: Variant;
    function Get_ProductionOrderType: IXMLTProductionOrderType;
    function Get_EngineeringOrderType: IXMLTEngineeringOrderType;
    function Get_Priority: IXMLTPriority;
    function Get_OrderDept: IXMLTDept;
    function Get_Product: IXMLTProduct;
    function Get_ThoroughlyEngineeredProduct: IXMLTProduct;
    function Get_EngineeringDept: IXMLTDept;
    function Get_EngineeringEmployee: IXMLTEmployee;
    function Get_EngineeringPlanDateInterval: IXMLTDateInterval;
    function Get_ActivateEmployee: IXMLTEmployee;
    function Get_ActivateDateTime: IXMLTDateTime;
    function Get_CloseEmployee: IXMLTEmployee;
    function Get_CloseDateTime: IXMLTDateTime;
    function Get_AnnulEmployee: IXMLTEmployee;
    function Get_AnnulDateTime: IXMLTDateTime;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_ChangeEmployee: IXMLTEmployee;
    function Get_ChangeDateTime: IXMLTDateTime;
    function Get_ChangeCount: Variant;
    procedure Set_EngineeringOrderNo(Value: Variant);
    procedure Set_ChangeCount(Value: Variant);
    { Methods & Properties }
    property EngineeringOrderBranch: IXMLTDept read Get_EngineeringOrderBranch;
    property EngineeringOrderNo: Variant read Get_EngineeringOrderNo write Set_EngineeringOrderNo;
    property ProductionOrderType: IXMLTProductionOrderType read Get_ProductionOrderType;
    property EngineeringOrderType: IXMLTEngineeringOrderType read Get_EngineeringOrderType;
    property Priority: IXMLTPriority read Get_Priority;
    property OrderDept: IXMLTDept read Get_OrderDept;
    property Product: IXMLTProduct read Get_Product;
    property ThoroughlyEngineeredProduct: IXMLTProduct read Get_ThoroughlyEngineeredProduct;
    property EngineeringDept: IXMLTDept read Get_EngineeringDept;
    property EngineeringEmployee: IXMLTEmployee read Get_EngineeringEmployee;
    property EngineeringPlanDateInterval: IXMLTDateInterval read Get_EngineeringPlanDateInterval;
    property ActivateEmployee: IXMLTEmployee read Get_ActivateEmployee;
    property ActivateDateTime: IXMLTDateTime read Get_ActivateDateTime;
    property CloseEmployee: IXMLTEmployee read Get_CloseEmployee;
    property CloseDateTime: IXMLTDateTime read Get_CloseDateTime;
    property AnnulEmployee: IXMLTEmployee read Get_AnnulEmployee;
    property AnnulDateTime: IXMLTDateTime read Get_AnnulDateTime;
    property CreateEmployee: IXMLTEmployee read Get_CreateEmployee;
    property CreateDateTime: IXMLTDateTime read Get_CreateDateTime;
    property ChangeEmployee: IXMLTEmployee read Get_ChangeEmployee;
    property ChangeDateTime: IXMLTDateTime read Get_ChangeDateTime;
    property ChangeCount: Variant read Get_ChangeCount write Set_ChangeCount;
  end;

{ Forward Decls }

  TXMLTEngineeringOrder = class;

{ TXMLTEngineeringOrder }

  TXMLTEngineeringOrder = class(TXMLNode, IXMLTEngineeringOrder)
  protected
    { IXMLTEngineeringOrder }
    function Get_EngineeringOrderBranch: IXMLTDept;
    function Get_EngineeringOrderNo: Variant;
    function Get_ProductionOrderType: IXMLTProductionOrderType;
    function Get_EngineeringOrderType: IXMLTEngineeringOrderType;
    function Get_Priority: IXMLTPriority;
    function Get_OrderDept: IXMLTDept;
    function Get_Product: IXMLTProduct;
    function Get_ThoroughlyEngineeredProduct: IXMLTProduct;
    function Get_EngineeringDept: IXMLTDept;
    function Get_EngineeringEmployee: IXMLTEmployee;
    function Get_EngineeringPlanDateInterval: IXMLTDateInterval;
    function Get_ActivateEmployee: IXMLTEmployee;
    function Get_ActivateDateTime: IXMLTDateTime;
    function Get_CloseEmployee: IXMLTEmployee;
    function Get_CloseDateTime: IXMLTDateTime;
    function Get_AnnulEmployee: IXMLTEmployee;
    function Get_AnnulDateTime: IXMLTDateTime;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_ChangeEmployee: IXMLTEmployee;
    function Get_ChangeDateTime: IXMLTDateTime;
    function Get_ChangeCount: Variant;
    procedure Set_EngineeringOrderNo(Value: Variant);
    procedure Set_ChangeCount(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEngineeringOrder;
function LoadUnknown(const FileName: WideString): IXMLTEngineeringOrder;
function NewUnknown: IXMLTEngineeringOrder;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEngineeringOrder;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTEngineeringOrder, TargetNamespace) as IXMLTEngineeringOrder;
end;

function LoadUnknown(const FileName: WideString): IXMLTEngineeringOrder;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTEngineeringOrder, TargetNamespace) as IXMLTEngineeringOrder;
end;

function NewUnknown: IXMLTEngineeringOrder;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTEngineeringOrder, TargetNamespace) as IXMLTEngineeringOrder;
end;

{ TXMLTEngineeringOrder }

procedure TXMLTEngineeringOrder.AfterConstruction;
begin
  RegisterChildNode('EngineeringOrderBranch', TXMLTDept);
  RegisterChildNode('ProductionOrderType', TXMLTProductionOrderType);
  RegisterChildNode('EngineeringOrderType', TXMLTEngineeringOrderType);
  RegisterChildNode('Priority', TXMLTPriority);
  RegisterChildNode('OrderDept', TXMLTDept);
  RegisterChildNode('Product', TXMLTProduct);
  RegisterChildNode('ThoroughlyEngineeredProduct', TXMLTProduct);
  RegisterChildNode('EngineeringDept', TXMLTDept);
  RegisterChildNode('EngineeringEmployee', TXMLTEmployee);
  RegisterChildNode('EngineeringPlanDateInterval', TXMLTDateInterval);
  RegisterChildNode('ActivateEmployee', TXMLTEmployee);
  RegisterChildNode('ActivateDateTime', TXMLTDateTime);
  RegisterChildNode('CloseEmployee', TXMLTEmployee);
  RegisterChildNode('CloseDateTime', TXMLTDateTime);
  RegisterChildNode('AnnulEmployee', TXMLTEmployee);
  RegisterChildNode('AnnulDateTime', TXMLTDateTime);
  RegisterChildNode('CreateEmployee', TXMLTEmployee);
  RegisterChildNode('CreateDateTime', TXMLTDateTime);
  RegisterChildNode('ChangeEmployee', TXMLTEmployee);
  RegisterChildNode('ChangeDateTime', TXMLTDateTime);
  inherited;
end;

function TXMLTEngineeringOrder.Get_EngineeringOrderBranch: IXMLTDept;
begin
  Result := ChildNodes['EngineeringOrderBranch'] as IXMLTDept;
end;

function TXMLTEngineeringOrder.Get_EngineeringOrderNo: Variant;
begin
  Result := ChildNodes['EngineeringOrderNo'].NodeValue;
end;

procedure TXMLTEngineeringOrder.Set_EngineeringOrderNo(Value: Variant);
begin
  ChildNodes['EngineeringOrderNo'].NodeValue := Value;
end;

function TXMLTEngineeringOrder.Get_ProductionOrderType: IXMLTProductionOrderType;
begin
  Result := ChildNodes['ProductionOrderType'] as IXMLTProductionOrderType;
end;

function TXMLTEngineeringOrder.Get_EngineeringOrderType: IXMLTEngineeringOrderType;
begin
  Result := ChildNodes['EngineeringOrderType'] as IXMLTEngineeringOrderType;
end;

function TXMLTEngineeringOrder.Get_Priority: IXMLTPriority;
begin
  Result := ChildNodes['Priority'] as IXMLTPriority;
end;

function TXMLTEngineeringOrder.Get_OrderDept: IXMLTDept;
begin
  Result := ChildNodes['OrderDept'] as IXMLTDept;
end;

function TXMLTEngineeringOrder.Get_Product: IXMLTProduct;
begin
  Result := ChildNodes['Product'] as IXMLTProduct;
end;

function TXMLTEngineeringOrder.Get_ThoroughlyEngineeredProduct: IXMLTProduct;
begin
  Result := ChildNodes['ThoroughlyEngineeredProduct'] as IXMLTProduct;
end;

function TXMLTEngineeringOrder.Get_EngineeringDept: IXMLTDept;
begin
  Result := ChildNodes['EngineeringDept'] as IXMLTDept;
end;

function TXMLTEngineeringOrder.Get_EngineeringEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['EngineeringEmployee'] as IXMLTEmployee;
end;

function TXMLTEngineeringOrder.Get_EngineeringPlanDateInterval: IXMLTDateInterval;
begin
  Result := ChildNodes['EngineeringPlanDateInterval'] as IXMLTDateInterval;
end;

function TXMLTEngineeringOrder.Get_ActivateEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['ActivateEmployee'] as IXMLTEmployee;
end;

function TXMLTEngineeringOrder.Get_ActivateDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['ActivateDateTime'] as IXMLTDateTime;
end;

function TXMLTEngineeringOrder.Get_CloseEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['CloseEmployee'] as IXMLTEmployee;
end;

function TXMLTEngineeringOrder.Get_CloseDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['CloseDateTime'] as IXMLTDateTime;
end;

function TXMLTEngineeringOrder.Get_AnnulEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['AnnulEmployee'] as IXMLTEmployee;
end;

function TXMLTEngineeringOrder.Get_AnnulDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['AnnulDateTime'] as IXMLTDateTime;
end;

function TXMLTEngineeringOrder.Get_CreateEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['CreateEmployee'] as IXMLTEmployee;
end;

function TXMLTEngineeringOrder.Get_CreateDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['CreateDateTime'] as IXMLTDateTime;
end;

function TXMLTEngineeringOrder.Get_ChangeEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['ChangeEmployee'] as IXMLTEmployee;
end;

function TXMLTEngineeringOrder.Get_ChangeDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['ChangeDateTime'] as IXMLTDateTime;
end;

function TXMLTEngineeringOrder.Get_ChangeCount: Variant;
begin
  Result := ChildNodes['ChangeCount'].NodeValue;
end;

procedure TXMLTEngineeringOrder.Set_ChangeCount(Value: Variant);
begin
  ChildNodes['ChangeCount'].NodeValue := Value;
end;

end. 
