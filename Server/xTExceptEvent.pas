
{**************************************************************************}
{                                                                          }
{                             XML Data Binding                             }
{                                                                          }
{         Generated on: 15.4.2013 г/ 11:05:38                              }
{       Generated from: XMLSchemas\Public\TExceptEvent.xsd                 }
{                                                                          }
{**************************************************************************}

unit xTExceptEvent;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTExceptEventType, xTExceptEventGenType, xTExceptEventLevel, xTProduct, xTDept,
  xTEmployee, xTDateTime, xTDateInterval;

type

{ Forward Decls }

  IXMLTExceptEvent = interface;

{ IXMLTExceptEvent }

  IXMLTExceptEvent = interface(IXMLNode)
    ['{2F46C453-1F39-4B87-A45D-2F280BDA3A8B}']
    { Property Accessors }
    function Get_ExceptEventNo: Variant;
    function Get_ExceptEventType: IXMLTExceptEventType;
    function Get_ExceptEventGenType: IXMLTExceptEventGenType;
    function Get_ExceptEventLevel: IXMLTExceptEventLevel;
    function Get_Product: IXMLTProduct;
    function Get_ProductQuantity: Variant;
    function Get_Dept: IXMLTDept;
    function Get_Description: Variant;
    function Get_DetectDept: IXMLTDept;
    function Get_DetectEmployee: IXMLTEmployee;
    function Get_DetectDateTime: IXMLTDateTime;
    function Get_ControlDeptCode: IXMLTDept;
    function Get_ControlAcceptEmployee: IXMLTEmployee;
    function Get_ControlAcceptDateTime: IXMLTDateTime;
    function Get_ControlMainEmployee: IXMLTEmployee;
    function Get_ControlActivateEmployee: IXMLTEmployee;
    function Get_ControlActivateDateTime: IXMLTDateTime;
    function Get_DamageResolvePlanDateInterval: IXMLTDateInterval;
    function Get_DamageResolveEmployee: IXMLTEmployee;
    function Get_DamageResolveDateTime: IXMLTDateTime;
    function Get_ResolvePlanDateInterval: IXMLTDateInterval;
    function Get_ResolveEmployee: IXMLTEmployee;
    function Get_ResolveDateTime: IXMLTDateTime;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_ChangeEmployee: IXMLTEmployee;
    function Get_ChangeDateTime: IXMLTDateTime;
    function Get_CloseEmployee: IXMLTEmployee;
    function Get_CloseDateTime: IXMLTDateTime;
    function Get_AnnulEmployee: IXMLTEmployee;
    function Get_AnnulDateTime: IXMLTDateTime;
    function Get_OrgTaskProposalBindEmployee: IXMLTEmployee;
    function Get_OrgTaskProposalBindDateTime: IXMLTDateTime;
    procedure Set_ExceptEventNo(Value: Variant);
    procedure Set_ProductQuantity(Value: Variant);
    procedure Set_Description(Value: Variant);
    { Methods & Properties }
    property ExceptEventNo: Variant read Get_ExceptEventNo write Set_ExceptEventNo;
    property ExceptEventType: IXMLTExceptEventType read Get_ExceptEventType;
    property ExceptEventGenType: IXMLTExceptEventGenType read Get_ExceptEventGenType;
    property ExceptEventLevel: IXMLTExceptEventLevel read Get_ExceptEventLevel;
    property Product: IXMLTProduct read Get_Product;
    property ProductQuantity: Variant read Get_ProductQuantity write Set_ProductQuantity;
    property Dept: IXMLTDept read Get_Dept;
    property Description: Variant read Get_Description write Set_Description;
    property DetectDept: IXMLTDept read Get_DetectDept;
    property DetectEmployee: IXMLTEmployee read Get_DetectEmployee;
    property DetectDateTime: IXMLTDateTime read Get_DetectDateTime;
    property ControlDeptCode: IXMLTDept read Get_ControlDeptCode;
    property ControlAcceptEmployee: IXMLTEmployee read Get_ControlAcceptEmployee;
    property ControlAcceptDateTime: IXMLTDateTime read Get_ControlAcceptDateTime;
    property ControlMainEmployee: IXMLTEmployee read Get_ControlMainEmployee;
    property ControlActivateEmployee: IXMLTEmployee read Get_ControlActivateEmployee;
    property ControlActivateDateTime: IXMLTDateTime read Get_ControlActivateDateTime;
    property DamageResolvePlanDateInterval: IXMLTDateInterval read Get_DamageResolvePlanDateInterval;
    property DamageResolveEmployee: IXMLTEmployee read Get_DamageResolveEmployee;
    property DamageResolveDateTime: IXMLTDateTime read Get_DamageResolveDateTime;
    property ResolvePlanDateInterval: IXMLTDateInterval read Get_ResolvePlanDateInterval;
    property ResolveEmployee: IXMLTEmployee read Get_ResolveEmployee;
    property ResolveDateTime: IXMLTDateTime read Get_ResolveDateTime;
    property CreateEmployee: IXMLTEmployee read Get_CreateEmployee;
    property CreateDateTime: IXMLTDateTime read Get_CreateDateTime;
    property ChangeEmployee: IXMLTEmployee read Get_ChangeEmployee;
    property ChangeDateTime: IXMLTDateTime read Get_ChangeDateTime;
    property CloseEmployee: IXMLTEmployee read Get_CloseEmployee;
    property CloseDateTime: IXMLTDateTime read Get_CloseDateTime;
    property AnnulEmployee: IXMLTEmployee read Get_AnnulEmployee;
    property AnnulDateTime: IXMLTDateTime read Get_AnnulDateTime;
    property OrgTaskProposalBindEmployee: IXMLTEmployee read Get_OrgTaskProposalBindEmployee;
    property OrgTaskProposalBindDateTime: IXMLTDateTime read Get_OrgTaskProposalBindDateTime;
  end;

