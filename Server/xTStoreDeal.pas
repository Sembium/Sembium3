
{************************************************************************}
{                                                                        }
{                            XML Data Binding                            }
{                                                                        }
{         Generated on: 10.1.2006 17:45:37                               }
{       Generated from: XMLSchemas\Public\TStoreDeal.xsd                 }
{                                                                        }
{************************************************************************}

unit xTStoreDeal;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTDateTime, xTDate, xTProcessObject, xTStoreDealType,
  xTProcess, xTCurrency, xTDept, xTEmployee, xTProduct;

type

{ Forward Decls }

  IXMLTStoreDeal = interface;

{ IXMLTStoreDeal }

  IXMLTStoreDeal = interface(IXMLNode)
    ['{05034C91-EFE2-463B-AABE-ED5D7FD874D3}']
    { Property Accessors }
    function Get_Store: IXMLTDept;
    function Get_StoreDealType: IXMLTStoreDealType;
    function Get_StoreDealDate: IXMLTDate;
    function Get_StoreDealNo: Variant;
    function Get_StoreDealIdentifier: Variant;
    function Get_Product: IXMLTProduct;
    function Get_WantedQuantity: Variant;
    function Get_Quantity: Variant;
    function Get_AccountQuantity: Variant;
    function Get_Currency: IXMLTCurrency;
    function Get_TotalPrice: Variant;
    function Get_StoreEmployee: IXMLTEmployee;
    function Get_OtherEmployee: IXMLTEmployee;
    function Get_RequestEmployee: IXMLTEmployee;
    function Get_Dept: IXMLTDept;
    function Get_BoundProcess: IXMLTProcess;
    function Get_BoundProcessObject: IXMLTProcessObject;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_StornoEmployee: IXMLTEmployee;
    function Get_StornoDateTime: IXMLTDateTime;
    procedure Set_StoreDealNo(Value: Variant);
    procedure Set_StoreDealIdentifier(Value: Variant);
    procedure Set_WantedQuantity(Value: Variant);
    procedure Set_Quantity(Value: Variant);
    procedure Set_AccountQuantity(Value: Variant);
    procedure Set_TotalPrice(Value: Variant);
    { Methods & Properties }
    property Store: IXMLTDept read Get_Store;
    property StoreDealType: IXMLTStoreDealType read Get_StoreDealType;
    property StoreDealDate: IXMLTDate read Get_StoreDealDate;
    property StoreDealNo: Variant read Get_StoreDealNo write Set_StoreDealNo;
    property StoreDealIdentifier: Variant read Get_StoreDealIdentifier write Set_StoreDealIdentifier;
    property Product: IXMLTProduct read Get_Product;
    property WantedQuantity: Variant read Get_WantedQuantity write Set_WantedQuantity;
    property Quantity: Variant read Get_Quantity write Set_Quantity;
    property AccountQuantity: Variant read Get_AccountQuantity write Set_AccountQuantity;
    property Currency: IXMLTCurrency read Get_Currency;
    property TotalPrice: Variant read Get_TotalPrice write Set_TotalPrice;
    property StoreEmployee: IXMLTEmployee read Get_StoreEmployee;
    property OtherEmployee: IXMLTEmployee read Get_OtherEmployee;
    property RequestEmployee: IXMLTEmployee read Get_RequestEmployee;
    property Dept: IXMLTDept read Get_Dept;
    property BoundProcess: IXMLTProcess read Get_BoundProcess;
    property BoundProcessObject: IXMLTProcessObject read Get_BoundProcessObject;
    property CreateEmployee: IXMLTEmployee read Get_CreateEmployee;
    property CreateDateTime: IXMLTDateTime read Get_CreateDateTime;
    property StornoEmployee: IXMLTEmployee read Get_StornoEmployee;
    property StornoDateTime: IXMLTDateTime read Get_StornoDateTime;
  end;

{ Forward Decls }

  TXMLTStoreDeal = class;

{ TXMLTStoreDeal }

  TXMLTStoreDeal = class(TXMLNode, IXMLTStoreDeal)
  protected
    { IXMLTStoreDeal }
    function Get_Store: IXMLTDept;
    function Get_StoreDealType: IXMLTStoreDealType;
    function Get_StoreDealDate: IXMLTDate;
    function Get_StoreDealNo: Variant;
    function Get_StoreDealIdentifier: Variant;
    function Get_Product: IXMLTProduct;
    function Get_WantedQuantity: Variant;
    function Get_Quantity: Variant;
    function Get_AccountQuantity: Variant;
    function Get_Currency: IXMLTCurrency;
    function Get_TotalPrice: Variant;
    function Get_StoreEmployee: IXMLTEmployee;
    function Get_OtherEmployee: IXMLTEmployee;
    function Get_RequestEmployee: IXMLTEmployee;
    function Get_Dept: IXMLTDept;
    function Get_BoundProcess: IXMLTProcess;
    function Get_BoundProcessObject: IXMLTProcessObject;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_StornoEmployee: IXMLTEmployee;
    function Get_StornoDateTime: IXMLTDateTime;
    procedure Set_StoreDealNo(Value: Variant);
    procedure Set_StoreDealIdentifier(Value: Variant);
    procedure Set_WantedQuantity(Value: Variant);
    procedure Set_Quantity(Value: Variant);
    procedure Set_AccountQuantity(Value: Variant);
    procedure Set_TotalPrice(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTStoreDeal;
function LoadUnknown(const FileName: WideString): IXMLTStoreDeal;
function NewUnknown: IXMLTStoreDeal;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTStoreDeal;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTStoreDeal, TargetNamespace) as IXMLTStoreDeal;
end;

