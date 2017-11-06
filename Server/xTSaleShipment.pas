
{*************************************************************************}
{                                                                         }
{                            XML Data Binding                             }
{                                                                         }
{         Generated on: 22.8.2012 13:45:37                                }
{       Generated from: XMLSchemas\Public\TSaleShipment.xsd               }
{                                                                         }
{*************************************************************************}

unit xTSaleShipment;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTDate, xTCurrency;

type

{ Forward Decls }

  IXMLTSaleShipment = interface;

{ IXMLTSaleShipment }

  IXMLTSaleShipment = interface(IXMLNode)
    ['{B329BA28-6B4C-4E54-AFF3-79E064276EEC}']
    { Property Accessors }
    function Get_SaleShipmentNo: Variant;
    function Get_SaleShipmentIdentifier: Variant;
    function Get_ShipmentPlanDate: IXMLTDate;
    function Get_PlanQuantity: Variant;
    function Get_PlanAccountQuantity: Variant;
    function Get_ShipmentDate: IXMLTDate;
    function Get_Quantity: Variant;
    function Get_AccountQuantity: Variant;
    function Get_ReceiveDate: IXMLTDate;
    function Get_InvoiceNo: Variant;
    function Get_IsProformInvoice: Variant;
    function Get_InvoiceDate: IXMLTDate;
    function Get_InvoiceCurrency: IXMLTCurrency;
    function Get_InvoiceSinglePrice: Variant;
    function Get_InvoiceTotalPrice: Variant;
    procedure Set_SaleShipmentNo(Value: Variant);
    procedure Set_SaleShipmentIdentifier(Value: Variant);
    procedure Set_PlanQuantity(Value: Variant);
    procedure Set_PlanAccountQuantity(Value: Variant);
    procedure Set_Quantity(Value: Variant);
    procedure Set_AccountQuantity(Value: Variant);
    procedure Set_InvoiceNo(Value: Variant);
    procedure Set_IsProformInvoice(Value: Variant);
    procedure Set_InvoiceSinglePrice(Value: Variant);
    procedure Set_InvoiceTotalPrice(Value: Variant);
    { Methods & Properties }
    property SaleShipmentNo: Variant read Get_SaleShipmentNo write Set_SaleShipmentNo;
    property SaleShipmentIdentifier: Variant read Get_SaleShipmentIdentifier write Set_SaleShipmentIdentifier;
    property ShipmentPlanDate: IXMLTDate read Get_ShipmentPlanDate;
    property PlanQuantity: Variant read Get_PlanQuantity write Set_PlanQuantity;
    property PlanAccountQuantity: Variant read Get_PlanAccountQuantity write Set_PlanAccountQuantity;
    property ShipmentDate: IXMLTDate read Get_ShipmentDate;
    property Quantity: Variant read Get_Quantity write Set_Quantity;
    property AccountQuantity: Variant read Get_AccountQuantity write Set_AccountQuantity;
    property ReceiveDate: IXMLTDate read Get_ReceiveDate;
    property InvoiceNo: Variant read Get_InvoiceNo write Set_InvoiceNo;
    property IsProformInvoice: Variant read Get_IsProformInvoice write Set_IsProformInvoice;
    property InvoiceDate: IXMLTDate read Get_InvoiceDate;
    property InvoiceCurrency: IXMLTCurrency read Get_InvoiceCurrency;
    property InvoiceSinglePrice: Variant read Get_InvoiceSinglePrice write Set_InvoiceSinglePrice;
    property InvoiceTotalPrice: Variant read Get_InvoiceTotalPrice write Set_InvoiceTotalPrice;
  end;

{ Forward Decls }

  TXMLTSaleShipment = class;

{ TXMLTSaleShipment }

  TXMLTSaleShipment = class(TXMLNode, IXMLTSaleShipment)
  protected
    { IXMLTSaleShipment }
    function Get_SaleShipmentNo: Variant;
    function Get_SaleShipmentIdentifier: Variant;
    function Get_ShipmentPlanDate: IXMLTDate;
    function Get_PlanQuantity: Variant;
    function Get_PlanAccountQuantity: Variant;
    function Get_ShipmentDate: IXMLTDate;
    function Get_Quantity: Variant;
    function Get_AccountQuantity: Variant;
    function Get_ReceiveDate: IXMLTDate;
    function Get_InvoiceNo: Variant;
    function Get_IsProformInvoice: Variant;
    function Get_InvoiceDate: IXMLTDate;
    function Get_InvoiceCurrency: IXMLTCurrency;
    function Get_InvoiceSinglePrice: Variant;
    function Get_InvoiceTotalPrice: Variant;
    procedure Set_SaleShipmentNo(Value: Variant);
    procedure Set_SaleShipmentIdentifier(Value: Variant);
    procedure Set_PlanQuantity(Value: Variant);
    procedure Set_PlanAccountQuantity(Value: Variant);
    procedure Set_Quantity(Value: Variant);
    procedure Set_AccountQuantity(Value: Variant);
    procedure Set_InvoiceNo(Value: Variant);
    procedure Set_IsProformInvoice(Value: Variant);
    procedure Set_InvoiceSinglePrice(Value: Variant);
    procedure Set_InvoiceTotalPrice(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTSaleShipment;
function LoadUnknown(const FileName: WideString): IXMLTSaleShipment;
function NewUnknown: IXMLTSaleShipment;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTSaleShipment;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTSaleShipment, TargetNamespace) as IXMLTSaleShipment;
end;

