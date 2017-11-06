
{************************************************************************************}
{                                                                                    }
{                                  XML Data Binding                                  }
{                                                                                    }
{         Generated on: 21.5.2013 г/ 14:07:52                                        }
{       Generated from: XMLSchemas\Public\TDeliveryProject.xsd                 }
{                                                                                    }
{************************************************************************************}

unit xTDeliveryProject;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTDept, xTStreamType, xTDeliveryType, xTPartner, xTProduct, xTDate, xTCurrency, xTEmployee,
  xTDateTime;

type

{ Forward Decls }

  IXMLTDeliveryProject = interface;

{ IXMLTDeliveryProject }

  IXMLTDeliveryProject = interface(IXMLNode)
    ['{BAC2CCDA-A59B-4C67-99B5-DAC3A26B7981}']
    { Property Accessors }
    function Get_DeliveryProjectIdentifier: Variant;
    function Get_DeliveryIdentifier: Variant;
    function Get_DCDBranch: IXMLTDept;
    function Get_DCDCode: Variant;
    function Get_DeliveryProjectCode: Variant;
    function Get_StreamType: IXMLTStreamType;
    function Get_DeliveryType: IXMLTDeliveryType;
    function Get_Vendor: IXMLTPartner;
    function Get_Product: IXMLTProduct;
    function Get_DeficitCoverDate: IXMLTDate;
    function Get_WorkQuantity: Variant;
    function Get_SinglePrice: Variant;
    function Get_AccountQuantity: Variant;
    function Get_AccountSinglePrice: Variant;
    function Get_TotalPrice: Variant;
    function Get_Currency: IXMLTCurrency;
    function Get_DeliveryDate: IXMLTDate;
    function Get_MediatorCompany: IXMLTPartner;
    function Get_StartDate: IXMLTDate;
    function Get_RegisterDate: IXMLTDate;
    function Get_PlanPositionDate: IXMLTDate;
    function Get_RealPositionDate: IXMLTDate;
    function Get_PlanVendorPositionDate: IXMLTDate;
    function Get_RealVendorPositionDate: IXMLTDate;
    function Get_DecisionEmployee: IXMLTEmployee;
    function Get_DialogEmployee: IXMLTEmployee;
    function Get_ShipmentDays: Variant;
    function Get_PSDStore: IXMLTDept;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_ChangeEmployee: IXMLTEmployee;
    function Get_ChangeDateTime: IXMLTDateTime;
    function Get_FinishEmployee: IXMLTEmployee;
    function Get_FinishDateTime: IXMLTDateTime;
    function Get_AnnulEmployee: IXMLTEmployee;
    function Get_AnnulDateTime: IXMLTDateTime;
    procedure Set_DeliveryProjectIdentifier(Value: Variant);
    procedure Set_DeliveryIdentifier(Value: Variant);
    procedure Set_DCDCode(Value: Variant);
    procedure Set_DeliveryProjectCode(Value: Variant);
    procedure Set_WorkQuantity(Value: Variant);
    procedure Set_SinglePrice(Value: Variant);
    procedure Set_AccountQuantity(Value: Variant);
    procedure Set_AccountSinglePrice(Value: Variant);
    procedure Set_TotalPrice(Value: Variant);
    procedure Set_ShipmentDays(Value: Variant);
    { Methods & Properties }
    property DeliveryProjectIdentifier: Variant read Get_DeliveryProjectIdentifier write Set_DeliveryProjectIdentifier;
    property DeliveryIdentifier: Variant read Get_DeliveryIdentifier write Set_DeliveryIdentifier;
    property DCDBranch: IXMLTDept read Get_DCDBranch;
    property DCDCode: Variant read Get_DCDCode write Set_DCDCode;
    property DeliveryProjectCode: Variant read Get_DeliveryProjectCode write Set_DeliveryProjectCode;
    property StreamType: IXMLTStreamType read Get_StreamType;
    property DeliveryType: IXMLTDeliveryType read Get_DeliveryType;
    property Vendor: IXMLTPartner read Get_Vendor;
    property Product: IXMLTProduct read Get_Product;
    property DeficitCoverDate: IXMLTDate read Get_DeficitCoverDate;
    property WorkQuantity: Variant read Get_WorkQuantity write Set_WorkQuantity;
    property SinglePrice: Variant read Get_SinglePrice write Set_SinglePrice;
    property AccountQuantity: Variant read Get_AccountQuantity write Set_AccountQuantity;
    property AccountSinglePrice: Variant read Get_AccountSinglePrice write Set_AccountSinglePrice;
    property TotalPrice: Variant read Get_TotalPrice write Set_TotalPrice;
    property Currency: IXMLTCurrency read Get_Currency;
    property DeliveryDate: IXMLTDate read Get_DeliveryDate;
    property MediatorCompany: IXMLTPartner read Get_MediatorCompany;
    property StartDate: IXMLTDate read Get_StartDate;
    property RegisterDate: IXMLTDate read Get_RegisterDate;
    property PlanPositionDate: IXMLTDate read Get_PlanPositionDate;
    property RealPositionDate: IXMLTDate read Get_RealPositionDate;
    property PlanVendorPositionDate: IXMLTDate read Get_PlanVendorPositionDate;
    property RealVendorPositionDate: IXMLTDate read Get_RealVendorPositionDate;
    property DecisionEmployee: IXMLTEmployee read Get_DecisionEmployee;
    property DialogEmployee: IXMLTEmployee read Get_DialogEmployee;
    property ShipmentDays: Variant read Get_ShipmentDays write Set_ShipmentDays;
    property PSDStore: IXMLTDept read Get_PSDStore;
    property CreateEmployee: IXMLTEmployee read Get_CreateEmployee;
    property CreateDateTime: IXMLTDateTime read Get_CreateDateTime;
    property ChangeEmployee: IXMLTEmployee read Get_ChangeEmployee;
    property ChangeDateTime: IXMLTDateTime read Get_ChangeDateTime;
    property FinishEmployee: IXMLTEmployee read Get_FinishEmployee;
    property FinishDateTime: IXMLTDateTime read Get_FinishDateTime;
    property AnnulEmployee: IXMLTEmployee read Get_AnnulEmployee;
    property AnnulDateTime: IXMLTDateTime read Get_AnnulDateTime;
  end;

