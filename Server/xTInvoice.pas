
{**********************************************************************}
{                                                                      }
{                           XML Data Binding                           }
{                                                                      }
{         Generated on: 09.05.2012 17:43:13                            }
{       Generated from: XMLSchemas\Public\TInvoice.xsd                 }
{   Settings stored in: XMLSchemas\Public\TInvoice.xdb   }
{                                                                      }
{**********************************************************************}

unit xTInvoice;

interface

uses xmldom, XMLDoc, XMLIntf, xTDate, xTPartner, xTCurrency, xTVatReason,
  xTEmployee, xTDateTime, xTInvoiceItems;

type

{ Forward Decls }

  IXMLTInvoice = interface;

{ IXMLTInvoice }

  IXMLTInvoice = interface(IXMLNode)
    ['{F9EBA9C1-F889-4B00-9897-BDF265E13382}']
    { Property Accessors }
    function Get_IsProformInvoice: Variant;
    function Get_InvoiceNo: Variant;
    function Get_InvoiceTypeName: Variant;
    function Get_InvoiceTypeIntlName: Variant;
    function Get_InvoiceDate: IXMLTDate;
    function Get_EventDate: IXMLTDate;
    function Get_InvoicePlace: Variant;
    function Get_InvoiceIntlPlace: Variant;
    function Get_SellerPartner: IXMLTPartner;
    function Get_SellerName: Variant;
    function Get_SellerCity: Variant;
    function Get_SellerAddress: Variant;
    function Get_SellerBulstat: Variant;
    function Get_SellerVatNo: Variant;
    function Get_SellerIsPerson: Variant;
    function Get_SellerEGN: Variant;
    function Get_SellerPersonName: Variant;
    function Get_SellerIntlName: Variant;
    function Get_SellerIntlCity: Variant;
    function Get_SellerIntlAddress: Variant;
    function Get_SellerPersonIntlName: Variant;
    function Get_SenderPartner: IXMLTPartner;
    function Get_SenderName: Variant;
    function Get_SenderAddress: Variant;
    function Get_SenderIntlName: Variant;
    function Get_SenderIntlAddress: Variant;
    function Get_BuyerPartner: IXMLTPartner;
    function Get_BuyerName: Variant;
    function Get_BuyerCity: Variant;
    function Get_BuyerAddress: Variant;
    function Get_BuyerBulstat: Variant;
    function Get_BuyerVatNo: Variant;
    function Get_BuyerIsPerson: Variant;
    function Get_BuyerEGN: Variant;
    function Get_BuyerPersonName: Variant;
    function Get_BuyerIntlName: Variant;
    function Get_BuyerIntlCity: Variant;
    function Get_BuyerIntlAddress: Variant;
    function Get_BuyerPersonIntlName: Variant;
    function Get_ReceiverPartner: IXMLTPartner;
    function Get_ReceiverName: Variant;
    function Get_ReceiverAddress: Variant;
    function Get_ReceiverIntlName: Variant;
    function Get_ReceiverIntlAddress: Variant;
    function Get_Currency: IXMLTCurrency;
    function Get_VatPercent: Variant;
    function Get_TotalPrice: Variant;
    function Get_BaseCurrencyTotalPrice: Variant;
    function Get_TotalPriceVat: Variant;
    function Get_BaseCurrencyTotalPriceVat: Variant;
    function Get_PaymentPrice: Variant;
    function Get_PaymentPriceAsLocalText: Variant;
    function Get_PaymentPriceAsIntlText: Variant;
    function Get_IsCashPayment: Variant;
    function Get_IBAN: Variant;
    function Get_VatReason: IXMLTVatReason;
    function Get_Notes: Variant;
    function Get_ApproveEmployee: IXMLTEmployee;
    function Get_ApproveDateTime: IXMLTDateTime;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_ChangeEmployee: IXMLTEmployee;
    function Get_ChangeDateTime: IXMLTDateTime;
    function Get_StornoEmployee: IXMLTEmployee;
    function Get_StornoDateTime: IXMLTDateTime;
    function Get_InvoiceItems: IXMLTInvoiceItems;
    procedure Set_IsProformInvoice(Value: Variant);
    procedure Set_InvoiceNo(Value: Variant);
    procedure Set_InvoiceTypeName(Value: Variant);
    procedure Set_InvoiceTypeIntlName(Value: Variant);
    procedure Set_InvoicePlace(Value: Variant);
    procedure Set_InvoiceIntlPlace(Value: Variant);
    procedure Set_SellerName(Value: Variant);
    procedure Set_SellerCity(Value: Variant);
    procedure Set_SellerAddress(Value: Variant);
    procedure Set_SellerBulstat(Value: Variant);
    procedure Set_SellerVatNo(Value: Variant);
    procedure Set_SellerIsPerson(Value: Variant);
    procedure Set_SellerEGN(Value: Variant);
    procedure Set_SellerPersonName(Value: Variant);
    procedure Set_SellerIntlName(Value: Variant);
    procedure Set_SellerIntlCity(Value: Variant);
    procedure Set_SellerIntlAddress(Value: Variant);
    procedure Set_SellerPersonIntlName(Value: Variant);
    procedure Set_SenderName(Value: Variant);
    procedure Set_SenderAddress(Value: Variant);
    procedure Set_SenderIntlName(Value: Variant);
    procedure Set_SenderIntlAddress(Value: Variant);
    procedure Set_BuyerName(Value: Variant);
    procedure Set_BuyerCity(Value: Variant);
    procedure Set_BuyerAddress(Value: Variant);
    procedure Set_BuyerBulstat(Value: Variant);
    procedure Set_BuyerVatNo(Value: Variant);
    procedure Set_BuyerIsPerson(Value: Variant);
    procedure Set_BuyerEGN(Value: Variant);
    procedure Set_BuyerPersonName(Value: Variant);
    procedure Set_BuyerIntlName(Value: Variant);
    procedure Set_BuyerIntlCity(Value: Variant);
    procedure Set_BuyerIntlAddress(Value: Variant);
    procedure Set_BuyerPersonIntlName(Value: Variant);
    procedure Set_ReceiverName(Value: Variant);
    procedure Set_ReceiverAddress(Value: Variant);
    procedure Set_ReceiverIntlName(Value: Variant);
    procedure Set_ReceiverIntlAddress(Value: Variant);
    procedure Set_VatPercent(Value: Variant);
    procedure Set_TotalPrice(Value: Variant);
    procedure Set_BaseCurrencyTotalPrice(Value: Variant);
    procedure Set_TotalPriceVat(Value: Variant);
    procedure Set_BaseCurrencyTotalPriceVat(Value: Variant);
    procedure Set_PaymentPrice(Value: Variant);
    procedure Set_PaymentPriceAsLocalText(Value: Variant);
    procedure Set_PaymentPriceAsIntlText(Value: Variant);
    procedure Set_IsCashPayment(Value: Variant);
    procedure Set_IBAN(Value: Variant);
    procedure Set_Notes(Value: Variant);
    { Methods & Properties }
    property IsProformInvoice: Variant read Get_IsProformInvoice write Set_IsProformInvoice;
    property InvoiceNo: Variant read Get_InvoiceNo write Set_InvoiceNo;
    property InvoiceTypeName: Variant read Get_InvoiceTypeName write Set_InvoiceTypeName;
    property InvoiceTypeIntlName: Variant read Get_InvoiceTypeIntlName write Set_InvoiceTypeIntlName;
    property InvoiceDate: IXMLTDate read Get_InvoiceDate;
    property EventDate: IXMLTDate read Get_EventDate;
    property InvoicePlace: Variant read Get_InvoicePlace write Set_InvoicePlace;
    property InvoiceIntlPlace: Variant read Get_InvoiceIntlPlace write Set_InvoiceIntlPlace;
    property SellerPartner: IXMLTPartner read Get_SellerPartner;
    property SellerName: Variant read Get_SellerName write Set_SellerName;
    property SellerCity: Variant read Get_SellerCity write Set_SellerCity;
    property SellerAddress: Variant read Get_SellerAddress write Set_SellerAddress;
    property SellerBulstat: Variant read Get_SellerBulstat write Set_SellerBulstat;
    property SellerVatNo: Variant read Get_SellerVatNo write Set_SellerVatNo;
    property SellerIsPerson: Variant read Get_SellerIsPerson write Set_SellerIsPerson;
    property SellerEGN: Variant read Get_SellerEGN write Set_SellerEGN;
    property SellerPersonName: Variant read Get_SellerPersonName write Set_SellerPersonName;
    property SellerIntlName: Variant read Get_SellerIntlName write Set_SellerIntlName;
    property SellerIntlCity: Variant read Get_SellerIntlCity write Set_SellerIntlCity;
    property SellerIntlAddress: Variant read Get_SellerIntlAddress write Set_SellerIntlAddress;
    property SellerPersonIntlName: Variant read Get_SellerPersonIntlName write Set_SellerPersonIntlName;
    property SenderPartner: IXMLTPartner read Get_SenderPartner;
    property SenderName: Variant read Get_SenderName write Set_SenderName;
    property SenderAddress: Variant read Get_SenderAddress write Set_SenderAddress;
    property SenderIntlName: Variant read Get_SenderIntlName write Set_SenderIntlName;
    property SenderIntlAddress: Variant read Get_SenderIntlAddress write Set_SenderIntlAddress;
    property BuyerPartner: IXMLTPartner read Get_BuyerPartner;
    property BuyerName: Variant read Get_BuyerName write Set_BuyerName;
    property BuyerCity: Variant read Get_BuyerCity write Set_BuyerCity;
    property BuyerAddress: Variant read Get_BuyerAddress write Set_BuyerAddress;
    property BuyerBulstat: Variant read Get_BuyerBulstat write Set_BuyerBulstat;
    property BuyerVatNo: Variant read Get_BuyerVatNo write Set_BuyerVatNo;
    property BuyerIsPerson: Variant read Get_BuyerIsPerson write Set_BuyerIsPerson;
    property BuyerEGN: Variant read Get_BuyerEGN write Set_BuyerEGN;
    property BuyerPersonName: Variant read Get_BuyerPersonName write Set_BuyerPersonName;
    property BuyerIntlName: Variant read Get_BuyerIntlName write Set_BuyerIntlName;
    property BuyerIntlCity: Variant read Get_BuyerIntlCity write Set_BuyerIntlCity;
    property BuyerIntlAddress: Variant read Get_BuyerIntlAddress write Set_BuyerIntlAddress;
    property BuyerPersonIntlName: Variant read Get_BuyerPersonIntlName write Set_BuyerPersonIntlName;
    property ReceiverPartner: IXMLTPartner read Get_ReceiverPartner;
    property ReceiverName: Variant read Get_ReceiverName write Set_ReceiverName;
    property ReceiverAddress: Variant read Get_ReceiverAddress write Set_ReceiverAddress;
    property ReceiverIntlName: Variant read Get_ReceiverIntlName write Set_ReceiverIntlName;
    property ReceiverIntlAddress: Variant read Get_ReceiverIntlAddress write Set_ReceiverIntlAddress;
    property Currency: IXMLTCurrency read Get_Currency;
    property VatPercent: Variant read Get_VatPercent write Set_VatPercent;
    property TotalPrice: Variant read Get_TotalPrice write Set_TotalPrice;
    property BaseCurrencyTotalPrice: Variant read Get_BaseCurrencyTotalPrice write Set_BaseCurrencyTotalPrice;
    property TotalPriceVat: Variant read Get_TotalPriceVat write Set_TotalPriceVat;
    property BaseCurrencyTotalPriceVat: Variant read Get_BaseCurrencyTotalPriceVat write Set_BaseCurrencyTotalPriceVat;
    property PaymentPrice: Variant read Get_PaymentPrice write Set_PaymentPrice;
    property PaymentPriceAsLocalText: Variant read Get_PaymentPriceAsLocalText write Set_PaymentPriceAsLocalText;
    property PaymentPriceAsIntlText: Variant read Get_PaymentPriceAsIntlText write Set_PaymentPriceAsIntlText;
    property IsCashPayment: Variant read Get_IsCashPayment write Set_IsCashPayment;
    property IBAN: Variant read Get_IBAN write Set_IBAN;
    property VatReason: IXMLTVatReason read Get_VatReason;
    property Notes: Variant read Get_Notes write Set_Notes;
    property ApproveEmployee: IXMLTEmployee read Get_ApproveEmployee;
    property ApproveDateTime: IXMLTDateTime read Get_ApproveDateTime;
    property CreateEmployee: IXMLTEmployee read Get_CreateEmployee;
    property CreateDateTime: IXMLTDateTime read Get_CreateDateTime;
    property ChangeEmployee: IXMLTEmployee read Get_ChangeEmployee;
    property ChangeDateTime: IXMLTDateTime read Get_ChangeDateTime;
    property StornoEmployee: IXMLTEmployee read Get_StornoEmployee;
    property StornoDateTime: IXMLTDateTime read Get_StornoDateTime;
    property InvoiceItems: IXMLTInvoiceItems read Get_InvoiceItems;
  end;