function LoadUnknown(const FileName: WideString): IXMLTSaleShipment;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTSaleShipment, TargetNamespace) as IXMLTSaleShipment;
end;

function NewUnknown: IXMLTSaleShipment;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTSaleShipment, TargetNamespace) as IXMLTSaleShipment;
end;

{ TXMLTSaleShipment }

procedure TXMLTSaleShipment.AfterConstruction;
begin
  RegisterChildNode('ShipmentPlanDate', TXMLTDate);
  RegisterChildNode('ShipmentDate', TXMLTDate);
  RegisterChildNode('ReceiveDate', TXMLTDate);
  RegisterChildNode('InvoiceDate', TXMLTDate);
  RegisterChildNode('InvoiceCurrency', TXMLTCurrency);
  inherited;
end;

function TXMLTSaleShipment.Get_SaleShipmentNo: Variant;
begin
  Result := ChildNodes['SaleShipmentNo'].NodeValue;
end;

procedure TXMLTSaleShipment.Set_SaleShipmentNo(Value: Variant);
begin
  ChildNodes['SaleShipmentNo'].NodeValue := Value;
end;

function TXMLTSaleShipment.Get_SaleShipmentIdentifier: Variant;
begin
  Result := ChildNodes['SaleShipmentIdentifier'].NodeValue;
end;

procedure TXMLTSaleShipment.Set_SaleShipmentIdentifier(Value: Variant);
begin
  ChildNodes['SaleShipmentIdentifier'].NodeValue := Value;
end;

function TXMLTSaleShipment.Get_ShipmentPlanDate: IXMLTDate;
begin
  Result := ChildNodes['ShipmentPlanDate'] as IXMLTDate;
end;

function TXMLTSaleShipment.Get_PlanQuantity: Variant;
begin
  Result := ChildNodes['PlanQuantity'].NodeValue;
end;

procedure TXMLTSaleShipment.Set_PlanQuantity(Value: Variant);
begin
  ChildNodes['PlanQuantity'].NodeValue := Value;
end;

function TXMLTSaleShipment.Get_PlanAccountQuantity: Variant;
begin
  Result := ChildNodes['PlanAccountQuantity'].NodeValue;
end;

procedure TXMLTSaleShipment.Set_PlanAccountQuantity(Value: Variant);
begin
  ChildNodes['PlanAccountQuantity'].NodeValue := Value;
end;

function TXMLTSaleShipment.Get_ShipmentDate: IXMLTDate;
begin
  Result := ChildNodes['ShipmentDate'] as IXMLTDate;
end;

function TXMLTSaleShipment.Get_Quantity: Variant;
begin
  Result := ChildNodes['Quantity'].NodeValue;
end;

procedure TXMLTSaleShipment.Set_Quantity(Value: Variant);
begin
  ChildNodes['Quantity'].NodeValue := Value;
end;

function TXMLTSaleShipment.Get_AccountQuantity: Variant;
begin
  Result := ChildNodes['AccountQuantity'].NodeValue;
end;

procedure TXMLTSaleShipment.Set_AccountQuantity(Value: Variant);
begin
  ChildNodes['AccountQuantity'].NodeValue := Value;
end;

function TXMLTSaleShipment.Get_ReceiveDate: IXMLTDate;
begin
  Result := ChildNodes['ReceiveDate'] as IXMLTDate;
end;

function TXMLTSaleShipment.Get_InvoiceNo: Variant;
begin
  Result := ChildNodes['InvoiceNo'].NodeValue;
end;

procedure TXMLTSaleShipment.Set_InvoiceNo(Value: Variant);
begin
  ChildNodes['InvoiceNo'].NodeValue := Value;
end;

function TXMLTSaleShipment.Get_IsProformInvoice: Variant;
begin
  Result := ChildNodes['IsProformInvoice'].NodeValue;
end;

procedure TXMLTSaleShipment.Set_IsProformInvoice(Value: Variant);
begin
  ChildNodes['IsProformInvoice'].NodeValue := Value;
end;

function TXMLTSaleShipment.Get_InvoiceDate: IXMLTDate;
begin
  Result := ChildNodes['InvoiceDate'] as IXMLTDate;
end;

function TXMLTSaleShipment.Get_InvoiceCurrency: IXMLTCurrency;
begin
  Result := ChildNodes['InvoiceCurrency'] as IXMLTCurrency;
end;

function TXMLTSaleShipment.Get_InvoiceSinglePrice: Variant;
begin
  Result := ChildNodes['InvoiceSinglePrice'].NodeValue;
end;

procedure TXMLTSaleShipment.Set_InvoiceSinglePrice(Value: Variant);
begin
  ChildNodes['InvoiceSinglePrice'].NodeValue := Value;
end;

function TXMLTSaleShipment.Get_InvoiceTotalPrice: Variant;
begin
  Result := ChildNodes['InvoiceTotalPrice'].NodeValue;
end;

procedure TXMLTSaleShipment.Set_InvoiceTotalPrice(Value: Variant);
begin
  ChildNodes['InvoiceTotalPrice'].NodeValue := Value;
end;

end.