function LoadUnknown(const FileName: WideString): IXMLTStoreDeal;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTStoreDeal, TargetNamespace) as IXMLTStoreDeal;
end;

function NewUnknown: IXMLTStoreDeal;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTStoreDeal, TargetNamespace) as IXMLTStoreDeal;
end;

{ TXMLTStoreDeal }

procedure TXMLTStoreDeal.AfterConstruction;
begin
  RegisterChildNode('Store', TXMLTDept);
  RegisterChildNode('StoreDealType', TXMLTStoreDealType);
  RegisterChildNode('StoreDealDate', TXMLTDate);
  RegisterChildNode('Product', TXMLTProduct);
  RegisterChildNode('Currency', TXMLTCurrency);
  RegisterChildNode('StoreEmployee', TXMLTEmployee);
  RegisterChildNode('OtherEmployee', TXMLTEmployee);
  RegisterChildNode('RequestEmployee', TXMLTEmployee);
  RegisterChildNode('Dept', TXMLTDept);
  RegisterChildNode('BoundProcess', TXMLTProcess);
  RegisterChildNode('BoundProcessObject', TXMLTProcessObject);
  RegisterChildNode('CreateEmployee', TXMLTEmployee);
  RegisterChildNode('CreateDateTime', TXMLTDateTime);
  RegisterChildNode('StornoEmployee', TXMLTEmployee);
  RegisterChildNode('StornoDateTime', TXMLTDateTime);
  inherited;
end;

function TXMLTStoreDeal.Get_Store: IXMLTDept;
begin
  Result := ChildNodes['Store'] as IXMLTDept;
end;

function TXMLTStoreDeal.Get_StoreDealType: IXMLTStoreDealType;
begin
  Result := ChildNodes['StoreDealType'] as IXMLTStoreDealType;
end;

function TXMLTStoreDeal.Get_StoreDealDate: IXMLTDate;
begin
  Result := ChildNodes['StoreDealDate'] as IXMLTDate;
end;

function TXMLTStoreDeal.Get_StoreDealNo: Variant;
begin
  Result := ChildNodes['StoreDealNo'].NodeValue;
end;

procedure TXMLTStoreDeal.Set_StoreDealNo(Value: Variant);
begin
  ChildNodes['StoreDealNo'].NodeValue := Value;
end;

function TXMLTStoreDeal.Get_StoreDealIdentifier: Variant;
begin
  Result := ChildNodes['StoreDealIdentifier'].NodeValue;
end;

procedure TXMLTStoreDeal.Set_StoreDealIdentifier(Value: Variant);
begin
  ChildNodes['StoreDealIdentifier'].NodeValue := Value;
end;

function TXMLTStoreDeal.Get_Product: IXMLTProduct;
begin
  Result := ChildNodes['Product'] as IXMLTProduct;
end;

function TXMLTStoreDeal.Get_WantedQuantity: Variant;
begin
  Result := ChildNodes['WantedQuantity'].NodeValue;
end;

procedure TXMLTStoreDeal.Set_WantedQuantity(Value: Variant);
begin
  ChildNodes['WantedQuantity'].NodeValue := Value;
end;

function TXMLTStoreDeal.Get_Quantity: Variant;
begin
  Result := ChildNodes['Quantity'].NodeValue;
end;

procedure TXMLTStoreDeal.Set_Quantity(Value: Variant);
begin
  ChildNodes['Quantity'].NodeValue := Value;
end;

function TXMLTStoreDeal.Get_AccountQuantity: Variant;
begin
  Result := ChildNodes['AccountQuantity'].NodeValue;
end;

procedure TXMLTStoreDeal.Set_AccountQuantity(Value: Variant);
begin
  ChildNodes['AccountQuantity'].NodeValue := Value;
end;

function TXMLTStoreDeal.Get_Currency: IXMLTCurrency;
begin
  Result := ChildNodes['Currency'] as IXMLTCurrency;
end;

function TXMLTStoreDeal.Get_TotalPrice: Variant;
begin
  Result := ChildNodes['TotalPrice'].NodeValue;
end;

procedure TXMLTStoreDeal.Set_TotalPrice(Value: Variant);
begin
  ChildNodes['TotalPrice'].NodeValue := Value;
end;

function TXMLTStoreDeal.Get_StoreEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['StoreEmployee'] as IXMLTEmployee;
end;

function TXMLTStoreDeal.Get_OtherEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['OtherEmployee'] as IXMLTEmployee;
end;

function TXMLTStoreDeal.Get_RequestEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['RequestEmployee'] as IXMLTEmployee;
end;

function TXMLTStoreDeal.Get_Dept: IXMLTDept;
begin
  Result := ChildNodes['Dept'] as IXMLTDept;
end;

function TXMLTStoreDeal.Get_BoundProcess: IXMLTProcess;
begin
  Result := ChildNodes['BoundProcess'] as IXMLTProcess;
end;

function TXMLTStoreDeal.Get_BoundProcessObject: IXMLTProcessObject;
begin
  Result := ChildNodes['BoundProcessObject'] as IXMLTProcessObject;
end;

function TXMLTStoreDeal.Get_CreateEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['CreateEmployee'] as IXMLTEmployee;
end;

function TXMLTStoreDeal.Get_CreateDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['CreateDateTime'] as IXMLTDateTime;
end;

function TXMLTStoreDeal.Get_StornoEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['StornoEmployee'] as IXMLTEmployee;
end;

function TXMLTStoreDeal.Get_StornoDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['StornoDateTime'] as IXMLTDateTime;
end;

end.
