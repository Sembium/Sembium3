
{*******************************************************************************}
{                                                                               }
{                           XML Data Binding                                    }
{                                                                               }
{         Generated on: 24.08.2012 18:13:13                                     }
{       Generated from: XMLSchemas\Public\TSaleRequestGroup.xsd                 }
{                                                                               }
{*******************************************************************************}

unit xTSaleRequestGroup;

interface

uses xmldom, XMLDoc, XMLIntf, xTDate, xTPartner, xTCurrency,
  xTEmployee, xTDateTime, xTSales, xTSaleOrderType,
  xTProduct, xTStreamType, xTBorderDealType, xTDept, xTCountry, xTShipmentType,
  xTPriority, xTDecisionType;

type

{ Forward Decls }

  IXMLTSaleRequestGroup = interface;

{ IXMLTSaleRequestGroup }

  IXMLTSaleRequestGroup = interface(IXMLNode)
    ['{ABFC640F-B029-4BD2-B32D-472481983BAE}']
    { Property Accessors }
    function Get_SaleRequestGroupID: Variant;
    function Get_SaleOrderType: IXMLTSaleOrderType;
    function Get_SaleDealType: IXMLTBorderDealType;
    function Get_RequestBranch: IXMLTDept;
    function Get_RequestNo: Variant;
    function Get_StreamType: IXMLTStreamType;
    function Get_IsActivatedByClient: Variant;
    function Get_ActivatedBy: Variant;
    function Get_ClientRequestGroupNo: Variant;
    function Get_RequestSendDate: IXMLTDate;
    function Get_RequestRegisterDate: IXMLTDate;
    function Get_ClientCompany: IXMLTPartner;
    function Get_MediatorCompany: IXMLTPartner;
    function Get_SaleRequestGroupEmployee: IXMLTEmployee;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_ChangeEmployee: IXMLTEmployee;
    function Get_ChangeDateTime: IXMLTDateTime;
    function Get_FinishEmployee: IXMLTEmployee;
    function Get_FinishDateTime: IXMLTDateTime;
    function Get_AnnulEmployee: IXMLTEmployee;
    function Get_AnnulDateTime: IXMLTDateTime;
    function Get_Sales: IXMLTSales;
    procedure Set_SaleRequestGroupID(Value: Variant);
    procedure Set_RequestNo(Value: Variant);
    procedure Set_IsActivatedByClient(Value: Variant);
    procedure Set_ActivatedBy(Value: Variant);
    procedure Set_ClientRequestGroupNo(Value: Variant);
    { Methods & Properties }
    property SaleRequestGroupID: Variant read Get_SaleRequestGroupID write Set_SaleRequestGroupID;
    property SaleOrderType: IXMLTSaleOrderType read Get_SaleOrderType;
    property SaleDealType: IXMLTBorderDealType read Get_SaleDealType;
    property RequestBranch: IXMLTDept read Get_RequestBranch;
    property RequestNo: Variant read Get_RequestNo write Set_RequestNo;
    property StreamType: IXMLTStreamType read Get_StreamType;
    property IsActivatedByClient: Variant read Get_IsActivatedByClient write Set_IsActivatedByClient;
    property ActivatedBy: Variant read Get_ActivatedBy write Set_ActivatedBy;
    property ClientRequestGroupNo: Variant read Get_ClientRequestGroupNo write Set_ClientRequestGroupNo;
    property RequestSendDate: IXMLTDate read Get_RequestSendDate;
    property RequestRegisterDate: IXMLTDate read Get_RequestRegisterDate;
    property ClientCompany: IXMLTPartner read Get_ClientCompany;
    property MediatorCompany: IXMLTPartner read Get_MediatorCompany;
    property SaleRequestGroupEmployee: IXMLTEmployee read Get_SaleRequestGroupEmployee;
    property CreateEmployee: IXMLTEmployee read Get_CreateEmployee;
    property CreateDateTime: IXMLTDateTime read Get_CreateDateTime;
    property ChangeEmployee: IXMLTEmployee read Get_ChangeEmployee;
    property ChangeDateTime: IXMLTDateTime read Get_ChangeDateTime;
    property FinishEmployee: IXMLTEmployee read Get_FinishEmployee;
    property FinishDateTime: IXMLTDateTime read Get_FinishDateTime;
    property AnnulEmployee: IXMLTEmployee read Get_AnnulEmployee;
    property AnnulDateTime: IXMLTDateTime read Get_AnnulDateTime;
    property Sales: IXMLTSales read Get_Sales;
  end;

