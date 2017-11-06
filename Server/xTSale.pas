
{**********************************************************************}
{                                                                      }
{                           XML Data Binding                           }
{                                                                      }
{         Generated on: 09.05.2012 17:43:13                            }
{       Generated from: XMLSchemas\Public\TSale.xsd                 }
{                                                                      }
{**********************************************************************}

unit xTSale;

interface

uses xmldom, XMLDoc, XMLIntf, xTDate, xTPartner, xTCurrency,
  xTEmployee, xTDateTime, xTSaleShipments, xTSaleOrderType, xTSaleType,
  xTProduct, xTAspectType, xTBorderDealType, xTDept, xTCountry, xTShipmentType,
  xTPriority, xTDecisionType;

type

{ Forward Decls }

  IXMLTSale = interface;

{ IXMLTSale }

  IXMLTSale = interface(IXMLNode)
    ['{ABFC640F-B029-4BD2-B32D-472481983BAE}']
    { Property Accessors }
    function Get_SaleIdentifier: Variant;
    function Get_SaleOrderType: IXMLTSaleOrderType;
    function Get_RequestLineNo: Variant;
    function Get_AspectType: IXMLTAspectType;
    function Get_ClientCompany: IXMLTPartner;
    function Get_ClientRequestNo: Variant;
    function Get_Product: IXMLTProduct;
    function Get_CompanyProductName: Variant;
    function Get_RequestSendDate: IXMLTDate;
    function Get_RequestRegisterDate: IXMLTDate;
    function Get_OfferSendPlanDate: IXMLTDate;
    function Get_OfferSendDate: IXMLTDate;
    function Get_OfferAnswerPlanDate: IXMLTDate;
    function Get_OfferAnswerDate: IXMLTDate;
    function Get_DecisionPlanDate: IXMLTDate;
    function Get_DecisionDate: IXMLTDate;
    function Get_Quantity: Variant;
    function Get_AccountQuantity: Variant;
    function Get_DiscountPercent: Variant;
    function Get_MarketSinglePrice: Variant;
    function Get_SinglePrice: Variant;
    function Get_Currency: IXMLTCurrency;
    function Get_ManagerEmployee: IXMLTEmployee;
    function Get_DecisionType: IXMLTDecisionType;
    function Get_DecisionEmployee: IXMLTEmployee;
    function Get_Notes: Variant;
    function Get_PrognosisBeginDate: IXMLTDate;
    function Get_PrognosisEndDate: IXMLTDate;
    function Get_OurOfferQuantity: Variant;
    function Get_OurOfferAccountQuantity: Variant;
    function Get_OurOfferSinglePrice: Variant;
    function Get_OurOfferCurrency: IXMLTCurrency;
    function Get_ClientOfferQuantity: Variant;
    function Get_ClientOfferAccountQuantity: Variant;
    function Get_ClientOfferSinglePrice: Variant;
    function Get_ClientOfferCurrency: IXMLTCurrency;
    function Get_ReceiveDate: IXMLTDate;
    function Get_ClientOfferReceiveDate: IXMLTDate;
    function Get_ShipmentDate: IXMLTDate;
    function Get_SaleDealType: IXMLTBorderDealType;
    function Get_SaleBranch: IXMLTDept;
    function Get_SaleNo: Variant;
    function Get_SaleType: IXMLTSaleType;
    function Get_SalePriority: IXMLTPriority;
    function Get_ShipmentStore: IXMLTDept;
    function Get_ShipmentDays: Variant;
    function Get_ReceivePlaceOfficeName: Variant;
    function Get_ReceivePlaceCountry: IXMLTCountry;
    function Get_CustomhouseCompany: IXMLTPartner;
    function Get_ShipmentType: IXMLTShipmentType;
    function Get_IsVendorTransport: Variant;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_ChangeEmployee: IXMLTEmployee;
    function Get_ChangeDateTime: IXMLTDateTime;
    function Get_FinishEmployee: IXMLTEmployee;
    function Get_FinishDateTime: IXMLTDateTime;
    function Get_AnnulEmployee: IXMLTEmployee;
    function Get_AnnulDateTime: IXMLTDateTime;
    function Get_SaleShipments: IXMLTSaleShipments;
    procedure Set_SaleIdentifier(Value: Variant);
    procedure Set_RequestLineNo(Value: Variant);
    procedure Set_ClientRequestNo(Value: Variant);
    procedure Set_CompanyProductName(Value: Variant);
    procedure Set_Quantity(Value: Variant);
    procedure Set_AccountQuantity(Value: Variant);
    procedure Set_DiscountPercent(Value: Variant);
    procedure Set_MarketSinglePrice(Value: Variant);
    procedure Set_SinglePrice(Value: Variant);
    procedure Set_Notes(Value: Variant);
    procedure Set_OurOfferQuantity(Value: Variant);
    procedure Set_OurOfferAccountQuantity(Value: Variant);
    procedure Set_OurOfferSinglePrice(Value: Variant);
    procedure Set_ClientOfferQuantity(Value: Variant);
    procedure Set_ClientOfferAccountQuantity(Value: Variant);
    procedure Set_ClientOfferSinglePrice(Value: Variant);
    procedure Set_SaleNo(Value: Variant);
    procedure Set_ShipmentDays(Value: Variant);
    procedure Set_ReceivePlaceOfficeName(Value: Variant);
    procedure Set_IsVendorTransport(Value: Variant);
    { Methods & Properties }
    property SaleIdentifier: Variant read Get_SaleIdentifier write Set_SaleIdentifier;
    property SaleOrderType: IXMLTSaleOrderType read Get_SaleOrderType;
    property RequestLineNo: Variant read Get_RequestLineNo write Set_RequestLineNo;
    property AspectType: IXMLTAspectType read Get_AspectType;
    property ClientCompany: IXMLTPartner read Get_ClientCompany;
    property ClientRequestNo: Variant read Get_ClientRequestNo write Set_ClientRequestNo;
    property Product: IXMLTProduct read Get_Product;
    property CompanyProductName: Variant read Get_CompanyProductName write Set_CompanyProductName;
    property RequestSendDate: IXMLTDate read Get_RequestSendDate;
    property RequestRegisterDate: IXMLTDate read Get_RequestRegisterDate;
    property OfferSendPlanDate: IXMLTDate read Get_OfferSendPlanDate;
    property OfferSendDate: IXMLTDate read Get_OfferSendDate;
    property OfferAnswerPlanDate: IXMLTDate read Get_OfferAnswerPlanDate;
    property OfferAnswerDate: IXMLTDate read Get_OfferAnswerDate;
    property DecisionPlanDate: IXMLTDate read Get_DecisionPlanDate;
    property DecisionDate: IXMLTDate read Get_DecisionDate;
    property Quantity: Variant read Get_Quantity write Set_Quantity;
    property AccountQuantity: Variant read Get_AccountQuantity write Set_AccountQuantity;
    property DiscountPercent: Variant read Get_DiscountPercent write Set_DiscountPercent;
    property MarketSinglePrice: Variant read Get_MarketSinglePrice write Set_MarketSinglePrice;
    property SinglePrice: Variant read Get_SinglePrice write Set_SinglePrice;
    property Currency: IXMLTCurrency read Get_Currency;
    property ManagerEmployee: IXMLTEmployee read Get_ManagerEmployee;
    property DecisionType: IXMLTDecisionType read Get_DecisionType;
    property DecisionEmployee: IXMLTEmployee read Get_DecisionEmployee;
    property Notes: Variant read Get_Notes write Set_Notes;
    property PrognosisBeginDate: IXMLTDate read Get_PrognosisBeginDate;
    property PrognosisEndDate: IXMLTDate read Get_PrognosisEndDate;
    property OurOfferQuantity: Variant read Get_OurOfferQuantity write Set_OurOfferQuantity;
    property OurOfferAccountQuantity: Variant read Get_OurOfferAccountQuantity write Set_OurOfferAccountQuantity;
    property OurOfferSinglePrice: Variant read Get_OurOfferSinglePrice write Set_OurOfferSinglePrice;
    property OurOfferCurrency: IXMLTCurrency read Get_OurOfferCurrency;
    property ClientOfferQuantity: Variant read Get_ClientOfferQuantity write Set_ClientOfferQuantity;
    property ClientOfferAccountQuantity: Variant read Get_ClientOfferAccountQuantity write Set_ClientOfferAccountQuantity;
    property ClientOfferSinglePrice: Variant read Get_ClientOfferSinglePrice write Set_ClientOfferSinglePrice;
    property ClientOfferCurrency: IXMLTCurrency read Get_ClientOfferCurrency;
    property ReceiveDate: IXMLTDate read Get_ReceiveDate;
    property ClientOfferReceiveDate: IXMLTDate read Get_ClientOfferReceiveDate;
    property ShipmentDate: IXMLTDate read Get_ShipmentDate;
    property SaleDealType: IXMLTBorderDealType read Get_SaleDealType;
    property SaleBranch: IXMLTDept read Get_SaleBranch;
    property SaleNo: Variant read Get_SaleNo write Set_SaleNo;
    property SaleType: IXMLTSaleType read Get_SaleType;
    property SalePriority: IXMLTPriority read Get_SalePriority;
    property ShipmentStore: IXMLTDept read Get_ShipmentStore;
    property ShipmentDays: Variant read Get_ShipmentDays write Set_ShipmentDays;
    property ReceivePlaceOfficeName: Variant read Get_ReceivePlaceOfficeName write Set_ReceivePlaceOfficeName;
    property ReceivePlaceCountry: IXMLTCountry read Get_ReceivePlaceCountry;
    property CustomhouseCompany: IXMLTPartner read Get_CustomhouseCompany;
    property ShipmentType: IXMLTShipmentType read Get_ShipmentType;
    property IsVendorTransport: Variant read Get_IsVendorTransport write Set_IsVendorTransport;
    property CreateEmployee: IXMLTEmployee read Get_CreateEmployee;
    property CreateDateTime: IXMLTDateTime read Get_CreateDateTime;
    property ChangeEmployee: IXMLTEmployee read Get_ChangeEmployee;
    property ChangeDateTime: IXMLTDateTime read Get_ChangeDateTime;
    property FinishEmployee: IXMLTEmployee read Get_FinishEmployee;
    property FinishDateTime: IXMLTDateTime read Get_FinishDateTime;
    property AnnulEmployee: IXMLTEmployee read Get_AnnulEmployee;
    property AnnulDateTime: IXMLTDateTime read Get_AnnulDateTime;
    property SaleShipments: IXMLTSaleShipments read Get_SaleShipments;
  end;