{ Forward Decls }

  TXMLTDeliveryProject = class;

{ TXMLTDeliveryProject }

  TXMLTDeliveryProject = class(TXMLNode, IXMLTDeliveryProject)
  protected
    { IXMLTDeliveryProject }
    function Get_DeliveryProjectIdentifier: Variant;
    function Get_DeliveryIdentifier: Variant;
    function Get_DCDBranch: IXMLTDept;
    function Get_DCDCode: Variant;
    function Get_DeliveryProjectCode: Variant;
    function Get_StreamType: IXMLTStreamType;
    function Get_DeliveryType: IXMLTDeliveryType;
    function Get_Vendor: IXMLTPartner;
    function Get_Product: IXMLTProduct;
    function Get_DeficitCoverDate: IXMLTDate;
    function Get_WorkQuantity: Variant;
    function Get_SinglePrice: Variant;
    function Get_AccountQuantity: Variant;
    function Get_AccountSinglePrice: Variant;
    function Get_TotalPrice: Variant;
    function Get_Currency: IXMLTCurrency;
    function Get_DeliveryDate: IXMLTDate;
    function Get_MediatorCompany: IXMLTPartner;
    function Get_StartDate: IXMLTDate;
    function Get_RegisterDate: IXMLTDate;
    function Get_PlanPositionDate: IXMLTDate;
    function Get_RealPositionDate: IXMLTDate;
    function Get_PlanVendorPositionDate: IXMLTDate;
    function Get_RealVendorPositionDate: IXMLTDate;
    function Get_DecisionEmployee: IXMLTEmployee;
    function Get_DialogEmployee: IXMLTEmployee;
    function Get_ShipmentDays: Variant;
    function Get_PSDStore: IXMLTDept;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_ChangeEmployee: IXMLTEmployee;
    function Get_ChangeDateTime: IXMLTDateTime;
    function Get_FinishEmployee: IXMLTEmployee;
    function Get_FinishDateTime: IXMLTDateTime;
    function Get_AnnulEmployee: IXMLTEmployee;
    function Get_AnnulDateTime: IXMLTDateTime;
    procedure Set_DeliveryProjectIdentifier(Value: Variant);
    procedure Set_DeliveryIdentifier(Value: Variant);
    procedure Set_DCDCode(Value: Variant);
    procedure Set_DeliveryProjectCode(Value: Variant);
    procedure Set_WorkQuantity(Value: Variant);
    procedure Set_SinglePrice(Value: Variant);
    procedure Set_AccountQuantity(Value: Variant);
    procedure Set_AccountSinglePrice(Value: Variant);
    procedure Set_TotalPrice(Value: Variant);
    procedure Set_ShipmentDays(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

implementation

{ TXMLTDeliveryProject }

procedure TXMLTDeliveryProject.AfterConstruction;
begin
  RegisterChildNode('DCDBranch', TXMLTDept);
  RegisterChildNode('StreamType', TXMLTStreamType);
  RegisterChildNode('DeliveryType', TXMLTDeliveryType);
  RegisterChildNode('Vendor', TXMLTPartner);
  RegisterChildNode('Product', TXMLTProduct);
  RegisterChildNode('DeficitCoverDate', TXMLTDate);
  RegisterChildNode('Currency', TXMLTCurrency);
  RegisterChildNode('DeliveryDate', TXMLTDate);
  RegisterChildNode('MediatorCompany', TXMLTPartner);
  RegisterChildNode('StartDate', TXMLTDate);
  RegisterChildNode('RegisterDate', TXMLTDate);
  RegisterChildNode('PlanPositionDate', TXMLTDate);
  RegisterChildNode('RealPositionDate', TXMLTDate);
  RegisterChildNode('PlanVendorPositionDate', TXMLTDate);
  RegisterChildNode('RealVendorPositionDate', TXMLTDate);
  RegisterChildNode('DecisionEmployee', TXMLTEmployee);
  RegisterChildNode('DialogEmployee', TXMLTEmployee);
  RegisterChildNode('PSDStore', TXMLTDept);
  RegisterChildNode('CreateEmployee', TXMLTEmployee);
  RegisterChildNode('CreateDateTime', TXMLTDateTime);
  RegisterChildNode('ChangeEmployee', TXMLTEmployee);
  RegisterChildNode('ChangeDateTime', TXMLTDateTime);
  RegisterChildNode('FinishEmployee', TXMLTEmployee);
  RegisterChildNode('FinishDateTime', TXMLTDateTime);
  RegisterChildNode('AnnulEmployee', TXMLTEmployee);
  RegisterChildNode('AnnulDateTime', TXMLTDateTime);
  inherited;
end;

function TXMLTDeliveryProject.Get_DeliveryProjectIdentifier: Variant;
begin
  Result := ChildNodes['DeliveryProjectIdentifier'].NodeValue;
end;

procedure TXMLTDeliveryProject.Set_DeliveryProjectIdentifier(Value: Variant);
begin
  ChildNodes['DeliveryProjectIdentifier'].NodeValue := Value;
end;

function TXMLTDeliveryProject.Get_DeliveryIdentifier: Variant;
begin
  Result := ChildNodes['DeliveryIdentifier'].NodeValue;
end;

procedure TXMLTDeliveryProject.Set_DeliveryIdentifier(Value: Variant);
begin
  ChildNodes['DeliveryIdentifier'].NodeValue := Value;
end;

function TXMLTDeliveryProject.Get_DCDBranch: IXMLTDept;
begin
  Result := ChildNodes['DCDBranch'] as IXMLTDept;
end;

function TXMLTDeliveryProject.Get_DCDCode: Variant;
begin
  Result := ChildNodes['DCDCode'].NodeValue;
end;

procedure TXMLTDeliveryProject.Set_DCDCode(Value: Variant);
begin
  ChildNodes['DCDCode'].NodeValue := Value;
end;

function TXMLTDeliveryProject.Get_DeliveryProjectCode: Variant;
begin
  Result := ChildNodes['DeliveryProjectCode'].NodeValue;
end;

procedure TXMLTDeliveryProject.Set_DeliveryProjectCode(Value: Variant);
begin
  ChildNodes['DeliveryProjectCode'].NodeValue := Value;
end;

function TXMLTDeliveryProject.Get_StreamType: IXMLTStreamType;
begin
  Result := ChildNodes['StreamType'] as IXMLTStreamType;
end;

function TXMLTDeliveryProject.Get_DeliveryType: IXMLTDeliveryType;
begin
  Result := ChildNodes['DeliveryType'] as IXMLTDeliveryType;
end;

function TXMLTDeliveryProject.Get_Vendor: IXMLTPartner;
begin
  Result := ChildNodes['Vendor'] as IXMLTPartner;
end;

function TXMLTDeliveryProject.Get_Product: IXMLTProduct;
begin
  Result := ChildNodes['Product'] as IXMLTProduct;
end;

function TXMLTDeliveryProject.Get_DeficitCoverDate: IXMLTDate;
begin
  Result := ChildNodes['DeficitCoverDate'] as IXMLTDate;
end;

function TXMLTDeliveryProject.Get_WorkQuantity: Variant;
begin
  Result := ChildNodes['WorkQuantity'].NodeValue;
end;

procedure TXMLTDeliveryProject.Set_WorkQuantity(Value: Variant);
begin
  ChildNodes['WorkQuantity'].NodeValue := Value;
end;

function TXMLTDeliveryProject.Get_SinglePrice: Variant;
begin
  Result := ChildNodes['SinglePrice'].NodeValue;
end;

procedure TXMLTDeliveryProject.Set_SinglePrice(Value: Variant);
begin
  ChildNodes['SinglePrice'].NodeValue := Value;
end;

function TXMLTDeliveryProject.Get_AccountQuantity: Variant;
begin
  Result := ChildNodes['AccountQuantity'].NodeValue;
end;

procedure TXMLTDeliveryProject.Set_AccountQuantity(Value: Variant);
begin
  ChildNodes['AccountQuantity'].NodeValue := Value;
end;

function TXMLTDeliveryProject.Get_AccountSinglePrice: Variant;
begin
  Result := ChildNodes['AccountSinglePrice'].NodeValue;
end;

procedure TXMLTDeliveryProject.Set_AccountSinglePrice(Value: Variant);
begin
  ChildNodes['AccountSinglePrice'].NodeValue := Value;
end;

function TXMLTDeliveryProject.Get_TotalPrice: Variant;
begin
  Result := ChildNodes['TotalPrice'].NodeValue;
end;

procedure TXMLTDeliveryProject.Set_TotalPrice(Value: Variant);
begin
  ChildNodes['TotalPrice'].NodeValue := Value;
end;

function TXMLTDeliveryProject.Get_Currency: IXMLTCurrency;
begin
  Result := ChildNodes['Currency'] as IXMLTCurrency;
end;

function TXMLTDeliveryProject.Get_DeliveryDate: IXMLTDate;
begin
  Result := ChildNodes['DeliveryDate'] as IXMLTDate;
end;

function TXMLTDeliveryProject.Get_MediatorCompany: IXMLTPartner;
begin
  Result := ChildNodes['MediatorCompany'] as IXMLTPartner;
end;

function TXMLTDeliveryProject.Get_StartDate: IXMLTDate;
begin
  Result := ChildNodes['StartDate'] as IXMLTDate;
end;

function TXMLTDeliveryProject.Get_RegisterDate: IXMLTDate;
begin
  Result := ChildNodes['RegisterDate'] as IXMLTDate;
end;

function TXMLTDeliveryProject.Get_PlanPositionDate: IXMLTDate;
begin
  Result := ChildNodes['PlanPositionDate'] as IXMLTDate;
end;

function TXMLTDeliveryProject.Get_RealPositionDate: IXMLTDate;
begin
  Result := ChildNodes['RealPositionDate'] as IXMLTDate;
end;

function TXMLTDeliveryProject.Get_PlanVendorPositionDate: IXMLTDate;
begin
  Result := ChildNodes['PlanVendorPositionDate'] as IXMLTDate;
end;

function TXMLTDeliveryProject.Get_RealVendorPositionDate: IXMLTDate;
begin
  Result := ChildNodes['RealVendorPositionDate'] as IXMLTDate;
end;

function TXMLTDeliveryProject.Get_DecisionEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['DecisionEmployee'] as IXMLTEmployee;
end;

function TXMLTDeliveryProject.Get_DialogEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['DialogEmployee'] as IXMLTEmployee;
end;

function TXMLTDeliveryProject.Get_ShipmentDays: Variant;
begin
  Result := ChildNodes['ShipmentDays'].NodeValue;
end;

procedure TXMLTDeliveryProject.Set_ShipmentDays(Value: Variant);
begin
  ChildNodes['ShipmentDays'].NodeValue := Value;
end;

function TXMLTDeliveryProject.Get_PSDStore: IXMLTDept;
begin
  Result := ChildNodes['PSDStore'] as IXMLTDept;
end;

function TXMLTDeliveryProject.Get_CreateEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['CreateEmployee'] as IXMLTEmployee;
end;

function TXMLTDeliveryProject.Get_CreateDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['CreateDateTime'] as IXMLTDateTime;
end;

function TXMLTDeliveryProject.Get_ChangeEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['ChangeEmployee'] as IXMLTEmployee;
end;

function TXMLTDeliveryProject.Get_ChangeDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['ChangeDateTime'] as IXMLTDateTime;
end;

function TXMLTDeliveryProject.Get_FinishEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['FinishEmployee'] as IXMLTEmployee;
end;

function TXMLTDeliveryProject.Get_FinishDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['FinishDateTime'] as IXMLTDateTime;
end;

function TXMLTDeliveryProject.Get_AnnulEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['AnnulEmployee'] as IXMLTEmployee;
end;

function TXMLTDeliveryProject.Get_AnnulDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['AnnulDateTime'] as IXMLTDateTime;
end;

end.