{ Forward Decls }

  TXMLTSaleRequestGroup = class;

{ TXMLTSaleRequestGroup }

  TXMLTSaleRequestGroup = class(TXMLNode, IXMLTSaleRequestGroup)
  protected
    { IXMLTSaleRequestGroup }
    function Get_SaleRequestGroupID: Variant;
    function Get_SaleOrderType: IXMLTSaleOrderType;
    function Get_SaleDealType: IXMLTBorderDealType;
    function Get_RequestBranch: IXMLTDept;
    function Get_RequestNo: Variant;
    function Get_StreamType: IXMLTStreamType;
    function Get_IsActivatedByClient: Variant;
    function Get_ActivatedBy: Variant;
    function Get_ClientRequestGroupNo: Variant;
    function Get_RequestSendDate: IXMLTDate;
    function Get_RequestRegisterDate: IXMLTDate;
    function Get_ClientCompany: IXMLTPartner;
    function Get_MediatorCompany: IXMLTPartner;
    function Get_SaleRequestGroupEmployee: IXMLTEmployee;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_ChangeEmployee: IXMLTEmployee;
    function Get_ChangeDateTime: IXMLTDateTime;
    function Get_FinishEmployee: IXMLTEmployee;
    function Get_FinishDateTime: IXMLTDateTime;
    function Get_AnnulEmployee: IXMLTEmployee;
    function Get_AnnulDateTime: IXMLTDateTime;
    function Get_Sales: IXMLTSales;
    procedure Set_SaleRequestGroupID(Value: Variant);
    procedure Set_RequestNo(Value: Variant);
    procedure Set_IsActivatedByClient(Value: Variant);
    procedure Set_ActivatedBy(Value: Variant);
    procedure Set_ClientRequestGroupNo(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

implementation

{ TXMLTSaleRequestGroup }

procedure TXMLTSaleRequestGroup.AfterConstruction;
begin
  RegisterChildNode('SaleOrderType', TXMLTSaleOrderType);
  RegisterChildNode('SaleDealType', TXMLTBorderDealType);
  RegisterChildNode('RequestBranch', TXMLTDept);
  RegisterChildNode('StreamType', TXMLTStreamType);
  RegisterChildNode('RequestSendDate', TXMLTDate);
  RegisterChildNode('RequestRegisterDate', TXMLTDate);
  RegisterChildNode('ClientCompany', TXMLTPartner);
  RegisterChildNode('MediatorCompany', TXMLTPartner);
  RegisterChildNode('SaleRequestGroupEmployee', TXMLTEmployee);
  RegisterChildNode('CreateEmployee', TXMLTEmployee);
  RegisterChildNode('CreateDateTime', TXMLTDateTime);
  RegisterChildNode('ChangeEmployee', TXMLTEmployee);
  RegisterChildNode('ChangeDateTime', TXMLTDateTime);
  RegisterChildNode('FinishEmployee', TXMLTEmployee);
  RegisterChildNode('FinishDateTime', TXMLTDateTime);
  RegisterChildNode('AnnulEmployee', TXMLTEmployee);
  RegisterChildNode('AnnulDateTime', TXMLTDateTime);
  RegisterChildNode('Sales', TXMLTSales);
  inherited;
end;

function TXMLTSaleRequestGroup.Get_SaleRequestGroupID: Variant;
begin
  Result := ChildNodes['SaleRequestGroupID'];
end;

procedure TXMLTSaleRequestGroup.Set_SaleRequestGroupID(Value: Variant);
begin
  ChildNodes['SaleRequestGroupID'].NodeValue := Value;
end;

function TXMLTSaleRequestGroup.Get_SaleOrderType: IXMLTSaleOrderType;
begin
  Result := ChildNodes['SaleOrderType'] as IXMLTSaleOrderType;
end;

function TXMLTSaleRequestGroup.Get_SaleDealType: IXMLTBorderDealType;
begin
  Result := ChildNodes['SaleDealType'] as IXMLTBorderDealType;
end;

function TXMLTSaleRequestGroup.Get_RequestBranch: IXMLTDept;
begin
  Result := ChildNodes['RequestBranch'] as IXMLTDept;
end;

function TXMLTSaleRequestGroup.Get_RequestNo: Variant;
begin
  Result := ChildNodes['RequestNo'];
end;

procedure TXMLTSaleRequestGroup.Set_RequestNo(Value: Variant);
begin
  ChildNodes['RequestNo'].NodeValue := Value;
end;

function TXMLTSaleRequestGroup.Get_StreamType: IXMLTStreamType;
begin
  Result := ChildNodes['StreamType'] as IXMLTStreamType;
end;

function TXMLTSaleRequestGroup.Get_IsActivatedByClient: Variant;
begin
  Result := ChildNodes['IsActivatedByClient'];
end;

procedure TXMLTSaleRequestGroup.Set_IsActivatedByClient(Value: Variant);
begin
  ChildNodes['IsActivatedByClient'].NodeValue := Value;
end;

function TXMLTSaleRequestGroup.Get_ActivatedBy: Variant;
begin
  Result := ChildNodes['ActivatedBy'];
end;

procedure TXMLTSaleRequestGroup.Set_ActivatedBy(Value: Variant);
begin
  ChildNodes['ActivatedBy'].NodeValue := Value;
end;

function TXMLTSaleRequestGroup.Get_ClientRequestGroupNo: Variant;
begin
  Result := ChildNodes['ClientRequestGroupNo'];
end;

procedure TXMLTSaleRequestGroup.Set_ClientRequestGroupNo(Value: Variant);
begin
  ChildNodes['ClientRequestGroupNo'].NodeValue := Value;
end;

function TXMLTSaleRequestGroup.Get_RequestSendDate: IXMLTDate;
begin
  Result := ChildNodes['RequestSendDate'] as IXMLTDate;
end;

function TXMLTSaleRequestGroup.Get_RequestRegisterDate: IXMLTDate;
begin
  Result := ChildNodes['RequestRegisterDate'] as IXMLTDate;
end;

function TXMLTSaleRequestGroup.Get_ClientCompany: IXMLTPartner;
begin
  Result := ChildNodes['ClientCompany'] as IXMLTPartner;
end;

function TXMLTSaleRequestGroup.Get_MediatorCompany: IXMLTPartner;
begin
  Result := ChildNodes['MediatorCompany'] as IXMLTPartner;
end;

function TXMLTSaleRequestGroup.Get_SaleRequestGroupEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['SaleRequestGroupEmployee'] as IXMLTEmployee;
end;

function TXMLTSaleRequestGroup.Get_CreateEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['CreateEmployee'] as IXMLTEmployee;
end;

function TXMLTSaleRequestGroup.Get_CreateDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['CreateDateTime'] as IXMLTDateTime;
end;

function TXMLTSaleRequestGroup.Get_ChangeEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['ChangeEmployee'] as IXMLTEmployee;
end;

function TXMLTSaleRequestGroup.Get_ChangeDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['ChangeDateTime'] as IXMLTDateTime;
end;

function TXMLTSaleRequestGroup.Get_FinishEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['FinishEmployee'] as IXMLTEmployee;
end;

function TXMLTSaleRequestGroup.Get_FinishDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['FinishDateTime'] as IXMLTDateTime;
end;

function TXMLTSaleRequestGroup.Get_AnnulEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['AnnulEmployee'] as IXMLTEmployee;
end;

function TXMLTSaleRequestGroup.Get_AnnulDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['AnnulDateTime'] as IXMLTDateTime;
end;

function TXMLTSaleRequestGroup.Get_Sales: IXMLTSales;
begin
  Result := ChildNodes['Sales'] as IXMLTSales;
end;

end.