{ Forward Decls }

  TXMLTSale = class;

{ TXMLTSale }

  TXMLTSale = class(TXMLNode, IXMLTSale)
  protected
    { IXMLTSale }
    function Get_SaleIdentifier: Variant;
    function Get_SaleOrderType: IXMLTSaleOrderType;
    function Get_RequestLineNo: Variant;
    function Get_AspectType: IXMLTAspectType;
    function Get_ClientCompany: IXMLTPartner;
    function Get_ClientRequestNo: Variant;
    function Get_Product: IXMLTProduct;
    function Get_CompanyProductName: Variant;
    function Get_RequestSendDate: IXMLTDate;
    function Get_RequestRegisterDate: IXMLTDate;
    function Get_OfferSendPlanDate: IXMLTDate;
    function Get_OfferSendDate: IXMLTDate;
    function Get_OfferAnswerPlanDate: IXMLTDate;
    function Get_OfferAnswerDate: IXMLTDate;
    function Get_DecisionPlanDate: IXMLTDate;
    function Get_DecisionDate: IXMLTDate;
    function Get_Quantity: Variant;
    function Get_AccountQuantity: Variant;
    function Get_DiscountPercent: Variant;
    function Get_MarketSinglePrice: Variant;
    function Get_SinglePrice: Variant;
    function Get_Currency: IXMLTCurrency;
    function Get_ManagerEmployee: IXMLTEmployee;
    function Get_DecisionType: IXMLTDecisionType;
    function Get_DecisionEmployee: IXMLTEmployee;
    function Get_Notes: Variant;
    function Get_PrognosisBeginDate: IXMLTDate;
    function Get_PrognosisEndDate: IXMLTDate;
    function Get_OurOfferQuantity: Variant;
    function Get_OurOfferAccountQuantity: Variant;
    function Get_OurOfferSinglePrice: Variant;
    function Get_OurOfferCurrency: IXMLTCurrency;
    function Get_ClientOfferQuantity: Variant;
    function Get_ClientOfferAccountQuantity: Variant;
    function Get_ClientOfferSinglePrice: Variant;
    function Get_ClientOfferCurrency: IXMLTCurrency;
    function Get_ReceiveDate: IXMLTDate;
    function Get_ClientOfferReceiveDate: IXMLTDate;
    function Get_ShipmentDate: IXMLTDate;
    function Get_SaleDealType: IXMLTBorderDealType;
    function Get_SaleBranch: IXMLTDept;
    function Get_SaleNo: Variant;
    function Get_SaleType: IXMLTSaleType;
    function Get_SalePriority: IXMLTPriority;
    function Get_ShipmentStore: IXMLTDept;
    function Get_ShipmentDays: Variant;
    function Get_ReceivePlaceOfficeName: Variant;
    function Get_ReceivePlaceCountry: IXMLTCountry;
    function Get_CustomhouseCompany: IXMLTPartner;
    function Get_ShipmentType: IXMLTShipmentType;
    function Get_IsVendorTransport: Variant;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_ChangeEmployee: IXMLTEmployee;
    function Get_ChangeDateTime: IXMLTDateTime;
    function Get_FinishEmployee: IXMLTEmployee;
    function Get_FinishDateTime: IXMLTDateTime;
    function Get_AnnulEmployee: IXMLTEmployee;
    function Get_AnnulDateTime: IXMLTDateTime;
    function Get_SaleShipments: IXMLTSaleShipments;
    procedure Set_SaleIdentifier(Value: Variant);
    procedure Set_RequestLineNo(Value: Variant);
    procedure Set_ClientRequestNo(Value: Variant);
    procedure Set_CompanyProductName(Value: Variant);
    procedure Set_Quantity(Value: Variant);
    procedure Set_AccountQuantity(Value: Variant);
    procedure Set_DiscountPercent(Value: Variant);
    procedure Set_MarketSinglePrice(Value: Variant);
    procedure Set_SinglePrice(Value: Variant);
    procedure Set_Notes(Value: Variant);
    procedure Set_OurOfferQuantity(Value: Variant);
    procedure Set_OurOfferAccountQuantity(Value: Variant);
    procedure Set_OurOfferSinglePrice(Value: Variant);
    procedure Set_ClientOfferQuantity(Value: Variant);
    procedure Set_ClientOfferAccountQuantity(Value: Variant);
    procedure Set_ClientOfferSinglePrice(Value: Variant);
    procedure Set_SaleNo(Value: Variant);
    procedure Set_ShipmentDays(Value: Variant);
    procedure Set_ReceivePlaceOfficeName(Value: Variant);
    procedure Set_IsVendorTransport(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

implementation

{ TXMLTSale }

procedure TXMLTSale.AfterConstruction;
begin
  RegisterChildNode('SaleOrderType', TXMLTSaleOrderType);
  RegisterChildNode('AspectType', TXMLTAspectType);
  RegisterChildNode('ClientCompany', TXMLTPartner);
  RegisterChildNode('Product', TXMLTProduct);
  RegisterChildNode('RequestSendDate', TXMLTDate);
  RegisterChildNode('RequestRegisterDate', TXMLTDate);
  RegisterChildNode('OfferSendPlanDate', TXMLTDate);
  RegisterChildNode('OfferSendDate', TXMLTDate);
  RegisterChildNode('OfferAnswerPlanDate', TXMLTDate);
  RegisterChildNode('OfferAnswerDate', TXMLTDate);
  RegisterChildNode('DecisionPlanDate', TXMLTDate);
  RegisterChildNode('DecisionDate', TXMLTDate);
  RegisterChildNode('Currency', TXMLTCurrency);
  RegisterChildNode('ManagerEmployee', TXMLTEmployee);
  RegisterChildNode('DecisionType', TXMLTDecisionType);
  RegisterChildNode('DecisionEmployee', TXMLTEmployee);
  RegisterChildNode('PrognosisBeginDate', TXMLTDate);
  RegisterChildNode('PrognosisEndDate', TXMLTDate);
  RegisterChildNode('OurOfferCurrency', TXMLTCurrency);
  RegisterChildNode('ClientOfferCurrency', TXMLTCurrency);
  RegisterChildNode('ReceiveDate', TXMLTDate);
  RegisterChildNode('ClientOfferReceiveDate', TXMLTDate);
  RegisterChildNode('ShipmentDate', TXMLTDate);
  RegisterChildNode('SaleDealType', TXMLTBorderDealType);
  RegisterChildNode('SaleBranch', TXMLTDept);
  RegisterChildNode('SaleType', TXMLTSaleType);
  RegisterChildNode('SalePriority', TXMLTPriority);
  RegisterChildNode('ShipmentStore', TXMLTDept);
  RegisterChildNode('ReceivePlaceCountry', TXMLTCountry);
  RegisterChildNode('CustomhouseCompany', TXMLTPartner);
  RegisterChildNode('ShipmentType', TXMLTShipmentType);
  RegisterChildNode('CreateEmployee', TXMLTEmployee);
  RegisterChildNode('CreateDateTime', TXMLTDateTime);
  RegisterChildNode('ChangeEmployee', TXMLTEmployee);
  RegisterChildNode('ChangeDateTime', TXMLTDateTime);
  RegisterChildNode('FinishEmployee', TXMLTEmployee);
  RegisterChildNode('FinishDateTime', TXMLTDateTime);
  RegisterChildNode('AnnulEmployee', TXMLTEmployee);
  RegisterChildNode('AnnulDateTime', TXMLTDateTime);
  RegisterChildNode('SaleShipments', TXMLTSaleShipments);
  inherited;
end;

function TXMLTSale.Get_SaleIdentifier: Variant;
begin
  Result := ChildNodes['SaleIdentifier'];
end;

procedure TXMLTSale.Set_SaleIdentifier(Value: Variant);
begin
  ChildNodes['SaleIdentifier'].NodeValue := Value;
end;

function TXMLTSale.Get_SaleOrderType: IXMLTSaleOrderType;
begin
  Result := ChildNodes['SaleOrderType'] as IXMLTSaleOrderType;
end;

function TXMLTSale.Get_RequestLineNo: Variant;
begin
  Result := ChildNodes['RequestLineNo'];
end;

procedure TXMLTSale.Set_RequestLineNo(Value: Variant);
begin
  ChildNodes['RequestLineNo'].NodeValue := Value;
end;

function TXMLTSale.Get_AspectType: IXMLTAspectType;
begin
  Result := ChildNodes['AspectType'] as IXMLTAspectType;
end;

function TXMLTSale.Get_ClientCompany: IXMLTPartner;
begin
  Result := ChildNodes['ClientCompany'] as IXMLTPartner;
end;

function TXMLTSale.Get_ClientRequestNo: Variant;
begin
  Result := ChildNodes['ClientRequestNo'];
end;

procedure TXMLTSale.Set_ClientRequestNo(Value: Variant);
begin
  ChildNodes['ClientRequestNo'].NodeValue := Value;
end;

function TXMLTSale.Get_Product: IXMLTProduct;
begin
  Result := ChildNodes['Product'] as IXMLTProduct;
end;

function TXMLTSale.Get_CompanyProductName: Variant;
begin
  Result := ChildNodes['CompanyProductName'];
end;

procedure TXMLTSale.Set_CompanyProductName(Value: Variant);
begin
  ChildNodes['CompanyProductName'].NodeValue := Value;
end;

function TXMLTSale.Get_RequestSendDate: IXMLTDate;
begin
  Result := ChildNodes['RequestSendDate'] as IXMLTDate;
end;

function TXMLTSale.Get_RequestRegisterDate: IXMLTDate;
begin
  Result := ChildNodes['RequestRegisterDate'] as IXMLTDate;
end;

function TXMLTSale.Get_OfferSendPlanDate: IXMLTDate;
begin
  Result := ChildNodes['OfferSendPlanDate'] as IXMLTDate;
end;

function TXMLTSale.Get_OfferSendDate: IXMLTDate;
begin
  Result := ChildNodes['OfferSendDate'] as IXMLTDate;
end;

function TXMLTSale.Get_OfferAnswerPlanDate: IXMLTDate;
begin
  Result := ChildNodes['OfferAnswerPlanDate'] as IXMLTDate;
end;

function TXMLTSale.Get_OfferAnswerDate: IXMLTDate;
begin
  Result := ChildNodes['OfferAnswerDate'] as IXMLTDate;
end;

function TXMLTSale.Get_DecisionPlanDate: IXMLTDate;
begin
  Result := ChildNodes['DecisionPlanDate'] as IXMLTDate;
end;

function TXMLTSale.Get_DecisionDate: IXMLTDate;
begin
  Result := ChildNodes['DecisionDate'] as IXMLTDate;
end;

function TXMLTSale.Get_Quantity: Variant;
begin
  Result := ChildNodes['Quantity'];
end;

procedure TXMLTSale.Set_Quantity(Value: Variant);
begin
  ChildNodes['Quantity'].NodeValue := Value;
end;

function TXMLTSale.Get_AccountQuantity: Variant;
begin
  Result := ChildNodes['AccountQuantity'];
end;

procedure TXMLTSale.Set_AccountQuantity(Value: Variant);
begin
  ChildNodes['AccountQuantity'].NodeValue := Value;
end;

function TXMLTSale.Get_DiscountPercent: Variant;
begin
  Result := ChildNodes['DiscountPercent'];
end;

procedure TXMLTSale.Set_DiscountPercent(Value: Variant);
begin
  ChildNodes['DiscountPercent'].NodeValue := Value;
end;

function TXMLTSale.Get_MarketSinglePrice: Variant;
begin
  Result := ChildNodes['MarketSinglePrice'];
end;

procedure TXMLTSale.Set_MarketSinglePrice(Value: Variant);
begin
  ChildNodes['MarketSinglePrice'].NodeValue := Value;
end;

function TXMLTSale.Get_SinglePrice: Variant;
begin
  Result := ChildNodes['SinglePrice'];
end;

procedure TXMLTSale.Set_SinglePrice(Value: Variant);
begin
  ChildNodes['SinglePrice'].NodeValue := Value;
end;

function TXMLTSale.Get_Currency: IXMLTCurrency;
begin
  Result := ChildNodes['Currency'] as IXMLTCurrency;
end;

function TXMLTSale.Get_ManagerEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['ManagerEmployee'] as IXMLTEmployee;
end;

function TXMLTSale.Get_DecisionType: IXMLTDecisionType;
begin
  Result := ChildNodes['DecisionType'] as IXMLTDecisionType;
end;

function TXMLTSale.Get_DecisionEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['DecisionEmployee'] as IXMLTEmployee;
end;

function TXMLTSale.Get_Notes: Variant;
begin
  Result := ChildNodes['Notes'];
end;

procedure TXMLTSale.Set_Notes(Value: Variant);
begin
  ChildNodes['Notes'].NodeValue := Value;
end;

function TXMLTSale.Get_PrognosisBeginDate: IXMLTDate;
begin
  Result := ChildNodes['PrognosisBeginDate'] as IXMLTDate;
end;

function TXMLTSale.Get_PrognosisEndDate: IXMLTDate;
begin
  Result := ChildNodes['PrognosisEndDate'] as IXMLTDate;
end;

function TXMLTSale.Get_OurOfferQuantity: Variant;
begin
  Result := ChildNodes['OurOfferQuantity'];
end;

procedure TXMLTSale.Set_OurOfferQuantity(Value: Variant);
begin
  ChildNodes['OurOfferQuantity'].NodeValue := Value;
end;

function TXMLTSale.Get_OurOfferAccountQuantity: Variant;
begin
  Result := ChildNodes['OurOfferAccountQuantity'];
end;

procedure TXMLTSale.Set_OurOfferAccountQuantity(Value: Variant);
begin
  ChildNodes['OurOfferAccountQuantity'].NodeValue := Value;
end;

function TXMLTSale.Get_OurOfferSinglePrice: Variant;
begin
  Result := ChildNodes['OurOfferSinglePrice'];
end;

procedure TXMLTSale.Set_OurOfferSinglePrice(Value: Variant);
begin
  ChildNodes['OurOfferSinglePrice'].NodeValue := Value;
end;

function TXMLTSale.Get_OurOfferCurrency: IXMLTCurrency;
begin
  Result := ChildNodes['OurOfferCurrency'] as IXMLTCurrency;
end;

function TXMLTSale.Get_ClientOfferQuantity: Variant;
begin
  Result := ChildNodes['ClientOfferQuantity'];
end;

procedure TXMLTSale.Set_ClientOfferQuantity(Value: Variant);
begin
  ChildNodes['ClientOfferQuantity'].NodeValue := Value;
end;

function TXMLTSale.Get_ClientOfferAccountQuantity: Variant;
begin
  Result := ChildNodes['ClientOfferAccountQuantity'];
end;

procedure TXMLTSale.Set_ClientOfferAccountQuantity(Value: Variant);
begin
  ChildNodes['ClientOfferAccountQuantity'].NodeValue := Value;
end;

function TXMLTSale.Get_ClientOfferSinglePrice: Variant;
begin
  Result := ChildNodes['ClientOfferSinglePrice'];
end;

procedure TXMLTSale.Set_ClientOfferSinglePrice(Value: Variant);
begin
  ChildNodes['ClientOfferSinglePrice'].NodeValue := Value;
end;

function TXMLTSale.Get_ClientOfferCurrency: IXMLTCurrency;
begin
  Result := ChildNodes['ClientOfferCurrency'] as IXMLTCurrency;
end;

function TXMLTSale.Get_ReceiveDate: IXMLTDate;
begin
  Result := ChildNodes['ReceiveDate'] as IXMLTDate;
end;

function TXMLTSale.Get_ClientOfferReceiveDate: IXMLTDate;
begin
  Result := ChildNodes['ClientOfferReceiveDate'] as IXMLTDate;
end;

function TXMLTSale.Get_ShipmentDate: IXMLTDate;
begin
  Result := ChildNodes['ShipmentDate'] as IXMLTDate;
end;

function TXMLTSale.Get_SaleDealType: IXMLTBorderDealType;
begin
  Result := ChildNodes['SaleDealType'] as IXMLTBorderDealType;
end;

function TXMLTSale.Get_SaleBranch: IXMLTDept;
begin
  Result := ChildNodes['SaleBranch'] as IXMLTDept;
end;

function TXMLTSale.Get_SaleNo: Variant;
begin
  Result := ChildNodes['SaleNo'];
end;

procedure TXMLTSale.Set_SaleNo(Value: Variant);
begin
  ChildNodes['SaleNo'].NodeValue := Value;
end;

function TXMLTSale.Get_SaleType: IXMLTSaleType;
begin
  Result := ChildNodes['SaleType'] as IXMLTSaleType;
end;

function TXMLTSale.Get_SalePriority: IXMLTPriority;
begin
  Result := ChildNodes['SalePriority'] as IXMLTPriority;
end;

function TXMLTSale.Get_ShipmentStore: IXMLTDept;
begin
  Result := ChildNodes['ShipmentStore'] as IXMLTDept;
end;

function TXMLTSale.Get_ShipmentDays: Variant;
begin
  Result := ChildNodes['ShipmentDays'];
end;

procedure TXMLTSale.Set_ShipmentDays(Value: Variant);
begin
  ChildNodes['ShipmentDays'].NodeValue := Value;
end;

function TXMLTSale.Get_ReceivePlaceOfficeName: Variant;
begin
  Result := ChildNodes['ReceivePlaceOfficeName'];
end;

procedure TXMLTSale.Set_ReceivePlaceOfficeName(Value: Variant);
begin
  ChildNodes['ReceivePlaceOfficeName'].NodeValue := Value;
end;

function TXMLTSale.Get_ReceivePlaceCountry: IXMLTCountry;
begin
  Result := ChildNodes['ReceivePlaceCountry'] as IXMLTCountry;
end;

function TXMLTSale.Get_CustomhouseCompany: IXMLTPartner;
begin
  Result := ChildNodes['CustomhouseCompany'] as IXMLTPartner;
end;

function TXMLTSale.Get_ShipmentType: IXMLTShipmentType;
begin
  Result := ChildNodes['ShipmentType'] as IXMLTShipmentType;
end;

function TXMLTSale.Get_IsVendorTransport: Variant;
begin
  Result := ChildNodes['IsVendorTransport'];
end;

procedure TXMLTSale.Set_IsVendorTransport(Value: Variant);
begin
  ChildNodes['IsVendorTransport'].NodeValue := Value;
end;

function TXMLTSale.Get_CreateEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['CreateEmployee'] as IXMLTEmployee;
end;

function TXMLTSale.Get_CreateDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['CreateDateTime'] as IXMLTDateTime;
end;

function TXMLTSale.Get_ChangeEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['ChangeEmployee'] as IXMLTEmployee;
end;

function TXMLTSale.Get_ChangeDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['ChangeDateTime'] as IXMLTDateTime;
end;

function TXMLTSale.Get_FinishEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['FinishEmployee'] as IXMLTEmployee;
end;

function TXMLTSale.Get_FinishDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['FinishDateTime'] as IXMLTDateTime;
end;

function TXMLTSale.Get_AnnulEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['AnnulEmployee'] as IXMLTEmployee;
end;

function TXMLTSale.Get_AnnulDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['AnnulDateTime'] as IXMLTDateTime;
end;

function TXMLTSale.Get_SaleShipments: IXMLTSaleShipments;
begin
  Result := ChildNodes['SaleShipments'] as IXMLTSaleShipments;
end;

end.