{ Forward Decls }

  TXMLTInvoice = class;

{ TXMLTInvoice }

  TXMLTInvoice = class(TXMLNode, IXMLTInvoice)
  protected
    { IXMLTInvoice }
    function Get_IsProformInvoice: Variant;
    function Get_InvoiceNo: Variant;
    function Get_InvoiceTypeName: Variant;
    function Get_InvoiceTypeIntlName: Variant;
    function Get_InvoiceDate: IXMLTDate;
    function Get_EventDate: IXMLTDate;
    function Get_InvoicePlace: Variant;
    function Get_InvoiceIntlPlace: Variant;
    function Get_SellerPartner: IXMLTPartner;
    function Get_SellerName: Variant;
    function Get_SellerCity: Variant;
    function Get_SellerAddress: Variant;
    function Get_SellerBulstat: Variant;
    function Get_SellerVatNo: Variant;
    function Get_SellerIsPerson: Variant;
    function Get_SellerEGN: Variant;
    function Get_SellerPersonName: Variant;
    function Get_SellerIntlName: Variant;
    function Get_SellerIntlCity: Variant;
    function Get_SellerIntlAddress: Variant;
    function Get_SellerPersonIntlName: Variant;
    function Get_SenderPartner: IXMLTPartner;
    function Get_SenderName: Variant;
    function Get_SenderAddress: Variant;
    function Get_SenderIntlName: Variant;
    function Get_SenderIntlAddress: Variant;
    function Get_BuyerPartner: IXMLTPartner;
    function Get_BuyerName: Variant;
    function Get_BuyerCity: Variant;
    function Get_BuyerAddress: Variant;
    function Get_BuyerBulstat: Variant;
    function Get_BuyerVatNo: Variant;
    function Get_BuyerIsPerson: Variant;
    function Get_BuyerEGN: Variant;
    function Get_BuyerPersonName: Variant;
    function Get_BuyerIntlName: Variant;
    function Get_BuyerIntlCity: Variant;
    function Get_BuyerIntlAddress: Variant;
    function Get_BuyerPersonIntlName: Variant;
    function Get_ReceiverPartner: IXMLTPartner;
    function Get_ReceiverName: Variant;
    function Get_ReceiverAddress: Variant;
    function Get_ReceiverIntlName: Variant;
    function Get_ReceiverIntlAddress: Variant;
    function Get_Currency: IXMLTCurrency;
    function Get_VatPercent: Variant;
    function Get_TotalPrice: Variant;
    function Get_BaseCurrencyTotalPrice: Variant;
    function Get_TotalPriceVat: Variant;
    function Get_BaseCurrencyTotalPriceVat: Variant;
    function Get_PaymentPrice: Variant;
    function Get_PaymentPriceAsLocalText: Variant;
    function Get_PaymentPriceAsIntlText: Variant;
    function Get_IsCashPayment: Variant;
    function Get_IBAN: Variant;
    function Get_VatReason: IXMLTVatReason;
    function Get_Notes: Variant;
    function Get_ApproveEmployee: IXMLTEmployee;
    function Get_ApproveDateTime: IXMLTDateTime;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_ChangeEmployee: IXMLTEmployee;
    function Get_ChangeDateTime: IXMLTDateTime;
    function Get_StornoEmployee: IXMLTEmployee;
    function Get_StornoDateTime: IXMLTDateTime;
    function Get_InvoiceItems: IXMLTInvoiceItems;
    procedure Set_IsProformInvoice(Value: Variant);
    procedure Set_InvoiceNo(Value: Variant);
    procedure Set_InvoiceTypeName(Value: Variant);
    procedure Set_InvoiceTypeIntlName(Value: Variant);
    procedure Set_InvoicePlace(Value: Variant);
    procedure Set_InvoiceIntlPlace(Value: Variant);
    procedure Set_SellerName(Value: Variant);
    procedure Set_SellerCity(Value: Variant);
    procedure Set_SellerAddress(Value: Variant);
    procedure Set_SellerBulstat(Value: Variant);
    procedure Set_SellerVatNo(Value: Variant);
    procedure Set_SellerIsPerson(Value: Variant);
    procedure Set_SellerEGN(Value: Variant);
    procedure Set_SellerPersonName(Value: Variant);
    procedure Set_SellerIntlName(Value: Variant);
    procedure Set_SellerIntlCity(Value: Variant);
    procedure Set_SellerIntlAddress(Value: Variant);
    procedure Set_SellerPersonIntlName(Value: Variant);
    procedure Set_SenderName(Value: Variant);
    procedure Set_SenderAddress(Value: Variant);
    procedure Set_SenderIntlName(Value: Variant);
    procedure Set_SenderIntlAddress(Value: Variant);
    procedure Set_BuyerName(Value: Variant);
    procedure Set_BuyerCity(Value: Variant);
    procedure Set_BuyerAddress(Value: Variant);
    procedure Set_BuyerBulstat(Value: Variant);
    procedure Set_BuyerVatNo(Value: Variant);
    procedure Set_BuyerIsPerson(Value: Variant);
    procedure Set_BuyerEGN(Value: Variant);
    procedure Set_BuyerPersonName(Value: Variant);
    procedure Set_BuyerIntlName(Value: Variant);
    procedure Set_BuyerIntlCity(Value: Variant);
    procedure Set_BuyerIntlAddress(Value: Variant);
    procedure Set_BuyerPersonIntlName(Value: Variant);
    procedure Set_ReceiverName(Value: Variant);
    procedure Set_ReceiverAddress(Value: Variant);
    procedure Set_ReceiverIntlName(Value: Variant);
    procedure Set_ReceiverIntlAddress(Value: Variant);
    procedure Set_VatPercent(Value: Variant);
    procedure Set_TotalPrice(Value: Variant);
    procedure Set_BaseCurrencyTotalPrice(Value: Variant);
    procedure Set_TotalPriceVat(Value: Variant);
    procedure Set_BaseCurrencyTotalPriceVat(Value: Variant);
    procedure Set_PaymentPrice(Value: Variant);
    procedure Set_PaymentPriceAsLocalText(Value: Variant);
    procedure Set_PaymentPriceAsIntlText(Value: Variant);
    procedure Set_IsCashPayment(Value: Variant);
    procedure Set_IBAN(Value: Variant);
    procedure Set_Notes(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

implementation

{ TXMLTInvoice }

procedure TXMLTInvoice.AfterConstruction;
begin
  RegisterChildNode('InvoiceDate', TXMLTDate);
  RegisterChildNode('EventDate', TXMLTDate);
  RegisterChildNode('SellerPartner', TXMLTPartner);
  RegisterChildNode('SenderPartner', TXMLTPartner);
  RegisterChildNode('BuyerPartner', TXMLTPartner);
  RegisterChildNode('ReceiverPartner', TXMLTPartner);
  RegisterChildNode('Currency', TXMLTCurrency);
  RegisterChildNode('VatReason', TXMLTVatReason);
  RegisterChildNode('ApproveEmployee', TXMLTEmployee);
  RegisterChildNode('ApproveDateTime', TXMLTDateTime);
  RegisterChildNode('CreateEmployee', TXMLTEmployee);
  RegisterChildNode('CreateDateTime', TXMLTDateTime);
  RegisterChildNode('ChangeEmployee', TXMLTEmployee);
  RegisterChildNode('ChangeDateTime', TXMLTDateTime);
  RegisterChildNode('StornoEmployee', TXMLTEmployee);
  RegisterChildNode('StornoDateTime', TXMLTDateTime);
  RegisterChildNode('InvoiceItems', TXMLTInvoiceItems);
  inherited;
end;

function TXMLTInvoice.Get_IsProformInvoice: Variant;
begin
  Result := ChildNodes['IsProformInvoice'].NodeValue;
end;

procedure TXMLTInvoice.Set_IsProformInvoice(Value: Variant);
begin
  ChildNodes['IsProformInvoice'].NodeValue := Value;
end;

function TXMLTInvoice.Get_InvoiceNo: Variant;
begin
  Result := ChildNodes['InvoiceNo'].NodeValue;
end;

procedure TXMLTInvoice.Set_InvoiceNo(Value: Variant);
begin
  ChildNodes['InvoiceNo'].NodeValue := Value;
end;

function TXMLTInvoice.Get_InvoiceTypeName: Variant;
begin
  Result := ChildNodes['InvoiceTypeName'].NodeValue;
end;

procedure TXMLTInvoice.Set_InvoiceTypeName(Value: Variant);
begin
  ChildNodes['InvoiceTypeName'].NodeValue := Value;
end;

function TXMLTInvoice.Get_InvoiceTypeIntlName: Variant;
begin
  Result := ChildNodes['InvoiceTypeIntlName'].NodeValue;
end;

procedure TXMLTInvoice.Set_InvoiceTypeIntlName(Value: Variant);
begin
  ChildNodes['InvoiceTypeIntlName'].NodeValue := Value;
end;

function TXMLTInvoice.Get_InvoiceDate: IXMLTDate;
begin
  Result := ChildNodes['InvoiceDate'] as IXMLTDate;
end;

function TXMLTInvoice.Get_EventDate: IXMLTDate;
begin
  Result := ChildNodes['EventDate'] as IXMLTDate;
end;

function TXMLTInvoice.Get_InvoicePlace: Variant;
begin
  Result := ChildNodes['InvoicePlace'].NodeValue;
end;

procedure TXMLTInvoice.Set_InvoicePlace(Value: Variant);
begin
  ChildNodes['InvoicePlace'].NodeValue := Value;
end;

function TXMLTInvoice.Get_InvoiceIntlPlace: Variant;
begin
  Result := ChildNodes['InvoiceIntlPlace'].NodeValue;
end;

procedure TXMLTInvoice.Set_InvoiceIntlPlace(Value: Variant);
begin
  ChildNodes['InvoiceIntlPlace'].NodeValue := Value;
end;

function TXMLTInvoice.Get_SellerPartner: IXMLTPartner;
begin
  Result := ChildNodes['SellerPartner'] as IXMLTPartner;
end;

function TXMLTInvoice.Get_SellerName: Variant;
begin
  Result := ChildNodes['SellerName'].NodeValue;
end;

procedure TXMLTInvoice.Set_SellerName(Value: Variant);
begin
  ChildNodes['SellerName'].NodeValue := Value;
end;

function TXMLTInvoice.Get_SellerCity: Variant;
begin
  Result := ChildNodes['SellerCity'].NodeValue;
end;

procedure TXMLTInvoice.Set_SellerCity(Value: Variant);
begin
  ChildNodes['SellerCity'].NodeValue := Value;
end;

function TXMLTInvoice.Get_SellerAddress: Variant;
begin
  Result := ChildNodes['SellerAddress'].NodeValue;
end;

procedure TXMLTInvoice.Set_SellerAddress(Value: Variant);
begin
  ChildNodes['SellerAddress'].NodeValue := Value;
end;

function TXMLTInvoice.Get_SellerBulstat: Variant;
begin
  Result := ChildNodes['SellerBulstat'].NodeValue;
end;

procedure TXMLTInvoice.Set_SellerBulstat(Value: Variant);
begin
  ChildNodes['SellerBulstat'].NodeValue := Value;
end;

function TXMLTInvoice.Get_SellerVatNo: Variant;
begin
  Result := ChildNodes['SellerVatNo'].NodeValue;
end;

procedure TXMLTInvoice.Set_SellerVatNo(Value: Variant);
begin
  ChildNodes['SellerVatNo'].NodeValue := Value;
end;

function TXMLTInvoice.Get_SellerIsPerson: Variant;
begin
  Result := ChildNodes['SellerIsPerson'].NodeValue;
end;

procedure TXMLTInvoice.Set_SellerIsPerson(Value: Variant);
begin
  ChildNodes['SellerIsPerson'].NodeValue := Value;
end;

function TXMLTInvoice.Get_SellerEGN: Variant;
begin
  Result := ChildNodes['SellerEGN'].NodeValue;
end;

procedure TXMLTInvoice.Set_SellerEGN(Value: Variant);
begin
  ChildNodes['SellerEGN'].NodeValue := Value;
end;

function TXMLTInvoice.Get_SellerPersonName: Variant;
begin
  Result := ChildNodes['SellerPersonName'].NodeValue;
end;

procedure TXMLTInvoice.Set_SellerPersonName(Value: Variant);
begin
  ChildNodes['SellerPersonName'].NodeValue := Value;
end;

function TXMLTInvoice.Get_SellerIntlName: Variant;
begin
  Result := ChildNodes['SellerIntlName'].NodeValue;
end;

procedure TXMLTInvoice.Set_SellerIntlName(Value: Variant);
begin
  ChildNodes['SellerIntlName'].NodeValue := Value;
end;

function TXMLTInvoice.Get_SellerIntlCity: Variant;
begin
  Result := ChildNodes['SellerIntlCity'].NodeValue;
end;

procedure TXMLTInvoice.Set_SellerIntlCity(Value: Variant);
begin
  ChildNodes['SellerIntlCity'].NodeValue := Value;
end;

function TXMLTInvoice.Get_SellerIntlAddress: Variant;
begin
  Result := ChildNodes['SellerIntlAddress'].NodeValue;
end;

procedure TXMLTInvoice.Set_SellerIntlAddress(Value: Variant);
begin
  ChildNodes['SellerIntlAddress'].NodeValue := Value;
end;

function TXMLTInvoice.Get_SellerPersonIntlName: Variant;
begin
  Result := ChildNodes['SellerPersonIntlName'].NodeValue;
end;

procedure TXMLTInvoice.Set_SellerPersonIntlName(Value: Variant);
begin
  ChildNodes['SellerPersonIntlName'].NodeValue := Value;
end;

function TXMLTInvoice.Get_SenderPartner: IXMLTPartner;
begin
  Result := ChildNodes['SenderPartner'] as IXMLTPartner;
end;

function TXMLTInvoice.Get_SenderName: Variant;
begin
  Result := ChildNodes['SenderName'].NodeValue;
end;

procedure TXMLTInvoice.Set_SenderName(Value: Variant);
begin
  ChildNodes['SenderName'].NodeValue := Value;
end;

function TXMLTInvoice.Get_SenderAddress: Variant;
begin
  Result := ChildNodes['SenderAddress'].NodeValue;
end;

procedure TXMLTInvoice.Set_SenderAddress(Value: Variant);
begin
  ChildNodes['SenderAddress'].NodeValue := Value;
end;

function TXMLTInvoice.Get_SenderIntlName: Variant;
begin
  Result := ChildNodes['SenderIntlName'].NodeValue;
end;

procedure TXMLTInvoice.Set_SenderIntlName(Value: Variant);
begin
  ChildNodes['SenderIntlName'].NodeValue := Value;
end;

function TXMLTInvoice.Get_SenderIntlAddress: Variant;
begin
  Result := ChildNodes['SenderIntlAddress'].NodeValue;
end;

procedure TXMLTInvoice.Set_SenderIntlAddress(Value: Variant);
begin
  ChildNodes['SenderIntlAddress'].NodeValue := Value;
end;

function TXMLTInvoice.Get_BuyerPartner: IXMLTPartner;
begin
  Result := ChildNodes['BuyerPartner'] as IXMLTPartner;
end;

function TXMLTInvoice.Get_BuyerName: Variant;
begin
  Result := ChildNodes['BuyerName'].NodeValue;
end;

procedure TXMLTInvoice.Set_BuyerName(Value: Variant);
begin
  ChildNodes['BuyerName'].NodeValue := Value;
end;

function TXMLTInvoice.Get_BuyerCity: Variant;
begin
  Result := ChildNodes['BuyerCity'].NodeValue;
end;

procedure TXMLTInvoice.Set_BuyerCity(Value: Variant);
begin
  ChildNodes['BuyerCity'].NodeValue := Value;
end;

function TXMLTInvoice.Get_BuyerAddress: Variant;
begin
  Result := ChildNodes['BuyerAddress'].NodeValue;
end;

procedure TXMLTInvoice.Set_BuyerAddress(Value: Variant);
begin
  ChildNodes['BuyerAddress'].NodeValue := Value;
end;

function TXMLTInvoice.Get_BuyerBulstat: Variant;
begin
  Result := ChildNodes['BuyerBulstat'].NodeValue;
end;

procedure TXMLTInvoice.Set_BuyerBulstat(Value: Variant);
begin
  ChildNodes['BuyerBulstat'].NodeValue := Value;
end;

function TXMLTInvoice.Get_BuyerVatNo: Variant;
begin
  Result := ChildNodes['BuyerVatNo'].NodeValue;
end;

procedure TXMLTInvoice.Set_BuyerVatNo(Value: Variant);
begin
  ChildNodes['BuyerVatNo'].NodeValue := Value;
end;

function TXMLTInvoice.Get_BuyerIsPerson: Variant;
begin
  Result := ChildNodes['BuyerIsPerson'].NodeValue;
end;

procedure TXMLTInvoice.Set_BuyerIsPerson(Value: Variant);
begin
  ChildNodes['BuyerIsPerson'].NodeValue := Value;
end;

function TXMLTInvoice.Get_BuyerEGN: Variant;
begin
  Result := ChildNodes['BuyerEGN'].NodeValue;
end;

procedure TXMLTInvoice.Set_BuyerEGN(Value: Variant);
begin
  ChildNodes['BuyerEGN'].NodeValue := Value;
end;

function TXMLTInvoice.Get_BuyerPersonName: Variant;
begin
  Result := ChildNodes['BuyerPersonName'].NodeValue;
end;

procedure TXMLTInvoice.Set_BuyerPersonName(Value: Variant);
begin
  ChildNodes['BuyerPersonName'].NodeValue := Value;
end;

function TXMLTInvoice.Get_BuyerIntlName: Variant;
begin
  Result := ChildNodes['BuyerIntlName'].NodeValue;
end;

procedure TXMLTInvoice.Set_BuyerIntlName(Value: Variant);
begin
  ChildNodes['BuyerIntlName'].NodeValue := Value;
end;

function TXMLTInvoice.Get_BuyerIntlCity: Variant;
begin
  Result := ChildNodes['BuyerIntlCity'].NodeValue;
end;

procedure TXMLTInvoice.Set_BuyerIntlCity(Value: Variant);
begin
  ChildNodes['BuyerIntlCity'].NodeValue := Value;
end;

function TXMLTInvoice.Get_BuyerIntlAddress: Variant;
begin
  Result := ChildNodes['BuyerIntlAddress'].NodeValue;
end;

procedure TXMLTInvoice.Set_BuyerIntlAddress(Value: Variant);
begin
  ChildNodes['BuyerIntlAddress'].NodeValue := Value;
end;

function TXMLTInvoice.Get_BuyerPersonIntlName: Variant;
begin
  Result := ChildNodes['BuyerPersonIntlName'].NodeValue;
end;

procedure TXMLTInvoice.Set_BuyerPersonIntlName(Value: Variant);
begin
  ChildNodes['BuyerPersonIntlName'].NodeValue := Value;
end;

function TXMLTInvoice.Get_ReceiverPartner: IXMLTPartner;
begin
  Result := ChildNodes['ReceiverPartner'] as IXMLTPartner;
end;

function TXMLTInvoice.Get_ReceiverName: Variant;
begin
  Result := ChildNodes['ReceiverName'].NodeValue;
end;

procedure TXMLTInvoice.Set_ReceiverName(Value: Variant);
begin
  ChildNodes['ReceiverName'].NodeValue := Value;
end;

function TXMLTInvoice.Get_ReceiverAddress: Variant;
begin
  Result := ChildNodes['ReceiverAddress'].NodeValue;
end;

procedure TXMLTInvoice.Set_ReceiverAddress(Value: Variant);
begin
  ChildNodes['ReceiverAddress'].NodeValue := Value;
end;

function TXMLTInvoice.Get_ReceiverIntlName: Variant;
begin
  Result := ChildNodes['ReceiverIntlName'].NodeValue;
end;

procedure TXMLTInvoice.Set_ReceiverIntlName(Value: Variant);
begin
  ChildNodes['ReceiverIntlName'].NodeValue := Value;
end;

function TXMLTInvoice.Get_ReceiverIntlAddress: Variant;
begin
  Result := ChildNodes['ReceiverIntlAddress'].NodeValue;
end;

procedure TXMLTInvoice.Set_ReceiverIntlAddress(Value: Variant);
begin
  ChildNodes['ReceiverIntlAddress'].NodeValue := Value;
end;

function TXMLTInvoice.Get_Currency: IXMLTCurrency;
begin
  Result := ChildNodes['Currency'] as IXMLTCurrency;
end;

function TXMLTInvoice.Get_VatPercent: Variant;
begin
  Result := ChildNodes['VatPercent'].NodeValue;
end;

procedure TXMLTInvoice.Set_VatPercent(Value: Variant);
begin
  ChildNodes['VatPercent'].NodeValue := Value;
end;

function TXMLTInvoice.Get_TotalPrice: Variant;
begin
  Result := ChildNodes['TotalPrice'].NodeValue;
end;

procedure TXMLTInvoice.Set_TotalPrice(Value: Variant);
begin
  ChildNodes['TotalPrice'].NodeValue := Value;
end;

function TXMLTInvoice.Get_BaseCurrencyTotalPrice: Variant;
begin
  Result := ChildNodes['BaseCurrencyTotalPrice'].NodeValue;
end;

procedure TXMLTInvoice.Set_BaseCurrencyTotalPrice(Value: Variant);
begin
  ChildNodes['BaseCurrencyTotalPrice'].NodeValue := Value;
end;

function TXMLTInvoice.Get_TotalPriceVat: Variant;
begin
  Result := ChildNodes['TotalPriceVat'].NodeValue;
end;

procedure TXMLTInvoice.Set_TotalPriceVat(Value: Variant);
begin
  ChildNodes['TotalPriceVat'].NodeValue := Value;
end;

function TXMLTInvoice.Get_BaseCurrencyTotalPriceVat: Variant;
begin
  Result := ChildNodes['BaseCurrencyTotalPriceVat'].NodeValue;
end;

procedure TXMLTInvoice.Set_BaseCurrencyTotalPriceVat(Value: Variant);
begin
  ChildNodes['BaseCurrencyTotalPriceVat'].NodeValue := Value;
end;

function TXMLTInvoice.Get_PaymentPrice: Variant;
begin
  Result := ChildNodes['PaymentPrice'].NodeValue;
end;

procedure TXMLTInvoice.Set_PaymentPrice(Value: Variant);
begin
  ChildNodes['PaymentPrice'].NodeValue := Value;
end;

function TXMLTInvoice.Get_PaymentPriceAsLocalText: Variant;
begin
  Result := ChildNodes['PaymentPriceAsLocalText'].NodeValue;
end;

procedure TXMLTInvoice.Set_PaymentPriceAsLocalText(Value: Variant);
begin
  ChildNodes['PaymentPriceAsLocalText'].NodeValue := Value;
end;

function TXMLTInvoice.Get_PaymentPriceAsIntlText: Variant;
begin
  Result := ChildNodes['PaymentPriceAsIntlText'].NodeValue;
end;

procedure TXMLTInvoice.Set_PaymentPriceAsIntlText(Value: Variant);
begin
  ChildNodes['PaymentPriceAsIntlText'].NodeValue := Value;
end;

function TXMLTInvoice.Get_IsCashPayment: Variant;
begin
  Result := ChildNodes['IsCashPayment'].NodeValue;
end;

procedure TXMLTInvoice.Set_IsCashPayment(Value: Variant);
begin
  ChildNodes['IsCashPayment'].NodeValue := Value;
end;

function TXMLTInvoice.Get_IBAN: Variant;
begin
  Result := ChildNodes['IBAN'].NodeValue;
end;

procedure TXMLTInvoice.Set_IBAN(Value: Variant);
begin
  ChildNodes['IBAN'].NodeValue := Value;
end;

function TXMLTInvoice.Get_VatReason: IXMLTVatReason;
begin
  Result := ChildNodes['VatReason'] as IXMLTVatReason;
end;

function TXMLTInvoice.Get_Notes: Variant;
begin
  Result := ChildNodes['Notes'].NodeValue;
end;

procedure TXMLTInvoice.Set_Notes(Value: Variant);
begin
  ChildNodes['Notes'].NodeValue := Value;
end;

function TXMLTInvoice.Get_ApproveEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['ApproveEmployee'] as IXMLTEmployee;
end;

function TXMLTInvoice.Get_ApproveDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['ApproveDateTime'] as IXMLTDateTime;
end;

function TXMLTInvoice.Get_CreateEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['CreateEmployee'] as IXMLTEmployee;
end;

function TXMLTInvoice.Get_CreateDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['CreateDateTime'] as IXMLTDateTime;
end;

function TXMLTInvoice.Get_ChangeEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['ChangeEmployee'] as IXMLTEmployee;
end;

function TXMLTInvoice.Get_ChangeDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['ChangeDateTime'] as IXMLTDateTime;
end;

function TXMLTInvoice.Get_StornoEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['StornoEmployee'] as IXMLTEmployee;
end;

function TXMLTInvoice.Get_StornoDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['StornoDateTime'] as IXMLTDateTime;
end;

function TXMLTInvoice.Get_InvoiceItems: IXMLTInvoiceItems;
begin
  Result := ChildNodes['InvoiceItems'] as IXMLTInvoiceItems;
end;

end.