{ Forward Decls }

  TXMLTExceptEvent = class;

{ TXMLTExceptEvent }

  TXMLTExceptEvent = class(TXMLNode, IXMLTExceptEvent)
  protected
    { IXMLTExceptEvent }
    function Get_ExceptEventNo: Variant;
    function Get_ExceptEventType: IXMLTExceptEventType;
    function Get_ExceptEventGenType: IXMLTExceptEventGenType;
    function Get_ExceptEventLevel: IXMLTExceptEventLevel;
    function Get_Product: IXMLTProduct;
    function Get_ProductQuantity: Variant;
    function Get_Dept: IXMLTDept;
    function Get_Description: Variant;
    function Get_DetectDept: IXMLTDept;
    function Get_DetectEmployee: IXMLTEmployee;
    function Get_DetectDateTime: IXMLTDateTime;
    function Get_ControlDeptCode: IXMLTDept;
    function Get_ControlAcceptEmployee: IXMLTEmployee;
    function Get_ControlAcceptDateTime: IXMLTDateTime;
    function Get_ControlMainEmployee: IXMLTEmployee;
    function Get_ControlActivateEmployee: IXMLTEmployee;
    function Get_ControlActivateDateTime: IXMLTDateTime;
    function Get_DamageResolvePlanDateInterval: IXMLTDateInterval;
    function Get_DamageResolveEmployee: IXMLTEmployee;
    function Get_DamageResolveDateTime: IXMLTDateTime;
    function Get_ResolvePlanDateInterval: IXMLTDateInterval;
    function Get_ResolveEmployee: IXMLTEmployee;
    function Get_ResolveDateTime: IXMLTDateTime;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_ChangeEmployee: IXMLTEmployee;
    function Get_ChangeDateTime: IXMLTDateTime;
    function Get_CloseEmployee: IXMLTEmployee;
    function Get_CloseDateTime: IXMLTDateTime;
    function Get_AnnulEmployee: IXMLTEmployee;
    function Get_AnnulDateTime: IXMLTDateTime;
    function Get_OrgTaskProposalBindEmployee: IXMLTEmployee;
    function Get_OrgTaskProposalBindDateTime: IXMLTDateTime;
    procedure Set_ExceptEventNo(Value: Variant);
    procedure Set_ProductQuantity(Value: Variant);
    procedure Set_Description(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

implementation

{ TXMLTExceptEvent }

procedure TXMLTExceptEvent.AfterConstruction;
begin
  RegisterChildNode('ExceptEventType', TXMLTExceptEventType);
  RegisterChildNode('ExceptEventGenType', TXMLTExceptEventGenType);
  RegisterChildNode('ExceptEventLevel', TXMLTExceptEventLevel);
  RegisterChildNode('Product', TXMLTProduct);
  RegisterChildNode('Dept', TXMLTDept);
  RegisterChildNode('DetectDept', TXMLTDept);
  RegisterChildNode('DetectEmployee', TXMLTEmployee);
  RegisterChildNode('DetectDateTime', TXMLTDateTime);
  RegisterChildNode('ControlDeptCode', TXMLTDept);
  RegisterChildNode('ControlAcceptEmployee', TXMLTEmployee);
  RegisterChildNode('ControlAcceptDateTime', TXMLTDateTime);
  RegisterChildNode('ControlMainEmployee', TXMLTEmployee);
  RegisterChildNode('ControlActivateEmployee', TXMLTEmployee);
  RegisterChildNode('ControlActivateDateTime', TXMLTDateTime);
  RegisterChildNode('DamageResolvePlanDateInterval', TXMLTDateInterval);
  RegisterChildNode('DamageResolveEmployee', TXMLTEmployee);
  RegisterChildNode('DamageResolveDateTime', TXMLTDateTime);
  RegisterChildNode('ResolvePlanDateInterval', TXMLTDateInterval);
  RegisterChildNode('ResolveEmployee', TXMLTEmployee);
  RegisterChildNode('ResolveDateTime', TXMLTDateTime);
  RegisterChildNode('CreateEmployee', TXMLTEmployee);
  RegisterChildNode('CreateDateTime', TXMLTDateTime);
  RegisterChildNode('ChangeEmployee', TXMLTEmployee);
  RegisterChildNode('ChangeDateTime', TXMLTDateTime);
  RegisterChildNode('CloseEmployee', TXMLTEmployee);
  RegisterChildNode('CloseDateTime', TXMLTDateTime);
  RegisterChildNode('AnnulEmployee', TXMLTEmployee);
  RegisterChildNode('AnnulDateTime', TXMLTDateTime);
  RegisterChildNode('OrgTaskProposalBindEmployee', TXMLTEmployee);
  RegisterChildNode('OrgTaskProposalBindDateTime', TXMLTDateTime);
  inherited;
end;

function TXMLTExceptEvent.Get_ExceptEventNo: Variant;
begin
  Result := ChildNodes['ExceptEventNo'].NodeValue;
end;

procedure TXMLTExceptEvent.Set_ExceptEventNo(Value: Variant);
begin
  ChildNodes['ExceptEventNo'].NodeValue := Value;
end;

function TXMLTExceptEvent.Get_ExceptEventType: IXMLTExceptEventType;
begin
  Result := ChildNodes['ExceptEventType'] as IXMLTExceptEventType;
end;

function TXMLTExceptEvent.Get_ExceptEventGenType: IXMLTExceptEventGenType;
begin
  Result := ChildNodes['ExceptEventGenType'] as IXMLTExceptEventGenType;
end;

function TXMLTExceptEvent.Get_ExceptEventLevel: IXMLTExceptEventLevel;
begin
  Result := ChildNodes['ExceptEventLevel'] as IXMLTExceptEventLevel;
end;

function TXMLTExceptEvent.Get_Product: IXMLTProduct;
begin
  Result := ChildNodes['Product'] as IXMLTProduct;
end;

function TXMLTExceptEvent.Get_ProductQuantity: Variant;
begin
  Result := ChildNodes['ProductQuantity'].NodeValue;
end;

procedure TXMLTExceptEvent.Set_ProductQuantity(Value: Variant);
begin
  ChildNodes['ProductQuantity'].NodeValue := Value;
end;

function TXMLTExceptEvent.Get_Dept: IXMLTDept;
begin
  Result := ChildNodes['Dept'] as IXMLTDept;
end;

function TXMLTExceptEvent.Get_Description: Variant;
begin
  Result := ChildNodes['Description'].NodeValue;
end;

procedure TXMLTExceptEvent.Set_Description(Value: Variant);
begin
  ChildNodes['Description'].NodeValue := Value;
end;

function TXMLTExceptEvent.Get_DetectDept: IXMLTDept;
begin
  Result := ChildNodes['DetectDept'] as IXMLTDept;
end;

function TXMLTExceptEvent.Get_DetectEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['DetectEmployee'] as IXMLTEmployee;
end;

function TXMLTExceptEvent.Get_DetectDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['DetectDateTime'] as IXMLTDateTime;
end;

function TXMLTExceptEvent.Get_ControlDeptCode: IXMLTDept;
begin
  Result := ChildNodes['ControlDeptCode'] as IXMLTDept;
end;

function TXMLTExceptEvent.Get_ControlAcceptEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['ControlAcceptEmployee'] as IXMLTEmployee;
end;

function TXMLTExceptEvent.Get_ControlAcceptDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['ControlAcceptDateTime'] as IXMLTDateTime;
end;

function TXMLTExceptEvent.Get_ControlMainEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['ControlMainEmployee'] as IXMLTEmployee;
end;

function TXMLTExceptEvent.Get_ControlActivateEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['ControlActivateEmployee'] as IXMLTEmployee;
end;

function TXMLTExceptEvent.Get_ControlActivateDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['ControlActivateDateTime'] as IXMLTDateTime;
end;

function TXMLTExceptEvent.Get_DamageResolvePlanDateInterval: IXMLTDateInterval;
begin
  Result := ChildNodes['DamageResolvePlanDateInterval'] as IXMLTDateInterval;
end;

function TXMLTExceptEvent.Get_DamageResolveEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['DamageResolveEmployee'] as IXMLTEmployee;
end;

function TXMLTExceptEvent.Get_DamageResolveDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['DamageResolveDateTime'] as IXMLTDateTime;
end;

function TXMLTExceptEvent.Get_ResolvePlanDateInterval: IXMLTDateInterval;
begin
  Result := ChildNodes['ResolvePlanDateInterval'] as IXMLTDateInterval;
end;

function TXMLTExceptEvent.Get_ResolveEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['ResolveEmployee'] as IXMLTEmployee;
end;

function TXMLTExceptEvent.Get_ResolveDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['ResolveDateTime'] as IXMLTDateTime;
end;

function TXMLTExceptEvent.Get_CreateEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['CreateEmployee'] as IXMLTEmployee;
end;

function TXMLTExceptEvent.Get_CreateDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['CreateDateTime'] as IXMLTDateTime;
end;

function TXMLTExceptEvent.Get_ChangeEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['ChangeEmployee'] as IXMLTEmployee;
end;

function TXMLTExceptEvent.Get_ChangeDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['ChangeDateTime'] as IXMLTDateTime;
end;

function TXMLTExceptEvent.Get_CloseEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['CloseEmployee'] as IXMLTEmployee;
end;

function TXMLTExceptEvent.Get_CloseDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['CloseDateTime'] as IXMLTDateTime;
end;

function TXMLTExceptEvent.Get_AnnulEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['AnnulEmployee'] as IXMLTEmployee;
end;

function TXMLTExceptEvent.Get_AnnulDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['AnnulDateTime'] as IXMLTDateTime;
end;

function TXMLTExceptEvent.Get_OrgTaskProposalBindEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['OrgTaskProposalBindEmployee'] as IXMLTEmployee;
end;

function TXMLTExceptEvent.Get_OrgTaskProposalBindDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['OrgTaskProposalBindDateTime'] as IXMLTDateTime;
end;

end.
